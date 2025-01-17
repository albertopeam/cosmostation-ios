// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: kava/incentive/v1beta1/tx.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Selection is a pair of denom and multiplier name. It holds the choice of multiplier a user makes when they claim a
/// denom.
struct Kava_Incentive_V1beta1_Selection {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var denom: String = String()

  var multiplierName: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimUSDXMintingReward message type used to claim USDX minting rewards
struct Kava_Incentive_V1beta1_MsgClaimUSDXMintingReward {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sender: String = String()

  var multiplierName: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimUSDXMintingRewardResponse defines the Msg/ClaimUSDXMintingReward response type.
struct Kava_Incentive_V1beta1_MsgClaimUSDXMintingRewardResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimHardReward message type used to claim Hard liquidity provider rewards
struct Kava_Incentive_V1beta1_MsgClaimHardReward {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sender: String = String()

  var denomsToClaim: [Kava_Incentive_V1beta1_Selection] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimHardRewardResponse defines the Msg/ClaimHardReward response type.
struct Kava_Incentive_V1beta1_MsgClaimHardRewardResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimDelegatorReward message type used to claim delegator rewards
struct Kava_Incentive_V1beta1_MsgClaimDelegatorReward {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sender: String = String()

  var denomsToClaim: [Kava_Incentive_V1beta1_Selection] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimDelegatorRewardResponse defines the Msg/ClaimDelegatorReward response type.
struct Kava_Incentive_V1beta1_MsgClaimDelegatorRewardResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimSwapReward message type used to claim delegator rewards
struct Kava_Incentive_V1beta1_MsgClaimSwapReward {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sender: String = String()

  var denomsToClaim: [Kava_Incentive_V1beta1_Selection] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimSwapRewardResponse defines the Msg/ClaimSwapReward response type.
struct Kava_Incentive_V1beta1_MsgClaimSwapRewardResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimSavingsReward message type used to claim savings rewards
struct Kava_Incentive_V1beta1_MsgClaimSavingsReward {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sender: String = String()

  var denomsToClaim: [Kava_Incentive_V1beta1_Selection] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimSavingsRewardResponse defines the Msg/ClaimSavingsReward response type.
struct Kava_Incentive_V1beta1_MsgClaimSavingsRewardResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimEarnReward message type used to claim earn rewards
struct Kava_Incentive_V1beta1_MsgClaimEarnReward {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var sender: String = String()

  var denomsToClaim: [Kava_Incentive_V1beta1_Selection] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgClaimEarnRewardResponse defines the Msg/ClaimEarnReward response type.
struct Kava_Incentive_V1beta1_MsgClaimEarnRewardResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "kava.incentive.v1beta1"

extension Kava_Incentive_V1beta1_Selection: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Selection"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "denom"),
    2: .standard(proto: "multiplier_name"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.multiplierName) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 1)
    }
    if !self.multiplierName.isEmpty {
      try visitor.visitSingularStringField(value: self.multiplierName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_Selection, rhs: Kava_Incentive_V1beta1_Selection) -> Bool {
    if lhs.denom != rhs.denom {return false}
    if lhs.multiplierName != rhs.multiplierName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimUSDXMintingReward: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimUSDXMintingReward"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sender"),
    2: .standard(proto: "multiplier_name"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.multiplierName) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 1)
    }
    if !self.multiplierName.isEmpty {
      try visitor.visitSingularStringField(value: self.multiplierName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimUSDXMintingReward, rhs: Kava_Incentive_V1beta1_MsgClaimUSDXMintingReward) -> Bool {
    if lhs.sender != rhs.sender {return false}
    if lhs.multiplierName != rhs.multiplierName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimUSDXMintingRewardResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimUSDXMintingRewardResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimUSDXMintingRewardResponse, rhs: Kava_Incentive_V1beta1_MsgClaimUSDXMintingRewardResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimHardReward: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimHardReward"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sender"),
    2: .standard(proto: "denoms_to_claim"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.denomsToClaim) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 1)
    }
    if !self.denomsToClaim.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.denomsToClaim, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimHardReward, rhs: Kava_Incentive_V1beta1_MsgClaimHardReward) -> Bool {
    if lhs.sender != rhs.sender {return false}
    if lhs.denomsToClaim != rhs.denomsToClaim {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimHardRewardResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimHardRewardResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimHardRewardResponse, rhs: Kava_Incentive_V1beta1_MsgClaimHardRewardResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimDelegatorReward: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimDelegatorReward"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sender"),
    2: .standard(proto: "denoms_to_claim"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.denomsToClaim) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 1)
    }
    if !self.denomsToClaim.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.denomsToClaim, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimDelegatorReward, rhs: Kava_Incentive_V1beta1_MsgClaimDelegatorReward) -> Bool {
    if lhs.sender != rhs.sender {return false}
    if lhs.denomsToClaim != rhs.denomsToClaim {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimDelegatorRewardResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimDelegatorRewardResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimDelegatorRewardResponse, rhs: Kava_Incentive_V1beta1_MsgClaimDelegatorRewardResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimSwapReward: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimSwapReward"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sender"),
    2: .standard(proto: "denoms_to_claim"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.denomsToClaim) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 1)
    }
    if !self.denomsToClaim.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.denomsToClaim, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimSwapReward, rhs: Kava_Incentive_V1beta1_MsgClaimSwapReward) -> Bool {
    if lhs.sender != rhs.sender {return false}
    if lhs.denomsToClaim != rhs.denomsToClaim {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimSwapRewardResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimSwapRewardResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimSwapRewardResponse, rhs: Kava_Incentive_V1beta1_MsgClaimSwapRewardResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimSavingsReward: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimSavingsReward"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sender"),
    2: .standard(proto: "denoms_to_claim"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.denomsToClaim) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 1)
    }
    if !self.denomsToClaim.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.denomsToClaim, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimSavingsReward, rhs: Kava_Incentive_V1beta1_MsgClaimSavingsReward) -> Bool {
    if lhs.sender != rhs.sender {return false}
    if lhs.denomsToClaim != rhs.denomsToClaim {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimSavingsRewardResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimSavingsRewardResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimSavingsRewardResponse, rhs: Kava_Incentive_V1beta1_MsgClaimSavingsRewardResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimEarnReward: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimEarnReward"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sender"),
    2: .standard(proto: "denoms_to_claim"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.denomsToClaim) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 1)
    }
    if !self.denomsToClaim.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.denomsToClaim, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimEarnReward, rhs: Kava_Incentive_V1beta1_MsgClaimEarnReward) -> Bool {
    if lhs.sender != rhs.sender {return false}
    if lhs.denomsToClaim != rhs.denomsToClaim {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Kava_Incentive_V1beta1_MsgClaimEarnRewardResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgClaimEarnRewardResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Kava_Incentive_V1beta1_MsgClaimEarnRewardResponse, rhs: Kava_Incentive_V1beta1_MsgClaimEarnRewardResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
