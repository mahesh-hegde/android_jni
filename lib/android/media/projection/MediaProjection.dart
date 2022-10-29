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

import "../../os/Handler.dart" as handler_;

import "../../hardware/display/VirtualDisplay.dart" as virtualdisplay_;

import "../../view/Surface.dart" as surface_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.projection.MediaProjection
///
/// A token granting applications the ability to capture screen contents and/or
/// record system audio. The exact capabilities granted depend on the type of
/// MediaProjection.
///
///
/// A screen capture session can be started through MediaProjectionManager\#createScreenCaptureIntent. This grants the ability to
/// capture screen contents, but not system audio.
///
///
class MediaProjection extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/projection/MediaProjection");
  MediaProjection.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_registerCallback = jniAccessors.getMethodIDOf(
      _classRef,
      "registerCallback",
      "(Landroid/media/projection/MediaProjection\$Callback;Landroid/os/Handler;)V");

  /// from: public void registerCallback(android.media.projection.MediaProjection.Callback callback, android.os.Handler handler)
  ///
  /// Register a listener to receive notifications about when the MediaProjection changes state.
  ///@param callback The callback to call.
  ///@param handler The handler on which the callback should be invoked, or
  /// null if the callback should be invoked on the calling thread's looper.
  ///@see \#unregisterCallback
  void registerCallback(
          MediaProjection_Callback callback, handler_.Handler handler) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_registerCallback,
          jni.JniType.voidType,
          [callback.reference, handler.reference]).check();

  static final _id_unregisterCallback = jniAccessors.getMethodIDOf(
      _classRef,
      "unregisterCallback",
      "(Landroid/media/projection/MediaProjection\$Callback;)V");

  /// from: public void unregisterCallback(android.media.projection.MediaProjection.Callback callback)
  ///
  /// Unregister a MediaProjection listener.
  ///@param callback The callback to unregister.
  ///@see \#registerCallback
  void unregisterCallback(MediaProjection_Callback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_unregisterCallback,
          jni.JniType.voidType, [callback.reference]).check();

  static final _id_createVirtualDisplay = jniAccessors.getMethodIDOf(
      _classRef,
      "createVirtualDisplay",
      "(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay\$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;");

  /// from: public android.hardware.display.VirtualDisplay createVirtualDisplay(java.lang.String name, int width, int height, int dpi, int flags, android.view.Surface surface, android.hardware.display.VirtualDisplay.Callback callback, android.os.Handler handler)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a android.hardware.display.VirtualDisplay to capture the
  /// contents of the screen.
  ///@param name The name of the virtual display, must be non-empty.
  /// This value must never be {@code null}.
  ///@param width The width of the virtual display in pixels. Must be
  /// greater than 0.
  ///@param height The height of the virtual display in pixels. Must be
  /// greater than 0.
  ///@param dpi The density of the virtual display in dpi. Must be greater
  /// than 0.
  ///@param surface The surface to which the content of the virtual display
  /// should be rendered, or null if there is none initially.
  /// This value may be {@code null}.
  ///@param flags A combination of virtual display flags. See DisplayManager for the full
  /// list of flags.
  ///@param callback Callback to call when the virtual display's state
  /// changes, or null if none.
  /// This value may be {@code null}.
  ///@param handler The android.os.Handler on which the callback should be
  /// invoked, or null if the callback should be invoked on the calling
  /// thread's main android.os.Looper.
  ///
  /// This value may be {@code null}.
  ///@see android.hardware.display.VirtualDisplay
  virtualdisplay_.VirtualDisplay createVirtualDisplay(
          jni.JniString name,
          int width,
          int height,
          int dpi,
          int flags,
          surface_.Surface surface,
          virtualdisplay_.VirtualDisplay_Callback callback,
          handler_.Handler handler) =>
      virtualdisplay_.VirtualDisplay.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_createVirtualDisplay, jni.JniType.objectType, [
        name.reference,
        width,
        height,
        dpi,
        flags,
        surface.reference,
        callback.reference,
        handler.reference
      ]).object);

  static final _id_stop = jniAccessors.getMethodIDOf(_classRef, "stop", "()V");

  /// from: public void stop()
  ///
  /// Stops projection.
  void stop() => jniAccessors.callMethodWithArgs(
      reference, _id_stop, jni.JniType.voidType, []).check();
}

/// from: android.media.projection.MediaProjection$Callback
///
/// Callbacks for the projection session.
class MediaProjection_Callback extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/media/projection/MediaProjection\$Callback");
  MediaProjection_Callback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  MediaProjection_Callback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onStop =
      jniAccessors.getMethodIDOf(_classRef, "onStop", "()V");

  /// from: public void onStop()
  ///
  /// Called when the MediaProjection session is no longer valid.
  ///
  /// Once a MediaProjection has been stopped, it's up to the application to release any
  /// resources it may be holding (e.g. android.hardware.display.VirtualDisplays).
  ///
  ///
  void onStop() => jniAccessors.callMethodWithArgs(
      reference, _id_onStop, jni.JniType.voidType, []).check();
}
