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

import "../view/ViewGroup.dart" as viewgroup_;

import "Transition.dart" as transition_;

import "TransitionValues.dart" as transitionvalues_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.transition.TransitionPropagation
///
/// Extend <code>TransitionPropagation</code> to customize start delays for Animators created
/// in android.transition.Transition\#createAnimator(ViewGroup,
/// TransitionValues, TransitionValues). A Transition such as android.transition.Explode
/// defaults to using android.transition.CircularPropagation and Views closer to the
/// epicenter will move out of the scene later and into the scene sooner than Views farther
/// from the epicenter, giving the appearance of inertia. With no TransitionPropagation, all
/// Views will react simultaneously to the start of the transition.
///@see Transition\#setPropagation(TransitionPropagation)
///@see Transition\#getEpicenter()
class TransitionPropagation extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/transition/TransitionPropagation");
  TransitionPropagation.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  TransitionPropagation()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getStartDelay = jniAccessors.getMethodIDOf(
      _classRef,
      "getStartDelay",
      "(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J");

  /// from: public abstract long getStartDelay(android.view.ViewGroup sceneRoot, android.transition.Transition transition, android.transition.TransitionValues startValues, android.transition.TransitionValues endValues)
  ///
  /// Called by Transition to alter the Animator start delay. All start delays will be adjusted
  /// such that the minimum becomes zero.
  ///@param sceneRoot The root of the View hierarchy running the transition.
  ///@param transition The transition that created the Animator
  ///@param startValues The values for a specific target in the start scene.
  ///@param endValues The values for the target in the end scene.
  ///@return A start delay to use with the Animator created by <code>transition</code>. The
  /// delay will be offset by the minimum delay of all <code>TransitionPropagation</code>s
  /// used in the Transition so that the smallest delay will be 0. Returned values may be
  /// negative.
  int getStartDelay(
          viewgroup_.ViewGroup sceneRoot,
          transition_.Transition transition,
          transitionvalues_.TransitionValues startValues,
          transitionvalues_.TransitionValues endValues) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_getStartDelay, jni.JniType.longType, [
        sceneRoot.reference,
        transition.reference,
        startValues.reference,
        endValues.reference
      ]).long;

  static final _id_captureValues = jniAccessors.getMethodIDOf(
      _classRef, "captureValues", "(Landroid/transition/TransitionValues;)V");

  /// from: public abstract void captureValues(android.transition.TransitionValues transitionValues)
  ///
  /// Captures the values in the start or end scene for the properties that this
  /// transition propagation monitors. These values are then passed as the startValues
  /// or endValues structure in a later call to
  /// \#getStartDelay(ViewGroup, Transition, TransitionValues, TransitionValues).
  /// The main concern for an implementation is what the
  /// properties are that the transition cares about and what the values are
  /// for all of those properties. The start and end values will be compared
  /// later during the
  /// \#getStartDelay(ViewGroup, Transition, TransitionValues, TransitionValues).
  /// method to determine the start delay.
  ///
  /// Subclasses must implement this method. The method should only be called by the
  /// transition system; it is not intended to be called from external classes.
  ///
  ///@param transitionValues The holder for any values that the Transition
  /// wishes to store. Values are stored in the <code>values</code> field
  /// of this TransitionValues object and are keyed from
  /// a String value. For example, to store a view's rotation value,
  /// a transition might call
  /// <code>transitionValues.values.put("appname:transitionname:rotation",
  /// view.getRotation())</code>. The target view will already be stored in
  /// the transitionValues structure when this method is called.
  void captureValues(transitionvalues_.TransitionValues transitionValues) =>
      jniAccessors.callMethodWithArgs(reference, _id_captureValues,
          jni.JniType.voidType, [transitionValues.reference]).check();

  static final _id_getPropagationProperties = jniAccessors.getMethodIDOf(
      _classRef, "getPropagationProperties", "()[Ljava/lang/String;");

  /// from: public abstract java.lang.String[] getPropagationProperties()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the set of property names stored in the TransitionValues
  /// object passed into \#captureValues(TransitionValues) that
  /// this transition propagation cares about for the purposes of preventing
  /// duplicate capturing of property values.
  ///
  /// A <code>TransitionPropagation</code> must override this method to prevent
  /// duplicate capturing of values and must contain at least one
  ///
  ///@return An array of property names as described in the class documentation for
  /// TransitionValues.
  jni.JniObject getPropagationProperties() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getPropagationProperties, jni.JniType.objectType, []).object);
}
