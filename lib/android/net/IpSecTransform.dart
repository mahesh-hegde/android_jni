// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: file_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_shown_name

import "package:jni/jni.dart" as jni;

import "package:jni/internal_helpers_for_jnigen.dart";

import "../content/Context.dart" as context_;

import "IpSecAlgorithm.dart" as ipsecalgorithm_;

import "IpSecManager.dart" as ipsecmanager_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.IpSecTransform
///
/// This class represents a transform, which roughly corresponds to an IPsec Security Association.
///
/// Transforms are created using IpSecTransform.Builder. Each {@code IpSecTransform}
/// object encapsulates the properties and state of an IPsec security association. That includes,
/// but is not limited to, algorithm choice, key material, and allocated system resources.
///@see <a href="https://tools.ietf.org/html/rfc4301">RFC 4301, Security Architecture for the
///     Internet Protocol</a>
class IpSecTransform extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/IpSecTransform");
  IpSecTransform.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Deactivate this {@code IpSecTransform} and free allocated resources.
  ///
  /// Deactivating a transform while it is still applied to a socket will result in errors on
  /// that socket. Make sure to remove transforms by calling IpSecManager\#removeTransportModeTransforms. Note, removing an {@code IpSecTransform} from a
  /// socket will not deactivate it (because one transform may be applied to multiple sockets).
  ///
  /// It is safe to call this method on a transform that has already been deactivated.
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  ///
  /// Check that the transform was closed properly.
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.net.IpSecTransform$Builder
///
/// This class is used to build IpSecTransform objects.
class IpSecTransform_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/IpSecTransform\$Builder");
  IpSecTransform_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new IpSecTransform.Builder.
  ///@param context current context
  ///
  /// This value must never be {@code null}.
  IpSecTransform_Builder(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_setEncryption = jniAccessors.getMethodIDOf(
      _classRef,
      "setEncryption",
      "(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform\$Builder;");

  /// from: public android.net.IpSecTransform.Builder setEncryption(android.net.IpSecAlgorithm algo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the encryption algorithm.
  ///
  /// Encryption is mutually exclusive with authenticated encryption.
  ///@param algo IpSecAlgorithm specifying the encryption to be applied.
  ///
  /// This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  IpSecTransform_Builder setEncryption(ipsecalgorithm_.IpSecAlgorithm algo) =>
      IpSecTransform_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setEncryption, jni.JniType.objectType, [algo.reference]).object);

  static final _id_setAuthentication = jniAccessors.getMethodIDOf(
      _classRef,
      "setAuthentication",
      "(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform\$Builder;");

  /// from: public android.net.IpSecTransform.Builder setAuthentication(android.net.IpSecAlgorithm algo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the authentication (integrity) algorithm.
  ///
  /// Authentication is mutually exclusive with authenticated encryption.
  ///@param algo IpSecAlgorithm specifying the authentication to be applied.
  ///
  /// This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  IpSecTransform_Builder setAuthentication(
          ipsecalgorithm_.IpSecAlgorithm algo) =>
      IpSecTransform_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setAuthentication,
          jni.JniType.objectType,
          [algo.reference]).object);

  static final _id_setAuthenticatedEncryption = jniAccessors.getMethodIDOf(
      _classRef,
      "setAuthenticatedEncryption",
      "(Landroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform\$Builder;");

  /// from: public android.net.IpSecTransform.Builder setAuthenticatedEncryption(android.net.IpSecAlgorithm algo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the authenticated encryption algorithm.
  ///
  /// The Authenticated Encryption (AE) class of algorithms are also known as
  /// Authenticated Encryption with Associated Data (AEAD) algorithms, or Combined mode
  /// algorithms (as referred to in
  /// <a href="https://tools.ietf.org/html/rfc4301">RFC 4301</a>).
  ///
  /// Authenticated encryption is mutually exclusive with encryption and authentication.
  ///@param algo IpSecAlgorithm specifying the authenticated encryption algorithm to
  ///     be applied.
  ///
  /// This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  IpSecTransform_Builder setAuthenticatedEncryption(
          ipsecalgorithm_.IpSecAlgorithm algo) =>
      IpSecTransform_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setAuthenticatedEncryption,
          jni.JniType.objectType,
          [algo.reference]).object);

  static final _id_setIpv4Encapsulation = jniAccessors.getMethodIDOf(
      _classRef,
      "setIpv4Encapsulation",
      "(Landroid/net/IpSecManager\$UdpEncapsulationSocket;I)Landroid/net/IpSecTransform\$Builder;");

  /// from: public android.net.IpSecTransform.Builder setIpv4Encapsulation(android.net.IpSecManager.UdpEncapsulationSocket localSocket, int remotePort)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add UDP encapsulation to an IPv4 transform.
  ///
  /// This allows IPsec traffic to pass through a NAT.
  ///@see <a href="https://tools.ietf.org/html/rfc3948">RFC 3948, UDP Encapsulation of IPsec
  ///     ESP Packets</a>
  ///@see <a href="https://tools.ietf.org/html/rfc7296\#section-2.23">RFC 7296 section 2.23,
  ///     NAT Traversal of IKEv2</a>
  ///@param localSocket a socket for sending and receiving encapsulated traffic
  /// This value must never be {@code null}.
  ///@param remotePort the UDP port number of the remote host that will send and receive
  ///     encapsulated traffic. In the case of IKEv2, this should be port 4500.
  ///@return This value will never be {@code null}.
  IpSecTransform_Builder setIpv4Encapsulation(
          ipsecmanager_.IpSecManager_UdpEncapsulationSocket localSocket,
          int remotePort) =>
      IpSecTransform_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setIpv4Encapsulation,
          jni.JniType.objectType,
          [localSocket.reference, remotePort]).object);

  static final _id_buildTransportModeTransform = jniAccessors.getMethodIDOf(
      _classRef,
      "buildTransportModeTransform",
      "(Ljava/net/InetAddress;Landroid/net/IpSecManager\$SecurityParameterIndex;)Landroid/net/IpSecTransform;");

  /// from: public android.net.IpSecTransform buildTransportModeTransform(java.net.InetAddress sourceAddress, android.net.IpSecManager.SecurityParameterIndex spi)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build a transport mode IpSecTransform.
  ///
  /// This builds and activates a transport mode transform. Note that an active transform
  /// will not affect any network traffic until it has been applied to one or more sockets.
  ///@see IpSecManager\#applyTransportModeTransform
  ///@param sourceAddress the source {@code InetAddress} of traffic on sockets that will use
  ///     this transform; this address must belong to the Network used by all sockets that
  ///     utilize this transform; if provided, then only traffic originating from the
  ///     specified source address will be processed.
  /// This value must never be {@code null}.
  ///@param spi a unique IpSecManager.SecurityParameterIndex to identify transformed
  ///     traffic
  /// This value must never be {@code null}.
  ///@throws IllegalArgumentException indicating that a particular combination of transform
  ///     properties is invalid
  ///@throws IpSecManager.ResourceUnavailableException indicating that too many transforms
  ///     are active
  ///@throws IpSecManager.SpiUnavailableException indicating the rare case where an SPI
  ///     collides with an existing transform
  ///@throws IOException indicating other errors
  ///@return This value will never be {@code null}.
  IpSecTransform buildTransportModeTransform(jni.JniObject sourceAddress,
          ipsecmanager_.IpSecManager_SecurityParameterIndex spi) =>
      IpSecTransform.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_buildTransportModeTransform,
          jni.JniType.objectType,
          [sourceAddress.reference, spi.reference]).object);
}
