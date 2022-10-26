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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.animation.ArgbEvaluator
///
/// This evaluator can be used to perform type interpolation between integer
/// values that represent ARGB colors.
class ArgbEvaluator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/animation/ArgbEvaluator");
  ArgbEvaluator.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ArgbEvaluator()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_evaluate = jniAccessors.getMethodIDOf(_classRef, "evaluate",
      "(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;");

  /// from: public java.lang.Object evaluate(float fraction, java.lang.Object startValue, java.lang.Object endValue)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This function returns the calculated in-between value for a color
  /// given integers that represent the start and end values in the four
  /// bytes of the 32-bit int. Each channel is separately linearly interpolated
  /// and the resulting calculated values are recombined into the return value.
  ///@param fraction The fraction from the starting to the ending values
  ///@param startValue A 32-bit int value representing colors in the
  /// separate bytes of the parameter
  ///@param endValue A 32-bit int value representing colors in the
  /// separate bytes of the parameter
  ///@return A value that is calculated to be the linearly interpolated
  /// result, derived by separating the start and end values into separate
  /// color channels and interpolating each one separately, recombining the
  /// resulting values in the same way.
  jni.JniObject evaluate(
          double fraction, jni.JniObject startValue, jni.JniObject endValue) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_evaluate,
          jni.JniType.objectType,
          [fraction, startValue.reference, endValue.reference]).object);
}