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

import "MaskFilter.dart" as maskfilter_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.BlurMaskFilter
///
/// This takes a mask, and blurs its edge by the specified radius. Whether or
/// or not to include the original mask, and whether the blur goes outside,
/// inside, or straddles, the original mask's border, is controlled by the
/// Blur enum.
class BlurMaskFilter extends maskfilter_.MaskFilter {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/BlurMaskFilter");
  BlurMaskFilter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(FLandroid/graphics/BlurMaskFilter\$Blur;)V");

  /// from: public void <init>(float radius, android.graphics.BlurMaskFilter.Blur style)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a blur maskfilter.
  ///@param radius The radius to extend the blur from the original mask. Must be > 0.
  ///@param style The Blur to use
  ///@return The new blur maskfilter
  BlurMaskFilter.ctor1(double radius, BlurMaskFilter_Blur style)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [radius, style.reference]).object);
}

/// from: android.graphics.BlurMaskFilter$Blur
class BlurMaskFilter_Blur extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/BlurMaskFilter\$Blur");
  BlurMaskFilter_Blur.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/graphics/BlurMaskFilter\$Blur;");

  /// from: static public android.graphics.BlurMaskFilter.Blur[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(_classRef,
      "valueOf", "(Ljava/lang/String;)Landroid/graphics/BlurMaskFilter\$Blur;");

  /// from: static public android.graphics.BlurMaskFilter.Blur valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static BlurMaskFilter_Blur valueOf(jni.JniString name) =>
      BlurMaskFilter_Blur.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_valueOf,
          jni.JniType.objectType,
          [name.reference]).object);
}
