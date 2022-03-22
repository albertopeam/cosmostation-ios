//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: osmosis/superfluid/tx.proto
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


/// Msg defines the Msg service.
///
/// Usage: instantiate `Osmosis_Superfluid_MsgClient`, then call methods of this protocol to make API calls.
internal protocol Osmosis_Superfluid_MsgClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol? { get }

  func superfluidDelegate(
    _ request: Osmosis_Superfluid_MsgSuperfluidDelegate,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidDelegate, Osmosis_Superfluid_MsgSuperfluidDelegateResponse>

  func superfluidUndelegate(
    _ request: Osmosis_Superfluid_MsgSuperfluidUndelegate,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidUndelegate, Osmosis_Superfluid_MsgSuperfluidUndelegateResponse>

  func superfluidUnbondLock(
    _ request: Osmosis_Superfluid_MsgSuperfluidUnbondLock,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidUnbondLock, Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse>

  func lockAndSuperfluidDelegate(
    _ request: Osmosis_Superfluid_MsgLockAndSuperfluidDelegate,
    callOptions: CallOptions?
  ) -> UnaryCall<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse>
}

extension Osmosis_Superfluid_MsgClientProtocol {
  internal var serviceName: String {
    return "osmosis.superfluid.Msg"
  }

  /// Execute superfluid delegation for a lockup
  ///
  /// - Parameters:
  ///   - request: Request to send to SuperfluidDelegate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func superfluidDelegate(
    _ request: Osmosis_Superfluid_MsgSuperfluidDelegate,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidDelegate, Osmosis_Superfluid_MsgSuperfluidDelegateResponse> {
    return self.makeUnaryCall(
      path: "/osmosis.superfluid.Msg/SuperfluidDelegate",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidDelegateInterceptors() ?? []
    )
  }

  /// Execute superfluid undelegation for a lockup
  ///
  /// - Parameters:
  ///   - request: Request to send to SuperfluidUndelegate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func superfluidUndelegate(
    _ request: Osmosis_Superfluid_MsgSuperfluidUndelegate,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidUndelegate, Osmosis_Superfluid_MsgSuperfluidUndelegateResponse> {
    return self.makeUnaryCall(
      path: "/osmosis.superfluid.Msg/SuperfluidUndelegate",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidUndelegateInterceptors() ?? []
    )
  }

  /// For a given lock that is being superfluidly undelegated,
  /// also unbond the underlying lock.
  ///
  /// - Parameters:
  ///   - request: Request to send to SuperfluidUnbondLock.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func superfluidUnbondLock(
    _ request: Osmosis_Superfluid_MsgSuperfluidUnbondLock,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Superfluid_MsgSuperfluidUnbondLock, Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse> {
    return self.makeUnaryCall(
      path: "/osmosis.superfluid.Msg/SuperfluidUnbondLock",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeSuperfluidUnbondLockInterceptors() ?? []
    )
  }

  /// Execute lockup lock and superfluid delegation in a single msg
  ///
  /// - Parameters:
  ///   - request: Request to send to LockAndSuperfluidDelegate.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func lockAndSuperfluidDelegate(
    _ request: Osmosis_Superfluid_MsgLockAndSuperfluidDelegate,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse> {
    return self.makeUnaryCall(
      path: "/osmosis.superfluid.Msg/LockAndSuperfluidDelegate",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeLockAndSuperfluidDelegateInterceptors() ?? []
    )
  }
}

internal protocol Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'superfluidDelegate'.
  func makeSuperfluidDelegateInterceptors() -> [ClientInterceptor<Osmosis_Superfluid_MsgSuperfluidDelegate, Osmosis_Superfluid_MsgSuperfluidDelegateResponse>]

  /// - Returns: Interceptors to use when invoking 'superfluidUndelegate'.
  func makeSuperfluidUndelegateInterceptors() -> [ClientInterceptor<Osmosis_Superfluid_MsgSuperfluidUndelegate, Osmosis_Superfluid_MsgSuperfluidUndelegateResponse>]

  /// - Returns: Interceptors to use when invoking 'superfluidUnbondLock'.
  func makeSuperfluidUnbondLockInterceptors() -> [ClientInterceptor<Osmosis_Superfluid_MsgSuperfluidUnbondLock, Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse>]

  /// - Returns: Interceptors to use when invoking 'lockAndSuperfluidDelegate'.
  func makeLockAndSuperfluidDelegateInterceptors() -> [ClientInterceptor<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse>]
}

internal final class Osmosis_Superfluid_MsgClient: Osmosis_Superfluid_MsgClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol?

  /// Creates a client for the osmosis.superfluid.Msg service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Osmosis_Superfluid_MsgClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Msg defines the Msg service.
///
/// To build a server, implement a class that conforms to this protocol.
internal protocol Osmosis_Superfluid_MsgProvider: CallHandlerProvider {
  var interceptors: Osmosis_Superfluid_MsgServerInterceptorFactoryProtocol? { get }

  /// Execute superfluid delegation for a lockup
  func superfluidDelegate(request: Osmosis_Superfluid_MsgSuperfluidDelegate, context: StatusOnlyCallContext) -> EventLoopFuture<Osmosis_Superfluid_MsgSuperfluidDelegateResponse>

  /// Execute superfluid undelegation for a lockup
  func superfluidUndelegate(request: Osmosis_Superfluid_MsgSuperfluidUndelegate, context: StatusOnlyCallContext) -> EventLoopFuture<Osmosis_Superfluid_MsgSuperfluidUndelegateResponse>

  /// For a given lock that is being superfluidly undelegated,
  /// also unbond the underlying lock.
  func superfluidUnbondLock(request: Osmosis_Superfluid_MsgSuperfluidUnbondLock, context: StatusOnlyCallContext) -> EventLoopFuture<Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse>

  /// Execute lockup lock and superfluid delegation in a single msg
  func lockAndSuperfluidDelegate(request: Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, context: StatusOnlyCallContext) -> EventLoopFuture<Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse>
}

extension Osmosis_Superfluid_MsgProvider {
  internal var serviceName: Substring { return "osmosis.superfluid.Msg" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  internal func handle(
    method name: Substring,
    context: CallHandlerContext
  ) -> GRPCServerHandlerProtocol? {
    switch name {
    case "SuperfluidDelegate":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Osmosis_Superfluid_MsgSuperfluidDelegate>(),
        responseSerializer: ProtobufSerializer<Osmosis_Superfluid_MsgSuperfluidDelegateResponse>(),
        interceptors: self.interceptors?.makeSuperfluidDelegateInterceptors() ?? [],
        userFunction: self.superfluidDelegate(request:context:)
      )

    case "SuperfluidUndelegate":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Osmosis_Superfluid_MsgSuperfluidUndelegate>(),
        responseSerializer: ProtobufSerializer<Osmosis_Superfluid_MsgSuperfluidUndelegateResponse>(),
        interceptors: self.interceptors?.makeSuperfluidUndelegateInterceptors() ?? [],
        userFunction: self.superfluidUndelegate(request:context:)
      )

    case "SuperfluidUnbondLock":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Osmosis_Superfluid_MsgSuperfluidUnbondLock>(),
        responseSerializer: ProtobufSerializer<Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse>(),
        interceptors: self.interceptors?.makeSuperfluidUnbondLockInterceptors() ?? [],
        userFunction: self.superfluidUnbondLock(request:context:)
      )

    case "LockAndSuperfluidDelegate":
      return UnaryServerHandler(
        context: context,
        requestDeserializer: ProtobufDeserializer<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate>(),
        responseSerializer: ProtobufSerializer<Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse>(),
        interceptors: self.interceptors?.makeLockAndSuperfluidDelegateInterceptors() ?? [],
        userFunction: self.lockAndSuperfluidDelegate(request:context:)
      )

    default:
      return nil
    }
  }
}

internal protocol Osmosis_Superfluid_MsgServerInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when handling 'superfluidDelegate'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSuperfluidDelegateInterceptors() -> [ServerInterceptor<Osmosis_Superfluid_MsgSuperfluidDelegate, Osmosis_Superfluid_MsgSuperfluidDelegateResponse>]

  /// - Returns: Interceptors to use when handling 'superfluidUndelegate'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSuperfluidUndelegateInterceptors() -> [ServerInterceptor<Osmosis_Superfluid_MsgSuperfluidUndelegate, Osmosis_Superfluid_MsgSuperfluidUndelegateResponse>]

  /// - Returns: Interceptors to use when handling 'superfluidUnbondLock'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeSuperfluidUnbondLockInterceptors() -> [ServerInterceptor<Osmosis_Superfluid_MsgSuperfluidUnbondLock, Osmosis_Superfluid_MsgSuperfluidUnbondLockResponse>]

  /// - Returns: Interceptors to use when handling 'lockAndSuperfluidDelegate'.
  ///   Defaults to calling `self.makeInterceptors()`.
  func makeLockAndSuperfluidDelegateInterceptors() -> [ServerInterceptor<Osmosis_Superfluid_MsgLockAndSuperfluidDelegate, Osmosis_Superfluid_MsgLockAndSuperfluidDelegateResponse>]
}