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

import "ScanCallback.dart" as scancallback_;

import "ScanSettings.dart" as scansettings_;

import "../../app/PendingIntent.dart" as pendingintent_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.le.BluetoothLeScanner
///
/// This class provides methods to perform scan related operations for Bluetooth LE devices. An
/// application can scan for a particular type of Bluetooth LE devices using ScanFilter. It
/// can also request different types of callbacks for delivering the result.
///
/// Use BluetoothAdapter\#getBluetoothLeScanner() to get an instance of
/// BluetoothLeScanner.
///
/// __Note:__ Most of the scan methods here require
/// android.Manifest.permission\#BLUETOOTH_ADMIN permission.
///@see ScanFilter
class BluetoothLeScanner extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/BluetoothLeScanner");
  BluetoothLeScanner.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String EXTRA_CALLBACK_TYPE
  ///
  /// Optional extra indicating the callback type, which will be one of
  /// CALLBACK_TYPE_* constants in ScanSettings.
  ///@see ScanCallback\#onScanResult(int, ScanResult)
  static const EXTRA_CALLBACK_TYPE = "android.bluetooth.le.extra.CALLBACK_TYPE";

  /// from: static public final java.lang.String EXTRA_ERROR_CODE
  ///
  /// Optional extra indicating the error code, if any. The error code will be one of the
  /// SCAN_FAILED_* codes in ScanCallback.
  static const EXTRA_ERROR_CODE = "android.bluetooth.le.extra.ERROR_CODE";

  /// from: static public final java.lang.String EXTRA_LIST_SCAN_RESULT
  ///
  /// Extra containing a list of ScanResults. It can have one or more results if there was no
  /// error. In case of error, \#EXTRA_ERROR_CODE will contain the error code and this
  /// extra will not be available.
  static const EXTRA_LIST_SCAN_RESULT =
      "android.bluetooth.le.extra.LIST_SCAN_RESULT";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  BluetoothLeScanner()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_startScan = jniAccessors.getMethodIDOf(
      _classRef, "startScan", "(Landroid/bluetooth/le/ScanCallback;)V");

  /// from: public void startScan(android.bluetooth.le.ScanCallback callback)
  ///
  /// Start Bluetooth LE scan with default parameters and no filters. The scan results will be
  /// delivered through {@code callback}. For unfiltered scans, scanning is stopped on screen
  /// off to save power. Scanning is resumed when screen is turned on again. To avoid this, use
  /// \#startScan(List, ScanSettings, ScanCallback) with desired ScanFilter.
  ///
  /// An app must hold
  /// android.Manifest.permission\#ACCESS_COARSE_LOCATION ACCESS_COARSE_LOCATION or
  /// android.Manifest.permission\#ACCESS_FINE_LOCATION ACCESS_FINE_LOCATION permission
  /// in order to get results.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN
  ///@param callback Callback used to deliver scan results.
  ///@throws IllegalArgumentException If {@code callback} is null.
  void startScan(scancallback_.ScanCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_startScan,
          jni.JniType.voidType, [callback.reference]).check();

  static final _id_startScan1 = jniAccessors.getMethodIDOf(
      _classRef,
      "startScan",
      "(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V");

  /// from: public void startScan(java.util.List<android.bluetooth.le.ScanFilter> filters, android.bluetooth.le.ScanSettings settings, android.bluetooth.le.ScanCallback callback)
  ///
  /// Start Bluetooth LE scan. The scan results will be delivered through {@code callback}.
  /// For unfiltered scans, scanning is stopped on screen off to save power. Scanning is
  /// resumed when screen is turned on again. To avoid this, do filetered scanning by
  /// using proper ScanFilter.
  ///
  /// An app must hold
  /// android.Manifest.permission\#ACCESS_COARSE_LOCATION ACCESS_COARSE_LOCATION or
  /// android.Manifest.permission\#ACCESS_FINE_LOCATION ACCESS_FINE_LOCATION permission
  /// in order to get results.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN
  ///@param filters ScanFilters for finding exact BLE devices.
  ///@param settings Settings for the scan.
  ///@param callback Callback used to deliver scan results.
  ///@throws IllegalArgumentException If {@code settings} or {@code callback} is null.
  void startScan1(jni.JniObject filters, scansettings_.ScanSettings settings,
          scancallback_.ScanCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_startScan1,
          jni.JniType.voidType,
          [filters.reference, settings.reference, callback.reference]).check();

  static final _id_startScan2 = jniAccessors.getMethodIDOf(
      _classRef,
      "startScan",
      "(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/app/PendingIntent;)I");

  /// from: public int startScan(java.util.List<android.bluetooth.le.ScanFilter> filters, android.bluetooth.le.ScanSettings settings, android.app.PendingIntent callbackIntent)
  ///
  /// Start Bluetooth LE scan using a PendingIntent. The scan results will be delivered via
  /// the PendingIntent. Use this method of scanning if your process is not always running and it
  /// should be started when scan results are available.
  ///
  /// An app must hold
  /// android.Manifest.permission\#ACCESS_COARSE_LOCATION ACCESS_COARSE_LOCATION or
  /// android.Manifest.permission\#ACCESS_FINE_LOCATION ACCESS_FINE_LOCATION permission
  /// in order to get results.
  ///
  /// When the PendingIntent is delivered, the Intent passed to the receiver or activity
  /// will contain one or more of the extras \#EXTRA_CALLBACK_TYPE,
  /// \#EXTRA_ERROR_CODE and \#EXTRA_LIST_SCAN_RESULT to indicate the result of
  /// the scan.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN
  ///@param filters Optional list of ScanFilters for finding exact BLE devices.
  /// This value may be {@code null}.
  ///@param settings Optional settings for the scan.
  /// This value may be {@code null}.
  ///@param callbackIntent The PendingIntent to deliver the result to.
  /// This value must never be {@code null}.
  ///@return Returns 0 for success or an error code from ScanCallback if the scan request
  /// could not be sent.
  ///@see \#stopScan(PendingIntent)
  int startScan2(jni.JniObject filters, scansettings_.ScanSettings settings,
          pendingintent_.PendingIntent callbackIntent) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startScan2, jni.JniType.intType, [
        filters.reference,
        settings.reference,
        callbackIntent.reference
      ]).integer;

  static final _id_stopScan = jniAccessors.getMethodIDOf(
      _classRef, "stopScan", "(Landroid/bluetooth/le/ScanCallback;)V");

  /// from: public void stopScan(android.bluetooth.le.ScanCallback callback)
  ///
  /// Stops an ongoing Bluetooth LE scan.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN
  ///@param callback
  void stopScan(scancallback_.ScanCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_stopScan,
          jni.JniType.voidType, [callback.reference]).check();

  static final _id_stopScan1 = jniAccessors.getMethodIDOf(
      _classRef, "stopScan", "(Landroid/app/PendingIntent;)V");

  /// from: public void stopScan(android.app.PendingIntent callbackIntent)
  ///
  /// Stops an ongoing Bluetooth LE scan started using a PendingIntent.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN
  ///@param callbackIntent The PendingIntent that was used to start the scan.
  ///@see \#startScan(List, ScanSettings, PendingIntent)
  void stopScan1(pendingintent_.PendingIntent callbackIntent) =>
      jniAccessors.callMethodWithArgs(reference, _id_stopScan1,
          jni.JniType.voidType, [callbackIntent.reference]).check();

  static final _id_flushPendingScanResults = jniAccessors.getMethodIDOf(
      _classRef,
      "flushPendingScanResults",
      "(Landroid/bluetooth/le/ScanCallback;)V");

  /// from: public void flushPendingScanResults(android.bluetooth.le.ScanCallback callback)
  ///
  /// Flush pending batch scan results stored in Bluetooth controller. This will return Bluetooth
  /// LE scan results batched on bluetooth controller. Returns immediately, batch scan results data
  /// will be delivered through the {@code callback}.
  ///@param callback Callback of the Bluetooth LE Scan, it has to be the same instance as the one
  /// used to start scan.
  void flushPendingScanResults(scancallback_.ScanCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_flushPendingScanResults,
          jni.JniType.voidType, [callback.reference]).check();
}
