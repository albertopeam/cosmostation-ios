//
//  ChainStargaze.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/05/10.
//  Copyright © 2022 wannabit. All rights reserved.
//

import UIKit
import Foundation

class ChainStargaze: ChainConfig {
    var isGrpc = true
    var chainType = ChainType.STARGAZE_MAIN
    var chainImg = UIImage(named: "chainStargaze")
    var chainInfoImg = UIImage(named: "infoStargaze")
    var chainInfoTitle = NSLocalizedString("guide_title_stargaze", comment: "")
    var chainInfoMsg = NSLocalizedString("guide_msg_stargaze", comment: "")
    var chainColor = UIColor(named: "stargaze")!
    var chainColorBG = UIColor(named: "stargaze_bg")!
    var chainTitle = "(Stargaze Mainnet)"
    var chainTitle2 = "STARGAZE"
    var chainDBName = CHAIN_STARGAZE_S
    var chainAPIName = "stargaze"
    var chainIdPrefix = "stargaze-"
    
    var stakeDenomImg = UIImage(named: "tokenStargaze")
    var stakeDenom = "ustars"
    var stakeSymbol = "STARS"
    var stakeSendImg = UIImage(named: "sendImg")!
    var stakeSendBg = UIColor(named: "stargaze")!
    var divideDecimal: Int16 = 6
    var displayDecimal: Int16 = 6
    
    var addressPrefix = "stars"
    var validatorPrefix = "starsvaloper"
    let addressHdPath0 = "m/44'/118'/0'/0/X"
    
    let gasRate0 = "0.0ustars"
    let gasRate1 = "0.0025ustars"
    
    var etherAddressSupport = false
    var wasmSupport = false
    var evmSupport = false
    var wcSupoort = false
    var authzSupoort = true
    var grpcUrl = "lcd-stargaze-app.cosmostation.io"
    var grpcPort = 9090
    var lcdUrl = "https://lcd-stargaze-app.cosmostation.io/"
    var apiUrl = "https://api-stargaze.cosmostation.io/"
    var explorerUrl = MintscanUrl + "stargaze/"
    var validatorImgUrl = MonikerUrl + "stargaze/"
    var priceUrl = CoingeckoUrl + "stargaze"
    
    required init(_ chainType: ChainType) {
        self.chainType = chainType
    }
    
    func supportHdPaths() -> Array<String> {
        return [addressHdPath0]
    }
    
    func getHdPath(_ type: Int, _ path: Int) -> String {
        supportHdPaths()[type].replacingOccurrences(of: "X", with: String(path))
    }
    
    func getInfoLink1() -> String {
        return "https://stargaze.zone/"
    }

    func getInfoLink2() -> String {
        return "https://mirror.xyz/stargazezone.eth"
    }
    
    func getGasRates() -> Array<String> {
        return [gasRate0, gasRate1]
    }
    
    func getGasDefault() -> Int {
        return 1
    }
}
