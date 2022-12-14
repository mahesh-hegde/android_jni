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

import "ColorFilter.dart" as colorfilter_;

import "ColorMatrix.dart" as colormatrix_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.ColorMatrixColorFilter
///
/// A color filter that transforms colors through a 4x5 color matrix. This filter
/// can be used to change the saturation of pixels, convert from YUV to RGB, etc.
///@see ColorMatrix
class ColorMatrixColorFilter extends colorfilter_.ColorFilter {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/ColorMatrixColorFilter");
  ColorMatrixColorFilter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/ColorMatrix;)V");

  /// from: public void <init>(android.graphics.ColorMatrix matrix)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a color filter that transforms colors through a 4x5 color matrix.
  ///@param matrix 4x5 matrix used to transform colors. It is copied into
  ///               the filter, so changes made to the matrix after the filter
  ///               is constructed will not be reflected in the filter.
  ///
  /// This value must never be {@code null}.
  ColorMatrixColorFilter.ctor1(colormatrix_.ColorMatrix matrix)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [matrix.reference]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "([F)V");

  /// from: public void <init>(float[] array)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a color filter that transforms colors through a 4x5 color matrix.
  ///@param array Array of floats used to transform colors, treated as a 4x5
  ///              matrix. The first 20 entries of the array are copied into
  ///              the filter. See ColorMatrix.
  ///
  /// This value must never be {@code null}.
  ColorMatrixColorFilter.ctor2(jni.JniObject array)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [array.reference]).object);

  static final _id_getColorMatrix = jniAccessors.getMethodIDOf(
      _classRef, "getColorMatrix", "(Landroid/graphics/ColorMatrix;)V");

  /// from: public void getColorMatrix(android.graphics.ColorMatrix colorMatrix)
  ///
  /// Copies the ColorMatrix from the filter into the passed ColorMatrix.
  ///@param colorMatrix Set to the current value of the filter's ColorMatrix.
  void getColorMatrix(colormatrix_.ColorMatrix colorMatrix) =>
      jniAccessors.callMethodWithArgs(reference, _id_getColorMatrix,
          jni.JniType.voidType, [colorMatrix.reference]).check();
}
