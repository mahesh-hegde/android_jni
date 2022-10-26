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

import "../view/Surface.dart" as surface_;

import "Image.dart" as image_;

import "../os/Handler.dart" as handler_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.ImageWriter
///
///
/// The ImageWriter class allows an application to produce Image data into a
/// android.view.Surface, and have it be consumed by another component
/// like android.hardware.camera2.CameraDevice CameraDevice.
///
///
///
/// Several Android API classes can provide input android.view.Surface Surface objects for ImageWriter to produce data into, including
/// MediaCodec MediaCodec (encoder),
/// android.hardware.camera2.CameraCaptureSession CameraCaptureSession
/// (reprocessing input), ImageReader, etc.
///
///
///
/// The input Image data is encapsulated in Image objects. To produce
/// Image data into a destination android.view.Surface Surface, the
/// application can get an input Image via \#dequeueInputImage then write
/// Image data into it. Multiple such Image objects can be dequeued at
/// the same time and queued back in any order, up to the number specified by the
/// {@code maxImages} constructor parameter.
///
///
///
/// If the application already has an Image from ImageReader, the
/// application can directly queue this Image into the ImageWriter (via
/// \#queueInputImage), potentially with zero buffer copies. This
/// even works if the image format of the ImageWriter is
/// ImageFormat\#PRIVATE PRIVATE, and prior to Android P is the only
/// way to enqueue images into such an ImageWriter. Starting in Android P
/// private images may also be accessed through their hardware buffers
/// (when available) through the Image\#getHardwareBuffer() method.
/// Attempting to access the planes of a private image, will return an
/// empty array.
///
///
///
/// Once new input Images are queued into an ImageWriter, it's up to the
/// downstream components (e.g. ImageReader or
/// android.hardware.camera2.CameraDevice) to consume the Images. If the
/// downstream components cannot consume the Images at least as fast as the
/// ImageWriter production rate, the \#dequeueInputImage call will
/// eventually block and the application will have to drop input frames.
///
///
///
/// If the consumer component that provided the input android.view.Surface Surface
/// abandons the android.view.Surface Surface, \#queueInputImage queueing
/// or \#dequeueInputImage dequeueing an Image will throw an
/// IllegalStateException.
///
///
class ImageWriter extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/media/ImageWriter");
  ImageWriter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/Surface;II)V");

  /// from: void <init>(android.view.Surface surface, int maxImages, int format)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  ImageWriter(surface_.Surface surface, int maxImages, int format)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [surface.reference, maxImages, format]).object);

  static final _id_newInstance = jniAccessors.getStaticMethodIDOf(_classRef,
      "newInstance", "(Landroid/view/Surface;I)Landroid/media/ImageWriter;");

  /// from: static public android.media.ImageWriter newInstance(android.view.Surface surface, int maxImages)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  ///
  /// Create a new ImageWriter.
  ///
  ///
  ///
  /// The {@code maxImages} parameter determines the maximum number of
  /// Image objects that can be be dequeued from the
  /// {@code ImageWriter} simultaneously. Requesting more buffers will use up
  /// more memory, so it is important to use only the minimum number necessary.
  ///
  ///
  ///
  /// The input Image size and format depend on the Surface that is provided by
  /// the downstream consumer end-point.
  ///
  ///
  ///@param surface The destination Surface this writer produces Image data
  ///            into.
  ///@param maxImages The maximum number of Images the user will want to
  ///            access simultaneously for producing Image data. This should be
  ///            as small as possible to limit memory use. Once maxImages
  ///            Images are dequeued by the user, one of them has to be queued
  ///            back before a new Image can be dequeued for access via
  ///            \#dequeueInputImage().
  ///@return a new ImageWriter instance.
  static ImageWriter newInstance(surface_.Surface surface, int maxImages) =>
      ImageWriter.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_newInstance,
          jni.JniType.objectType,
          [surface.reference, maxImages]).object);

  static final _id_getMaxImages =
      jniAccessors.getMethodIDOf(_classRef, "getMaxImages", "()I");

  /// from: public int getMaxImages()
  ///
  ///
  /// Maximum number of Images that can be dequeued from the ImageWriter
  /// simultaneously (for example, with \#dequeueInputImage()).
  ///
  ///
  ///
  /// An Image is considered dequeued after it's returned by
  /// \#dequeueInputImage() from ImageWriter, and until the Image is
  /// sent back to ImageWriter via \#queueInputImage, or
  /// Image\#close().
  ///
  ///
  ///
  /// Attempting to dequeue more than {@code maxImages} concurrently will
  /// result in the \#dequeueInputImage() function throwing an
  /// IllegalStateException.
  ///
  ///
  ///@return Maximum number of Images that can be dequeued from this
  ///         ImageWriter.
  ///@see \#dequeueInputImage
  ///@see \#queueInputImage
  ///@see Image\#close
  int getMaxImages() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxImages, jni.JniType.intType, []).integer;

  static final _id_dequeueInputImage = jniAccessors.getMethodIDOf(
      _classRef, "dequeueInputImage", "()Landroid/media/Image;");

  /// from: public android.media.Image dequeueInputImage()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  ///
  /// Dequeue the next available input Image for the application to produce
  /// data into.
  ///
  ///
  ///
  /// This method requests a new input Image from ImageWriter. The application
  /// owns this Image after this call. Once the application fills the Image
  /// data, it is expected to return this Image back to ImageWriter for
  /// downstream consumer components (e.g.
  /// android.hardware.camera2.CameraDevice) to consume. The Image can
  /// be returned to ImageWriter via \#queueInputImage or
  /// Image\#close().
  ///
  ///
  ///
  /// This call will block if all available input images have been queued by
  /// the application and the downstream consumer has not yet consumed any.
  /// When an Image is consumed by the downstream consumer and released, an
  /// OnImageReleasedListener\#onImageReleased callback will be fired,
  /// which indicates that there is one input Image available. For non-
  /// ImageFormat\#PRIVATE PRIVATE formats (
  /// ImageWriter\#getFormat() != ImageFormat\#PRIVATE), it is
  /// recommended to dequeue the next Image only after this callback is fired,
  /// in the steady state.
  ///
  ///
  ///
  /// If the format of ImageWriter is ImageFormat\#PRIVATE PRIVATE (
  /// ImageWriter\#getFormat() == ImageFormat\#PRIVATE), the
  /// image buffer is accessible to the application only through the hardware
  /// buffer obtained through Image\#getHardwareBuffer(). (On Android
  /// versions prior to P, dequeueing private buffers will cause an
  /// IllegalStateException to be thrown). Alternatively,
  /// the application can acquire images from some other component (e.g. an
  /// ImageReader), and queue them directly to this ImageWriter via the
  /// ImageWriter\#queueInputImage queueInputImage() method.
  ///
  ///
  ///@return The next available input Image from this ImageWriter.
  ///@throws IllegalStateException if {@code maxImages} Images are currently
  ///             dequeued, or the input android.view.Surface Surface
  ///             has been abandoned by the consumer component that provided
  ///             the android.view.Surface Surface. Prior to Android
  ///             P, throws if the ImageWriter format is
  ///             ImageFormat\#PRIVATE PRIVATE.
  ///@see \#queueInputImage
  ///@see Image\#close
  image_.Image dequeueInputImage() =>
      image_.Image.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_dequeueInputImage, jni.JniType.objectType, []).object);

  static final _id_queueInputImage = jniAccessors.getMethodIDOf(
      _classRef, "queueInputImage", "(Landroid/media/Image;)V");

  /// from: public void queueInputImage(android.media.Image image)
  ///
  ///
  /// Queue an input Image back to ImageWriter for the downstream
  /// consumer to access.
  ///
  ///
  ///
  /// The input Image could be from ImageReader (acquired via
  /// ImageReader\#acquireNextImage or
  /// ImageReader\#acquireLatestImage), or from this ImageWriter
  /// (acquired via \#dequeueInputImage). In the former case, the Image
  /// data will be moved to this ImageWriter. Note that the Image properties
  /// (size, format, strides, etc.) must be the same as the properties of the
  /// images dequeued from this ImageWriter, or this method will throw an
  /// IllegalArgumentException. In the latter case, the application has
  /// filled the input image with data. This method then passes the filled
  /// buffer to the downstream consumer. In both cases, it's up to the caller
  /// to ensure that the Image timestamp (in nanoseconds) is correctly set, as
  /// the downstream component may want to use it to indicate the Image data
  /// capture time.
  ///
  ///
  ///
  /// After this method is called and the downstream consumer consumes and
  /// releases the Image, an OnImageReleasedListener\#onImageReleased
  /// callback will fire. The application can use this callback to avoid
  /// sending Images faster than the downstream consumer processing rate in
  /// steady state.
  ///
  ///
  ///
  /// Passing in an Image from some other component (e.g. an
  /// ImageReader) requires a free input Image from this ImageWriter as
  /// the destination. In this case, this call will block, as
  /// \#dequeueInputImage does, if there are no free Images available.
  /// To avoid blocking, the application should ensure that there is at least
  /// one free Image available in this ImageWriter before calling this method.
  ///
  ///
  ///
  /// After this call, the input Image is no longer valid for further access,
  /// as if the Image is Image\#close closed. Attempting to access the
  /// ByteBuffer ByteBuffers returned by an earlier
  /// Image.Plane\#getBuffer Plane\#getBuffer call will result in an
  /// IllegalStateException.
  ///
  ///
  ///@param image The Image to be queued back to ImageWriter for future
  ///            consumption.
  ///@throws IllegalStateException if the image was already queued previously,
  ///            or the image was aborted previously, or the input
  ///            android.view.Surface Surface has been abandoned by the
  ///            consumer component that provided the
  ///            android.view.Surface Surface.
  ///@see \#dequeueInputImage()
  void queueInputImage(image_.Image image) => jniAccessors.callMethodWithArgs(
      reference,
      _id_queueInputImage,
      jni.JniType.voidType,
      [image.reference]).check();

  static final _id_getFormat =
      jniAccessors.getMethodIDOf(_classRef, "getFormat", "()I");

  /// from: public int getFormat()
  ///
  /// Get the ImageWriter format.
  ///
  /// This format may be different than the Image format returned by
  /// Image\#getFormat(). However, if the ImageWriter format is
  /// ImageFormat\#PRIVATE PRIVATE, calling \#dequeueInputImage()
  /// will result in an IllegalStateException.
  ///
  ///
  ///@return The ImageWriter format.
  int getFormat() => jniAccessors.callMethodWithArgs(
      reference, _id_getFormat, jni.JniType.intType, []).integer;

  static final _id_setOnImageReleasedListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnImageReleasedListener",
      "(Landroid/media/ImageWriter\$OnImageReleasedListener;Landroid/os/Handler;)V");

  /// from: public void setOnImageReleasedListener(android.media.ImageWriter.OnImageReleasedListener listener, android.os.Handler handler)
  ///
  /// Register a listener to be invoked when an input Image is returned to the
  /// ImageWriter.
  ///@param listener The listener that will be run.
  ///@param handler The handler on which the listener should be invoked, or
  ///            null if the listener should be invoked on the calling thread's
  ///            looper.
  ///@throws IllegalArgumentException If no handler specified and the calling
  ///             thread has no looper.
  void setOnImageReleasedListener(ImageWriter_OnImageReleasedListener listener,
          handler_.Handler handler) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setOnImageReleasedListener,
          jni.JniType.voidType,
          [listener.reference, handler.reference]).check();

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Free up all the resources associated with this ImageWriter.
  ///
  /// After calling this method, this ImageWriter cannot be used. Calling any
  /// methods on this ImageWriter and Images previously provided by
  /// \#dequeueInputImage() will result in an
  /// IllegalStateException, and attempting to write into
  /// ByteBuffer ByteBuffers returned by an earlier
  /// Image.Plane\#getBuffer Plane\#getBuffer call will have undefined
  /// behavior.
  ///
  ///
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();
}

/// from: android.media.ImageWriter$OnImageReleasedListener
///
/// ImageWriter callback interface, used to to asynchronously notify the
/// application of various ImageWriter events.
class ImageWriter_OnImageReleasedListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/media/ImageWriter\$OnImageReleasedListener");
  ImageWriter_OnImageReleasedListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onImageReleased = jniAccessors.getMethodIDOf(
      _classRef, "onImageReleased", "(Landroid/media/ImageWriter;)V");

  /// from: public abstract void onImageReleased(android.media.ImageWriter writer)
  ///
  ///
  /// Callback that is called when an input Image is released back to
  /// ImageWriter after the data consumption.
  ///
  ///
  ///
  /// The client can use this callback to be notified that an input Image
  /// has been consumed and released by the downstream consumer. More
  /// specifically, this callback will be fired for below cases:
  /// <li>The application dequeues an input Image via the
  /// ImageWriter\#dequeueInputImage dequeueInputImage() method,
  /// uses it, and then queues it back to this ImageWriter via the
  /// ImageWriter\#queueInputImage queueInputImage() method. After
  /// the downstream consumer uses and releases this image to this
  /// ImageWriter, this callback will be fired. This image will be
  /// available to be dequeued after this callback.</li>
  /// <li>The application obtains an Image from some other component (e.g.
  /// an ImageReader), uses it, and then queues it to this
  /// ImageWriter via ImageWriter\#queueInputImage queueInputImage().
  /// After the downstream consumer uses and releases this image to this
  /// ImageWriter, this callback will be fired.</li>
  ///
  ///
  ///@param writer the ImageWriter the callback is associated with.
  ///@see ImageWriter
  ///@see Image
  void onImageReleased(ImageWriter writer) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onImageReleased,
      jni.JniType.voidType,
      [writer.reference]).check();
}
