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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.StringPrepParseException
///
/// Exception that signals an error has occurred while parsing the
/// input to StringPrep or IDNA.
///@author Ram Viswanadha
class StringPrepParseException extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/StringPrepParseException");
  StringPrepParseException.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ACE_PREFIX_ERROR
  ///
  ///
  static const ACE_PREFIX_ERROR = 6;

  /// from: static public final int BUFFER_OVERFLOW_ERROR
  ///
  ///
  static const BUFFER_OVERFLOW_ERROR = 9;

  /// from: static public final int CHECK_BIDI_ERROR
  ///
  ///
  static const CHECK_BIDI_ERROR = 4;

  /// from: static public final int DOMAIN_NAME_TOO_LONG_ERROR
  ///
  ///
  static const DOMAIN_NAME_TOO_LONG_ERROR = 11;

  /// from: static public final int ILLEGAL_CHAR_FOUND
  ///
  ///
  static const ILLEGAL_CHAR_FOUND = 1;

  /// from: static public final int INVALID_CHAR_FOUND
  ///
  ///
  static const INVALID_CHAR_FOUND = 0;

  /// from: static public final int LABEL_TOO_LONG_ERROR
  ///
  ///
  static const LABEL_TOO_LONG_ERROR = 8;

  /// from: static public final int PROHIBITED_ERROR
  ///
  ///
  static const PROHIBITED_ERROR = 2;

  /// from: static public final int STD3_ASCII_RULES_ERROR
  ///
  ///
  static const STD3_ASCII_RULES_ERROR = 5;

  /// from: static public final int UNASSIGNED_ERROR
  ///
  ///
  static const UNASSIGNED_ERROR = 3;

  /// from: static public final int VERIFICATION_ERROR
  ///
  ///
  static const VERIFICATION_ERROR = 7;

  /// from: static public final int ZERO_LENGTH_LABEL
  ///
  ///
  static const ZERO_LENGTH_LABEL = 10;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;I)V");

  /// from: public void <init>(java.lang.String message, int error)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct a ParseException object with the given message
  /// and error code
  ///@param message A string describing the type of error that occurred
  ///@param error The error that has occurred
  StringPrepParseException(jni.JniString message, int error)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [message.reference, error]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;ILjava/lang/String;I)V");

  /// from: public void <init>(java.lang.String message, int error, java.lang.String rules, int pos)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct a ParseException object with the given message and
  /// error code
  ///@param message A string describing the type of error that occurred
  ///@param error The error that has occurred
  ///@param rules The input rules string
  ///@param pos The position of error in the rules string
  StringPrepParseException.ctor1(
      jni.JniString message, int error, jni.JniString rules, int pos)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [message.reference, error, rules.reference, pos]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;ILjava/lang/String;II)V");

  /// from: public void <init>(java.lang.String message, int error, java.lang.String rules, int pos, int lineNumber)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct  a ParseException object with the given message and error code
  ///@param message A string describing the type of error that occurred
  ///@param error The error that has occurred
  ///@param rules The input rules string
  ///@param pos The position of error in the rules string
  ///@param lineNumber The line number at which the error has occurred.
  ///                   If the parse engine is not using this field, it should set it to zero.  Otherwise
  ///                   it should be a positive integer. The default value of this field
  ///                   is -1. It will be set to 0 if the code populating this struct is not
  ///                   using line numbers.
  StringPrepParseException.ctor2(jni.JniString message, int error,
      jni.JniString rules, int pos, int lineNumber)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, [
          message.reference,
          error,
          rules.reference,
          pos,
          lineNumber
        ]).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object other)
  ///
  /// Compare this ParseException to another and evaluate if they are equal.
  /// The comparison works only on the type of error and does not compare
  /// the rules strings, if any, for equality.
  ///@param other The exception that this object should be compared to
  ///@return true if the objects are equal, false if unequal
  bool equals1(jni.JniObject other) => jniAccessors.callMethodWithArgs(
      reference,
      _id_equals1,
      jni.JniType.booleanType,
      [other.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// Mock implementation of hashCode(). This implementation always returns a constant
  /// value. When Java assertion is enabled, this method triggers an assertion failure.
  ///@deprecated This API is ICU internal only.
  ///@hide original deprecated declaration
  ///@hide draft / provisional / internal are hidden on Android
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the position of error in the rules string
  ///@return String
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_getError =
      jniAccessors.getMethodIDOf(_classRef, "getError", "()I");

  /// from: public int getError()
  ///
  /// Returns the error code of this exception.
  /// This method is only used for testing to verify the error.
  ///@return The error code
  int getError() => jniAccessors.callMethodWithArgs(
      reference, _id_getError, jni.JniType.intType, []).integer;
}
