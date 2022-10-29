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

import "UsbEndpoint.dart" as usbendpoint_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.hardware.usb.UsbInterface
///
/// A class representing an interface on a UsbDevice.
/// USB devices can have one or more interfaces, each one providing a different
/// piece of functionality, separate from the other interfaces.
/// An interface will have one or more UsbEndpoints, which are the
/// channels by which the host transfers data with the device.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about communicating with USB hardware, read the
/// <a href="{@docRoot}guide/topics/usb/index.html">USB</a> developer guide.
///
/// </div>
class UsbInterface extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/hardware/usb/UsbInterface");
  UsbInterface.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.hardware.usb.UsbInterface> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()I");

  /// from: public int getId()
  ///
  /// Returns the interface's bInterfaceNumber field.
  /// This is an integer that along with the alternate setting uniquely identifies
  /// the interface on the device.
  ///@return the interface's ID
  int getId() => jniAccessors.callMethodWithArgs(
      reference, _id_getId, jni.JniType.intType, []).integer;

  static final _id_getAlternateSetting =
      jniAccessors.getMethodIDOf(_classRef, "getAlternateSetting", "()I");

  /// from: public int getAlternateSetting()
  ///
  /// Returns the interface's bAlternateSetting field.
  /// This is an integer that along with the ID uniquely identifies
  /// the interface on the device.
  /// UsbDeviceConnection\#setInterface can be used to switch between
  /// two interfaces with the same ID but different alternate setting.
  ///@return the interface's alternate setting
  int getAlternateSetting() => jniAccessors.callMethodWithArgs(
      reference, _id_getAlternateSetting, jni.JniType.intType, []).integer;

  static final _id_getName =
      jniAccessors.getMethodIDOf(_classRef, "getName", "()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the interface's name.
  ///@return the interface's name, or {@code null} if the property could not be read
  jni.JniString getName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_getInterfaceClass =
      jniAccessors.getMethodIDOf(_classRef, "getInterfaceClass", "()I");

  /// from: public int getInterfaceClass()
  ///
  /// Returns the interface's class field.
  /// Some useful constants for USB classes can be found in UsbConstants
  ///@return the interface's class
  int getInterfaceClass() => jniAccessors.callMethodWithArgs(
      reference, _id_getInterfaceClass, jni.JniType.intType, []).integer;

  static final _id_getInterfaceSubclass =
      jniAccessors.getMethodIDOf(_classRef, "getInterfaceSubclass", "()I");

  /// from: public int getInterfaceSubclass()
  ///
  /// Returns the interface's subclass field.
  ///@return the interface's subclass
  int getInterfaceSubclass() => jniAccessors.callMethodWithArgs(
      reference, _id_getInterfaceSubclass, jni.JniType.intType, []).integer;

  static final _id_getInterfaceProtocol =
      jniAccessors.getMethodIDOf(_classRef, "getInterfaceProtocol", "()I");

  /// from: public int getInterfaceProtocol()
  ///
  /// Returns the interface's protocol field.
  ///@return the interface's protocol
  int getInterfaceProtocol() => jniAccessors.callMethodWithArgs(
      reference, _id_getInterfaceProtocol, jni.JniType.intType, []).integer;

  static final _id_getEndpointCount =
      jniAccessors.getMethodIDOf(_classRef, "getEndpointCount", "()I");

  /// from: public int getEndpointCount()
  ///
  /// Returns the number of android.hardware.usb.UsbEndpoints this interface contains.
  ///@return the number of endpoints
  int getEndpointCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getEndpointCount, jni.JniType.intType, []).integer;

  static final _id_getEndpoint = jniAccessors.getMethodIDOf(
      _classRef, "getEndpoint", "(I)Landroid/hardware/usb/UsbEndpoint;");

  /// from: public android.hardware.usb.UsbEndpoint getEndpoint(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the android.hardware.usb.UsbEndpoint at the given index.
  ///@return the endpoint
  usbendpoint_.UsbEndpoint getEndpoint(int index) =>
      usbendpoint_.UsbEndpoint.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEndpoint, jni.JniType.objectType, [index]).object);

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
}
