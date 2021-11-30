// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: umee/leverage/v1beta1/query.proto
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

/// QueryRegisteredTokens defines the request structure for the RegisteredTokens
/// gRPC service handler.
struct Umeenetwork_Umee_Leverage_V1beta1_QueryRegisteredTokens {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// QueryRegisteredTokensResponse defines the response structure for the
/// RegisteredTokens gRPC service handler.
struct Umeenetwork_Umee_Leverage_V1beta1_QueryRegisteredTokensResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var registry: [Umeenetwork_Umee_Leverage_V1beta1_Token] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// QueryParamsRequest defines the request structure for the Params gRPC service
/// handler.
struct Umeenetwork_Umee_Leverage_V1beta1_QueryParamsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// QueryParamsResponse defines the response structure for the Params gRPC
/// service handler.
struct Umeenetwork_Umee_Leverage_V1beta1_QueryParamsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var params: Umeenetwork_Umee_Leverage_V1beta1_Params {
    get {return _params ?? Umeenetwork_Umee_Leverage_V1beta1_Params()}
    set {_params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  var hasParams: Bool {return self._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  mutating func clearParams() {self._params = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _params: Umeenetwork_Umee_Leverage_V1beta1_Params? = nil
}

/// QueryBorrowedRequest defines the request structure for the Borrowed gRPC
/// service handler.
struct Umeenetwork_Umee_Leverage_V1beta1_QueryBorrowedRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var address: String = String()

  var denom: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// QueryBorrowedResponse defines the response structure for the Borrowed gRPC
/// service handler.
struct Umeenetwork_Umee_Leverage_V1beta1_QueryBorrowedResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var borrowed: [Cosmos_Base_V1beta1_Coin] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// QueryReserveAmountRequest defines the request structure for the ReserveAmount
/// gRPC service handler.
struct Umeenetwork_Umee_Leverage_V1beta1_QueryReserveAmountRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var denom: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// QueryReserveAmountResponse defines the response structure for the ReserveAmount
/// gRPC service handler.
struct Umeenetwork_Umee_Leverage_V1beta1_QueryReserveAmountResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var amount: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "umeenetwork.umee.leverage.v1beta1"

extension Umeenetwork_Umee_Leverage_V1beta1_QueryRegisteredTokens: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryRegisteredTokens"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Leverage_V1beta1_QueryRegisteredTokens, rhs: Umeenetwork_Umee_Leverage_V1beta1_QueryRegisteredTokens) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Umeenetwork_Umee_Leverage_V1beta1_QueryRegisteredTokensResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryRegisteredTokensResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "registry"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.registry) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.registry.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.registry, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Leverage_V1beta1_QueryRegisteredTokensResponse, rhs: Umeenetwork_Umee_Leverage_V1beta1_QueryRegisteredTokensResponse) -> Bool {
    if lhs.registry != rhs.registry {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Umeenetwork_Umee_Leverage_V1beta1_QueryParamsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryParamsRequest"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Leverage_V1beta1_QueryParamsRequest, rhs: Umeenetwork_Umee_Leverage_V1beta1_QueryParamsRequest) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Umeenetwork_Umee_Leverage_V1beta1_QueryParamsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryParamsResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "params"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._params) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._params {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Leverage_V1beta1_QueryParamsResponse, rhs: Umeenetwork_Umee_Leverage_V1beta1_QueryParamsResponse) -> Bool {
    if lhs._params != rhs._params {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Umeenetwork_Umee_Leverage_V1beta1_QueryBorrowedRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryBorrowedRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .same(proto: "denom"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 1)
    }
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Leverage_V1beta1_QueryBorrowedRequest, rhs: Umeenetwork_Umee_Leverage_V1beta1_QueryBorrowedRequest) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.denom != rhs.denom {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Umeenetwork_Umee_Leverage_V1beta1_QueryBorrowedResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryBorrowedResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "borrowed"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.borrowed) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.borrowed.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.borrowed, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Leverage_V1beta1_QueryBorrowedResponse, rhs: Umeenetwork_Umee_Leverage_V1beta1_QueryBorrowedResponse) -> Bool {
    if lhs.borrowed != rhs.borrowed {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Umeenetwork_Umee_Leverage_V1beta1_QueryReserveAmountRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryReserveAmountRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "denom"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.denom) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Leverage_V1beta1_QueryReserveAmountRequest, rhs: Umeenetwork_Umee_Leverage_V1beta1_QueryReserveAmountRequest) -> Bool {
    if lhs.denom != rhs.denom {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Umeenetwork_Umee_Leverage_V1beta1_QueryReserveAmountResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".QueryReserveAmountResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.amount) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.amount.isEmpty {
      try visitor.visitSingularStringField(value: self.amount, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Umeenetwork_Umee_Leverage_V1beta1_QueryReserveAmountResponse, rhs: Umeenetwork_Umee_Leverage_V1beta1_QueryReserveAmountResponse) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}