//
//  WalletBaseChainCell.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/06/17.
//  Copyright © 2022 wannabit. All rights reserved.
//

import UIKit

class WalletBaseChainCell: UITableViewCell {
    @IBOutlet weak var cardRoot: CardView!
    @IBOutlet weak var tokenSymbolImg: UIImageView!
    @IBOutlet weak var tokenSymbolLabel: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var totalValue: UILabel!
    @IBOutlet weak var availableAmount: UILabel!
    @IBOutlet weak var delegatedAmount: UILabel!
    @IBOutlet weak var unbondingAmount: UILabel!
    @IBOutlet weak var rewardAmount: UILabel!
    @IBOutlet weak var vestingAmount: UILabel!
    @IBOutlet weak var vestingLayer: UIView!
    @IBOutlet weak var btnWalletConnec: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        availableAmount.font = UIFontMetrics(forTextStyle: .footnote).scaledFont(for: Font_13_footnote)
        delegatedAmount.font = UIFontMetrics(forTextStyle: .footnote).scaledFont(for: Font_13_footnote)
        rewardAmount.font = UIFontMetrics(forTextStyle: .footnote).scaledFont(for: Font_13_footnote)
        unbondingAmount.font = UIFontMetrics(forTextStyle: .footnote).scaledFont(for: Font_13_footnote)
        vestingAmount.font = UIFontMetrics(forTextStyle: .footnote).scaledFont(for: Font_13_footnote)
    }
    
    var actionDelegate: (() -> Void)? = nil
    var actionVote: (() -> Void)? = nil
    var actionWC: (() -> Void)? = nil
    
    @IBAction func onClickDelegate(_ sender: Any) {
        actionDelegate?()
    }
    @IBAction func onClickVote(_ sender: Any) {
        actionVote?()
    }
    @IBAction func onClickWC(_ sender: Any) {
        actionWC?()
    }
    
    func updateView(_ account: Account?, _ chainConfig: ChainConfig?) {
        if (account == nil || chainConfig == nil) { return }
        let stakingDenom = chainConfig!.stakeDenom
        let chainType = chainConfig!.chainType
        let divideDecimal = WUtils.mainDivideDecimal(chainType)
        let totalToken = WUtils.getAllMainAsset(stakingDenom)
        
        cardRoot.backgroundColor = chainConfig!.chainColorBG
        tokenSymbolImg.image = chainConfig!.stakeDenomImg
        tokenSymbolLabel.text = chainConfig!.stakeSymbol
        tokenSymbolLabel.textColor = chainConfig!.chainColor
        btnWalletConnec.isHidden = !chainConfig!.wcSupoort

        totalAmount.attributedText = WUtils.displayAmount2(totalToken.stringValue, totalAmount.font!, divideDecimal, 6)
        totalValue.attributedText = WUtils.dpUserCurrencyValue(stakingDenom, totalToken, 6, totalValue.font)
        availableAmount.attributedText = WUtils.displayAmount2(BaseData.instance.getAvailable_gRPC(stakingDenom), availableAmount.font!, divideDecimal, 6)
        delegatedAmount.attributedText = WUtils.displayAmount2(BaseData.instance.getDelegatedSum_gRPC(), delegatedAmount.font!, divideDecimal, 6)
        unbondingAmount.attributedText = WUtils.displayAmount2(BaseData.instance.getUnbondingSum_gRPC(), unbondingAmount.font, divideDecimal, 6)
        rewardAmount.attributedText = WUtils.displayAmount2(BaseData.instance.getRewardSum_gRPC(stakingDenom), rewardAmount.font, divideDecimal, 6)
        
        let vesting = BaseData.instance.getVestingAmount_gRPC(stakingDenom)
        if (vesting.compare(NSDecimalNumber.zero).rawValue > 0) {
            vestingLayer.isHidden = false
            vestingAmount.attributedText = WUtils.displayAmount2(BaseData.instance.getVesting_gRPC(stakingDenom), vestingAmount.font!, divideDecimal, 6)
        }
        BaseData.instance.updateLastTotal(account, totalToken.multiplying(byPowerOf10: -divideDecimal).stringValue)
    }
    
}
