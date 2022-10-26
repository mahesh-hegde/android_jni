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

/// from: android.util.MutableChar
///
/// @deprecated This class will be removed from a future version of the Android API.
class MutableChar extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/util/MutableChar");
  MutableChar.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_value = jniAccessors.getFieldIDOf(_classRef, "value", "C");

  /// from: public char value
  int get value =>
      jniAccessors.getField(reference, _id_value, jni.JniType.charType).char;

  /// from: public char value
  set value(int value) => jniEnv.SetCharField(reference, _id_value, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(C)V");

  /// from: public void <init>(char value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MutableChar(int value)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [value]).object);
}
