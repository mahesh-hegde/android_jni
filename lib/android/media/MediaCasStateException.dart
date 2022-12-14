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

/// from: android.media.MediaCasStateException
///
/// Base class for MediaCas runtime exceptions
class MediaCasStateException extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/MediaCasStateException");
  MediaCasStateException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getDiagnosticInfo = jniAccessors.getMethodIDOf(
      _classRef, "getDiagnosticInfo", "()Ljava/lang/String;");

  /// from: public java.lang.String getDiagnosticInfo()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a developer-readable diagnostic information string
  /// associated with the exception. Do not show this to end-users,
  /// since this string will not be localized or generally comprehensible
  /// to end-users.
  ///@return This value will never be {@code null}.
  jni.JniString getDiagnosticInfo() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDiagnosticInfo, jni.JniType.objectType, []).object);
}
