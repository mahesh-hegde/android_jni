// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: camel_case_types
// ignore_for_file: file_names
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: constant_identifier_names
// ignore_for_file: unused_shown_name
// ignore_for_file: annotate_overrides
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import
// ignore_for_file: unused_element
// ignore_for_file: unused_field

import "package:jni/jni.dart" as jni;

import "package:jni/internal_helpers_for_jnigen.dart";

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.euicc.EuiccInfo
///
/// Information about an eUICC chip/device.
///@see EuiccManager\#getEuiccInfo
class EuiccInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/euicc/EuiccInfo");
  EuiccInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telephony.euicc.EuiccInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String osVersion)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param osVersion This value may be {@code null}.
  EuiccInfo(jni.JniString osVersion)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [osVersion.reference]).object);

  static final _id_getOsVersion = jniAccessors.getMethodIDOf(
      _classRef, "getOsVersion", "()Ljava/lang/String;");

  /// from: public java.lang.String getOsVersion()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the version of the operating system running on the eUICC. This field is
  /// hardware-specific and is not guaranteed to match any particular format.
  ///@return This value may be {@code null}.
  jni.JniString getOsVersion() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getOsVersion, jni.JniType.objectType, []).object);

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
