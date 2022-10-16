//
//  ChainSecret.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/05/10.
//  Copyright © 2022 wannabit. All rights reserved.
//

import UIKit
import Foundation

class ChainSecret: ChainConfig {
    var isGrpc = true
    var chainType = ChainType.SECRET_MAIN
    var chainImg = UIImage(named: "chainSecret")
    var chainInfoImg = UIImage(named: "infoSecret")
    var chainInfoTitle = NSLocalizedString("guide_title_secret", comment: "")
    var chainInfoMsg = NSLocalizedString("guide_msg_secret", comment: "")
    var chainColor = UIColor(named: "secret")!
    var chainColorBG = UIColor(named: "secret_bg")!
    var chainTitle = "(Secret Mainnet)"
    var chainTitle2 = "SECRET"
    var chainDBName = CHAIN_SECRET_S
    var chainAPIName = "secret"
    var chainIdPrefix = "secret-"
    
    var stakeDenomImg = UIImage(named: "tokenSecret")
    var stakeDenom = "uscrt"
    var stakeSymbol = "SCRT"
    var stakeSendImg = UIImage(named: "sendImg")!
    var stakeSendBg = UIColor(named: "secret")!
    var divideDecimal: Int16 = 6
    var displayDecimal: Int16 = 6
    
    var addressPrefix = "secret"
    var validatorPrefix = "secretvaloper"
    let addressHdPath0 = "m/44'/118'/0'/0/X"
    let addressHdPath1 = "m/44'/529'/0'/0/X"
    
    let gasRate0 = "0.25uscrt"
    
    var etherAddressSupport = false
    var wasmSupport = false
    var evmSupport = false
    var wcSupoort = false
    var authzSupoort = false
    var grpcUrl = "lcd-secret.cosmostation.io"
    var grpcPort = 9090
    var lcdUrl = "https://lcd-secret.cosmostation.io/"
    var apiUrl = "https://api-secret.cosmostation.io/"
    var explorerUrl = MintscanUrl + "secret/"
    var validatorImgUrl = MonikerUrl + "secret/"
    var priceUrl = CoingeckoUrl + "secret"
    
    required init(_ chainType: ChainType) {
        self.chainType = chainType
    }
    
    func supportHdPaths() -> Array<String> {
        return [addressHdPath0, addressHdPath1]
    }
    
    func getHdPath(_ type: Int, _ path: Int) -> String {
        supportHdPaths()[type].replacingOccurrences(of: "X", with: String(path))
    }
    
    func getInfoLink1() -> String {
        return "https://scrt.network"
    }

    func getInfoLink2() -> String {
        return "https://blog.scrt.network"
    }
    
    func getGasRates() -> Array<String> {
        return [gasRate0]
    }
    
    func getGasDefault() -> Int {
        return 0
    }
}
