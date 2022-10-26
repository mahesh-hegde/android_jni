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

/// from: android.view.autofill.AutofillValue
///
/// Abstracts how a View can be autofilled by an
/// android.service.autofill.AutofillService.
///
/// Each AutofillValue is associated with a {@code type}, as defined by
/// View\#getAutofillType().
class AutofillValue extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/autofill/AutofillValue");
  AutofillValue.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.autofill.AutofillValue> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: void <init>(android.os.Parcel parcel)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AutofillValue(parcel_.Parcel parcel)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [parcel.reference]).object);

  static final _id_getTextValue = jniAccessors.getMethodIDOf(
      _classRef, "getTextValue", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getTextValue()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the value to autofill a text field.
  ///
  /// See View\#AUTOFILL_TYPE_TEXT for more info.
  ///
  ///@throws IllegalStateException if the value is not a text value
  ///@return This value will never be {@code null}.
  jni.JniObject getTextValue() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTextValue, jni.JniType.objectType, []).object);

  static final _id_isText =
      jniAccessors.getMethodIDOf(_classRef, "isText", "()Z");

  /// from: public boolean isText()
  ///
  /// Checks is this is a text value.
  ///
  /// See View\#AUTOFILL_TYPE_TEXT for more info.
  ///
  bool isText() => jniAccessors.callMethodWithArgs(
      reference, _id_isText, jni.JniType.booleanType, []).boolean;

  static final _id_getToggleValue =
      jniAccessors.getMethodIDOf(_classRef, "getToggleValue", "()Z");

  /// from: public boolean getToggleValue()
  ///
  /// Gets the value to autofill a toggable field.
  ///
  /// See View\#AUTOFILL_TYPE_TOGGLE for more info.
  ///
  ///@throws IllegalStateException if the value is not a toggle value
  bool getToggleValue() => jniAccessors.callMethodWithArgs(
      reference, _id_getToggleValue, jni.JniType.booleanType, []).boolean;

  static final _id_isToggle =
      jniAccessors.getMethodIDOf(_classRef, "isToggle", "()Z");

  /// from: public boolean isToggle()
  ///
  /// Checks is this is a toggle value.
  ///
  /// See View\#AUTOFILL_TYPE_TOGGLE for more info.
  ///
  bool isToggle() => jniAccessors.callMethodWithArgs(
      reference, _id_isToggle, jni.JniType.booleanType, []).boolean;

  static final _id_getListValue =
      jniAccessors.getMethodIDOf(_classRef, "getListValue", "()I");

  /// from: public int getListValue()
  ///
  /// Gets the value to autofill a selection list field.
  ///
  /// See View\#AUTOFILL_TYPE_LIST for more info.
  ///
  ///@throws IllegalStateException if the value is not a list value
  int getListValue() => jniAccessors.callMethodWithArgs(
      reference, _id_getListValue, jni.JniType.intType, []).integer;

  static final _id_isList =
      jniAccessors.getMethodIDOf(_classRef, "isList", "()Z");

  /// from: public boolean isList()
  ///
  /// Checks is this is a list value.
  ///
  /// See View\#AUTOFILL_TYPE_LIST for more info.
  ///
  bool isList() => jniAccessors.callMethodWithArgs(
      reference, _id_isList, jni.JniType.booleanType, []).boolean;

  static final _id_getDateValue =
      jniAccessors.getMethodIDOf(_classRef, "getDateValue", "()J");

  /// from: public long getDateValue()
  ///
  /// Gets the value to autofill a date field.
  ///
  /// See View\#AUTOFILL_TYPE_DATE for more info.
  ///
  ///@throws IllegalStateException if the value is not a date value
  int getDateValue() => jniAccessors.callMethodWithArgs(
      reference, _id_getDateValue, jni.JniType.longType, []).long;

  static final _id_isDate =
      jniAccessors.getMethodIDOf(_classRef, "isDate", "()Z");

  /// from: public boolean isDate()
  ///
  /// Checks is this is a date value.
  ///
  /// See View\#AUTOFILL_TYPE_DATE for more info.
  ///
  bool isDate() => jniAccessors.callMethodWithArgs(
      reference, _id_isDate, jni.JniType.booleanType, []).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

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

  /// from: public void writeToParcel(android.os.Parcel parcel, int flags)
  void writeToParcel(parcel_.Parcel parcel, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [parcel.reference, flags]).check();

  static final _id_forText = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "forText",
      "(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;");

  /// from: static public android.view.autofill.AutofillValue forText(java.lang.CharSequence value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new AutofillValue to autofill a View representing a text field.
  ///
  /// See View\#AUTOFILL_TYPE_TEXT for more info.
  ///@param value This value may be {@code null}.
  static AutofillValue forText(jni.JniObject value) =>
      AutofillValue.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_forText, jni.JniType.objectType, [value.reference]).object);

  static final _id_forToggle = jniAccessors.getStaticMethodIDOf(
      _classRef, "forToggle", "(Z)Landroid/view/autofill/AutofillValue;");

  /// from: static public android.view.autofill.AutofillValue forToggle(boolean value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new AutofillValue to autofill a View representing a toggable
  /// field.
  ///
  /// See View\#AUTOFILL_TYPE_TOGGLE for more info.
  static AutofillValue forToggle(bool value) =>
      AutofillValue.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_forToggle, jni.JniType.objectType, [value]).object);

  static final _id_forList = jniAccessors.getStaticMethodIDOf(
      _classRef, "forList", "(I)Landroid/view/autofill/AutofillValue;");

  /// from: static public android.view.autofill.AutofillValue forList(int value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new AutofillValue to autofill a View representing a selection
  /// list.
  ///
  /// See View\#AUTOFILL_TYPE_LIST for more info.
  static AutofillValue forList(int value) =>
      AutofillValue.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_forList, jni.JniType.objectType, [value]).object);

  static final _id_forDate = jniAccessors.getStaticMethodIDOf(
      _classRef, "forDate", "(J)Landroid/view/autofill/AutofillValue;");

  /// from: static public android.view.autofill.AutofillValue forDate(long value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new AutofillValue to autofill a View representing a date.
  ///
  /// See View\#AUTOFILL_TYPE_DATE for more info.
  static AutofillValue forDate(int value) =>
      AutofillValue.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_forDate, jni.JniType.objectType, [value]).object);
}