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

import "../telecom/PhoneAccountHandle.dart" as phoneaccounthandle_;

import "VisualVoicemailSms.dart" as visualvoicemailsms_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.VisualVoicemailService
///
/// This service is implemented by dialer apps that wishes to handle OMTP or similar visual
/// voicemails. Telephony binds to this service when the cell service is first connected, a visual
/// voicemail SMS has been received, or when a SIM has been removed. Telephony will only bind to the
/// default dialer for such events (See TelecomManager\#getDefaultDialerPackage()). The
/// android.service.carrier.CarrierMessagingService precedes the VisualVoicemailService in
/// the SMS filtering chain and may intercept the visual voicemail SMS before it reaches this
/// service.
///
/// To extend this class, The service must be declared in the manifest file with
/// the android.Manifest.permission\#BIND_VISUAL_VOICEMAIL_SERVICE permission and include an
/// intent filter with the \#SERVICE_INTERFACE action.
///
/// Below is an example manifest registration for a {@code VisualVoicemailService}.
/// <pre>
/// {@code
/// <service android:name="your.package.YourVisualVoicemailServiceImplementation"
///          android:permission="android.permission.BIND_VISUAL_VOICEMAIL_SERVICE">
///      <intent-filter>
///          <action android:name="android.telephony.VisualVoicemailService"/>
///      </intent-filter>
/// </service>
/// }
/// </pre>
class VisualVoicemailService extends service_.Service {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/VisualVoicemailService");
  VisualVoicemailService.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String SERVICE_INTERFACE
  ///
  /// The Intent that must be declared as handled by the service.
  static const SERVICE_INTERFACE = "android.telephony.VisualVoicemailService";

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  VisualVoicemailService.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_onBind = jniAccessors.getMethodIDOf(
      _classRef, "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;");

  /// from: public android.os.IBinder onBind(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ibinder_.IBinder onBind(intent_.Intent intent) =>
      ibinder_.IBinder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onBind, jni.JniType.objectType, [intent.reference]).object);

  static final _id_onCellServiceConnected = jniAccessors.getMethodIDOf(
      _classRef,
      "onCellServiceConnected",
      "(Landroid/telephony/VisualVoicemailService\$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V");

  /// from: public abstract void onCellServiceConnected(android.telephony.VisualVoicemailService.VisualVoicemailTask task, android.telecom.PhoneAccountHandle phoneAccountHandle)
  ///
  /// Called when the cellular service is connected on a PhoneAccountHandle for the first
  /// time, or when the carrier config has changed. It will not be called when the signal is lost
  /// then restored.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param task The task representing this event. VisualVoicemailTask\#finish() must be
  /// called when the task is completed.
  ///@param phoneAccountHandle The PhoneAccountHandle triggering this event.
  void onCellServiceConnected(VisualVoicemailService_VisualVoicemailTask task,
          phoneaccounthandle_.PhoneAccountHandle phoneAccountHandle) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onCellServiceConnected,
          jni.JniType.voidType,
          [task.reference, phoneAccountHandle.reference]).check();

  static final _id_onSmsReceived = jniAccessors.getMethodIDOf(
      _classRef,
      "onSmsReceived",
      "(Landroid/telephony/VisualVoicemailService\$VisualVoicemailTask;Landroid/telephony/VisualVoicemailSms;)V");

  /// from: public abstract void onSmsReceived(android.telephony.VisualVoicemailService.VisualVoicemailTask task, android.telephony.VisualVoicemailSms sms)
  ///
  /// Called when a SMS matching the VisualVoicemailSmsFilterSettings set by
  /// TelephonyManager\#setVisualVoicemailSmsFilterSettings(VisualVoicemailSmsFilterSettings)
  /// is received.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param task The task representing this event. VisualVoicemailTask\#finish() must be
  /// called when the task is completed.
  ///@param sms The content of the received SMS.
  void onSmsReceived(VisualVoicemailService_VisualVoicemailTask task,
          visualvoicemailsms_.VisualVoicemailSms sms) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSmsReceived,
          jni.JniType.voidType, [task.reference, sms.reference]).check();

  static final _id_onSimRemoved = jniAccessors.getMethodIDOf(
      _classRef,
      "onSimRemoved",
      "(Landroid/telephony/VisualVoicemailService\$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V");

  /// from: public abstract void onSimRemoved(android.telephony.VisualVoicemailService.VisualVoicemailTask task, android.telecom.PhoneAccountHandle phoneAccountHandle)
  ///
  /// Called when a SIM is removed.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param task The task representing this event. VisualVoicemailTask\#finish() must be
  /// called when the task is completed.
  ///@param phoneAccountHandle The PhoneAccountHandle triggering this event.
  void onSimRemoved(VisualVoicemailService_VisualVoicemailTask task,
          phoneaccounthandle_.PhoneAccountHandle phoneAccountHandle) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onSimRemoved,
          jni.JniType.voidType,
          [task.reference, phoneAccountHandle.reference]).check();

  static final _id_onStopped = jniAccessors.getMethodIDOf(
      _classRef,
      "onStopped",
      "(Landroid/telephony/VisualVoicemailService\$VisualVoicemailTask;)V");

  /// from: public abstract void onStopped(android.telephony.VisualVoicemailService.VisualVoicemailTask task)
  ///
  /// Called before the system is about to terminate a task. The service should persist any
  /// necessary data and call finish on the task immediately.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  void onStopped(VisualVoicemailService_VisualVoicemailTask task) =>
      jniAccessors.callMethodWithArgs(reference, _id_onStopped,
          jni.JniType.voidType, [task.reference]).check();
}

/// from: android.telephony.VisualVoicemailService$VisualVoicemailTask
///
/// Represents a visual voicemail event which needs to be handled. While the task is being
/// processed telephony will hold a wakelock for the VisualVoicemailService. The service can
/// unblock the main thread and pass the task to a worker thread. Once the task is finished,
/// VisualVoicemailTask\#finish() should be called to signal telephony to release the
/// resources. Telephony will call VisualVoicemailService\#onStopped(VisualVoicemailTask)
/// when the task is going to be terminated before completion.
///@see \#onCellServiceConnected(VisualVoicemailTask, PhoneAccountHandle)
///@see \#onSmsReceived(VisualVoicemailTask, VisualVoicemailSms)
///@see \#onSimRemoved(VisualVoicemailTask, PhoneAccountHandle)
///@see \#onStopped(VisualVoicemailTask)
class VisualVoicemailService_VisualVoicemailTask extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/telephony/VisualVoicemailService\$VisualVoicemailTask");
  VisualVoicemailService_VisualVoicemailTask.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_finish =
      jniAccessors.getMethodIDOf(_classRef, "finish", "()V");

  /// from: public final void finish()
  ///
  /// Call to signal telephony the task has completed. Must be called for every task.
  void finish() => jniAccessors.callMethodWithArgs(
      reference, _id_finish, jni.JniType.voidType, []).check();

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;
}
