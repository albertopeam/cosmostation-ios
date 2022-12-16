// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: desmos/profiles/v3/msgs_app_links.proto
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

/// MsgLinkApplication defines a msg to connect a profile with a
/// centralized application account (eg. Twitter, GitHub, etc).
struct Desmos_Profiles_V3_MsgLinkApplication {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The sender of the connection request
  var sender: String = String()

  /// LinkData contains the data related to the application to which connect
  var linkData: Desmos_Profiles_V3_Data {
    get {return _linkData ?? Desmos_Profiles_V3_Data()}
    set {_linkData = newValue}
  }
  /// Returns true if `linkData` has been explicitly set.
  var hasLinkData: Bool {return self._linkData != nil}
  /// Clears the value of `linkData`. Subsequent reads from it will return its default value.
  mutating func clearLinkData() {self._linkData = nil}

  /// Hex encoded call data that will be sent to the data source in order to
  /// verify the link
  var callData: String = String()

  /// The port on which the packet will be sent
  var sourcePort: String = String()

  /// The channel by which the packet will be sent
  var sourceChannel: String = String()

  /// Timeout height relative to the current block height.
  /// The timeout is disabled when set to 0.
  var timeoutHeight: Ibc_Core_Client_V1_Height {
    get {return _timeoutHeight ?? Ibc_Core_Client_V1_Height()}
    set {_timeoutHeight = newValue}
  }
  /// Returns true if `timeoutHeight` has been explicitly set.
  var hasTimeoutHeight: Bool {return self._timeoutHeight != nil}
  /// Clears the value of `timeoutHeight`. Subsequent reads from it will return its default value.
  mutating func clearTimeoutHeight() {self._timeoutHeight = nil}

  /// Timeout timestamp (in nanoseconds) relative to the current block timestamp.
  /// The timeout is disabled when set to 0.
  var timeoutTimestamp: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _linkData: Desmos_Profiles_V3_Data? = nil
  fileprivate var _timeoutHeight: Ibc_Core_Client_V1_Height? = nil
}

/// MsgLinkApplicationResponse defines the Msg/LinkApplication
/// response type.
struct Desmos_Profiles_V3_MsgLinkApplicationResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgUnlinkApplication defines a msg to delete an application link from a user
/// profile
struct Desmos_Profiles_V3_MsgUnlinkApplication {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Application represents the name of the application to unlink
  var application: String = String()

  /// Username represents the username inside the application to unlink
  var username: String = String()

  /// Signer represents the Desmos account to which the application should be
  /// unlinked
  var signer: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// MsgUnlinkApplicationResponse defines the Msg/UnlinkApplication response
/// type.
struct Desmos_Profiles_V3_MsgUnlinkApplicationResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "desmos.profiles.v3"

extension Desmos_Profiles_V3_MsgLinkApplication: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgLinkApplication"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sender"),
    2: .standard(proto: "link_data"),
    3: .standard(proto: "call_data"),
    4: .standard(proto: "source_port"),
    5: .standard(proto: "source_channel"),
    6: .standard(proto: "timeout_height"),
    7: .standard(proto: "timeout_timestamp"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sender) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._linkData) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.callData) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.sourcePort) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.sourceChannel) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._timeoutHeight) }()
      case 7: try { try decoder.decodeSingularUInt64Field(value: &self.timeoutTimestamp) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sender.isEmpty {
      try visitor.visitSingularStringField(value: self.sender, fieldNumber: 1)
    }
    if let v = self._linkData {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.callData.isEmpty {
      try visitor.visitSingularStringField(value: self.callData, fieldNumber: 3)
    }
    if !self.sourcePort.isEmpty {
      try visitor.visitSingularStringField(value: self.sourcePort, fieldNumber: 4)
    }
    if !self.sourceChannel.isEmpty {
      try visitor.visitSingularStringField(value: self.sourceChannel, fieldNumber: 5)
    }
    if let v = self._timeoutHeight {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if self.timeoutTimestamp != 0 {
      try visitor.visitSingularUInt64Field(value: self.timeoutTimestamp, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_MsgLinkApplication, rhs: Desmos_Profiles_V3_MsgLinkApplication) -> Bool {
    if lhs.sender != rhs.sender {return false}
    if lhs._linkData != rhs._linkData {return false}
    if lhs.callData != rhs.callData {return false}
    if lhs.sourcePort != rhs.sourcePort {return false}
    if lhs.sourceChannel != rhs.sourceChannel {return false}
    if lhs._timeoutHeight != rhs._timeoutHeight {return false}
    if lhs.timeoutTimestamp != rhs.timeoutTimestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Desmos_Profiles_V3_MsgLinkApplicationResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgLinkApplicationResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_MsgLinkApplicationResponse, rhs: Desmos_Profiles_V3_MsgLinkApplicationResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Desmos_Profiles_V3_MsgUnlinkApplication: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgUnlinkApplication"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "application"),
    2: .same(proto: "username"),
    3: .same(proto: "signer"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.application) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.username) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.signer) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.application.isEmpty {
      try visitor.visitSingularStringField(value: self.application, fieldNumber: 1)
    }
    if !self.username.isEmpty {
      try visitor.visitSingularStringField(value: self.username, fieldNumber: 2)
    }
    if !self.signer.isEmpty {
      try visitor.visitSingularStringField(value: self.signer, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_MsgUnlinkApplication, rhs: Desmos_Profiles_V3_MsgUnlinkApplication) -> Bool {
    if lhs.application != rhs.application {return false}
    if lhs.username != rhs.username {return false}
    if lhs.signer != rhs.signer {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Desmos_Profiles_V3_MsgUnlinkApplicationResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgUnlinkApplicationResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_MsgUnlinkApplicationResponse, rhs: Desmos_Profiles_V3_MsgUnlinkApplicationResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
