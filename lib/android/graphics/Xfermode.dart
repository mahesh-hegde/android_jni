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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.Xfermode
///
/// Xfermode is the base class for objects that are called to implement custom
/// "transfer-modes" in the drawing pipeline. The static function Create(Modes)
/// can be called to return an instance of any of the predefined subclasses as
/// specified in the Modes enum. When an Xfermode is assigned to an Paint, then
/// objects drawn with that paint have the xfermode applied.
class Xfermode extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/graphics/Xfermode");
  Xfermode.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Xfermode()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}
