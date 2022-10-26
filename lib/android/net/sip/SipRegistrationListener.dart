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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.sip.SipRegistrationListener
///
/// Listener for SIP registration events.
class SipRegistrationListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/sip/SipRegistrationListener");
  SipRegistrationListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onRegistering = jniAccessors.getMethodIDOf(
      _classRef, "onRegistering", "(Ljava/lang/String;)V");

  /// from: public abstract void onRegistering(java.lang.String localProfileUri)
  ///
  /// Called when a registration request is sent.
  ///@param localProfileUri the URI string of the SIP profile to register with
  void onRegistering(jni.JniString localProfileUri) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRegistering,
          jni.JniType.voidType, [localProfileUri.reference]).check();

  static final _id_onRegistrationDone = jniAccessors.getMethodIDOf(
      _classRef, "onRegistrationDone", "(Ljava/lang/String;J)V");

  /// from: public abstract void onRegistrationDone(java.lang.String localProfileUri, long expiryTime)
  ///
  /// Called when the registration succeeded.
  ///@param localProfileUri the URI string of the SIP profile to register with
  ///@param expiryTime duration in seconds before the registration expires
  void onRegistrationDone(jni.JniString localProfileUri, int expiryTime) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onRegistrationDone,
          jni.JniType.voidType,
          [localProfileUri.reference, expiryTime]).check();

  static final _id_onRegistrationFailed = jniAccessors.getMethodIDOf(_classRef,
      "onRegistrationFailed", "(Ljava/lang/String;ILjava/lang/String;)V");

  /// from: public abstract void onRegistrationFailed(java.lang.String localProfileUri, int errorCode, java.lang.String errorMessage)
  ///
  /// Called when the registration failed.
  ///@param localProfileUri the URI string of the SIP profile to register with
  ///@param errorCode error code of this error
  ///@param errorMessage error message
  ///@see SipErrorCode
  void onRegistrationFailed(jni.JniString localProfileUri, int errorCode,
          jni.JniString errorMessage) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onRegistrationFailed, jni.JniType.voidType, [
        localProfileUri.reference,
        errorCode,
        errorMessage.reference
      ]).check();
}