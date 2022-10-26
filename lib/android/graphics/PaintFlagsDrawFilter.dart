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

import "DrawFilter.dart" as drawfilter_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.PaintFlagsDrawFilter
class PaintFlagsDrawFilter extends drawfilter_.DrawFilter {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/PaintFlagsDrawFilter");
  PaintFlagsDrawFilter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int clearBits, int setBits)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Subclass of DrawFilter that affects every paint by first clearing
  /// the specified clearBits in the paint's flags, and then setting the
  /// specified setBits in the paint's flags.
  ///@param clearBits These bits will be cleared in the paint's flags
  ///@param setBits These bits will be set in the paint's flags
  PaintFlagsDrawFilter.ctor1(int clearBits, int setBits)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [clearBits, setBits]).object);
}