// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stride/vesting/vesting.proto
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

/// BaseVestingAccount implements the VestingAccount interface. It contains all
/// the necessary fields needed for any vesting account implementation.
struct Stride_Vesting_BaseVestingAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var baseAccount: Cosmos_Auth_V1beta1_BaseAccount {
    get {return _baseAccount ?? Cosmos_Auth_V1beta1_BaseAccount()}
    set {_baseAccount = newValue}
  }
  /// Returns true if `baseAccount` has been explicitly set.
  var hasBaseAccount: Bool {return self._baseAccount != nil}
  /// Clears the value of `baseAccount`. Subsequent reads from it will return its default value.
  mutating func clearBaseAccount() {self._baseAccount = nil}

  var originalVesting: [Cosmos_Base_V1beta1_Coin] = []

  var delegatedFree: [Cosmos_Base_V1beta1_Coin] = []

  var delegatedVesting: [Cosmos_Base_V1beta1_Coin] = []

  var endTime: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _baseAccount: Cosmos_Auth_V1beta1_BaseAccount? = nil
}

/// Period defines a length of time and amount of coins that will vest.
struct Stride_Vesting_Period {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var startTime: Int64 = 0

  var length: Int64 = 0

  var amount: [Cosmos_Base_V1beta1_Coin] = []

  var actionType: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// StridePeriodicVestingAccount implements the VestingAccount interface. It
/// periodically vests by unlocking coins during each specified period.
struct Stride_Vesting_StridePeriodicVestingAccount {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var baseVestingAccount: Stride_Vesting_BaseVestingAccount {
    get {return _baseVestingAccount ?? Stride_Vesting_BaseVestingAccount()}
    set {_baseVestingAccount = newValue}
  }
  /// Returns true if `baseVestingAccount` has been explicitly set.
  var hasBaseVestingAccount: Bool {return self._baseVestingAccount != nil}
  /// Clears the value of `baseVestingAccount`. Subsequent reads from it will return its default value.
  mutating func clearBaseVestingAccount() {self._baseVestingAccount = nil}

  var vestingPeriods: [Stride_Vesting_Period] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _baseVestingAccount: Stride_Vesting_BaseVestingAccount? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stride.vesting"

extension Stride_Vesting_BaseVestingAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BaseVestingAccount"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_account"),
    2: .standard(proto: "original_vesting"),
    3: .standard(proto: "delegated_free"),
    4: .standard(proto: "delegated_vesting"),
    5: .standard(proto: "end_time"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._baseAccount) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.originalVesting) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.delegatedFree) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.delegatedVesting) }()
      case 5: try { try decoder.decodeSingularInt64Field(value: &self.endTime) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._baseAccount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.originalVesting.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.originalVesting, fieldNumber: 2)
    }
    if !self.delegatedFree.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.delegatedFree, fieldNumber: 3)
    }
    if !self.delegatedVesting.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.delegatedVesting, fieldNumber: 4)
    }
    if self.endTime != 0 {
      try visitor.visitSingularInt64Field(value: self.endTime, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Vesting_BaseVestingAccount, rhs: Stride_Vesting_BaseVestingAccount) -> Bool {
    if lhs._baseAccount != rhs._baseAccount {return false}
    if lhs.originalVesting != rhs.originalVesting {return false}
    if lhs.delegatedFree != rhs.delegatedFree {return false}
    if lhs.delegatedVesting != rhs.delegatedVesting {return false}
    if lhs.endTime != rhs.endTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Vesting_Period: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Period"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "start_time"),
    2: .same(proto: "length"),
    3: .same(proto: "amount"),
    4: .standard(proto: "action_type"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.startTime) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.length) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.amount) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.actionType) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.startTime != 0 {
      try visitor.visitSingularInt64Field(value: self.startTime, fieldNumber: 1)
    }
    if self.length != 0 {
      try visitor.visitSingularInt64Field(value: self.length, fieldNumber: 2)
    }
    if !self.amount.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.amount, fieldNumber: 3)
    }
    if self.actionType != 0 {
      try visitor.visitSingularInt32Field(value: self.actionType, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Vesting_Period, rhs: Stride_Vesting_Period) -> Bool {
    if lhs.startTime != rhs.startTime {return false}
    if lhs.length != rhs.length {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.actionType != rhs.actionType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stride_Vesting_StridePeriodicVestingAccount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".StridePeriodicVestingAccount"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_vesting_account"),
    3: .standard(proto: "vesting_periods"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._baseVestingAccount) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.vestingPeriods) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._baseVestingAccount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.vestingPeriods.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.vestingPeriods, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Stride_Vesting_StridePeriodicVestingAccount, rhs: Stride_Vesting_StridePeriodicVestingAccount) -> Bool {
    if lhs._baseVestingAccount != rhs._baseVestingAccount {return false}
    if lhs.vestingPeriods != rhs.vestingPeriods {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
