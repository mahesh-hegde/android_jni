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

/// from: android.renderscript.Long2
///
/// Vector version of the basic long type.
/// Provides two long fields packed.
class Long2 extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/Long2");
  Long2.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_x = jniAccessors.getFieldIDOf(_classRef, "x", "J");

  /// from: public long x
  int get x =>
      jniAccessors.getField(reference, _id_x, jni.JniType.longType).long;

  /// from: public long x
  set x(int value) => jniEnv.SetLongField(reference, _id_x, value);

  static final _id_y = jniAccessors.getFieldIDOf(_classRef, "y", "J");

  /// from: public long y
  int get y =>
      jniAccessors.getField(reference, _id_y, jni.JniType.longType).long;

  /// from: public long y
  set y(int value) => jniEnv.SetLongField(reference, _id_y, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Long2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(JJ)V");

  /// from: public void <init>(long x, long y)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Long2.ctor1(int x, int y)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [x, y]).object);
}
