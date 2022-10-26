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

import "CellIdentity.dart" as cellidentity_;

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.CellIdentityGsm
///
/// CellIdentity to represent a unique GSM cell
class CellIdentityGsm extends cellidentity_.CellIdentity {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/CellIdentityGsm");
  CellIdentityGsm.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR1 = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telephony.CellIdentityGsm> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Implement the Parcelable interface
  static parcelable_.Parcelable_Creator get CREATOR1 =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR1, jni.JniType.objectType)
          .object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  CellIdentityGsm.ctor1()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, []).object);

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
  /// Either 16-bit GSM Cell Identity described
  /// in TS 27.007, 0..65535, Integer.MAX_VALUE if unknown
  int getCid() => jniAccessors.callMethodWithArgs(
      reference, _id_getCid, jni.JniType.intType, []).integer;

  static final _id_getArfcn =
      jniAccessors.getMethodIDOf(_classRef, "getArfcn", "()I");

  /// from: public int getArfcn()
  ///
  /// @return 16-bit GSM Absolute RF Channel Number, Integer.MAX_VALUE if unknown
  int getArfcn() => jniAccessors.callMethodWithArgs(
      reference, _id_getArfcn, jni.JniType.intType, []).integer;

  static final _id_getBsic =
      jniAccessors.getMethodIDOf(_classRef, "getBsic", "()I");

  /// from: public int getBsic()
  ///
  /// @return 6-bit Base Station Identity Code, Integer.MAX_VALUE if unknown
  int getBsic() => jniAccessors.callMethodWithArgs(
      reference, _id_getBsic, jni.JniType.intType, []).integer;

  static final _id_getMobileNetworkOperator = jniAccessors.getMethodIDOf(
      _classRef, "getMobileNetworkOperator", "()Ljava/lang/String;");

  /// from: public java.lang.String getMobileNetworkOperator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return a 5 or 6 character string (MCC+MNC), null if any field is unknown
  jni.JniString getMobileNetworkOperator() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getMobileNetworkOperator, jni.JniType.objectType, []).object);

  static final _id_getMccString = jniAccessors.getMethodIDOf(
      _classRef, "getMccString", "()Ljava/lang/String;");

  /// from: public java.lang.String getMccString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return Mobile Country Code in string format, null if unknown
  jni.JniString getMccString() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMccString, jni.JniType.objectType, []).object);

  static final _id_getMncString = jniAccessors.getMethodIDOf(
      _classRef, "getMncString", "()Ljava/lang/String;");

  /// from: public java.lang.String getMncString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return Mobile Network Code in string format, null if unknown
  jni.JniString getMncString() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMncString, jni.JniType.objectType, []).object);

  static final _id_getPsc =
      jniAccessors.getMethodIDOf(_classRef, "getPsc", "()I");

  /// from: public int getPsc()
  ///
  /// @deprecated Primary Scrambling Code is not applicable to GSM.
  ///@return Integer.MAX_VALUE, undefined for GSM
  int getPsc() => jniAccessors.callMethodWithArgs(
      reference, _id_getPsc, jni.JniType.intType, []).integer;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
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

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Implement the Parcelable interface
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}