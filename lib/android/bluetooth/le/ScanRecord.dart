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

import "../../util/SparseArray.dart" as sparsearray_;

import "../../os/ParcelUuid.dart" as parceluuid_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.le.ScanRecord
///
/// Represents a scan record from Bluetooth LE scan.
class ScanRecord extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/ScanRecord");
  ScanRecord.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getAdvertiseFlags =
      jniAccessors.getMethodIDOf(_classRef, "getAdvertiseFlags", "()I");

  /// from: public int getAdvertiseFlags()
  ///
  /// Returns the advertising flags indicating the discoverable mode and capability of the device.
  /// Returns -1 if the flag field is not set.
  int getAdvertiseFlags() => jniAccessors.callMethodWithArgs(
      reference, _id_getAdvertiseFlags, jni.JniType.intType, []).integer;

  static final _id_getServiceUuids = jniAccessors.getMethodIDOf(
      _classRef, "getServiceUuids", "()Ljava/util/List;");

  /// from: public java.util.List<android.os.ParcelUuid> getServiceUuids()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a list of service UUIDs within the advertisement that are used to identify the
  /// bluetooth GATT services.
  jni.JniObject getServiceUuids() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getServiceUuids, jni.JniType.objectType, []).object);

  static final _id_getManufacturerSpecificData = jniAccessors.getMethodIDOf(
      _classRef, "getManufacturerSpecificData", "()Landroid/util/SparseArray;");

  /// from: public android.util.SparseArray<byte[]> getManufacturerSpecificData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a sparse array of manufacturer identifier and its corresponding manufacturer specific
  /// data.
  sparsearray_.SparseArray getManufacturerSpecificData() =>
      sparsearray_.SparseArray.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getManufacturerSpecificData,
          jni.JniType.objectType, []).object);

  static final _id_getManufacturerSpecificData1 = jniAccessors.getMethodIDOf(
      _classRef, "getManufacturerSpecificData", "(I)[B");

  /// from: public byte[] getManufacturerSpecificData(int manufacturerId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the manufacturer specific data associated with the manufacturer id. Returns
  /// {@code null} if the {@code manufacturerId} is not found.
  jni.JniObject getManufacturerSpecificData1(int manufacturerId) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getManufacturerSpecificData1,
          jni.JniType.objectType,
          [manufacturerId]).object);

  static final _id_getServiceData = jniAccessors.getMethodIDOf(
      _classRef, "getServiceData", "()Ljava/util/Map;");

  /// from: public java.util.Map<android.os.ParcelUuid,byte[]> getServiceData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a map of service UUID and its corresponding service data.
  jni.JniObject getServiceData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getServiceData, jni.JniType.objectType, []).object);

  static final _id_getServiceData1 = jniAccessors.getMethodIDOf(
      _classRef, "getServiceData", "(Landroid/os/ParcelUuid;)[B");

  /// from: public byte[] getServiceData(android.os.ParcelUuid serviceDataUuid)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the service data byte array associated with the {@code serviceUuid}. Returns
  /// {@code null} if the {@code serviceDataUuid} is not found.
  jni.JniObject getServiceData1(parceluuid_.ParcelUuid serviceDataUuid) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getServiceData1,
          jni.JniType.objectType,
          [serviceDataUuid.reference]).object);

  static final _id_getTxPowerLevel =
      jniAccessors.getMethodIDOf(_classRef, "getTxPowerLevel", "()I");

  /// from: public int getTxPowerLevel()
  ///
  /// Returns the transmission power level of the packet in dBm. Returns Integer\#MIN_VALUE
  /// if the field is not set. This value can be used to calculate the path loss of a received
  /// packet using the following equation:
  ///
  /// <code>pathloss = txPowerLevel - rssi</code>
  int getTxPowerLevel() => jniAccessors.callMethodWithArgs(
      reference, _id_getTxPowerLevel, jni.JniType.intType, []).integer;

  static final _id_getDeviceName = jniAccessors.getMethodIDOf(
      _classRef, "getDeviceName", "()Ljava/lang/String;");

  /// from: public java.lang.String getDeviceName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the local name of the BLE device. The is a UTF-8 encoded string.
  ///@return This value may be {@code null}.
  jni.JniString getDeviceName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDeviceName, jni.JniType.objectType, []).object);

  static final _id_getBytes =
      jniAccessors.getMethodIDOf(_classRef, "getBytes", "()[B");

  /// from: public byte[] getBytes()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns raw bytes of scan record.
  jni.JniObject getBytes() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getBytes, jni.JniType.objectType, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
