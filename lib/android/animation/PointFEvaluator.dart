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

import "../graphics/PointF.dart" as pointf_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.animation.PointFEvaluator
///
/// This evaluator can be used to perform type interpolation between <code>PointF</code> values.
class PointFEvaluator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/animation/PointFEvaluator");
  PointFEvaluator.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct a PointFEvaluator that returns a new PointF on every evaluate call.
  /// To avoid creating an object for each evaluate call,
  /// PointFEvaluator\#PointFEvaluator(android.graphics.PointF) should be used
  /// whenever possible.
  PointFEvaluator()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/PointF;)V");

  /// from: public void <init>(android.graphics.PointF reuse)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a PointFEvaluator that modifies and returns <code>reuse</code>
  /// in \#evaluate(float, android.graphics.PointF, android.graphics.PointF) calls.
  /// The value returned from
  /// \#evaluate(float, android.graphics.PointF, android.graphics.PointF) should
  /// not be cached because it will change over time as the object is reused on each
  /// call.
  ///@param reuse A PointF to be modified and returned by evaluate.
  PointFEvaluator.ctor1(pointf_.PointF reuse)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [reuse.reference]).object);

  static final _id_evaluate = jniAccessors.getMethodIDOf(_classRef, "evaluate",
      "(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;");

  /// from: public android.graphics.PointF evaluate(float fraction, android.graphics.PointF startValue, android.graphics.PointF endValue)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This function returns the result of linearly interpolating the start and
  /// end PointF values, with <code>fraction</code> representing the proportion
  /// between the start and end values. The calculation is a simple parametric
  /// calculation on each of the separate components in the PointF objects
  /// (x, y).
  ///
  /// If \#PointFEvaluator(android.graphics.PointF) was used to construct
  /// this PointFEvaluator, the object returned will be the <code>reuse</code>
  /// passed into the constructor.
  ///
  ///@param fraction The fraction from the starting to the ending values
  ///@param startValue The start PointF
  ///@param endValue The end PointF
  ///@return A linear interpolation between the start and end values, given the
  ///         <code>fraction</code> parameter.
  pointf_.PointF evaluate(double fraction, pointf_.PointF startValue,
          pointf_.PointF endValue) =>
      pointf_.PointF.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_evaluate,
          jni.JniType.objectType,
          [fraction, startValue.reference, endValue.reference]).object);
}
