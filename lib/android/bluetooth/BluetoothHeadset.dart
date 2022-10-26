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

import "../content/Context.dart" as context_;

import "BluetoothProfile.dart" as bluetoothprofile_;

import "BluetoothDevice.dart" as bluetoothdevice_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.BluetoothHeadset
///
/// Public API for controlling the Bluetooth Headset Service. This includes both
/// Bluetooth Headset and Handsfree (v1.5) profiles.
///
/// BluetoothHeadset is a proxy object for controlling the Bluetooth Headset
/// Service via IPC.
///
///  Use BluetoothAdapter\#getProfileProxy to get
/// the BluetoothHeadset proxy object. Use
/// BluetoothAdapter\#closeProfileProxy to close the service connection.
///
///  Android only supports one connected Bluetooth Headset at a time.
/// Each method is protected with its appropriate permission.
class BluetoothHeadset extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/BluetoothHeadset");
  BluetoothHeadset.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_AUDIO_STATE_CHANGED
  ///
  /// Intent used to broadcast the change in the Audio Connection state of the
  /// A2DP profile.
  ///
  /// This intent will have 3 extras:
  /// <ul>
  /// <li> \#EXTRA_STATE - The current state of the profile. </li>
  /// <li> \#EXTRA_PREVIOUS_STATE- The previous state of the profile. </li>
  /// <li> BluetoothDevice\#EXTRA_DEVICE - The remote device. </li>
  /// </ul>
  /// \#EXTRA_STATE or \#EXTRA_PREVIOUS_STATE can be any of
  /// \#STATE_AUDIO_CONNECTED, \#STATE_AUDIO_DISCONNECTED,
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH permission
  /// to receive.
  static const ACTION_AUDIO_STATE_CHANGED =
      "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED";

  /// from: static public final java.lang.String ACTION_CONNECTION_STATE_CHANGED
  ///
  /// Intent used to broadcast the change in connection state of the Headset
  /// profile.
  ///
  /// This intent will have 3 extras:
  /// <ul>
  /// <li> \#EXTRA_STATE - The current state of the profile. </li>
  /// <li> \#EXTRA_PREVIOUS_STATE- The previous state of the profile. </li>
  /// <li> BluetoothDevice\#EXTRA_DEVICE - The remote device. </li>
  /// </ul>
  /// \#EXTRA_STATE or \#EXTRA_PREVIOUS_STATE can be any of
  /// \#STATE_DISCONNECTED, \#STATE_CONNECTING,
  /// \#STATE_CONNECTED, \#STATE_DISCONNECTING.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH permission to
  /// receive.
  static const ACTION_CONNECTION_STATE_CHANGED =
      "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED";

  /// from: static public final java.lang.String ACTION_VENDOR_SPECIFIC_HEADSET_EVENT
  ///
  /// Intent used to broadcast that the headset has posted a
  /// vendor-specific event.
  ///
  /// This intent will have 4 extras and 1 category.
  /// <ul>
  /// <li> BluetoothDevice\#EXTRA_DEVICE - The remote Bluetooth Device
  /// </li>
  /// <li> \#EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD - The vendor
  /// specific command </li>
  /// <li> \#EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE - The AT
  /// command type which can be one of  \#AT_CMD_TYPE_READ,
  /// \#AT_CMD_TYPE_TEST, or \#AT_CMD_TYPE_SET,
  /// \#AT_CMD_TYPE_BASIC,\#AT_CMD_TYPE_ACTION. </li>
  /// <li> \#EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS - Command
  /// arguments. </li>
  /// </ul>
  ///
  ///  The category is the Company ID of the vendor defining the
  /// vendor-specific command. BluetoothAssignedNumbers
  ///
  /// For example, for Plantronics specific events
  /// Category will be \#VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID_CATEGORY.55
  ///
  ///  For example, an AT+XEVENT=foo,3 will get translated into
  /// <ul>
  /// <li> EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD = +XEVENT </li>
  /// <li> EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE = AT_CMD_TYPE_SET </li>
  /// <li> EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS = foo, 3 </li>
  /// </ul>
  /// Requires android.Manifest.permission\#BLUETOOTH permission
  /// to receive.
  static const ACTION_VENDOR_SPECIFIC_HEADSET_EVENT =
      "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT";

  /// from: static public final int AT_CMD_TYPE_ACTION
  ///
  /// AT command type ACTION used with
  /// \#EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE
  /// For example, AT+CHUP. There are no arguments for action commands.
  static const AT_CMD_TYPE_ACTION = 4;

  /// from: static public final int AT_CMD_TYPE_BASIC
  ///
  /// AT command type BASIC used with
  /// \#EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE
  /// For example, ATD. Single character commands and everything following the
  /// character are arguments.
  static const AT_CMD_TYPE_BASIC = 3;

  /// from: static public final int AT_CMD_TYPE_READ
  ///
  /// AT command type READ used with
  /// \#EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE
  /// For example, AT+VGM?. There are no arguments for this command type.
  static const AT_CMD_TYPE_READ = 0;

  /// from: static public final int AT_CMD_TYPE_SET
  ///
  /// AT command type SET used with
  /// \#EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE
  /// For example, AT+VGM=<args>.
  static const AT_CMD_TYPE_SET = 2;

  /// from: static public final int AT_CMD_TYPE_TEST
  ///
  /// AT command type TEST used with
  /// \#EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE
  /// For example, AT+VGM=?. There are no arguments for this command type.
  static const AT_CMD_TYPE_TEST = 1;

  /// from: static public final java.lang.String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS
  ///
  /// A Parcelable String array extra field in
  /// \#ACTION_VENDOR_SPECIFIC_HEADSET_EVENT intents that contains
  /// the arguments to the vendor-specific command.
  static const EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_ARGS =
      "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS";

  /// from: static public final java.lang.String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD
  ///
  /// A String extra field in \#ACTION_VENDOR_SPECIFIC_HEADSET_EVENT
  /// intents that contains the name of the vendor-specific command.
  static const EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD =
      "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD";

  /// from: static public final java.lang.String EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE
  ///
  /// An int extra field in \#ACTION_VENDOR_SPECIFIC_HEADSET_EVENT
  /// intents that contains the AT command type of the vendor-specific command.
  static const EXTRA_VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE =
      "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE";

  /// from: static public final int STATE_AUDIO_CONNECTED
  static const STATE_AUDIO_CONNECTED = 12;

  /// from: static public final int STATE_AUDIO_CONNECTING
  ///
  /// Headset state when SCO audio is connecting.
  /// This state can be one of
  /// \#EXTRA_STATE or \#EXTRA_PREVIOUS_STATE of
  /// \#ACTION_AUDIO_STATE_CHANGED intent.
  static const STATE_AUDIO_CONNECTING = 11;

  /// from: static public final int STATE_AUDIO_DISCONNECTED
  ///
  /// Headset state when SCO audio is not connected.
  /// This state can be one of
  /// \#EXTRA_STATE or \#EXTRA_PREVIOUS_STATE of
  /// \#ACTION_AUDIO_STATE_CHANGED intent.
  static const STATE_AUDIO_DISCONNECTED = 10;

  /// from: static public final java.lang.String VENDOR_RESULT_CODE_COMMAND_ANDROID
  ///
  /// A vendor-specific command for unsolicited result code.
  static const VENDOR_RESULT_CODE_COMMAND_ANDROID = "+ANDROID";

  /// from: static public final java.lang.String VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID_CATEGORY
  ///
  /// The intent category to be used with \#ACTION_VENDOR_SPECIFIC_HEADSET_EVENT
  /// for the companyId
  static const VENDOR_SPECIFIC_HEADSET_EVENT_COMPANY_ID_CATEGORY =
      "android.bluetooth.headset.intent.category.companyid";

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile\$ServiceListener;)V");

  /// from: void <init>(android.content.Context context, android.bluetooth.BluetoothProfile.ServiceListener l)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a BluetoothHeadset proxy object.
  BluetoothHeadset(context_.Context context,
      bluetoothprofile_.BluetoothProfile_ServiceListener l)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference, l.reference]).object);

  static final _id_getConnectedDevices = jniAccessors.getMethodIDOf(
      _classRef, "getConnectedDevices", "()Ljava/util/List;");

  /// from: public java.util.List<android.bluetooth.BluetoothDevice> getConnectedDevices()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  jni.JniObject getConnectedDevices() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getConnectedDevices, jni.JniType.objectType, []).object);

  static final _id_getDevicesMatchingConnectionStates =
      jniAccessors.getMethodIDOf(_classRef,
          "getDevicesMatchingConnectionStates", "([I)Ljava/util/List;");

  /// from: public java.util.List<android.bluetooth.BluetoothDevice> getDevicesMatchingConnectionStates(int[] states)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  jni.JniObject getDevicesMatchingConnectionStates(jni.JniObject states) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDevicesMatchingConnectionStates,
          jni.JniType.objectType,
          [states.reference]).object);

  static final _id_getConnectionState = jniAccessors.getMethodIDOf(_classRef,
      "getConnectionState", "(Landroid/bluetooth/BluetoothDevice;)I");

  /// from: public int getConnectionState(android.bluetooth.BluetoothDevice device)
  ///
  /// {@inheritDoc}
  int getConnectionState(bluetoothdevice_.BluetoothDevice device) =>
      jniAccessors.callMethodWithArgs(reference, _id_getConnectionState,
          jni.JniType.intType, [device.reference]).integer;

  static final _id_startVoiceRecognition = jniAccessors.getMethodIDOf(_classRef,
      "startVoiceRecognition", "(Landroid/bluetooth/BluetoothDevice;)Z");

  /// from: public boolean startVoiceRecognition(android.bluetooth.BluetoothDevice device)
  ///
  /// Start Bluetooth voice recognition. This methods sends the voice
  /// recognition AT command to the headset and establishes the
  /// audio connection.
  ///
  ///  Users can listen to \#ACTION_AUDIO_STATE_CHANGED.
  /// If this function returns true, this intent will be broadcasted with
  /// \#EXTRA_STATE set to \#STATE_AUDIO_CONNECTING.
  ///
  ///  \#EXTRA_STATE will transition from
  /// \#STATE_AUDIO_CONNECTING to \#STATE_AUDIO_CONNECTED when
  /// audio connection is established and to \#STATE_AUDIO_DISCONNECTED
  /// in case of failure to establish the audio connection.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH permission.
  ///@param device Bluetooth headset
  ///@return false if there is no headset connected, or the connected headset doesn't support
  /// voice recognition, or voice recognition is already started, or audio channel is occupied,
  /// or on error, true otherwise
  bool startVoiceRecognition(bluetoothdevice_.BluetoothDevice device) =>
      jniAccessors.callMethodWithArgs(reference, _id_startVoiceRecognition,
          jni.JniType.booleanType, [device.reference]).boolean;

  static final _id_stopVoiceRecognition = jniAccessors.getMethodIDOf(_classRef,
      "stopVoiceRecognition", "(Landroid/bluetooth/BluetoothDevice;)Z");

  /// from: public boolean stopVoiceRecognition(android.bluetooth.BluetoothDevice device)
  ///
  /// Stop Bluetooth Voice Recognition mode, and shut down the
  /// Bluetooth audio path.
  ///
  ///  Users can listen to \#ACTION_AUDIO_STATE_CHANGED.
  /// If this function returns true, this intent will be broadcasted with
  /// \#EXTRA_STATE set to \#STATE_AUDIO_DISCONNECTED.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH permission.
  ///@param device Bluetooth headset
  ///@return false if there is no headset connected, or voice recognition has not started,
  /// or voice recognition has ended on this headset, or on error, true otherwise
  bool stopVoiceRecognition(bluetoothdevice_.BluetoothDevice device) =>
      jniAccessors.callMethodWithArgs(reference, _id_stopVoiceRecognition,
          jni.JniType.booleanType, [device.reference]).boolean;

  static final _id_isAudioConnected = jniAccessors.getMethodIDOf(
      _classRef, "isAudioConnected", "(Landroid/bluetooth/BluetoothDevice;)Z");

  /// from: public boolean isAudioConnected(android.bluetooth.BluetoothDevice device)
  ///
  /// Check if Bluetooth SCO audio is connected.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH permission.
  ///@param device Bluetooth headset
  ///@return true if SCO is connected, false otherwise or on error
  bool isAudioConnected(bluetoothdevice_.BluetoothDevice device) =>
      jniAccessors.callMethodWithArgs(reference, _id_isAudioConnected,
          jni.JniType.booleanType, [device.reference]).boolean;

  static final _id_sendVendorSpecificResultCode = jniAccessors.getMethodIDOf(
      _classRef,
      "sendVendorSpecificResultCode",
      "(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z");

  /// from: public boolean sendVendorSpecificResultCode(android.bluetooth.BluetoothDevice device, java.lang.String command, java.lang.String arg)
  ///
  /// Sends a vendor-specific unsolicited result code to the headset.
  ///
  /// The actual string to be sent is <code>command + ": " + arg</code>. For example, if {@code
  /// command} is \#VENDOR_RESULT_CODE_COMMAND_ANDROID and {@code arg} is {@code "0"}, the
  /// string <code>"+ANDROID: 0"</code> will be sent.
  ///
  /// Currently only \#VENDOR_RESULT_CODE_COMMAND_ANDROID is allowed as {@code command}.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH permission.
  ///@param device Bluetooth headset.
  ///@param command A vendor-specific command.
  ///@param arg The argument that will be attached to the command.
  ///@return {@code false} if there is no headset connected, or if the command is not an allowed
  /// vendor-specific unsolicited result code, or on error. {@code true} otherwise.
  ///@throws IllegalArgumentException if {@code command} is {@code null}.
  bool sendVendorSpecificResultCode(bluetoothdevice_.BluetoothDevice device,
          jni.JniString command, jni.JniString arg) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_sendVendorSpecificResultCode,
          jni.JniType.booleanType,
          [device.reference, command.reference, arg.reference]).boolean;
}
