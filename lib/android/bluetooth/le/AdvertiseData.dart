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

import "../../os/Parcelable.dart" as parcelable_;

import "../../util/SparseArray.dart" as sparsearray_;

import "../../os/Parcel.dart" as parcel_;

import "../../os/ParcelUuid.dart" as parceluuid_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.le.AdvertiseData
///
/// Advertise data packet container for Bluetooth LE advertising. This represents the data to be
/// advertised as well as the scan response data for active scans.
///
/// Use AdvertiseData.Builder to create an instance of AdvertiseData to be
/// advertised.
///@see BluetoothLeAdvertiser
///@see ScanRecord
class AdvertiseData extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/AdvertiseData");
  AdvertiseData.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.bluetooth.le.AdvertiseData> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZ)V");

  /// from: void <init>(java.util.List<android.os.ParcelUuid> serviceUuids, android.util.SparseArray<byte[]> manufacturerData, java.util.Map<android.os.ParcelUuid,byte[]> serviceData, boolean includeTxPowerLevel, boolean includeDeviceName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AdvertiseData(
      jni.JniObject serviceUuids,
      sparsearray_.SparseArray manufacturerData,
      jni.JniObject serviceData,
      bool includeTxPowerLevel,
      bool includeDeviceName)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          serviceUuids.reference,
          manufacturerData.reference,
          serviceData.reference,
          includeTxPowerLevel,
          includeDeviceName
        ]).object);

  static final _id_getServiceUuids = jniAccessors.getMethodIDOf(
      _classRef, "getServiceUuids", "()Ljava/util/List;");

  /// from: public java.util.List<android.os.ParcelUuid> getServiceUuids()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a list of service UUIDs within the advertisement that are used to identify the
  /// Bluetooth GATT services.
  jni.JniObject getServiceUuids() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getServiceUuids, jni.JniType.objectType, []).object);

  static final _id_getManufacturerSpecificData = jniAccessors.getMethodIDOf(
      _classRef, "getManufacturerSpecificData", "()Landroid/util/SparseArray;");

  /// from: public android.util.SparseArray<byte[]> getManufacturerSpecificData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an array of manufacturer Id and the corresponding manufacturer specific data. The
  /// manufacturer id is a non-negative number assigned by Bluetooth SIG.
  sparsearray_.SparseArray getManufacturerSpecificData() =>
      sparsearray_.SparseArray.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getManufacturerSpecificData,
          jni.JniType.objectType, []).object);

  static final _id_getServiceData = jniAccessors.getMethodIDOf(
      _classRef, "getServiceData", "()Ljava/util/Map;");

  /// from: public java.util.Map<android.os.ParcelUuid,byte[]> getServiceData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a map of 16-bit UUID and its corresponding service data.
  jni.JniObject getServiceData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getServiceData, jni.JniType.objectType, []).object);

  static final _id_getIncludeTxPowerLevel =
      jniAccessors.getMethodIDOf(_classRef, "getIncludeTxPowerLevel", "()Z");

  /// from: public boolean getIncludeTxPowerLevel()
  ///
  /// Whether the transmission power level will be included in the advertisement packet.
  bool getIncludeTxPowerLevel() => jniAccessors.callMethodWithArgs(reference,
      _id_getIncludeTxPowerLevel, jni.JniType.booleanType, []).boolean;

  static final _id_getIncludeDeviceName =
      jniAccessors.getMethodIDOf(_classRef, "getIncludeDeviceName", "()Z");

  /// from: public boolean getIncludeDeviceName()
  ///
  /// Whether the device name will be included in the advertisement packet.
  bool getIncludeDeviceName() => jniAccessors.callMethodWithArgs(
      reference, _id_getIncludeDeviceName, jni.JniType.booleanType, []).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// @hide
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  ///
  /// @hide
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

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
}

/// from: android.bluetooth.le.AdvertiseData$Builder
///
/// Builder for AdvertiseData.
class AdvertiseData_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/AdvertiseData\$Builder");
  AdvertiseData_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AdvertiseData_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_addServiceUuid = jniAccessors.getMethodIDOf(
      _classRef,
      "addServiceUuid",
      "(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData\$Builder;");

  /// from: public android.bluetooth.le.AdvertiseData.Builder addServiceUuid(android.os.ParcelUuid serviceUuid)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a service UUID to advertise data.
  ///@param serviceUuid A service UUID to be advertised.
  ///@throws IllegalArgumentException If the {@code serviceUuids} are null.
  AdvertiseData_Builder addServiceUuid(parceluuid_.ParcelUuid serviceUuid) =>
      AdvertiseData_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addServiceUuid,
          jni.JniType.objectType,
          [serviceUuid.reference]).object);

  static final _id_addServiceData = jniAccessors.getMethodIDOf(
      _classRef,
      "addServiceData",
      "(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData\$Builder;");

  /// from: public android.bluetooth.le.AdvertiseData.Builder addServiceData(android.os.ParcelUuid serviceDataUuid, byte[] serviceData)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add service data to advertise data.
  ///@param serviceDataUuid 16-bit UUID of the service the data is associated with
  ///@param serviceData Service data
  ///@throws IllegalArgumentException If the {@code serviceDataUuid} or {@code serviceData} is
  /// empty.
  AdvertiseData_Builder addServiceData(
          parceluuid_.ParcelUuid serviceDataUuid, jni.JniObject serviceData) =>
      AdvertiseData_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addServiceData,
          jni.JniType.objectType,
          [serviceDataUuid.reference, serviceData.reference]).object);

  static final _id_addManufacturerData = jniAccessors.getMethodIDOf(
      _classRef,
      "addManufacturerData",
      "(I[B)Landroid/bluetooth/le/AdvertiseData\$Builder;");

  /// from: public android.bluetooth.le.AdvertiseData.Builder addManufacturerData(int manufacturerId, byte[] manufacturerSpecificData)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add manufacturer specific data.
  ///
  /// Please refer to the Bluetooth Assigned Numbers document provided by the <a href="https://www.bluetooth.org">Bluetooth SIG</a> for a list of existing company
  /// identifiers.
  ///@param manufacturerId Manufacturer ID assigned by Bluetooth SIG.
  ///@param manufacturerSpecificData Manufacturer specific data
  ///@throws IllegalArgumentException If the {@code manufacturerId} is negative or {@code
  /// manufacturerSpecificData} is null.
  AdvertiseData_Builder addManufacturerData(
          int manufacturerId, jni.JniObject manufacturerSpecificData) =>
      AdvertiseData_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addManufacturerData,
          jni.JniType.objectType,
          [manufacturerId, manufacturerSpecificData.reference]).object);

  static final _id_setIncludeTxPowerLevel = jniAccessors.getMethodIDOf(
      _classRef,
      "setIncludeTxPowerLevel",
      "(Z)Landroid/bluetooth/le/AdvertiseData\$Builder;");

  /// from: public android.bluetooth.le.AdvertiseData.Builder setIncludeTxPowerLevel(boolean includeTxPowerLevel)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Whether the transmission power level should be included in the advertise packet. Tx power
  /// level field takes 3 bytes in advertise packet.
  AdvertiseData_Builder setIncludeTxPowerLevel(bool includeTxPowerLevel) =>
      AdvertiseData_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setIncludeTxPowerLevel,
          jni.JniType.objectType,
          [includeTxPowerLevel]).object);

  static final _id_setIncludeDeviceName = jniAccessors.getMethodIDOf(
      _classRef,
      "setIncludeDeviceName",
      "(Z)Landroid/bluetooth/le/AdvertiseData\$Builder;");

  /// from: public android.bluetooth.le.AdvertiseData.Builder setIncludeDeviceName(boolean includeDeviceName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set whether the device name should be included in advertise packet.
  AdvertiseData_Builder setIncludeDeviceName(bool includeDeviceName) =>
      AdvertiseData_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setIncludeDeviceName,
          jni.JniType.objectType,
          [includeDeviceName]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/bluetooth/le/AdvertiseData;");

  /// from: public android.bluetooth.le.AdvertiseData build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build the AdvertiseData.
  AdvertiseData build() =>
      AdvertiseData.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}
