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

import "BluetoothHidDeviceAppSdpSettings.dart"
    as bluetoothhiddeviceappsdpsettings_;

import "BluetoothHidDeviceAppQosSettings.dart"
    as bluetoothhiddeviceappqossettings_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.BluetoothHidDevice
///
/// Provides the public APIs to control the Bluetooth HID Device profile.
///
/// BluetoothHidDevice is a proxy object for controlling the Bluetooth HID Device Service via IPC.
/// Use BluetoothAdapter\#getProfileProxy to get the BluetoothHidDevice proxy object.
class BluetoothHidDevice extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/BluetoothHidDevice");
  BluetoothHidDevice.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_CONNECTION_STATE_CHANGED
  ///
  /// Intent used to broadcast the change in connection state of the Input Host profile.
  ///
  /// This intent will have 3 extras:
  ///
  /// <ul>
  ///   <li>\#EXTRA_STATE - The current state of the profile.
  ///   <li>\#EXTRA_PREVIOUS_STATE- The previous state of the profile.
  ///   <li>BluetoothDevice\#EXTRA_DEVICE - The remote device.
  /// </ul>
  ///
  /// \#EXTRA_STATE or \#EXTRA_PREVIOUS_STATE can be any of \#STATE_DISCONNECTED, \#STATE_CONNECTING, \#STATE_CONNECTED, \#STATE_DISCONNECTING.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH permission to receive.
  static const ACTION_CONNECTION_STATE_CHANGED =
      "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED";

  /// from: static public final byte ERROR_RSP_INVALID_PARAM
  ///
  /// Constant representing error response for Set Report due to "invalid parameter".
  ///@see Callback\#onSetReport(BluetoothDevice, byte, byte, byte[])
  static const ERROR_RSP_INVALID_PARAM = 4;

  /// from: static public final byte ERROR_RSP_INVALID_RPT_ID
  ///
  /// Constant representing error response for Set Report due to "invalid report ID".
  ///@see Callback\#onSetReport(BluetoothDevice, byte, byte, byte[])
  static const ERROR_RSP_INVALID_RPT_ID = 2;

  /// from: static public final byte ERROR_RSP_NOT_READY
  ///
  /// Constant representing error response for Set Report due to "not ready".
  ///@see Callback\#onSetReport(BluetoothDevice, byte, byte, byte[])
  static const ERROR_RSP_NOT_READY = 1;

  /// from: static public final byte ERROR_RSP_SUCCESS
  ///
  /// Constant representing success response for Set Report.
  ///@see Callback\#onSetReport(BluetoothDevice, byte, byte, byte[])
  static const ERROR_RSP_SUCCESS = 0;

  /// from: static public final byte ERROR_RSP_UNKNOWN
  ///
  /// Constant representing error response for Set Report with unknown reason.
  ///@see Callback\#onSetReport(BluetoothDevice, byte, byte, byte[])
  static const ERROR_RSP_UNKNOWN = 14;

  /// from: static public final byte ERROR_RSP_UNSUPPORTED_REQ
  ///
  /// Constant representing error response for Set Report due to "unsupported request".
  ///@see Callback\#onSetReport(BluetoothDevice, byte, byte, byte[])
  static const ERROR_RSP_UNSUPPORTED_REQ = 3;

  /// from: static public final byte PROTOCOL_BOOT_MODE
  ///
  /// Constant representing boot protocol mode used set by host. Default is always \#PROTOCOL_REPORT_MODE unless notified otherwise.
  ///@see Callback\#onSetProtocol(BluetoothDevice, byte)
  static const PROTOCOL_BOOT_MODE = 0;

  /// from: static public final byte PROTOCOL_REPORT_MODE
  ///
  /// Constant representing report protocol mode used set by host. Default is always \#PROTOCOL_REPORT_MODE unless notified otherwise.
  ///@see Callback\#onSetProtocol(BluetoothDevice, byte)
  static const PROTOCOL_REPORT_MODE = 1;

  /// from: static public final byte REPORT_TYPE_FEATURE
  ///
  /// Constant representing HID Feature Report type.
  ///@see Callback\#onGetReport(BluetoothDevice, byte, byte, int)
  ///@see Callback\#onSetReport(BluetoothDevice, byte, byte, byte[])
  ///@see Callback\#onInterruptData(BluetoothDevice, byte, byte[])
  static const REPORT_TYPE_FEATURE = 3;

  /// from: static public final byte REPORT_TYPE_INPUT
  ///
  /// Constant representing HID Input Report type.
  ///@see Callback\#onGetReport(BluetoothDevice, byte, byte, int)
  ///@see Callback\#onSetReport(BluetoothDevice, byte, byte, byte[])
  ///@see Callback\#onInterruptData(BluetoothDevice, byte, byte[])
  static const REPORT_TYPE_INPUT = 1;

  /// from: static public final byte REPORT_TYPE_OUTPUT
  ///
  /// Constant representing HID Output Report type.
  ///@see Callback\#onGetReport(BluetoothDevice, byte, byte, int)
  ///@see Callback\#onSetReport(BluetoothDevice, byte, byte, byte[])
  ///@see Callback\#onInterruptData(BluetoothDevice, byte, byte[])
  static const REPORT_TYPE_OUTPUT = 2;

  /// from: static public final byte SUBCLASS1_COMBO
  ///
  /// Constant representing combo keyboard and mouse subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS1_COMBO = -64;

  /// from: static public final byte SUBCLASS1_KEYBOARD
  ///
  /// Constant representing keyboard subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS1_KEYBOARD = 64;

  /// from: static public final byte SUBCLASS1_MOUSE
  ///
  /// Constant representing mouse subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS1_MOUSE = -128;

  /// from: static public final byte SUBCLASS1_NONE
  ///
  /// Constant representing unspecified HID device subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS1_NONE = 0;

  /// from: static public final byte SUBCLASS2_CARD_READER
  ///
  /// Constant representing card reader subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS2_CARD_READER = 6;

  /// from: static public final byte SUBCLASS2_DIGITIZER_TABLET
  ///
  /// Constant representing digitizer tablet subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS2_DIGITIZER_TABLET = 5;

  /// from: static public final byte SUBCLASS2_GAMEPAD
  ///
  /// Constant representing gamepad subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS2_GAMEPAD = 2;

  /// from: static public final byte SUBCLASS2_JOYSTICK
  ///
  /// Constant representing joystick subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS2_JOYSTICK = 1;

  /// from: static public final byte SUBCLASS2_REMOTE_CONTROL
  ///
  /// Constant representing remote control subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS2_REMOTE_CONTROL = 3;

  /// from: static public final byte SUBCLASS2_SENSING_DEVICE
  ///
  /// Constant representing sensing device subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS2_SENSING_DEVICE = 4;

  /// from: static public final byte SUBCLASS2_UNCATEGORIZED
  ///
  /// Constant representing uncategorized HID device subclass.
  ///@see \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  ///     BluetoothHidDeviceAppQosSettings, Executor, Callback)
  static const SUBCLASS2_UNCATEGORIZED = 0;

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

  static final _id_registerApp = jniAccessors.getMethodIDOf(
      _classRef,
      "registerApp",
      "(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice\$Callback;)Z");

  /// from: public boolean registerApp(android.bluetooth.BluetoothHidDeviceAppSdpSettings sdp, android.bluetooth.BluetoothHidDeviceAppQosSettings inQos, android.bluetooth.BluetoothHidDeviceAppQosSettings outQos, java.util.concurrent.Executor executor, android.bluetooth.BluetoothHidDevice.Callback callback)
  ///
  /// Registers application to be used for HID device. Connections to HID Device are only possible
  /// when application is registered. Only one application can be registered at one time. When an
  /// application is registered, the HID Host service will be disabled until it is unregistered.
  /// When no longer used, application should be unregistered using \#unregisterApp(). The
  /// app will be automatically unregistered if it is not foreground. The registration status
  /// should be tracked by the application by handling callback from Callback\#onAppStatusChanged.
  /// The app registration status is not related to the return value of this method.
  ///@param sdp BluetoothHidDeviceAppSdpSettings object of HID Device SDP record. The HID
  ///     Device SDP record is required.
  ///@param inQos BluetoothHidDeviceAppQosSettings object of Incoming QoS Settings. The
  ///     Incoming QoS Settings is not required. Use null or default
  ///     BluetoothHidDeviceAppQosSettings.Builder for default values.
  ///@param outQos BluetoothHidDeviceAppQosSettings object of Outgoing QoS Settings. The
  ///     Outgoing QoS Settings is not required. Use null or default
  ///     BluetoothHidDeviceAppQosSettings.Builder for default values.
  ///@param executor Executor object on which callback will be executed. The Executor
  ///     object is required.
  ///@param callback Callback object to which callback messages will be sent. The Callback
  ///     object is required.
  ///@return true if the command is successfully sent; otherwise false.
  bool registerApp(
          bluetoothhiddeviceappsdpsettings_.BluetoothHidDeviceAppSdpSettings
              sdp,
          bluetoothhiddeviceappqossettings_.BluetoothHidDeviceAppQosSettings
              inQos,
          bluetoothhiddeviceappqossettings_.BluetoothHidDeviceAppQosSettings
              outQos,
          jni.JniObject executor,
          BluetoothHidDevice_Callback callback) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_registerApp, jni.JniType.booleanType, [
        sdp.reference,
        inQos.reference,
        outQos.reference,
        executor.reference,
        callback.reference
      ]).boolean;

  static final _id_unregisterApp =
      jniAccessors.getMethodIDOf(_classRef, "unregisterApp", "()Z");

  /// from: public boolean unregisterApp()
  ///
  /// Unregisters application. Active connection will be disconnected and no new connections will
  /// be allowed until registered again using \#registerApp (BluetoothHidDeviceAppQosSettings, BluetoothHidDeviceAppQosSettings,
  /// BluetoothHidDeviceAppQosSettings, Executor, Callback). The registration status should be
  /// tracked by the application by handling callback from Callback\#onAppStatusChanged. The app
  /// registration status is not related to the return value of this method.
  ///@return true if the command is successfully sent; otherwise false.
  bool unregisterApp() => jniAccessors.callMethodWithArgs(
      reference, _id_unregisterApp, jni.JniType.booleanType, []).boolean;

  static final _id_sendReport = jniAccessors.getMethodIDOf(
      _classRef, "sendReport", "(Landroid/bluetooth/BluetoothDevice;I[B)Z");

  /// from: public boolean sendReport(android.bluetooth.BluetoothDevice device, int id, byte[] data)
  ///
  /// Sends report to remote host using interrupt channel.
  ///@param id Report Id, as defined in descriptor. Can be 0 in case Report Id are not defined in
  ///     descriptor.
  ///@param data Report data, not including Report Id.
  ///@return true if the command is successfully sent; otherwise false.
  bool sendReport(bluetoothdevice_.BluetoothDevice device, int id,
          jni.JniObject data) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_sendReport,
          jni.JniType.booleanType,
          [device.reference, id, data.reference]).boolean;

  static final _id_replyReport = jniAccessors.getMethodIDOf(
      _classRef, "replyReport", "(Landroid/bluetooth/BluetoothDevice;BB[B)Z");

  /// from: public boolean replyReport(android.bluetooth.BluetoothDevice device, byte type, byte id, byte[] data)
  ///
  /// Sends report to remote host as reply for GET_REPORT request from Callback\#onGetReport(BluetoothDevice, byte, byte, int).
  ///@param type Report Type, as in request.
  ///@param id Report Id, as in request.
  ///@param data Report data, not including Report Id.
  ///@return true if the command is successfully sent; otherwise false.
  bool replyReport(bluetoothdevice_.BluetoothDevice device, int type, int id,
          jni.JniObject data) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_replyReport,
          jni.JniType.booleanType,
          [device.reference, type, id, data.reference]).boolean;

  static final _id_reportError = jniAccessors.getMethodIDOf(
      _classRef, "reportError", "(Landroid/bluetooth/BluetoothDevice;B)Z");

  /// from: public boolean reportError(android.bluetooth.BluetoothDevice device, byte error)
  ///
  /// Sends error handshake message as reply for invalid SET_REPORT request from Callback\#onSetReport(BluetoothDevice, byte, byte, byte[]).
  ///@param error Error to be sent for SET_REPORT via HANDSHAKE.
  ///@return true if the command is successfully sent; otherwise false.
  bool reportError(bluetoothdevice_.BluetoothDevice device, int error) =>
      jniAccessors.callMethodWithArgs(reference, _id_reportError,
          jni.JniType.booleanType, [device.reference, error]).boolean;

  static final _id_connect = jniAccessors.getMethodIDOf(
      _classRef, "connect", "(Landroid/bluetooth/BluetoothDevice;)Z");

  /// from: public boolean connect(android.bluetooth.BluetoothDevice device)
  ///
  /// Initiates connection to host which is currently paired with this device. If the application
  /// is not registered, \#connect(BluetoothDevice) will fail. The connection state should be
  /// tracked by the application by handling callback from Callback\#onConnectionStateChanged. The
  /// connection state is not related to the return value of this method.
  ///@return true if the command is successfully sent; otherwise false.
  bool connect(bluetoothdevice_.BluetoothDevice device) =>
      jniAccessors.callMethodWithArgs(reference, _id_connect,
          jni.JniType.booleanType, [device.reference]).boolean;

  static final _id_disconnect = jniAccessors.getMethodIDOf(
      _classRef, "disconnect", "(Landroid/bluetooth/BluetoothDevice;)Z");

  /// from: public boolean disconnect(android.bluetooth.BluetoothDevice device)
  ///
  /// Disconnects from currently connected host. The connection state should be tracked by the
  /// application by handling callback from Callback\#onConnectionStateChanged. The connection state
  /// is not related to the return value of this method.
  ///@return true if the command is successfully sent; otherwise false.
  bool disconnect(bluetoothdevice_.BluetoothDevice device) =>
      jniAccessors.callMethodWithArgs(reference, _id_disconnect,
          jni.JniType.booleanType, [device.reference]).boolean;
}

/// from: android.bluetooth.BluetoothHidDevice$Callback
///
/// The template class that applications use to call callback functions on events from the HID
/// host. Callback functions are wrapped in this class and registered to the Android system
/// during app registration.
class BluetoothHidDevice_Callback extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/BluetoothHidDevice\$Callback");
  BluetoothHidDevice_Callback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  BluetoothHidDevice_Callback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onAppStatusChanged = jniAccessors.getMethodIDOf(_classRef,
      "onAppStatusChanged", "(Landroid/bluetooth/BluetoothDevice;Z)V");

  /// from: public void onAppStatusChanged(android.bluetooth.BluetoothDevice pluggedDevice, boolean registered)
  ///
  /// Callback called when application registration state changes. Usually it's called due to
  /// either BluetoothHidDevice\#registerApp (String, String, String, byte, byte[],
  /// Executor, Callback) or BluetoothHidDevice\#unregisterApp() , but can be also
  /// unsolicited in case e.g. Bluetooth was turned off in which case application is
  /// unregistered automatically.
  ///@param pluggedDevice BluetoothDevice object which represents host that currently
  ///     has Virtual Cable established with device. Only valid when application is registered,
  ///     can be <code>null</code>.
  ///@param registered <code>true</code> if application is registered, <code>false</code>
  ///     otherwise.
  void onAppStatusChanged(
          bluetoothdevice_.BluetoothDevice pluggedDevice, bool registered) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAppStatusChanged,
          jni.JniType.voidType, [pluggedDevice.reference, registered]).check();

  static final _id_onConnectionStateChanged = jniAccessors.getMethodIDOf(
      _classRef,
      "onConnectionStateChanged",
      "(Landroid/bluetooth/BluetoothDevice;I)V");

  /// from: public void onConnectionStateChanged(android.bluetooth.BluetoothDevice device, int state)
  ///
  /// Callback called when connection state with remote host was changed. Application can
  /// assume than Virtual Cable is established when called with BluetoothProfile\#STATE_CONNECTED <code>state</code>.
  ///@param device BluetoothDevice object representing host device which connection
  ///     state was changed.
  ///@param state Connection state as defined in BluetoothProfile.
  void onConnectionStateChanged(
          bluetoothdevice_.BluetoothDevice device, int state) =>
      jniAccessors.callMethodWithArgs(reference, _id_onConnectionStateChanged,
          jni.JniType.voidType, [device.reference, state]).check();

  static final _id_onGetReport = jniAccessors.getMethodIDOf(
      _classRef, "onGetReport", "(Landroid/bluetooth/BluetoothDevice;BBI)V");

  /// from: public void onGetReport(android.bluetooth.BluetoothDevice device, byte type, byte id, int bufferSize)
  ///
  /// Callback called when GET_REPORT is received from remote host. Should be replied by
  /// application using BluetoothHidDevice\#replyReport(BluetoothDevice, byte, byte,
  /// byte[]).
  ///@param type Requested Report Type.
  ///@param id Requested Report Id, can be 0 if no Report Id are defined in descriptor.
  ///@param bufferSize Requested buffer size, application shall respond with at least given
  ///     number of bytes.
  void onGetReport(bluetoothdevice_.BluetoothDevice device, int type, int id,
          int bufferSize) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onGetReport,
          jni.JniType.voidType,
          [device.reference, type, id, bufferSize]).check();

  static final _id_onSetReport = jniAccessors.getMethodIDOf(
      _classRef, "onSetReport", "(Landroid/bluetooth/BluetoothDevice;BB[B)V");

  /// from: public void onSetReport(android.bluetooth.BluetoothDevice device, byte type, byte id, byte[] data)
  ///
  /// Callback called when SET_REPORT is received from remote host. In case received data are
  /// invalid, application shall respond with BluetoothHidDevice\#reportError(BluetoothDevice, byte).
  ///@param type Report Type.
  ///@param id Report Id.
  ///@param data Report data.
  void onSetReport(bluetoothdevice_.BluetoothDevice device, int type, int id,
          jni.JniObject data) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onSetReport,
          jni.JniType.voidType,
          [device.reference, type, id, data.reference]).check();

  static final _id_onSetProtocol = jniAccessors.getMethodIDOf(
      _classRef, "onSetProtocol", "(Landroid/bluetooth/BluetoothDevice;B)V");

  /// from: public void onSetProtocol(android.bluetooth.BluetoothDevice device, byte protocol)
  ///
  /// Callback called when SET_PROTOCOL is received from remote host. Application shall use
  /// this information to send only reports valid for given protocol mode. By default, BluetoothHidDevice\#PROTOCOL_REPORT_MODE shall be assumed.
  ///@param protocol Protocol Mode.
  void onSetProtocol(bluetoothdevice_.BluetoothDevice device, int protocol) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSetProtocol,
          jni.JniType.voidType, [device.reference, protocol]).check();

  static final _id_onInterruptData = jniAccessors.getMethodIDOf(_classRef,
      "onInterruptData", "(Landroid/bluetooth/BluetoothDevice;B[B)V");

  /// from: public void onInterruptData(android.bluetooth.BluetoothDevice device, byte reportId, byte[] data)
  ///
  /// Callback called when report data is received over interrupt channel. Report Type is
  /// assumed to be BluetoothHidDevice\#REPORT_TYPE_OUTPUT.
  ///@param reportId Report Id.
  ///@param data Report data.
  void onInterruptData(bluetoothdevice_.BluetoothDevice device, int reportId,
          jni.JniObject data) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onInterruptData,
          jni.JniType.voidType,
          [device.reference, reportId, data.reference]).check();

  static final _id_onVirtualCableUnplug = jniAccessors.getMethodIDOf(_classRef,
      "onVirtualCableUnplug", "(Landroid/bluetooth/BluetoothDevice;)V");

  /// from: public void onVirtualCableUnplug(android.bluetooth.BluetoothDevice device)
  ///
  /// Callback called when Virtual Cable is removed. After this callback is received connection
  /// will be disconnected automatically.
  void onVirtualCableUnplug(bluetoothdevice_.BluetoothDevice device) =>
      jniAccessors.callMethodWithArgs(reference, _id_onVirtualCableUnplug,
          jni.JniType.voidType, [device.reference]).check();
}
