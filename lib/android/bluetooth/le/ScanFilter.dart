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

import "../../os/ParcelUuid.dart" as parceluuid_;

import "ScanResult.dart" as scanresult_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.le.ScanFilter
///
/// Criteria for filtering result from Bluetooth LE scans. A ScanFilter allows clients to
/// restrict scan results to only those that are of interest to them.
///
/// Current filtering on the following fields are supported:
/// <li>Service UUIDs which identify the bluetooth gatt services running on the device.
/// <li>Name of remote Bluetooth LE device.
/// <li>Mac address of the remote device.
/// <li>Service data which is the data associated with a service.
/// <li>Manufacturer specific data which is the data associated with a particular manufacturer.
///@see ScanResult
///@see BluetoothLeScanner
class ScanFilter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/ScanFilter");
  ScanFilter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.bluetooth.le.ScanFilter> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// A android.os.Parcelable.Creator to create ScanFilter from parcel.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_getDeviceName = jniAccessors.getMethodIDOf(
      _classRef, "getDeviceName", "()Ljava/lang/String;");

  /// from: public java.lang.String getDeviceName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the filter set the device name field of Bluetooth advertisement data.
  ///@return This value may be {@code null}.
  jni.JniString getDeviceName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDeviceName, jni.JniType.objectType, []).object);

  static final _id_getServiceUuid = jniAccessors.getMethodIDOf(
      _classRef, "getServiceUuid", "()Landroid/os/ParcelUuid;");

  /// from: public android.os.ParcelUuid getServiceUuid()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the filter set on the service uuid.
  ///@return This value may be {@code null}.
  parceluuid_.ParcelUuid getServiceUuid() =>
      parceluuid_.ParcelUuid.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getServiceUuid, jni.JniType.objectType, []).object);

  static final _id_getServiceUuidMask = jniAccessors.getMethodIDOf(
      _classRef, "getServiceUuidMask", "()Landroid/os/ParcelUuid;");

  /// from: public android.os.ParcelUuid getServiceUuidMask()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return This value may be {@code null}.
  parceluuid_.ParcelUuid getServiceUuidMask() =>
      parceluuid_.ParcelUuid.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getServiceUuidMask, jni.JniType.objectType, []).object);

  static final _id_getDeviceAddress = jniAccessors.getMethodIDOf(
      _classRef, "getDeviceAddress", "()Ljava/lang/String;");

  /// from: public java.lang.String getDeviceAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return This value may be {@code null}.
  jni.JniString getDeviceAddress() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDeviceAddress, jni.JniType.objectType, []).object);

  static final _id_getServiceData =
      jniAccessors.getMethodIDOf(_classRef, "getServiceData", "()[B");

  /// from: public byte[] getServiceData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return This value may be {@code null}.
  jni.JniObject getServiceData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getServiceData, jni.JniType.objectType, []).object);

  static final _id_getServiceDataMask =
      jniAccessors.getMethodIDOf(_classRef, "getServiceDataMask", "()[B");

  /// from: public byte[] getServiceDataMask()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return This value may be {@code null}.
  jni.JniObject getServiceDataMask() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getServiceDataMask, jni.JniType.objectType, []).object);

  static final _id_getServiceDataUuid = jniAccessors.getMethodIDOf(
      _classRef, "getServiceDataUuid", "()Landroid/os/ParcelUuid;");

  /// from: public android.os.ParcelUuid getServiceDataUuid()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return This value may be {@code null}.
  parceluuid_.ParcelUuid getServiceDataUuid() =>
      parceluuid_.ParcelUuid.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getServiceDataUuid, jni.JniType.objectType, []).object);

  static final _id_getManufacturerId =
      jniAccessors.getMethodIDOf(_classRef, "getManufacturerId", "()I");

  /// from: public int getManufacturerId()
  ///
  /// Returns the manufacturer id. -1 if the manufacturer filter is not set.
  int getManufacturerId() => jniAccessors.callMethodWithArgs(
      reference, _id_getManufacturerId, jni.JniType.intType, []).integer;

  static final _id_getManufacturerData =
      jniAccessors.getMethodIDOf(_classRef, "getManufacturerData", "()[B");

  /// from: public byte[] getManufacturerData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return This value may be {@code null}.
  jni.JniObject getManufacturerData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getManufacturerData, jni.JniType.objectType, []).object);

  static final _id_getManufacturerDataMask =
      jniAccessors.getMethodIDOf(_classRef, "getManufacturerDataMask", "()[B");

  /// from: public byte[] getManufacturerDataMask()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return This value may be {@code null}.
  jni.JniObject getManufacturerDataMask() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getManufacturerDataMask, jni.JniType.objectType, []).object);

  static final _id_matches = jniAccessors.getMethodIDOf(
      _classRef, "matches", "(Landroid/bluetooth/le/ScanResult;)Z");

  /// from: public boolean matches(android.bluetooth.le.ScanResult scanResult)
  ///
  /// Check if the scan filter matches a {@code scanResult}. A scan result is considered as a match
  /// if it matches all the field filters.
  bool matches(scanresult_.ScanResult scanResult) =>
      jniAccessors.callMethodWithArgs(reference, _id_matches,
          jni.JniType.booleanType, [scanResult.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

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
}

/// from: android.bluetooth.le.ScanFilter$Builder
///
/// Builder class for ScanFilter.
class ScanFilter_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/ScanFilter\$Builder");
  ScanFilter_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ScanFilter_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setDeviceName = jniAccessors.getMethodIDOf(
      _classRef,
      "setDeviceName",
      "(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter\$Builder;");

  /// from: public android.bluetooth.le.ScanFilter.Builder setDeviceName(java.lang.String deviceName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set filter on device name.
  ScanFilter_Builder setDeviceName(jni.JniString deviceName) =>
      ScanFilter_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setDeviceName,
          jni.JniType.objectType,
          [deviceName.reference]).object);

  static final _id_setDeviceAddress = jniAccessors.getMethodIDOf(
      _classRef,
      "setDeviceAddress",
      "(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter\$Builder;");

  /// from: public android.bluetooth.le.ScanFilter.Builder setDeviceAddress(java.lang.String deviceAddress)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set filter on device address.
  ///@param deviceAddress The device Bluetooth address for the filter. It needs to be in the
  /// format of "01:02:03:AB:CD:EF". The device address can be validated using BluetoothAdapter\#checkBluetoothAddress.
  ///@throws IllegalArgumentException If the {@code deviceAddress} is invalid.
  ScanFilter_Builder setDeviceAddress(jni.JniString deviceAddress) =>
      ScanFilter_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setDeviceAddress,
          jni.JniType.objectType,
          [deviceAddress.reference]).object);

  static final _id_setServiceUuid = jniAccessors.getMethodIDOf(
      _classRef,
      "setServiceUuid",
      "(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter\$Builder;");

  /// from: public android.bluetooth.le.ScanFilter.Builder setServiceUuid(android.os.ParcelUuid serviceUuid)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set filter on service uuid.
  ScanFilter_Builder setServiceUuid(parceluuid_.ParcelUuid serviceUuid) =>
      ScanFilter_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setServiceUuid,
          jni.JniType.objectType,
          [serviceUuid.reference]).object);

  static final _id_setServiceUuid1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setServiceUuid",
      "(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter\$Builder;");

  /// from: public android.bluetooth.le.ScanFilter.Builder setServiceUuid(android.os.ParcelUuid serviceUuid, android.os.ParcelUuid uuidMask)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set filter on partial service uuid. The {@code uuidMask} is the bit mask for the
  /// {@code serviceUuid}. Set any bit in the mask to 1 to indicate a match is needed for the
  /// bit in {@code serviceUuid}, and 0 to ignore that bit.
  ///@throws IllegalArgumentException If {@code serviceUuid} is {@code null} but {@code
  /// uuidMask} is not {@code null}.
  ScanFilter_Builder setServiceUuid1(parceluuid_.ParcelUuid serviceUuid,
          parceluuid_.ParcelUuid uuidMask) =>
      ScanFilter_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setServiceUuid1,
          jni.JniType.objectType,
          [serviceUuid.reference, uuidMask.reference]).object);

  static final _id_setServiceData = jniAccessors.getMethodIDOf(
      _classRef,
      "setServiceData",
      "(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/ScanFilter\$Builder;");

  /// from: public android.bluetooth.le.ScanFilter.Builder setServiceData(android.os.ParcelUuid serviceDataUuid, byte[] serviceData)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set filtering on service data.
  ///@throws IllegalArgumentException If {@code serviceDataUuid} is null.
  ScanFilter_Builder setServiceData(
          parceluuid_.ParcelUuid serviceDataUuid, jni.JniObject serviceData) =>
      ScanFilter_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setServiceData,
          jni.JniType.objectType,
          [serviceDataUuid.reference, serviceData.reference]).object);

  static final _id_setServiceData1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setServiceData",
      "(Landroid/os/ParcelUuid;[B[B)Landroid/bluetooth/le/ScanFilter\$Builder;");

  /// from: public android.bluetooth.le.ScanFilter.Builder setServiceData(android.os.ParcelUuid serviceDataUuid, byte[] serviceData, byte[] serviceDataMask)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set partial filter on service data. For any bit in the mask, set it to 1 if it needs to
  /// match the one in service data, otherwise set it to 0 to ignore that bit.
  ///
  /// The {@code serviceDataMask} must have the same length of the {@code serviceData}.
  ///@throws IllegalArgumentException If {@code serviceDataUuid} is null or {@code
  /// serviceDataMask} is {@code null} while {@code serviceData} is not or {@code
  /// serviceDataMask} and {@code serviceData} has different length.
  ScanFilter_Builder setServiceData1(parceluuid_.ParcelUuid serviceDataUuid,
          jni.JniObject serviceData, jni.JniObject serviceDataMask) =>
      ScanFilter_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setServiceData1, jni.JniType.objectType, [
        serviceDataUuid.reference,
        serviceData.reference,
        serviceDataMask.reference
      ]).object);

  static final _id_setManufacturerData = jniAccessors.getMethodIDOf(_classRef,
      "setManufacturerData", "(I[B)Landroid/bluetooth/le/ScanFilter\$Builder;");

  /// from: public android.bluetooth.le.ScanFilter.Builder setManufacturerData(int manufacturerId, byte[] manufacturerData)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set filter on on manufacturerData. A negative manufacturerId is considered as invalid id.
  ///
  /// Note the first two bytes of the {@code manufacturerData} is the manufacturerId.
  ///@throws IllegalArgumentException If the {@code manufacturerId} is invalid.
  ScanFilter_Builder setManufacturerData(
          int manufacturerId, jni.JniObject manufacturerData) =>
      ScanFilter_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setManufacturerData,
          jni.JniType.objectType,
          [manufacturerId, manufacturerData.reference]).object);

  static final _id_setManufacturerData1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setManufacturerData",
      "(I[B[B)Landroid/bluetooth/le/ScanFilter\$Builder;");

  /// from: public android.bluetooth.le.ScanFilter.Builder setManufacturerData(int manufacturerId, byte[] manufacturerData, byte[] manufacturerDataMask)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set filter on partial manufacture data. For any bit in the mask, set it the 1 if it needs
  /// to match the one in manufacturer data, otherwise set it to 0.
  ///
  /// The {@code manufacturerDataMask} must have the same length of {@code manufacturerData}.
  ///@throws IllegalArgumentException If the {@code manufacturerId} is invalid, or {@code
  /// manufacturerData} is null while {@code manufacturerDataMask} is not, or {@code
  /// manufacturerData} and {@code manufacturerDataMask} have different length.
  ScanFilter_Builder setManufacturerData1(int manufacturerId,
          jni.JniObject manufacturerData, jni.JniObject manufacturerDataMask) =>
      ScanFilter_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setManufacturerData1, jni.JniType.objectType, [
        manufacturerId,
        manufacturerData.reference,
        manufacturerDataMask.reference
      ]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/bluetooth/le/ScanFilter;");

  /// from: public android.bluetooth.le.ScanFilter build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build ScanFilter.
  ///@throws IllegalArgumentException If the filter cannot be built.
  ScanFilter build() => ScanFilter.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_build, jni.JniType.objectType, []).object);
}
