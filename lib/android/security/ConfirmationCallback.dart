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

/// from: android.security.ConfirmationCallback
///
/// Callback class used when signaling that a prompt is no longer being presented.
class ConfirmationCallback extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/security/ConfirmationCallback");
  ConfirmationCallback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ConfirmationCallback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onConfirmed =
      jniAccessors.getMethodIDOf(_classRef, "onConfirmed", "([B)V");

  /// from: public void onConfirmed(byte[] dataThatWasConfirmed)
  ///
  /// Called when the requested prompt was accepted by the user.
  ///
  /// The format of 'dataThatWasConfirmed' parameter is a <a href="http://cbor.io/">CBOR</a>
  /// encoded map (type 5) with (at least) the keys <strong>prompt</strong> and
  /// <strong>extra</strong>. The keys are encoded as CBOR text string (type 3). The value of
  /// promptText is encoded as CBOR text string (type 3), and the value of extraData is encoded as
  /// CBOR byte string (type 2). Other keys may be added in the future.
  ///@param dataThatWasConfirmed the data that was confirmed, see above for the format.
  ///
  /// This value must never be {@code null}.
  void onConfirmed(jni.JniObject dataThatWasConfirmed) =>
      jniAccessors.callMethodWithArgs(reference, _id_onConfirmed,
          jni.JniType.voidType, [dataThatWasConfirmed.reference]).check();

  static final _id_onDismissed =
      jniAccessors.getMethodIDOf(_classRef, "onDismissed", "()V");

  /// from: public void onDismissed()
  ///
  /// Called when the requested prompt was dismissed (not accepted) by the user.
  void onDismissed() => jniAccessors.callMethodWithArgs(
      reference, _id_onDismissed, jni.JniType.voidType, []).check();

  static final _id_onCanceled =
      jniAccessors.getMethodIDOf(_classRef, "onCanceled", "()V");

  /// from: public void onCanceled()
  ///
  /// Called when the requested prompt was dismissed by the application.
  void onCanceled() => jniAccessors.callMethodWithArgs(
      reference, _id_onCanceled, jni.JniType.voidType, []).check();

  static final _id_onError = jniAccessors.getMethodIDOf(
      _classRef, "onError", "(Ljava/lang/Throwable;)V");

  /// from: public void onError(java.lang.Throwable e)
  ///
  /// Called when the requested prompt was dismissed because of a low-level error.
  ///@param e a throwable representing the error.
  void onError(jni.JniObject e) => jniAccessors.callMethodWithArgs(
      reference, _id_onError, jni.JniType.voidType, [e.reference]).check();
}
