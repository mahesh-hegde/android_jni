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

import "SurfaceView.dart" as surfaceview_;

import "../graphics/Bitmap.dart" as bitmap_;

import "../os/Handler.dart" as handler_;

import "../graphics/Rect.dart" as rect_;

import "Surface.dart" as surface_;

import "Window.dart" as window_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.PixelCopy
///
/// Provides a mechanisms to issue pixel copy requests to allow for copy
/// operations from Surface to Bitmap
class PixelCopy extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/view/PixelCopy");
  PixelCopy.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ERROR_DESTINATION_INVALID
  ///
  /// The destination isn't a valid copy target. If the destination is a bitmap
  /// this can occur if the bitmap is too large for the hardware to copy to.
  /// It can also occur if the destination has been destroyed.
  static const ERROR_DESTINATION_INVALID = 5;

  /// from: static public final int ERROR_SOURCE_INVALID
  ///
  /// It is not possible to copy from the source. This can happen if the source
  /// is hardware-protected or destroyed.
  static const ERROR_SOURCE_INVALID = 4;

  /// from: static public final int ERROR_SOURCE_NO_DATA
  ///
  /// The source has nothing to copy from. When the source is a Surface
  /// this means that no buffers have been queued yet. Wait for the source
  /// to produce a frame and try again.
  static const ERROR_SOURCE_NO_DATA = 3;

  /// from: static public final int ERROR_TIMEOUT
  ///
  /// A timeout occurred while trying to acquire a buffer from the source to
  /// copy from.
  static const ERROR_TIMEOUT = 2;

  /// from: static public final int ERROR_UNKNOWN
  ///
  /// The pixel copy request failed with an unknown error.
  static const ERROR_UNKNOWN = 1;

  /// from: static public final int SUCCESS
  ///
  /// The pixel copy request succeeded
  static const SUCCESS = 0;

  static final _id_request = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "request",
      "(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy\$OnPixelCopyFinishedListener;Landroid/os/Handler;)V");

  /// from: static public void request(android.view.SurfaceView source, android.graphics.Bitmap dest, android.view.PixelCopy.OnPixelCopyFinishedListener listener, android.os.Handler listenerThread)
  ///
  /// Requests for the display content of a SurfaceView to be copied
  /// into a provided Bitmap.
  ///
  /// The contents of the source will be scaled to fit exactly inside the bitmap.
  /// The pixel format of the source buffer will be converted, as part of the copy,
  /// to fit the the bitmap's Bitmap.Config. The most recently queued buffer
  /// in the SurfaceView's Surface will be used as the source of the copy.
  ///@param source The source from which to copy
  /// This value must never be {@code null}.
  ///@param dest The destination of the copy. The source will be scaled to
  /// match the width, height, and format of this bitmap.
  /// This value must never be {@code null}.
  ///@param listener Callback for when the pixel copy request completes
  /// This value must never be {@code null}.
  ///@param listenerThread The callback will be invoked on this Handler when
  /// the copy is finished.
  ///
  /// This value must never be {@code null}.
  static void request(
          surfaceview_.SurfaceView source,
          bitmap_.Bitmap dest,
          PixelCopy_OnPixelCopyFinishedListener listener,
          handler_.Handler listenerThread) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_request, jni.JniType.voidType, [
        source.reference,
        dest.reference,
        listener.reference,
        listenerThread.reference
      ]).check();

  static final _id_request1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "request",
      "(Landroid/view/SurfaceView;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy\$OnPixelCopyFinishedListener;Landroid/os/Handler;)V");

  /// from: static public void request(android.view.SurfaceView source, android.graphics.Rect srcRect, android.graphics.Bitmap dest, android.view.PixelCopy.OnPixelCopyFinishedListener listener, android.os.Handler listenerThread)
  ///
  /// Requests for the display content of a SurfaceView to be copied
  /// into a provided Bitmap.
  ///
  /// The contents of the source will be scaled to fit exactly inside the bitmap.
  /// The pixel format of the source buffer will be converted, as part of the copy,
  /// to fit the the bitmap's Bitmap.Config. The most recently queued buffer
  /// in the SurfaceView's Surface will be used as the source of the copy.
  ///@param source The source from which to copy
  /// This value must never be {@code null}.
  ///@param srcRect The area of the source to copy from. If this is null
  /// the copy area will be the entire surface. The rect will be clamped to
  /// the bounds of the Surface.
  /// This value may be {@code null}.
  ///@param dest The destination of the copy. The source will be scaled to
  /// match the width, height, and format of this bitmap.
  /// This value must never be {@code null}.
  ///@param listener Callback for when the pixel copy request completes
  /// This value must never be {@code null}.
  ///@param listenerThread The callback will be invoked on this Handler when
  /// the copy is finished.
  ///
  /// This value must never be {@code null}.
  static void request1(
          surfaceview_.SurfaceView source,
          rect_.Rect srcRect,
          bitmap_.Bitmap dest,
          PixelCopy_OnPixelCopyFinishedListener listener,
          handler_.Handler listenerThread) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_request1, jni.JniType.voidType, [
        source.reference,
        srcRect.reference,
        dest.reference,
        listener.reference,
        listenerThread.reference
      ]).check();

  static final _id_request2 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "request",
      "(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy\$OnPixelCopyFinishedListener;Landroid/os/Handler;)V");

  /// from: static public void request(android.view.Surface source, android.graphics.Bitmap dest, android.view.PixelCopy.OnPixelCopyFinishedListener listener, android.os.Handler listenerThread)
  ///
  /// Requests a copy of the pixels from a Surface to be copied into
  /// a provided Bitmap.
  ///
  /// The contents of the source will be scaled to fit exactly inside the bitmap.
  /// The pixel format of the source buffer will be converted, as part of the copy,
  /// to fit the the bitmap's Bitmap.Config. The most recently queued buffer
  /// in the Surface will be used as the source of the copy.
  ///@param source The source from which to copy
  /// This value must never be {@code null}.
  ///@param dest The destination of the copy. The source will be scaled to
  /// match the width, height, and format of this bitmap.
  /// This value must never be {@code null}.
  ///@param listener Callback for when the pixel copy request completes
  /// This value must never be {@code null}.
  ///@param listenerThread The callback will be invoked on this Handler when
  /// the copy is finished.
  ///
  /// This value must never be {@code null}.
  static void request2(
          surface_.Surface source,
          bitmap_.Bitmap dest,
          PixelCopy_OnPixelCopyFinishedListener listener,
          handler_.Handler listenerThread) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_request2, jni.JniType.voidType, [
        source.reference,
        dest.reference,
        listener.reference,
        listenerThread.reference
      ]).check();

  static final _id_request3 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "request",
      "(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy\$OnPixelCopyFinishedListener;Landroid/os/Handler;)V");

  /// from: static public void request(android.view.Surface source, android.graphics.Rect srcRect, android.graphics.Bitmap dest, android.view.PixelCopy.OnPixelCopyFinishedListener listener, android.os.Handler listenerThread)
  ///
  /// Requests a copy of the pixels at the provided Rect from
  /// a Surface to be copied into a provided Bitmap.
  ///
  /// The contents of the source rect will be scaled to fit exactly inside the bitmap.
  /// The pixel format of the source buffer will be converted, as part of the copy,
  /// to fit the the bitmap's Bitmap.Config. The most recently queued buffer
  /// in the Surface will be used as the source of the copy.
  ///@param source The source from which to copy
  /// This value must never be {@code null}.
  ///@param srcRect The area of the source to copy from. If this is null
  /// the copy area will be the entire surface. The rect will be clamped to
  /// the bounds of the Surface.
  /// This value may be {@code null}.
  ///@param dest The destination of the copy. The source will be scaled to
  /// match the width, height, and format of this bitmap.
  /// This value must never be {@code null}.
  ///@param listener Callback for when the pixel copy request completes
  /// This value must never be {@code null}.
  ///@param listenerThread The callback will be invoked on this Handler when
  /// the copy is finished.
  ///
  /// This value must never be {@code null}.
  static void request3(
          surface_.Surface source,
          rect_.Rect srcRect,
          bitmap_.Bitmap dest,
          PixelCopy_OnPixelCopyFinishedListener listener,
          handler_.Handler listenerThread) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_request3, jni.JniType.voidType, [
        source.reference,
        srcRect.reference,
        dest.reference,
        listener.reference,
        listenerThread.reference
      ]).check();

  static final _id_request4 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "request",
      "(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy\$OnPixelCopyFinishedListener;Landroid/os/Handler;)V");

  /// from: static public void request(android.view.Window source, android.graphics.Bitmap dest, android.view.PixelCopy.OnPixelCopyFinishedListener listener, android.os.Handler listenerThread)
  ///
  /// Requests a copy of the pixels from a Window to be copied into
  /// a provided Bitmap.
  ///
  /// The contents of the source will be scaled to fit exactly inside the bitmap.
  /// The pixel format of the source buffer will be converted, as part of the copy,
  /// to fit the the bitmap's Bitmap.Config. The most recently queued buffer
  /// in the Window's Surface will be used as the source of the copy.
  ///
  /// Note: This is limited to being able to copy from Window's with a non-null
  /// DecorView. If Window\#peekDecorView() is null this throws an
  /// IllegalArgumentException. It will similarly throw an exception
  /// if the DecorView has not yet acquired a backing surface. It is recommended
  /// that OnDrawListener is used to ensure that at least one draw
  /// has happened before trying to copy from the window, otherwise either
  /// an IllegalArgumentException will be thrown or an error will
  /// be returned to the OnPixelCopyFinishedListener.
  ///@param source The source from which to copy
  /// This value must never be {@code null}.
  ///@param dest The destination of the copy. The source will be scaled to
  /// match the width, height, and format of this bitmap.
  /// This value must never be {@code null}.
  ///@param listener Callback for when the pixel copy request completes
  /// This value must never be {@code null}.
  ///@param listenerThread The callback will be invoked on this Handler when
  /// the copy is finished.
  ///
  /// This value must never be {@code null}.
  static void request4(
          window_.Window source,
          bitmap_.Bitmap dest,
          PixelCopy_OnPixelCopyFinishedListener listener,
          handler_.Handler listenerThread) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_request4, jni.JniType.voidType, [
        source.reference,
        dest.reference,
        listener.reference,
        listenerThread.reference
      ]).check();

  static final _id_request5 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "request",
      "(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy\$OnPixelCopyFinishedListener;Landroid/os/Handler;)V");

  /// from: static public void request(android.view.Window source, android.graphics.Rect srcRect, android.graphics.Bitmap dest, android.view.PixelCopy.OnPixelCopyFinishedListener listener, android.os.Handler listenerThread)
  ///
  /// Requests a copy of the pixels at the provided Rect from
  /// a Window to be copied into a provided Bitmap.
  ///
  /// The contents of the source rect will be scaled to fit exactly inside the bitmap.
  /// The pixel format of the source buffer will be converted, as part of the copy,
  /// to fit the the bitmap's Bitmap.Config. The most recently queued buffer
  /// in the Window's Surface will be used as the source of the copy.
  ///
  /// Note: This is limited to being able to copy from Window's with a non-null
  /// DecorView. If Window\#peekDecorView() is null this throws an
  /// IllegalArgumentException. It will similarly throw an exception
  /// if the DecorView has not yet acquired a backing surface. It is recommended
  /// that OnDrawListener is used to ensure that at least one draw
  /// has happened before trying to copy from the window, otherwise either
  /// an IllegalArgumentException will be thrown or an error will
  /// be returned to the OnPixelCopyFinishedListener.
  ///@param source The source from which to copy
  /// This value must never be {@code null}.
  ///@param srcRect The area of the source to copy from. If this is null
  /// the copy area will be the entire surface. The rect will be clamped to
  /// the bounds of the Surface.
  /// This value may be {@code null}.
  ///@param dest The destination of the copy. The source will be scaled to
  /// match the width, height, and format of this bitmap.
  /// This value must never be {@code null}.
  ///@param listener Callback for when the pixel copy request completes
  /// This value must never be {@code null}.
  ///@param listenerThread The callback will be invoked on this Handler when
  /// the copy is finished.
  ///
  /// This value must never be {@code null}.
  static void request5(
          window_.Window source,
          rect_.Rect srcRect,
          bitmap_.Bitmap dest,
          PixelCopy_OnPixelCopyFinishedListener listener,
          handler_.Handler listenerThread) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_request5, jni.JniType.voidType, [
        source.reference,
        srcRect.reference,
        dest.reference,
        listener.reference,
        listenerThread.reference
      ]).check();
}

/// from: android.view.PixelCopy$OnPixelCopyFinishedListener
///
/// Listener for observing the completion of a PixelCopy request.
class PixelCopy_OnPixelCopyFinishedListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/view/PixelCopy\$OnPixelCopyFinishedListener");
  PixelCopy_OnPixelCopyFinishedListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onPixelCopyFinished =
      jniAccessors.getMethodIDOf(_classRef, "onPixelCopyFinished", "(I)V");

  /// from: public abstract void onPixelCopyFinished(int copyResult)
  ///
  /// Callback for when a pixel copy request has completed. This will be called
  /// regardless of whether the copy succeeded or failed.
  ///@param copyResult Contains the resulting status of the copy request.
  /// This will either be PixelCopy\#SUCCESS or one of the
  /// <code>PixelCopy.ERROR_*</code> values.
  ///
  /// Value is android.view.PixelCopy\#SUCCESS, android.view.PixelCopy\#ERROR_UNKNOWN, android.view.PixelCopy\#ERROR_TIMEOUT, android.view.PixelCopy\#ERROR_SOURCE_NO_DATA, android.view.PixelCopy\#ERROR_SOURCE_INVALID, or android.view.PixelCopy\#ERROR_DESTINATION_INVALID
  void onPixelCopyFinished(int copyResult) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onPixelCopyFinished,
      jni.JniType.voidType,
      [copyResult]).check();
}
