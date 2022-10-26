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

/// from: android.icu.util.IllformedLocaleException
///
/// Thrown by methods in ULocale and ULocale.Builder to
/// indicate that an argument is not a well-formed BCP 47 tag.
///@see ULocale
class IllformedLocaleException extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/util/IllformedLocaleException");
  IllformedLocaleException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new <code>IllformedLocaleException</code> with no
  /// detail message and -1 as the error index.
  IllformedLocaleException()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String message)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new <code>IllformedLocaleException</code> with the
  /// given message and -1 as the error index.
  ///@param message the message
  IllformedLocaleException.ctor1(jni.JniString message)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [message.reference]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;I)V");

  /// from: public void <init>(java.lang.String message, int errorIndex)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new <code>IllformedLocaleException</code> with the
  /// given message and the error index.  The error index is the approximate
  /// offset from the start of the ill-formed value to the point where the
  /// parse first detected an error.  A negative error index value indicates
  /// either the error index is not applicable or unknown.
  ///@param message the message
  ///@param errorIndex the index
  IllformedLocaleException.ctor2(jni.JniString message, int errorIndex)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [message.reference, errorIndex]).object);

  static final _id_getErrorIndex =
      jniAccessors.getMethodIDOf(_classRef, "getErrorIndex", "()I");

  /// from: public int getErrorIndex()
  ///
  /// Returns the index where the error was found. A negative value indicates
  /// either the error index is not applicable or unknown.
  ///@return the error index
  int getErrorIndex() => jniAccessors.callMethodWithArgs(
      reference, _id_getErrorIndex, jni.JniType.intType, []).integer;
}