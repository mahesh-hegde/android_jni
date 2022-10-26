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

import "CaptureRequest.dart" as capturerequest_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.hardware.camera2.CaptureFailure
///
/// A report of failed capture for a single image capture from the image sensor.
///
/// CaptureFailures are produced by a CameraDevice if processing a
/// CaptureRequest fails, either partially or fully. Use \#getReason
/// to determine the specific nature of the failed capture.
///
///
/// Receiving a CaptureFailure means that the metadata associated with that frame number
/// has been dropped -- no CaptureResult with the same frame number will be
/// produced.
///
class CaptureFailure extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/hardware/camera2/CaptureFailure");
  CaptureFailure.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int REASON_ERROR
  ///
  /// The CaptureResult has been dropped this frame only due to an error
  /// in the framework.
  ///@see \#getReason()
  static const REASON_ERROR = 0;

  /// from: static public final int REASON_FLUSHED
  ///
  /// The capture has failed due to a CameraCaptureSession\#abortCaptures call from the
  /// application.
  ///@see \#getReason()
  static const REASON_FLUSHED = 1;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/hardware/camera2/CaptureRequest;IZIJ)V");

  /// from: void <init>(android.hardware.camera2.CaptureRequest request, int reason, boolean dropped, int sequenceId, long frameNumber)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  CaptureFailure(capturerequest_.CaptureRequest request, int reason,
      bool dropped, int sequenceId, int frameNumber)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          request.reference,
          reason,
          dropped,
          sequenceId,
          frameNumber
        ]).object);

  static final _id_getRequest = jniAccessors.getMethodIDOf(
      _classRef, "getRequest", "()Landroid/hardware/camera2/CaptureRequest;");

  /// from: public android.hardware.camera2.CaptureRequest getRequest()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the request associated with this failed capture.
  ///
  /// Whenever a request is unsuccessfully captured, with
  /// CameraCaptureSession.CaptureCallback\#onCaptureFailed,
  /// the {@code failed capture}'s {@code getRequest()} will return that {@code request}.
  ///
  ///
  ///
  /// In particular,
  /// <code><pre>cameraDevice.capture(someRequest, new CaptureCallback() {
  ///     {@literal @}Override
  ///     void onCaptureFailed(CaptureRequest myRequest, CaptureFailure myFailure) {
  ///         assert(myFailure.getRequest.equals(myRequest) == true);
  ///     }
  /// };
  /// </code></pre>
  ///
  ///
  ///@return The request associated with this failed capture. Never {@code null}.
  capturerequest_.CaptureRequest getRequest() =>
      capturerequest_.CaptureRequest.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getRequest, jni.JniType.objectType, []).object);

  static final _id_getFrameNumber =
      jniAccessors.getMethodIDOf(_classRef, "getFrameNumber", "()J");

  /// from: public long getFrameNumber()
  ///
  /// Get the frame number associated with this failed capture.
  ///
  /// Whenever a request has been processed, regardless of failed capture or success,
  /// it gets a unique frame number assigned to its future result/failed capture.
  ///
  ///
  /// This value monotonically increments, starting with 0,
  /// for every new result or failure; and the scope is the lifetime of the
  /// CameraDevice.
  ///
  ///@return long frame number
  int getFrameNumber() => jniAccessors.callMethodWithArgs(
      reference, _id_getFrameNumber, jni.JniType.longType, []).long;

  static final _id_getReason =
      jniAccessors.getMethodIDOf(_classRef, "getReason", "()I");

  /// from: public int getReason()
  ///
  /// Determine why the request was dropped, whether due to an error or to a user
  /// action.
  ///@return int The reason code.
  ///
  /// Value is android.hardware.camera2.CaptureFailure\#REASON_ERROR, or android.hardware.camera2.CaptureFailure\#REASON_FLUSHED
  ///@see \#REASON_ERROR
  ///@see \#REASON_FLUSHED
  int getReason() => jniAccessors.callMethodWithArgs(
      reference, _id_getReason, jni.JniType.intType, []).integer;

  static final _id_wasImageCaptured =
      jniAccessors.getMethodIDOf(_classRef, "wasImageCaptured", "()Z");

  /// from: public boolean wasImageCaptured()
  ///
  /// Determine if the image was captured from the camera.
  ///
  /// If the image was not captured, no image buffers will be available.
  /// If the image was captured, then image buffers may be available.
  ///
  ///@return boolean True if the image was captured, false otherwise.
  bool wasImageCaptured() => jniAccessors.callMethodWithArgs(
      reference, _id_wasImageCaptured, jni.JniType.booleanType, []).boolean;

  static final _id_getSequenceId =
      jniAccessors.getMethodIDOf(_classRef, "getSequenceId", "()I");

  /// from: public int getSequenceId()
  ///
  /// The sequence ID for this failed capture that was returned by the
  /// CameraCaptureSession\#capture family of functions.
  ///
  /// The sequence ID is a unique monotonically increasing value starting from 0,
  /// incremented every time a new group of requests is submitted to the CameraDevice.
  ///
  ///@return int The ID for the sequence of requests that this capture failure is the result of
  ///@see CameraDevice.CaptureCallback\#onCaptureSequenceCompleted
  int getSequenceId() => jniAccessors.callMethodWithArgs(
      reference, _id_getSequenceId, jni.JniType.intType, []).integer;
}