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

import "../view/View.dart" as view_;

import "../content/Context.dart" as context_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.webkit.PluginStub
///
/// This interface is used to implement plugins in a WebView. A plugin
/// package may extend this class and implement the abstract functions to create
/// embedded or fullscreeen views displayed in a WebView. The PluginStub
/// implementation will be provided the same NPP instance that is created
/// through the native interface.
class PluginStub extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/webkit/PluginStub");
  PluginStub.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getEmbeddedView = jniAccessors.getMethodIDOf(_classRef,
      "getEmbeddedView", "(ILandroid/content/Context;)Landroid/view/View;");

  /// from: public abstract android.view.View getEmbeddedView(int NPP, android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a custom embedded view to draw the plugin.
  ///@param NPP The native NPP instance.
  ///@param context The current application's Context.
  ///@return A custom View that will be managed by WebView.
  view_.View getEmbeddedView(int NPP, context_.Context context) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getEmbeddedView,
          jni.JniType.objectType,
          [NPP, context.reference]).object);

  static final _id_getFullScreenView = jniAccessors.getMethodIDOf(_classRef,
      "getFullScreenView", "(ILandroid/content/Context;)Landroid/view/View;");

  /// from: public abstract android.view.View getFullScreenView(int NPP, android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a custom full-screen view to be displayed when the user requests
  /// a plugin display as full-screen. Note that the application may choose not
  /// to display this View as completely full-screen.
  ///@param NPP The native NPP instance.
  ///@param context The current application's Context.
  ///@return A custom View that will be managed by the application.
  view_.View getFullScreenView(int NPP, context_.Context context) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getFullScreenView,
          jni.JniType.objectType,
          [NPP, context.reference]).object);
}
