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

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.le.ScanSettings
///
/// Bluetooth LE scan settings are passed to BluetoothLeScanner\#startScan to define the
/// parameters for the scan.
class ScanSettings extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/ScanSettings");
  ScanSettings.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int CALLBACK_TYPE_ALL_MATCHES
  ///
  /// Trigger a callback for every Bluetooth advertisement found that matches the filter criteria.
  /// If no filter is active, all advertisement packets are reported.
  static const CALLBACK_TYPE_ALL_MATCHES = 1;

  /// from: static public final int CALLBACK_TYPE_FIRST_MATCH
  ///
  /// A result callback is only triggered for the first advertisement packet received that matches
  /// the filter criteria.
  static const CALLBACK_TYPE_FIRST_MATCH = 2;

  /// from: static public final int CALLBACK_TYPE_MATCH_LOST
  ///
  /// Receive a callback when advertisements are no longer received from a device that has been
  /// previously reported by a first match callback.
  static const CALLBACK_TYPE_MATCH_LOST = 4;

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.bluetooth.le.ScanSettings> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int MATCH_MODE_AGGRESSIVE
  ///
  /// In Aggressive mode, hw will determine a match sooner even with feeble signal strength
  /// and few number of sightings/match in a duration.
  static const MATCH_MODE_AGGRESSIVE = 1;

  /// from: static public final int MATCH_MODE_STICKY
  ///
  /// For sticky mode, higher threshold of signal strength and sightings is required
  /// before reporting by hw
  static const MATCH_MODE_STICKY = 2;

  /// from: static public final int MATCH_NUM_FEW_ADVERTISEMENT
  ///
  /// Match few advertisement per filter, depends on current capability and availibility of
  /// the resources in hw
  static const MATCH_NUM_FEW_ADVERTISEMENT = 2;

  /// from: static public final int MATCH_NUM_MAX_ADVERTISEMENT
  ///
  /// Match as many advertisement per filter as hw could allow, depends on current
  /// capability and availibility of the resources in hw
  static const MATCH_NUM_MAX_ADVERTISEMENT = 3;

  /// from: static public final int MATCH_NUM_ONE_ADVERTISEMENT
  ///
  /// Match one advertisement per filter
  static const MATCH_NUM_ONE_ADVERTISEMENT = 1;

  /// from: static public final int PHY_LE_ALL_SUPPORTED
  ///
  /// Use all supported PHYs for scanning.
  /// This will check the controller capabilities, and start
  /// the scan on 1Mbit and LE Coded PHYs if supported, or on
  /// the 1Mbit PHY only.
  static const PHY_LE_ALL_SUPPORTED = 255;

  /// from: static public final int SCAN_MODE_BALANCED
  ///
  /// Perform Bluetooth LE scan in balanced power mode. Scan results are returned at a rate that
  /// provides a good trade-off between scan frequency and power consumption.
  static const SCAN_MODE_BALANCED = 1;

  /// from: static public final int SCAN_MODE_LOW_LATENCY
  ///
  /// Scan using highest duty cycle. It's recommended to only use this mode when the application is
  /// running in the foreground.
  static const SCAN_MODE_LOW_LATENCY = 2;

  /// from: static public final int SCAN_MODE_LOW_POWER
  ///
  /// Perform Bluetooth LE scan in low power mode. This is the default scan mode as it consumes the
  /// least power. This mode is enforced if the scanning application is not in foreground.
  static const SCAN_MODE_LOW_POWER = 0;

  /// from: static public final int SCAN_MODE_OPPORTUNISTIC
  ///
  /// A special Bluetooth LE scan mode. Applications using this scan mode will passively listen for
  /// other scan results without starting BLE scans themselves.
  static const SCAN_MODE_OPPORTUNISTIC = -1;

  static final _id_getScanMode =
      jniAccessors.getMethodIDOf(_classRef, "getScanMode", "()I");

  /// from: public int getScanMode()
  int getScanMode() => jniAccessors.callMethodWithArgs(
      reference, _id_getScanMode, jni.JniType.intType, []).integer;

  static final _id_getCallbackType =
      jniAccessors.getMethodIDOf(_classRef, "getCallbackType", "()I");

  /// from: public int getCallbackType()
  int getCallbackType() => jniAccessors.callMethodWithArgs(
      reference, _id_getCallbackType, jni.JniType.intType, []).integer;

  static final _id_getScanResultType =
      jniAccessors.getMethodIDOf(_classRef, "getScanResultType", "()I");

  /// from: public int getScanResultType()
  int getScanResultType() => jniAccessors.callMethodWithArgs(
      reference, _id_getScanResultType, jni.JniType.intType, []).integer;

  static final _id_getLegacy =
      jniAccessors.getMethodIDOf(_classRef, "getLegacy", "()Z");

  /// from: public boolean getLegacy()
  ///
  /// Returns whether only legacy advertisements will be returned.
  /// Legacy advertisements include advertisements as specified
  /// by the Bluetooth core specification 4.2 and below.
  bool getLegacy() => jniAccessors.callMethodWithArgs(
      reference, _id_getLegacy, jni.JniType.booleanType, []).boolean;

  static final _id_getPhy =
      jniAccessors.getMethodIDOf(_classRef, "getPhy", "()I");

  /// from: public int getPhy()
  ///
  /// Returns the physical layer used during a scan.
  int getPhy() => jniAccessors.callMethodWithArgs(
      reference, _id_getPhy, jni.JniType.intType, []).integer;

  static final _id_getReportDelayMillis =
      jniAccessors.getMethodIDOf(_classRef, "getReportDelayMillis", "()J");

  /// from: public long getReportDelayMillis()
  ///
  /// Returns report delay timestamp based on the device clock.
  int getReportDelayMillis() => jniAccessors.callMethodWithArgs(
      reference, _id_getReportDelayMillis, jni.JniType.longType, []).long;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;
}

/// from: android.bluetooth.le.ScanSettings$Builder
///
/// Builder for ScanSettings.
class ScanSettings_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/ScanSettings\$Builder");
  ScanSettings_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ScanSettings_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setScanMode = jniAccessors.getMethodIDOf(_classRef,
      "setScanMode", "(I)Landroid/bluetooth/le/ScanSettings\$Builder;");

  /// from: public android.bluetooth.le.ScanSettings.Builder setScanMode(int scanMode)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set scan mode for Bluetooth LE scan.
  ///@param scanMode The scan mode can be one of ScanSettings\#SCAN_MODE_LOW_POWER,
  /// ScanSettings\#SCAN_MODE_BALANCED or ScanSettings\#SCAN_MODE_LOW_LATENCY.
  ///@throws IllegalArgumentException If the {@code scanMode} is invalid.
  ScanSettings_Builder setScanMode(int scanMode) =>
      ScanSettings_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setScanMode, jni.JniType.objectType, [scanMode]).object);

  static final _id_setCallbackType = jniAccessors.getMethodIDOf(_classRef,
      "setCallbackType", "(I)Landroid/bluetooth/le/ScanSettings\$Builder;");

  /// from: public android.bluetooth.le.ScanSettings.Builder setCallbackType(int callbackType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set callback type for Bluetooth LE scan.
  ///@param callbackType The callback type flags for the scan.
  ///@throws IllegalArgumentException If the {@code callbackType} is invalid.
  ScanSettings_Builder setCallbackType(int callbackType) =>
      ScanSettings_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setCallbackType, jni.JniType.objectType, [callbackType]).object);

  static final _id_setReportDelay = jniAccessors.getMethodIDOf(_classRef,
      "setReportDelay", "(J)Landroid/bluetooth/le/ScanSettings\$Builder;");

  /// from: public android.bluetooth.le.ScanSettings.Builder setReportDelay(long reportDelayMillis)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set report delay timestamp for Bluetooth LE scan.
  ///@param reportDelayMillis Delay of report in milliseconds. Set to 0 to be notified of
  /// results immediately. Values &gt; 0 causes the scan results to be queued up and delivered
  /// after the requested delay or when the internal buffers fill up.
  ///@throws IllegalArgumentException If {@code reportDelayMillis} &lt; 0.
  ScanSettings_Builder setReportDelay(int reportDelayMillis) =>
      ScanSettings_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setReportDelay,
          jni.JniType.objectType,
          [reportDelayMillis]).object);

  static final _id_setNumOfMatches = jniAccessors.getMethodIDOf(_classRef,
      "setNumOfMatches", "(I)Landroid/bluetooth/le/ScanSettings\$Builder;");

  /// from: public android.bluetooth.le.ScanSettings.Builder setNumOfMatches(int numOfMatches)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the number of matches for Bluetooth LE scan filters hardware match
  ///@param numOfMatches The num of matches can be one of
  /// ScanSettings\#MATCH_NUM_ONE_ADVERTISEMENT
  /// or ScanSettings\#MATCH_NUM_FEW_ADVERTISEMENT or ScanSettings\#MATCH_NUM_MAX_ADVERTISEMENT
  ///@throws IllegalArgumentException If the {@code matchMode} is invalid.
  ScanSettings_Builder setNumOfMatches(int numOfMatches) =>
      ScanSettings_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setNumOfMatches, jni.JniType.objectType, [numOfMatches]).object);

  static final _id_setMatchMode = jniAccessors.getMethodIDOf(_classRef,
      "setMatchMode", "(I)Landroid/bluetooth/le/ScanSettings\$Builder;");

  /// from: public android.bluetooth.le.ScanSettings.Builder setMatchMode(int matchMode)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set match mode for Bluetooth LE scan filters hardware match
  ///@param matchMode The match mode can be one of ScanSettings\#MATCH_MODE_AGGRESSIVE
  /// or ScanSettings\#MATCH_MODE_STICKY
  ///@throws IllegalArgumentException If the {@code matchMode} is invalid.
  ScanSettings_Builder setMatchMode(int matchMode) =>
      ScanSettings_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setMatchMode, jni.JniType.objectType, [matchMode]).object);

  static final _id_setLegacy = jniAccessors.getMethodIDOf(_classRef,
      "setLegacy", "(Z)Landroid/bluetooth/le/ScanSettings\$Builder;");

  /// from: public android.bluetooth.le.ScanSettings.Builder setLegacy(boolean legacy)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set whether only legacy advertisments should be returned in scan results.
  /// Legacy advertisements include advertisements as specified by the
  /// Bluetooth core specification 4.2 and below. This is true by default
  /// for compatibility with older apps.
  ///@param legacy true if only legacy advertisements will be returned
  ScanSettings_Builder setLegacy(bool legacy) =>
      ScanSettings_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setLegacy, jni.JniType.objectType, [legacy]).object);

  static final _id_setPhy = jniAccessors.getMethodIDOf(
      _classRef, "setPhy", "(I)Landroid/bluetooth/le/ScanSettings\$Builder;");

  /// from: public android.bluetooth.le.ScanSettings.Builder setPhy(int phy)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the Physical Layer to use during this scan.
  /// This is used only if ScanSettings.Builder\#setLegacy
  /// is set to false.
  /// android.bluetooth.BluetoothAdapter\#isLeCodedPhySupported
  /// may be used to check whether LE Coded phy is supported by calling
  /// android.bluetooth.BluetoothAdapter\#isLeCodedPhySupported.
  /// Selecting an unsupported phy will result in failure to start scan.
  ///@param phy Can be one of BluetoothDevice\#PHY_LE_1M, BluetoothDevice\#PHY_LE_CODED or ScanSettings\#PHY_LE_ALL_SUPPORTED
  ScanSettings_Builder setPhy(int phy) =>
      ScanSettings_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setPhy, jni.JniType.objectType, [phy]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/bluetooth/le/ScanSettings;");

  /// from: public android.bluetooth.le.ScanSettings build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build ScanSettings.
  ScanSettings build() => ScanSettings.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_build, jni.JniType.objectType, []).object);
}
