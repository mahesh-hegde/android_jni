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

import "AdvertisingSet.dart" as advertisingset_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.le.AdvertisingSetCallback
///
/// Bluetooth LE advertising set callbacks, used to deliver advertising operation
/// status.
class AdvertisingSetCallback extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/AdvertisingSetCallback");
  AdvertisingSetCallback.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ADVERTISE_FAILED_ALREADY_STARTED
  ///
  /// Failed to start advertising as the advertising is already started.
  static const ADVERTISE_FAILED_ALREADY_STARTED = 3;

  /// from: static public final int ADVERTISE_FAILED_DATA_TOO_LARGE
  ///
  /// Failed to start advertising as the advertise data to be broadcasted is too
  /// large.
  static const ADVERTISE_FAILED_DATA_TOO_LARGE = 1;

  /// from: static public final int ADVERTISE_FAILED_FEATURE_UNSUPPORTED
  ///
  /// This feature is not supported on this platform.
  static const ADVERTISE_FAILED_FEATURE_UNSUPPORTED = 5;

  /// from: static public final int ADVERTISE_FAILED_INTERNAL_ERROR
  ///
  /// Operation failed due to an internal error.
  static const ADVERTISE_FAILED_INTERNAL_ERROR = 4;

  /// from: static public final int ADVERTISE_FAILED_TOO_MANY_ADVERTISERS
  ///
  /// Failed to start advertising because no advertising instance is available.
  static const ADVERTISE_FAILED_TOO_MANY_ADVERTISERS = 2;

  /// from: static public final int ADVERTISE_SUCCESS
  ///
  /// The requested operation was successful.
  static const ADVERTISE_SUCCESS = 0;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AdvertisingSetCallback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onAdvertisingSetStarted = jniAccessors.getMethodIDOf(
      _classRef,
      "onAdvertisingSetStarted",
      "(Landroid/bluetooth/le/AdvertisingSet;II)V");

  /// from: public void onAdvertisingSetStarted(android.bluetooth.le.AdvertisingSet advertisingSet, int txPower, int status)
  ///
  /// Callback triggered in response to BluetoothLeAdvertiser\#startAdvertisingSet
  /// indicating result of the operation. If status is ADVERTISE_SUCCESS, then advertisingSet
  /// contains the started set and it is advertising. If error occured, advertisingSet is
  /// null, and status will be set to proper error code.
  ///@param advertisingSet The advertising set that was started or null if error.
  ///@param txPower tx power that will be used for this set.
  ///@param status Status of the operation.
  void onAdvertisingSetStarted(advertisingset_.AdvertisingSet advertisingSet,
          int txPower, int status) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onAdvertisingSetStarted,
          jni.JniType.voidType,
          [advertisingSet.reference, txPower, status]).check();

  static final _id_onAdvertisingSetStopped = jniAccessors.getMethodIDOf(
      _classRef,
      "onAdvertisingSetStopped",
      "(Landroid/bluetooth/le/AdvertisingSet;)V");

  /// from: public void onAdvertisingSetStopped(android.bluetooth.le.AdvertisingSet advertisingSet)
  ///
  /// Callback triggered in response to BluetoothLeAdvertiser\#stopAdvertisingSet
  /// indicating advertising set is stopped.
  ///@param advertisingSet The advertising set.
  void onAdvertisingSetStopped(advertisingset_.AdvertisingSet advertisingSet) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAdvertisingSetStopped,
          jni.JniType.voidType, [advertisingSet.reference]).check();

  static final _id_onAdvertisingEnabled = jniAccessors.getMethodIDOf(_classRef,
      "onAdvertisingEnabled", "(Landroid/bluetooth/le/AdvertisingSet;ZI)V");

  /// from: public void onAdvertisingEnabled(android.bluetooth.le.AdvertisingSet advertisingSet, boolean enable, int status)
  ///
  /// Callback triggered in response to BluetoothLeAdvertiser\#startAdvertisingSet
  /// indicating result of the operation. If status is ADVERTISE_SUCCESS, then advertising set is
  /// advertising.
  ///@param advertisingSet The advertising set.
  ///@param status Status of the operation.
  void onAdvertisingEnabled(advertisingset_.AdvertisingSet advertisingSet,
          bool enable, int status) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onAdvertisingEnabled,
          jni.JniType.voidType,
          [advertisingSet.reference, enable, status]).check();

  static final _id_onAdvertisingDataSet = jniAccessors.getMethodIDOf(_classRef,
      "onAdvertisingDataSet", "(Landroid/bluetooth/le/AdvertisingSet;I)V");

  /// from: public void onAdvertisingDataSet(android.bluetooth.le.AdvertisingSet advertisingSet, int status)
  ///
  /// Callback triggered in response to AdvertisingSet\#setAdvertisingData indicating
  /// result of the operation. If status is ADVERTISE_SUCCESS, then data was changed.
  ///@param advertisingSet The advertising set.
  ///@param status Status of the operation.
  void onAdvertisingDataSet(
          advertisingset_.AdvertisingSet advertisingSet, int status) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAdvertisingDataSet,
          jni.JniType.voidType, [advertisingSet.reference, status]).check();

  static final _id_onScanResponseDataSet = jniAccessors.getMethodIDOf(_classRef,
      "onScanResponseDataSet", "(Landroid/bluetooth/le/AdvertisingSet;I)V");

  /// from: public void onScanResponseDataSet(android.bluetooth.le.AdvertisingSet advertisingSet, int status)
  ///
  /// Callback triggered in response to AdvertisingSet\#setAdvertisingData indicating
  /// result of the operation.
  ///@param advertisingSet The advertising set.
  ///@param status Status of the operation.
  void onScanResponseDataSet(
          advertisingset_.AdvertisingSet advertisingSet, int status) =>
      jniAccessors.callMethodWithArgs(reference, _id_onScanResponseDataSet,
          jni.JniType.voidType, [advertisingSet.reference, status]).check();

  static final _id_onAdvertisingParametersUpdated = jniAccessors.getMethodIDOf(
      _classRef,
      "onAdvertisingParametersUpdated",
      "(Landroid/bluetooth/le/AdvertisingSet;II)V");

  /// from: public void onAdvertisingParametersUpdated(android.bluetooth.le.AdvertisingSet advertisingSet, int txPower, int status)
  ///
  /// Callback triggered in response to AdvertisingSet\#setAdvertisingParameters
  /// indicating result of the operation.
  ///@param advertisingSet The advertising set.
  ///@param txPower tx power that will be used for this set.
  ///@param status Status of the operation.
  void onAdvertisingParametersUpdated(
          advertisingset_.AdvertisingSet advertisingSet,
          int txPower,
          int status) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onAdvertisingParametersUpdated,
          jni.JniType.voidType,
          [advertisingSet.reference, txPower, status]).check();

  static final _id_onPeriodicAdvertisingParametersUpdated =
      jniAccessors.getMethodIDOf(
          _classRef,
          "onPeriodicAdvertisingParametersUpdated",
          "(Landroid/bluetooth/le/AdvertisingSet;I)V");

  /// from: public void onPeriodicAdvertisingParametersUpdated(android.bluetooth.le.AdvertisingSet advertisingSet, int status)
  ///
  /// Callback triggered in response to AdvertisingSet\#setPeriodicAdvertisingParameters
  /// indicating result of the operation.
  ///@param advertisingSet The advertising set.
  ///@param status Status of the operation.
  void onPeriodicAdvertisingParametersUpdated(
          advertisingset_.AdvertisingSet advertisingSet, int status) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onPeriodicAdvertisingParametersUpdated,
          jni.JniType.voidType,
          [advertisingSet.reference, status]).check();

  static final _id_onPeriodicAdvertisingDataSet = jniAccessors.getMethodIDOf(
      _classRef,
      "onPeriodicAdvertisingDataSet",
      "(Landroid/bluetooth/le/AdvertisingSet;I)V");

  /// from: public void onPeriodicAdvertisingDataSet(android.bluetooth.le.AdvertisingSet advertisingSet, int status)
  ///
  /// Callback triggered in response to AdvertisingSet\#setPeriodicAdvertisingData
  /// indicating result of the operation.
  ///@param advertisingSet The advertising set.
  ///@param status Status of the operation.
  void onPeriodicAdvertisingDataSet(
          advertisingset_.AdvertisingSet advertisingSet, int status) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onPeriodicAdvertisingDataSet,
          jni.JniType.voidType,
          [advertisingSet.reference, status]).check();

  static final _id_onPeriodicAdvertisingEnabled = jniAccessors.getMethodIDOf(
      _classRef,
      "onPeriodicAdvertisingEnabled",
      "(Landroid/bluetooth/le/AdvertisingSet;ZI)V");

  /// from: public void onPeriodicAdvertisingEnabled(android.bluetooth.le.AdvertisingSet advertisingSet, boolean enable, int status)
  ///
  /// Callback triggered in response to AdvertisingSet\#setPeriodicAdvertisingEnabled
  /// indicating result of the operation.
  ///@param advertisingSet The advertising set.
  ///@param status Status of the operation.
  void onPeriodicAdvertisingEnabled(
          advertisingset_.AdvertisingSet advertisingSet,
          bool enable,
          int status) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onPeriodicAdvertisingEnabled,
          jni.JniType.voidType,
          [advertisingSet.reference, enable, status]).check();
}
