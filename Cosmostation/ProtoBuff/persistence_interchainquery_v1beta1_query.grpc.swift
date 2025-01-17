//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: persistence/interchainquery/v1beta1/query.proto
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


/// Query provides defines the gRPC querier service.
///
/// Usage: instantiate `Persistence_Interchainquery_V1beta1_QuerySrvrClient`, then call methods of this protocol to make API calls.
internal protocol Persistence_Interchainquery_V1beta1_QuerySrvrClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Persistence_Interchainquery_V1beta1_QuerySrvrClientInterceptorFactoryProtocol? { get }

  func queries(
    _ request: Persistence_Interchainquery_V1beta1_QueryRequestsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Persistence_Interchainquery_V1beta1_QueryRequestsRequest, Persistence_Interchainquery_V1beta1_QueryRequestsResponse>
}

extension Persistence_Interchainquery_V1beta1_QuerySrvrClientProtocol {
  internal var serviceName: String {
    return "persistence.interchainquery.v1beta1.QuerySrvr"
  }

  /// Params returns the total set of minting parameters.
  ///
  /// - Parameters:
  ///   - request: Request to send to Queries.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func queries(
    _ request: Persistence_Interchainquery_V1beta1_QueryRequestsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Persistence_Interchainquery_V1beta1_QueryRequestsRequest, Persistence_Interchainquery_V1beta1_QueryRequestsResponse> {
    return self.makeUnaryCall(
      path: "/persistence.interchainquery.v1beta1.QuerySrvr/Queries",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeQueriesInterceptors() ?? []
    )
  }
}

internal protocol Persistence_Interchainquery_V1beta1_QuerySrvrClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'queries'.
  func makeQueriesInterceptors() -> [ClientInterceptor<Persistence_Interchainquery_V1beta1_QueryRequestsRequest, Persistence_Interchainquery_V1beta1_QueryRequestsResponse>]
}

internal final class Persistence_Interchainquery_V1beta1_QuerySrvrClient: Persistence_Interchainquery_V1beta1_QuerySrvrClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Persistence_Interchainquery_V1beta1_QuerySrvrClientInterceptorFactoryProtocol?

  /// Creates a client for the persistence.interchainquery.v1beta1.QuerySrvr service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Persistence_Interchainquery_V1beta1_QuerySrvrClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Query provides defines the gRPC querier service.
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol Persistence_Interchainquery_V1beta1_QuerySrvrProvider: CallHandlerProvider {
  var interceptors: Persistence_Interchainquery_V1beta1_QuerySrvrServerInterceptorFactoryProtocol? { get }

  /// Params returns the total set of minting parameters.
  func queries(request: Persistence_Interchainquery_V1beta1_QueryRequestsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Persistence_Interchainquery_V1beta1_QueryRequestsResponse>
}

extension Persistence_Interchainquery_V1beta1_QuerySrvrProvider {
  internal var serviceName: Substring { return "persistence.interchainquery.v1beta1.QuerySrvr" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "Queries":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Persistence_Interchainquery_V1beta1_QueryRequestsRequest>(),
        responseSerializer: ProtobufSerializer<Persistence_Interchainquery_V1beta1_QueryRequestsResponse>(),
        interceptors: self.interceptors?.makeQueriesInterceptors() ?? [],
        userFunction: self.queries(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Persistence_Interchainquery_V1beta1_QuerySrvrServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'queries'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeQueriesInterceptors() -> [ServerInterceptor<Persistence_Interchainquery_V1beta1_QueryRequestsRequest, Persistence_Interchainquery_V1beta1_QueryRequestsResponse>]
}
