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
import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.aware.PublishConfig
///
/// Defines the configuration of a Aware publish session. Built using
/// PublishConfig.Builder. A publish session is created using
/// WifiAwareSession\#publish(PublishConfig, DiscoverySessionCallback,
/// android.os.Handler) or updated using
/// PublishDiscoverySession\#updatePublish(PublishConfig).
class PublishConfig extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/aware/PublishConfig");
  PublishConfig.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.net.wifi.aware.PublishConfig> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int PUBLISH_TYPE_SOLICITED
  ///
  /// Defines a solicited publish session - a publish session which is silent, waiting for a
  /// matching active subscribe session - and responding to it in unicast. A
  /// solicited publish session is paired with an active subscribe session
  /// SubscribeConfig\#SUBSCRIBE_TYPE_ACTIVE. Configuration is done using
  /// PublishConfig.Builder\#setPublishType(int).
  static const PUBLISH_TYPE_SOLICITED = 1;

  /// from: static public final int PUBLISH_TYPE_UNSOLICITED
  ///
  /// Defines an unsolicited publish session - a publish session where the publisher is
  /// advertising itself by broadcasting on-the-air. An unsolicited publish session is paired
  /// with an passive subscribe session SubscribeConfig\#SUBSCRIBE_TYPE_PASSIVE.
  /// Configuration is done using PublishConfig.Builder\#setPublishType(int).
  static const PUBLISH_TYPE_UNSOLICITED = 0;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

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

/// from: android.net.wifi.aware.PublishConfig$Builder
///
/// Builder used to build PublishConfig objects.
class PublishConfig_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/aware/PublishConfig\$Builder");
  PublishConfig_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  PublishConfig_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setServiceName = jniAccessors.getMethodIDOf(
      _classRef,
      "setServiceName",
      "(Ljava/lang/String;)Landroid/net/wifi/aware/PublishConfig\$Builder;");

  /// from: public android.net.wifi.aware.PublishConfig.Builder setServiceName(java.lang.String serviceName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Specify the service name of the publish session. The actual on-air
  /// value is a 6 byte hashed representation of this string.
  ///
  /// The Service Name is a UTF-8 encoded string from 1 to 255 bytes in length.
  /// The only acceptable single-byte UTF-8 symbols for a Service Name are alphanumeric
  /// values (A-Z, a-z, 0-9), the hyphen ('-'), and the period ('.'). All valid multi-byte
  /// UTF-8 characters are acceptable in a Service Name.
  ///
  /// Must be called - an empty ServiceName is not valid.
  ///@param serviceName The service name for the publish session.
  ///
  /// This value must never be {@code null}.
  ///@return The builder to facilitate chaining
  ///         {@code builder.setXXX(..).setXXX(..)}.
  PublishConfig_Builder setServiceName(jni.JniString serviceName) =>
      PublishConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setServiceName,
          jni.JniType.objectType,
          [serviceName.reference]).object);

  static final _id_setServiceSpecificInfo = jniAccessors.getMethodIDOf(
      _classRef,
      "setServiceSpecificInfo",
      "([B)Landroid/net/wifi/aware/PublishConfig\$Builder;");

  /// from: public android.net.wifi.aware.PublishConfig.Builder setServiceSpecificInfo(byte[] serviceSpecificInfo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Specify service specific information for the publish session. This is
  /// a free-form byte array available to the application to send
  /// additional information as part of the discovery operation - it
  /// will not be used to determine whether a publish/subscribe match
  /// occurs.
  ///
  ///     Optional. Empty by default.
  ///@param serviceSpecificInfo A byte-array for the service-specific
  ///            information field.
  ///
  /// This value may be {@code null}.
  ///@return The builder to facilitate chaining
  ///         {@code builder.setXXX(..).setXXX(..)}.
  PublishConfig_Builder setServiceSpecificInfo(
          jni.JniObject serviceSpecificInfo) =>
      PublishConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setServiceSpecificInfo,
          jni.JniType.objectType,
          [serviceSpecificInfo.reference]).object);

  static final _id_setMatchFilter = jniAccessors.getMethodIDOf(
      _classRef,
      "setMatchFilter",
      "(Ljava/util/List;)Landroid/net/wifi/aware/PublishConfig\$Builder;");

  /// from: public android.net.wifi.aware.PublishConfig.Builder setMatchFilter(java.util.List<byte[]> matchFilter)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The match filter for a publish session. Used to determine whether a service
  /// discovery occurred - in addition to relying on the service name.
  ///
  ///     Optional. Empty by default.
  ///@param matchFilter A list of match filter entries (each of which is an arbitrary byte
  ///                    array).
  ///
  /// This value may be {@code null}.
  ///@return The builder to facilitate chaining
  ///         {@code builder.setXXX(..).setXXX(..)}.
  PublishConfig_Builder setMatchFilter(jni.JniObject matchFilter) =>
      PublishConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setMatchFilter,
          jni.JniType.objectType,
          [matchFilter.reference]).object);

  static final _id_setPublishType = jniAccessors.getMethodIDOf(_classRef,
      "setPublishType", "(I)Landroid/net/wifi/aware/PublishConfig\$Builder;");

  /// from: public android.net.wifi.aware.PublishConfig.Builder setPublishType(int publishType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Specify the type of the publish session: solicited (aka active - publish
  /// packets are transmitted over-the-air), or unsolicited (aka passive -
  /// no publish packets are transmitted, a match is made against an active
  /// subscribe session whose packets are transmitted over-the-air).
  ///@param publishType Publish session type:
  ///            PublishConfig\#PUBLISH_TYPE_SOLICITED or
  ///            PublishConfig\#PUBLISH_TYPE_UNSOLICITED (the default).
  ///
  /// Value is android.net.wifi.aware.PublishConfig\#PUBLISH_TYPE_UNSOLICITED, or android.net.wifi.aware.PublishConfig\#PUBLISH_TYPE_SOLICITED
  ///@return The builder to facilitate chaining
  ///         {@code builder.setXXX(..).setXXX(..)}.
  PublishConfig_Builder setPublishType(int publishType) =>
      PublishConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setPublishType, jni.JniType.objectType, [publishType]).object);

  static final _id_setTtlSec = jniAccessors.getMethodIDOf(_classRef,
      "setTtlSec", "(I)Landroid/net/wifi/aware/PublishConfig\$Builder;");

  /// from: public android.net.wifi.aware.PublishConfig.Builder setTtlSec(int ttlSec)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the time interval (in seconds) an unsolicited (
  /// PublishConfig.Builder\#setPublishType(int)) publish session
  /// will be alive - broadcasting a packet. When the TTL is reached
  /// an event will be generated for
  /// DiscoverySessionCallback\#onSessionTerminated() [unless
  /// \#setTerminateNotificationEnabled(boolean) disables the callback].
  ///
  ///     Optional. 0 by default - indicating the session doesn't terminate on its own.
  ///     Session will be terminated when DiscoverySession\#close() is
  ///     called.
  ///@param ttlSec Lifetime of a publish session in seconds.
  ///@return The builder to facilitate chaining
  ///         {@code builder.setXXX(..).setXXX(..)}.
  PublishConfig_Builder setTtlSec(int ttlSec) =>
      PublishConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setTtlSec, jni.JniType.objectType, [ttlSec]).object);

  static final _id_setTerminateNotificationEnabled = jniAccessors.getMethodIDOf(
      _classRef,
      "setTerminateNotificationEnabled",
      "(Z)Landroid/net/wifi/aware/PublishConfig\$Builder;");

  /// from: public android.net.wifi.aware.PublishConfig.Builder setTerminateNotificationEnabled(boolean enable)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Configure whether a publish terminate notification
  /// DiscoverySessionCallback\#onSessionTerminated() is reported
  /// back to the callback.
  ///@param enable If true the terminate callback will be called when the
  ///            publish is terminated. Otherwise it will not be called.
  ///@return The builder to facilitate chaining
  ///         {@code builder.setXXX(..).setXXX(..)}.
  PublishConfig_Builder setTerminateNotificationEnabled(bool enable) =>
      PublishConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setTerminateNotificationEnabled,
          jni.JniType.objectType,
          [enable]).object);

  static final _id_setRangingEnabled = jniAccessors.getMethodIDOf(
      _classRef,
      "setRangingEnabled",
      "(Z)Landroid/net/wifi/aware/PublishConfig\$Builder;");

  /// from: public android.net.wifi.aware.PublishConfig.Builder setRangingEnabled(boolean enable)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Configure whether the publish discovery session supports ranging and allows peers to
  /// measure distance to it. This API is used in conjunction with
  /// SubscribeConfig.Builder\#setMinDistanceMm(int) and
  /// SubscribeConfig.Builder\#setMaxDistanceMm(int) to specify a minimum and/or
  /// maximum distance at which discovery will be triggered.
  ///
  /// Optional. Disabled by default - i.e. any peer attempt to measure distance to this device
  /// will be refused and discovery will proceed without ranging constraints.
  ///
  /// The device must support Wi-Fi RTT for this feature to be used. Feature support is checked
  /// as described in android.net.wifi.rtt.
  ///@param enable If true, ranging is supported on request of the peer.
  ///@return The builder to facilitate chaining
  ///         {@code builder.setXXX(..).setXXX(..)}.
  PublishConfig_Builder setRangingEnabled(bool enable) =>
      PublishConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setRangingEnabled, jni.JniType.objectType, [enable]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/net/wifi/aware/PublishConfig;");

  /// from: public android.net.wifi.aware.PublishConfig build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build PublishConfig given the current requests made on the
  /// builder.
  PublishConfig build() =>
      PublishConfig.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}
