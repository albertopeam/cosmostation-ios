//
//  WalletDetailInfoCell.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/06/12.
//  Copyright © 2022 wannabit. All rights reserved.
//

import UIKit

class WalletDetailInfoCell: UITableViewCell {
    
    @IBOutlet weak var rootView: CardView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var ethAddressLabel: UILabel!
    @IBOutlet weak var chainIdLabel: UILabel!
    @IBOutlet weak var importedDateLabel: UILabel!
    @IBOutlet weak var importStateLabel: UILabel!
    @IBOutlet weak var mnemonicLayer: UIView!
    @IBOutlet weak var mnemonicName: UILabel!
    @IBOutlet weak var keypathLayer: UIView!
    @IBOutlet weak var keypathLabel: UILabel!
    @IBOutlet weak var watchmodeMsgLabel: UILabel!
    
    @IBOutlet weak var addressTitle: UILabel!
    @IBOutlet weak var chainIdTitle: UILabel!
    @IBOutlet weak var dateTitle: UILabel!
    @IBOutlet weak var statusTitle: UILabel!
    @IBOutlet weak var mnemonicTitle: UILabel!
    @IBOutlet weak var pathTitle: UILabel!
    
    
    var actionAddress: (() -> Void)? = nil
    @IBAction func onClickAddress(_ sender: UIButton) {
        actionAddress?()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    func onBindView(_ chainConfig: ChainConfig, _ account: Account, _ chainId: String) {
        
        rootView.backgroundColor = chainConfig.chainColorBG
        addressLabel.text = account.account_address
        addressLabel.adjustsFontSizeToFitWidth = true
        chainIdLabel.text = chainId
        importedDateLabel.text = WDP.dpTime(account.account_import_time)
        
        if (chainConfig.etherAddressSupport == true) {
            ethAddressLabel.isHidden = false
            ethAddressLabel.text = "(" + WKey.convertAddressCosmosToTender(account.account_address) + ")"
            
        } else {
            ethAddressLabel.isHidden = true
        }
        
        if (account.account_has_private) {
            if (account.account_from_mnemonic) {
                importStateLabel.text = NSLocalizedString("str_with_mnemonics", comment: "")
                mnemonicName.text = BaseData.instance.selectMnemonicById(account.account_mnemonic_id)?.getName()
                keypathLabel.text = chainConfig.getHdPath(Int(account.account_custom_path), Int(account.account_path)!)
                mnemonicLayer.isHidden = false
                keypathLayer.isHidden = false
                
            } else {
                importStateLabel.text = NSLocalizedString("str_with_private_key", comment: "")
                mnemonicLayer.isHidden = true
                keypathLayer.isHidden = true
                
            }
            watchmodeMsgLabel.isHidden = true
            
        } else {
            importStateLabel.text = NSLocalizedString("str_only_address", comment: "")
            mnemonicLayer.isHidden = true
            keypathLayer.isHidden = true
            watchmodeMsgLabel.isHidden = false
        }
        
        addressTitle.text = NSLocalizedString("str_address", comment: "")
        chainIdTitle.text = NSLocalizedString("str_chainid", comment: "")
        dateTitle.text = NSLocalizedString("str_imported_date", comment: "")
        statusTitle.text = NSLocalizedString("str_imported_state", comment: "")
        mnemonicTitle.text = NSLocalizedString("str_mnemonic", comment: "")
        pathTitle.text = NSLocalizedString("str_key_path", comment: "")
        watchmodeMsgLabel.text = NSLocalizedString("msg_only_watchmode", comment: "")
    }
    
}
