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

import "Shader.dart" as shader_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.LinearGradient
class LinearGradient extends shader_.Shader {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/LinearGradient");
  LinearGradient.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(FFFF[I[FLandroid/graphics/Shader\$TileMode;)V");

  /// from: public void <init>(float x0, float y0, float x1, float y1, int[] colors, float[] positions, android.graphics.Shader.TileMode tile)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a shader that draws a linear gradient along a line.
  ///@param x0 The x-coordinate for the start of the gradient line
  ///@param y0 The y-coordinate for the start of the gradient line
  ///@param x1 The x-coordinate for the end of the gradient line
  ///@param y1 The y-coordinate for the end of the gradient line
  ///@param colors The colors to be distributed along the gradient line
  /// This value must never be {@code null}.
  ///@param positions May be null. The relative positions [0..1] of
  ///                     each corresponding color in the colors array. If this is null,
  ///                     the the colors are distributed evenly along the gradient line.
  /// This value may be {@code null}.
  ///@param tile The Shader tiling mode
  ///
  /// This value must never be {@code null}.
  LinearGradient.ctor1(
      double x0,
      double y0,
      double x1,
      double y1,
      jni.JniObject colors,
      jni.JniObject positions,
      shader_.Shader_TileMode tile)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, [
          x0,
          y0,
          x1,
          y1,
          colors.reference,
          positions.reference,
          tile.reference
        ]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(FFFFIILandroid/graphics/Shader\$TileMode;)V");

  /// from: public void <init>(float x0, float y0, float x1, float y1, int color0, int color1, android.graphics.Shader.TileMode tile)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a shader that draws a linear gradient along a line.
  ///@param x0 The x-coordinate for the start of the gradient line
  ///@param y0 The y-coordinate for the start of the gradient line
  ///@param x1 The x-coordinate for the end of the gradient line
  ///@param y1 The y-coordinate for the end of the gradient line
  ///@param color0 The color at the start of the gradient line.
  ///@param color1 The color at the end of the gradient line.
  ///@param tile The Shader tiling mode
  ///
  /// This value must never be {@code null}.
  LinearGradient.ctor2(double x0, double y0, double x1, double y1, int color0,
      int color1, shader_.Shader_TileMode tile)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [x0, y0, x1, y1, color0, color1, tile.reference]).object);
}
