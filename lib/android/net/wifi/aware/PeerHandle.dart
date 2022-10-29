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

import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.aware.PeerHandle
///
/// Opaque object used to represent a Wi-Fi Aware peer. Obtained from discovery sessions in
/// DiscoverySessionCallback\#onServiceDiscovered(PeerHandle, byte[], java.util.List) or
/// received messages in DiscoverySessionCallback\#onMessageReceived(PeerHandle, byte[]), and
/// used when sending messages e,g, DiscoverySession\#sendMessage(PeerHandle, int, byte[]),
/// or when configuring a network link to a peer, e.g.
/// DiscoverySession\#createNetworkSpecifierOpen(PeerHandle) or
/// DiscoverySession\#createNetworkSpecifierPassphrase(PeerHandle, String).
///
/// Note that while a {@code PeerHandle} can be used to track a particular peer (i.e. you can compare
/// the values received from subsequent messages) - it is good practice not to rely on it. Instead
/// use an application level peer identifier encoded in the message,
/// DiscoverySession\#sendMessage(PeerHandle, int, byte[]), and/or in the Publish
/// configuration's service-specific information field,
/// PublishConfig.Builder\#setServiceSpecificInfo(byte[]), or match filter,
/// PublishConfig.Builder\#setMatchFilter(java.util.List).
class PeerHandle extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/aware/PeerHandle");
  PeerHandle.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;
}
