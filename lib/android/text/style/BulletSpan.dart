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

import "../../os/Parcel.dart" as parcel_;

import "../../graphics/Canvas.dart" as canvas_;

import "../../graphics/Paint.dart" as paint_;

import "../Layout.dart" as layout_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.BulletSpan
///
/// A span which styles paragraphs as bullet points (respecting layout direction).
///
/// BulletSpans must be attached from the first character to the last character of a single
/// paragraph, otherwise the bullet point will not be displayed but the first paragraph encountered
/// will have a leading margin.
///
/// BulletSpans allow configuring the following elements:
/// <ul>
/// <li>__gap width__ - the distance, in pixels, between the bullet point and the paragraph.
/// Default value is 2px.</li>
/// <li>__color__ - the bullet point color. By default, the bullet point color is 0 - no color,
/// so it uses the TextView's text color.</li>
/// <li>__bullet radius__ - the radius, in pixels, of the bullet point. Default value is
/// 4px.</li>
/// </ul>
/// For example, a BulletSpan using the default values can be constructed like this:
/// <pre>{@code
///  SpannableString string = new SpannableString("Text with\nBullet point");
///string.setSpan(new BulletSpan(), 10, 22, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);}</pre>
/// <img src="{@docRoot}reference/android/images/text/style/defaultbulletspan.png"/>
/// <figcaption>BulletSpan constructed with default values.</figcaption>
///
///
/// To construct a BulletSpan with a gap width of 40px, green bullet point and bullet radius of
/// 20px:
/// <pre>{@code
///  SpannableString string = new SpannableString("Text with\nBullet point");
///string.setSpan(new BulletSpan(40, color, 20), 10, 22, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);}</pre>
/// <img src="{@docRoot}reference/android/images/text/style/custombulletspan.png"/>
/// <figcaption>Customized BulletSpan.</figcaption>
class BulletSpan extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/BulletSpan");
  BulletSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int STANDARD_GAP_WIDTH
  static const STANDARD_GAP_WIDTH = 2;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a BulletSpan with the default values.
  BulletSpan()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int gapWidth)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a BulletSpan based on a gap width
  ///@param gapWidth the distance, in pixels, between the bullet point and the paragraph.
  BulletSpan.ctor1(int gapWidth)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [gapWidth]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int gapWidth, int color)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a BulletSpan based on a gap width and a color integer.
  ///@param gapWidth the distance, in pixels, between the bullet point and the paragraph.
  ///@param color the bullet point color, as a color integer
  ///@see android.content.res.Resources\#getColor(int, Resources.Theme)
  BulletSpan.ctor2(int gapWidth, int color)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [gapWidth, color]).object);

  static final _id_ctor3 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(III)V");

  /// from: public void <init>(int gapWidth, int color, int bulletRadius)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a BulletSpan based on a gap width and a color integer.
  ///@param gapWidth the distance, in pixels, between the bullet point and the paragraph.
  ///@param color the bullet point color, as a color integer.
  ///@param bulletRadius the radius of the bullet point, in pixels.
  /// Value is 0 or greater
  ///@see android.content.res.Resources\#getColor(int, Resources.Theme)
  BulletSpan.ctor3(int gapWidth, int color, int bulletRadius)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [gapWidth, color, bulletRadius]).object);

  static final _id_ctor4 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel src)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a BulletSpan from a parcel.
  ///@param src This value must never be {@code null}.
  BulletSpan.ctor4(parcel_.Parcel src)
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
  ///
  /// @param dest This value must never be {@code null}.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_getLeadingMargin =
      jniAccessors.getMethodIDOf(_classRef, "getLeadingMargin", "(Z)I");

  /// from: public int getLeadingMargin(boolean first)
  int getLeadingMargin(bool first) => jniAccessors.callMethodWithArgs(
      reference, _id_getLeadingMargin, jni.JniType.intType, [first]).integer;

  static final _id_getGapWidth =
      jniAccessors.getMethodIDOf(_classRef, "getGapWidth", "()I");

  /// from: public int getGapWidth()
  ///
  /// Get the distance, in pixels, between the bullet point and the paragraph.
  ///@return the distance, in pixels, between the bullet point and the paragraph.
  int getGapWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getGapWidth, jni.JniType.intType, []).integer;

  static final _id_getBulletRadius =
      jniAccessors.getMethodIDOf(_classRef, "getBulletRadius", "()I");

  /// from: public int getBulletRadius()
  ///
  /// Get the radius, in pixels, of the bullet point.
  ///@return the radius, in pixels, of the bullet point.
  int getBulletRadius() => jniAccessors.callMethodWithArgs(
      reference, _id_getBulletRadius, jni.JniType.intType, []).integer;

  static final _id_getColor =
      jniAccessors.getMethodIDOf(_classRef, "getColor", "()I");

  /// from: public int getColor()
  ///
  /// Get the bullet point color.
  ///@return the bullet point color
  int getColor() => jniAccessors.callMethodWithArgs(
      reference, _id_getColor, jni.JniType.intType, []).integer;

  static final _id_drawLeadingMargin = jniAccessors.getMethodIDOf(
      _classRef,
      "drawLeadingMargin",
      "(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V");

  /// from: public void drawLeadingMargin(android.graphics.Canvas canvas, android.graphics.Paint paint, int x, int dir, int top, int baseline, int bottom, java.lang.CharSequence text, int start, int end, boolean first, android.text.Layout layout)
  ///
  /// @param canvas This value must never be {@code null}.
  ///@param paint This value must never be {@code null}.
  ///@param text This value must never be {@code null}.
  ///@param layout This value may be {@code null}.
  void drawLeadingMargin(
          canvas_.Canvas canvas,
          paint_.Paint paint,
          int x,
          int dir,
          int top,
          int baseline,
          int bottom,
          jni.JniObject text,
          int start,
          int end,
          bool first,
          layout_.Layout layout) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_drawLeadingMargin, jni.JniType.voidType, [
        canvas.reference,
        paint.reference,
        x,
        dir,
        top,
        baseline,
        bottom,
        text.reference,
        start,
        end,
        first,
        layout.reference
      ]).check();
}
