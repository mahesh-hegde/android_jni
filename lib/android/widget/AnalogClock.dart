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

import "../view/View.dart" as view_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../graphics/Canvas.dart" as canvas_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.AnalogClock
///
/// This widget display an analogic clock with two hands for hours and
/// minutes.
///@attr ref android.R.styleable\#AnalogClock_dial
///@attr ref android.R.styleable\#AnalogClock_hand_hour
///@attr ref android.R.styleable\#AnalogClock_hand_minute
///@deprecated This widget is no longer supported.
class AnalogClock extends view_.View {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/AnalogClock");
  AnalogClock.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AnalogClock(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AnalogClock.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AnalogClock.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AnalogClock.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_onAttachedToWindow =
      jniAccessors.getMethodIDOf(_classRef, "onAttachedToWindow", "()V");

  /// from: protected void onAttachedToWindow()
  void onAttachedToWindow() => jniAccessors.callMethodWithArgs(
      reference, _id_onAttachedToWindow, jni.JniType.voidType, []).check();

  static final _id_onDetachedFromWindow =
      jniAccessors.getMethodIDOf(_classRef, "onDetachedFromWindow", "()V");

  /// from: protected void onDetachedFromWindow()
  void onDetachedFromWindow() => jniAccessors.callMethodWithArgs(
      reference, _id_onDetachedFromWindow, jni.JniType.voidType, []).check();

  static final _id_onMeasure =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_onSizeChanged =
      jniAccessors.getMethodIDOf(_classRef, "onSizeChanged", "(IIII)V");

  /// from: protected void onSizeChanged(int w, int h, int oldw, int oldh)
  void onSizeChanged(int w, int h, int oldw, int oldh) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSizeChanged,
          jni.JniType.voidType, [w, h, oldw, oldh]).check();

  static final _id_onDraw = jniAccessors.getMethodIDOf(
      _classRef, "onDraw", "(Landroid/graphics/Canvas;)V");

  /// from: protected void onDraw(android.graphics.Canvas canvas)
  void onDraw(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference, _id_onDraw, jni.JniType.voidType, [canvas.reference]).check();
}