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

/// from: android.net.MailTo
///
/// MailTo URL parser
///
/// This class parses a mailto scheme URL and then can be queried for
/// the parsed parameters. This implements RFC 2368.
class MailTo extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/net/MailTo");
  MailTo.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String MAILTO_SCHEME
  static const MAILTO_SCHEME = "mailto:";

  static final _id_isMailTo = jniAccessors.getStaticMethodIDOf(
      _classRef, "isMailTo", "(Ljava/lang/String;)Z");

  /// from: static public boolean isMailTo(java.lang.String url)
  ///
  /// Test to see if the given string is a mailto URL
  ///@param url string to be tested
  ///@return true if the string is a mailto URL
  static bool isMailTo(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isMailTo,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_parse = jniAccessors.getStaticMethodIDOf(
      _classRef, "parse", "(Ljava/lang/String;)Landroid/net/MailTo;");

  /// from: static public android.net.MailTo parse(java.lang.String url)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Parse and decode a mailto scheme string. This parser implements
  /// RFC 2368. The returned object can be queried for the parsed parameters.
  ///@param url String containing a mailto URL
  ///@return MailTo object
  ///@exception ParseException if the scheme is not a mailto URL
  static MailTo parse(jni.JniString url) =>
      MailTo.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef, _id_parse,
          jni.JniType.objectType, [url.reference]).object);

  static final _id_getTo =
      jniAccessors.getMethodIDOf(_classRef, "getTo", "()Ljava/lang/String;");

  /// from: public java.lang.String getTo()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the To address line from the parsed mailto URL. This could be
  /// several email address that are comma-space delimited.
  /// If no To line was specified, then null is return
  ///@return comma delimited email addresses or null
  jni.JniString getTo() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTo, jni.JniType.objectType, []).object);

  static final _id_getCc =
      jniAccessors.getMethodIDOf(_classRef, "getCc", "()Ljava/lang/String;");

  /// from: public java.lang.String getCc()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the CC address line from the parsed mailto URL. This could be
  /// several email address that are comma-space delimited.
  /// If no CC line was specified, then null is return
  ///@return comma delimited email addresses or null
  jni.JniString getCc() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCc, jni.JniType.objectType, []).object);

  static final _id_getSubject = jniAccessors.getMethodIDOf(
      _classRef, "getSubject", "()Ljava/lang/String;");

  /// from: public java.lang.String getSubject()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the subject line from the parsed mailto URL.
  /// If no subject line was specified, then null is return
  ///@return subject or null
  jni.JniString getSubject() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSubject, jni.JniType.objectType, []).object);

  static final _id_getBody =
      jniAccessors.getMethodIDOf(_classRef, "getBody", "()Ljava/lang/String;");

  /// from: public java.lang.String getBody()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the body line from the parsed mailto URL.
  /// If no body line was specified, then null is return
  ///@return body or null
  jni.JniString getBody() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getBody, jni.JniType.objectType, []).object);

  static final _id_getHeaders =
      jniAccessors.getMethodIDOf(_classRef, "getHeaders", "()Ljava/util/Map;");

  /// from: public java.util.Map<java.lang.String,java.lang.String> getHeaders()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve all the parsed email headers from the mailto URL
  ///@return map containing all parsed values
  jni.JniObject getHeaders() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getHeaders, jni.JniType.objectType, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
