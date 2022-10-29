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

import "Rect.dart" as rect_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.YuvImage
///
/// YuvImage contains YUV data and provides a method that compresses a region of
/// the YUV data to a Jpeg. The YUV data should be provided as a single byte
/// array irrespective of the number of image planes in it.
/// Currently only ImageFormat.NV21 and ImageFormat.YUY2 are supported.
///
/// To compress a rectangle region in the YUV data, users have to specify the
/// region by left, top, width and height.
class YuvImage extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/graphics/YuvImage");
  YuvImage.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "([BIII[I)V");

  /// from: public void <init>(byte[] yuv, int format, int width, int height, int[] strides)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct an YuvImage.
  ///@param yuv The YUV data. In the case of more than one image plane, all the planes must be
  ///                concatenated into a single byte array.
  ///@param format The YUV data format as defined in ImageFormat.
  ///@param width The width of the YuvImage.
  ///@param height The height of the YuvImage.
  ///@param strides (Optional) Row bytes of each image plane. If yuv contains padding, the stride
  ///                of each image must be provided. If strides is null, the method assumes no
  ///                padding and derives the row bytes by format and width itself.
  ///@throws IllegalArgumentException if format is not support; width or height <= 0; or yuv is
  ///                null.
  YuvImage(jni.JniObject yuv, int format, int width, int height,
      jni.JniObject strides)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [yuv.reference, format, width, height, strides.reference]).object);

  static final _id_compressToJpeg = jniAccessors.getMethodIDOf(_classRef,
      "compressToJpeg", "(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z");

  /// from: public boolean compressToJpeg(android.graphics.Rect rectangle, int quality, java.io.OutputStream stream)
  ///
  /// Compress a rectangle region in the YuvImage to a jpeg.
  /// Only ImageFormat.NV21 and ImageFormat.YUY2
  /// are supported for now.
  ///@param rectangle The rectangle region to be compressed. The medthod checks if rectangle is
  ///                  inside the image. Also, the method modifies rectangle if the chroma pixels
  ///                  in it are not matched with the luma pixels in it.
  ///@param quality Hint to the compressor, 0-100. 0 meaning compress for
  ///                  small size, 100 meaning compress for max quality.
  ///@param stream OutputStream to write the compressed data.
  ///@return True if the compression is successful.
  ///@throws IllegalArgumentException if rectangle is invalid; quality is not within [0,
  ///                  100]; or stream is null.
  bool compressToJpeg(
          rect_.Rect rectangle, int quality, jni.JniObject stream) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_compressToJpeg,
          jni.JniType.booleanType,
          [rectangle.reference, quality, stream.reference]).boolean;

  static final _id_getYuvData =
      jniAccessors.getMethodIDOf(_classRef, "getYuvData", "()[B");

  /// from: public byte[] getYuvData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the YUV data.
  jni.JniObject getYuvData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getYuvData, jni.JniType.objectType, []).object);

  static final _id_getYuvFormat =
      jniAccessors.getMethodIDOf(_classRef, "getYuvFormat", "()I");

  /// from: public int getYuvFormat()
  ///
  /// @return the YUV format as defined in ImageFormat.
  int getYuvFormat() => jniAccessors.callMethodWithArgs(
      reference, _id_getYuvFormat, jni.JniType.intType, []).integer;

  static final _id_getStrides =
      jniAccessors.getMethodIDOf(_classRef, "getStrides", "()[I");

  /// from: public int[] getStrides()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the number of row bytes in each image plane.
  jni.JniObject getStrides() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getStrides, jni.JniType.objectType, []).object);

  static final _id_getWidth =
      jniAccessors.getMethodIDOf(_classRef, "getWidth", "()I");

  /// from: public int getWidth()
  ///
  /// @return the width of the image.
  int getWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getWidth, jni.JniType.intType, []).integer;

  static final _id_getHeight =
      jniAccessors.getMethodIDOf(_classRef, "getHeight", "()I");

  /// from: public int getHeight()
  ///
  /// @return the height of the image.
  int getHeight() => jniAccessors.callMethodWithArgs(
      reference, _id_getHeight, jni.JniType.intType, []).integer;
}
