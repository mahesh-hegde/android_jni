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

import "../CameraCaptureSession.dart" as cameracapturesession_;

import "InputConfiguration.dart" as inputconfiguration_;

import "../CaptureRequest.dart" as capturerequest_;
import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.hardware.camera2.params.SessionConfiguration
///
/// A helper class that aggregates all supported arguments for capture session initialization.
class SessionConfiguration extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/hardware/camera2/params/SessionConfiguration");
  SessionConfiguration.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int SESSION_HIGH_SPEED
  ///
  /// A high speed session type that can only contain instances of OutputConfiguration.
  /// The outputs can run using high speed FPS ranges. Calls to \#setInputConfiguration
  /// are not supported.
  ///@see CameraDevice\#createConstrainedHighSpeedCaptureSession
  static const SESSION_HIGH_SPEED = 1;

  /// from: static public final int SESSION_REGULAR
  ///
  /// A regular session type containing instances of OutputConfiguration running
  /// at regular non high speed FPS ranges and optionally InputConfiguration for
  /// reprocessable sessions.
  ///@see CameraDevice\#createCaptureSession
  ///@see CameraDevice\#createReprocessableCaptureSession
  static const SESSION_REGULAR = 0;

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession\$StateCallback;)V");

  /// from: public void <init>(int sessionType, java.util.List<android.hardware.camera2.params.OutputConfiguration> outputs, java.util.concurrent.Executor executor, android.hardware.camera2.CameraCaptureSession.StateCallback cb)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new SessionConfiguration.
  ///@param sessionType The session type.
  /// Value is android.hardware.camera2.params.SessionConfiguration\#SESSION_REGULAR, or android.hardware.camera2.params.SessionConfiguration\#SESSION_HIGH_SPEED
  ///@param outputs A list of output configurations for the capture session.
  /// This value must never be {@code null}.
  ///@param executor The executor which should be used to invoke the callback. In general it is
  ///                 recommended that camera operations are not done on the main (UI) thread.
  /// This value must never be {@code null}.
  /// Callback and listener events are dispatched through this
  ///  *           Executor, providing an easy way to control which thread is
  ///  *           used. To dispatch events through the main thread of your
  ///  *           application, you can use Context\#getMainExecutor(). To
  ///  *           dispatch events through a shared thread pool, you can use
  ///  *           AsyncTask\#THREAD_POOL_EXECUTOR.
  ///@param cb A state callback interface implementation.
  ///
  /// This value must never be {@code null}.
  ///@see \#SESSION_REGULAR
  ///@see \#SESSION_HIGH_SPEED
  ///@see CameraDevice\#createCaptureSession(List, CameraCaptureSession.StateCallback, Handler)
  ///@see CameraDevice\#createCaptureSessionByOutputConfigurations
  ///@see CameraDevice\#createReprocessableCaptureSession
  ///@see CameraDevice\#createConstrainedHighSpeedCaptureSession
  SessionConfiguration(
      int sessionType,
      jni.JniObject outputs,
      jni.JniObject executor,
      cameracapturesession_.CameraCaptureSession_StateCallback cb)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          sessionType,
          outputs.reference,
          executor.reference,
          cb.reference
        ]).object);

  static final _id_getSessionType =
      jniAccessors.getMethodIDOf(_classRef, "getSessionType", "()I");

  /// from: public int getSessionType()
  ///
  /// Retrieve the type of the capture session.
  ///@return The capture session type.
  ///
  /// Value is android.hardware.camera2.params.SessionConfiguration\#SESSION_REGULAR, or android.hardware.camera2.params.SessionConfiguration\#SESSION_HIGH_SPEED
  int getSessionType() => jniAccessors.callMethodWithArgs(
      reference, _id_getSessionType, jni.JniType.intType, []).integer;

  static final _id_getOutputConfigurations = jniAccessors.getMethodIDOf(
      _classRef, "getOutputConfigurations", "()Ljava/util/List;");

  /// from: public java.util.List<android.hardware.camera2.params.OutputConfiguration> getOutputConfigurations()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the OutputConfiguration list for the capture session.
  ///@return A list of output configurations for the capture session.
  jni.JniObject getOutputConfigurations() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getOutputConfigurations, jni.JniType.objectType, []).object);

  static final _id_getStateCallback = jniAccessors.getMethodIDOf(
      _classRef,
      "getStateCallback",
      "()Landroid/hardware/camera2/CameraCaptureSession\$StateCallback;");

  /// from: public android.hardware.camera2.CameraCaptureSession.StateCallback getStateCallback()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the CameraCaptureSession.StateCallback for the capture session.
  ///@return A state callback interface implementation.
  cameracapturesession_.CameraCaptureSession_StateCallback getStateCallback() =>
      cameracapturesession_.CameraCaptureSession_StateCallback.fromRef(
          jniAccessors.callMethodWithArgs(reference, _id_getStateCallback,
              jni.JniType.objectType, []).object);

  static final _id_getExecutor = jniAccessors.getMethodIDOf(
      _classRef, "getExecutor", "()Ljava/util/concurrent/Executor;");

  /// from: public java.util.concurrent.Executor getExecutor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the java.util.concurrent.Executor for the capture session.
  ///@return The Executor on which the callback will be invoked.
  jni.JniObject getExecutor() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExecutor, jni.JniType.objectType, []).object);

  static final _id_setInputConfiguration = jniAccessors.getMethodIDOf(
      _classRef,
      "setInputConfiguration",
      "(Landroid/hardware/camera2/params/InputConfiguration;)V");

  /// from: public void setInputConfiguration(android.hardware.camera2.params.InputConfiguration input)
  ///
  /// Sets the InputConfiguration for a reprocessable session. Input configuration are not
  /// supported for \#SESSION_HIGH_SPEED.
  ///@param input Input configuration.
  /// This value must never be {@code null}.
  ///@throws UnsupportedOperationException In case it is called for \#SESSION_HIGH_SPEED
  ///                                       type session configuration.
  void setInputConfiguration(inputconfiguration_.InputConfiguration input) =>
      jniAccessors.callMethodWithArgs(reference, _id_setInputConfiguration,
          jni.JniType.voidType, [input.reference]).check();

  static final _id_getInputConfiguration = jniAccessors.getMethodIDOf(
      _classRef,
      "getInputConfiguration",
      "()Landroid/hardware/camera2/params/InputConfiguration;");

  /// from: public android.hardware.camera2.params.InputConfiguration getInputConfiguration()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the InputConfiguration.
  ///@return The capture session input configuration.
  inputconfiguration_.InputConfiguration getInputConfiguration() =>
      inputconfiguration_.InputConfiguration.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getInputConfiguration,
              jni.JniType.objectType, []).object);

  static final _id_setSessionParameters = jniAccessors.getMethodIDOf(_classRef,
      "setSessionParameters", "(Landroid/hardware/camera2/CaptureRequest;)V");

  /// from: public void setSessionParameters(android.hardware.camera2.CaptureRequest params)
  ///
  /// Sets the session wide camera parameters (see CaptureRequest). This argument can
  /// be set for every supported session type and will be passed to the camera device as part
  /// of the capture session initialization. Session parameters are a subset of the available
  /// capture request parameters (see CameraCharacteristics\#getAvailableSessionKeys)
  /// and their application can introduce internal camera delays. To improve camera performance
  /// it is suggested to change them sparingly within the lifetime of the capture session and
  /// to pass their initial values as part of this method.
  ///@param params A capture request that includes the initial values for any available
  ///               session wide capture keys. Tags (see CaptureRequest.Builder\#setTag) and
  ///               output targets (see CaptureRequest.Builder\#addTarget) are ignored if
  ///               set. Parameter values not part of
  ///               CameraCharacteristics\#getAvailableSessionKeys will also be ignored. It
  ///               is recommended to build the session parameters using the same template type as
  ///               the initial capture request, so that the session and initial request parameters
  ///               match as much as possible.
  void setSessionParameters(capturerequest_.CaptureRequest params) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSessionParameters,
          jni.JniType.voidType, [params.reference]).check();

  static final _id_getSessionParameters = jniAccessors.getMethodIDOf(_classRef,
      "getSessionParameters", "()Landroid/hardware/camera2/CaptureRequest;");

  /// from: public android.hardware.camera2.CaptureRequest getSessionParameters()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the session wide camera parameters (see CaptureRequest).
  ///@return A capture request that includes the initial values for any available
  ///         session wide capture keys.
  capturerequest_.CaptureRequest getSessionParameters() =>
      capturerequest_.CaptureRequest.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getSessionParameters,
          jni.JniType.objectType, []).object);
}
