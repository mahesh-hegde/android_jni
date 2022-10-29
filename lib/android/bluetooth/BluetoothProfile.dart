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

import "BluetoothDevice.dart" as bluetoothdevice_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.BluetoothProfile
///
/// Public APIs for the Bluetooth Profiles.
///
///  Clients should call BluetoothAdapter\#getProfileProxy,
/// to get the Profile Proxy. Each public profile implements this
/// interface.
class BluetoothProfile extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/BluetoothProfile");
  BluetoothProfile.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int A2DP
  ///
  /// A2DP profile.
  static const A2DP = 2;

  /// from: static public final java.lang.String EXTRA_PREVIOUS_STATE
  ///
  /// Extra for the connection state intents of the individual profiles.
  ///
  /// This extra represents the previous connection state of the profile of the
  /// Bluetooth device.
  static const EXTRA_PREVIOUS_STATE =
      "android.bluetooth.profile.extra.PREVIOUS_STATE";

  /// from: static public final java.lang.String EXTRA_STATE
  ///
  /// Extra for the connection state intents of the individual profiles.
  ///
  /// This extra represents the current connection state of the profile of the
  /// Bluetooth device.
  static const EXTRA_STATE = "android.bluetooth.profile.extra.STATE";

  /// from: static public final int GATT
  ///
  /// GATT
  static const GATT = 7;

  /// from: static public final int GATT_SERVER
  ///
  /// GATT_SERVER
  static const GATT_SERVER = 8;

  /// from: static public final int HEADSET
  ///
  /// Headset and Handsfree profile
  static const HEADSET = 1;

  /// from: static public final int HEALTH
  ///
  /// Health Profile
  static const HEALTH = 3;

  /// from: static public final int HID_DEVICE
  ///
  /// HID Device
  static const HID_DEVICE = 19;

  /// from: static public final int SAP
  static const SAP = 10;

  /// from: static public final int STATE_CONNECTED
  ///
  /// The profile is in connected state
  static const STATE_CONNECTED = 2;

  /// from: static public final int STATE_CONNECTING
  ///
  /// The profile is in connecting state
  static const STATE_CONNECTING = 1;

  /// from: static public final int STATE_DISCONNECTED
  ///
  /// The profile is in disconnected state
  static const STATE_DISCONNECTED = 0;

  /// from: static public final int STATE_DISCONNECTING
  ///
  /// The profile is in disconnecting state
  static const STATE_DISCONNECTING = 3;

  static final _id_getConnectedDevices = jniAccessors.getMethodIDOf(
      _classRef, "getConnectedDevices", "()Ljava/util/List;");

  /// from: public abstract java.util.List<android.bluetooth.BluetoothDevice> getConnectedDevices()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get connected devices for this specific profile.
  ///
  ///  Return the set of devices which are in state \#STATE_CONNECTED
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@return List of devices. The list will be empty on error.
  jni.JniObject getConnectedDevices() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getConnectedDevices, jni.JniType.objectType, []).object);

  static final _id_getDevicesMatchingConnectionStates =
      jniAccessors.getMethodIDOf(_classRef,
          "getDevicesMatchingConnectionStates", "([I)Ljava/util/List;");

  /// from: public abstract java.util.List<android.bluetooth.BluetoothDevice> getDevicesMatchingConnectionStates(int[] states)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get a list of devices that match any of the given connection
  /// states.
  ///
  ///  If none of the devices match any of the given states,
  /// an empty list will be returned.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@param states Array of states. States can be one of \#STATE_CONNECTED, \#STATE_CONNECTING, \#STATE_DISCONNECTED, \#STATE_DISCONNECTING,
  ///@return List of devices. The list will be empty on error.
  jni.JniObject getDevicesMatchingConnectionStates(jni.JniObject states) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDevicesMatchingConnectionStates,
          jni.JniType.objectType,
          [states.reference]).object);

  static final _id_getConnectionState = jniAccessors.getMethodIDOf(_classRef,
      "getConnectionState", "(Landroid/bluetooth/BluetoothDevice;)I");

  /// from: public abstract int getConnectionState(android.bluetooth.BluetoothDevice device)
  ///
  /// Get the current connection state of the profile
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@param device Remote bluetooth device.
  ///@return State of the profile connection. One of \#STATE_CONNECTED, \#STATE_CONNECTING, \#STATE_DISCONNECTED, \#STATE_DISCONNECTING
  int getConnectionState(bluetoothdevice_.BluetoothDevice device) =>
      jniAccessors.callMethodWithArgs(reference, _id_getConnectionState,
          jni.JniType.intType, [device.reference]).integer;
}

/// from: android.bluetooth.BluetoothProfile$ServiceListener
///
/// An interface for notifying BluetoothProfile IPC clients when they have
/// been connected or disconnected to the service.
class BluetoothProfile_ServiceListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/bluetooth/BluetoothProfile\$ServiceListener");
  BluetoothProfile_ServiceListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onServiceConnected = jniAccessors.getMethodIDOf(_classRef,
      "onServiceConnected", "(ILandroid/bluetooth/BluetoothProfile;)V");

  /// from: public abstract void onServiceConnected(int profile, android.bluetooth.BluetoothProfile proxy)
  ///
  /// Called to notify the client when the proxy object has been
  /// connected to the service.
  ///@param profile - One of \#HEALTH, \#HEADSET or \#A2DP
  ///@param proxy - One of BluetoothHealth, BluetoothHeadset or BluetoothA2dp
  void onServiceConnected(int profile, BluetoothProfile proxy) =>
      jniAccessors.callMethodWithArgs(reference, _id_onServiceConnected,
          jni.JniType.voidType, [profile, proxy.reference]).check();

  static final _id_onServiceDisconnected =
      jniAccessors.getMethodIDOf(_classRef, "onServiceDisconnected", "(I)V");

  /// from: public abstract void onServiceDisconnected(int profile)
  ///
  /// Called to notify the client that this proxy object has been
  /// disconnected from the service.
  ///@param profile - One of \#HEALTH, \#HEADSET or \#A2DP
  void onServiceDisconnected(int profile) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onServiceDisconnected,
      jni.JniType.voidType,
      [profile]).check();
}
