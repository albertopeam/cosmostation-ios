// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: axelar/reward/v1beta1/params.proto
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

/// Params represent the genesis parameters for the module
struct Axelar_Reward_V1beta1_Params {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var externalChainVotingInflationRate: Data = Data()

  var tssRelativeInflationRate: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "axelar.reward.v1beta1"

extension Axelar_Reward_V1beta1_Params: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Params"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "external_chain_voting_inflation_rate"),
    2: .standard(proto: "tss_relative_inflation_rate"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.externalChainVotingInflationRate) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.tssRelativeInflationRate) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.externalChainVotingInflationRate.isEmpty {
      try visitor.visitSingularBytesField(value: self.externalChainVotingInflationRate, fieldNumber: 1)
    }
    if !self.tssRelativeInflationRate.isEmpty {
      try visitor.visitSingularBytesField(value: self.tssRelativeInflationRate, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Axelar_Reward_V1beta1_Params, rhs: Axelar_Reward_V1beta1_Params) -> Bool {
    if lhs.externalChainVotingInflationRate != rhs.externalChainVotingInflationRate {return false}
    if lhs.tssRelativeInflationRate != rhs.tssRelativeInflationRate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}