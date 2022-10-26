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

/// from: android.animation.TypeEvaluator
///
/// Interface for use with the ValueAnimator\#setEvaluator(TypeEvaluator) function. Evaluators
/// allow developers to create animations on arbitrary property types, by allowing them to supply
/// custom evaluators for types that are not automatically understood and used by the animation
/// system.
///@see ValueAnimator\#setEvaluator(TypeEvaluator)
class TypeEvaluator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/animation/TypeEvaluator");
  TypeEvaluator.fromRef(jni.JObject ref) : super.fromRef(ref);
}
