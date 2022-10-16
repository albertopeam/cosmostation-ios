//
//  ChainSif.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/05/10.
//  Copyright © 2022 wannabit. All rights reserved.
//

import UIKit
import Foundation

class ChainSif: ChainConfig {
    var isGrpc = true
    var chainType = ChainType.SIF_MAIN
    var chainImg = UIImage(named: "chainSif")
    var chainInfoImg = UIImage(named: "infoSif")
    var chainInfoTitle = NSLocalizedString("guide_title_sif", comment: "")
    var chainInfoMsg = NSLocalizedString("guide_msg_sif", comment: "")
    var chainColor = UIColor(named: "sif")!
    var chainColorBG = UIColor(named: "sif_bg")!
    var chainTitle = "(SifChain Mainnet)"
    var chainTitle2 = "SIF"
    var chainDBName = CHAIN_SIF_S
    var chainAPIName = "sifchain"
    var chainIdPrefix = "sifchain-"
    
    var stakeDenomImg = UIImage(named: "tokenSif")
    var stakeDenom = "rowan"
    var stakeSymbol = "ROWAN"
    var stakeSendImg = UIImage(named: "sendImg")!
    var stakeSendBg = UIColor(named: "sif")!
    var divideDecimal: Int16 = 18
    var displayDecimal: Int16 = 18
    
    var addressPrefix = "sif"
    var validatorPrefix = "sifvaloper"
    let addressHdPath0 = "m/44'/118'/0'/0/X"
    
    let gasRate0 = "0.0rowan"
    
    var etherAddressSupport = false
    var wasmSupport = false
    var evmSupport = false
    var wcSupoort = false
    var authzSupoort = true
    var grpcUrl = "lcd-sifchain-app.cosmostation.io"
    var grpcPort = 9090
    var lcdUrl = "https://lcd-sifchain-app.cosmostation.io/"
    var apiUrl = "https://api-sifchain.cosmostation.io/"
    var explorerUrl = MintscanUrl + "sifchain/"
    var validatorImgUrl = MonikerUrl + "sif/"
    var priceUrl = CoingeckoUrl + "sifchain"
    
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
        return "https://sifchain.finance/"
    }

    func getInfoLink2() -> String {
        return "https://medium.com/sifchain-finance"
    }
    
    func getGasRates() -> Array<String> {
        return [gasRate0]
    }
    
    func getGasDefault() -> Int {
        return 0
    }
}

let SIF_MAIN_DENOM = "rowan"
