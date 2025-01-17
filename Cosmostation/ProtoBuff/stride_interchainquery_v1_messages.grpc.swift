//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: stride/interchainquery/v1/messages.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Msg defines the interchainquery Msg service.
///
/// Usage: instantiate `Stride_Interchainquery_V1_MsgClient`, then call methods of this protocol to make API calls.
internal protocol Stride_Interchainquery_V1_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Stride_Interchainquery_V1_MsgClientInterceptorFactoryProtocol? { get }

  func submitQueryResponse(
    _ request: Stride_Interchainquery_V1_MsgSubmitQueryResponse,
    callOptions: CallOptions?
  ) -> UnaryCall<Stride_Interchainquery_V1_MsgSubmitQueryResponse, Stride_Interchainquery_V1_MsgSubmitQueryResponseResponse>
}

extension Stride_Interchainquery_V1_MsgClientProtocol {
  internal var serviceName: String {
    return "stride.interchainquery.v1.Msg"
  }

  /// SubmitQueryResponse defines a method for submit query responses.
  ///
  /// - Parameters:
  ///   - request: Request to send to SubmitQueryResponse.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func submitQueryResponse(
    _ request: Stride_Interchainquery_V1_MsgSubmitQueryResponse,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Stride_Interchainquery_V1_MsgSubmitQueryResponse, Stride_Interchainquery_V1_MsgSubmitQueryResponseResponse> {
    return self.makeUnaryCall(
      path: "/stride.interchainquery.v1.Msg/SubmitQueryResponse",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSubmitQueryResponseInterceptors() ?? []
    )
  }
}

internal protocol Stride_Interchainquery_V1_MsgClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'submitQueryResponse'.
  func makeSubmitQueryResponseInterceptors() -> [ClientInterceptor<Stride_Interchainquery_V1_MsgSubmitQueryResponse, Stride_Interchainquery_V1_MsgSubmitQueryResponseResponse>]
}

internal final class Stride_Interchainquery_V1_MsgClient: Stride_Interchainquery_V1_MsgClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Stride_Interchainquery_V1_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the stride.interchainquery.v1.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Stride_Interchainquery_V1_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Msg defines the interchainquery Msg service.
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol Stride_Interchainquery_V1_MsgProvider: CallHandlerProvider {
  var interceptors: Stride_Interchainquery_V1_MsgServerInterceptorFactoryProtocol? { get }

  /// SubmitQueryResponse defines a method for submit query responses.
  func submitQueryResponse(request: Stride_Interchainquery_V1_MsgSubmitQueryResponse, context: StatusOnlyCallContext) -> EventLoopFuture<Stride_Interchainquery_V1_MsgSubmitQueryResponseResponse>
}

extension Stride_Interchainquery_V1_MsgProvider {
  internal var serviceName: Substring { return "stride.interchainquery.v1.Msg" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "SubmitQueryResponse":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Stride_Interchainquery_V1_MsgSubmitQueryResponse>(),
        responseSerializer: ProtobufSerializer<Stride_Interchainquery_V1_MsgSubmitQueryResponseResponse>(),
        interceptors: self.interceptors?.makeSubmitQueryResponseInterceptors() ?? [],
        userFunction: self.submitQueryResponse(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Stride_Interchainquery_V1_MsgServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'submitQueryResponse'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSubmitQueryResponseInterceptors() -> [ServerInterceptor<Stride_Interchainquery_V1_MsgSubmitQueryResponse, Stride_Interchainquery_V1_MsgSubmitQueryResponseResponse>]
}
