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

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.CellIdentity
///
/// CellIdentity represents the identity of a unique cell. This is the base class for
/// CellIdentityXxx which represents cell identity for specific network access technology.
class CellIdentity extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/CellIdentity");
  CellIdentity.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telephony.CellIdentity> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Implement the Parcelable interface
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  ///
  /// Implement the Parcelable interface
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_getOperatorAlphaLong = jniAccessors.getMethodIDOf(
      _classRef, "getOperatorAlphaLong", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getOperatorAlphaLong()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The long alpha tag associated with the current scan result (may be the operator
  /// name string or extended operator name string). May be null if unknown.
  jni.JniObject getOperatorAlphaLong() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getOperatorAlphaLong, jni.JniType.objectType, []).object);

  static final _id_getOperatorAlphaShort = jniAccessors.getMethodIDOf(
      _classRef, "getOperatorAlphaShort", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getOperatorAlphaShort()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The short alpha tag associated with the current scan result (may be the operator
  /// name string or extended operator name string).  May be null if unknown.
  jni.JniObject getOperatorAlphaShort() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getOperatorAlphaShort, jni.JniType.objectType, []).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object other)
  bool equals1(jni.JniObject other) => jniAccessors.callMethodWithArgs(
      reference,
      _id_equals1,
      jni.JniType.booleanType,
      [other.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int type)
  ///
  /// Used by child classes for parceling.
  ///@hide
  void writeToParcel(parcel_.Parcel dest, int type) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, type]).check();
}
