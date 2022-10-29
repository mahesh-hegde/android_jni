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

import "../../../os/Parcelable.dart" as parcelable_;

import "../../../os/Parcel.dart" as parcel_;

import "../ScanResult.dart" as scanresult_;

import "../../MacAddress.dart" as macaddress_;

import "../aware/PeerHandle.dart" as peerhandle_;
import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.rtt.RangingRequest
///
/// Defines the ranging request to other devices. The ranging request is built using
/// RangingRequest.Builder.
/// A ranging request is executed using
/// WifiRttManager\#startRanging(RangingRequest, java.util.concurrent.Executor, RangingResultCallback).
///
/// The ranging request is a batch request - specifying a set of devices (specified using
/// RangingRequest.Builder\#addAccessPoint(ScanResult) and
/// RangingRequest.Builder\#addAccessPoints(List)).
class RangingRequest extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/rtt/RangingRequest");
  RangingRequest.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.net.wifi.rtt.RangingRequest> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getMaxPeers =
      jniAccessors.getStaticMethodIDOf(_classRef, "getMaxPeers", "()I");

  /// from: static public int getMaxPeers()
  ///
  /// Returns the maximum number of peers to range which can be specified in a single {@code
  /// RangingRequest}. The limit applies no matter how the peers are added to the request, e.g.
  /// through RangingRequest.Builder\#addAccessPoint(ScanResult) or
  /// RangingRequest.Builder\#addAccessPoints(List).
  ///@return Maximum number of peers.
  static int getMaxPeers() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getMaxPeers, jni.JniType.intType, []).integer;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

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

/// from: android.net.wifi.rtt.RangingRequest$Builder
///
/// Builder class used to construct RangingRequest objects.
class RangingRequest_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/rtt/RangingRequest\$Builder");
  RangingRequest_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  RangingRequest_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_addAccessPoint = jniAccessors.getMethodIDOf(
      _classRef,
      "addAccessPoint",
      "(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/rtt/RangingRequest\$Builder;");

  /// from: public android.net.wifi.rtt.RangingRequest.Builder addAccessPoint(android.net.wifi.ScanResult apInfo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add the device specified by the ScanResult to the list of devices with
  /// which to measure range. The total number of peers added to a request cannot exceed the
  /// limit specified by \#getMaxPeers().
  ///
  /// Ranging may not be supported if the Access Point does not support IEEE 802.11mc. Use
  /// ScanResult\#is80211mcResponder() to verify the Access Point's capabilities. If
  /// not supported the result status will be
  /// RangingResult\#STATUS_RESPONDER_DOES_NOT_SUPPORT_IEEE80211MC.
  ///@param apInfo Information of an Access Point (AP) obtained in a Scan Result.
  /// This value must never be {@code null}.
  ///@return The builder to facilitate chaining
  ///         {@code builder.setXXX(..).setXXX(..)}.
  RangingRequest_Builder addAccessPoint(scanresult_.ScanResult apInfo) =>
      RangingRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addAccessPoint,
          jni.JniType.objectType,
          [apInfo.reference]).object);

  static final _id_addAccessPoints = jniAccessors.getMethodIDOf(
      _classRef,
      "addAccessPoints",
      "(Ljava/util/List;)Landroid/net/wifi/rtt/RangingRequest\$Builder;");

  /// from: public android.net.wifi.rtt.RangingRequest.Builder addAccessPoints(java.util.List<android.net.wifi.ScanResult> apInfos)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add the devices specified by the ScanResults to the list of devices with
  /// which to measure range. The total number of peers added to a request cannot exceed the
  /// limit specified by \#getMaxPeers().
  ///
  /// Ranging may not be supported if the Access Point does not support IEEE 802.11mc. Use
  /// ScanResult\#is80211mcResponder() to verify the Access Point's capabilities. If
  /// not supported the result status will be
  /// RangingResult\#STATUS_RESPONDER_DOES_NOT_SUPPORT_IEEE80211MC.
  ///@param apInfos Information of an Access Points (APs) obtained in a Scan Result.
  /// This value must never be {@code null}.
  ///@return The builder to facilitate chaining
  ///         {@code builder.setXXX(..).setXXX(..)}.
  RangingRequest_Builder addAccessPoints(jni.JniObject apInfos) =>
      RangingRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addAccessPoints,
          jni.JniType.objectType,
          [apInfos.reference]).object);

  static final _id_addWifiAwarePeer = jniAccessors.getMethodIDOf(
      _classRef,
      "addWifiAwarePeer",
      "(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/RangingRequest\$Builder;");

  /// from: public android.net.wifi.rtt.RangingRequest.Builder addWifiAwarePeer(android.net.MacAddress peerMacAddress)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add the device specified by the {@code peerMacAddress} to the list of devices with
  /// which to measure range.
  ///
  /// The MAC address may be obtained out-of-band from a peer Wi-Fi Aware device. A Wi-Fi
  /// Aware device may obtain its MAC address using the IdentityChangedListener
  /// provided to
  /// WifiAwareManager\#attach(AttachCallback, IdentityChangedListener, Handler).
  ///
  /// Note: in order to use this API the device must support Wi-Fi Aware
  /// android.net.wifi.aware. The peer device which is being ranged to must be
  /// configured to publish a service (with any name) with:
  /// <li>Type android.net.wifi.aware.PublishConfig\#PUBLISH_TYPE_UNSOLICITED.
  /// <li>Ranging enabled
  /// android.net.wifi.aware.PublishConfig.Builder\#setRangingEnabled(boolean).
  ///@param peerMacAddress The MAC address of the Wi-Fi Aware peer.
  /// This value must never be {@code null}.
  ///@return The builder, to facilitate chaining {@code builder.setXXX(..).setXXX(..)}.
  RangingRequest_Builder addWifiAwarePeer(
          macaddress_.MacAddress peerMacAddress) =>
      RangingRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addWifiAwarePeer,
          jni.JniType.objectType,
          [peerMacAddress.reference]).object);

  static final _id_addWifiAwarePeer1 = jniAccessors.getMethodIDOf(
      _classRef,
      "addWifiAwarePeer",
      "(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/RangingRequest\$Builder;");

  /// from: public android.net.wifi.rtt.RangingRequest.Builder addWifiAwarePeer(android.net.wifi.aware.PeerHandle peerHandle)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a device specified by a PeerHandle to the list of devices with which to
  /// measure range.
  ///
  /// The PeerHandle may be obtained as part of the Wi-Fi Aware discovery process. E.g.
  /// using DiscoverySessionCallback\#onServiceDiscovered(PeerHandle, byte[], List).
  ///
  /// Note: in order to use this API the device must support Wi-Fi Aware
  /// android.net.wifi.aware. The peer device which is being ranged to must be
  /// configured to publish a service (with any name) with:
  /// <li>Type android.net.wifi.aware.PublishConfig\#PUBLISH_TYPE_UNSOLICITED.
  /// <li>Ranging enabled
  /// android.net.wifi.aware.PublishConfig.Builder\#setRangingEnabled(boolean).
  ///@param peerHandle The peer handler of the peer Wi-Fi Aware device.
  /// This value must never be {@code null}.
  ///@return The builder, to facilitate chaining {@code builder.setXXX(..).setXXX(..)}.
  RangingRequest_Builder addWifiAwarePeer1(peerhandle_.PeerHandle peerHandle) =>
      RangingRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addWifiAwarePeer1,
          jni.JniType.objectType,
          [peerHandle.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/net/wifi/rtt/RangingRequest;");

  /// from: public android.net.wifi.rtt.RangingRequest build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build RangingRequest given the current configurations made on the
  /// builder.
  RangingRequest build() =>
      RangingRequest.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}
