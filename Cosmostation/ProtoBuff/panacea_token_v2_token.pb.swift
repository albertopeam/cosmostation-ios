// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: panacea/token/v2/token.proto
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

/// Token defines a token.
struct Panacea_Token_V2_Token {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String = String()

  var symbol: String = String()

  var totalSupply: Cosmos_Base_V1beta1_Coin {
    get {return _totalSupply ?? Cosmos_Base_V1beta1_Coin()}
    set {_totalSupply = newValue}
  }
  /// Returns true if `totalSupply` has been explicitly set.
  var hasTotalSupply: Bool {return self._totalSupply != nil}
  /// Clears the value of `totalSupply`. Subsequent reads from it will return its default value.
  mutating func clearTotalSupply() {self._totalSupply = nil}

  var mintable: Bool = false

  var ownerAddress: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _totalSupply: Cosmos_Base_V1beta1_Coin? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "panacea.token.v2"

extension Panacea_Token_V2_Token: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Token"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "symbol"),
    3: .standard(proto: "total_supply"),
    4: .same(proto: "mintable"),
    5: .standard(proto: "owner_address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.symbol)
      case 3: try decoder.decodeSingularMessageField(value: &self._totalSupply)
      case 4: try decoder.decodeSingularBoolField(value: &self.mintable)
      case 5: try decoder.decodeSingularStringField(value: &self.ownerAddress)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.symbol.isEmpty {
      try visitor.visitSingularStringField(value: self.symbol, fieldNumber: 2)
    }
    if let v = self._totalSupply {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.mintable != false {
      try visitor.visitSingularBoolField(value: self.mintable, fieldNumber: 4)
    }
    if !self.ownerAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.ownerAddress, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Panacea_Token_V2_Token, rhs: Panacea_Token_V2_Token) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.symbol != rhs.symbol {return false}
    if lhs._totalSupply != rhs._totalSupply {return false}
    if lhs.mintable != rhs.mintable {return false}
    if lhs.ownerAddress != rhs.ownerAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}