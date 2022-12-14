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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.mtp.MtpDeviceInfo
///
/// This class encapsulates information about an MTP device.
/// This corresponds to the DeviceInfo Dataset described in
/// section 5.1.1 of the MTP specification.
class MtpDeviceInfo extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/mtp/MtpDeviceInfo");
  MtpDeviceInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getManufacturer = jniAccessors.getMethodIDOf(
      _classRef, "getManufacturer", "()Ljava/lang/String;");

  /// from: public final java.lang.String getManufacturer()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the manufacturer's name for the MTP device
  ///@return the manufacturer name
  ///
  /// This value will never be {@code null}.
  jni.JniString getManufacturer() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getManufacturer, jni.JniType.objectType, []).object);

  static final _id_getModel =
      jniAccessors.getMethodIDOf(_classRef, "getModel", "()Ljava/lang/String;");

  /// from: public final java.lang.String getModel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the model name for the MTP device
  ///@return the model name
  ///
  /// This value will never be {@code null}.
  jni.JniString getModel() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getModel, jni.JniType.objectType, []).object);

  static final _id_getVersion = jniAccessors.getMethodIDOf(
      _classRef, "getVersion", "()Ljava/lang/String;");

  /// from: public final java.lang.String getVersion()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the version string the MTP device
  ///@return the device version
  ///
  /// This value will never be {@code null}.
  jni.JniString getVersion() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getVersion, jni.JniType.objectType, []).object);

  static final _id_getSerialNumber = jniAccessors.getMethodIDOf(
      _classRef, "getSerialNumber", "()Ljava/lang/String;");

  /// from: public final java.lang.String getSerialNumber()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the unique serial number for the MTP device
  ///@return the serial number
  ///
  /// This value will never be {@code null}.
  jni.JniString getSerialNumber() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSerialNumber, jni.JniType.objectType, []).object);

  static final _id_getOperationsSupported =
      jniAccessors.getMethodIDOf(_classRef, "getOperationsSupported", "()[I");

  /// from: public final int[] getOperationsSupported()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns operation code supported by the device.
  ///@return supported operation code. Can be null if device does not provide the property.
  ///@see MtpConstants\#OPERATION_GET_DEVICE_INFO
  ///@see MtpConstants\#OPERATION_OPEN_SESSION
  ///@see MtpConstants\#OPERATION_CLOSE_SESSION
  ///@see MtpConstants\#OPERATION_GET_STORAGE_I_DS
  ///@see MtpConstants\#OPERATION_GET_STORAGE_INFO
  ///@see MtpConstants\#OPERATION_GET_NUM_OBJECTS
  ///@see MtpConstants\#OPERATION_GET_OBJECT_HANDLES
  ///@see MtpConstants\#OPERATION_GET_OBJECT_INFO
  ///@see MtpConstants\#OPERATION_GET_OBJECT
  ///@see MtpConstants\#OPERATION_GET_THUMB
  ///@see MtpConstants\#OPERATION_DELETE_OBJECT
  ///@see MtpConstants\#OPERATION_SEND_OBJECT_INFO
  ///@see MtpConstants\#OPERATION_SEND_OBJECT
  ///@see MtpConstants\#OPERATION_INITIATE_CAPTURE
  ///@see MtpConstants\#OPERATION_FORMAT_STORE
  ///@see MtpConstants\#OPERATION_RESET_DEVICE
  ///@see MtpConstants\#OPERATION_SELF_TEST
  ///@see MtpConstants\#OPERATION_SET_OBJECT_PROTECTION
  ///@see MtpConstants\#OPERATION_POWER_DOWN
  ///@see MtpConstants\#OPERATION_GET_DEVICE_PROP_DESC
  ///@see MtpConstants\#OPERATION_GET_DEVICE_PROP_VALUE
  ///@see MtpConstants\#OPERATION_SET_DEVICE_PROP_VALUE
  ///@see MtpConstants\#OPERATION_RESET_DEVICE_PROP_VALUE
  ///@see MtpConstants\#OPERATION_TERMINATE_OPEN_CAPTURE
  ///@see MtpConstants\#OPERATION_MOVE_OBJECT
  ///@see MtpConstants\#OPERATION_COPY_OBJECT
  ///@see MtpConstants\#OPERATION_GET_PARTIAL_OBJECT
  ///@see MtpConstants\#OPERATION_INITIATE_OPEN_CAPTURE
  ///@see MtpConstants\#OPERATION_GET_OBJECT_PROPS_SUPPORTED
  ///@see MtpConstants\#OPERATION_GET_OBJECT_PROP_DESC
  ///@see MtpConstants\#OPERATION_GET_OBJECT_PROP_VALUE
  ///@see MtpConstants\#OPERATION_SET_OBJECT_PROP_VALUE
  ///@see MtpConstants\#OPERATION_GET_OBJECT_REFERENCES
  ///@see MtpConstants\#OPERATION_SET_OBJECT_REFERENCES
  ///@see MtpConstants\#OPERATION_SKIP
  jni.JniObject getOperationsSupported() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getOperationsSupported, jni.JniType.objectType, []).object);

  static final _id_getEventsSupported =
      jniAccessors.getMethodIDOf(_classRef, "getEventsSupported", "()[I");

  /// from: public final int[] getEventsSupported()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns event code supported by the device.
  ///@return supported event code. Can be null if device does not provide the property.
  ///@see MtpEvent\#EVENT_UNDEFINED
  ///@see MtpEvent\#EVENT_CANCEL_TRANSACTION
  ///@see MtpEvent\#EVENT_OBJECT_ADDED
  ///@see MtpEvent\#EVENT_OBJECT_REMOVED
  ///@see MtpEvent\#EVENT_STORE_ADDED
  ///@see MtpEvent\#EVENT_STORE_REMOVED
  ///@see MtpEvent\#EVENT_DEVICE_PROP_CHANGED
  ///@see MtpEvent\#EVENT_OBJECT_INFO_CHANGED
  ///@see MtpEvent\#EVENT_DEVICE_INFO_CHANGED
  ///@see MtpEvent\#EVENT_REQUEST_OBJECT_TRANSFER
  ///@see MtpEvent\#EVENT_STORE_FULL
  ///@see MtpEvent\#EVENT_DEVICE_RESET
  ///@see MtpEvent\#EVENT_STORAGE_INFO_CHANGED
  ///@see MtpEvent\#EVENT_CAPTURE_COMPLETE
  ///@see MtpEvent\#EVENT_UNREPORTED_STATUS
  ///@see MtpEvent\#EVENT_OBJECT_PROP_CHANGED
  ///@see MtpEvent\#EVENT_OBJECT_PROP_DESC_CHANGED
  ///@see MtpEvent\#EVENT_OBJECT_REFERENCES_CHANGED
  jni.JniObject getEventsSupported() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getEventsSupported, jni.JniType.objectType, []).object);

  static final _id_isOperationSupported =
      jniAccessors.getMethodIDOf(_classRef, "isOperationSupported", "(I)Z");

  /// from: public boolean isOperationSupported(int code)
  ///
  /// Returns if the given operation is supported by the device or not.
  ///@param code Operation code.
  ///@return If the given operation is supported by the device or not.
  bool isOperationSupported(int code) => jniAccessors.callMethodWithArgs(
      reference,
      _id_isOperationSupported,
      jni.JniType.booleanType,
      [code]).boolean;

  static final _id_isEventSupported =
      jniAccessors.getMethodIDOf(_classRef, "isEventSupported", "(I)Z");

  /// from: public boolean isEventSupported(int code)
  ///
  /// Returns if the given event is supported by the device or not.
  ///@param code Event code.
  ///@return If the given event is supported by the device or not.
  bool isEventSupported(int code) => jniAccessors.callMethodWithArgs(
      reference, _id_isEventSupported, jni.JniType.booleanType, [code]).boolean;
}
