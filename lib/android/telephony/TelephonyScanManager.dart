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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.TelephonyScanManager
///
/// Manages the radio access network scan requests and callbacks.
class TelephonyScanManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/TelephonyScanManager");
  TelephonyScanManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  TelephonyScanManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.telephony.TelephonyScanManager$NetworkScanCallback
///
/// The caller of
/// TelephonyManager\#requestNetworkScan(NetworkScanRequest, Executor, NetworkScanCallback)
/// should implement and provide this callback so that the scan results or errors can be
/// returned.
class TelephonyScanManager_NetworkScanCallback extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/telephony/TelephonyScanManager\$NetworkScanCallback");
  TelephonyScanManager_NetworkScanCallback.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  TelephonyScanManager_NetworkScanCallback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onResults =
      jniAccessors.getMethodIDOf(_classRef, "onResults", "(Ljava/util/List;)V");

  /// from: public void onResults(java.util.List<android.telephony.CellInfo> results)
  ///
  /// Returns the scan results to the user, this callback will be called multiple times.
  void onResults(jni.JniObject results) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onResults,
      jni.JniType.voidType,
      [results.reference]).check();

  static final _id_onComplete =
      jniAccessors.getMethodIDOf(_classRef, "onComplete", "()V");

  /// from: public void onComplete()
  ///
  /// Informs the user that the scan has stopped.
  ///
  /// This callback will be called when the scan is finished or cancelled by the user.
  /// The related NetworkScanRequest will be deleted after this callback.
  void onComplete() => jniAccessors.callMethodWithArgs(
      reference, _id_onComplete, jni.JniType.voidType, []).check();

  static final _id_onError =
      jniAccessors.getMethodIDOf(_classRef, "onError", "(I)V");

  /// from: public void onError(int error)
  ///
  /// Informs the user that there is some error about the scan.
  ///
  /// This callback will be called whenever there is any error about the scan, and the scan
  /// will be terminated. onComplete() will NOT be called.
  ///@param error Error code when the scan is failed, as defined in NetworkScan.
  ///
  /// Value is android.telephony.NetworkScan\#ERROR_MODEM_ERROR, android.telephony.NetworkScan\#ERROR_INVALID_SCAN, android.telephony.NetworkScan\#ERROR_MODEM_UNAVAILABLE, android.telephony.NetworkScan\#ERROR_UNSUPPORTED, android.telephony.NetworkScan\#ERROR_RADIO_INTERFACE_ERROR, android.telephony.NetworkScan\#ERROR_INVALID_SCANID, or android.telephony.NetworkScan\#ERROR_INTERRUPTED
  void onError(int error) => jniAccessors.callMethodWithArgs(
      reference, _id_onError, jni.JniType.voidType, [error]).check();
}
