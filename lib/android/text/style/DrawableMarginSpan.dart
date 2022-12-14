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

import "../../graphics/drawable/Drawable.dart" as drawable_;

import "../../graphics/Canvas.dart" as canvas_;

import "../../graphics/Paint.dart" as paint_;

import "../Layout.dart" as layout_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.DrawableMarginSpan
///
/// A span which adds a drawable and a padding to the paragraph it's attached to.
///
/// If the height of the drawable is bigger than the height of the line it's attached to then the
/// line height is increased to fit the drawable. <code>DrawableMarginSpan</code> allows setting a
/// padding between the drawable and the text. The default value is 0. The span must be set from the
/// beginning of the text, otherwise either the span won't be rendered or it will be rendered
/// incorrectly.
///
/// For example, a drawable and a padding of 20px can be added like this:
/// <pre>{@code SpannableString string = new SpannableString("Text with a drawable.");
/// string.setSpan(new DrawableMarginSpan(drawable, 20), 0, string.length(),
/// Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);}</pre>
/// <img src="{@docRoot}reference/android/images/text/style/drawablemarginspan.png"/>
/// <figcaption>Text with a drawable and a padding.</figcaption>
///
///@see IconMarginSpan for working with a android.graphics.Bitmap instead of
/// a Drawable.
class DrawableMarginSpan extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/DrawableMarginSpan");
  DrawableMarginSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void <init>(android.graphics.drawable.Drawable drawable)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a DrawableMarginSpan from a Drawable. The pad width will be 0.
  ///@param drawable the drawable to be added
  ///
  /// This value must never be {@code null}.
  DrawableMarginSpan(drawable_.Drawable drawable)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [drawable.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/drawable/Drawable;I)V");

  /// from: public void <init>(android.graphics.drawable.Drawable drawable, int pad)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a DrawableMarginSpan from a Drawable and a padding, in pixels.
  ///@param drawable the drawable to be added
  /// This value must never be {@code null}.
  ///@param pad the distance between the drawable and the text
  DrawableMarginSpan.ctor1(drawable_.Drawable drawable, int pad)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [drawable.reference, pad]).object);

  static final _id_getLeadingMargin =
      jniAccessors.getMethodIDOf(_classRef, "getLeadingMargin", "(Z)I");

  /// from: public int getLeadingMargin(boolean first)
  int getLeadingMargin(bool first) => jniAccessors.callMethodWithArgs(
      reference, _id_getLeadingMargin, jni.JniType.intType, [first]).integer;

  static final _id_drawLeadingMargin = jniAccessors.getMethodIDOf(
      _classRef,
      "drawLeadingMargin",
      "(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V");

  /// from: public void drawLeadingMargin(android.graphics.Canvas c, android.graphics.Paint p, int x, int dir, int top, int baseline, int bottom, java.lang.CharSequence text, int start, int end, boolean first, android.text.Layout layout)
  ///
  /// @param c This value must never be {@code null}.
  ///@param p This value must never be {@code null}.
  ///@param text This value must never be {@code null}.
  ///@param layout This value must never be {@code null}.
  void drawLeadingMargin(
          canvas_.Canvas c,
          paint_.Paint p,
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
        c.reference,
        p.reference,
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

  static final _id_chooseHeight = jniAccessors.getMethodIDOf(
      _classRef,
      "chooseHeight",
      "(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint\$FontMetricsInt;)V");

  /// from: public void chooseHeight(java.lang.CharSequence text, int start, int end, int istartv, int v, android.graphics.Paint.FontMetricsInt fm)
  ///
  /// @param text This value must never be {@code null}.
  ///@param fm This value must never be {@code null}.
  void chooseHeight(jni.JniObject text, int start, int end, int istartv, int v,
          paint_.Paint_FontMetricsInt fm) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_chooseHeight,
          jni.JniType.voidType,
          [text.reference, start, end, istartv, v, fm.reference]).check();
}
