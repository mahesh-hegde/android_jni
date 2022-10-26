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

import "MidiDeviceInfo.dart" as midideviceinfo_;

import "MidiInputPort.dart" as midiinputport_;

import "MidiOutputPort.dart" as midioutputport_;

import "../../os/IBinder.dart" as ibinder_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.midi.MidiDevice
///
/// This class is used for sending and receiving data to and from a MIDI device
/// Instances of this class are created by MidiManager\#openDevice.
class MidiDevice extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/midi/MidiDevice");
  MidiDevice.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  MidiDevice()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getInfo = jniAccessors.getMethodIDOf(
      _classRef, "getInfo", "()Landroid/media/midi/MidiDeviceInfo;");

  /// from: public android.media.midi.MidiDeviceInfo getInfo()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a MidiDeviceInfo object, which describes this device.
  ///@return the MidiDeviceInfo object
  midideviceinfo_.MidiDeviceInfo getInfo() =>
      midideviceinfo_.MidiDeviceInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInfo, jni.JniType.objectType, []).object);

  static final _id_openInputPort = jniAccessors.getMethodIDOf(
      _classRef, "openInputPort", "(I)Landroid/media/midi/MidiInputPort;");

  /// from: public android.media.midi.MidiInputPort openInputPort(int portNumber)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Called to open a MidiInputPort for the specified port number.
  ///
  /// An input port can only be used by one sender at a time.
  /// Opening an input port will fail if another application has already opened it for use.
  /// A MidiDeviceStatus can be used to determine if an input port is already open.
  ///@param portNumber the number of the input port to open
  ///@return the MidiInputPort if the open is successful,
  ///         or null in case of failure.
  midiinputport_.MidiInputPort openInputPort(int portNumber) =>
      midiinputport_.MidiInputPort.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_openInputPort,
          jni.JniType.objectType,
          [portNumber]).object);

  static final _id_openOutputPort = jniAccessors.getMethodIDOf(
      _classRef, "openOutputPort", "(I)Landroid/media/midi/MidiOutputPort;");

  /// from: public android.media.midi.MidiOutputPort openOutputPort(int portNumber)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Called to open a MidiOutputPort for the specified port number.
  ///
  /// An output port may be opened by multiple applications.
  ///@param portNumber the number of the output port to open
  ///@return the MidiOutputPort if the open is successful,
  ///         or null in case of failure.
  midioutputport_.MidiOutputPort openOutputPort(int portNumber) =>
      midioutputport_.MidiOutputPort.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_openOutputPort,
          jni.JniType.objectType,
          [portNumber]).object);

  static final _id_connectPorts = jniAccessors.getMethodIDOf(
      _classRef,
      "connectPorts",
      "(Landroid/media/midi/MidiInputPort;I)Landroid/media/midi/MidiDevice\$MidiConnection;");

  /// from: public android.media.midi.MidiDevice.MidiConnection connectPorts(android.media.midi.MidiInputPort inputPort, int outputPortNumber)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Connects the supplied MidiInputPort to the output port of this device
  /// with the specified port number. Once the connection is made, the MidiInput port instance
  /// can no longer receive data via its MidiReceiver\#onSend method.
  /// This method returns a MidiDevice.MidiConnection object, which can be used
  /// to close the connection.
  ///@param inputPort the inputPort to connect
  ///@param outputPortNumber the port number of the output port to connect inputPort to.
  ///@return MidiDevice.MidiConnection object if the connection is successful,
  ///         or null in case of failure.
  MidiDevice_MidiConnection connectPorts(
          midiinputport_.MidiInputPort inputPort, int outputPortNumber) =>
      MidiDevice_MidiConnection.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_connectPorts,
          jni.JniType.objectType,
          [inputPort.reference, outputPortNumber]).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.media.midi.MidiDevice$MidiConnection
///
/// This class represents a connection between the output port of one device
/// and the input port of another. Created by \#connectPorts.
/// Close this object to terminate the connection.
class MidiDevice_MidiConnection extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/midi/MidiDevice\$MidiConnection");
  MidiDevice_MidiConnection.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V");

  /// from: void <init>(android.os.IBinder outputPortToken, android.media.midi.MidiInputPort inputPort)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MidiDevice_MidiConnection(
      ibinder_.IBinder outputPortToken, midiinputport_.MidiInputPort inputPort)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [outputPortToken.reference, inputPort.reference]).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();
}