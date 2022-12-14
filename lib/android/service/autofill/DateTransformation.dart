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

import "../../view/autofill/AutofillId.dart" as autofillid_;

import "../../icu/text/DateFormat.dart" as dateformat_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.autofill.DateTransformation
///
/// Replaces a TextView child of a CustomDescription with the contents of a field
/// that is expected to have a AutofillValue\#forDate(long) date value.
///
/// For example, a transformation to display a credit card expiration date as month/year would be:
///
/// <pre class="prettyprint">
/// new DateTransformation(ccExpDate, new java.text.SimpleDateFormat("MM/yyyy")
/// </pre>
class DateTransformation extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/autofill/DateTransformation");
  DateTransformation.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.service.autofill.DateTransformation> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/view/autofill/AutofillId;Landroid/icu/text/DateFormat;)V");

  /// from: public void <init>(android.view.autofill.AutofillId id, android.icu.text.DateFormat dateFormat)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new transformation.
  ///@param id id of the screen field.
  /// This value must never be {@code null}.
  ///@param dateFormat object used to transform the date value of the field to a String.
  ///
  /// This value must never be {@code null}.
  DateTransformation(
      autofillid_.AutofillId id, dateformat_.DateFormat dateFormat)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [id.reference, dateFormat.reference]).object);

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
}
