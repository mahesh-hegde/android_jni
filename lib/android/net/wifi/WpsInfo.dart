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

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.WpsInfo
///
/// A class representing Wi-Fi Protected Setup
///@deprecated This class is no longer supported.
/// {@see WifiP2pConfig}
class WpsInfo extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/net/wifi/WpsInfo");
  WpsInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_BSSID =
      jniAccessors.getFieldIDOf(_classRef, "BSSID", "Ljava/lang/String;");

  /// from: public java.lang.String BSSID
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Passed with pin method KEYPAD
  ///@deprecated This is no longer supported.
  jni.JniString get BSSID => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_BSSID, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String BSSID
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Passed with pin method KEYPAD
  ///@deprecated This is no longer supported.
  set BSSID(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_BSSID, value.reference);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.net.wifi.WpsInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Implement the Parcelable interface
  ///@deprecated This API is no longer supported.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int DISPLAY
  ///
  /// Display pin method configuration - pin is generated and displayed on device
  ///@deprecated This is no longer supported.
  static const DISPLAY = 1;

  /// from: static public final int INVALID
  ///
  /// Invalid configuration
  ///@deprecated This is no longer supported.
  static const INVALID = 4;

  /// from: static public final int KEYPAD
  ///
  /// Keypad pin method configuration - pin is entered on device
  ///@deprecated This is no longer supported.
  static const KEYPAD = 2;

  /// from: static public final int LABEL
  ///
  /// Label pin method configuration - pin is labelled on device
  ///@deprecated This is no longer supported.
  static const LABEL = 3;

  /// from: static public final int PBC
  ///
  /// Push button configuration
  ///@deprecated This is no longer supported.
  static const PBC = 0;

  static final _id_pin =
      jniAccessors.getFieldIDOf(_classRef, "pin", "Ljava/lang/String;");

  /// from: public java.lang.String pin
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Passed with pin method configuration
  ///@deprecated This is no longer supported.
  jni.JniString get pin => jni.JniString.fromRef(
      jniAccessors.getField(reference, _id_pin, jni.JniType.objectType).object);

  /// from: public java.lang.String pin
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Passed with pin method configuration
  ///@deprecated This is no longer supported.
  set pin(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_pin, value.reference);

  static final _id_setup = jniAccessors.getFieldIDOf(_classRef, "setup", "I");

  /// from: public int setup
  ///
  /// Wi-Fi Protected Setup. www.wi-fi.org/wifi-protected-setup has details
  ///@deprecated This is no longer supported.
  int get setup =>
      jniAccessors.getField(reference, _id_setup, jni.JniType.intType).integer;

  /// from: public int setup
  ///
  /// Wi-Fi Protected Setup. www.wi-fi.org/wifi-protected-setup has details
  ///@deprecated This is no longer supported.
  set setup(int value) => jniEnv.SetIntField(reference, _id_setup, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated This API is no longer supported.
  WpsInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/net/wifi/WpsInfo;)V");

  /// from: public void <init>(android.net.wifi.WpsInfo source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  WpsInfo.ctor1(WpsInfo source)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [source.reference]).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated This API is no longer supported.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  ///
  /// Implement the Parcelable interface
  ///@deprecated This API is no longer supported.
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Implement the Parcelable interface
  ///@deprecated This API is no longer supported.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
