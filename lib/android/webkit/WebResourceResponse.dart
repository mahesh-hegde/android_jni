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

/// from: android.webkit.WebResourceResponse
///
/// Encapsulates a resource response. Applications can return an instance of this
/// class from WebViewClient\#shouldInterceptRequest to provide a custom
/// response when the WebView requests a particular resource.
class WebResourceResponse extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/WebResourceResponse");
  WebResourceResponse.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V");

  /// from: public void <init>(java.lang.String mimeType, java.lang.String encoding, java.io.InputStream data)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a resource response with the given MIME type, encoding, and
  /// input stream. Callers must implement
  /// InputStream\#read(byte[]) InputStream.read(byte[]) for the input
  /// stream.
  ///@param mimeType the resource response's MIME type, for example text/html
  ///@param encoding the resource response's encoding
  ///@param data the input stream that provides the resource response's data. Must not be a
  ///             StringBufferInputStream.
  WebResourceResponse(
      jni.JniString mimeType, jni.JniString encoding, jni.JniObject data)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [mimeType.reference, encoding.reference, data.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V");

  /// from: public void <init>(java.lang.String mimeType, java.lang.String encoding, int statusCode, java.lang.String reasonPhrase, java.util.Map<java.lang.String,java.lang.String> responseHeaders, java.io.InputStream data)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a resource response with the given parameters. Callers must
  /// implement InputStream\#read(byte[]) InputStream.read(byte[]) for
  /// the input stream.
  ///@param mimeType the resource response's MIME type, for example text/html
  ///@param encoding the resource response's encoding
  ///@param statusCode the status code needs to be in the ranges [100, 299], [400, 599].
  ///                   Causing a redirect by specifying a 3xx code is not supported.
  ///@param reasonPhrase the phrase describing the status code, for example "OK". Must be
  ///                     non-empty.
  /// This value must never be {@code null}.
  ///@param responseHeaders the resource response's headers represented as a mapping of header
  ///                        name -> header value.
  ///@param data the input stream that provides the resource response's data. Must not be a
  ///             StringBufferInputStream.
  WebResourceResponse.ctor1(
      jni.JniString mimeType,
      jni.JniString encoding,
      int statusCode,
      jni.JniString reasonPhrase,
      jni.JniObject responseHeaders,
      jni.JniObject data)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, [
          mimeType.reference,
          encoding.reference,
          statusCode,
          reasonPhrase.reference,
          responseHeaders.reference,
          data.reference
        ]).object);

  static final _id_setMimeType = jniAccessors.getMethodIDOf(
      _classRef, "setMimeType", "(Ljava/lang/String;)V");

  /// from: public void setMimeType(java.lang.String mimeType)
  ///
  /// Sets the resource response's MIME type, for example &quot;text/html&quot;.
  ///@param mimeType The resource response's MIME type
  void setMimeType(jni.JniString mimeType) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setMimeType,
      jni.JniType.voidType,
      [mimeType.reference]).check();

  static final _id_getMimeType = jniAccessors.getMethodIDOf(
      _classRef, "getMimeType", "()Ljava/lang/String;");

  /// from: public java.lang.String getMimeType()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the resource response's MIME type.
  ///@return The resource response's MIME type
  jni.JniString getMimeType() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMimeType, jni.JniType.objectType, []).object);

  static final _id_setEncoding = jniAccessors.getMethodIDOf(
      _classRef, "setEncoding", "(Ljava/lang/String;)V");

  /// from: public void setEncoding(java.lang.String encoding)
  ///
  /// Sets the resource response's encoding, for example &quot;UTF-8&quot;. This is used
  /// to decode the data from the input stream.
  ///@param encoding The resource response's encoding
  void setEncoding(jni.JniString encoding) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setEncoding,
      jni.JniType.voidType,
      [encoding.reference]).check();

  static final _id_getEncoding = jniAccessors.getMethodIDOf(
      _classRef, "getEncoding", "()Ljava/lang/String;");

  /// from: public java.lang.String getEncoding()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the resource response's encoding.
  ///@return The resource response's encoding
  jni.JniString getEncoding() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEncoding, jni.JniType.objectType, []).object);

  static final _id_setStatusCodeAndReasonPhrase = jniAccessors.getMethodIDOf(
      _classRef, "setStatusCodeAndReasonPhrase", "(ILjava/lang/String;)V");

  /// from: public void setStatusCodeAndReasonPhrase(int statusCode, java.lang.String reasonPhrase)
  ///
  /// Sets the resource response's status code and reason phrase.
  ///@param statusCode the status code needs to be in the ranges [100, 299], [400, 599].
  ///                   Causing a redirect by specifying a 3xx code is not supported.
  ///@param reasonPhrase the phrase describing the status code, for example "OK". Must be
  ///                     non-empty.
  ///
  /// This value must never be {@code null}.
  void setStatusCodeAndReasonPhrase(
          int statusCode, jni.JniString reasonPhrase) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setStatusCodeAndReasonPhrase,
          jni.JniType.voidType,
          [statusCode, reasonPhrase.reference]).check();

  static final _id_getStatusCode =
      jniAccessors.getMethodIDOf(_classRef, "getStatusCode", "()I");

  /// from: public int getStatusCode()
  ///
  /// Gets the resource response's status code.
  ///@return The resource response's status code.
  int getStatusCode() => jniAccessors.callMethodWithArgs(
      reference, _id_getStatusCode, jni.JniType.intType, []).integer;

  static final _id_getReasonPhrase = jniAccessors.getMethodIDOf(
      _classRef, "getReasonPhrase", "()Ljava/lang/String;");

  /// from: public java.lang.String getReasonPhrase()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the description of the resource response's status code.
  ///@return The description of the resource response's status code.
  jni.JniString getReasonPhrase() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getReasonPhrase, jni.JniType.objectType, []).object);

  static final _id_setResponseHeaders = jniAccessors.getMethodIDOf(
      _classRef, "setResponseHeaders", "(Ljava/util/Map;)V");

  /// from: public void setResponseHeaders(java.util.Map<java.lang.String,java.lang.String> headers)
  ///
  /// Sets the headers for the resource response.
  ///@param headers Mapping of header name -> header value.
  void setResponseHeaders(jni.JniObject headers) =>
      jniAccessors.callMethodWithArgs(reference, _id_setResponseHeaders,
          jni.JniType.voidType, [headers.reference]).check();

  static final _id_getResponseHeaders = jniAccessors.getMethodIDOf(
      _classRef, "getResponseHeaders", "()Ljava/util/Map;");

  /// from: public java.util.Map<java.lang.String,java.lang.String> getResponseHeaders()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the headers for the resource response.
  ///@return The headers for the resource response.
  jni.JniObject getResponseHeaders() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getResponseHeaders, jni.JniType.objectType, []).object);

  static final _id_setData = jniAccessors.getMethodIDOf(
      _classRef, "setData", "(Ljava/io/InputStream;)V");

  /// from: public void setData(java.io.InputStream data)
  ///
  /// Sets the input stream that provides the resource response's data. Callers
  /// must implement InputStream\#read(byte[]) InputStream.read(byte[]).
  ///@param data the input stream that provides the resource response's data. Must not be a
  ///             StringBufferInputStream.
  void setData(jni.JniObject data) => jniAccessors.callMethodWithArgs(
      reference, _id_setData, jni.JniType.voidType, [data.reference]).check();

  static final _id_getData = jniAccessors.getMethodIDOf(
      _classRef, "getData", "()Ljava/io/InputStream;");

  /// from: public java.io.InputStream getData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the input stream that provides the resource response's data.
  ///@return The input stream that provides the resource response's data
  jni.JniObject getData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getData, jni.JniType.objectType, []).object);
}
