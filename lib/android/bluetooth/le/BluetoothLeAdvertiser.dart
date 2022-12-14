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

import "AdvertiseSettings.dart" as advertisesettings_;

import "AdvertiseData.dart" as advertisedata_;

import "AdvertiseCallback.dart" as advertisecallback_;

import "AdvertisingSetParameters.dart" as advertisingsetparameters_;

import "PeriodicAdvertisingParameters.dart" as periodicadvertisingparameters_;

import "AdvertisingSetCallback.dart" as advertisingsetcallback_;

import "../../os/Handler.dart" as handler_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.le.BluetoothLeAdvertiser
///
/// This class provides a way to perform Bluetooth LE advertise operations, such as starting and
/// stopping advertising. An advertiser can broadcast up to 31 bytes of advertisement data
/// represented by AdvertiseData.
///
/// To get an instance of BluetoothLeAdvertiser, call the
/// BluetoothAdapter\#getBluetoothLeAdvertiser() method.
///
/// __Note:__ Most of the methods here require android.Manifest.permission\#BLUETOOTH_ADMIN
/// permission.
///@see AdvertiseData
class BluetoothLeAdvertiser extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/BluetoothLeAdvertiser");
  BluetoothLeAdvertiser.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_startAdvertising = jniAccessors.getMethodIDOf(
      _classRef,
      "startAdvertising",
      "(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V");

  /// from: public void startAdvertising(android.bluetooth.le.AdvertiseSettings settings, android.bluetooth.le.AdvertiseData advertiseData, android.bluetooth.le.AdvertiseCallback callback)
  ///
  /// Start Bluetooth LE Advertising. On success, the {@code advertiseData} will be broadcasted.
  /// Returns immediately, the operation status is delivered through {@code callback}.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN permission.
  ///@param settings Settings for Bluetooth LE advertising.
  ///@param advertiseData Advertisement data to be broadcasted.
  ///@param callback Callback for advertising status.
  void startAdvertising(
          advertisesettings_.AdvertiseSettings settings,
          advertisedata_.AdvertiseData advertiseData,
          advertisecallback_.AdvertiseCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startAdvertising, jni.JniType.voidType, [
        settings.reference,
        advertiseData.reference,
        callback.reference
      ]).check();

  static final _id_startAdvertising1 = jniAccessors.getMethodIDOf(
      _classRef,
      "startAdvertising",
      "(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V");

  /// from: public void startAdvertising(android.bluetooth.le.AdvertiseSettings settings, android.bluetooth.le.AdvertiseData advertiseData, android.bluetooth.le.AdvertiseData scanResponse, android.bluetooth.le.AdvertiseCallback callback)
  ///
  /// Start Bluetooth LE Advertising. The {@code advertiseData} will be broadcasted if the
  /// operation succeeds. The {@code scanResponse} is returned when a scanning device sends an
  /// active scan request. This method returns immediately, the operation status is delivered
  /// through {@code callback}.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN
  ///@param settings Settings for Bluetooth LE advertising.
  ///@param advertiseData Advertisement data to be advertised in advertisement packet.
  ///@param scanResponse Scan response associated with the advertisement data.
  ///@param callback Callback for advertising status.
  void startAdvertising1(
          advertisesettings_.AdvertiseSettings settings,
          advertisedata_.AdvertiseData advertiseData,
          advertisedata_.AdvertiseData scanResponse,
          advertisecallback_.AdvertiseCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startAdvertising1, jni.JniType.voidType, [
        settings.reference,
        advertiseData.reference,
        scanResponse.reference,
        callback.reference
      ]).check();

  static final _id_stopAdvertising = jniAccessors.getMethodIDOf(_classRef,
      "stopAdvertising", "(Landroid/bluetooth/le/AdvertiseCallback;)V");

  /// from: public void stopAdvertising(android.bluetooth.le.AdvertiseCallback callback)
  ///
  /// Stop Bluetooth LE advertising. The {@code callback} must be the same one use in
  /// BluetoothLeAdvertiser\#startAdvertising.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN permission.
  ///@param callback AdvertiseCallback identifies the advertising instance to stop.
  void stopAdvertising(advertisecallback_.AdvertiseCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_stopAdvertising,
          jni.JniType.voidType, [callback.reference]).check();

  static final _id_startAdvertisingSet = jniAccessors.getMethodIDOf(
      _classRef,
      "startAdvertisingSet",
      "(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;)V");

  /// from: public void startAdvertisingSet(android.bluetooth.le.AdvertisingSetParameters parameters, android.bluetooth.le.AdvertiseData advertiseData, android.bluetooth.le.AdvertiseData scanResponse, android.bluetooth.le.PeriodicAdvertisingParameters periodicParameters, android.bluetooth.le.AdvertiseData periodicData, android.bluetooth.le.AdvertisingSetCallback callback)
  ///
  /// Creates a new advertising set. If operation succeed, device will start advertising. This
  /// method returns immediately, the operation status is delivered through
  /// {@code callback.onAdvertisingSetStarted()}.
  ///
  ///@param parameters advertising set parameters.
  ///@param advertiseData Advertisement data to be broadcasted. Size must not exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength. If the advertisement is connectable,
  /// three bytes will be added for flags.
  ///@param scanResponse Scan response associated with the advertisement data. Size must not
  /// exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength.
  ///@param periodicParameters periodic advertisng parameters. If null, periodic advertising will
  /// not be started.
  ///@param periodicData Periodic advertising data. Size must not exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength.
  ///@param callback Callback for advertising set.
  ///@throws IllegalArgumentException when any of the data parameter exceed the maximum allowable
  /// size, or unsupported advertising PHY is selected, or when attempt to use Periodic Advertising
  /// feature is made when it's not supported by the controller.
  void startAdvertisingSet(
          advertisingsetparameters_.AdvertisingSetParameters parameters,
          advertisedata_.AdvertiseData advertiseData,
          advertisedata_.AdvertiseData scanResponse,
          periodicadvertisingparameters_.PeriodicAdvertisingParameters
              periodicParameters,
          advertisedata_.AdvertiseData periodicData,
          advertisingsetcallback_.AdvertisingSetCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startAdvertisingSet, jni.JniType.voidType, [
        parameters.reference,
        advertiseData.reference,
        scanResponse.reference,
        periodicParameters.reference,
        periodicData.reference,
        callback.reference
      ]).check();

  static final _id_startAdvertisingSet1 = jniAccessors.getMethodIDOf(
      _classRef,
      "startAdvertisingSet",
      "(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V");

  /// from: public void startAdvertisingSet(android.bluetooth.le.AdvertisingSetParameters parameters, android.bluetooth.le.AdvertiseData advertiseData, android.bluetooth.le.AdvertiseData scanResponse, android.bluetooth.le.PeriodicAdvertisingParameters periodicParameters, android.bluetooth.le.AdvertiseData periodicData, android.bluetooth.le.AdvertisingSetCallback callback, android.os.Handler handler)
  ///
  /// Creates a new advertising set. If operation succeed, device will start advertising. This
  /// method returns immediately, the operation status is delivered through
  /// {@code callback.onAdvertisingSetStarted()}.
  ///
  ///@param parameters advertising set parameters.
  ///@param advertiseData Advertisement data to be broadcasted. Size must not exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength. If the advertisement is connectable,
  /// three bytes will be added for flags.
  ///@param scanResponse Scan response associated with the advertisement data. Size must not
  /// exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength.
  ///@param periodicParameters periodic advertisng parameters. If null, periodic advertising will
  /// not be started.
  ///@param periodicData Periodic advertising data. Size must not exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength.
  ///@param callback Callback for advertising set.
  ///@param handler thread upon which the callbacks will be invoked.
  ///@throws IllegalArgumentException when any of the data parameter exceed the maximum allowable
  /// size, or unsupported advertising PHY is selected, or when attempt to use Periodic Advertising
  /// feature is made when it's not supported by the controller.
  void startAdvertisingSet1(
          advertisingsetparameters_.AdvertisingSetParameters parameters,
          advertisedata_.AdvertiseData advertiseData,
          advertisedata_.AdvertiseData scanResponse,
          periodicadvertisingparameters_.PeriodicAdvertisingParameters
              periodicParameters,
          advertisedata_.AdvertiseData periodicData,
          advertisingsetcallback_.AdvertisingSetCallback callback,
          handler_.Handler handler) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startAdvertisingSet1, jni.JniType.voidType, [
        parameters.reference,
        advertiseData.reference,
        scanResponse.reference,
        periodicParameters.reference,
        periodicData.reference,
        callback.reference,
        handler.reference
      ]).check();

  static final _id_startAdvertisingSet2 = jniAccessors.getMethodIDOf(
      _classRef,
      "startAdvertisingSet",
      "(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V");

  /// from: public void startAdvertisingSet(android.bluetooth.le.AdvertisingSetParameters parameters, android.bluetooth.le.AdvertiseData advertiseData, android.bluetooth.le.AdvertiseData scanResponse, android.bluetooth.le.PeriodicAdvertisingParameters periodicParameters, android.bluetooth.le.AdvertiseData periodicData, int duration, int maxExtendedAdvertisingEvents, android.bluetooth.le.AdvertisingSetCallback callback)
  ///
  /// Creates a new advertising set. If operation succeed, device will start advertising. This
  /// method returns immediately, the operation status is delivered through
  /// {@code callback.onAdvertisingSetStarted()}.
  ///
  ///@param parameters advertising set parameters.
  ///@param advertiseData Advertisement data to be broadcasted. Size must not exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength. If the advertisement is connectable,
  /// three bytes will be added for flags.
  ///@param scanResponse Scan response associated with the advertisement data. Size must not
  /// exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength.
  ///@param periodicParameters periodic advertisng parameters. If null, periodic advertising will
  /// not be started.
  ///@param periodicData Periodic advertising data. Size must not exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength.
  ///@param duration advertising duration, in 10ms unit. Valid range is from 1 (10ms) to 65535
  /// (655,350 ms). 0 means advertising should continue until stopped.
  ///@param maxExtendedAdvertisingEvents maximum number of extended advertising events the
  /// controller shall attempt to send prior to terminating the extended advertising, even if the
  /// duration has not expired. Valid range is from 1 to 255. 0 means no maximum.
  ///@param callback Callback for advertising set.
  ///@throws IllegalArgumentException when any of the data parameter exceed the maximum allowable
  /// size, or unsupported advertising PHY is selected, or when attempt to use Periodic Advertising
  /// feature is made when it's not supported by the controller.
  void startAdvertisingSet2(
          advertisingsetparameters_.AdvertisingSetParameters parameters,
          advertisedata_.AdvertiseData advertiseData,
          advertisedata_.AdvertiseData scanResponse,
          periodicadvertisingparameters_.PeriodicAdvertisingParameters
              periodicParameters,
          advertisedata_.AdvertiseData periodicData,
          int duration,
          int maxExtendedAdvertisingEvents,
          advertisingsetcallback_.AdvertisingSetCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startAdvertisingSet2, jni.JniType.voidType, [
        parameters.reference,
        advertiseData.reference,
        scanResponse.reference,
        periodicParameters.reference,
        periodicData.reference,
        duration,
        maxExtendedAdvertisingEvents,
        callback.reference
      ]).check();

  static final _id_startAdvertisingSet3 = jniAccessors.getMethodIDOf(
      _classRef,
      "startAdvertisingSet",
      "(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V");

  /// from: public void startAdvertisingSet(android.bluetooth.le.AdvertisingSetParameters parameters, android.bluetooth.le.AdvertiseData advertiseData, android.bluetooth.le.AdvertiseData scanResponse, android.bluetooth.le.PeriodicAdvertisingParameters periodicParameters, android.bluetooth.le.AdvertiseData periodicData, int duration, int maxExtendedAdvertisingEvents, android.bluetooth.le.AdvertisingSetCallback callback, android.os.Handler handler)
  ///
  /// Creates a new advertising set. If operation succeed, device will start advertising. This
  /// method returns immediately, the operation status is delivered through
  /// {@code callback.onAdvertisingSetStarted()}.
  ///
  ///@param parameters Advertising set parameters.
  ///@param advertiseData Advertisement data to be broadcasted. Size must not exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength. If the advertisement is connectable,
  /// three bytes will be added for flags.
  ///@param scanResponse Scan response associated with the advertisement data. Size must not
  /// exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength
  ///@param periodicParameters Periodic advertisng parameters. If null, periodic advertising will
  /// not be started.
  ///@param periodicData Periodic advertising data. Size must not exceed BluetoothAdapter\#getLeMaximumAdvertisingDataLength
  ///@param duration advertising duration, in 10ms unit. Valid range is from 1 (10ms) to 65535
  /// (655,350 ms). 0 means advertising should continue until stopped.
  ///@param maxExtendedAdvertisingEvents maximum number of extended advertising events the
  /// controller shall attempt to send prior to terminating the extended advertising, even if the
  /// duration has not expired. Valid range is from 1 to 255. 0 means no maximum.
  ///@param callback Callback for advertising set.
  ///@param handler Thread upon which the callbacks will be invoked.
  ///@throws IllegalArgumentException When any of the data parameter exceed the maximum allowable
  /// size, or unsupported advertising PHY is selected, or when attempt to use Periodic Advertising
  /// feature is made when it's not supported by the controller, or when
  /// maxExtendedAdvertisingEvents is used on a controller that doesn't support the LE Extended
  /// Advertising
  void startAdvertisingSet3(
          advertisingsetparameters_.AdvertisingSetParameters parameters,
          advertisedata_.AdvertiseData advertiseData,
          advertisedata_.AdvertiseData scanResponse,
          periodicadvertisingparameters_.PeriodicAdvertisingParameters
              periodicParameters,
          advertisedata_.AdvertiseData periodicData,
          int duration,
          int maxExtendedAdvertisingEvents,
          advertisingsetcallback_.AdvertisingSetCallback callback,
          handler_.Handler handler) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startAdvertisingSet3, jni.JniType.voidType, [
        parameters.reference,
        advertiseData.reference,
        scanResponse.reference,
        periodicParameters.reference,
        periodicData.reference,
        duration,
        maxExtendedAdvertisingEvents,
        callback.reference,
        handler.reference
      ]).check();

  static final _id_stopAdvertisingSet = jniAccessors.getMethodIDOf(_classRef,
      "stopAdvertisingSet", "(Landroid/bluetooth/le/AdvertisingSetCallback;)V");

  /// from: public void stopAdvertisingSet(android.bluetooth.le.AdvertisingSetCallback callback)
  ///
  /// Used to dispose of a AdvertisingSet object, obtained with BluetoothLeAdvertiser\#startAdvertisingSet.
  void stopAdvertisingSet(
          advertisingsetcallback_.AdvertisingSetCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_stopAdvertisingSet,
          jni.JniType.voidType, [callback.reference]).check();
}
