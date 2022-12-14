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

/// from: android.webkit.JsResult
///
/// An instance of this class is passed as a parameter in various WebChromeClient action
/// notifications. The object is used as a handle onto the underlying JavaScript-originated request,
/// and provides a means for the client to indicate whether this action should proceed.
class JsResult extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/webkit/JsResult");
  JsResult.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public final void cancel()
  ///
  /// Handle the result if the user cancelled the dialog.
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();

  static final _id_confirm =
      jniAccessors.getMethodIDOf(_classRef, "confirm", "()V");

  /// from: public final void confirm()
  ///
  /// Handle a confirmation response from the user.
  void confirm() => jniAccessors.callMethodWithArgs(
      reference, _id_confirm, jni.JniType.voidType, []).check();
}
