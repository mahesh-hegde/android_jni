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

import "Animation.dart" as animation_;

import "../../content/Context.dart" as context_;

import "../../util/AttributeSet.dart" as attributeset_;

import "Transformation.dart" as transformation_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.animation.TranslateAnimation
///
/// An animation that controls the position of an object. See the
/// android.view.animation full package description for details and
/// sample code.
class TranslateAnimation extends animation_.Animation {
  static final _classRef =
      jniAccessors.getClassOf("android/view/animation/TranslateAnimation");
  TranslateAnimation.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor used when a TranslateAnimation is loaded from a resource.
  ///@param context Application context to use
  ///@param attrs Attribute set from which to read values
  TranslateAnimation.ctor1(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(FFFF)V");

  /// from: public void <init>(float fromXDelta, float toXDelta, float fromYDelta, float toYDelta)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor to use when building a TranslateAnimation from code
  ///@param fromXDelta Change in X coordinate to apply at the start of the
  ///        animation
  ///@param toXDelta Change in X coordinate to apply at the end of the
  ///        animation
  ///@param fromYDelta Change in Y coordinate to apply at the start of the
  ///        animation
  ///@param toYDelta Change in Y coordinate to apply at the end of the
  ///        animation
  TranslateAnimation.ctor2(
      double fromXDelta, double toXDelta, double fromYDelta, double toYDelta)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [fromXDelta, toXDelta, fromYDelta, toYDelta]).object);

  static final _id_ctor3 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(IFIFIFIF)V");

  /// from: public void <init>(int fromXType, float fromXValue, int toXType, float toXValue, int fromYType, float fromYValue, int toYType, float toYValue)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor to use when building a TranslateAnimation from code
  ///@param fromXType Specifies how fromXValue should be interpreted. One of
  ///        Animation.ABSOLUTE, Animation.RELATIVE_TO_SELF, or
  ///        Animation.RELATIVE_TO_PARENT.
  ///@param fromXValue Change in X coordinate to apply at the start of the
  ///        animation. This value can either be an absolute number if fromXType
  ///        is ABSOLUTE, or a percentage (where 1.0 is 100%) otherwise.
  ///@param toXType Specifies how toXValue should be interpreted. One of
  ///        Animation.ABSOLUTE, Animation.RELATIVE_TO_SELF, or
  ///        Animation.RELATIVE_TO_PARENT.
  ///@param toXValue Change in X coordinate to apply at the end of the
  ///        animation. This value can either be an absolute number if toXType
  ///        is ABSOLUTE, or a percentage (where 1.0 is 100%) otherwise.
  ///@param fromYType Specifies how fromYValue should be interpreted. One of
  ///        Animation.ABSOLUTE, Animation.RELATIVE_TO_SELF, or
  ///        Animation.RELATIVE_TO_PARENT.
  ///@param fromYValue Change in Y coordinate to apply at the start of the
  ///        animation. This value can either be an absolute number if fromYType
  ///        is ABSOLUTE, or a percentage (where 1.0 is 100%) otherwise.
  ///@param toYType Specifies how toYValue should be interpreted. One of
  ///        Animation.ABSOLUTE, Animation.RELATIVE_TO_SELF, or
  ///        Animation.RELATIVE_TO_PARENT.
  ///@param toYValue Change in Y coordinate to apply at the end of the
  ///        animation. This value can either be an absolute number if toYType
  ///        is ABSOLUTE, or a percentage (where 1.0 is 100%) otherwise.
  TranslateAnimation.ctor3(
      int fromXType,
      double fromXValue,
      int toXType,
      double toXValue,
      int fromYType,
      double fromYValue,
      int toYType,
      double toYValue)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          fromXType,
          fromXValue,
          toXType,
          toXValue,
          fromYType,
          fromYValue,
          toYType,
          toYValue
        ]).object);

  static final _id_applyTransformation = jniAccessors.getMethodIDOf(_classRef,
      "applyTransformation", "(FLandroid/view/animation/Transformation;)V");

  /// from: protected void applyTransformation(float interpolatedTime, android.view.animation.Transformation t)
  void applyTransformation(
          double interpolatedTime, transformation_.Transformation t) =>
      jniAccessors.callMethodWithArgs(reference, _id_applyTransformation,
          jni.JniType.voidType, [interpolatedTime, t.reference]).check();

  static final _id_initialize =
      jniAccessors.getMethodIDOf(_classRef, "initialize", "(IIII)V");

  /// from: public void initialize(int width, int height, int parentWidth, int parentHeight)
  void initialize(int width, int height, int parentWidth, int parentHeight) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_initialize,
          jni.JniType.voidType,
          [width, height, parentWidth, parentHeight]).check();
}
