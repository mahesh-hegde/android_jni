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

/// from: android.content.OperationApplicationException
///
/// Thrown when an application of a ContentProviderOperation fails due the specified
/// constraints.
class OperationApplicationException extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/OperationApplicationException");
  OperationApplicationException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  OperationApplicationException()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String message)
  /// The returned object must be deleted after use, by calling the `delete` method.
  OperationApplicationException.ctor1(jni.JniString message)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [message.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;)V");

  /// from: public void <init>(java.lang.String message, java.lang.Throwable cause)
  /// The returned object must be deleted after use, by calling the `delete` method.
  OperationApplicationException.ctor2(
      jni.JniString message, jni.JniObject cause)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [message.reference, cause.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/Throwable;)V");

  /// from: public void <init>(java.lang.Throwable cause)
  /// The returned object must be deleted after use, by calling the `delete` method.
  OperationApplicationException.ctor3(jni.JniObject cause)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [cause.reference]).object);

  static final _id_ctor4 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int numSuccessfulYieldPoints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  OperationApplicationException.ctor4(int numSuccessfulYieldPoints)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [numSuccessfulYieldPoints]).object);

  static final _id_ctor5 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;I)V");

  /// from: public void <init>(java.lang.String message, int numSuccessfulYieldPoints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  OperationApplicationException.ctor5(
      jni.JniString message, int numSuccessfulYieldPoints)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor5,
            [message.reference, numSuccessfulYieldPoints]).object);

  static final _id_getNumSuccessfulYieldPoints = jniAccessors.getMethodIDOf(
      _classRef, "getNumSuccessfulYieldPoints", "()I");

  /// from: public int getNumSuccessfulYieldPoints()
  int getNumSuccessfulYieldPoints() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getNumSuccessfulYieldPoints,
      jni.JniType.intType, []).integer;
}
