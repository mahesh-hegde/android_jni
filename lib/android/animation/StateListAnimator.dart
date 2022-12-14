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

import "Animator.dart" as animator_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.animation.StateListAnimator
///
/// Lets you define a number of Animators that will run on the attached View depending on the View's
/// drawable state.
///
/// It can be defined in an XML file with the <code>&lt;selector></code> element.
/// Each State Animator is defined in a nested <code>&lt;item></code> element.
///@attr ref android.R.styleable\#DrawableStates_state_focused
///@attr ref android.R.styleable\#DrawableStates_state_window_focused
///@attr ref android.R.styleable\#DrawableStates_state_enabled
///@attr ref android.R.styleable\#DrawableStates_state_checkable
///@attr ref android.R.styleable\#DrawableStates_state_checked
///@attr ref android.R.styleable\#DrawableStates_state_selected
///@attr ref android.R.styleable\#DrawableStates_state_activated
///@attr ref android.R.styleable\#DrawableStates_state_active
///@attr ref android.R.styleable\#DrawableStates_state_single
///@attr ref android.R.styleable\#DrawableStates_state_first
///@attr ref android.R.styleable\#DrawableStates_state_middle
///@attr ref android.R.styleable\#DrawableStates_state_last
///@attr ref android.R.styleable\#DrawableStates_state_pressed
///@attr ref android.R.styleable\#StateListAnimatorItem_animation
class StateListAnimator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/animation/StateListAnimator");
  StateListAnimator.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  StateListAnimator()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_addState = jniAccessors.getMethodIDOf(
      _classRef, "addState", "([ILandroid/animation/Animator;)V");

  /// from: public void addState(int[] specs, android.animation.Animator animator)
  ///
  /// Associates the given animator with the provided drawable state specs so that it will be run
  /// when the View's drawable state matches the specs.
  ///@param specs The drawable state specs to match against
  ///@param animator The animator to run when the specs match
  void addState(jni.JniObject specs, animator_.Animator animator) =>
      jniAccessors.callMethodWithArgs(reference, _id_addState,
          jni.JniType.voidType, [specs.reference, animator.reference]).check();

  static final _id_clone = jniAccessors.getMethodIDOf(
      _classRef, "clone", "()Landroid/animation/StateListAnimator;");

  /// from: public android.animation.StateListAnimator clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  StateListAnimator clone() =>
      StateListAnimator.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_clone, jni.JniType.objectType, []).object);

  static final _id_jumpToCurrentState =
      jniAccessors.getMethodIDOf(_classRef, "jumpToCurrentState", "()V");

  /// from: public void jumpToCurrentState()
  ///
  /// If there is an animation running for a recent state change, ends it.
  ///
  /// This causes the animation to assign the end value(s) to the View.
  void jumpToCurrentState() => jniAccessors.callMethodWithArgs(
      reference, _id_jumpToCurrentState, jni.JniType.voidType, []).check();
}
