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

/// from: android.net.ParseException
///
/// Thrown when parsing a URL fails.
class ParseException extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/ParseException");
  ParseException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_response =
      jniAccessors.getFieldIDOf(_classRef, "response", "Ljava/lang/String;");

  /// from: public java.lang.String response
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString get response => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_response, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String response
  /// The returned object must be deleted after use, by calling the `delete` method.
  set response(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_response, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: void <init>(java.lang.String response)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ParseException(jni.JniString response)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [response.reference]).object);
}