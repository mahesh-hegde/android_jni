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

import "BluetoothHealthAppConfiguration.dart"
    as bluetoothhealthappconfiguration_;

import "BluetoothDevice.dart" as bluetoothdevice_;

import "../os/ParcelFileDescriptor.dart" as parcelfiledescriptor_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.BluetoothHealthCallback
///
/// This abstract class is used to implement BluetoothHealth callbacks.
class BluetoothHealthCallback extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/BluetoothHealthCallback");
  BluetoothHealthCallback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  BluetoothHealthCallback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onHealthAppConfigurationStatusChange =
      jniAccessors.getMethodIDOf(
          _classRef,
          "onHealthAppConfigurationStatusChange",
          "(Landroid/bluetooth/BluetoothHealthAppConfiguration;I)V");

  /// from: public void onHealthAppConfigurationStatusChange(android.bluetooth.BluetoothHealthAppConfiguration config, int status)
  ///
  /// Callback to inform change in registration state of the health
  /// application.
  ///  This callback is called on the binder thread (not on the UI thread)
  ///@param config Bluetooth Health app configuration
  ///@param status Success or failure of the registration or unregistration calls. Can be one of
  /// BluetoothHealth\#APP_CONFIG_REGISTRATION_SUCCESS or BluetoothHealth\#APP_CONFIG_REGISTRATION_FAILURE or
  /// BluetoothHealth\#APP_CONFIG_UNREGISTRATION_SUCCESS
  /// or BluetoothHealth\#APP_CONFIG_UNREGISTRATION_FAILURE
  void onHealthAppConfigurationStatusChange(
          bluetoothhealthappconfiguration_.BluetoothHealthAppConfiguration
              config,
          int status) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onHealthAppConfigurationStatusChange,
          jni.JniType.voidType,
          [config.reference, status]).check();

  static final _id_onHealthChannelStateChange = jniAccessors.getMethodIDOf(
      _classRef,
      "onHealthChannelStateChange",
      "(Landroid/bluetooth/BluetoothHealthAppConfiguration;Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelFileDescriptor;I)V");

  /// from: public void onHealthChannelStateChange(android.bluetooth.BluetoothHealthAppConfiguration config, android.bluetooth.BluetoothDevice device, int prevState, int newState, android.os.ParcelFileDescriptor fd, int channelId)
  ///
  /// Callback to inform change in channel state.
  ///  Its the responsibility of the implementor of this callback to close the
  /// parcel file descriptor when done. This callback is called on the Binder
  /// thread (not the UI thread)
  ///@param config The Health app configutation
  ///@param device The Bluetooth Device
  ///@param prevState The previous state of the channel
  ///@param newState The new state of the channel.
  ///@param fd The Parcel File Descriptor when the channel state is connected.
  ///@param channelId The id associated with the channel. This id will be used in future calls
  /// like when disconnecting the channel.
  void onHealthChannelStateChange(
          bluetoothhealthappconfiguration_.BluetoothHealthAppConfiguration
              config,
          bluetoothdevice_.BluetoothDevice device,
          int prevState,
          int newState,
          parcelfiledescriptor_.ParcelFileDescriptor fd,
          int channelId) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onHealthChannelStateChange, jni.JniType.voidType, [
        config.reference,
        device.reference,
        prevState,
        newState,
        fd.reference,
        channelId
      ]).check();
}
