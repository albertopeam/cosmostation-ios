//
//  ChainStride.swift
//  Cosmostation
//
//  Created by yongjoo jung on 2022/09/06.
//  Copyright © 2022 wannabit. All rights reserved.
//


import UIKit
import Foundation

class ChainStride: ChainConfig {
    var isGrpc = true
    var chainType = ChainType.STRIDE_MAIN
    var chainImg = UIImage(named: "chainStride")
    var chainInfoImg = UIImage(named: "infoStride")
    var chainInfoTitle = NSLocalizedString("guide_title_stride", comment: "")
    var chainInfoMsg = NSLocalizedString("guide_msg_stride", comment: "")
    var chainColor = UIColor(named: "stride")!
    var chainColorBG = UIColor(named: "stride_bg")!
    var chainTitle = "(Stride Mainnet)"
    var chainTitle2 = "STRIDE"
    var chainDBName = CHAIN_STRIDE_S
    var chainAPIName = "stride"
    var chainIdPrefix = "stride-"
    
    var stakeDenomImg = UIImage(named: "tokenStride")
    var stakeDenom = "ustrd"
    var stakeSymbol = "STRD"
    var stakeSendImg = UIImage(named: "sendImg")!
    var stakeSendBg = UIColor(named: "stride")!
    var divideDecimal: Int16 = 6
    var displayDecimal: Int16 = 6
    
    var addressPrefix = "stride"
    var validatorPrefix = "stridevaloper"
    let addressHdPath0 = "m/44'/118'/0'/0/X"
    
    let gasRate0 = "0.0ustrd"
    
    var etherAddressSupport = false
    var wasmSupport = false
    var evmSupport = false
    var wcSupoort = false
    var authzSupoort = true
    var grpcUrl = "lcd-stride-app.cosmostation.io"
    var grpcPort = 9090
    var lcdUrl = "https://lcd-stride-app.cosmostation.io/"
    var apiUrl = "https://api-stride.cosmostation.io/"
    var explorerUrl = MintscanUrl + "stride/"
    var validatorImgUrl = MonikerUrl + "stride/"
    var priceUrl = CoingeckoUrl + "stride"
    
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
        return "https://stride.zone/"
    }

    func getInfoLink2() -> String {
        return "https://stride.zone/blog"
    }
    
    func getGasRates() -> Array<String> {
        return [gasRate0]
    }
    
    func getGasDefault() -> Int {
        return 0
    }
}
