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

import "Transition.dart" as transition_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.transition.TransitionListenerAdapter
///
/// This adapter class provides empty implementations of the methods from android.transition.Transition.TransitionListener.
/// Any custom listener that cares only about a subset of the methods of this listener can
/// simply subclass this adapter class instead of implementing the interface directly.
class TransitionListenerAdapter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/transition/TransitionListenerAdapter");
  TransitionListenerAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  TransitionListenerAdapter()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onTransitionStart = jniAccessors.getMethodIDOf(
      _classRef, "onTransitionStart", "(Landroid/transition/Transition;)V");

  /// from: public void onTransitionStart(android.transition.Transition transition)
  ///
  /// {@inheritDoc}
  void onTransitionStart(transition_.Transition transition) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTransitionStart,
          jni.JniType.voidType, [transition.reference]).check();

  static final _id_onTransitionEnd = jniAccessors.getMethodIDOf(
      _classRef, "onTransitionEnd", "(Landroid/transition/Transition;)V");

  /// from: public void onTransitionEnd(android.transition.Transition transition)
  ///
  /// {@inheritDoc}
  void onTransitionEnd(transition_.Transition transition) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTransitionEnd,
          jni.JniType.voidType, [transition.reference]).check();

  static final _id_onTransitionCancel = jniAccessors.getMethodIDOf(
      _classRef, "onTransitionCancel", "(Landroid/transition/Transition;)V");

  /// from: public void onTransitionCancel(android.transition.Transition transition)
  ///
  /// {@inheritDoc}
  void onTransitionCancel(transition_.Transition transition) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTransitionCancel,
          jni.JniType.voidType, [transition.reference]).check();

  static final _id_onTransitionPause = jniAccessors.getMethodIDOf(
      _classRef, "onTransitionPause", "(Landroid/transition/Transition;)V");

  /// from: public void onTransitionPause(android.transition.Transition transition)
  ///
  /// {@inheritDoc}
  void onTransitionPause(transition_.Transition transition) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTransitionPause,
          jni.JniType.voidType, [transition.reference]).check();

  static final _id_onTransitionResume = jniAccessors.getMethodIDOf(
      _classRef, "onTransitionResume", "(Landroid/transition/Transition;)V");

  /// from: public void onTransitionResume(android.transition.Transition transition)
  ///
  /// {@inheritDoc}
  void onTransitionResume(transition_.Transition transition) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTransitionResume,
          jni.JniType.voidType, [transition.reference]).check();
}
