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

import "Parcelable.dart" as parcelable_;

import "Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.CpuUsageInfo
///
/// CPU usage information per core.
class CpuUsageInfo extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/CpuUsageInfo");
  CpuUsageInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.os.CpuUsageInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  CpuUsageInfo(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [in0.reference]).object);

  static final _id_getActive =
      jniAccessors.getMethodIDOf(_classRef, "getActive", "()J");

  /// from: public long getActive()
  ///
  /// Gets the active time in milliseconds since the system last booted.
  ///@return Active time in milliseconds.
  int getActive() => jniAccessors.callMethodWithArgs(
      reference, _id_getActive, jni.JniType.longType, []).long;

  static final _id_getTotal =
      jniAccessors.getMethodIDOf(_classRef, "getTotal", "()J");

  /// from: public long getTotal()
  ///
  /// Gets the total time in milliseconds that the CPU has been enabled since the system last
  /// booted. This includes time the CPU spent idle.
  ///@return Total time in milliseconds.
  int getTotal() => jniAccessors.callMethodWithArgs(
      reference, _id_getTotal, jni.JniType.longType, []).long;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();
}