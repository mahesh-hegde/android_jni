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

import "../content/Context.dart" as context_;

import "Transition.dart" as transition_;

import "TransitionManager.dart" as transitionmanager_;

import "../view/ViewGroup.dart" as viewgroup_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.transition.TransitionInflater
///
/// This class inflates scenes and transitions from resource files.
///
/// Information on XML resource descriptions for transitions can be found for
/// android.R.styleable\#Transition, android.R.styleable\#TransitionSet,
/// android.R.styleable\#TransitionTarget, android.R.styleable\#Fade,
/// and android.R.styleable\#TransitionManager.
class TransitionInflater extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/transition/TransitionInflater");
  TransitionInflater.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_from = jniAccessors.getStaticMethodIDOf(_classRef, "from",
      "(Landroid/content/Context;)Landroid/transition/TransitionInflater;");

  /// from: static public android.transition.TransitionInflater from(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Obtains the TransitionInflater from the given context.
  static TransitionInflater from(context_.Context context) =>
      TransitionInflater.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_from,
          jni.JniType.objectType,
          [context.reference]).object);

  static final _id_inflateTransition = jniAccessors.getMethodIDOf(
      _classRef, "inflateTransition", "(I)Landroid/transition/Transition;");

  /// from: public android.transition.Transition inflateTransition(int resource)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Loads a Transition object from a resource
  ///@param resource The resource id of the transition to load
  ///@return The loaded Transition object
  ///@throws android.content.res.Resources.NotFoundException when the
  /// transition cannot be loaded
  transition_.Transition inflateTransition(int resource) =>
      transition_.Transition.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_inflateTransition, jni.JniType.objectType, [resource]).object);

  static final _id_inflateTransitionManager = jniAccessors.getMethodIDOf(
      _classRef,
      "inflateTransitionManager",
      "(ILandroid/view/ViewGroup;)Landroid/transition/TransitionManager;");

  /// from: public android.transition.TransitionManager inflateTransitionManager(int resource, android.view.ViewGroup sceneRoot)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Loads a TransitionManager object from a resource
  ///@param resource The resource id of the transition manager to load
  ///@return The loaded TransitionManager object
  ///@throws android.content.res.Resources.NotFoundException when the
  /// transition manager cannot be loaded
  transitionmanager_.TransitionManager inflateTransitionManager(
          int resource, viewgroup_.ViewGroup sceneRoot) =>
      transitionmanager_.TransitionManager.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_inflateTransitionManager,
              jni.JniType.objectType, [resource, sceneRoot.reference]).object);
}
