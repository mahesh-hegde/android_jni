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

import "../view/View.dart" as view_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.transition.TransitionValues
///
/// Data structure which holds cached values for the transition.
/// The view field is the target which all of the values pertain to.
/// The values field is a map which holds information for fields
/// according to names selected by the transitions. These names should
/// be unique to avoid clobbering values stored by other transitions,
/// such as the convention project:transition_name:property_name. For
/// example, the platform might store a property "alpha" in a transition
/// "Fader" as "android:fader:alpha".
///
/// These values are cached during the
/// Transition\#captureStartValues(TransitionValues)
/// capture} phases of a scene change, once when the start values are captured
/// and again when the end values are captured. These start/end values are then
/// passed into the transitions via the
/// for Transition\#createAnimator(ViewGroup, TransitionValues, TransitionValues)
/// method.
///
class TransitionValues extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/transition/TransitionValues");
  TransitionValues.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values =
      jniAccessors.getFieldIDOf(_classRef, "values", "Ljava/util/Map;");

  /// from: public final java.util.Map<java.lang.String,java.lang.Object> values
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of values tracked by transitions for this scene
  jni.JniObject get values => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_values, jni.JniType.objectType)
      .object);

  static final _id_view =
      jniAccessors.getFieldIDOf(_classRef, "view", "Landroid/view/View;");

  /// from: public android.view.View view
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The View with these values
  view_.View get view => view_.View.fromRef(jniAccessors
      .getField(reference, _id_view, jni.JniType.objectType)
      .object);

  /// from: public android.view.View view
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The View with these values
  set view(view_.View value) =>
      jniEnv.SetObjectField(reference, _id_view, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  TransitionValues()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object other)
  bool equals1(jni.JniObject other) => jniAccessors.callMethodWithArgs(
      reference,
      _id_equals1,
      jni.JniType.booleanType,
      [other.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
