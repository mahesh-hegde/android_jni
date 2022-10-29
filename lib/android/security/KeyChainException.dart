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

/// from: android.security.KeyChainException
///
/// Thrown on problems accessing the KeyChain.
class KeyChainException extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/security/KeyChainException");
  KeyChainException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new {@code KeyChainException} that includes the
  /// current stack trace.
  KeyChainException()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String detailMessage)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new {@code KeyChainException} with the current stack
  /// trace and the specified detail message.
  ///@param detailMessage the detail message for this exception.
  KeyChainException.ctor1(jni.JniString detailMessage)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [detailMessage.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;)V");

  /// from: public void <init>(java.lang.String message, java.lang.Throwable cause)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new {@code KeyChainException} with the current stack
  /// trace, the specified detail message and the specified cause.
  ///@param message the detail message for this exception.
  ///@param cause the cause of this exception, may be {@code null}.
  KeyChainException.ctor2(jni.JniString message, jni.JniObject cause)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [message.reference, cause.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/Throwable;)V");

  /// from: public void <init>(java.lang.Throwable cause)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new {@code KeyChainException} with the current stack
  /// trace and the specified cause.
  ///@param cause the cause of this exception, may be {@code null}.
  KeyChainException.ctor3(jni.JniObject cause)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [cause.reference]).object);
}
