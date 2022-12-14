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

import "BaseInterpolator.dart" as baseinterpolator_;

import "../../content/Context.dart" as context_;

import "../../util/AttributeSet.dart" as attributeset_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.animation.BounceInterpolator
///
/// An interpolator where the change bounces at the end.
class BounceInterpolator extends baseinterpolator_.BaseInterpolator {
  static final _classRef =
      jniAccessors.getClassOf("android/view/animation/BounceInterpolator");
  BounceInterpolator.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  BounceInterpolator()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  BounceInterpolator.ctor1(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_getInterpolation =
      jniAccessors.getMethodIDOf(_classRef, "getInterpolation", "(F)F");

  /// from: public float getInterpolation(float t)
  double getInterpolation(double t) => jniAccessors.callMethodWithArgs(
      reference, _id_getInterpolation, jni.JniType.floatType, [t]).float;
}
