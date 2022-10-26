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

/// from: android.renderscript.Int4
///
/// Vector version of the basic int type.
/// Provides four int fields packed.
class Int4 extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/renderscript/Int4");
  Int4.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_w = jniAccessors.getFieldIDOf(_classRef, "w", "I");

  /// from: public int w
  int get w =>
      jniAccessors.getField(reference, _id_w, jni.JniType.intType).integer;

  /// from: public int w
  set w(int value) => jniEnv.SetIntField(reference, _id_w, value);

  static final _id_x = jniAccessors.getFieldIDOf(_classRef, "x", "I");

  /// from: public int x
  int get x =>
      jniAccessors.getField(reference, _id_x, jni.JniType.intType).integer;

  /// from: public int x
  set x(int value) => jniEnv.SetIntField(reference, _id_x, value);

  static final _id_y = jniAccessors.getFieldIDOf(_classRef, "y", "I");

  /// from: public int y
  int get y =>
      jniAccessors.getField(reference, _id_y, jni.JniType.intType).integer;

  /// from: public int y
  set y(int value) => jniEnv.SetIntField(reference, _id_y, value);

  static final _id_z = jniAccessors.getFieldIDOf(_classRef, "z", "I");

  /// from: public int z
  int get z =>
      jniAccessors.getField(reference, _id_z, jni.JniType.intType).integer;

  /// from: public int z
  set z(int value) => jniEnv.SetIntField(reference, _id_z, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Int4()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(IIII)V");

  /// from: public void <init>(int x, int y, int z, int w)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Int4.ctor1(int x, int y, int z, int w)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [x, y, z, w]).object);
}