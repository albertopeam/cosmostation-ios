//
//  TxDetailViewController.swift
//  Cosmostation
//
//  Created by 정용주 on 2020/02/12.
//  Copyright © 2020 wannabit. All rights reserved.
//

import UIKit
import Alamofire
import SafariServices

class TxDetailViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var txTableView: UITableView!
    @IBOutlet weak var controlLayer: UIStackView!
    @IBOutlet weak var htlcRefundBtn: UIButton!
    @IBOutlet weak var errorLayer: CardView!
    @IBOutlet weak var errorCode: UILabel!
    @IBOutlet weak var loadingLayer: UIView!
    @IBOutlet weak var loadingImg: LoadingImageView!
    @IBOutlet weak var loadingMsg: UILabel!
    
    var mIsGen: Bool = false
    var mTxHash: String?
    var mTxInfo: TxInfo?
    var mBnbTime: String?
    var mBroadCaseResult: [String:Any]?
    var mFetchCnt = 10
    var mAllValidator = Array<Validator>()
    
    var mBnbNodeInfo: BnbNodeInfo?
    var mBnbSwapInfo: BnbSwapInfo?
    var mKavaSwapInfo: KavaSwapInfo?
    var mSwapId: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.account = BaseData.instance.selectAccountById(id: BaseData.instance.getRecentAccountId())
        self.chainType = WUtils.getChainType(account!.account_base_chain)
        self.mAllValidator = BaseData.instance.mAllValidator
        
        self.txTableView.delegate = self
        self.txTableView.dataSource = self
        self.txTableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        self.txTableView.register(UINib(nibName: "TxCommonCell", bundle: nil), forCellReuseIdentifier: "TxCommonCell")
        self.txTableView.register(UINib(nibName: "TxTransferCell", bundle: nil), forCellReuseIdentifier: "TxTransferCell")
        self.txTableView.register(UINib(nibName: "TxMultiTransferCell", bundle: nil), forCellReuseIdentifier: "TxMultiTransferCell")
        
        self.txTableView.register(UINib(nibName: "TxOkStakeCell", bundle: nil), forCellReuseIdentifier: "TxOkStakeCell")
        self.txTableView.register(UINib(nibName: "TxOkDirectVoteCell", bundle: nil), forCellReuseIdentifier: "TxOkDirectVoteCell")
        
        self.txTableView.register(UINib(nibName: "TxUnknownCell", bundle: nil), forCellReuseIdentifier: "TxUnknownCell")
        self.txTableView.rowHeight = UITableView.automaticDimension
        self.txTableView.estimatedRowHeight = UITableView.automaticDimension
        
        if (mIsGen) {
            self.loadingMsg.isHidden = false
            self.loadingImg.onStartAnimation()
            if (chainType == ChainType.BINANCE_MAIN) {
                guard let txHash = mBroadCaseResult?["hash"] as? String  else {
                    self.onStartMainTab()
                    return
                }
                mTxHash = txHash
            } else {
                guard let txHash = mBroadCaseResult?["txhash"] as? String  else {
                    self.onStartMainTab()
                    return
                }
                mTxHash = txHash
                if let code = mBroadCaseResult?["code"] as? Int {
                    onShowErrorView(code)
                    return
                }
            }
            self.onFetchTx(mTxHash!)

        } else {
            //TODO TEST HASH for KAVA 
//            mTxHash = "94C476304818D6B1C47DF0FE9D0ABF2462191912DAA11C847483CC58D4A1452D"
            self.loadingMsg.isHidden = true
            self.loadingImg.onStartAnimation()
            self.onFetchTx(mTxHash!)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func onShowErrorView(_ code: Int) {
        print("onShowErrorView")
        var logMsg = ""
        if let errorMsg = mBroadCaseResult?["raw_log"] as? String {
            logMsg = errorMsg;
        }
        if let check_tx = mBroadCaseResult?["check_tx"] as? [String : Any], let errorMsg = check_tx["log"] as? String {
            logMsg = errorMsg;
        }
        self.errorCode.text =  "error code : " + String(code) + "\n" + logMsg
        self.loadingLayer.isHidden = true
        self.errorLayer.isHidden = false
    }
    
    func onUpdateView() {
        self.loadingLayer.isHidden = true
        self.controlLayer.isHidden = false
        self.txTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (mTxInfo != nil) {
            return mTxInfo!.getMsgs().count  + 1
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0) {
            return onBindTxCommon(tableView)
        } else {
            let msg = mTxInfo?.getMsg(indexPath.row - 1)
            if (msg?.type == COSMOS_MSG_TYPE_TRANSFER || msg?.type == COSMOS_MSG_TYPE_TRANSFER2 || msg?.type == COSMOS_MSG_TYPE_TRANSFER3 || msg?.type == OK_MSG_TYPE_TRANSFER || msg?.type == OK_MSG_TYPE_MULTI_TRANSFER || msg?.type == CERTIK_MSG_TYPE_TRANSFER) {
                if ((msg?.value.inputs != nil && (msg?.value.inputs!.count)! > 1) ||  (msg?.value.outputs != nil && (msg?.value.outputs!.count)! > 1)) {
                    //No case yet!
                    return onBindMultiTransfer(tableView, indexPath.row)
                } else {
                    return onBindTransfer(tableView, indexPath.row)
                }
            }
            
            else if (msg?.type == OK_MSG_TYPE_DEPOSIT || msg?.type == OK_MSG_TYPE_WITHDRAW) {
                return onBindOkStake(tableView, indexPath.row)
                
            } else if (msg?.type == OK_MSG_TYPE_DIRECT_VOTE) {
                return onBindOkDirectVote(tableView, indexPath.row)
                
            } else {
                return onBindUnknown(tableView, indexPath.row)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension;
    }
    
    func onBindTxCommon(_ tableView: UITableView) -> UITableViewCell {
        let cell:TxCommonCell? = tableView.dequeueReusableCell(withIdentifier:"TxCommonCell") as? TxCommonCell
        cell?.setDenomType(chainType!)
        if (chainType == ChainType.BINANCE_MAIN) {
            cell?.feeLayer.isHidden = false
            cell?.usedFeeLayer.isHidden = true
            cell?.limitFeeLayer.isHidden = true
            cell?.statusImg.image = UIImage(named: "successIc")
            cell?.statusLabel.text = NSLocalizedString("tx_success", comment: "")
            cell?.errorMsg.isHidden = true
            cell?.errorConstraint.priority = .defaultLow
            cell?.successConstraint.priority = .defaultHigh
            
            cell?.heightLabel.text = mTxInfo!.height
            cell?.msgCntLabel.text = String(mTxInfo!.getMsgs().count)
            cell?.gasAmountLabel.text = "-"
            cell?.timeLabel.text = WUtils.nodeTimetoString(input: mBnbTime)
            cell?.timeGapLabel.text = WUtils.timeGap(input: mBnbTime)
            cell?.hashLabel.text = mTxInfo!.hash
            cell?.memoLabel.text = mTxInfo!.tx?.value.memo
            cell?.feeAmountLabel.attributedText = WUtils.displayAmount2(FEE_BNB_TRANSFER, cell!.feeAmountLabel.font!, 0, 8)
            
        } else if (chainType == ChainType.OKEX_MAIN) {
            cell?.feeLayer.isHidden = false
            cell?.usedFeeLayer.isHidden = true
            cell?.limitFeeLayer.isHidden = true
            if (mTxInfo!.isSuccess()) {
                cell?.statusImg.image = UIImage(named: "successIc")
                cell?.statusLabel.text = NSLocalizedString("tx_success", comment: "")
                cell?.errorMsg.isHidden = true
                cell?.errorConstraint.priority = .defaultLow
                cell?.successConstraint.priority = .defaultHigh
            } else {
                cell?.statusImg.image = UIImage(named: "failIc")
                cell?.statusLabel.text = NSLocalizedString("tx_fail", comment: "")
                cell?.errorMsg.text = mTxInfo?.failMsg()
                cell?.errorMsg.isHidden = false
                cell?.errorConstraint.priority = .defaultHigh
                cell?.successConstraint.priority = .defaultLow
            }
            cell?.heightLabel.text = mTxInfo!.height
            cell?.msgCntLabel.text = String(mTxInfo!.getMsgs().count)
            cell?.gasAmountLabel.text = mTxInfo!.gas_used! + " / " + mTxInfo!.gas_wanted!
            cell?.timeLabel.text = WUtils.txTimetoString(input: mTxInfo!.timestamp!)
            cell?.timeGapLabel.text = WUtils.txTimeGap(input: mTxInfo!.timestamp!)
            cell?.hashLabel.text = mTxInfo!.txhash
            cell?.memoLabel.text = mTxInfo!.tx?.value.memo
            cell?.feeAmountLabel.attributedText = WUtils.displayAmount2(mTxInfo?.simpleFee().stringValue, cell!.feeAmountLabel.font!, 0, 8)
            
        } else {
            cell?.feeLayer.isHidden = false
            cell?.usedFeeLayer.isHidden = true
            cell?.limitFeeLayer.isHidden = true
            let decimal = WUtils.mainDivideDecimal(chainType)
            if (mTxInfo!.isSuccess()) {
                cell?.statusImg.image = UIImage(named: "successIc")
                cell?.statusLabel.text = NSLocalizedString("tx_success", comment: "")
                cell?.errorMsg.isHidden = true
                cell?.errorConstraint.priority = .defaultLow
                cell?.successConstraint.priority = .defaultHigh
            } else {
                cell?.statusImg.image = UIImage(named: "failIc")
                cell?.statusLabel.text = NSLocalizedString("tx_fail", comment: "")
                if let bool = mTxInfo?.failMsg().starts(with: "atomic swap not found"), bool {
                    cell?.errorMsg.text = "atomic swap not found"
                } else {
                    cell?.errorMsg.text = mTxInfo?.failMsg()
                }
                cell?.errorMsg.isHidden = false
                cell?.errorConstraint.priority = .defaultHigh
                cell?.successConstraint.priority = .defaultLow
            }
            cell?.heightLabel.text = mTxInfo!.height
            cell?.msgCntLabel.text = String(mTxInfo!.getMsgs().count)
            cell?.gasAmountLabel.text = mTxInfo!.gas_used! + " / " + mTxInfo!.gas_wanted!
            cell?.timeLabel.text = WUtils.txTimetoString(input: mTxInfo!.timestamp!)
            cell?.timeGapLabel.text = WUtils.txTimeGap(input: mTxInfo!.timestamp!)
            cell?.hashLabel.text = mTxInfo!.txhash
            cell?.memoLabel.text = mTxInfo!.tx?.value.memo
            cell?.feeAmountLabel.attributedText = WUtils.displayAmount2(mTxInfo?.simpleFee().stringValue, cell!.feeAmountLabel.font!, decimal, decimal)
            
        }
//        cell?.actionHashCheck = {
//            self.onClickExplorer()
//        }
        
        return cell!
    }
    
    func onBindTransfer(_ tableView: UITableView,  _ position:Int) -> UITableViewCell  {
        let cell:TxTransferCell? = tableView.dequeueReusableCell(withIdentifier:"TxTransferCell") as? TxTransferCell
        let msg = mTxInfo?.getMsg(position - 1)
        cell?.txIcon.image = cell?.txIcon.image?.withRenderingMode(.alwaysTemplate)
        cell?.txIcon.tintColor = WUtils.getChainColor(chainType!)
        if (chainType == ChainType.BINANCE_MAIN) {
            cell?.fromLabel.text = msg?.value.inputs![0].address
            cell?.toLabel.text = msg?.value.outputs![0].address
            if (self.account?.account_address == msg?.value.inputs![0].address) {
                cell?.txTitleLabel.text = NSLocalizedString("tx_send", comment: "")
            } else if (self.account?.account_address == msg?.value.outputs![0].address) {
                cell?.txTitleLabel.text = NSLocalizedString("tx_receive", comment: "")
            }
            let coins = msg?.value.inputs?[0].coins
            cell?.multiAmountStack.isHidden = false
            cell?.multiAmountLayer0.isHidden = false
            WUtils.showBNBTxDp(coins![0], cell!.multiAmountDenom0, cell!.multiAmount0, chainType!)
            
        } else if (chainType == ChainType.OKEX_MAIN) {
            var coins = msg?.value.getAmounts()
            let convertFromAddress = WKey.convertAddressCosmosToTender(msg?.value.from_address ?? "")
            let convertToAddress = WKey.convertAddressCosmosToTender(msg?.value.to_address ?? "")
            
            cell?.fromLabel.text = convertFromAddress
            cell?.toLabel.text = convertToAddress
            
            if (self.account?.account_address == convertFromAddress) {
                cell?.txTitleLabel.text = NSLocalizedString("tx_send", comment: "")
            } else if (self.account?.account_address == convertToAddress) {
                cell?.txTitleLabel.text = NSLocalizedString("tx_receive", comment: "")
            }
            
            coins = sortCoins(coins!, chainType!)
            cell?.multiAmountStack.isHidden = false
            cell?.multiAmountLayer0.isHidden = false
            WUtils.showCoinDp(coins![0], cell!.multiAmountDenom0, cell!.multiAmount0, chainType!)
        }
        return cell!
    }
    
    func onBindMultiTransfer(_ tableView: UITableView,  _ position:Int) -> UITableViewCell  {
        let cell:TxMultiTransferCell? = tableView.dequeueReusableCell(withIdentifier:"TxMultiTransferCell") as? TxMultiTransferCell
        let msg = mTxInfo?.getMsg(position - 1)
        return cell!
    }
    
    func onBindOkStake(_ tableView: UITableView, _ position:Int) -> UITableViewCell  {
        let cell:TxOkStakeCell? = tableView.dequeueReusableCell(withIdentifier:"TxOkStakeCell") as? TxOkStakeCell
        let msg = mTxInfo?.getMsg(position - 1)
        if (msg?.type == OK_MSG_TYPE_DEPOSIT) {
            cell?.txIcon.image = UIImage(named: "txDepositCdp")
            cell?.txLabel.text = NSLocalizedString("title_ok_deposit", comment: "")
        } else {
            cell?.txIcon.image = UIImage(named: "txWithdrawCdp")
            cell?.txLabel.text = NSLocalizedString("title_ok_withdraw", comment: "")
        }
        cell?.txIcon.image = cell?.txIcon.image?.withRenderingMode(.alwaysTemplate)
        cell?.txIcon.tintColor = WUtils.getChainColor(chainType!)
        
        let convertDelegaterAddress = WKey.convertAddressCosmosToTender(msg?.value.delegator_address ?? "")
        cell?.delegatorLabel.text = convertDelegaterAddress
        WUtils.showCoinDp(msg!.value.quantity!, cell!.stakeDenom, cell!.stakeAmount, chainType!)
        return cell!
    }
    
    func onBindOkDirectVote(_ tableView: UITableView, _ position:Int) -> UITableViewCell {
        let cell:TxOkDirectVoteCell? = tableView.dequeueReusableCell(withIdentifier:"TxOkDirectVoteCell") as? TxOkDirectVoteCell
        let msg = mTxInfo?.getMsg(position - 1)
        cell?.txIcon.image = cell?.txIcon.image?.withRenderingMode(.alwaysTemplate)
        cell?.txIcon.tintColor = WUtils.getChainColor(chainType!)
        cell?.voterLabel.text = msg?.value.delegator_address
        
        var monikers = ""
        let validators = msg?.value.validator_addresses
        for validator in validators! {
            for allVal in BaseData.instance.mAllValidator {
                if (allVal.operator_address == validator) {
                    monikers = monikers + allVal.description.moniker + ", "
                }
            }
        }
        cell?.validatorList.text = monikers
        return cell!
    }
    
    
    
    func onBindUnknown(_ tableView: UITableView, _ position:Int) -> UITableViewCell  {
        let cell:TxUnknownCell? = tableView.dequeueReusableCell(withIdentifier:"TxUnknownCell") as? TxUnknownCell
        cell?.txIcon.image = cell?.txIcon.image?.withRenderingMode(.alwaysTemplate)
        cell?.txIcon.tintColor = WUtils.getChainColor(chainType!)
        return cell!
    }
    
    
    @IBAction func onClickShare(_ sender: UIButton) {
        var hash = ""
        if (mTxInfo?.hash != nil) {
            hash = mTxInfo!.hash!
        } else if (mTxInfo?.txhash != nil) {
            hash = mTxInfo!.txhash!
        }
        let link = WUtils.getTxExplorer(self.chainType!, hash)
        let textToShare = [ link ]
        let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
        
    }
    
    @IBAction func onClickExplorer(_ sender: UIButton) {
        var hash = ""
        if (mTxInfo?.hash != nil) {
            hash = mTxInfo!.hash!
        } else if (mTxInfo?.txhash != nil) {
            hash = mTxInfo!.txhash!
        }
        let link = WUtils.getTxExplorer(self.chainType!, hash)
        guard let url = URL(string: link) else { return }
        self.onShowSafariWeb(url)
    }
    
    @IBAction func onClickDismiss(_ sender: UIButton) {
        self.mFetchCnt = -1
        if (mIsGen){
            self.onStartMainTab()
        } else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func onClickHtlcRefund(_ sender: UIButton) {
        self.onShowToast("Pending swap will refund Shortly")
        return
//        print("onClickHtlcRefund")
//        if (!account!.account_has_private) {
//            self.onShowAddMenomicDialog()
//            return
//        }
        
//        let balances = BaseData.instance.selectBalanceById(accountId: self.account!.account_id)
//        if (chainType! == ChainType.BINANCE_MAIN || chainType! == ChainType.BINANCE_TEST) {
//            if (WUtils.getTokenAmount(balances, BNB_MAIN_DENOM).compare(NSDecimalNumber.init(string: FEE_BNB_TRANSFER)).rawValue < 0) {
//                self.onShowToast(NSLocalizedString("error_not_enough_fee", comment: ""))
//                return
//            }
//        }
//
//        let txVC = UIStoryboard(name: "GenTx", bundle: nil).instantiateViewController(withIdentifier: "TransactionViewController") as! TransactionViewController
//        txVC.mType = TASK_TYPE_HTLC_REFUND
//        txVC.mHtlcRefundSwapId = self.mSwapId
//        self.navigationItem.title = ""
//        self.navigationController?.pushViewController(txVC, animated: true)
    }
    
    
    func onShowMoreWait() {
        let noticeAlert = UIAlertController(title: NSLocalizedString("more_wait_title", comment: ""), message: NSLocalizedString("more_wait_msg", comment: ""), preferredStyle: .alert)
        noticeAlert.addAction(UIAlertAction(title: NSLocalizedString("close", comment: ""), style: .default, handler: { _ in
            self.dismiss(animated: true, completion: nil)
            self.onStartMainTab()
        }))
        noticeAlert.addAction(UIAlertAction(title: NSLocalizedString("wait", comment: ""), style: .default, handler: { _ in
            self.mFetchCnt = 10
            self.onFetchTx(self.mTxHash!)
        }))
        self.present(noticeAlert, animated: true) {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissAlertController))
            noticeAlert.view.superview?.subviews[0].addGestureRecognizer(tapGesture)
        }
    }
    
    
    func onFetchTx(_ txHash: String) {
        var url = BaseNetWork.txUrl(chainType, txHash)
        var request:DataRequest?
        if (self.chainType! == ChainType.BINANCE_MAIN) {
            request = Alamofire.request(url, method: .get, parameters: ["format":"json"], encoding: URLEncoding.default, headers: [:])
        } else {
            request = Alamofire.request(url, method: .get, parameters: [:], encoding: URLEncoding.default, headers: [:])
        }
        print("url ", url)
        request!.responseJSON { (response) in
            switch response.result {
            case .success(let res):
//                if(SHOW_LOG) { print("onFetchTx OK", self.mIsGen, " ", res) }
                guard let info = res as? [String : Any], info["error"] == nil else {
                    if (self.mIsGen) {
                        self.mFetchCnt = self.mFetchCnt - 1
                        if (self.mFetchCnt > 0) {
                            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(6000), execute: {
                                self.onFetchTx(txHash)
                            })
                        } else {
                            self.onShowMoreWait()
                        }
                    } else {
                        self.onUpdateView()
                    }
                    return
                }
                self.mTxInfo = TxInfo.init(info)
                
                //Check swap status if Send HTLC Tx
                if (self.chainType! == ChainType.BINANCE_MAIN) {
                    if (self.mTxInfo?.getMsgs()[0].type == BNB_MSG_TYPE_HTLC && self.account?.account_address == self.mTxInfo?.getMsgs()[0].value.from) {
                        self.onFetchHtlcStatus(self.mTxInfo?.simpleBnbSwapId())
                    } else {
                        self.onUpdateView()
                    }
                    
                } else if (self.chainType! == ChainType.KAVA_MAIN) {
                    if (self.mTxInfo?.getMsgs()[0].type == KAVA_MSG_TYPE_HTLC_CREATE_SWAP) {
                        print("simpleKavaSwapId " , self.mTxInfo?.simpleKavaSwapId())
                        self.onFetchHtlcStatus(self.mTxInfo?.simpleKavaSwapId())
                    } else {
                        self.onUpdateView()
                    }
                    
                } else {
                    self.onUpdateView()
                }
                
                
            case .failure(let error):
                print("onFetchTx failure", error)
                if (self.chainType! == ChainType.IRIS_MAIN) {
                    self.mFetchCnt = self.mFetchCnt - 1
                    if(self.mFetchCnt > 0) {
                        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(6000), execute: {
                            self.onFetchTx(txHash)
                        })
                    } else {
                        self.onShowMoreWait()
                    }
                } else if (self.chainType! == ChainType.BINANCE_MAIN) {
                    if (self.mIsGen) {
                        self.mFetchCnt = self.mFetchCnt - 1
                        if (self.mFetchCnt > 0) {
                            DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(1500), execute: {
                                self.onFetchTx(txHash)
                            })
                        } else {
                            self.onShowMoreWait()
                        }
                        
                    } else {
                        self.onUpdateView()
                    }
                }
                return
            }
            
        }
        
    }
    
    func onFetchHtlcStatus(_ swapId: String?) {
        print("onFetchHtlcStatus ", swapId)
        if (swapId == nil) {
            self.onUpdateView()
            return
        }
        let url = BaseNetWork.swapIdBep3Url(self.chainType, swapId!)
        let request = Alamofire.request(url, method: .get, parameters: [:], encoding: URLEncoding.default, headers: [:])
        request.responseJSON { (response) in
            switch response.result {
            case .success(let res):
//                if(SHOW_LOG) { print("onFetchSwapId ", res) }
                if (self.chainType! == ChainType.BINANCE_MAIN) {
                    if let info = res as? [String : Any] {
                        self.mBnbSwapInfo = BnbSwapInfo.init(info)
                    }
                    self.onFetchBnbNodeInfo()
                    
                } else if (self.chainType! == ChainType.KAVA_MAIN) {
                    if let info = res as? [String : Any], info["error"] == nil  {
                        self.mKavaSwapInfo = KavaSwapInfo.init(info)
                    }
                    self.onUpdateView()
                    
                }
                
            case .failure(let error):
                print("onFetchSwapId", error)
                self.onUpdateView()
                return
            }
        }
    }
    
    func onFetchBnbNodeInfo() {
        let request = Alamofire.request(BaseNetWork.nodeInfoUrl(self.chainType), method: .get, parameters: [:], encoding: URLEncoding.default, headers: [:])
        request.responseJSON { (response) in
            switch response.result {
            case .success(let res):
//                if(SHOW_LOG) { print("onFetchBnbNodeInfo ", res) }
                if let info = res as? [String : Any] {
                    self.mBnbNodeInfo = BnbNodeInfo.init(info)
                }
                
            case .failure(let error):
                print("onFetchBnbNodeInfo", error)
                return
            }
            self.onUpdateView()
        }
    }
    
    
    
    
    
    func sortCoins(_ coins:Array<Coin>, _ chain:ChainType) -> Array<Coin> {
        if (chainType! == ChainType.COSMOS_MAIN) {
            return coins.sorted(by: {
                if ($0.denom == COSMOS_MAIN_DENOM) {
                    return true
                }
                if ($1.denom == COSMOS_MAIN_DENOM) {
                    return false
                }
                return false
            })
            
        } else if (chainType! == ChainType.KAVA_MAIN) {
            return coins.sorted(by: {
                if ($0.denom == KAVA_MAIN_DENOM) {
                    return true
                }
                if ($1.denom == KAVA_MAIN_DENOM) {
                    return false
                }
                return false
            })
            
        } else if (chainType! == ChainType.IRIS_MAIN) {
            return coins.sorted(by: {
                if ($0.denom == IRIS_MAIN_DENOM) {
                    return true
                }
                if ($1.denom == IRIS_MAIN_DENOM) {
                    return false
                }
                return false
            })
            
        } else if (chainType! == ChainType.OKEX_MAIN) {
            return coins.sorted(by: {
                if ($0.denom == OKEX_MAIN_DENOM) {
                    return true
                }
                if ($1.denom == OKEX_MAIN_DENOM) {
                    return false
                }
                if ($0.denom == OKEX_MAIN_OKB) {
                    return true
                }
                if ($1.denom == OKEX_MAIN_OKB) {
                    return false
                }
                return false
            })
        }
        return coins
    }
}
