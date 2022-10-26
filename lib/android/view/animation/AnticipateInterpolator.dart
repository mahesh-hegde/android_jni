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

import "BaseInterpolator.dart" as baseinterpolator_;

import "../../content/Context.dart" as context_;

import "../../util/AttributeSet.dart" as attributeset_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.animation.AnticipateInterpolator
///
/// An interpolator where the change starts backward then flings forward.
class AnticipateInterpolator extends baseinterpolator_.BaseInterpolator {
  static final _classRef =
      jniAccessors.getClassOf("android/view/animation/AnticipateInterpolator");
  AnticipateInterpolator.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AnticipateInterpolator()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(F)V");

  /// from: public void <init>(float tension)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param tension Amount of anticipation. When tension equals 0.0f, there is
  ///                no anticipation and the interpolator becomes a simple
  ///                acceleration interpolator.
  AnticipateInterpolator.ctor1(double tension)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [tension]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AnticipateInterpolator.ctor2(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [context.reference, attrs.reference]).object);

  static final _id_getInterpolation =
      jniAccessors.getMethodIDOf(_classRef, "getInterpolation", "(F)F");

  /// from: public float getInterpolation(float t)
  double getInterpolation(double t) => jniAccessors.callMethodWithArgs(
      reference, _id_getInterpolation, jni.JniType.floatType, [t]).float;
}