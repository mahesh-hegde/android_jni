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

import "PathEffect.dart" as patheffect_;

import "Path.dart" as path_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.PathDashPathEffect
class PathDashPathEffect extends patheffect_.PathEffect {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/PathDashPathEffect");
  PathDashPathEffect.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect\$Style;)V");

  /// from: public void <init>(android.graphics.Path shape, float advance, float phase, android.graphics.PathDashPathEffect.Style style)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Dash the drawn path by stamping it with the specified shape. This only
  /// applies to drawings when the paint's style is STROKE or STROKE_AND_FILL.
  /// If the paint's style is FILL, then this effect is ignored. The paint's
  /// strokeWidth does not affect the results.
  ///@param shape The path to stamp along
  ///@param advance spacing between each stamp of shape
  ///@param phase amount to offset before the first shape is stamped
  ///@param style how to transform the shape at each position as it is stamped
  PathDashPathEffect.ctor1(path_.Path shape, double advance, double phase,
      PathDashPathEffect_Style style)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [shape.reference, advance, phase, style.reference]).object);
}

/// from: android.graphics.PathDashPathEffect$Style
class PathDashPathEffect_Style extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/PathDashPathEffect\$Style");
  PathDashPathEffect_Style.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/graphics/PathDashPathEffect\$Style;");

  /// from: static public android.graphics.PathDashPathEffect.Style[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "valueOf",
      "(Ljava/lang/String;)Landroid/graphics/PathDashPathEffect\$Style;");

  /// from: static public android.graphics.PathDashPathEffect.Style valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static PathDashPathEffect_Style valueOf(jni.JniString name) =>
      PathDashPathEffect_Style.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_valueOf,
          jni.JniType.objectType,
          [name.reference]).object);
}
