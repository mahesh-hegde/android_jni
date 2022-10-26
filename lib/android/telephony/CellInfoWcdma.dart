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

import "CellInfo.dart" as cellinfo_;

import "../os/Parcelable.dart" as parcelable_;

import "CellIdentityWcdma.dart" as cellidentitywcdma_;

import "CellSignalStrengthWcdma.dart" as cellsignalstrengthwcdma_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.CellInfoWcdma
///
/// Immutable cell information from a point in time.
class CellInfoWcdma extends cellinfo_.CellInfo {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/CellInfoWcdma");
  CellInfoWcdma.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR1 = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telephony.CellInfoWcdma> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Implement the Parcelable interface
  static parcelable_.Parcelable_Creator get CREATOR1 =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR1, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  CellInfoWcdma()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getCellIdentity = jniAccessors.getMethodIDOf(
      _classRef, "getCellIdentity", "()Landroid/telephony/CellIdentityWcdma;");

  /// from: public android.telephony.CellIdentityWcdma getCellIdentity()
  /// The returned object must be deleted after use, by calling the `delete` method.
  cellidentitywcdma_.CellIdentityWcdma getCellIdentity() =>
      cellidentitywcdma_.CellIdentityWcdma.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getCellIdentity,
              jni.JniType.objectType, []).object);

  static final _id_getCellSignalStrength = jniAccessors.getMethodIDOf(_classRef,
      "getCellSignalStrength", "()Landroid/telephony/CellSignalStrengthWcdma;");

  /// from: public android.telephony.CellSignalStrengthWcdma getCellSignalStrength()
  /// The returned object must be deleted after use, by calling the `delete` method.
  cellsignalstrengthwcdma_.CellSignalStrengthWcdma getCellSignalStrength() =>
      cellsignalstrengthwcdma_.CellSignalStrengthWcdma.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getCellSignalStrength,
              jni.JniType.objectType, []).object);

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// @return hash code
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object other)
  bool equals1(jni.JniObject other) => jniAccessors.callMethodWithArgs(
      reference,
      _id_equals1,
      jni.JniType.booleanType,
      [other.reference]).boolean;

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
  ///
  /// Implement the Parcelable interface
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Implement the Parcelable interface
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
