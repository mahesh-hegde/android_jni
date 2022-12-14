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

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "TransitionValues.dart" as transitionvalues_;

import "../animation/Animator.dart" as animator_;

import "../view/ViewGroup.dart" as viewgroup_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.transition.ChangeTransform
///
/// This Transition captures scale and rotation for Views before and after the
/// scene change and animates those changes during the transition.
///
/// A change in parent is handled as well by capturing the transforms from
/// the parent before and after the scene change and animating those during the
/// transition.
class ChangeTransform extends transition_.Transition {
  static final _classRef =
      jniAccessors.getClassOf("android/transition/ChangeTransform");
  ChangeTransform.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ChangeTransform()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ChangeTransform.ctor1(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_getReparentWithOverlay =
      jniAccessors.getMethodIDOf(_classRef, "getReparentWithOverlay", "()Z");

  /// from: public boolean getReparentWithOverlay()
  ///
  /// Returns whether changes to parent should use an overlay or not. When the parent
  /// change doesn't use an overlay, it affects the transforms of the child. The
  /// default value is <code>true</code>.
  ///
  /// Note: when Overlays are not used when a parent changes, a view can be clipped when
  /// it moves outside the bounds of its parent. Setting
  /// android.view.ViewGroup\#setClipChildren(boolean) and
  /// android.view.ViewGroup\#setClipToPadding(boolean) can help. Also, when
  /// Overlays are not used and the parent is animating its location, the position of the
  /// child view will be relative to its parent's final position, so it may appear to "jump"
  /// at the beginning.
  ///
  ///@return <code>true</code> when a changed parent should execute the transition
  /// inside the scene root's overlay or <code>false</code> if a parent change only
  /// affects the transform of the transitioning view.
  ///@attr ref android.R.styleable\#ChangeTransform_reparentWithOverlay
  bool getReparentWithOverlay() => jniAccessors.callMethodWithArgs(reference,
      _id_getReparentWithOverlay, jni.JniType.booleanType, []).boolean;

  static final _id_setReparentWithOverlay =
      jniAccessors.getMethodIDOf(_classRef, "setReparentWithOverlay", "(Z)V");

  /// from: public void setReparentWithOverlay(boolean reparentWithOverlay)
  ///
  /// Sets whether changes to parent should use an overlay or not. When the parent
  /// change doesn't use an overlay, it affects the transforms of the child. The
  /// default value is <code>true</code>.
  ///
  /// Note: when Overlays are not used when a parent changes, a view can be clipped when
  /// it moves outside the bounds of its parent. Setting
  /// android.view.ViewGroup\#setClipChildren(boolean) and
  /// android.view.ViewGroup\#setClipToPadding(boolean) can help. Also, when
  /// Overlays are not used and the parent is animating its location, the position of the
  /// child view will be relative to its parent's final position, so it may appear to "jump"
  /// at the beginning.
  ///
  ///@param reparentWithOverlay <code>true</code> when a changed parent should execute the
  ///                            transition inside the scene root's overlay or <code>false</code>
  ///                            if a parent change only affects the transform of the transitioning
  ///                            view.
  ///@attr ref android.R.styleable\#ChangeTransform_reparentWithOverlay
  void setReparentWithOverlay(bool reparentWithOverlay) =>
      jniAccessors.callMethodWithArgs(reference, _id_setReparentWithOverlay,
          jni.JniType.voidType, [reparentWithOverlay]).check();

  static final _id_getReparent =
      jniAccessors.getMethodIDOf(_classRef, "getReparent", "()Z");

  /// from: public boolean getReparent()
  ///
  /// Returns whether parent changes will be tracked by the ChangeTransform. If parent
  /// changes are tracked, then the transform will adjust to the transforms of the
  /// different parents. If they aren't tracked, only the transforms of the transitioning
  /// view will be tracked. Default is true.
  ///@return whether parent changes will be tracked by the ChangeTransform.
  ///@attr ref android.R.styleable\#ChangeTransform_reparent
  bool getReparent() => jniAccessors.callMethodWithArgs(
      reference, _id_getReparent, jni.JniType.booleanType, []).boolean;

  static final _id_setReparent =
      jniAccessors.getMethodIDOf(_classRef, "setReparent", "(Z)V");

  /// from: public void setReparent(boolean reparent)
  ///
  /// Sets whether parent changes will be tracked by the ChangeTransform. If parent
  /// changes are tracked, then the transform will adjust to the transforms of the
  /// different parents. If they aren't tracked, only the transforms of the transitioning
  /// view will be tracked. Default is true.
  ///@param reparent Set to true to track parent changes or false to only track changes
  ///                 of the transitioning view without considering the parent change.
  ///@attr ref android.R.styleable\#ChangeTransform_reparent
  void setReparent(bool reparent) => jniAccessors.callMethodWithArgs(
      reference, _id_setReparent, jni.JniType.voidType, [reparent]).check();

  static final _id_getTransitionProperties = jniAccessors.getMethodIDOf(
      _classRef, "getTransitionProperties", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getTransitionProperties()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getTransitionProperties() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getTransitionProperties, jni.JniType.objectType, []).object);

  static final _id_captureStartValues = jniAccessors.getMethodIDOf(_classRef,
      "captureStartValues", "(Landroid/transition/TransitionValues;)V");

  /// from: public void captureStartValues(android.transition.TransitionValues transitionValues)
  void captureStartValues(
          transitionvalues_.TransitionValues transitionValues) =>
      jniAccessors.callMethodWithArgs(reference, _id_captureStartValues,
          jni.JniType.voidType, [transitionValues.reference]).check();

  static final _id_captureEndValues = jniAccessors.getMethodIDOf(_classRef,
      "captureEndValues", "(Landroid/transition/TransitionValues;)V");

  /// from: public void captureEndValues(android.transition.TransitionValues transitionValues)
  void captureEndValues(transitionvalues_.TransitionValues transitionValues) =>
      jniAccessors.callMethodWithArgs(reference, _id_captureEndValues,
          jni.JniType.voidType, [transitionValues.reference]).check();

  static final _id_createAnimator = jniAccessors.getMethodIDOf(
      _classRef,
      "createAnimator",
      "(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;");

  /// from: public android.animation.Animator createAnimator(android.view.ViewGroup sceneRoot, android.transition.TransitionValues startValues, android.transition.TransitionValues endValues)
  /// The returned object must be deleted after use, by calling the `delete` method.
  animator_.Animator createAnimator(
          viewgroup_.ViewGroup sceneRoot,
          transitionvalues_.TransitionValues startValues,
          transitionvalues_.TransitionValues endValues) =>
      animator_.Animator.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_createAnimator, jni.JniType.objectType, [
        sceneRoot.reference,
        startValues.reference,
        endValues.reference
      ]).object);
}
