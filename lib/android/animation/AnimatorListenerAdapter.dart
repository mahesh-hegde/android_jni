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

import "Animator.dart" as animator_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.animation.AnimatorListenerAdapter
///
/// This adapter class provides empty implementations of the methods from android.animation.Animator.AnimatorListener.
/// Any custom listener that cares only about a subset of the methods of this listener can
/// simply subclass this adapter class instead of implementing the interface directly.
class AnimatorListenerAdapter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/animation/AnimatorListenerAdapter");
  AnimatorListenerAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AnimatorListenerAdapter()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onAnimationCancel = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationCancel", "(Landroid/animation/Animator;)V");

  /// from: public void onAnimationCancel(android.animation.Animator animation)
  ///
  /// {@inheritDoc}
  void onAnimationCancel(animator_.Animator animation) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAnimationCancel,
          jni.JniType.voidType, [animation.reference]).check();

  static final _id_onAnimationEnd = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationEnd", "(Landroid/animation/Animator;)V");

  /// from: public void onAnimationEnd(android.animation.Animator animation)
  ///
  /// {@inheritDoc}
  void onAnimationEnd(animator_.Animator animation) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAnimationEnd,
          jni.JniType.voidType, [animation.reference]).check();

  static final _id_onAnimationRepeat = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationRepeat", "(Landroid/animation/Animator;)V");

  /// from: public void onAnimationRepeat(android.animation.Animator animation)
  ///
  /// {@inheritDoc}
  void onAnimationRepeat(animator_.Animator animation) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAnimationRepeat,
          jni.JniType.voidType, [animation.reference]).check();

  static final _id_onAnimationStart = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationStart", "(Landroid/animation/Animator;)V");

  /// from: public void onAnimationStart(android.animation.Animator animation)
  ///
  /// {@inheritDoc}
  void onAnimationStart(animator_.Animator animation) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAnimationStart,
          jni.JniType.voidType, [animation.reference]).check();

  static final _id_onAnimationPause = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationPause", "(Landroid/animation/Animator;)V");

  /// from: public void onAnimationPause(android.animation.Animator animation)
  ///
  /// {@inheritDoc}
  void onAnimationPause(animator_.Animator animation) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAnimationPause,
          jni.JniType.voidType, [animation.reference]).check();

  static final _id_onAnimationResume = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationResume", "(Landroid/animation/Animator;)V");

  /// from: public void onAnimationResume(android.animation.Animator animation)
  ///
  /// {@inheritDoc}
  void onAnimationResume(animator_.Animator animation) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAnimationResume,
          jni.JniType.voidType, [animation.reference]).check();
}