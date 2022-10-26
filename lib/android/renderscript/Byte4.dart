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

/// from: android.renderscript.Byte4
///
/// Class for exposing the native RenderScript byte4 type back to the Android system.
class Byte4 extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/Byte4");
  Byte4.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_w = jniAccessors.getFieldIDOf(_classRef, "w", "B");

  /// from: public byte w
  int get w =>
      jniAccessors.getField(reference, _id_w, jni.JniType.byteType).byte;

  /// from: public byte w
  set w(int value) => jniEnv.SetByteField(reference, _id_w, value);

  static final _id_x = jniAccessors.getFieldIDOf(_classRef, "x", "B");

  /// from: public byte x
  int get x =>
      jniAccessors.getField(reference, _id_x, jni.JniType.byteType).byte;

  /// from: public byte x
  set x(int value) => jniEnv.SetByteField(reference, _id_x, value);

  static final _id_y = jniAccessors.getFieldIDOf(_classRef, "y", "B");

  /// from: public byte y
  int get y =>
      jniAccessors.getField(reference, _id_y, jni.JniType.byteType).byte;

  /// from: public byte y
  set y(int value) => jniEnv.SetByteField(reference, _id_y, value);

  static final _id_z = jniAccessors.getFieldIDOf(_classRef, "z", "B");

  /// from: public byte z
  int get z =>
      jniAccessors.getField(reference, _id_z, jni.JniType.byteType).byte;

  /// from: public byte z
  set z(int value) => jniEnv.SetByteField(reference, _id_z, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Byte4()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(BBBB)V");

  /// from: public void <init>(byte initX, byte initY, byte initZ, byte initW)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Byte4.ctor1(int initX, int initY, int initZ, int initW)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [initX, initY, initZ, initW]).object);
}
