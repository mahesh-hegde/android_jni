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

import "../app/Service.dart" as service_;

import "../os/IBinder.dart" as ibinder_;

import "../content/Intent.dart" as intent_;

import "Call.dart" as call_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telecom.CallScreeningService
///
/// This service can be implemented by the default dialer (see
/// TelecomManager\#getDefaultDialerPackage()) to allow or disallow incoming calls before
/// they are shown to a user.
///
/// Below is an example manifest registration for a {@code CallScreeningService}.
/// <pre>
/// {@code
/// <service android:name="your.package.YourCallScreeningServiceImplementation"
///          android:permission="android.permission.BIND_SCREENING_SERVICE">
///      <intent-filter>
///          <action android:name="android.telecom.CallScreeningService"/>
///      </intent-filter>
/// </service>
/// }
/// </pre>
class CallScreeningService extends service_.Service {
  static final _classRef =
      jniAccessors.getClassOf("android/telecom/CallScreeningService");
  CallScreeningService.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String SERVICE_INTERFACE
  ///
  /// The Intent that must be declared as handled by the service.
  static const SERVICE_INTERFACE = "android.telecom.CallScreeningService";

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  CallScreeningService.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_onBind = jniAccessors.getMethodIDOf(
      _classRef, "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;");

  /// from: public android.os.IBinder onBind(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ibinder_.IBinder onBind(intent_.Intent intent) =>
      ibinder_.IBinder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onBind, jni.JniType.objectType, [intent.reference]).object);

  static final _id_onUnbind = jniAccessors.getMethodIDOf(
      _classRef, "onUnbind", "(Landroid/content/Intent;)Z");

  /// from: public boolean onUnbind(android.content.Intent intent)
  bool onUnbind(intent_.Intent intent) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onUnbind,
      jni.JniType.booleanType,
      [intent.reference]).boolean;

  static final _id_onScreenCall = jniAccessors.getMethodIDOf(
      _classRef, "onScreenCall", "(Landroid/telecom/Call\$Details;)V");

  /// from: public abstract void onScreenCall(android.telecom.Call.Details callDetails)
  ///
  /// Called when a new incoming call is added.
  /// CallScreeningService\#respondToCall(Call.Details, CallScreeningService.CallResponse)
  /// should be called to allow or disallow the call.
  ///@param callDetails Information about a new incoming call, see Call.Details.
  void onScreenCall(call_.Call_Details callDetails) =>
      jniAccessors.callMethodWithArgs(reference, _id_onScreenCall,
          jni.JniType.voidType, [callDetails.reference]).check();

  static final _id_respondToCall = jniAccessors.getMethodIDOf(
      _classRef,
      "respondToCall",
      "(Landroid/telecom/Call\$Details;Landroid/telecom/CallScreeningService\$CallResponse;)V");

  /// from: public final void respondToCall(android.telecom.Call.Details callDetails, android.telecom.CallScreeningService.CallResponse response)
  ///
  /// Responds to the given call, either allowing it or disallowing it.
  ///@param callDetails The call to allow.
  ///@param response The CallScreeningService.CallResponse which contains information
  /// about how to respond to a call.
  void respondToCall(call_.Call_Details callDetails,
          CallScreeningService_CallResponse response) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_respondToCall,
          jni.JniType.voidType,
          [callDetails.reference, response.reference]).check();
}

/// from: android.telecom.CallScreeningService$CallResponse
class CallScreeningService_CallResponse extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/telecom/CallScreeningService\$CallResponse");
  CallScreeningService_CallResponse.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_getDisallowCall =
      jniAccessors.getMethodIDOf(_classRef, "getDisallowCall", "()Z");

  /// from: public boolean getDisallowCall()
  bool getDisallowCall() => jniAccessors.callMethodWithArgs(
      reference, _id_getDisallowCall, jni.JniType.booleanType, []).boolean;

  static final _id_getRejectCall =
      jniAccessors.getMethodIDOf(_classRef, "getRejectCall", "()Z");

  /// from: public boolean getRejectCall()
  bool getRejectCall() => jniAccessors.callMethodWithArgs(
      reference, _id_getRejectCall, jni.JniType.booleanType, []).boolean;

  static final _id_getSkipCallLog =
      jniAccessors.getMethodIDOf(_classRef, "getSkipCallLog", "()Z");

  /// from: public boolean getSkipCallLog()
  bool getSkipCallLog() => jniAccessors.callMethodWithArgs(
      reference, _id_getSkipCallLog, jni.JniType.booleanType, []).boolean;

  static final _id_getSkipNotification =
      jniAccessors.getMethodIDOf(_classRef, "getSkipNotification", "()Z");

  /// from: public boolean getSkipNotification()
  bool getSkipNotification() => jniAccessors.callMethodWithArgs(
      reference, _id_getSkipNotification, jni.JniType.booleanType, []).boolean;
}

/// from: android.telecom.CallScreeningService$CallResponse$Builder
class CallScreeningService_CallResponse_Builder extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/telecom/CallScreeningService\$CallResponse\$Builder");
  CallScreeningService_CallResponse_Builder.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  CallScreeningService_CallResponse_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setDisallowCall = jniAccessors.getMethodIDOf(
      _classRef,
      "setDisallowCall",
      "(Z)Landroid/telecom/CallScreeningService\$CallResponse\$Builder;");

  /// from: public android.telecom.CallScreeningService.CallResponse.Builder setDisallowCall(boolean shouldDisallowCall)
  /// The returned object must be deleted after use, by calling the `delete` method.
  CallScreeningService_CallResponse_Builder setDisallowCall(
          bool shouldDisallowCall) =>
      CallScreeningService_CallResponse_Builder.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_setDisallowCall,
              jni.JniType.objectType, [shouldDisallowCall]).object);

  static final _id_setRejectCall = jniAccessors.getMethodIDOf(
      _classRef,
      "setRejectCall",
      "(Z)Landroid/telecom/CallScreeningService\$CallResponse\$Builder;");

  /// from: public android.telecom.CallScreeningService.CallResponse.Builder setRejectCall(boolean shouldRejectCall)
  /// The returned object must be deleted after use, by calling the `delete` method.
  CallScreeningService_CallResponse_Builder setRejectCall(
          bool shouldRejectCall) =>
      CallScreeningService_CallResponse_Builder.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_setRejectCall,
              jni.JniType.objectType, [shouldRejectCall]).object);

  static final _id_setSkipCallLog = jniAccessors.getMethodIDOf(
      _classRef,
      "setSkipCallLog",
      "(Z)Landroid/telecom/CallScreeningService\$CallResponse\$Builder;");

  /// from: public android.telecom.CallScreeningService.CallResponse.Builder setSkipCallLog(boolean shouldSkipCallLog)
  /// The returned object must be deleted after use, by calling the `delete` method.
  CallScreeningService_CallResponse_Builder setSkipCallLog(
          bool shouldSkipCallLog) =>
      CallScreeningService_CallResponse_Builder.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_setSkipCallLog,
              jni.JniType.objectType, [shouldSkipCallLog]).object);

  static final _id_setSkipNotification = jniAccessors.getMethodIDOf(
      _classRef,
      "setSkipNotification",
      "(Z)Landroid/telecom/CallScreeningService\$CallResponse\$Builder;");

  /// from: public android.telecom.CallScreeningService.CallResponse.Builder setSkipNotification(boolean shouldSkipNotification)
  /// The returned object must be deleted after use, by calling the `delete` method.
  CallScreeningService_CallResponse_Builder setSkipNotification(
          bool shouldSkipNotification) =>
      CallScreeningService_CallResponse_Builder.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_setSkipNotification,
              jni.JniType.objectType, [shouldSkipNotification]).object);

  static final _id_build = jniAccessors.getMethodIDOf(_classRef, "build",
      "()Landroid/telecom/CallScreeningService\$CallResponse;");

  /// from: public android.telecom.CallScreeningService.CallResponse build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  CallScreeningService_CallResponse build() =>
      CallScreeningService_CallResponse.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}
