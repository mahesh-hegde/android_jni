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

/// from: android.net.wifi.aware.Characteristics
///
/// The characteristics of the Wi-Fi Aware implementation.
class Characteristics extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/aware/Characteristics");
  Characteristics.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.net.wifi.aware.Characteristics> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getMaxServiceNameLength =
      jniAccessors.getMethodIDOf(_classRef, "getMaxServiceNameLength", "()I");

  /// from: public int getMaxServiceNameLength()
  ///
  /// Returns the maximum string length that can be used to specify a Aware service name. Restricts
  /// the parameters of the PublishConfig.Builder\#setServiceName(String) and
  /// SubscribeConfig.Builder\#setServiceName(String).
  ///@return A positive integer, maximum string length of Aware service name.
  int getMaxServiceNameLength() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxServiceNameLength, jni.JniType.intType, []).integer;

  static final _id_getMaxServiceSpecificInfoLength = jniAccessors.getMethodIDOf(
      _classRef, "getMaxServiceSpecificInfoLength", "()I");

  /// from: public int getMaxServiceSpecificInfoLength()
  ///
  /// Returns the maximum length of byte array that can be used to specify a Aware service specific
  /// information field: the arbitrary load used in discovery or the message length of Aware
  /// message exchange. Restricts the parameters of the
  /// PublishConfig.Builder\#setServiceSpecificInfo(byte[]),
  /// SubscribeConfig.Builder\#setServiceSpecificInfo(byte[]), and
  /// DiscoverySession\#sendMessage(PeerHandle, int, byte[])
  /// variants.
  ///@return A positive integer, maximum length of byte array for Aware messaging.
  int getMaxServiceSpecificInfoLength() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getMaxServiceSpecificInfoLength,
      jni.JniType.intType, []).integer;

  static final _id_getMaxMatchFilterLength =
      jniAccessors.getMethodIDOf(_classRef, "getMaxMatchFilterLength", "()I");

  /// from: public int getMaxMatchFilterLength()
  ///
  /// Returns the maximum length of byte array that can be used to specify a Aware match filter.
  /// Restricts the parameters of the
  /// PublishConfig.Builder\#setMatchFilter(java.util.List) and
  /// SubscribeConfig.Builder\#setMatchFilter(java.util.List).
  ///@return A positive integer, maximum legngth of byte array for Aware discovery match filter.
  int getMaxMatchFilterLength() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxMatchFilterLength, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;
}
