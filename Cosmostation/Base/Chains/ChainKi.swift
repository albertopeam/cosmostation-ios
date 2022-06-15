//
//  ChainKi.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/05/10.
//  Copyright © 2022 wannabit. All rights reserved.
//

import UIKit
import Foundation

class ChainKi: ChainConfig {
    var isGrpc = true
    var chainType = ChainType.KI_MAIN
    var chainImg = UIImage(named: "chainKifoundation")
    var chainInfoImg = UIImage(named: "kifoundationImg")
    var chainInfoTitle = NSLocalizedString("send_guide_title_ki", comment: "")
    var chainInfoMsg = NSLocalizedString("send_guide_msg_ki", comment: "")
    var chainColor = UIColor(named: "ki")!
    var chainColorDark = UIColor(named: "ki_dark")
    var chainColorBG = UIColor(named: "ki")!.withAlphaComponent(0.15)
    
    var stakeDenomImg = UIImage(named: "tokenKifoundation")
    var stakeDenom = "uxki"
    var stakeSymbol = "XKI"
    
    var addressPrefix = "ki"
    let addressHdPath0 = "m/44'/118'/0'/0/X"
    
    var pushSupport = false
    var grpcUrl = "lcd-kichain-app.cosmostation.io"
    var grpcPort = "9090"
    var lcdUrl = "https://lcd-kichain-app.cosmostation.io"
    var apiUrl = "https://api-kichain.cosmostation.io/"
    var explorerUrl = MintscanUrl + "ki-chain/"
    var validatorImgUrl = MonikerUrl + "ki/"
    var relayerImgUrl = RelayerUrl + "ki/relay-kichain-unknown.png"
    
    required init(_ chainType: ChainType) {
        self.chainType = chainType
    }
    
    func supportHdPaths() -> Array<String> {
        return [addressHdPath0]
    }
    
    func getHdPath(_ type: Int, _ path: Int) -> String {
        supportHdPaths()[type].replacingOccurrences(of: "X", with: String(path))
    }
    
    func getDpAddress(_ words: MWords, _ type: Int, _ path: Int) -> String {
        return ""
    }
}
