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

import "TextView.dart" as textview_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.DigitalClock
///
/// Like AnalogClock, but digital.  Shows seconds.
///@deprecated It is recommended you use TextClock instead.
class DigitalClock extends textview_.TextView {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/DigitalClock");
  DigitalClock.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DigitalClock(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DigitalClock.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_onAttachedToWindow =
      jniAccessors.getMethodIDOf(_classRef, "onAttachedToWindow", "()V");

  /// from: protected void onAttachedToWindow()
  void onAttachedToWindow() => jniAccessors.callMethodWithArgs(
      reference, _id_onAttachedToWindow, jni.JniType.voidType, []).check();

  static final _id_onDetachedFromWindow1 =
      jniAccessors.getMethodIDOf(_classRef, "onDetachedFromWindow", "()V");

  /// from: protected void onDetachedFromWindow()
  void onDetachedFromWindow1() => jniAccessors.callMethodWithArgs(
      reference, _id_onDetachedFromWindow1, jni.JniType.voidType, []).check();

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);
}
