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

/// from: android.hardware.usb.UsbAccessory
///
/// A class representing a USB accessory, which is an external hardware component
/// that communicates with an android application over USB.
/// The accessory is the USB host and android the device side of the USB connection.
///
/// When the accessory connects, it reports its manufacturer and model names,
/// the version of the accessory, and a user visible description of the accessory to the device.
/// The manufacturer, model and version strings are used by the USB Manager to choose
/// an appropriate application for the accessory.
/// The accessory may optionally provide a unique serial number
/// and a URL to for the accessory's website to the device as well.
///
/// An instance of this class is sent to the application via the
/// UsbManager\#ACTION_USB_ACCESSORY_ATTACHED Intent.
/// The application can then call UsbManager\#openAccessory to open a file descriptor
/// for reading and writing data to and from the accessory.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about communicating with USB hardware, read the
/// <a href="{@docRoot}guide/topics/usb/index.html">USB</a> developer guide.
///
/// </div>
class UsbAccessory extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/hardware/usb/UsbAccessory");
  UsbAccessory.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.hardware.usb.UsbAccessory> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getManufacturer = jniAccessors.getMethodIDOf(
      _classRef, "getManufacturer", "()Ljava/lang/String;");

  /// from: public java.lang.String getManufacturer()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the manufacturer name of the accessory.
  ///@return the accessory manufacturer
  ///
  /// This value will never be {@code null}.
  jni.JniString getManufacturer() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getManufacturer, jni.JniType.objectType, []).object);

  static final _id_getModel =
      jniAccessors.getMethodIDOf(_classRef, "getModel", "()Ljava/lang/String;");

  /// from: public java.lang.String getModel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the model name of the accessory.
  ///@return the accessory model
  ///
  /// This value will never be {@code null}.
  jni.JniString getModel() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getModel, jni.JniType.objectType, []).object);

  static final _id_getDescription = jniAccessors.getMethodIDOf(
      _classRef, "getDescription", "()Ljava/lang/String;");

  /// from: public java.lang.String getDescription()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a user visible description of the accessory.
  ///@return the accessory description, or {@code null} if not set
  jni.JniString getDescription() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDescription, jni.JniType.objectType, []).object);

  static final _id_getVersion = jniAccessors.getMethodIDOf(
      _classRef, "getVersion", "()Ljava/lang/String;");

  /// from: public java.lang.String getVersion()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the version of the accessory.
  ///@return the accessory version, or {@code null} if not set
  jni.JniString getVersion() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getVersion, jni.JniType.objectType, []).object);

  static final _id_getUri =
      jniAccessors.getMethodIDOf(_classRef, "getUri", "()Ljava/lang/String;");

  /// from: public java.lang.String getUri()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the URI for the accessory.
  /// This is an optional URI that might show information about the accessory
  /// or provide the option to download an application for the accessory
  ///@return the accessory URI, or {@code null} if not set
  jni.JniString getUri() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUri, jni.JniType.objectType, []).object);

  static final _id_getSerial = jniAccessors.getMethodIDOf(
      _classRef, "getSerial", "()Ljava/lang/String;");

  /// from: public java.lang.String getSerial()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the unique serial number for the accessory.
  /// This is an optional serial number that can be used to differentiate
  /// between individual accessories of the same model and manufacturer
  ///@return the unique serial number, or {@code null} if not set
  jni.JniString getSerial() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSerial, jni.JniType.objectType, []).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

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
}
