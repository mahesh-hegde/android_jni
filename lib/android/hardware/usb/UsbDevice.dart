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

import "UsbConfiguration.dart" as usbconfiguration_;

import "UsbInterface.dart" as usbinterface_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.hardware.usb.UsbDevice
///
/// This class represents a USB device attached to the android device with the android device
/// acting as the USB host.
/// Each device contains one or more UsbInterfaces, each of which contains a number of
/// UsbEndpoints (the channels via which data is transmitted over USB).
///
///  This class contains information (along with UsbInterface and UsbEndpoint)
/// that describes the capabilities of the USB device.
/// To communicate with the device, you open a UsbDeviceConnection for the device
/// and use UsbRequest to send and receive data on an endpoint.
/// UsbDeviceConnection\#controlTransfer is used for control requests on endpoint zero.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about communicating with USB hardware, read the
/// <a href="{@docRoot}guide/topics/connectivity/usb/index.html">USB</a> developer guide.
///
/// </div>
class UsbDevice extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/hardware/usb/UsbDevice");
  UsbDevice.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.hardware.usb.UsbDevice> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getDeviceName = jniAccessors.getMethodIDOf(
      _classRef, "getDeviceName", "()Ljava/lang/String;");

  /// from: public java.lang.String getDeviceName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the name of the device.
  /// In the standard implementation, this is the path of the device file
  /// for the device in the usbfs file system.
  ///@return the device name
  ///
  /// This value will never be {@code null}.
  jni.JniString getDeviceName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDeviceName, jni.JniType.objectType, []).object);

  static final _id_getManufacturerName = jniAccessors.getMethodIDOf(
      _classRef, "getManufacturerName", "()Ljava/lang/String;");

  /// from: public java.lang.String getManufacturerName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the manufacturer name of the device.
  ///@return the manufacturer name, or {@code null} if the property could not be read
  jni.JniString getManufacturerName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getManufacturerName, jni.JniType.objectType, []).object);

  static final _id_getProductName = jniAccessors.getMethodIDOf(
      _classRef, "getProductName", "()Ljava/lang/String;");

  /// from: public java.lang.String getProductName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the product name of the device.
  ///@return the product name, or {@code null} if the property could not be read
  jni.JniString getProductName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getProductName, jni.JniType.objectType, []).object);

  static final _id_getVersion = jniAccessors.getMethodIDOf(
      _classRef, "getVersion", "()Ljava/lang/String;");

  /// from: public java.lang.String getVersion()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the version number of the device.
  ///@return the device version
  ///
  /// This value will never be {@code null}.
  jni.JniString getVersion() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getVersion, jni.JniType.objectType, []).object);

  static final _id_getSerialNumber = jniAccessors.getMethodIDOf(
      _classRef, "getSerialNumber", "()Ljava/lang/String;");

  /// from: public java.lang.String getSerialNumber()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the serial number of the device.
  ///@return the serial number name, or {@code null} if the property could not be read
  jni.JniString getSerialNumber() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSerialNumber, jni.JniType.objectType, []).object);

  static final _id_getDeviceId =
      jniAccessors.getMethodIDOf(_classRef, "getDeviceId", "()I");

  /// from: public int getDeviceId()
  ///
  /// Returns a unique integer ID for the device.
  /// This is a convenience for clients that want to use an integer to represent
  /// the device, rather than the device name.
  /// IDs are not persistent across USB disconnects.
  ///@return the device ID
  int getDeviceId() => jniAccessors.callMethodWithArgs(
      reference, _id_getDeviceId, jni.JniType.intType, []).integer;

  static final _id_getVendorId =
      jniAccessors.getMethodIDOf(_classRef, "getVendorId", "()I");

  /// from: public int getVendorId()
  ///
  /// Returns a vendor ID for the device.
  ///@return the device vendor ID
  int getVendorId() => jniAccessors.callMethodWithArgs(
      reference, _id_getVendorId, jni.JniType.intType, []).integer;

  static final _id_getProductId =
      jniAccessors.getMethodIDOf(_classRef, "getProductId", "()I");

  /// from: public int getProductId()
  ///
  /// Returns a product ID for the device.
  ///@return the device product ID
  int getProductId() => jniAccessors.callMethodWithArgs(
      reference, _id_getProductId, jni.JniType.intType, []).integer;

  static final _id_getDeviceClass =
      jniAccessors.getMethodIDOf(_classRef, "getDeviceClass", "()I");

  /// from: public int getDeviceClass()
  ///
  /// Returns the devices's class field.
  /// Some useful constants for USB device classes can be found in UsbConstants.
  ///@return the devices's class
  int getDeviceClass() => jniAccessors.callMethodWithArgs(
      reference, _id_getDeviceClass, jni.JniType.intType, []).integer;

  static final _id_getDeviceSubclass =
      jniAccessors.getMethodIDOf(_classRef, "getDeviceSubclass", "()I");

  /// from: public int getDeviceSubclass()
  ///
  /// Returns the device's subclass field.
  ///@return the device's subclass
  int getDeviceSubclass() => jniAccessors.callMethodWithArgs(
      reference, _id_getDeviceSubclass, jni.JniType.intType, []).integer;

  static final _id_getDeviceProtocol =
      jniAccessors.getMethodIDOf(_classRef, "getDeviceProtocol", "()I");

  /// from: public int getDeviceProtocol()
  ///
  /// Returns the device's protocol field.
  ///@return the device's protocol
  int getDeviceProtocol() => jniAccessors.callMethodWithArgs(
      reference, _id_getDeviceProtocol, jni.JniType.intType, []).integer;

  static final _id_getConfigurationCount =
      jniAccessors.getMethodIDOf(_classRef, "getConfigurationCount", "()I");

  /// from: public int getConfigurationCount()
  ///
  /// Returns the number of UsbConfigurations this device contains.
  ///@return the number of configurations
  int getConfigurationCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getConfigurationCount, jni.JniType.intType, []).integer;

  static final _id_getConfiguration = jniAccessors.getMethodIDOf(_classRef,
      "getConfiguration", "(I)Landroid/hardware/usb/UsbConfiguration;");

  /// from: public android.hardware.usb.UsbConfiguration getConfiguration(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the UsbConfiguration at the given index.
  ///@return the configuration
  ///
  /// This value will never be {@code null}.
  usbconfiguration_.UsbConfiguration getConfiguration(int index) =>
      usbconfiguration_.UsbConfiguration.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getConfiguration,
              jni.JniType.objectType, [index]).object);

  static final _id_getInterfaceCount =
      jniAccessors.getMethodIDOf(_classRef, "getInterfaceCount", "()I");

  /// from: public int getInterfaceCount()
  ///
  /// Returns the number of UsbInterfaces this device contains.
  /// For devices with multiple configurations, you will probably want to use
  /// UsbConfiguration\#getInterfaceCount instead.
  ///@return the number of interfaces
  int getInterfaceCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getInterfaceCount, jni.JniType.intType, []).integer;

  static final _id_getInterface = jniAccessors.getMethodIDOf(
      _classRef, "getInterface", "(I)Landroid/hardware/usb/UsbInterface;");

  /// from: public android.hardware.usb.UsbInterface getInterface(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the UsbInterface at the given index.
  /// For devices with multiple configurations, you will probably want to use
  /// UsbConfiguration\#getInterface instead.
  ///@return the interface
  ///
  /// This value will never be {@code null}.
  usbinterface_.UsbInterface getInterface(int index) =>
      usbinterface_.UsbInterface.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInterface, jni.JniType.objectType, [index]).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

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

  /// from: public void writeToParcel(android.os.Parcel parcel, int flags)
  void writeToParcel(parcel_.Parcel parcel, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [parcel.reference, flags]).check();

  static final _id_getDeviceId1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "getDeviceId", "(Ljava/lang/String;)I");

  /// from: static public int getDeviceId(java.lang.String name)
  static int getDeviceId1(jni.JniString name) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getDeviceId1,
          jni.JniType.intType, [name.reference]).integer;

  static final _id_getDeviceName1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "getDeviceName", "(I)Ljava/lang/String;");

  /// from: static public java.lang.String getDeviceName(int id)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniString getDeviceName1(int id) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getDeviceName1, jni.JniType.objectType, [id]).object);
}
