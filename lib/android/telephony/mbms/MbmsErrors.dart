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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.mbms.MbmsErrors
class MbmsErrors extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/mbms/MbmsErrors");
  MbmsErrors.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ERROR_MIDDLEWARE_LOST
  ///
  /// Indicates that the middleware has died and the requested operation was not completed.
  static const ERROR_MIDDLEWARE_LOST = 3;

  /// from: static public final int ERROR_MIDDLEWARE_NOT_BOUND
  ///
  /// Indicates that the app attempted to perform an operation on an instance of
  /// android.telephony.MbmsDownloadSession or
  /// MbmsStreamingSession without being bound to the middleware.
  static const ERROR_MIDDLEWARE_NOT_BOUND = 2;

  /// from: static public final int ERROR_NO_UNIQUE_MIDDLEWARE
  ///
  /// Indicates that either no MBMS middleware app is installed on the device or multiple
  /// middleware apps are installed on the device.
  static const ERROR_NO_UNIQUE_MIDDLEWARE = 1;

  /// from: static public final int SUCCESS
  ///
  /// Indicates that the operation was successful.
  static const SUCCESS = 0;

  /// from: static public final int UNKNOWN
  ///
  /// Indicates that the middleware has sent an error code that is not defined in the version of
  /// the SDK targeted by your app. This is an illegal value for the middleware to return -- it
  /// should only ever be generated by the framework.
  static const UNKNOWN = -1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  MbmsErrors()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.telephony.mbms.MbmsErrors$StreamingErrors
///
/// Indicates the errors that are applicable only to the streaming use-case
class MbmsErrors_StreamingErrors extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/telephony/mbms/MbmsErrors\$StreamingErrors");
  MbmsErrors_StreamingErrors.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ERROR_CONCURRENT_SERVICE_LIMIT_REACHED
  ///
  /// Indicates that the middleware cannot start a stream due to too many ongoing streams
  static const ERROR_CONCURRENT_SERVICE_LIMIT_REACHED = 301;

  /// from: static public final int ERROR_DUPLICATE_START_STREAM
  ///
  /// Indicates that the app called
  /// MbmsStreamingSession\#startStreaming(StreamingServiceInfo,
  /// java.util.concurrent.Executor, StreamingServiceCallback)
  /// more than once for the same StreamingServiceInfo.
  static const ERROR_DUPLICATE_START_STREAM = 303;

  /// from: static public final int ERROR_UNABLE_TO_START_SERVICE
  ///
  /// Indicates that the middleware was unable to start the streaming service
  static const ERROR_UNABLE_TO_START_SERVICE = 302;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  MbmsErrors_StreamingErrors()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.telephony.mbms.MbmsErrors$InitializationErrors
///
/// Indicates errors that may be generated during initialization by the
/// middleware. They are applicable to both streaming and file-download use-cases.
class MbmsErrors_InitializationErrors extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/telephony/mbms/MbmsErrors\$InitializationErrors");
  MbmsErrors_InitializationErrors.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ERROR_APP_PERMISSIONS_NOT_GRANTED
  ///
  /// Indicates that the app is not authorized to access media via MBMS.
  static const ERROR_APP_PERMISSIONS_NOT_GRANTED = 102;

  /// from: static public final int ERROR_DUPLICATE_INITIALIZE
  ///
  /// Indicates that the app tried to create more than one instance each of
  /// MbmsStreamingSession or android.telephony.MbmsDownloadSession.
  static const ERROR_DUPLICATE_INITIALIZE = 101;

  /// from: static public final int ERROR_UNABLE_TO_INITIALIZE
  ///
  /// Indicates that the middleware was unable to initialize for this app.
  static const ERROR_UNABLE_TO_INITIALIZE = 103;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  MbmsErrors_InitializationErrors()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.telephony.mbms.MbmsErrors$GeneralErrors
///
/// Indicates the errors that may occur at any point and are applicable to both
/// streaming and file-download.
class MbmsErrors_GeneralErrors extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/telephony/mbms/MbmsErrors\$GeneralErrors");
  MbmsErrors_GeneralErrors.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ERROR_CARRIER_CHANGE_NOT_ALLOWED
  ///
  /// Indicates that MBMS is not available due to the inserted SIM being from an unsupported
  /// carrier.
  static const ERROR_CARRIER_CHANGE_NOT_ALLOWED = 207;

  /// from: static public final int ERROR_IN_E911
  ///
  /// Indicates that the requested operation was not performed due to being in emergency
  /// callback mode.
  static const ERROR_IN_E911 = 204;

  /// from: static public final int ERROR_MIDDLEWARE_NOT_YET_READY
  ///
  /// Indicates that the app attempted to perform an operation before receiving notification
  /// that the middleware is ready via MbmsStreamingSessionCallback\#onMiddlewareReady()
  /// or MbmsDownloadSessionCallback\#onMiddlewareReady().
  static const ERROR_MIDDLEWARE_NOT_YET_READY = 201;

  /// from: static public final int ERROR_MIDDLEWARE_TEMPORARILY_UNAVAILABLE
  ///
  /// Indicates that the requested operation failed due to the middleware being unavailable due
  /// to a transient condition. The app may retry the operation at a later time.
  static const ERROR_MIDDLEWARE_TEMPORARILY_UNAVAILABLE = 203;

  /// from: static public final int ERROR_NOT_CONNECTED_TO_HOME_CARRIER_LTE
  ///
  /// Indicates that MBMS is not available due to the device being in roaming.
  static const ERROR_NOT_CONNECTED_TO_HOME_CARRIER_LTE = 205;

  /// from: static public final int ERROR_OUT_OF_MEMORY
  ///
  /// Indicates that the middleware ran out of memory and was unable to complete the requested
  /// operation.
  static const ERROR_OUT_OF_MEMORY = 202;

  /// from: static public final int ERROR_UNABLE_TO_READ_SIM
  ///
  /// Indicates that MBMS is not available due to a SIM read error.
  static const ERROR_UNABLE_TO_READ_SIM = 206;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  MbmsErrors_GeneralErrors()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.telephony.mbms.MbmsErrors$DownloadErrors
///
/// Indicates the errors that are applicable only to the file-download use-case
class MbmsErrors_DownloadErrors extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/telephony/mbms/MbmsErrors\$DownloadErrors");
  MbmsErrors_DownloadErrors.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ERROR_CANNOT_CHANGE_TEMP_FILE_ROOT
  ///
  /// Indicates that the app is not allowed to change the temp file root at this time due to
  /// outstanding download requests.
  static const ERROR_CANNOT_CHANGE_TEMP_FILE_ROOT = 401;

  /// from: static public final int ERROR_UNKNOWN_DOWNLOAD_REQUEST
  ///
  /// Indicates that the middleware has no record of the supplied DownloadRequest.
  static const ERROR_UNKNOWN_DOWNLOAD_REQUEST = 402;

  /// from: static public final int ERROR_UNKNOWN_FILE_INFO
  ///
  /// Indicates the the middleware has no record of the supplied FileInfo
  static const ERROR_UNKNOWN_FILE_INFO = 403;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  MbmsErrors_DownloadErrors()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}