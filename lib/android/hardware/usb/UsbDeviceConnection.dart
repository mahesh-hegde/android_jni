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

import "UsbDevice.dart" as usbdevice_;

import "UsbInterface.dart" as usbinterface_;

import "UsbConfiguration.dart" as usbconfiguration_;

import "UsbEndpoint.dart" as usbendpoint_;

import "UsbRequest.dart" as usbrequest_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.hardware.usb.UsbDeviceConnection
///
/// This class is used for sending and receiving data and control messages to a USB device.
/// Instances of this class are created by UsbManager\#openDevice.
class UsbDeviceConnection extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/hardware/usb/UsbDeviceConnection");
  UsbDeviceConnection.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/hardware/usb/UsbDevice;)V");

  /// from: void <init>(android.hardware.usb.UsbDevice device)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// UsbDevice should only be instantiated by UsbService implementation
  ///@hide
  UsbDeviceConnection(usbdevice_.UsbDevice device)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [device.reference]).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Releases all system resources related to the device.
  /// Once the object is closed it cannot be used again.
  /// The client must call UsbManager\#openDevice again
  /// to retrieve a new instance to reestablish communication with the device.
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_getFileDescriptor =
      jniAccessors.getMethodIDOf(_classRef, "getFileDescriptor", "()I");

  /// from: public int getFileDescriptor()
  ///
  /// Returns the native file descriptor for the device, or
  /// -1 if the device is not opened.
  /// This is intended for passing to native code to access the device.
  ///@return the native file descriptor
  int getFileDescriptor() => jniAccessors.callMethodWithArgs(
      reference, _id_getFileDescriptor, jni.JniType.intType, []).integer;

  static final _id_getRawDescriptors =
      jniAccessors.getMethodIDOf(_classRef, "getRawDescriptors", "()[B");

  /// from: public byte[] getRawDescriptors()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the raw USB descriptors for the device.
  /// This can be used to access descriptors not supported directly
  /// via the higher level APIs.
  ///@return raw USB descriptors
  jni.JniObject getRawDescriptors() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getRawDescriptors, jni.JniType.objectType, []).object);

  static final _id_claimInterface = jniAccessors.getMethodIDOf(
      _classRef, "claimInterface", "(Landroid/hardware/usb/UsbInterface;Z)Z");

  /// from: public boolean claimInterface(android.hardware.usb.UsbInterface intf, boolean force)
  ///
  /// Claims exclusive access to a android.hardware.usb.UsbInterface.
  /// This must be done before sending or receiving data on any
  /// android.hardware.usb.UsbEndpoints belonging to the interface.
  ///@param intf the interface to claim
  ///@param force true to disconnect kernel driver if necessary
  ///@return true if the interface was successfully claimed
  bool claimInterface(usbinterface_.UsbInterface intf, bool force) =>
      jniAccessors.callMethodWithArgs(reference, _id_claimInterface,
          jni.JniType.booleanType, [intf.reference, force]).boolean;

  static final _id_releaseInterface = jniAccessors.getMethodIDOf(
      _classRef, "releaseInterface", "(Landroid/hardware/usb/UsbInterface;)Z");

  /// from: public boolean releaseInterface(android.hardware.usb.UsbInterface intf)
  ///
  /// Releases exclusive access to a android.hardware.usb.UsbInterface.
  ///@return true if the interface was successfully released
  bool releaseInterface(usbinterface_.UsbInterface intf) =>
      jniAccessors.callMethodWithArgs(reference, _id_releaseInterface,
          jni.JniType.booleanType, [intf.reference]).boolean;

  static final _id_setInterface = jniAccessors.getMethodIDOf(
      _classRef, "setInterface", "(Landroid/hardware/usb/UsbInterface;)Z");

  /// from: public boolean setInterface(android.hardware.usb.UsbInterface intf)
  ///
  /// Sets the current android.hardware.usb.UsbInterface.
  /// Used to select between two interfaces with the same ID but different alternate setting.
  ///@return true if the interface was successfully selected
  bool setInterface(usbinterface_.UsbInterface intf) =>
      jniAccessors.callMethodWithArgs(reference, _id_setInterface,
          jni.JniType.booleanType, [intf.reference]).boolean;

  static final _id_setConfiguration = jniAccessors.getMethodIDOf(_classRef,
      "setConfiguration", "(Landroid/hardware/usb/UsbConfiguration;)Z");

  /// from: public boolean setConfiguration(android.hardware.usb.UsbConfiguration configuration)
  ///
  /// Sets the device's current android.hardware.usb.UsbConfiguration.
  ///@return true if the configuration was successfully set
  bool setConfiguration(usbconfiguration_.UsbConfiguration configuration) =>
      jniAccessors.callMethodWithArgs(reference, _id_setConfiguration,
          jni.JniType.booleanType, [configuration.reference]).boolean;

  static final _id_controlTransfer =
      jniAccessors.getMethodIDOf(_classRef, "controlTransfer", "(IIII[BII)I");

  /// from: public int controlTransfer(int requestType, int request, int value, int index, byte[] buffer, int length, int timeout)
  ///
  /// Performs a control transaction on endpoint zero for this device.
  /// The direction of the transfer is determined by the request type.
  /// If requestType & UsbConstants\#USB_ENDPOINT_DIR_MASK is
  /// UsbConstants\#USB_DIR_OUT, then the transfer is a write,
  /// and if it is UsbConstants\#USB_DIR_IN, then the transfer
  /// is a read.
  ///
  /// This method transfers data starting from index 0 in the buffer.
  /// To specify a different offset, use
  /// \#controlTransfer(int, int, int, int, byte[], int, int, int).
  ///
  ///
  ///@param requestType request type for this transaction
  ///@param request request ID for this transaction
  ///@param value value field for this transaction
  ///@param index index field for this transaction
  ///@param buffer buffer for data portion of transaction,
  /// or null if no data needs to be sent or received
  ///@param length the length of the data to send or receive
  ///@param timeout in milliseconds
  ///@return length of data transferred (or zero) for success,
  /// or negative value for failure
  int controlTransfer(int requestType, int request, int value, int index,
          jni.JniObject buffer, int length, int timeout) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_controlTransfer, jni.JniType.intType, [
        requestType,
        request,
        value,
        index,
        buffer.reference,
        length,
        timeout
      ]).integer;

  static final _id_controlTransfer1 =
      jniAccessors.getMethodIDOf(_classRef, "controlTransfer", "(IIII[BIII)I");

  /// from: public int controlTransfer(int requestType, int request, int value, int index, byte[] buffer, int offset, int length, int timeout)
  ///
  /// Performs a control transaction on endpoint zero for this device.
  /// The direction of the transfer is determined by the request type.
  /// If requestType & UsbConstants\#USB_ENDPOINT_DIR_MASK is
  /// UsbConstants\#USB_DIR_OUT, then the transfer is a write,
  /// and if it is UsbConstants\#USB_DIR_IN, then the transfer
  /// is a read.
  ///@param requestType request type for this transaction
  ///@param request request ID for this transaction
  ///@param value value field for this transaction
  ///@param index index field for this transaction
  ///@param buffer buffer for data portion of transaction,
  /// or null if no data needs to be sent or received
  ///@param offset the index of the first byte in the buffer to send or receive
  ///@param length the length of the data to send or receive
  ///@param timeout in milliseconds
  ///@return length of data transferred (or zero) for success,
  /// or negative value for failure
  int controlTransfer1(int requestType, int request, int value, int index,
          jni.JniObject buffer, int offset, int length, int timeout) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_controlTransfer1, jni.JniType.intType, [
        requestType,
        request,
        value,
        index,
        buffer.reference,
        offset,
        length,
        timeout
      ]).integer;

  static final _id_bulkTransfer = jniAccessors.getMethodIDOf(
      _classRef, "bulkTransfer", "(Landroid/hardware/usb/UsbEndpoint;[BII)I");

  /// from: public int bulkTransfer(android.hardware.usb.UsbEndpoint endpoint, byte[] buffer, int length, int timeout)
  ///
  /// Performs a bulk transaction on the given endpoint.
  /// The direction of the transfer is determined by the direction of the endpoint.
  ///
  /// This method transfers data starting from index 0 in the buffer.
  /// To specify a different offset, use
  /// \#bulkTransfer(UsbEndpoint, byte[], int, int, int).
  ///
  ///
  ///@param endpoint the endpoint for this transaction
  ///@param buffer buffer for data to send or receive; can be {@code null} to wait for next
  ///               transaction without reading data
  ///@param length the length of the data to send or receive. Before
  ///               {@value Build.VERSION_CODES\#P}, a value larger than 16384 bytes
  ///               would be truncated down to 16384. In API {@value Build.VERSION_CODES\#P}
  ///               and after, any value of length is valid.
  ///@param timeout in milliseconds, 0 is infinite
  ///@return length of data transferred (or zero) for success,
  /// or negative value for failure
  int bulkTransfer(usbendpoint_.UsbEndpoint endpoint, jni.JniObject buffer,
          int length, int timeout) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_bulkTransfer,
          jni.JniType.intType,
          [endpoint.reference, buffer.reference, length, timeout]).integer;

  static final _id_bulkTransfer1 = jniAccessors.getMethodIDOf(
      _classRef, "bulkTransfer", "(Landroid/hardware/usb/UsbEndpoint;[BIII)I");

  /// from: public int bulkTransfer(android.hardware.usb.UsbEndpoint endpoint, byte[] buffer, int offset, int length, int timeout)
  ///
  /// Performs a bulk transaction on the given endpoint.
  /// The direction of the transfer is determined by the direction of the endpoint.
  ///@param endpoint the endpoint for this transaction
  ///@param buffer buffer for data to send or receive
  ///@param offset the index of the first byte in the buffer to send or receive
  ///@param length the length of the data to send or receive. Before
  ///               {@value Build.VERSION_CODES\#P}, a value larger than 16384 bytes
  ///               would be truncated down to 16384. In API {@value Build.VERSION_CODES\#P}
  ///               and after, any value of length is valid.
  ///@param timeout in milliseconds, 0 is infinite
  ///@return length of data transferred (or zero) for success,
  /// or negative value for failure
  int bulkTransfer1(usbendpoint_.UsbEndpoint endpoint, jni.JniObject buffer,
          int offset, int length, int timeout) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_bulkTransfer1, jni.JniType.intType, [
        endpoint.reference,
        buffer.reference,
        offset,
        length,
        timeout
      ]).integer;

  static final _id_requestWait = jniAccessors.getMethodIDOf(
      _classRef, "requestWait", "()Landroid/hardware/usb/UsbRequest;");

  /// from: public android.hardware.usb.UsbRequest requestWait()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Waits for the result of a android.hardware.usb.UsbRequest\#queue operation
  /// Note that this may return requests queued on multiple
  /// android.hardware.usb.UsbEndpoints. When multiple endpoints are in use,
  /// android.hardware.usb.UsbRequest\#getEndpoint and android.hardware.usb.UsbRequest\#getClientData can be useful in determining how to process
  /// the result of this function.
  ///
  ///@return a completed USB request, or null if an error occurred
  ///@throws IllegalArgumentException Before API {@value Build.VERSION_CODES\#O}: if the number of
  ///                                  bytes read or written is more than the limit of the
  ///                                  request's buffer. The number of bytes is determined by the
  ///                                  {@code length} parameter of
  ///                                  UsbRequest\#queue(ByteBuffer, int)
  ///@throws BufferOverflowException In API {@value Build.VERSION_CODES\#O} and after: if the
  ///                                 number of bytes read or written is more than the limit of the
  ///                                 request's buffer. The number of bytes is determined by the
  ///                                 {@code length} parameter of
  ///                                 UsbRequest\#queue(ByteBuffer, int)
  usbrequest_.UsbRequest requestWait() =>
      usbrequest_.UsbRequest.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_requestWait, jni.JniType.objectType, []).object);

  static final _id_requestWait1 = jniAccessors.getMethodIDOf(
      _classRef, "requestWait", "(J)Landroid/hardware/usb/UsbRequest;");

  /// from: public android.hardware.usb.UsbRequest requestWait(long timeout)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Waits for the result of a android.hardware.usb.UsbRequest\#queue operation
  /// Note that this may return requests queued on multiple
  /// android.hardware.usb.UsbEndpoints. When multiple endpoints are in use,
  /// android.hardware.usb.UsbRequest\#getEndpoint and android.hardware.usb.UsbRequest\#getClientData can be useful in determining how to process
  /// the result of this function.
  ///
  /// Android processes UsbRequest UsbRequests asynchronously. Hence it is not
  /// guaranteed that \#requestWait(long) requestWait(0) returns a request that has been
  /// queued right before even if the request could have been processed immediately.
  ///
  ///@param timeout timeout in milliseconds. If 0 this method does not wait.
  ///@return a completed USB request, or {@code null} if an error occurred
  ///@throws BufferOverflowException if the number of bytes read or written is more than the
  ///                                 limit of the request's buffer. The number of bytes is
  ///                                 determined by the {@code length} parameter of
  ///                                 UsbRequest\#queue(ByteBuffer, int)
  ///@throws TimeoutException if no request was received in {@code timeout} milliseconds.
  usbrequest_.UsbRequest requestWait1(int timeout) =>
      usbrequest_.UsbRequest.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_requestWait1, jni.JniType.objectType, [timeout]).object);

  static final _id_getSerial = jniAccessors.getMethodIDOf(
      _classRef, "getSerial", "()Ljava/lang/String;");

  /// from: public java.lang.String getSerial()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the serial number for the device.
  /// This will return null if the device has not been opened.
  ///@return the device serial number
  jni.JniString getSerial() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSerial, jni.JniType.objectType, []).object);

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();
}