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

import "PathMotion.dart" as pathmotion_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../graphics/Path.dart" as path_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.transition.PatternPathMotion
///
/// A PathMotion that takes a Path pattern and applies it to the separation between two points.
/// The starting point of the Path will be moved to the origin and the end point will be scaled
/// and rotated so that it matches with the target end point.
/// This may be used in XML as an element inside a transition.
///
/// <pre>{@code
/// <changeBounds>
///     <patternPathMotion android:patternPathData="M0 0 L0 100 L100 100"/>
/// </changeBounds>}
/// </pre>
class PatternPathMotion extends pathmotion_.PathMotion {
  static final _classRef =
      jniAccessors.getClassOf("android/transition/PatternPathMotion");
  PatternPathMotion.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a PatternPathMotion with a straight-line pattern.
  PatternPathMotion()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  PatternPathMotion.ctor1(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/Path;)V");

  /// from: public void <init>(android.graphics.Path patternPath)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a PatternPathMotion with the Path defining a pattern of motion between two
  /// coordinates. The pattern will be translated, rotated, and scaled to fit between the start
  /// and end points. The pattern must not be empty and must have the end point differ from the
  /// start point.
  ///@param patternPath A Path to be used as a pattern for two-dimensional motion.
  PatternPathMotion.ctor2(path_.Path patternPath)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [patternPath.reference]).object);

  static final _id_getPatternPath = jniAccessors.getMethodIDOf(
      _classRef, "getPatternPath", "()Landroid/graphics/Path;");

  /// from: public android.graphics.Path getPatternPath()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the Path defining a pattern of motion between two coordinates.
  /// The pattern will be translated, rotated, and scaled to fit between the start and end points.
  /// The pattern must not be empty and must have the end point differ from the start point.
  ///@return the Path defining a pattern of motion between two coordinates.
  ///@attr ref android.R.styleable\#PatternPathMotion_patternPathData
  path_.Path getPatternPath() =>
      path_.Path.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPatternPath, jni.JniType.objectType, []).object);

  static final _id_setPatternPath = jniAccessors.getMethodIDOf(
      _classRef, "setPatternPath", "(Landroid/graphics/Path;)V");

  /// from: public void setPatternPath(android.graphics.Path patternPath)
  ///
  /// Sets the Path defining a pattern of motion between two coordinates.
  /// The pattern will be translated, rotated, and scaled to fit between the start and end points.
  /// The pattern must not be empty and must have the end point differ from the start point.
  ///@param patternPath A Path to be used as a pattern for two-dimensional motion.
  ///@attr ref android.R.styleable\#PatternPathMotion_patternPathData
  void setPatternPath(path_.Path patternPath) =>
      jniAccessors.callMethodWithArgs(reference, _id_setPatternPath,
          jni.JniType.voidType, [patternPath.reference]).check();

  static final _id_getPath = jniAccessors.getMethodIDOf(
      _classRef, "getPath", "(FFFF)Landroid/graphics/Path;");

  /// from: public android.graphics.Path getPath(float startX, float startY, float endX, float endY)
  /// The returned object must be deleted after use, by calling the `delete` method.
  path_.Path getPath(double startX, double startY, double endX, double endY) =>
      path_.Path.fromRef(jniAccessors.callMethodWithArgs(reference, _id_getPath,
          jni.JniType.objectType, [startX, startY, endX, endY]).object);
}