//
//  WalletGuideCell.swift
//  Cosmostation
//
//  Created by yongjoo on 27/09/2019.
//  Copyright © 2019 wannabit. All rights reserved.
//

import UIKit

class WalletGuideCell: UITableViewCell {
    
    @IBOutlet weak var guideImg: UIImageView!
    @IBOutlet weak var guideTitle: UILabel!
    @IBOutlet weak var guideMsg: UILabel!
    @IBOutlet weak var btn1Label: UIButton!
    @IBOutlet weak var btn2Label: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }
    
    var actionGuide1: (() -> Void)? = nil
    var actionGuide2: (() -> Void)? = nil
    
    @IBAction func onClickGuide1(_ sender: Any) {
        actionGuide1?()
    }
    @IBAction func onClickGuide2(_ sender: Any) {
        actionGuide2?()
    }
    
    func onBindCell(_ account: Account?, _ chainConfig: ChainConfig?) {
        btn1Label.setTitle(NSLocalizedString("guide_btn_home", comment: ""), for: .normal)
        btn2Label.setTitle(NSLocalizedString("guide_btn_blog", comment: ""), for: .normal)
        
        guard let chainConfig = chainConfig else { return }
        guideImg.image = chainConfig.chainInfoImg
        guideTitle.text = chainConfig.chainInfoTitle
        guideMsg.text = chainConfig.chainInfoMsg
        
    }
}
