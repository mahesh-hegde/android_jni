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

import "ServiceWorkerWebSettings.dart" as serviceworkerwebsettings_;

import "ServiceWorkerClient.dart" as serviceworkerclient_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.webkit.ServiceWorkerController
///
/// Manages Service Workers used by WebView.
///
/// Example usage:
/// <pre class="prettyprint">
/// ServiceWorkerController swController = ServiceWorkerController.getInstance();
/// swController.setServiceWorkerClient(new ServiceWorkerClient() {
///   {@literal @}Override
///   public WebResourceResponse shouldInterceptRequest(WebResourceRequest request) {
///     // Capture request here and generate response or allow pass-through
///     // by returning null.
///     return null;
///   }
/// });
/// </pre>
class ServiceWorkerController extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/ServiceWorkerController");
  ServiceWorkerController.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ServiceWorkerController()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "()Landroid/webkit/ServiceWorkerController;");

  /// from: static public android.webkit.ServiceWorkerController getInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the default ServiceWorkerController instance. At present there is
  /// only one ServiceWorkerController instance for all WebView instances,
  /// however this restriction may be relaxed in the future.
  ///@return the default ServiceWorkerController instance
  ///
  /// This value will never be {@code null}.
  static ServiceWorkerController getInstance() =>
      ServiceWorkerController.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getInstance, jni.JniType.objectType, []).object);

  static final _id_getServiceWorkerWebSettings = jniAccessors.getMethodIDOf(
      _classRef,
      "getServiceWorkerWebSettings",
      "()Landroid/webkit/ServiceWorkerWebSettings;");

  /// from: public abstract android.webkit.ServiceWorkerWebSettings getServiceWorkerWebSettings()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the settings for all service workers.
  ///@return the current ServiceWorkerWebSettings
  ///
  /// This value will never be {@code null}.
  serviceworkerwebsettings_.ServiceWorkerWebSettings
      getServiceWorkerWebSettings() =>
          serviceworkerwebsettings_.ServiceWorkerWebSettings.fromRef(
              jniAccessors.callMethodWithArgs(
                  reference,
                  _id_getServiceWorkerWebSettings,
                  jni.JniType.objectType, []).object);

  static final _id_setServiceWorkerClient = jniAccessors.getMethodIDOf(
      _classRef,
      "setServiceWorkerClient",
      "(Landroid/webkit/ServiceWorkerClient;)V");

  /// from: public abstract void setServiceWorkerClient(android.webkit.ServiceWorkerClient client)
  ///
  /// Sets the client to capture service worker related callbacks.
  ///
  /// A ServiceWorkerClient should be set before any service workers are
  /// active, e.g. a safe place is before any WebView instances are created or
  /// pages loaded.
  ///@param client This value may be {@code null}.
  void setServiceWorkerClient(
          serviceworkerclient_.ServiceWorkerClient client) =>
      jniAccessors.callMethodWithArgs(reference, _id_setServiceWorkerClient,
          jni.JniType.voidType, [client.reference]).check();
}
