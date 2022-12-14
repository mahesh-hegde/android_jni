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

import "../../content/Context.dart" as context_;

import "../../content/res/ColorStateList.dart" as colorstatelist_;

import "../../os/Parcel.dart" as parcel_;

import "../TextPaint.dart" as textpaint_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.TextAppearanceSpan
///
/// Sets the text color, size, style, and typeface to match a TextAppearance
/// resource.
class TextAppearanceSpan extends metricaffectingspan_.MetricAffectingSpan {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/TextAppearanceSpan");
  TextAppearanceSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;I)V");

  /// from: public void <init>(android.content.Context context, int appearance)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Uses the specified TextAppearance resource to determine the
  /// text appearance.  The <code>appearance</code> should be, for example,
  /// <code>android.R.style.TextAppearance_Small</code>.
  TextAppearanceSpan.ctor1(context_.Context context, int appearance)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, appearance]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;II)V");

  /// from: public void <init>(android.content.Context context, int appearance, int colorList)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Uses the specified TextAppearance resource to determine the
  /// text appearance, and the specified text color resource
  /// to determine the color.  The <code>appearance</code> should be,
  /// for example, <code>android.R.style.TextAppearance_Small</code>,
  /// and the <code>colorList</code> should be, for example,
  /// <code>android.R.styleable.Theme_textColorPrimary</code>.
  TextAppearanceSpan.ctor2(
      context_.Context context, int appearance, int colorList)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, appearance, colorList]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V");

  /// from: public void <init>(java.lang.String family, int style, int size, android.content.res.ColorStateList color, android.content.res.ColorStateList linkColor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Makes text be drawn with the specified typeface, size, style,
  /// and colors.
  TextAppearanceSpan.ctor3(
      jni.JniString family,
      int style,
      int size,
      colorstatelist_.ColorStateList color,
      colorstatelist_.ColorStateList linkColor)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          family.reference,
          style,
          size,
          color.reference,
          linkColor.reference
        ]).object);

  static final _id_ctor4 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel src)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TextAppearanceSpan.ctor4(parcel_.Parcel src)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor4, [src.reference]).object);

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
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_getFamily = jniAccessors.getMethodIDOf(
      _classRef, "getFamily", "()Ljava/lang/String;");

  /// from: public java.lang.String getFamily()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the typeface family specified by this span, or <code>null</code>
  /// if it does not specify one.
  jni.JniString getFamily() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFamily, jni.JniType.objectType, []).object);

  static final _id_getTextColor = jniAccessors.getMethodIDOf(
      _classRef, "getTextColor", "()Landroid/content/res/ColorStateList;");

  /// from: public android.content.res.ColorStateList getTextColor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the text color specified by this span, or <code>null</code>
  /// if it does not specify one.
  colorstatelist_.ColorStateList getTextColor() =>
      colorstatelist_.ColorStateList.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTextColor, jni.JniType.objectType, []).object);

  static final _id_getLinkTextColor = jniAccessors.getMethodIDOf(
      _classRef, "getLinkTextColor", "()Landroid/content/res/ColorStateList;");

  /// from: public android.content.res.ColorStateList getLinkTextColor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the link color specified by this span, or <code>null</code>
  /// if it does not specify one.
  colorstatelist_.ColorStateList getLinkTextColor() =>
      colorstatelist_.ColorStateList.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLinkTextColor, jni.JniType.objectType, []).object);

  static final _id_getTextSize =
      jniAccessors.getMethodIDOf(_classRef, "getTextSize", "()I");

  /// from: public int getTextSize()
  ///
  /// Returns the text size specified by this span, or <code>-1</code>
  /// if it does not specify one.
  int getTextSize() => jniAccessors.callMethodWithArgs(
      reference, _id_getTextSize, jni.JniType.intType, []).integer;

  static final _id_getTextStyle =
      jniAccessors.getMethodIDOf(_classRef, "getTextStyle", "()I");

  /// from: public int getTextStyle()
  ///
  /// Returns the text style specified by this span, or <code>0</code>
  /// if it does not specify one.
  int getTextStyle() => jniAccessors.callMethodWithArgs(
      reference, _id_getTextStyle, jni.JniType.intType, []).integer;

  static final _id_updateDrawState1 = jniAccessors.getMethodIDOf(
      _classRef, "updateDrawState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateDrawState(android.text.TextPaint ds)
  void updateDrawState1(textpaint_.TextPaint ds) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateDrawState1,
          jni.JniType.voidType, [ds.reference]).check();

  static final _id_updateMeasureState = jniAccessors.getMethodIDOf(
      _classRef, "updateMeasureState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateMeasureState(android.text.TextPaint ds)
  void updateMeasureState(textpaint_.TextPaint ds) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateMeasureState,
          jni.JniType.voidType, [ds.reference]).check();
}
