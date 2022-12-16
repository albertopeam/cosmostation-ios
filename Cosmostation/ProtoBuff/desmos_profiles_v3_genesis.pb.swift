// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: desmos/profiles/v3/genesis.proto
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

/// GenesisState defines the profiles module's genesis state.
struct Desmos_Profiles_V3_GenesisState {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var dtagTransferRequests: [Desmos_Profiles_V3_DTagTransferRequest] {
    get {return _storage._dtagTransferRequests}
    set {_uniqueStorage()._dtagTransferRequests = newValue}
  }

  var chainLinks: [Desmos_Profiles_V3_ChainLink] {
    get {return _storage._chainLinks}
    set {_uniqueStorage()._chainLinks = newValue}
  }

  var applicationLinks: [Desmos_Profiles_V3_ApplicationLink] {
    get {return _storage._applicationLinks}
    set {_uniqueStorage()._applicationLinks = newValue}
  }

  var defaultExternalAddresses: [Desmos_Profiles_V3_DefaultExternalAddressEntry] {
    get {return _storage._defaultExternalAddresses}
    set {_uniqueStorage()._defaultExternalAddresses = newValue}
  }

  var ibcPortID: String {
    get {return _storage._ibcPortID}
    set {_uniqueStorage()._ibcPortID = newValue}
  }

  var params: Desmos_Profiles_V3_Params {
    get {return _storage._params ?? Desmos_Profiles_V3_Params()}
    set {_uniqueStorage()._params = newValue}
  }
  /// Returns true if `params` has been explicitly set.
  var hasParams: Bool {return _storage._params != nil}
  /// Clears the value of `params`. Subsequent reads from it will return its default value.
  mutating func clearParams() {_uniqueStorage()._params = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// DefaultExternalAddressEntry contains the data of a default extnernal address
struct Desmos_Profiles_V3_DefaultExternalAddressEntry {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var owner: String = String()

  var chainName: String = String()

  var target: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "desmos.profiles.v3"

extension Desmos_Profiles_V3_GenesisState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GenesisState"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "dtag_transfer_requests"),
    2: .standard(proto: "chain_links"),
    3: .standard(proto: "application_links"),
    4: .standard(proto: "default_external_addresses"),
    5: .standard(proto: "ibc_port_id"),
    6: .same(proto: "params"),
  ]

  fileprivate class _StorageClass {
    var _dtagTransferRequests: [Desmos_Profiles_V3_DTagTransferRequest] = []
    var _chainLinks: [Desmos_Profiles_V3_ChainLink] = []
    var _applicationLinks: [Desmos_Profiles_V3_ApplicationLink] = []
    var _defaultExternalAddresses: [Desmos_Profiles_V3_DefaultExternalAddressEntry] = []
    var _ibcPortID: String = String()
    var _params: Desmos_Profiles_V3_Params? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _dtagTransferRequests = source._dtagTransferRequests
      _chainLinks = source._chainLinks
      _applicationLinks = source._applicationLinks
      _defaultExternalAddresses = source._defaultExternalAddresses
      _ibcPortID = source._ibcPortID
      _params = source._params
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeRepeatedMessageField(value: &_storage._dtagTransferRequests) }()
        case 2: try { try decoder.decodeRepeatedMessageField(value: &_storage._chainLinks) }()
        case 3: try { try decoder.decodeRepeatedMessageField(value: &_storage._applicationLinks) }()
        case 4: try { try decoder.decodeRepeatedMessageField(value: &_storage._defaultExternalAddresses) }()
        case 5: try { try decoder.decodeSingularStringField(value: &_storage._ibcPortID) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._params) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._dtagTransferRequests.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._dtagTransferRequests, fieldNumber: 1)
      }
      if !_storage._chainLinks.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._chainLinks, fieldNumber: 2)
      }
      if !_storage._applicationLinks.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._applicationLinks, fieldNumber: 3)
      }
      if !_storage._defaultExternalAddresses.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._defaultExternalAddresses, fieldNumber: 4)
      }
      if !_storage._ibcPortID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._ibcPortID, fieldNumber: 5)
      }
      if let v = _storage._params {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_GenesisState, rhs: Desmos_Profiles_V3_GenesisState) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._dtagTransferRequests != rhs_storage._dtagTransferRequests {return false}
        if _storage._chainLinks != rhs_storage._chainLinks {return false}
        if _storage._applicationLinks != rhs_storage._applicationLinks {return false}
        if _storage._defaultExternalAddresses != rhs_storage._defaultExternalAddresses {return false}
        if _storage._ibcPortID != rhs_storage._ibcPortID {return false}
        if _storage._params != rhs_storage._params {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Desmos_Profiles_V3_DefaultExternalAddressEntry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DefaultExternalAddressEntry"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "owner"),
    2: .standard(proto: "chain_name"),
    3: .same(proto: "target"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.owner) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.chainName) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.target) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.owner.isEmpty {
      try visitor.visitSingularStringField(value: self.owner, fieldNumber: 1)
    }
    if !self.chainName.isEmpty {
      try visitor.visitSingularStringField(value: self.chainName, fieldNumber: 2)
    }
    if !self.target.isEmpty {
      try visitor.visitSingularStringField(value: self.target, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Desmos_Profiles_V3_DefaultExternalAddressEntry, rhs: Desmos_Profiles_V3_DefaultExternalAddressEntry) -> Bool {
    if lhs.owner != rhs.owner {return false}
    if lhs.chainName != rhs.chainName {return false}
    if lhs.target != rhs.target {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
