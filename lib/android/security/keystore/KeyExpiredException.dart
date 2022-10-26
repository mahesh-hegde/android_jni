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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.security.keystore.KeyExpiredException
///
/// Indicates that a cryptographic operation failed because the employed key's validity end date
/// is in the past.
class KeyExpiredException extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/security/keystore/KeyExpiredException");
  KeyExpiredException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new {@code KeyExpiredException} without detail message and cause.
  KeyExpiredException()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String message)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new {@code KeyExpiredException} with the provided detail message and no cause.
  KeyExpiredException.ctor1(jni.JniString message)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [message.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;)V");

  /// from: public void <init>(java.lang.String message, java.lang.Throwable cause)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new {@code KeyExpiredException} with the provided detail message and cause.
  KeyExpiredException.ctor2(jni.JniString message, jni.JniObject cause)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [message.reference, cause.reference]).object);
}
