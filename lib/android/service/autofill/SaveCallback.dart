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

import "../../content/IntentSender.dart" as intentsender_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.autofill.SaveCallback
///
/// Handles save requests from the AutofillService into the Activity being
/// autofilled.
class SaveCallback extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/autofill/SaveCallback");
  SaveCallback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SaveCallback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onSuccess =
      jniAccessors.getMethodIDOf(_classRef, "onSuccess", "()V");

  /// from: public void onSuccess()
  ///
  /// Notifies the Android System that an
  /// AutofillService\#onSaveRequest(SaveRequest, SaveCallback) was successfully handled
  /// by the service.
  void onSuccess() => jniAccessors.callMethodWithArgs(
      reference, _id_onSuccess, jni.JniType.voidType, []).check();

  static final _id_onSuccess1 = jniAccessors.getMethodIDOf(
      _classRef, "onSuccess", "(Landroid/content/IntentSender;)V");

  /// from: public void onSuccess(android.content.IntentSender intentSender)
  ///
  /// Notifies the Android System that an
  /// AutofillService\#onSaveRequest(SaveRequest, SaveCallback) was successfully handled
  /// by the service.
  ///
  /// This method is useful when the service requires extra work&mdash;for example, launching an
  /// activity asking the user to authenticate first &mdash;before it can process the request,
  /// as the intent will be launched from the context of the activity being autofilled and hence
  /// will be part of that activity's stack.
  ///@param intentSender intent that will be launched from the context of activity being
  /// autofilled.
  ///
  /// This value must never be {@code null}.
  void onSuccess1(intentsender_.IntentSender intentSender) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSuccess1,
          jni.JniType.voidType, [intentSender.reference]).check();

  static final _id_onFailure = jniAccessors.getMethodIDOf(
      _classRef, "onFailure", "(Ljava/lang/CharSequence;)V");

  /// from: public void onFailure(java.lang.CharSequence message)
  ///
  /// Notifies the Android System that an
  /// AutofillService\#onSaveRequest(SaveRequest, SaveCallback) could not be handled
  /// by the service.
  ///
  /// This method should only be called when the service could not handle the request right away
  /// and could not recover or retry it. If the service could retry or recover, it could keep
  /// the SaveRequest and call \#onSuccess() instead.
  ///
  /// __Note:__ The Android System displays an UI with the supplied error message; if
  /// you prefer to show your own message, call \#onSuccess() or
  /// \#onSuccess(IntentSender) instead.
  ///@param message error message to be displayed to the user.
  void onFailure(jni.JniObject message) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onFailure,
      jni.JniType.voidType,
      [message.reference]).check();
}
