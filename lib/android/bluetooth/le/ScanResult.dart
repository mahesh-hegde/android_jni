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

import "../BluetoothDevice.dart" as bluetoothdevice_;

import "ScanRecord.dart" as scanrecord_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.le.ScanResult
///
/// ScanResult for Bluetooth LE scan.
class ScanResult extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/ScanResult");
  ScanResult.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.bluetooth.le.ScanResult> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int DATA_COMPLETE
  ///
  /// For chained advertisements, inidcates tha the data contained in this
  /// scan result is complete.
  static const DATA_COMPLETE = 0;

  /// from: static public final int DATA_TRUNCATED
  ///
  /// For chained advertisements, indicates that the controller was
  /// unable to receive all chained packets and the scan result contains
  /// incomplete truncated data.
  static const DATA_TRUNCATED = 2;

  /// from: static public final int PERIODIC_INTERVAL_NOT_PRESENT
  ///
  /// Periodic advertising interval is not present in the packet.
  static const PERIODIC_INTERVAL_NOT_PRESENT = 0;

  /// from: static public final int PHY_UNUSED
  ///
  /// Indicates that the secondary physical layer was not used.
  static const PHY_UNUSED = 0;

  /// from: static public final int SID_NOT_PRESENT
  ///
  /// Advertising Set ID is not present in the packet.
  static const SID_NOT_PRESENT = 255;

  /// from: static public final int TX_POWER_NOT_PRESENT
  ///
  /// TX power is not present in the packet.
  static const TX_POWER_NOT_PRESENT = 127;

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V");

  /// from: public void <init>(android.bluetooth.BluetoothDevice device, android.bluetooth.le.ScanRecord scanRecord, int rssi, long timestampNanos)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new ScanResult.
  ///@param device Remote Bluetooth device found.
  ///@param scanRecord Scan record including both advertising data and scan response data.
  ///@param rssi Received signal strength.
  ///@param timestampNanos Timestamp at which the scan result was observed.
  ///@deprecated use \#ScanResult(BluetoothDevice, int, int, int, int, int, int, int,
  /// ScanRecord, long)
  ScanResult(bluetoothdevice_.BluetoothDevice device,
      scanrecord_.ScanRecord scanRecord, int rssi, int timestampNanos)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          device.reference,
          scanRecord.reference,
          rssi,
          timestampNanos
        ]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/bluetooth/BluetoothDevice;IIIIIIILandroid/bluetooth/le/ScanRecord;J)V");

  /// from: public void <init>(android.bluetooth.BluetoothDevice device, int eventType, int primaryPhy, int secondaryPhy, int advertisingSid, int txPower, int rssi, int periodicAdvertisingInterval, android.bluetooth.le.ScanRecord scanRecord, long timestampNanos)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new ScanResult.
  ///@param device Remote Bluetooth device found.
  ///@param eventType Event type.
  ///@param primaryPhy Primary advertising phy.
  ///@param secondaryPhy Secondary advertising phy.
  ///@param advertisingSid Advertising set ID.
  ///@param txPower Transmit power.
  ///@param rssi Received signal strength.
  ///@param periodicAdvertisingInterval Periodic advertising interval.
  ///@param scanRecord Scan record including both advertising data and scan response data.
  ///@param timestampNanos Timestamp at which the scan result was observed.
  ScanResult.ctor1(
      bluetoothdevice_.BluetoothDevice device,
      int eventType,
      int primaryPhy,
      int secondaryPhy,
      int advertisingSid,
      int txPower,
      int rssi,
      int periodicAdvertisingInterval,
      scanrecord_.ScanRecord scanRecord,
      int timestampNanos)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, [
          device.reference,
          eventType,
          primaryPhy,
          secondaryPhy,
          advertisingSid,
          txPower,
          rssi,
          periodicAdvertisingInterval,
          scanRecord.reference,
          timestampNanos
        ]).object);

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

  static final _id_getDevice = jniAccessors.getMethodIDOf(
      _classRef, "getDevice", "()Landroid/bluetooth/BluetoothDevice;");

  /// from: public android.bluetooth.BluetoothDevice getDevice()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the remote Bluetooth device identified by the Bluetooth device address.
  bluetoothdevice_.BluetoothDevice getDevice() =>
      bluetoothdevice_.BluetoothDevice.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDevice, jni.JniType.objectType, []).object);

  static final _id_getScanRecord = jniAccessors.getMethodIDOf(
      _classRef, "getScanRecord", "()Landroid/bluetooth/le/ScanRecord;");

  /// from: public android.bluetooth.le.ScanRecord getScanRecord()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the scan record, which is a combination of advertisement and scan response.
  ///@return This value may be {@code null}.
  scanrecord_.ScanRecord getScanRecord() =>
      scanrecord_.ScanRecord.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getScanRecord, jni.JniType.objectType, []).object);

  static final _id_getRssi =
      jniAccessors.getMethodIDOf(_classRef, "getRssi", "()I");

  /// from: public int getRssi()
  ///
  /// Returns the received signal strength in dBm. The valid range is [-127, 126].
  int getRssi() => jniAccessors.callMethodWithArgs(
      reference, _id_getRssi, jni.JniType.intType, []).integer;

  static final _id_getTimestampNanos =
      jniAccessors.getMethodIDOf(_classRef, "getTimestampNanos", "()J");

  /// from: public long getTimestampNanos()
  ///
  /// Returns timestamp since boot when the scan record was observed.
  int getTimestampNanos() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimestampNanos, jni.JniType.longType, []).long;

  static final _id_isLegacy =
      jniAccessors.getMethodIDOf(_classRef, "isLegacy", "()Z");

  /// from: public boolean isLegacy()
  ///
  /// Returns true if this object represents legacy scan result.
  /// Legacy scan results do not contain advanced advertising information
  /// as specified in the Bluetooth Core Specification v5.
  bool isLegacy() => jniAccessors.callMethodWithArgs(
      reference, _id_isLegacy, jni.JniType.booleanType, []).boolean;

  static final _id_isConnectable =
      jniAccessors.getMethodIDOf(_classRef, "isConnectable", "()Z");

  /// from: public boolean isConnectable()
  ///
  /// Returns true if this object represents connectable scan result.
  bool isConnectable() => jniAccessors.callMethodWithArgs(
      reference, _id_isConnectable, jni.JniType.booleanType, []).boolean;

  static final _id_getDataStatus =
      jniAccessors.getMethodIDOf(_classRef, "getDataStatus", "()I");

  /// from: public int getDataStatus()
  ///
  /// Returns the data status.
  /// Can be one of ScanResult\#DATA_COMPLETE or
  /// ScanResult\#DATA_TRUNCATED.
  int getDataStatus() => jniAccessors.callMethodWithArgs(
      reference, _id_getDataStatus, jni.JniType.intType, []).integer;

  static final _id_getPrimaryPhy =
      jniAccessors.getMethodIDOf(_classRef, "getPrimaryPhy", "()I");

  /// from: public int getPrimaryPhy()
  ///
  /// Returns the primary Physical Layer
  /// on which this advertisment was received.
  /// Can be one of BluetoothDevice\#PHY_LE_1M or
  /// BluetoothDevice\#PHY_LE_CODED.
  int getPrimaryPhy() => jniAccessors.callMethodWithArgs(
      reference, _id_getPrimaryPhy, jni.JniType.intType, []).integer;

  static final _id_getSecondaryPhy =
      jniAccessors.getMethodIDOf(_classRef, "getSecondaryPhy", "()I");

  /// from: public int getSecondaryPhy()
  ///
  /// Returns the secondary Physical Layer
  /// on which this advertisment was received.
  /// Can be one of BluetoothDevice\#PHY_LE_1M,
  /// BluetoothDevice\#PHY_LE_2M, BluetoothDevice\#PHY_LE_CODED
  /// or ScanResult\#PHY_UNUSED - if the advertisement
  /// was not received on a secondary physical channel.
  int getSecondaryPhy() => jniAccessors.callMethodWithArgs(
      reference, _id_getSecondaryPhy, jni.JniType.intType, []).integer;

  static final _id_getAdvertisingSid =
      jniAccessors.getMethodIDOf(_classRef, "getAdvertisingSid", "()I");

  /// from: public int getAdvertisingSid()
  ///
  /// Returns the advertising set id.
  /// May return ScanResult\#SID_NOT_PRESENT if
  /// no set id was is present.
  int getAdvertisingSid() => jniAccessors.callMethodWithArgs(
      reference, _id_getAdvertisingSid, jni.JniType.intType, []).integer;

  static final _id_getTxPower =
      jniAccessors.getMethodIDOf(_classRef, "getTxPower", "()I");

  /// from: public int getTxPower()
  ///
  /// Returns the transmit power in dBm.
  /// Valid range is [-127, 126]. A value of ScanResult\#TX_POWER_NOT_PRESENT
  /// indicates that the TX power is not present.
  int getTxPower() => jniAccessors.callMethodWithArgs(
      reference, _id_getTxPower, jni.JniType.intType, []).integer;

  static final _id_getPeriodicAdvertisingInterval = jniAccessors.getMethodIDOf(
      _classRef, "getPeriodicAdvertisingInterval", "()I");

  /// from: public int getPeriodicAdvertisingInterval()
  ///
  /// Returns the periodic advertising interval in units of 1.25ms.
  /// Valid range is 6 (7.5ms) to 65536 (81918.75ms). A value of
  /// ScanResult\#PERIODIC_INTERVAL_NOT_PRESENT means periodic
  /// advertising interval is not present.
  int getPeriodicAdvertisingInterval() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getPeriodicAdvertisingInterval,
      jni.JniType.intType, []).integer;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
