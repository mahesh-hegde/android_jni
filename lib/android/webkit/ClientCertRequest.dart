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

/// from: android.webkit.ClientCertRequest
///
/// ClientCertRequest: The user receives an instance of this class as
/// a parameter of WebViewClient\#onReceivedClientCertRequest.
/// The request includes the parameters to choose the client certificate,
/// such as the host name and the port number requesting the cert, the acceptable
/// key types and the principals.
///
/// The user should call one of the class methods to indicate how to deal
/// with the client certificate request. All methods should be called on
/// UI thread.
///
/// WebView caches the \#proceed and \#cancel responses in memory
/// and uses them to handle future client certificate requests for the same
/// host/port pair. The user can clear the cached data using
/// WebView\#clearClientCertPreferences.
class ClientCertRequest extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/ClientCertRequest");
  ClientCertRequest.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ClientCertRequest()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getKeyTypes = jniAccessors.getMethodIDOf(
      _classRef, "getKeyTypes", "()[Ljava/lang/String;");

  /// from: public abstract java.lang.String[] getKeyTypes()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the acceptable types of asymmetric keys.
  ///@return This value may be {@code null}.
  jni.JniObject getKeyTypes() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getKeyTypes, jni.JniType.objectType, []).object);

  static final _id_getPrincipals = jniAccessors.getMethodIDOf(
      _classRef, "getPrincipals", "()[Ljava/security/Principal;");

  /// from: public abstract java.security.Principal[] getPrincipals()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the acceptable certificate issuers for the certificate
  ///            matching the private key.
  ///@return This value may be {@code null}.
  jni.JniObject getPrincipals() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPrincipals, jni.JniType.objectType, []).object);

  static final _id_getHost =
      jniAccessors.getMethodIDOf(_classRef, "getHost", "()Ljava/lang/String;");

  /// from: public abstract java.lang.String getHost()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the host name of the server requesting the certificate.
  jni.JniString getHost() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getHost, jni.JniType.objectType, []).object);

  static final _id_getPort =
      jniAccessors.getMethodIDOf(_classRef, "getPort", "()I");

  /// from: public abstract int getPort()
  ///
  /// Returns the port number of the server requesting the certificate.
  int getPort() => jniAccessors.callMethodWithArgs(
      reference, _id_getPort, jni.JniType.intType, []).integer;

  static final _id_proceed = jniAccessors.getMethodIDOf(_classRef, "proceed",
      "(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V");

  /// from: public abstract void proceed(java.security.PrivateKey privateKey, java.security.cert.X509Certificate[] chain)
  ///
  /// Proceed with the specified private key and client certificate chain.
  /// Remember the user's positive choice and use it for future requests.
  void proceed(jni.JniObject privateKey, jni.JniObject chain) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_proceed,
          jni.JniType.voidType,
          [privateKey.reference, chain.reference]).check();

  static final _id_ignore =
      jniAccessors.getMethodIDOf(_classRef, "ignore", "()V");

  /// from: public abstract void ignore()
  ///
  /// Ignore the request for now. Do not remember user's choice.
  void ignore() => jniAccessors.callMethodWithArgs(
      reference, _id_ignore, jni.JniType.voidType, []).check();

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public abstract void cancel()
  ///
  /// Cancel this request. Remember the user's choice and use it for
  /// future requests.
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();
}
