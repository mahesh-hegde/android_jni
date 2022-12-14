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

import "CellIdentity.dart" as cellidentity_;

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.CellIdentityWcdma
///
/// CellIdentity to represent a unique UMTS cell
class CellIdentityWcdma extends cellidentity_.CellIdentity {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/CellIdentityWcdma");
  CellIdentityWcdma.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR1 = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telephony.CellIdentityWcdma> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Implement the Parcelable interface
  static parcelable_.Parcelable_Creator get CREATOR1 =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR1, jni.JniType.objectType)
          .object);

  static final _id_getMcc =
      jniAccessors.getMethodIDOf(_classRef, "getMcc", "()I");

  /// from: public int getMcc()
  ///
  /// @return 3-digit Mobile Country Code, 0..999, Integer.MAX_VALUE if unknown
  ///@deprecated Use \#getMccString instead.
  int getMcc() => jniAccessors.callMethodWithArgs(
      reference, _id_getMcc, jni.JniType.intType, []).integer;

  static final _id_getMnc =
      jniAccessors.getMethodIDOf(_classRef, "getMnc", "()I");

  /// from: public int getMnc()
  ///
  /// @return 2 or 3-digit Mobile Network Code, 0..999, Integer.MAX_VALUE if unknown
  ///@deprecated Use \#getMncString instead.
  int getMnc() => jniAccessors.callMethodWithArgs(
      reference, _id_getMnc, jni.JniType.intType, []).integer;

  static final _id_getLac =
      jniAccessors.getMethodIDOf(_classRef, "getLac", "()I");

  /// from: public int getLac()
  ///
  /// @return 16-bit Location Area Code, 0..65535, Integer.MAX_VALUE if unknown
  int getLac() => jniAccessors.callMethodWithArgs(
      reference, _id_getLac, jni.JniType.intType, []).integer;

  static final _id_getCid =
      jniAccessors.getMethodIDOf(_classRef, "getCid", "()I");

  /// from: public int getCid()
  ///
  /// @return CID
  /// 28-bit UMTS Cell Identity described in TS 25.331, 0..268435455, Integer.MAX_VALUE if unknown
  int getCid() => jniAccessors.callMethodWithArgs(
      reference, _id_getCid, jni.JniType.intType, []).integer;

  static final _id_getPsc =
      jniAccessors.getMethodIDOf(_classRef, "getPsc", "()I");

  /// from: public int getPsc()
  ///
  /// @return 9-bit UMTS Primary Scrambling Code described in TS 25.331, 0..511, Integer.MAX_VALUE
  /// if unknown
  int getPsc() => jniAccessors.callMethodWithArgs(
      reference, _id_getPsc, jni.JniType.intType, []).integer;

  static final _id_getMccString = jniAccessors.getMethodIDOf(
      _classRef, "getMccString", "()Ljava/lang/String;");

  /// from: public java.lang.String getMccString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return Mobile Country Code in string version, null if unknown
  jni.JniString getMccString() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMccString, jni.JniType.objectType, []).object);

  static final _id_getMncString = jniAccessors.getMethodIDOf(
      _classRef, "getMncString", "()Ljava/lang/String;");

  /// from: public java.lang.String getMncString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return Mobile Network Code in string version, null if unknown
  jni.JniString getMncString() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMncString, jni.JniType.objectType, []).object);

  static final _id_getMobileNetworkOperator = jniAccessors.getMethodIDOf(
      _classRef, "getMobileNetworkOperator", "()Ljava/lang/String;");

  /// from: public java.lang.String getMobileNetworkOperator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return a 5 or 6 character string (MCC+MNC), null if any field is unknown
  jni.JniString getMobileNetworkOperator() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getMobileNetworkOperator, jni.JniType.objectType, []).object);

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_getUarfcn =
      jniAccessors.getMethodIDOf(_classRef, "getUarfcn", "()I");

  /// from: public int getUarfcn()
  ///
  /// @return 16-bit UMTS Absolute RF Channel Number, Integer.MAX_VALUE if unknown
  int getUarfcn() => jniAccessors.callMethodWithArgs(
      reference, _id_getUarfcn, jni.JniType.intType, []).integer;

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

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Implement the Parcelable interface
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
