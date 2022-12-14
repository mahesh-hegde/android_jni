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

import "../animation/Animator.dart" as animator_;

import "View.dart" as view_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.ViewAnimationUtils
///
/// Defines common utilities for working with View's animations.
class ViewAnimationUtils extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/ViewAnimationUtils");
  ViewAnimationUtils.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_createCircularReveal = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "createCircularReveal",
      "(Landroid/view/View;IIFF)Landroid/animation/Animator;");

  /// from: static public android.animation.Animator createCircularReveal(android.view.View view, int centerX, int centerY, float startRadius, float endRadius)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an Animator which can animate a clipping circle.
  ///
  /// Any shadow cast by the View will respect the circular clip from this animator.
  ///
  /// Only a single non-rectangular clip can be applied on a View at any time.
  /// Views clipped by a circular reveal animation take priority over
  /// View\#setClipToOutline(boolean) View Outline clipping.
  ///
  /// Note that the animation returned here is a one-shot animation. It cannot
  /// be re-used, and once started it cannot be paused or resumed. It is also
  /// an asynchronous animation that automatically runs off of the UI thread.
  /// As a result AnimatorListener\#onAnimationEnd(Animator)
  /// will occur after the animation has ended, but it may be delayed depending
  /// on thread responsiveness.
  ///
  /// Note that if any start delay is set on the reveal animator, the start radius
  /// will not be applied to the reveal circle until the start delay has passed.
  /// If it's desired to set a start radius on the reveal circle during the start
  /// delay, one workaround could be adding an animator with the same start and
  /// end radius. For example:
  /// <pre><code>
  /// public static Animator createRevealWithDelay(View view, int centerX, int centerY, float startRadius, float endRadius) {
  ///     Animator delayAnimator = ViewAnimationUtils.createCircularReveal(view, centerX, centerY, startRadius, startRadius);
  ///     delayAnimator.setDuration(delayTimeMS);
  ///     Animator revealAnimator = ViewAnimationUtils.createCircularReveal(view, centerX, centerY, startRadius, endRadius);
  ///     AnimatorSet set = new AnimatorSet();
  ///     set.playSequentially(delayAnimator, revealAnimator);
  ///     return set;
  /// }
  /// </code></pre>
  ///@param view The View will be clipped to the animating circle.
  ///@param centerX The x coordinate of the center of the animating circle, relative to
  ///                <code>view</code>.
  ///@param centerY The y coordinate of the center of the animating circle, relative to
  ///                <code>view</code>.
  ///@param startRadius The starting radius of the animating circle.
  ///@param endRadius The ending radius of the animating circle.
  static animator_.Animator createCircularReveal(view_.View view, int centerX,
          int centerY, double startRadius, double endRadius) =>
      animator_.Animator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_createCircularReveal,
          jni.JniType.objectType,
          [view.reference, centerX, centerY, startRadius, endRadius]).object);
}
