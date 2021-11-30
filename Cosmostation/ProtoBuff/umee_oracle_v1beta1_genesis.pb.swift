// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: umee/oracle/v1beta1/genesis.proto
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

/// GenesisState defines the oracle module's genesis state.
struct Umeenetwork_Umee_Oracle_V1beta1_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var params: Umeenetwork_Umee_Oracle_V1beta1_Params {
    get {return _params ?? Umeenetwork_Umee_Oracle_V1beta1_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  mutating func clearParams() {self._params = nil}

  var feederDelegations: [Umeenetwork_Umee_Oracle_V1beta1_FeederDelegation] = []

  var exchangeRates: [Umeenetwork_Umee_Oracle_V1beta1_ExchangeRateTuple] = []

  var missCounters: [Umeenetwork_Umee_Oracle_V1beta1_MissCounter] = []

  var aggregateExchangeRatePrevotes: [Umeenetwork_Umee_Oracle_V1beta1_AggregateExchangeRatePrevote] = []

  var aggregateExchangeRateVotes: [Umeenetwork_Umee_Oracle_V1beta1_AggregateExchangeRateVote] = []

  var tobinTaxes: [Umeenetwork_Umee_Oracle_V1beta1_TobinTax] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _params: Umeenetwork_Umee_Oracle_V1beta1_Params? = nil
}

/// FeederDelegation is the address for where oracle feeder authority are
/// delegated to. By default this struct is only used at genesis to feed in
/// default feeder addresses.
struct Umeenetwork_Umee_Oracle_V1beta1_FeederDelegation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var feederAddress: String = String()

  var validatorAddress: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MissCounter defines an miss counter and validator address pair used in
/// oracle module's genesis state
struct Umeenetwork_Umee_Oracle_V1beta1_MissCounter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var validatorAddress: String = String()

  var missCounter: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// TobinTax defines an denom and tobin_tax pair used in
/// oracle module's genesis state
struct Umeenetwork_Umee_Oracle_V1beta1_TobinTax {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var denom: String = String()

  var tobinTax: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "umeenetwork.umee.oracle.v1beta1"

extension Umeenetwork_Umee_Oracle_V1beta1_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GenesisState"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "params"),
    2: .standard(proto: "feeder_delegations"),
    3: .standard(proto: "exchange_rates"),
    4: .standard(proto: "miss_counters"),
    5: .standard(proto: "aggregate_exchange_rate_prevotes"),
    6: .standard(proto: "aggregate_exchange_rate_votes"),
    7: .standard(proto: "tobin_taxes"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.feederDelegations) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.exchangeRates) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.missCounters) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.aggregateExchangeRatePrevotes) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.aggregateExchangeRateVotes) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.tobinTaxes) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.feederDelegations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.feederDelegations, fieldNumber: 2)
    }
    if !self.exchangeRates.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.exchangeRates, fieldNumber: 3)
    }
    if !self.missCounters.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.missCounters, fieldNumber: 4)
    }
    if !self.aggregateExchangeRatePrevotes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.aggregateExchangeRatePrevotes, fieldNumber: 5)
    }
    if !self.aggregateExchangeRateVotes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.aggregateExchangeRateVotes, fieldNumber: 6)
    }
    if !self.tobinTaxes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.tobinTaxes, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Oracle_V1beta1_GenesisState, rhs: Umeenetwork_Umee_Oracle_V1beta1_GenesisState) -> Bool {
    if lhs._params != rhs._params {return false}
    if lhs.feederDelegations != rhs.feederDelegations {return false}
    if lhs.exchangeRates != rhs.exchangeRates {return false}
    if lhs.missCounters != rhs.missCounters {return false}
    if lhs.aggregateExchangeRatePrevotes != rhs.aggregateExchangeRatePrevotes {return false}
    if lhs.aggregateExchangeRateVotes != rhs.aggregateExchangeRateVotes {return false}
    if lhs.tobinTaxes != rhs.tobinTaxes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Umeenetwork_Umee_Oracle_V1beta1_FeederDelegation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".FeederDelegation"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "feeder_address"),
    2: .standard(proto: "validator_address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.feederAddress) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.validatorAddress) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.feederAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.feederAddress, fieldNumber: 1)
    }
    if !self.validatorAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.validatorAddress, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Oracle_V1beta1_FeederDelegation, rhs: Umeenetwork_Umee_Oracle_V1beta1_FeederDelegation) -> Bool {
    if lhs.feederAddress != rhs.feederAddress {return false}
    if lhs.validatorAddress != rhs.validatorAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Umeenetwork_Umee_Oracle_V1beta1_MissCounter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MissCounter"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "validator_address"),
    2: .standard(proto: "miss_counter"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.validatorAddress) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.missCounter) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.validatorAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.validatorAddress, fieldNumber: 1)
    }
    if self.missCounter != 0 {
      try visitor.visitSingularUInt64Field(value: self.missCounter, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Oracle_V1beta1_MissCounter, rhs: Umeenetwork_Umee_Oracle_V1beta1_MissCounter) -> Bool {
    if lhs.validatorAddress != rhs.validatorAddress {return false}
    if lhs.missCounter != rhs.missCounter {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Umeenetwork_Umee_Oracle_V1beta1_TobinTax: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TobinTax"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "denom"),
    2: .standard(proto: "tobin_tax"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.tobinTax) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 1)
    }
    if !self.tobinTax.isEmpty {
      try visitor.visitSingularStringField(value: self.tobinTax, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Oracle_V1beta1_TobinTax, rhs: Umeenetwork_Umee_Oracle_V1beta1_TobinTax) -> Bool {
    if lhs.denom != rhs.denom {return false}
    if lhs.tobinTax != rhs.tobinTax {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}