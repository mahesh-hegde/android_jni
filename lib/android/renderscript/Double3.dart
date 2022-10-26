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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.renderscript.Double3
///
/// Vector version of the basic double type.
/// Provides three double fields packed.
class Double3 extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/Double3");
  Double3.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_x = jniAccessors.getFieldIDOf(_classRef, "x", "D");

  /// from: public double x
  double get x => jniAccessors
      .getField(reference, _id_x, jni.JniType.doubleType)
      .doubleFloat;

  /// from: public double x
  set x(double value) => jniEnv.SetDoubleField(reference, _id_x, value);

  static final _id_y = jniAccessors.getFieldIDOf(_classRef, "y", "D");

  /// from: public double y
  double get y => jniAccessors
      .getField(reference, _id_y, jni.JniType.doubleType)
      .doubleFloat;

  /// from: public double y
  set y(double value) => jniEnv.SetDoubleField(reference, _id_y, value);

  static final _id_z = jniAccessors.getFieldIDOf(_classRef, "z", "D");

  /// from: public double z
  double get z => jniAccessors
      .getField(reference, _id_z, jni.JniType.doubleType)
      .doubleFloat;

  /// from: public double z
  set z(double value) => jniEnv.SetDoubleField(reference, _id_z, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Double3()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(DDD)V");

  /// from: public void <init>(double x, double y, double z)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Double3.ctor1(double x, double y, double z)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [x, y, z]).object);
}
