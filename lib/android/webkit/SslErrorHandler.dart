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

import "../os/Handler.dart" as handler_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.webkit.SslErrorHandler
///
/// Represents a request for handling an SSL error. Instances of this class are
/// created by the WebView and passed to
/// WebViewClient\#onReceivedSslError. The host application must call
/// either \#proceed or \#cancel to set the WebView's response
/// to the request.
class SslErrorHandler extends handler_.Handler {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/SslErrorHandler");
  SslErrorHandler.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide Only for use by WebViewProvider implementations.
  SslErrorHandler()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_proceed =
      jniAccessors.getMethodIDOf(_classRef, "proceed", "()V");

  /// from: public void proceed()
  ///
  /// Proceed with the SSL certificate.
  ///
  /// It is not recommended to proceed past SSL errors and this method should
  /// generally not be used; see WebViewClient\#onReceivedSslError for
  /// more information.
  void proceed() => jniAccessors.callMethodWithArgs(
      reference, _id_proceed, jni.JniType.voidType, []).check();

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public void cancel()
  ///
  /// Cancel this request and all pending requests for the WebView that had
  /// the error.
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();
}