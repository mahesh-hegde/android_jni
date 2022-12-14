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

import "MetricAffectingSpan.dart" as metricaffectingspan_;

import "../../os/Parcel.dart" as parcel_;

import "../TextPaint.dart" as textpaint_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.AbsoluteSizeSpan
///
/// A span that changes the size of the text it's attached to.
///
/// For example, the size of the text can be changed to 55dp like this:
/// <pre>{@code
/// SpannableString string = new SpannableString("Text with absolute size span");
///string.setSpan(new AbsoluteSizeSpan(55, true), 10, 23, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);}</pre>
/// <img src="{@docRoot}reference/android/images/text/style/absolutesizespan.png"/>
/// <figcaption>Text with text size updated.</figcaption>
class AbsoluteSizeSpan extends metricaffectingspan_.MetricAffectingSpan {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/AbsoluteSizeSpan");
  AbsoluteSizeSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int size)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the text size to <code>size</code> physical pixels.
  AbsoluteSizeSpan.ctor1(int size)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [size]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(IZ)V");

  /// from: public void <init>(int size, boolean dip)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the text size to <code>size</code> physical pixels, or to <code>size</code>
  /// device-independent pixels if <code>dip</code> is true.
  AbsoluteSizeSpan.ctor2(int size, bool dip)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [size, dip]).object);

  static final _id_ctor3 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel src)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an AbsoluteSizeSpan from a parcel.
  ///@param src This value must never be {@code null}.
  AbsoluteSizeSpan.ctor3(parcel_.Parcel src)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [src.reference]).object);

  static final _id_getSpanTypeId =
      jniAccessors.getMethodIDOf(_classRef, "getSpanTypeId", "()I");

  /// from: public int getSpanTypeId()
  int getSpanTypeId() => jniAccessors.callMethodWithArgs(
      reference, _id_getSpanTypeId, jni.JniType.intType, []).integer;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// @param dest This value must never be {@code null}.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_getSize =
      jniAccessors.getMethodIDOf(_classRef, "getSize", "()I");

  /// from: public int getSize()
  ///
  /// Get the text size. This is in physical pixels if \#getDip() returns false or in
  /// device-independent pixels if \#getDip() returns true.
  ///@return the text size, either in physical pixels or device-independent pixels.
  ///@see AbsoluteSizeSpan\#AbsoluteSizeSpan(int, boolean)
  int getSize() => jniAccessors.callMethodWithArgs(
      reference, _id_getSize, jni.JniType.intType, []).integer;

  static final _id_getDip =
      jniAccessors.getMethodIDOf(_classRef, "getDip", "()Z");

  /// from: public boolean getDip()
  ///
  /// Returns whether the size is in device-independent pixels or not, depending on the
  /// <code>dip</code> flag passed in \#AbsoluteSizeSpan(int, boolean)
  ///@return <code>true</code> if the size is in device-independent pixels, <code>false</code>
  /// otherwise
  ///@see \#AbsoluteSizeSpan(int, boolean)
  bool getDip() => jniAccessors.callMethodWithArgs(
      reference, _id_getDip, jni.JniType.booleanType, []).boolean;

  static final _id_updateDrawState1 = jniAccessors.getMethodIDOf(
      _classRef, "updateDrawState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateDrawState(android.text.TextPaint ds)
  ///
  /// @param ds This value must never be {@code null}.
  void updateDrawState1(textpaint_.TextPaint ds) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateDrawState1,
          jni.JniType.voidType, [ds.reference]).check();

  static final _id_updateMeasureState = jniAccessors.getMethodIDOf(
      _classRef, "updateMeasureState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateMeasureState(android.text.TextPaint ds)
  ///
  /// @param ds This value must never be {@code null}.
  void updateMeasureState(textpaint_.TextPaint ds) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateMeasureState,
          jni.JniType.voidType, [ds.reference]).check();
}
