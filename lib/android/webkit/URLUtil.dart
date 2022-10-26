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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.webkit.URLUtil
class URLUtil extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/webkit/URLUtil");
  URLUtil.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  URLUtil()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_guessUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "guessUrl", "(Ljava/lang/String;)Ljava/lang/String;");

  /// from: static public java.lang.String guessUrl(java.lang.String inUrl)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Cleans up (if possible) user-entered web addresses
  static jni.JniString guessUrl(jni.JniString inUrl) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_guessUrl, jni.JniType.objectType, [inUrl.reference]).object);

  static final _id_composeSearchUrl = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "composeSearchUrl",
      "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;");

  /// from: static public java.lang.String composeSearchUrl(java.lang.String inQuery, java.lang.String template, java.lang.String queryPlaceHolder)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniString composeSearchUrl(jni.JniString inQuery,
          jni.JniString template, jni.JniString queryPlaceHolder) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_composeSearchUrl, jni.JniType.objectType, [
        inQuery.reference,
        template.reference,
        queryPlaceHolder.reference
      ]).object);

  static final _id_decode =
      jniAccessors.getStaticMethodIDOf(_classRef, "decode", "([B)[B");

  /// from: static public byte[] decode(byte[] url)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject decode(jni.JniObject url) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_decode, jni.JniType.objectType, [url.reference]).object);

  static final _id_isAssetUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isAssetUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isAssetUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is an asset file.
  static bool isAssetUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isAssetUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_isCookielessProxyUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isCookielessProxyUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isCookielessProxyUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is a proxy url to allow cookieless network
  /// requests from a file url.
  ///@deprecated Cookieless proxy is no longer supported.
  static bool isCookielessProxyUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isCookielessProxyUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_isFileUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isFileUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isFileUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is a local file.
  static bool isFileUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isFileUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_isAboutUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isAboutUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isAboutUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is an about: url.
  static bool isAboutUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isAboutUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_isDataUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isDataUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isDataUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is a data: url.
  static bool isDataUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isDataUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_isJavaScriptUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isJavaScriptUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isJavaScriptUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is a javascript: url.
  static bool isJavaScriptUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isJavaScriptUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_isHttpUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isHttpUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isHttpUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is an http: url.
  static bool isHttpUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isHttpUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_isHttpsUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isHttpsUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isHttpsUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is an https: url.
  static bool isHttpsUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isHttpsUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_isNetworkUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isNetworkUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isNetworkUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is a network url.
  static bool isNetworkUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isNetworkUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_isContentUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isContentUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isContentUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is a content: url.
  static bool isContentUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isContentUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_isValidUrl = jniAccessors.getStaticMethodIDOf(
      _classRef, "isValidUrl", "(Ljava/lang/String;)Z");

  /// from: static public boolean isValidUrl(java.lang.String url)
  ///
  /// @return {@code true} if the url is valid.
  static bool isValidUrl(jni.JniString url) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isValidUrl,
          jni.JniType.booleanType, [url.reference]).boolean;

  static final _id_stripAnchor = jniAccessors.getStaticMethodIDOf(
      _classRef, "stripAnchor", "(Ljava/lang/String;)Ljava/lang/String;");

  /// from: static public java.lang.String stripAnchor(java.lang.String url)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Strips the url of the anchor.
  static jni.JniString stripAnchor(jni.JniString url) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_stripAnchor, jni.JniType.objectType, [url.reference]).object);

  static final _id_guessFileName = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "guessFileName",
      "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;");

  /// from: static public java.lang.String guessFileName(java.lang.String url, java.lang.String contentDisposition, java.lang.String mimeType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Guesses canonical filename that a download would have, using
  /// the URL and contentDisposition. File extension, if not defined,
  /// is added based on the mimetype
  ///@param url Url to the content
  ///@param contentDisposition Content-Disposition HTTP header or {@code null}
  /// This value may be {@code null}.
  ///@param mimeType Mime-type of the content or {@code null}
  ///
  /// This value may be {@code null}.
  ///@return suggested filename
  static jni.JniString guessFileName(jni.JniString url,
          jni.JniString contentDisposition, jni.JniString mimeType) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_guessFileName, jni.JniType.objectType, [
        url.reference,
        contentDisposition.reference,
        mimeType.reference
      ]).object);
}
