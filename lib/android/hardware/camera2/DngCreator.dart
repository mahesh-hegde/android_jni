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

import "CameraCharacteristics.dart" as cameracharacteristics_;

import "CaptureResult.dart" as captureresult_;

import "../../graphics/Bitmap.dart" as bitmap_;

import "../../media/Image.dart" as image_;

import "../../location/Location.dart" as location_;

import "../../util/Size.dart" as size_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.hardware.camera2.DngCreator
///
/// The DngCreator class provides functions to write raw pixel data as a DNG file.
///
///
/// This class is designed to be used with the android.graphics.ImageFormat\#RAW_SENSOR
/// buffers available from android.hardware.camera2.CameraDevice, or with Bayer-type raw
/// pixel data that is otherwise generated by an application.  The DNG metadata tags will be
/// generated from a android.hardware.camera2.CaptureResult object or set directly.
///
///
///
///
/// The DNG file format is a cross-platform file format that is used to store pixel data from
/// camera sensors with minimal pre-processing applied.  DNG files allow for pixel data to be
/// defined in a user-defined colorspace, and have associated metadata that allow for this
/// pixel data to be converted to the standard CIE XYZ colorspace during post-processing.
///
///
///
///
/// For more information on the DNG file format and associated metadata, please refer to the
/// <a href="https://wwwimages2.adobe.com/content/dam/Adobe/en/products/photoshop/pdfs/dng_spec_1.4.0.0.pdf">
/// Adobe DNG 1.4.0.0 specification</a>.
///
///
class DngCreator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/hardware/camera2/DngCreator");
  DngCreator.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int MAX_THUMBNAIL_DIMENSION
  ///
  /// Max width or height dimension for thumbnails.
  static const MAX_THUMBNAIL_DIMENSION = 256;

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V");

  /// from: public void <init>(android.hardware.camera2.CameraCharacteristics characteristics, android.hardware.camera2.CaptureResult metadata)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new DNG object.
  ///
  ///
  /// It is not necessary to call any set methods to write a well-formatted DNG file.
  ///
  ///
  ///
  /// DNG metadata tags will be generated from the corresponding parameters in the
  /// android.hardware.camera2.CaptureResult object.
  ///
  ///
  ///
  /// For best quality DNG files, it is strongly recommended that lens shading map output is
  /// enabled if supported. See CaptureRequest\#STATISTICS_LENS_SHADING_MAP_MODE.
  ///
  ///
  ///@param characteristics an object containing the static
  ///          android.hardware.camera2.CameraCharacteristics.
  /// This value must never be {@code null}.
  ///@param metadata a metadata object to generate tags from.
  ///
  /// This value must never be {@code null}.
  DngCreator(cameracharacteristics_.CameraCharacteristics characteristics,
      captureresult_.CaptureResult metadata)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [characteristics.reference, metadata.reference]).object);

  static final _id_setOrientation = jniAccessors.getMethodIDOf(
      _classRef, "setOrientation", "(I)Landroid/hardware/camera2/DngCreator;");

  /// from: public android.hardware.camera2.DngCreator setOrientation(int orientation)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the orientation value to write.
  ///
  ///
  /// This will be written as the TIFF "Orientation" tag {@code (0x0112)}.
  /// Calling this will override any prior settings for this tag.
  ///
  ///
  ///@param orientation the orientation value to set, one of:
  ///                    <ul>
  ///                      <li>android.media.ExifInterface\#ORIENTATION_NORMAL</li>
  ///                      <li>android.media.ExifInterface\#ORIENTATION_FLIP_HORIZONTAL</li>
  ///                      <li>android.media.ExifInterface\#ORIENTATION_ROTATE_180</li>
  ///                      <li>android.media.ExifInterface\#ORIENTATION_FLIP_VERTICAL</li>
  ///                      <li>android.media.ExifInterface\#ORIENTATION_TRANSPOSE</li>
  ///                      <li>android.media.ExifInterface\#ORIENTATION_ROTATE_90</li>
  ///                      <li>android.media.ExifInterface\#ORIENTATION_TRANSVERSE</li>
  ///                      <li>android.media.ExifInterface\#ORIENTATION_ROTATE_270</li>
  ///                    </ul>
  ///@return this \#DngCreator object.
  ///
  /// This value will never be {@code null}.
  DngCreator setOrientation(int orientation) =>
      DngCreator.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setOrientation, jni.JniType.objectType, [orientation]).object);

  static final _id_setThumbnail = jniAccessors.getMethodIDOf(
      _classRef,
      "setThumbnail",
      "(Landroid/graphics/Bitmap;)Landroid/hardware/camera2/DngCreator;");

  /// from: public android.hardware.camera2.DngCreator setThumbnail(android.graphics.Bitmap pixels)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the thumbnail image.
  ///
  ///
  /// Pixel data will be converted to a Baseline TIFF RGB image, with 8 bits per color channel.
  /// The alpha channel will be discarded.  Thumbnail images with a dimension larger than
  /// \#MAX_THUMBNAIL_DIMENSION will be rejected.
  ///
  ///
  ///@param pixels a android.graphics.Bitmap of pixel data.
  /// This value must never be {@code null}.
  ///@return this \#DngCreator object.
  /// This value will never be {@code null}.
  ///@throws java.lang.IllegalArgumentException if the given thumbnail image has a dimension
  ///      larger than \#MAX_THUMBNAIL_DIMENSION.
  DngCreator setThumbnail(bitmap_.Bitmap pixels) =>
      DngCreator.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setThumbnail, jni.JniType.objectType, [pixels.reference]).object);

  static final _id_setThumbnail1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setThumbnail",
      "(Landroid/media/Image;)Landroid/hardware/camera2/DngCreator;");

  /// from: public android.hardware.camera2.DngCreator setThumbnail(android.media.Image pixels)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the thumbnail image.
  ///
  ///
  /// Pixel data is interpreted as a android.graphics.ImageFormat\#YUV_420_888 image.
  /// Thumbnail images with a dimension larger than \#MAX_THUMBNAIL_DIMENSION will be
  /// rejected.
  ///
  ///
  ///@param pixels an android.media.Image object with the format
  ///               android.graphics.ImageFormat\#YUV_420_888.
  /// This value must never be {@code null}.
  ///@return this \#DngCreator object.
  /// This value will never be {@code null}.
  ///@throws java.lang.IllegalArgumentException if the given thumbnail image has a dimension
  ///      larger than \#MAX_THUMBNAIL_DIMENSION.
  DngCreator setThumbnail1(image_.Image pixels) =>
      DngCreator.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setThumbnail1,
          jni.JniType.objectType,
          [pixels.reference]).object);

  static final _id_setLocation = jniAccessors.getMethodIDOf(
      _classRef,
      "setLocation",
      "(Landroid/location/Location;)Landroid/hardware/camera2/DngCreator;");

  /// from: public android.hardware.camera2.DngCreator setLocation(android.location.Location location)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set image location metadata.
  ///
  ///
  /// The given location object must contain at least a valid time, latitude, and longitude
  /// (equivalent to the values returned by android.location.Location\#getTime(),
  /// android.location.Location\#getLatitude(), and
  /// android.location.Location\#getLongitude() methods).
  ///
  ///
  ///@param location an android.location.Location object to set.
  /// This value must never be {@code null}.
  ///@return this \#DngCreator object.
  ///
  /// This value will never be {@code null}.
  ///@throws java.lang.IllegalArgumentException if the given location object doesn't
  ///          contain enough information to set location metadata.
  DngCreator setLocation(location_.Location location) =>
      DngCreator.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setLocation,
          jni.JniType.objectType,
          [location.reference]).object);

  static final _id_setDescription = jniAccessors.getMethodIDOf(
      _classRef,
      "setDescription",
      "(Ljava/lang/String;)Landroid/hardware/camera2/DngCreator;");

  /// from: public android.hardware.camera2.DngCreator setDescription(java.lang.String description)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the user description string to write.
  ///
  ///
  /// This is equivalent to setting the TIFF "ImageDescription" tag {@code (0x010E)}.
  ///
  ///
  ///@param description the user description string.
  /// This value must never be {@code null}.
  ///@return this \#DngCreator object.
  ///
  /// This value will never be {@code null}.
  DngCreator setDescription(jni.JniString description) =>
      DngCreator.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setDescription,
          jni.JniType.objectType,
          [description.reference]).object);

  static final _id_writeInputStream = jniAccessors.getMethodIDOf(
      _classRef,
      "writeInputStream",
      "(Ljava/io/OutputStream;Landroid/util/Size;Ljava/io/InputStream;J)V");

  /// from: public void writeInputStream(java.io.OutputStream dngOutput, android.util.Size size, java.io.InputStream pixels, long offset)
  ///
  /// Write the android.graphics.ImageFormat\#RAW_SENSOR pixel data to a DNG file with
  /// the currently configured metadata.
  ///
  ///
  /// Raw pixel data must have 16 bits per pixel, and the input must contain at least
  /// {@code offset + 2 * width * height)} bytes.  The width and height of
  /// the input are taken from the width and height set in the DngCreator metadata tags,
  /// and will typically be equal to the width and height of
  /// CameraCharacteristics\#SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE.  Prior to
  /// API level 23, this was always the same as
  /// CameraCharacteristics\#SENSOR_INFO_ACTIVE_ARRAY_SIZE.
  /// The pixel layout in the input is determined from the reported color filter arrangement (CFA)
  /// set in CameraCharacteristics\#SENSOR_INFO_COLOR_FILTER_ARRANGEMENT.  If insufficient
  /// metadata is available to write a well-formatted DNG file, an
  /// java.lang.IllegalStateException will be thrown.
  ///
  ///
  ///@param dngOutput an java.io.OutputStream to write the DNG file to.
  /// This value must never be {@code null}.
  ///@param size the Size of the image to write, in pixels.
  /// This value must never be {@code null}.
  ///@param pixels an java.io.InputStream of pixel data to write.
  /// This value must never be {@code null}.
  ///@param offset the offset of the raw image in bytes.  This indicates how many bytes will
  ///               be skipped in the input before any pixel data is read.
  ///
  /// Value is 0 or greater
  ///@throws IOException if an error was encountered in the input or output stream.
  ///@throws java.lang.IllegalStateException if not enough metadata information has been
  ///          set to write a well-formatted DNG file.
  ///@throws java.lang.IllegalArgumentException if the size passed in does not match the
  void writeInputStream(jni.JniObject dngOutput, size_.Size size,
          jni.JniObject pixels, int offset) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_writeInputStream, jni.JniType.voidType, [
        dngOutput.reference,
        size.reference,
        pixels.reference,
        offset
      ]).check();

  static final _id_writeByteBuffer = jniAccessors.getMethodIDOf(
      _classRef,
      "writeByteBuffer",
      "(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V");

  /// from: public void writeByteBuffer(java.io.OutputStream dngOutput, android.util.Size size, java.nio.ByteBuffer pixels, long offset)
  ///
  /// Write the android.graphics.ImageFormat\#RAW_SENSOR pixel data to a DNG file with
  /// the currently configured metadata.
  ///
  ///
  /// Raw pixel data must have 16 bits per pixel, and the input must contain at least
  /// {@code offset + 2 * width * height)} bytes.  The width and height of
  /// the input are taken from the width and height set in the DngCreator metadata tags,
  /// and will typically be equal to the width and height of
  /// CameraCharacteristics\#SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE.  Prior to
  /// API level 23, this was always the same as
  /// CameraCharacteristics\#SENSOR_INFO_ACTIVE_ARRAY_SIZE.
  /// The pixel layout in the input is determined from the reported color filter arrangement (CFA)
  /// set in CameraCharacteristics\#SENSOR_INFO_COLOR_FILTER_ARRANGEMENT.  If insufficient
  /// metadata is available to write a well-formatted DNG file, an
  /// java.lang.IllegalStateException will be thrown.
  ///
  ///
  ///
  ///
  /// Any mark or limit set on this ByteBuffer is ignored, and will be cleared by this
  /// method.
  ///
  ///
  ///@param dngOutput an java.io.OutputStream to write the DNG file to.
  /// This value must never be {@code null}.
  ///@param size the Size of the image to write, in pixels.
  /// This value must never be {@code null}.
  ///@param pixels an java.nio.ByteBuffer of pixel data to write.
  /// This value must never be {@code null}.
  ///@param offset the offset of the raw image in bytes.  This indicates how many bytes will
  ///               be skipped in the input before any pixel data is read.
  ///
  /// Value is 0 or greater
  ///@throws IOException if an error was encountered in the input or output stream.
  ///@throws java.lang.IllegalStateException if not enough metadata information has been
  ///          set to write a well-formatted DNG file.
  void writeByteBuffer(jni.JniObject dngOutput, size_.Size size,
          jni.JniObject pixels, int offset) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_writeByteBuffer, jni.JniType.voidType, [
        dngOutput.reference,
        size.reference,
        pixels.reference,
        offset
      ]).check();

  static final _id_writeImage = jniAccessors.getMethodIDOf(_classRef,
      "writeImage", "(Ljava/io/OutputStream;Landroid/media/Image;)V");

  /// from: public void writeImage(java.io.OutputStream dngOutput, android.media.Image pixels)
  ///
  /// Write the pixel data to a DNG file with the currently configured metadata.
  ///
  ///
  /// For this method to succeed, the android.media.Image input must contain
  /// android.graphics.ImageFormat\#RAW_SENSOR pixel data, otherwise an
  /// java.lang.IllegalArgumentException will be thrown.
  ///
  ///
  ///@param dngOutput an java.io.OutputStream to write the DNG file to.
  /// This value must never be {@code null}.
  ///@param pixels an android.media.Image to write.
  ///
  /// This value must never be {@code null}.
  ///@throws java.io.IOException if an error was encountered in the output stream.
  ///@throws java.lang.IllegalArgumentException if an image with an unsupported format was used.
  ///@throws java.lang.IllegalStateException if not enough metadata information has been
  ///          set to write a well-formatted DNG file.
  void writeImage(jni.JniObject dngOutput, image_.Image pixels) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_writeImage,
          jni.JniType.voidType,
          [dngOutput.reference, pixels.reference]).check();

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
