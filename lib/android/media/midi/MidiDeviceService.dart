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

import "../../app/Service.dart" as service_;

import "MidiDeviceInfo.dart" as midideviceinfo_;

import "MidiDeviceStatus.dart" as mididevicestatus_;

import "../../os/IBinder.dart" as ibinder_;

import "../../content/Intent.dart" as intent_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.midi.MidiDeviceService
///
/// A service that implements a virtual MIDI device.
/// Subclasses must implement the \#onGetInputPortReceivers method to provide a
/// list of MidiReceivers to receive data sent to the device's input ports.
/// Similarly, subclasses can call \#getOutputPortReceivers to fetch a list
/// of MidiReceivers for sending data out the output ports.
///
/// To extend this class, you must declare the service in your manifest file with
/// an intent filter with the \#SERVICE_INTERFACE action
/// and meta-data to describe the virtual device.
/// For example:
///
/// <pre>
/// &lt;service android:name=".VirtualDeviceService"
///          android:label="&\#64;string/service_name">
///     &lt;intent-filter>
///         &lt;action android:name="android.media.midi.MidiDeviceService" />
///     &lt;/intent-filter>
///           &lt;meta-data android:name="android.media.midi.MidiDeviceService"
///               android:resource="@xml/device_info" />
/// &lt;/service></pre>
class MidiDeviceService extends service_.Service {
  static final _classRef =
      jniAccessors.getClassOf("android/media/midi/MidiDeviceService");
  MidiDeviceService.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String SERVICE_INTERFACE
  static const SERVICE_INTERFACE = "android.media.midi.MidiDeviceService";

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  MidiDeviceService.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_onCreate =
      jniAccessors.getMethodIDOf(_classRef, "onCreate", "()V");

  /// from: public void onCreate()
  void onCreate() => jniAccessors.callMethodWithArgs(
      reference, _id_onCreate, jni.JniType.voidType, []).check();

  static final _id_onGetInputPortReceivers = jniAccessors.getMethodIDOf(
      _classRef,
      "onGetInputPortReceivers",
      "()[Landroid/media/midi/MidiReceiver;");

  /// from: public abstract android.media.midi.MidiReceiver[] onGetInputPortReceivers()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an array of MidiReceiver for the device's input ports.
  /// Subclasses must override this to provide the receivers which will receive
  /// data sent to the device's input ports. An empty array should be returned if
  /// the device has no input ports.
  ///@return array of MidiReceivers
  jni.JniObject onGetInputPortReceivers() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onGetInputPortReceivers, jni.JniType.objectType, []).object);

  static final _id_getOutputPortReceivers = jniAccessors.getMethodIDOf(
      _classRef,
      "getOutputPortReceivers",
      "()[Landroid/media/midi/MidiReceiver;");

  /// from: public final android.media.midi.MidiReceiver[] getOutputPortReceivers()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an array of MidiReceiver for the device's output ports.
  /// These can be used to send data out the device's output ports.
  ///@return array of MidiReceivers
  jni.JniObject getOutputPortReceivers() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getOutputPortReceivers, jni.JniType.objectType, []).object);

  static final _id_getDeviceInfo = jniAccessors.getMethodIDOf(
      _classRef, "getDeviceInfo", "()Landroid/media/midi/MidiDeviceInfo;");

  /// from: public final android.media.midi.MidiDeviceInfo getDeviceInfo()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// returns the MidiDeviceInfo instance for this service
  ///@return our MidiDeviceInfo
  midideviceinfo_.MidiDeviceInfo getDeviceInfo() =>
      midideviceinfo_.MidiDeviceInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDeviceInfo, jni.JniType.objectType, []).object);

  static final _id_onDeviceStatusChanged = jniAccessors.getMethodIDOf(_classRef,
      "onDeviceStatusChanged", "(Landroid/media/midi/MidiDeviceStatus;)V");

  /// from: public void onDeviceStatusChanged(android.media.midi.MidiDeviceStatus status)
  ///
  /// Called to notify when an our MidiDeviceStatus has changed
  ///@param status the number of the port that was opened
  void onDeviceStatusChanged(mididevicestatus_.MidiDeviceStatus status) =>
      jniAccessors.callMethodWithArgs(reference, _id_onDeviceStatusChanged,
          jni.JniType.voidType, [status.reference]).check();

  static final _id_onClose =
      jniAccessors.getMethodIDOf(_classRef, "onClose", "()V");

  /// from: public void onClose()
  ///
  /// Called to notify when our device has been closed by all its clients
  void onClose() => jniAccessors.callMethodWithArgs(
      reference, _id_onClose, jni.JniType.voidType, []).check();

  static final _id_onBind = jniAccessors.getMethodIDOf(
      _classRef, "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;");

  /// from: public android.os.IBinder onBind(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ibinder_.IBinder onBind(intent_.Intent intent) =>
      ibinder_.IBinder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onBind, jni.JniType.objectType, [intent.reference]).object);
}