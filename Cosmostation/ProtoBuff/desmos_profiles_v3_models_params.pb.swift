// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: desmos/profiles/v3/models_params.proto
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

/// Params contains the parameters for the profiles module
struct Desmos_Profiles_V3_Params {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var nickname: Desmos_Profiles_V3_NicknameParams {
    get {return _nickname ?? Desmos_Profiles_V3_NicknameParams()}
    set {_nickname = newValue}
  }
  /// Returns true if `nickname` has been explicitly set.
  var hasNickname: Bool {return self._nickname != nil}
  /// Clears the value of `nickname`. Subsequent reads from it will return its default value.
  mutating func clearNickname() {self._nickname = nil}

  var dtag: Desmos_Profiles_V3_DTagParams {
    get {return _dtag ?? Desmos_Profiles_V3_DTagParams()}
    set {_dtag = newValue}
  }
  /// Returns true if `dtag` has been explicitly set.
  var hasDtag: Bool {return self._dtag != nil}
  /// Clears the value of `dtag`. Subsequent reads from it will return its default value.
  mutating func clearDtag() {self._dtag = nil}

  var bio: Desmos_Profiles_V3_BioParams {
    get {return _bio ?? Desmos_Profiles_V3_BioParams()}
    set {_bio = newValue}
  }
  /// Returns true if `bio` has been explicitly set.
  var hasBio: Bool {return self._bio != nil}
  /// Clears the value of `bio`. Subsequent reads from it will return its default value.
  mutating func clearBio() {self._bio = nil}

  var oracle: Desmos_Profiles_V3_OracleParams {
    get {return _oracle ?? Desmos_Profiles_V3_OracleParams()}
    set {_oracle = newValue}
  }
  /// Returns true if `oracle` has been explicitly set.
  var hasOracle: Bool {return self._oracle != nil}
  /// Clears the value of `oracle`. Subsequent reads from it will return its default value.
  mutating func clearOracle() {self._oracle = nil}

  var appLinks: Desmos_Profiles_V3_AppLinksParams {
    get {return _appLinks ?? Desmos_Profiles_V3_AppLinksParams()}
    set {_appLinks = newValue}
  }
  /// Returns true if `appLinks` has been explicitly set.
  var hasAppLinks: Bool {return self._appLinks != nil}
  /// Clears the value of `appLinks`. Subsequent reads from it will return its default value.
  mutating func clearAppLinks() {self._appLinks = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _nickname: Desmos_Profiles_V3_NicknameParams? = nil
  fileprivate var _dtag: Desmos_Profiles_V3_DTagParams? = nil
  fileprivate var _bio: Desmos_Profiles_V3_BioParams? = nil
  fileprivate var _oracle: Desmos_Profiles_V3_OracleParams? = nil
  fileprivate var _appLinks: Desmos_Profiles_V3_AppLinksParams? = nil
}

/// NicknameParams defines the parameters related to the profiles nicknames
struct Desmos_Profiles_V3_NicknameParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var minLength: Data = Data()

  var maxLength: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// DTagParams defines the parameters related to profile DTags
struct Desmos_Profiles_V3_DTagParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var regEx: String = String()

  var minLength: Data = Data()

  var maxLength: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// BioParams defines the parameters related to profile biography
struct Desmos_Profiles_V3_BioParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var maxLength: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// OracleParams defines the parameters related to the oracle
/// that will be used to verify the ownership of a centralized
/// application account by a Desmos profile
struct Desmos_Profiles_V3_OracleParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// ScriptID represents the ID of the oracle script to be called to verify the
  /// data
  var scriptID: UInt64 = 0

  /// AskCount represents the number of oracles to which ask to verify the data
  var askCount: UInt64 = 0

  /// MinCount represents the minimum count of oracles that should complete the
  /// verification successfully
  var minCount: UInt64 = 0

  /// PrepareGas represents the amount of gas to be used during the preparation
  /// stage of the oracle script
  var prepareGas: UInt64 = 0

  /// ExecuteGas represents the amount of gas to be used during the execution of
  /// the oracle script
  var executeGas: UInt64 = 0

  /// FeeAmount represents the amount of fees to be payed in order to execute the
  /// oracle script
  var feeAmount: [Cosmos_Base_V1beta1_Coin] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// AppLinksParams define the parameters related to the app links
struct Desmos_Profiles_V3_AppLinksParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Default validity duration before an application link expires
  var validityDuration: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _validityDuration ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_validityDuration = newValue}
  }
  /// Returns true if `validityDuration` has been explicitly set.
  var hasValidityDuration: Bool {return self._validityDuration != nil}
  /// Clears the value of `validityDuration`. Subsequent reads from it will return its default value.
  mutating func clearValidityDuration() {self._validityDuration = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _validityDuration: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "desmos.profiles.v3"

extension Desmos_Profiles_V3_Params: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Params"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "nickname"),
    2: .same(proto: "dtag"),
    3: .same(proto: "bio"),
    4: .same(proto: "oracle"),
    5: .standard(proto: "app_links"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._nickname) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._dtag) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._bio) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._oracle) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._appLinks) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._nickname {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._dtag {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._bio {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._oracle {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._appLinks {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_Params, rhs: Desmos_Profiles_V3_Params) -> Bool {
    if lhs._nickname != rhs._nickname {return false}
    if lhs._dtag != rhs._dtag {return false}
    if lhs._bio != rhs._bio {return false}
    if lhs._oracle != rhs._oracle {return false}
    if lhs._appLinks != rhs._appLinks {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Desmos_Profiles_V3_NicknameParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".NicknameParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "min_length"),
    2: .standard(proto: "max_length"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.minLength) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.maxLength) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.minLength.isEmpty {
      try visitor.visitSingularBytesField(value: self.minLength, fieldNumber: 1)
    }
    if !self.maxLength.isEmpty {
      try visitor.visitSingularBytesField(value: self.maxLength, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_NicknameParams, rhs: Desmos_Profiles_V3_NicknameParams) -> Bool {
    if lhs.minLength != rhs.minLength {return false}
    if lhs.maxLength != rhs.maxLength {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Desmos_Profiles_V3_DTagParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DTagParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "reg_ex"),
    2: .standard(proto: "min_length"),
    3: .standard(proto: "max_length"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.regEx) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.minLength) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.maxLength) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.regEx.isEmpty {
      try visitor.visitSingularStringField(value: self.regEx, fieldNumber: 1)
    }
    if !self.minLength.isEmpty {
      try visitor.visitSingularBytesField(value: self.minLength, fieldNumber: 2)
    }
    if !self.maxLength.isEmpty {
      try visitor.visitSingularBytesField(value: self.maxLength, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_DTagParams, rhs: Desmos_Profiles_V3_DTagParams) -> Bool {
    if lhs.regEx != rhs.regEx {return false}
    if lhs.minLength != rhs.minLength {return false}
    if lhs.maxLength != rhs.maxLength {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Desmos_Profiles_V3_BioParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BioParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    3: .standard(proto: "max_length"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 3: try { try decoder.decodeSingularBytesField(value: &self.maxLength) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.maxLength.isEmpty {
      try visitor.visitSingularBytesField(value: self.maxLength, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_BioParams, rhs: Desmos_Profiles_V3_BioParams) -> Bool {
    if lhs.maxLength != rhs.maxLength {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Desmos_Profiles_V3_OracleParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".OracleParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "script_id"),
    2: .standard(proto: "ask_count"),
    3: .standard(proto: "min_count"),
    4: .standard(proto: "prepare_gas"),
    5: .standard(proto: "execute_gas"),
    6: .standard(proto: "fee_amount"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.scriptID) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.askCount) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.minCount) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.prepareGas) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.executeGas) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.feeAmount) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.scriptID != 0 {
      try visitor.visitSingularUInt64Field(value: self.scriptID, fieldNumber: 1)
    }
    if self.askCount != 0 {
      try visitor.visitSingularUInt64Field(value: self.askCount, fieldNumber: 2)
    }
    if self.minCount != 0 {
      try visitor.visitSingularUInt64Field(value: self.minCount, fieldNumber: 3)
    }
    if self.prepareGas != 0 {
      try visitor.visitSingularUInt64Field(value: self.prepareGas, fieldNumber: 4)
    }
    if self.executeGas != 0 {
      try visitor.visitSingularUInt64Field(value: self.executeGas, fieldNumber: 5)
    }
    if !self.feeAmount.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.feeAmount, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_OracleParams, rhs: Desmos_Profiles_V3_OracleParams) -> Bool {
    if lhs.scriptID != rhs.scriptID {return false}
    if lhs.askCount != rhs.askCount {return false}
    if lhs.minCount != rhs.minCount {return false}
    if lhs.prepareGas != rhs.prepareGas {return false}
    if lhs.executeGas != rhs.executeGas {return false}
    if lhs.feeAmount != rhs.feeAmount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Desmos_Profiles_V3_AppLinksParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AppLinksParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "validity_duration"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._validityDuration) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._validityDuration {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_AppLinksParams, rhs: Desmos_Profiles_V3_AppLinksParams) -> Bool {
    if lhs._validityDuration != rhs._validityDuration {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
