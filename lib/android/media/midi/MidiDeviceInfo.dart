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

import "../../os/Bundle.dart" as bundle_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.midi.MidiDeviceInfo
///
/// This class contains information to describe a MIDI device.
/// For now we only have information that can be retrieved easily for USB devices,
/// but we will probably expand this in the future.
///
/// This class is just an immutable object to encapsulate the MIDI device description.
/// Use the MidiDevice class to actually communicate with devices.
class MidiDeviceInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/midi/MidiDeviceInfo");
  MidiDeviceInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.media.midi.MidiDeviceInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final java.lang.String PROPERTY_BLUETOOTH_DEVICE
  ///
  /// Bundle key for the device's corresponding Bluetooth device.
  /// The value for this property is of type android.bluetooth.BluetoothDevice.
  /// Only set for Bluetooth MIDI devices.
  /// Used with the android.os.Bundle returned by \#getProperties
  static const PROPERTY_BLUETOOTH_DEVICE = "bluetooth_device";

  /// from: static public final java.lang.String PROPERTY_MANUFACTURER
  ///
  /// Bundle key for the device's manufacturer name property.
  /// The value for this property is of type java.lang.String.
  /// Used with the android.os.Bundle returned by \#getProperties.
  /// Matches the USB device manufacturer name string for USB MIDI devices.
  static const PROPERTY_MANUFACTURER = "manufacturer";

  /// from: static public final java.lang.String PROPERTY_NAME
  ///
  /// Bundle key for the device's user visible name property.
  /// The value for this property is of type java.lang.String.
  /// Used with the android.os.Bundle returned by \#getProperties.
  /// For USB devices, this is a concatenation of the manufacturer and product names.
  static const PROPERTY_NAME = "name";

  /// from: static public final java.lang.String PROPERTY_PRODUCT
  ///
  /// Bundle key for the device's product name property.
  /// The value for this property is of type java.lang.String.
  /// Used with the android.os.Bundle returned by \#getProperties
  /// Matches the USB device product name string for USB MIDI devices.
  static const PROPERTY_PRODUCT = "product";

  /// from: static public final java.lang.String PROPERTY_SERIAL_NUMBER
  ///
  /// Bundle key for the device's serial number property.
  /// The value for this property is of type java.lang.String.
  /// Used with the android.os.Bundle returned by \#getProperties
  /// Matches the USB device serial number for USB MIDI devices.
  static const PROPERTY_SERIAL_NUMBER = "serial_number";

  /// from: static public final java.lang.String PROPERTY_USB_DEVICE
  ///
  /// Bundle key for the device's corresponding USB device.
  /// The value for this property is of type android.hardware.usb.UsbDevice.
  /// Only set for USB MIDI devices.
  /// Used with the android.os.Bundle returned by \#getProperties
  static const PROPERTY_USB_DEVICE = "usb_device";

  /// from: static public final java.lang.String PROPERTY_VERSION
  ///
  /// Bundle key for the device's version property.
  /// The value for this property is of type java.lang.String.
  /// Used with the android.os.Bundle returned by \#getProperties
  /// Matches the USB device version number for USB MIDI devices.
  static const PROPERTY_VERSION = "version";

  /// from: static public final int TYPE_BLUETOOTH
  ///
  /// Constant representing Bluetooth MIDI devices for \#getType
  static const TYPE_BLUETOOTH = 3;

  /// from: static public final int TYPE_USB
  ///
  /// Constant representing USB MIDI devices for \#getType
  static const TYPE_USB = 1;

  /// from: static public final int TYPE_VIRTUAL
  ///
  /// Constant representing virtual (software based) MIDI devices for \#getType
  static const TYPE_VIRTUAL = 2;

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "()I");

  /// from: public int getType()
  ///
  /// Returns the type of the device.
  ///@return the device's type
  int getType() => jniAccessors.callMethodWithArgs(
      reference, _id_getType, jni.JniType.intType, []).integer;

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()I");

  /// from: public int getId()
  ///
  /// Returns the ID of the device.
  /// This ID is generated by the MIDI service and is not persistent across device unplugs.
  ///@return the device's ID
  int getId() => jniAccessors.callMethodWithArgs(
      reference, _id_getId, jni.JniType.intType, []).integer;

  static final _id_getInputPortCount =
      jniAccessors.getMethodIDOf(_classRef, "getInputPortCount", "()I");

  /// from: public int getInputPortCount()
  ///
  /// Returns the device's number of input ports.
  ///@return the number of input ports
  int getInputPortCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getInputPortCount, jni.JniType.intType, []).integer;

  static final _id_getOutputPortCount =
      jniAccessors.getMethodIDOf(_classRef, "getOutputPortCount", "()I");

  /// from: public int getOutputPortCount()
  ///
  /// Returns the device's number of output ports.
  ///@return the number of output ports
  int getOutputPortCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getOutputPortCount, jni.JniType.intType, []).integer;

  static final _id_getPorts = jniAccessors.getMethodIDOf(_classRef, "getPorts",
      "()[Landroid/media/midi/MidiDeviceInfo\$PortInfo;");

  /// from: public android.media.midi.MidiDeviceInfo.PortInfo[] getPorts()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns information about the device's ports.
  /// The ports are in unspecified order.
  ///@return array of PortInfo
  jni.JniObject getPorts() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPorts, jni.JniType.objectType, []).object);

  static final _id_getProperties = jniAccessors.getMethodIDOf(
      _classRef, "getProperties", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getProperties()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the android.os.Bundle containing the device's properties.
  ///@return the device's properties
  bundle_.Bundle getProperties() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getProperties, jni.JniType.objectType, []).object);

  static final _id_isPrivate =
      jniAccessors.getMethodIDOf(_classRef, "isPrivate", "()Z");

  /// from: public boolean isPrivate()
  ///
  /// Returns true if the device is private.  Private devices are only visible and accessible
  /// to clients with the same UID as the application that is hosting the device.
  ///@return true if the device is private
  bool isPrivate() => jniAccessors.callMethodWithArgs(
      reference, _id_isPrivate, jni.JniType.booleanType, []).boolean;

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
}

/// from: android.media.midi.MidiDeviceInfo$PortInfo
///
/// Contains information about an input or output port.
class MidiDeviceInfo_PortInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/midi/MidiDeviceInfo\$PortInfo");
  MidiDeviceInfo_PortInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int TYPE_INPUT
  ///
  /// Port type for input ports
  static const TYPE_INPUT = 1;

  /// from: static public final int TYPE_OUTPUT
  ///
  /// Port type for output ports
  static const TYPE_OUTPUT = 2;

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "()I");

  /// from: public int getType()
  ///
  /// Returns the port type of the port (either \#TYPE_INPUT or \#TYPE_OUTPUT)
  ///@return the port type
  int getType() => jniAccessors.callMethodWithArgs(
      reference, _id_getType, jni.JniType.intType, []).integer;

  static final _id_getPortNumber =
      jniAccessors.getMethodIDOf(_classRef, "getPortNumber", "()I");

  /// from: public int getPortNumber()
  ///
  /// Returns the port number of the port
  ///@return the port number
  int getPortNumber() => jniAccessors.callMethodWithArgs(
      reference, _id_getPortNumber, jni.JniType.intType, []).integer;

  static final _id_getName =
      jniAccessors.getMethodIDOf(_classRef, "getName", "()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the name of the port, or empty string if the port has no name
  ///@return the port name
  jni.JniString getName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);
}
