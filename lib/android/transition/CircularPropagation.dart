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

import "VisibilityPropagation.dart" as visibilitypropagation_;

import "../view/ViewGroup.dart" as viewgroup_;

import "Transition.dart" as transition_;

import "TransitionValues.dart" as transitionvalues_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.transition.CircularPropagation
///
/// A propagation that varies with the distance to the epicenter of the Transition
/// or center of the scene if no epicenter exists. When a View is visible in the
/// start of the transition, Views farther from the epicenter will transition
/// sooner than Views closer to the epicenter. When a View is not in the start
/// of the transition or is not visible at the start of the transition, it will
/// transition sooner when closer to the epicenter and later when farther from
/// the epicenter. This is the default TransitionPropagation used with
/// android.transition.Explode.
class CircularPropagation extends visibilitypropagation_.VisibilityPropagation {
  static final _classRef =
      jniAccessors.getClassOf("android/transition/CircularPropagation");
  CircularPropagation.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  CircularPropagation()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setPropagationSpeed =
      jniAccessors.getMethodIDOf(_classRef, "setPropagationSpeed", "(F)V");

  /// from: public void setPropagationSpeed(float propagationSpeed)
  ///
  /// Sets the speed at which transition propagation happens, relative to the duration of the
  /// Transition. A <code>propagationSpeed</code> of 1 means that a View centered farthest from
  /// the epicenter and View centered at the epicenter will have a difference
  /// in start delay of approximately the duration of the Transition. A speed of 2 means the
  /// start delay difference will be approximately half of the duration of the transition. A
  /// value of 0 is illegal, but negative values will invert the propagation.
  ///@param propagationSpeed The speed at which propagation occurs, relative to the duration
  ///                         of the transition. A speed of 4 means it works 4 times as fast
  ///                         as the duration of the transition. May not be 0.
  void setPropagationSpeed(double propagationSpeed) =>
      jniAccessors.callMethodWithArgs(reference, _id_setPropagationSpeed,
          jni.JniType.voidType, [propagationSpeed]).check();

  static final _id_getStartDelay1 = jniAccessors.getMethodIDOf(
      _classRef,
      "getStartDelay",
      "(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J");

  /// from: public long getStartDelay(android.view.ViewGroup sceneRoot, android.transition.Transition transition, android.transition.TransitionValues startValues, android.transition.TransitionValues endValues)
  int getStartDelay1(
          viewgroup_.ViewGroup sceneRoot,
          transition_.Transition transition,
          transitionvalues_.TransitionValues startValues,
          transitionvalues_.TransitionValues endValues) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_getStartDelay1, jni.JniType.longType, [
        sceneRoot.reference,
        transition.reference,
        startValues.reference,
        endValues.reference
      ]).long;
}
