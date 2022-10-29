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

import "Xfermode.dart" as xfermode_;

import "PorterDuff.dart" as porterduff_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.PorterDuffXfermode
///
/// Specialized implementation of Paint's
/// Paint\#setXfermode(Xfermode) transfer mode. Refer to the
/// documentation of the PorterDuff.Mode enum for more
/// information on the available alpha compositing and blending modes.
///
class PorterDuffXfermode extends xfermode_.Xfermode {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/PorterDuffXfermode");
  PorterDuffXfermode.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/PorterDuff\$Mode;)V");

  /// from: public void <init>(android.graphics.PorterDuff.Mode mode)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an xfermode that uses the specified porter-duff mode.
  ///@param mode The porter-duff mode that is applied
  PorterDuffXfermode.ctor1(porterduff_.PorterDuff_Mode mode)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [mode.reference]).object);
}
