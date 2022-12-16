// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: desmos/profiles/v3/models_packets.proto
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

/// LinkChainAccountPacketData defines the object that should be sent inside a
/// MsgSendPacket when wanting to link an external chain to a Desmos profile
/// using IBC
struct Desmos_Profiles_V3_LinkChainAccountPacketData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// SourceAddress contains the details of the external chain address
  var sourceAddress: Google_Protobuf2_Any {
    get {return _sourceAddress ?? Google_Protobuf2_Any()}
    set {_sourceAddress = newValue}
  }
  /// Returns true if `sourceAddress` has been explicitly set.
  var hasSourceAddress: Bool {return self._sourceAddress != nil}
  /// Clears the value of `sourceAddress`. Subsequent reads from it will return its default value.
  mutating func clearSourceAddress() {self._sourceAddress = nil}

  /// SourceProof represents the proof of ownership of the source address
  var sourceProof: Desmos_Profiles_V3_Proof {
    get {return _sourceProof ?? Desmos_Profiles_V3_Proof()}
    set {_sourceProof = newValue}
  }
  /// Returns true if `sourceProof` has been explicitly set.
  var hasSourceProof: Bool {return self._sourceProof != nil}
  /// Clears the value of `sourceProof`. Subsequent reads from it will return its default value.
  mutating func clearSourceProof() {self._sourceProof = nil}

  /// SourceChainConfig contains the details of the source chain
  var sourceChainConfig: Desmos_Profiles_V3_ChainConfig {
    get {return _sourceChainConfig ?? Desmos_Profiles_V3_ChainConfig()}
    set {_sourceChainConfig = newValue}
  }
  /// Returns true if `sourceChainConfig` has been explicitly set.
  var hasSourceChainConfig: Bool {return self._sourceChainConfig != nil}
  /// Clears the value of `sourceChainConfig`. Subsequent reads from it will return its default value.
  mutating func clearSourceChainConfig() {self._sourceChainConfig = nil}

  /// DestinationAddress represents the Desmos address of the profile that should
  /// be linked with the external account
  var destinationAddress: String = String()

  /// DestinationProof contains the proof of ownership of the DestinationAddress
  var destinationProof: Desmos_Profiles_V3_Proof {
    get {return _destinationProof ?? Desmos_Profiles_V3_Proof()}
    set {_destinationProof = newValue}
  }
  /// Returns true if `destinationProof` has been explicitly set.
  var hasDestinationProof: Bool {return self._destinationProof != nil}
  /// Clears the value of `destinationProof`. Subsequent reads from it will return its default value.
  mutating func clearDestinationProof() {self._destinationProof = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _sourceAddress: Google_Protobuf2_Any? = nil
  fileprivate var _sourceProof: Desmos_Profiles_V3_Proof? = nil
  fileprivate var _sourceChainConfig: Desmos_Profiles_V3_ChainConfig? = nil
  fileprivate var _destinationProof: Desmos_Profiles_V3_Proof? = nil
}

/// LinkChainAccountPacketAck defines a struct for the packet acknowledgment
struct Desmos_Profiles_V3_LinkChainAccountPacketAck {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// SourceAddress contains the external address that has been linked properly
  /// with the profile
  var sourceAddress: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "desmos.profiles.v3"

extension Desmos_Profiles_V3_LinkChainAccountPacketData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".LinkChainAccountPacketData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "source_address"),
    2: .standard(proto: "source_proof"),
    3: .standard(proto: "source_chain_config"),
    4: .standard(proto: "destination_address"),
    5: .standard(proto: "destination_proof"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._sourceAddress) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._sourceProof) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._sourceChainConfig) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.destinationAddress) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._destinationProof) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._sourceAddress {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._sourceProof {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._sourceChainConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.destinationAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.destinationAddress, fieldNumber: 4)
    }
    if let v = self._destinationProof {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_LinkChainAccountPacketData, rhs: Desmos_Profiles_V3_LinkChainAccountPacketData) -> Bool {
    if lhs._sourceAddress != rhs._sourceAddress {return false}
    if lhs._sourceProof != rhs._sourceProof {return false}
    if lhs._sourceChainConfig != rhs._sourceChainConfig {return false}
    if lhs.destinationAddress != rhs.destinationAddress {return false}
    if lhs._destinationProof != rhs._destinationProof {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Desmos_Profiles_V3_LinkChainAccountPacketAck: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".LinkChainAccountPacketAck"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "source_address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.sourceAddress) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.sourceAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.sourceAddress, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_LinkChainAccountPacketAck, rhs: Desmos_Profiles_V3_LinkChainAccountPacketAck) -> Bool {
    if lhs.sourceAddress != rhs.sourceAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
