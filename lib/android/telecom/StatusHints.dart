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

import "../os/Parcelable.dart" as parcelable_;

import "../graphics/drawable/Icon.dart" as icon_;

import "../os/Bundle.dart" as bundle_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telecom.StatusHints
///
/// Contains status label and icon displayed in the in-call UI.
class StatusHints extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telecom/StatusHints");
  StatusHints.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telecom.StatusHints> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V");

  /// from: public void <init>(java.lang.CharSequence label, android.graphics.drawable.Icon icon, android.os.Bundle extras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  StatusHints(jni.JniObject label, icon_.Icon icon, bundle_.Bundle extras)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [label.reference, icon.reference, extras.reference]).object);

  static final _id_getLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The label displayed in the in-call UI.
  jni.JniObject getLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLabel, jni.JniType.objectType, []).object);

  static final _id_getIcon = jniAccessors.getMethodIDOf(
      _classRef, "getIcon", "()Landroid/graphics/drawable/Icon;");

  /// from: public android.graphics.drawable.Icon getIcon()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return An icon depicting the status.
  icon_.Icon getIcon() => icon_.Icon.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getIcon, jni.JniType.objectType, []).object);

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return Extra data used to display status.
  bundle_.Bundle getExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExtras, jni.JniType.objectType, []).object);

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
}
