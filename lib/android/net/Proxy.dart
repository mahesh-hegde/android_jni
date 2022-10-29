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

import "../content/Context.dart" as context_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.Proxy
///
/// A convenience class for accessing the user and default proxy
/// settings.
class Proxy extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/net/Proxy");
  Proxy.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String EXTRA_PROXY_INFO
  ///
  /// Intent extra included with \#PROXY_CHANGE_ACTION intents.
  /// It describes the new proxy being used (as a ProxyInfo object).
  ///@deprecated Because {@code PROXY_CHANGE_ACTION} is sent whenever the proxy
  /// for any network on the system changes, applications should always use
  /// ConnectivityManager\#getDefaultProxy() or
  /// ConnectivityManager\#getLinkProperties(Network).LinkProperties\#getHttpProxy()
  /// to get the proxy for the Network(s) they are using.
  static const EXTRA_PROXY_INFO = "android.intent.extra.PROXY_INFO";

  /// from: static public final java.lang.String PROXY_CHANGE_ACTION
  ///
  /// Used to notify an app that's caching the proxy that either the default
  /// connection has changed or any connection's proxy has changed. The new
  /// proxy should be queried using ConnectivityManager\#getDefaultProxy().
  ///
  /// <p class="note">This is a protected intent that can only be sent by the system
  static const PROXY_CHANGE_ACTION = "android.intent.action.PROXY_CHANGE";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Proxy()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getHost = jniAccessors.getStaticMethodIDOf(
      _classRef, "getHost", "(Landroid/content/Context;)Ljava/lang/String;");

  /// from: static public java.lang.String getHost(android.content.Context ctx)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the proxy host set by the user.
  ///@param ctx A Context used to get the settings for the proxy host.
  ///@return String containing the host name. If the user did not set a host
  ///         name it returns the default host. A null value means that no
  ///         host is to be used.
  ///@deprecated Use standard java vm proxy values to find the host, port
  ///         and exclusion list.  This call ignores the exclusion list.
  static jni.JniString getHost(context_.Context ctx) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getHost, jni.JniType.objectType, [ctx.reference]).object);

  static final _id_getPort = jniAccessors.getStaticMethodIDOf(
      _classRef, "getPort", "(Landroid/content/Context;)I");

  /// from: static public int getPort(android.content.Context ctx)
  ///
  /// Return the proxy port set by the user.
  ///@param ctx A Context used to get the settings for the proxy port.
  ///@return The port number to use or -1 if no proxy is to be used.
  ///@deprecated Use standard java vm proxy values to find the host, port
  ///         and exclusion list.  This call ignores the exclusion list.
  static int getPort(context_.Context ctx) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getPort, jni.JniType.intType, [ctx.reference]).integer;

  static final _id_getDefaultHost = jniAccessors.getStaticMethodIDOf(
      _classRef, "getDefaultHost", "()Ljava/lang/String;");

  /// from: static public java.lang.String getDefaultHost()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the default proxy host specified by the carrier.
  ///@return String containing the host name or null if there is no proxy for
  /// this carrier.
  ///@deprecated Use standard java vm proxy values to find the host, port and
  ///         exclusion list.  This call ignores the exclusion list and no
  ///         longer reports only mobile-data apn-based proxy values.
  static jni.JniString getDefaultHost() =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getDefaultHost, jni.JniType.objectType, []).object);

  static final _id_getDefaultPort =
      jniAccessors.getStaticMethodIDOf(_classRef, "getDefaultPort", "()I");

  /// from: static public int getDefaultPort()
  ///
  /// Return the default proxy port specified by the carrier.
  ///@return The port number to be used with the proxy host or -1 if there is
  /// no proxy for this carrier.
  ///@deprecated Use standard java vm proxy values to find the host, port and
  ///         exclusion list.  This call ignores the exclusion list and no
  ///         longer reports only mobile-data apn-based proxy values.
  static int getDefaultPort() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getDefaultPort, jni.JniType.intType, []).integer;
}
