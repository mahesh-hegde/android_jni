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

import "CharacterStyle.dart" as characterstyle_;

import "../../os/Parcel.dart" as parcel_;

import "../TextPaint.dart" as textpaint_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.BackgroundColorSpan
///
/// Changes the background color of the text to which the span is attached.
///
/// For example, to set a green background color for a text you would create a android.text.SpannableString based on the text and set the span.
/// <pre>{@code
/// SpannableString string = new SpannableString("Text with a background color span");
///string.setSpan(new BackgroundColorSpan(color), 12, 28, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);}</pre>
/// <img src="{@docRoot}reference/android/images/text/style/backgroundcolorspan.png"/>
/// <figcaption>Set a background color for the text.</figcaption>
class BackgroundColorSpan extends characterstyle_.CharacterStyle {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/BackgroundColorSpan");
  BackgroundColorSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int color)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a BackgroundColorSpan from a color integer.
  ///
  ///@param color color integer that defines the background color
  ///@see android.content.res.Resources\#getColor(int, Resources.Theme)
  BackgroundColorSpan.ctor1(int color)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [color]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel src)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a BackgroundColorSpan from a parcel.
  ///@param src This value must never be {@code null}.
  BackgroundColorSpan.ctor2(parcel_.Parcel src)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [src.reference]).object);

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

  static final _id_getBackgroundColor =
      jniAccessors.getMethodIDOf(_classRef, "getBackgroundColor", "()I");

  /// from: public int getBackgroundColor()
  ///
  /// @return the background color of this span.
  ///@see BackgroundColorSpan\#BackgroundColorSpan(int)
  int getBackgroundColor() => jniAccessors.callMethodWithArgs(
      reference, _id_getBackgroundColor, jni.JniType.intType, []).integer;

  static final _id_updateDrawState = jniAccessors.getMethodIDOf(
      _classRef, "updateDrawState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateDrawState(android.text.TextPaint textPaint)
  ///
  /// Updates the background color of the TextPaint.
  ///@param textPaint This value must never be {@code null}.
  void updateDrawState(textpaint_.TextPaint textPaint) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateDrawState,
          jni.JniType.voidType, [textPaint.reference]).check();
}
