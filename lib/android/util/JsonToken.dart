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

/// from: android.util.JsonToken
///
/// A structure, name or value type in a JSON-encoded string.
class JsonToken extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/util/JsonToken");
  JsonToken.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/util/JsonToken;");

  /// from: static public android.util.JsonToken[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef, "valueOf", "(Ljava/lang/String;)Landroid/util/JsonToken;");

  /// from: static public android.util.JsonToken valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static JsonToken valueOf(jni.JniString name) =>
      JsonToken.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_valueOf, jni.JniType.objectType, [name.reference]).object);
}
