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

import "MeasureUnit.dart" as measureunit_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.util.TimeUnit
///
/// Measurement unit for time units.
///@see TimeUnit
///@author markdavis
class TimeUnit extends measureunit_.MeasureUnit {
  static final _classRef = jniAccessors.getClassOf("android/icu/util/TimeUnit");
  TimeUnit.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: void <init>(java.lang.String type, java.lang.String code)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TimeUnit(jni.JniString type, jni.JniString code)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [type.reference, code.reference]).object);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/icu/util/TimeUnit;");

  /// from: static public android.icu.util.TimeUnit[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the available values
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);
}