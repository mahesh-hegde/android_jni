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

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;

import "BluetoothGattCharacteristic.dart" as bluetoothgattcharacteristic_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.BluetoothGattDescriptor
///
/// Represents a Bluetooth GATT Descriptor
///
///  GATT Descriptors contain additional information and attributes of a GATT
/// characteristic, BluetoothGattCharacteristic. They can be used to describe
/// the characteristic's features or to control certain behaviours of the characteristic.
class BluetoothGattDescriptor extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/BluetoothGattDescriptor");
  BluetoothGattDescriptor.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.bluetooth.BluetoothGattDescriptor> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_DISABLE_NOTIFICATION_VALUE = jniAccessors.getStaticFieldIDOf(
      _classRef, "DISABLE_NOTIFICATION_VALUE", "[B");

  /// from: static public final byte[] DISABLE_NOTIFICATION_VALUE
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Value used to disable notifications or indicatinos
  static jni.JniObject get DISABLE_NOTIFICATION_VALUE =>
      jni.JniObject.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_DISABLE_NOTIFICATION_VALUE, jni.JniType.objectType)
          .object);

  static final _id_ENABLE_INDICATION_VALUE = jniAccessors.getStaticFieldIDOf(
      _classRef, "ENABLE_INDICATION_VALUE", "[B");

  /// from: static public final byte[] ENABLE_INDICATION_VALUE
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Value used to enable indication for a client configuration descriptor
  static jni.JniObject get ENABLE_INDICATION_VALUE =>
      jni.JniObject.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_ENABLE_INDICATION_VALUE, jni.JniType.objectType)
          .object);

  static final _id_ENABLE_NOTIFICATION_VALUE = jniAccessors.getStaticFieldIDOf(
      _classRef, "ENABLE_NOTIFICATION_VALUE", "[B");

  /// from: static public final byte[] ENABLE_NOTIFICATION_VALUE
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Value used to enable notification for a client configuration descriptor
  static jni.JniObject get ENABLE_NOTIFICATION_VALUE =>
      jni.JniObject.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_ENABLE_NOTIFICATION_VALUE, jni.JniType.objectType)
          .object);

  /// from: static public final int PERMISSION_READ
  ///
  /// Descriptor read permission
  static const PERMISSION_READ = 1;

  /// from: static public final int PERMISSION_READ_ENCRYPTED
  ///
  /// Descriptor permission: Allow encrypted read operations
  static const PERMISSION_READ_ENCRYPTED = 2;

  /// from: static public final int PERMISSION_READ_ENCRYPTED_MITM
  ///
  /// Descriptor permission: Allow reading with man-in-the-middle protection
  static const PERMISSION_READ_ENCRYPTED_MITM = 4;

  /// from: static public final int PERMISSION_WRITE
  ///
  /// Descriptor write permission
  static const PERMISSION_WRITE = 16;

  /// from: static public final int PERMISSION_WRITE_ENCRYPTED
  ///
  /// Descriptor permission: Allow encrypted writes
  static const PERMISSION_WRITE_ENCRYPTED = 32;

  /// from: static public final int PERMISSION_WRITE_ENCRYPTED_MITM
  ///
  /// Descriptor permission: Allow encrypted writes with man-in-the-middle
  /// protection
  static const PERMISSION_WRITE_ENCRYPTED_MITM = 64;

  /// from: static public final int PERMISSION_WRITE_SIGNED
  ///
  /// Descriptor permission: Allow signed write operations
  static const PERMISSION_WRITE_SIGNED = 128;

  /// from: static public final int PERMISSION_WRITE_SIGNED_MITM
  ///
  /// Descriptor permission: Allow signed write operations with
  /// man-in-the-middle protection
  static const PERMISSION_WRITE_SIGNED_MITM = 256;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/UUID;I)V");

  /// from: public void <init>(java.util.UUID uuid, int permissions)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new BluetoothGattDescriptor.
  /// Requires android.Manifest.permission\#BLUETOOTH permission.
  ///@param uuid The UUID for this descriptor
  ///@param permissions Permissions for this descriptor
  BluetoothGattDescriptor(jni.JniObject uuid, int permissions)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [uuid.reference, permissions]).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();

  static final _id_getCharacteristic = jniAccessors.getMethodIDOf(_classRef,
      "getCharacteristic", "()Landroid/bluetooth/BluetoothGattCharacteristic;");

  /// from: public android.bluetooth.BluetoothGattCharacteristic getCharacteristic()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the characteristic this descriptor belongs to.
  ///@return The characteristic.
  bluetoothgattcharacteristic_.BluetoothGattCharacteristic
      getCharacteristic() =>
          bluetoothgattcharacteristic_.BluetoothGattCharacteristic.fromRef(
              jniAccessors.callMethodWithArgs(reference, _id_getCharacteristic,
                  jni.JniType.objectType, []).object);

  static final _id_getUuid =
      jniAccessors.getMethodIDOf(_classRef, "getUuid", "()Ljava/util/UUID;");

  /// from: public java.util.UUID getUuid()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the UUID of this descriptor.
  ///@return UUID of this descriptor
  jni.JniObject getUuid() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUuid, jni.JniType.objectType, []).object);

  static final _id_getPermissions =
      jniAccessors.getMethodIDOf(_classRef, "getPermissions", "()I");

  /// from: public int getPermissions()
  ///
  /// Returns the permissions for this descriptor.
  ///@return Permissions of this descriptor
  int getPermissions() => jniAccessors.callMethodWithArgs(
      reference, _id_getPermissions, jni.JniType.intType, []).integer;

  static final _id_getValue =
      jniAccessors.getMethodIDOf(_classRef, "getValue", "()[B");

  /// from: public byte[] getValue()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the stored value for this descriptor
  ///
  /// This function returns the stored value for this descriptor as
  /// retrieved by calling BluetoothGatt\#readDescriptor. The cached
  /// value of the descriptor is updated as a result of a descriptor read
  /// operation.
  ///@return Cached value of the descriptor
  jni.JniObject getValue() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getValue, jni.JniType.objectType, []).object);

  static final _id_setValue =
      jniAccessors.getMethodIDOf(_classRef, "setValue", "([B)Z");

  /// from: public boolean setValue(byte[] value)
  ///
  /// Updates the locally stored value of this descriptor.
  ///
  /// This function modifies the locally stored cached value of this
  /// descriptor. To send the value to the remote device, call
  /// BluetoothGatt\#writeDescriptor to send the value to the
  /// remote device.
  ///@param value New value for this descriptor
  ///@return true if the locally stored value has been set, false if the requested value could not
  /// be stored locally.
  bool setValue(jni.JniObject value) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setValue,
      jni.JniType.booleanType,
      [value.reference]).boolean;
}
