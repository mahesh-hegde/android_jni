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

import "../../graphics/Paint.dart" as paint_;

import "../TextPaint.dart" as textpaint_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.LineHeightSpan
///
/// The classes that affect the height of the line should implement this interface.
class LineHeightSpan extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/LineHeightSpan");
  LineHeightSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_chooseHeight = jniAccessors.getMethodIDOf(
      _classRef,
      "chooseHeight",
      "(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint\$FontMetricsInt;)V");

  /// from: public abstract void chooseHeight(java.lang.CharSequence text, int start, int end, int spanstartv, int lineHeight, android.graphics.Paint.FontMetricsInt fm)
  ///
  /// Classes that implement this should define how the height is being calculated.
  ///@param text the text
  ///@param start the start of the line
  ///@param end the end of the line
  ///@param spanstartv the start of the span
  ///@param lineHeight the line height
  ///@param fm font metrics of the paint, in integers
  void chooseHeight(jni.JniObject text, int start, int end, int spanstartv,
          int lineHeight, paint_.Paint_FontMetricsInt fm) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_chooseHeight, jni.JniType.voidType, [
        text.reference,
        start,
        end,
        spanstartv,
        lineHeight,
        fm.reference
      ]).check();
}

/// from: android.text.style.LineHeightSpan$WithDensity
///
/// The classes that affect the height of the line with respect to density, should implement this
/// interface.
class LineHeightSpan_WithDensity extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/LineHeightSpan\$WithDensity");
  LineHeightSpan_WithDensity.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_chooseHeight = jniAccessors.getMethodIDOf(
      _classRef,
      "chooseHeight",
      "(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint\$FontMetricsInt;Landroid/text/TextPaint;)V");

  /// from: public abstract void chooseHeight(java.lang.CharSequence text, int start, int end, int spanstartv, int lineHeight, android.graphics.Paint.FontMetricsInt fm, android.text.TextPaint paint)
  ///
  /// Classes that implement this should define how the height is being calculated.
  ///@param text the text
  ///@param start the start of the line
  ///@param end the end of the line
  ///@param spanstartv the start of the span
  ///@param lineHeight the line height
  ///@param paint the paint
  void chooseHeight(
          jni.JniObject text,
          int start,
          int end,
          int spanstartv,
          int lineHeight,
          paint_.Paint_FontMetricsInt fm,
          textpaint_.TextPaint paint) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_chooseHeight, jni.JniType.voidType, [
        text.reference,
        start,
        end,
        spanstartv,
        lineHeight,
        fm.reference,
        paint.reference
      ]).check();
}
