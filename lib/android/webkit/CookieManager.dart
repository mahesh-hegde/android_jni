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

import "WebView.dart" as webview_;

import "ValueCallback.dart" as valuecallback_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.webkit.CookieManager
///
/// Manages the cookies used by an application's WebView instances.
/// Cookies are manipulated according to RFC2109.
class CookieManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/CookieManager");
  CookieManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  CookieManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_clone =
      jniAccessors.getMethodIDOf(_classRef, "clone", "()Ljava/lang/Object;");

  /// from: protected java.lang.Object clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject clone() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_clone, jni.JniType.objectType, []).object);

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "()Landroid/webkit/CookieManager;");

  /// from: static public android.webkit.CookieManager getInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the singleton CookieManager instance.
  ///@return the singleton CookieManager instance
  static CookieManager getInstance() =>
      CookieManager.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getInstance, jni.JniType.objectType, []).object);

  static final _id_setAcceptCookie =
      jniAccessors.getMethodIDOf(_classRef, "setAcceptCookie", "(Z)V");

  /// from: public abstract void setAcceptCookie(boolean accept)
  ///
  /// Sets whether the application's WebView instances should send and
  /// accept cookies.
  /// By default this is set to {@code true} and the WebView accepts cookies.
  ///
  /// When this is {@code true}
  /// CookieManager\#setAcceptThirdPartyCookies setAcceptThirdPartyCookies and
  /// CookieManager\#setAcceptFileSchemeCookies setAcceptFileSchemeCookies
  /// can be used to control the policy for those specific types of cookie.
  ///@param accept whether WebView instances should send and accept
  ///               cookies
  void setAcceptCookie(bool accept) => jniAccessors.callMethodWithArgs(
      reference, _id_setAcceptCookie, jni.JniType.voidType, [accept]).check();

  static final _id_acceptCookie =
      jniAccessors.getMethodIDOf(_classRef, "acceptCookie", "()Z");

  /// from: public abstract boolean acceptCookie()
  ///
  /// Gets whether the application's WebView instances send and accept
  /// cookies.
  ///@return {@code true} if WebView instances send and accept cookies
  bool acceptCookie() => jniAccessors.callMethodWithArgs(
      reference, _id_acceptCookie, jni.JniType.booleanType, []).boolean;

  static final _id_setAcceptThirdPartyCookies = jniAccessors.getMethodIDOf(
      _classRef, "setAcceptThirdPartyCookies", "(Landroid/webkit/WebView;Z)V");

  /// from: public abstract void setAcceptThirdPartyCookies(android.webkit.WebView webview, boolean accept)
  ///
  /// Sets whether the WebView should allow third party cookies to be set.
  /// Allowing third party cookies is a per WebView policy and can be set
  /// differently on different WebView instances.
  ///
  /// Apps that target android.os.Build.VERSION_CODES\#KITKAT or below
  /// default to allowing third party cookies. Apps targeting
  /// android.os.Build.VERSION_CODES\#LOLLIPOP or later default to disallowing
  /// third party cookies.
  ///@param webview the WebView instance to set the cookie policy on
  ///@param accept whether the WebView instance should accept
  ///               third party cookies
  void setAcceptThirdPartyCookies(webview_.WebView webview, bool accept) =>
      jniAccessors.callMethodWithArgs(reference, _id_setAcceptThirdPartyCookies,
          jni.JniType.voidType, [webview.reference, accept]).check();

  static final _id_acceptThirdPartyCookies = jniAccessors.getMethodIDOf(
      _classRef, "acceptThirdPartyCookies", "(Landroid/webkit/WebView;)Z");

  /// from: public abstract boolean acceptThirdPartyCookies(android.webkit.WebView webview)
  ///
  /// Gets whether the WebView should allow third party cookies to be set.
  ///@param webview the WebView instance to get the cookie policy for
  ///@return {@code true} if the WebView accepts third party cookies
  bool acceptThirdPartyCookies(webview_.WebView webview) =>
      jniAccessors.callMethodWithArgs(reference, _id_acceptThirdPartyCookies,
          jni.JniType.booleanType, [webview.reference]).boolean;

  static final _id_setCookie = jniAccessors.getMethodIDOf(
      _classRef, "setCookie", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public abstract void setCookie(java.lang.String url, java.lang.String value)
  ///
  /// Sets a cookie for the given URL. Any existing cookie with the same host,
  /// path and name will be replaced with the new cookie. The cookie being set
  /// will be ignored if it is expired.
  ///@param url the URL for which the cookie is to be set
  ///@param value the cookie as a string, using the format of the 'Set-Cookie'
  ///              HTTP response header
  void setCookie(jni.JniString url, jni.JniString value) =>
      jniAccessors.callMethodWithArgs(reference, _id_setCookie,
          jni.JniType.voidType, [url.reference, value.reference]).check();

  static final _id_setCookie1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setCookie",
      "(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V");

  /// from: public abstract void setCookie(java.lang.String url, java.lang.String value, android.webkit.ValueCallback<java.lang.Boolean> callback)
  ///
  /// Sets a cookie for the given URL. Any existing cookie with the same host,
  /// path and name will be replaced with the new cookie. The cookie being set
  /// will be ignored if it is expired.
  ///
  /// This method is asynchronous.
  /// If a ValueCallback is provided,
  /// ValueCallback\#onReceiveValue(T) onReceiveValue() will be called on the current
  /// thread's android.os.Looper once the operation is complete.
  /// The value provided to the callback indicates whether the cookie was set successfully.
  /// You can pass {@code null} as the callback if you don't need to know when the operation
  /// completes or whether it succeeded, and in this case it is safe to call the method from a
  /// thread without a Looper.
  ///@param url the URL for which the cookie is to be set
  ///@param value the cookie as a string, using the format of the 'Set-Cookie'
  ///              HTTP response header
  ///@param callback a callback to be executed when the cookie has been set
  ///
  /// This value may be {@code null}.
  void setCookie1(jni.JniString url, jni.JniString value,
          valuecallback_.ValueCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setCookie1,
          jni.JniType.voidType,
          [url.reference, value.reference, callback.reference]).check();

  static final _id_getCookie = jniAccessors.getMethodIDOf(
      _classRef, "getCookie", "(Ljava/lang/String;)Ljava/lang/String;");

  /// from: public abstract java.lang.String getCookie(java.lang.String url)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the cookies for the given URL.
  ///@param url the URL for which the cookies are requested
  ///@return value the cookies as a string, using the format of the 'Cookie'
  ///               HTTP request header
  jni.JniString getCookie(jni.JniString url) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getCookie, jni.JniType.objectType, [url.reference]).object);

  static final _id_removeSessionCookie =
      jniAccessors.getMethodIDOf(_classRef, "removeSessionCookie", "()V");

  /// from: public abstract void removeSessionCookie()
  ///
  /// Removes all session cookies, which are cookies without an expiration
  /// date.
  ///@deprecated use \#removeSessionCookies(ValueCallback) instead.
  void removeSessionCookie() => jniAccessors.callMethodWithArgs(
      reference, _id_removeSessionCookie, jni.JniType.voidType, []).check();

  static final _id_removeSessionCookies = jniAccessors.getMethodIDOf(
      _classRef, "removeSessionCookies", "(Landroid/webkit/ValueCallback;)V");

  /// from: public abstract void removeSessionCookies(android.webkit.ValueCallback<java.lang.Boolean> callback)
  ///
  /// Removes all session cookies, which are cookies without an expiration
  /// date.
  ///
  /// This method is asynchronous.
  /// If a ValueCallback is provided,
  /// ValueCallback\#onReceiveValue(T) onReceiveValue() will be called on the current
  /// thread's android.os.Looper once the operation is complete.
  /// The value provided to the callback indicates whether any cookies were removed.
  /// You can pass {@code null} as the callback if you don't need to know when the operation
  /// completes or whether any cookie were removed, and in this case it is safe to call the
  /// method from a thread without a Looper.
  ///@param callback a callback which is executed when the session cookies have been removed
  ///
  /// This value may be {@code null}.
  void removeSessionCookies(valuecallback_.ValueCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_removeSessionCookies,
          jni.JniType.voidType, [callback.reference]).check();

  static final _id_removeAllCookie =
      jniAccessors.getMethodIDOf(_classRef, "removeAllCookie", "()V");

  /// from: public abstract void removeAllCookie()
  ///
  /// Removes all cookies.
  ///@deprecated Use \#removeAllCookies(ValueCallback) instead.
  void removeAllCookie() => jniAccessors.callMethodWithArgs(
      reference, _id_removeAllCookie, jni.JniType.voidType, []).check();

  static final _id_removeAllCookies = jniAccessors.getMethodIDOf(
      _classRef, "removeAllCookies", "(Landroid/webkit/ValueCallback;)V");

  /// from: public abstract void removeAllCookies(android.webkit.ValueCallback<java.lang.Boolean> callback)
  ///
  /// Removes all cookies.
  ///
  /// This method is asynchronous.
  /// If a ValueCallback is provided,
  /// ValueCallback\#onReceiveValue(T) onReceiveValue() will be called on the current
  /// thread's android.os.Looper once the operation is complete.
  /// The value provided to the callback indicates whether any cookies were removed.
  /// You can pass {@code null} as the callback if you don't need to know when the operation
  /// completes or whether any cookies were removed, and in this case it is safe to call the
  /// method from a thread without a Looper.
  ///@param callback a callback which is executed when the cookies have been removed
  ///
  /// This value may be {@code null}.
  void removeAllCookies(valuecallback_.ValueCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_removeAllCookies,
          jni.JniType.voidType, [callback.reference]).check();

  static final _id_hasCookies =
      jniAccessors.getMethodIDOf(_classRef, "hasCookies", "()Z");

  /// from: public abstract boolean hasCookies()
  ///
  /// Gets whether there are stored cookies.
  ///@return {@code true} if there are stored cookies
  bool hasCookies() => jniAccessors.callMethodWithArgs(
      reference, _id_hasCookies, jni.JniType.booleanType, []).boolean;

  static final _id_removeExpiredCookie =
      jniAccessors.getMethodIDOf(_classRef, "removeExpiredCookie", "()V");

  /// from: public abstract void removeExpiredCookie()
  ///
  /// Removes all expired cookies.
  ///@deprecated The WebView handles removing expired cookies automatically.
  void removeExpiredCookie() => jniAccessors.callMethodWithArgs(
      reference, _id_removeExpiredCookie, jni.JniType.voidType, []).check();

  static final _id_flush =
      jniAccessors.getMethodIDOf(_classRef, "flush", "()V");

  /// from: public abstract void flush()
  ///
  /// Ensures all cookies currently accessible through the getCookie API are
  /// written to persistent storage.
  /// This call will block the caller until it is done and may perform I/O.
  void flush() => jniAccessors.callMethodWithArgs(
      reference, _id_flush, jni.JniType.voidType, []).check();

  static final _id_allowFileSchemeCookies = jniAccessors.getStaticMethodIDOf(
      _classRef, "allowFileSchemeCookies", "()Z");

  /// from: static public boolean allowFileSchemeCookies()
  ///
  /// Gets whether the application's WebView instances send and accept
  /// cookies for file scheme URLs.
  ///@return {@code true} if WebView instances send and accept cookies for
  ///         file scheme URLs
  static bool allowFileSchemeCookies() => jniAccessors.callStaticMethodWithArgs(
      _classRef,
      _id_allowFileSchemeCookies,
      jni.JniType.booleanType, []).boolean;

  static final _id_setAcceptFileSchemeCookies = jniAccessors
      .getStaticMethodIDOf(_classRef, "setAcceptFileSchemeCookies", "(Z)V");

  /// from: static public void setAcceptFileSchemeCookies(boolean accept)
  ///
  /// Sets whether the application's WebView instances should send and
  /// accept cookies for file scheme URLs.
  /// Use of cookies with file scheme URLs is potentially insecure and turned
  /// off by default.
  /// Do not use this feature unless you can be sure that no unintentional
  /// sharing of cookie data can take place.
  ///
  /// Note that calls to this method will have no effect if made after a
  /// WebView or CookieManager instance has been created.
  static void setAcceptFileSchemeCookies(bool accept) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_setAcceptFileSchemeCookies,
          jni.JniType.voidType,
          [accept]).check();
}
