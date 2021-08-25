// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: sifnode/dispensation/v1/tx.proto
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

struct Sifnode_Dispensation_V1_MsgCreateDistribution {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var distributor: String = String()

  var authorizedRunner: String = String()

  var distributionType: Sifnode_Dispensation_V1_DistributionType = .unspecified

  var output: [String] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Sifnode_Dispensation_V1_MsgCreateDistributionResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Sifnode_Dispensation_V1_MsgCreateClaimResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Sifnode_Dispensation_V1_MsgRunDistributionResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Sifnode_Dispensation_V1_MsgCreateUserClaim {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var userClaimAddress: String = String()

  var userClaimType: Sifnode_Dispensation_V1_DistributionType = .unspecified

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Sifnode_Dispensation_V1_MsgRunDistribution {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var authorizedRunner: String = String()

  var distributionName: String = String()

  var distributionType: Sifnode_Dispensation_V1_DistributionType = .unspecified

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "sifnode.dispensation.v1"

extension Sifnode_Dispensation_V1_MsgCreateDistribution: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgCreateDistribution"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "distributor"),
    2: .standard(proto: "authorized_runner"),
    3: .standard(proto: "distribution_type"),
    4: .same(proto: "output"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.distributor)
      case 2: try decoder.decodeSingularStringField(value: &self.authorizedRunner)
      case 3: try decoder.decodeSingularEnumField(value: &self.distributionType)
      case 4: try decoder.decodeRepeatedStringField(value: &self.output)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.distributor.isEmpty {
      try visitor.visitSingularStringField(value: self.distributor, fieldNumber: 1)
    }
    if !self.authorizedRunner.isEmpty {
      try visitor.visitSingularStringField(value: self.authorizedRunner, fieldNumber: 2)
    }
    if self.distributionType != .unspecified {
      try visitor.visitSingularEnumField(value: self.distributionType, fieldNumber: 3)
    }
    if !self.output.isEmpty {
      try visitor.visitRepeatedStringField(value: self.output, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Sifnode_Dispensation_V1_MsgCreateDistribution, rhs: Sifnode_Dispensation_V1_MsgCreateDistribution) -> Bool {
    if lhs.distributor != rhs.distributor {return false}
    if lhs.authorizedRunner != rhs.authorizedRunner {return false}
    if lhs.distributionType != rhs.distributionType {return false}
    if lhs.output != rhs.output {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sifnode_Dispensation_V1_MsgCreateDistributionResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgCreateDistributionResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Sifnode_Dispensation_V1_MsgCreateDistributionResponse, rhs: Sifnode_Dispensation_V1_MsgCreateDistributionResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sifnode_Dispensation_V1_MsgCreateClaimResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgCreateClaimResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Sifnode_Dispensation_V1_MsgCreateClaimResponse, rhs: Sifnode_Dispensation_V1_MsgCreateClaimResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sifnode_Dispensation_V1_MsgRunDistributionResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgRunDistributionResponse"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Sifnode_Dispensation_V1_MsgRunDistributionResponse, rhs: Sifnode_Dispensation_V1_MsgRunDistributionResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sifnode_Dispensation_V1_MsgCreateUserClaim: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgCreateUserClaim"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_claim_address"),
    2: .standard(proto: "user_claim_type"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.userClaimAddress)
      case 2: try decoder.decodeSingularEnumField(value: &self.userClaimType)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userClaimAddress.isEmpty {
      try visitor.visitSingularStringField(value: self.userClaimAddress, fieldNumber: 1)
    }
    if self.userClaimType != .unspecified {
      try visitor.visitSingularEnumField(value: self.userClaimType, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Sifnode_Dispensation_V1_MsgCreateUserClaim, rhs: Sifnode_Dispensation_V1_MsgCreateUserClaim) -> Bool {
    if lhs.userClaimAddress != rhs.userClaimAddress {return false}
    if lhs.userClaimType != rhs.userClaimType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Sifnode_Dispensation_V1_MsgRunDistribution: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgRunDistribution"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "authorized_runner"),
    2: .standard(proto: "distribution_name"),
    3: .standard(proto: "distribution_type"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.authorizedRunner)
      case 2: try decoder.decodeSingularStringField(value: &self.distributionName)
      case 3: try decoder.decodeSingularEnumField(value: &self.distributionType)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.authorizedRunner.isEmpty {
      try visitor.visitSingularStringField(value: self.authorizedRunner, fieldNumber: 1)
    }
    if !self.distributionName.isEmpty {
      try visitor.visitSingularStringField(value: self.distributionName, fieldNumber: 2)
    }
    if self.distributionType != .unspecified {
      try visitor.visitSingularEnumField(value: self.distributionType, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Sifnode_Dispensation_V1_MsgRunDistribution, rhs: Sifnode_Dispensation_V1_MsgRunDistribution) -> Bool {
    if lhs.authorizedRunner != rhs.authorizedRunner {return false}
    if lhs.distributionName != rhs.distributionName {return false}
    if lhs.distributionType != rhs.distributionType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}