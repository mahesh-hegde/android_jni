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

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.hardware.HardwareBuffer
///
/// HardwareBuffer wraps a native <code>AHardwareBuffer</code> object, which is a low-level object
/// representing a memory buffer accessible by various hardware units. HardwareBuffer allows sharing
/// buffers across different application processes. In particular, HardwareBuffers may be mappable
/// to memory accessibly to various hardware systems, such as the GPU, a sensor or context hub, or
/// other auxiliary processing units.
///
/// For more information, see the NDK documentation for <code>AHardwareBuffer</code>.
class HardwareBuffer extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/hardware/HardwareBuffer");
  HardwareBuffer.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int BLOB
  ///
  /// Format: opaque format used for raw data transfer; must have a height of 1
  static const BLOB = 33;

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.hardware.HardwareBuffer> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int DS_24UI8
  ///
  /// Format: 24 bits depth, 8 bits stencil
  static const DS_24UI8 = 50;

  /// from: static public final int DS_FP32UI8
  ///
  /// Format: 32 bits depth, 8 bits stencil
  static const DS_FP32UI8 = 52;

  /// from: static public final int D_16
  ///
  /// Format: 16 bits depth
  static const D_16 = 48;

  /// from: static public final int D_24
  ///
  /// Format: 24 bits depth
  static const D_24 = 49;

  /// from: static public final int D_FP32
  ///
  /// Format: 32 bits depth
  static const D_FP32 = 51;

  /// from: static public final int RGBA_1010102
  ///
  /// Format: 10 bits each red, green, blue, 2 bits alpha
  static const RGBA_1010102 = 43;

  /// from: static public final int RGBA_8888
  ///
  /// Value is android.hardware.HardwareBuffer\#RGBA_8888, android.hardware.HardwareBuffer\#RGBA_FP16, android.hardware.HardwareBuffer\#RGBA_1010102, android.hardware.HardwareBuffer\#RGBX_8888, android.hardware.HardwareBuffer\#RGB_888, android.hardware.HardwareBuffer\#RGB_565, android.hardware.HardwareBuffer\#BLOB, android.hardware.HardwareBuffer\#D_16, android.hardware.HardwareBuffer\#D_24, android.hardware.HardwareBuffer\#DS_24UI8, android.hardware.HardwareBuffer\#D_FP32, android.hardware.HardwareBuffer\#DS_FP32UI8, or android.hardware.HardwareBuffer\#S_UI8
  static const RGBA_8888 = 1;

  /// from: static public final int RGBA_FP16
  ///
  /// Format: 16 bits each red, green, blue, alpha
  static const RGBA_FP16 = 22;

  /// from: static public final int RGBX_8888
  ///
  /// Format: 8 bits each red, green, blue, alpha, alpha is always 0xFF
  static const RGBX_8888 = 2;

  /// from: static public final int RGB_565
  ///
  /// Format: 5 bits each red and blue, 6 bits green, no alpha
  static const RGB_565 = 4;

  /// from: static public final int RGB_888
  ///
  /// Format: 8 bits each red, green, blue, no alpha
  static const RGB_888 = 3;

  /// from: static public final int S_UI8
  ///
  /// Format: 8 bits stencil
  static const S_UI8 = 53;

  /// from: static public final long USAGE_CPU_READ_OFTEN
  ///
  /// Usage: The buffer will often be read by the CPU
  static const USAGE_CPU_READ_OFTEN = 3;

  /// from: static public final long USAGE_CPU_READ_RARELY
  ///
  /// Value is either <code>0</code> or a combination of android.hardware.HardwareBuffer\#USAGE_CPU_READ_RARELY, android.hardware.HardwareBuffer\#USAGE_CPU_READ_OFTEN, android.hardware.HardwareBuffer\#USAGE_CPU_WRITE_RARELY, android.hardware.HardwareBuffer\#USAGE_CPU_WRITE_OFTEN, android.hardware.HardwareBuffer\#USAGE_GPU_SAMPLED_IMAGE, android.hardware.HardwareBuffer\#USAGE_GPU_COLOR_OUTPUT, android.hardware.HardwareBuffer\#USAGE_PROTECTED_CONTENT, android.hardware.HardwareBuffer\#USAGE_VIDEO_ENCODE, android.hardware.HardwareBuffer\#USAGE_GPU_DATA_BUFFER, android.hardware.HardwareBuffer\#USAGE_SENSOR_DIRECT_DATA, android.hardware.HardwareBuffer\#USAGE_GPU_CUBE_MAP, and android.hardware.HardwareBuffer\#USAGE_GPU_MIPMAP_COMPLETE
  static const USAGE_CPU_READ_RARELY = 2;

  /// from: static public final long USAGE_CPU_WRITE_OFTEN
  ///
  /// Usage: The buffer will often be written to by the CPU
  static const USAGE_CPU_WRITE_OFTEN = 48;

  /// from: static public final long USAGE_CPU_WRITE_RARELY
  ///
  /// Usage: The buffer will sometimes be written to by the CPU
  static const USAGE_CPU_WRITE_RARELY = 32;

  /// from: static public final long USAGE_GPU_COLOR_OUTPUT
  ///
  /// Usage: The buffer will be written to by the GPU
  static const USAGE_GPU_COLOR_OUTPUT = 512;

  /// from: static public final long USAGE_GPU_CUBE_MAP
  ///
  /// Usage: The buffer will be used as a cube map texture
  static const USAGE_GPU_CUBE_MAP = 33554432;

  /// from: static public final long USAGE_GPU_DATA_BUFFER
  ///
  /// Usage: The buffer will be used as a shader storage or uniform buffer object
  static const USAGE_GPU_DATA_BUFFER = 16777216;

  /// from: static public final long USAGE_GPU_MIPMAP_COMPLETE
  ///
  /// Usage: The buffer contains a complete mipmap hierarchy
  static const USAGE_GPU_MIPMAP_COMPLETE = 67108864;

  /// from: static public final long USAGE_GPU_SAMPLED_IMAGE
  ///
  /// Usage: The buffer will be read from by the GPU
  static const USAGE_GPU_SAMPLED_IMAGE = 256;

  /// from: static public final long USAGE_PROTECTED_CONTENT
  ///
  /// Usage: The buffer must not be used outside of a protected hardware path
  static const USAGE_PROTECTED_CONTENT = 16384;

  /// from: static public final long USAGE_SENSOR_DIRECT_DATA
  ///
  /// Usage: The buffer will be used for sensor direct data
  static const USAGE_SENSOR_DIRECT_DATA = 8388608;

  /// from: static public final long USAGE_VIDEO_ENCODE
  ///
  /// Usage: The buffer will be read by a hardware video encoder
  static const USAGE_VIDEO_ENCODE = 65536;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(J)V");

  /// from: void <init>(long nativeObject)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Private use only. See \#create(int, int, int, int, long). May also be
  /// called from JNI using an already allocated native <code>HardwareBuffer</code>.
  HardwareBuffer(int nativeObject)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [nativeObject]).object);

  static final _id_create = jniAccessors.getStaticMethodIDOf(
      _classRef, "create", "(IIIIJ)Landroid/hardware/HardwareBuffer;");

  /// from: static public android.hardware.HardwareBuffer create(int width, int height, int format, int layers, long usage)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new <code>HardwareBuffer</code> instance.
  ///
  /// Calling this method will throw an <code>IllegalStateException</code> if
  /// format is not a supported Format type.
  ///
  ///@param width The width in pixels of the buffer
  ///@param height The height in pixels of the buffer
  ///@param format The @Format of each pixel
  /// Value is android.hardware.HardwareBuffer\#RGBA_8888, android.hardware.HardwareBuffer\#RGBA_FP16, android.hardware.HardwareBuffer\#RGBA_1010102, android.hardware.HardwareBuffer\#RGBX_8888, android.hardware.HardwareBuffer\#RGB_888, android.hardware.HardwareBuffer\#RGB_565, android.hardware.HardwareBuffer\#BLOB, android.hardware.HardwareBuffer\#D_16, android.hardware.HardwareBuffer\#D_24, android.hardware.HardwareBuffer\#DS_24UI8, android.hardware.HardwareBuffer\#D_FP32, android.hardware.HardwareBuffer\#DS_FP32UI8, or android.hardware.HardwareBuffer\#S_UI8
  ///@param layers The number of layers in the buffer
  ///@param usage The @Usage flags describing how the buffer will be used
  /// Value is either <code>0</code> or a combination of android.hardware.HardwareBuffer\#USAGE_CPU_READ_RARELY, android.hardware.HardwareBuffer\#USAGE_CPU_READ_OFTEN, android.hardware.HardwareBuffer\#USAGE_CPU_WRITE_RARELY, android.hardware.HardwareBuffer\#USAGE_CPU_WRITE_OFTEN, android.hardware.HardwareBuffer\#USAGE_GPU_SAMPLED_IMAGE, android.hardware.HardwareBuffer\#USAGE_GPU_COLOR_OUTPUT, android.hardware.HardwareBuffer\#USAGE_PROTECTED_CONTENT, android.hardware.HardwareBuffer\#USAGE_VIDEO_ENCODE, android.hardware.HardwareBuffer\#USAGE_GPU_DATA_BUFFER, android.hardware.HardwareBuffer\#USAGE_SENSOR_DIRECT_DATA, android.hardware.HardwareBuffer\#USAGE_GPU_CUBE_MAP, and android.hardware.HardwareBuffer\#USAGE_GPU_MIPMAP_COMPLETE
  ///@return A <code>HardwareBuffer</code> instance if successful, or throws an
  ///     IllegalArgumentException if the dimensions passed are invalid (either zero, negative, or
  ///     too large to allocate), if the format is not supported, if the requested number of layers
  ///     is less than one or not supported, or if the passed usage flags are not a supported set.
  ///
  /// This value will never be {@code null}.
  static HardwareBuffer create(
          int width, int height, int format, int layers, int usage) =>
      HardwareBuffer.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_create,
          jni.JniType.objectType,
          [width, height, format, layers, usage]).object);

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();

  static final _id_getWidth =
      jniAccessors.getMethodIDOf(_classRef, "getWidth", "()I");

  /// from: public int getWidth()
  ///
  /// Returns the width of this buffer in pixels.
  int getWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getWidth, jni.JniType.intType, []).integer;

  static final _id_getHeight =
      jniAccessors.getMethodIDOf(_classRef, "getHeight", "()I");

  /// from: public int getHeight()
  ///
  /// Returns the height of this buffer in pixels.
  int getHeight() => jniAccessors.callMethodWithArgs(
      reference, _id_getHeight, jni.JniType.intType, []).integer;

  static final _id_getFormat =
      jniAccessors.getMethodIDOf(_classRef, "getFormat", "()I");

  /// from: public int getFormat()
  ///
  /// Returns the @Format of this buffer.
  ///@return Value is android.hardware.HardwareBuffer\#RGBA_8888, android.hardware.HardwareBuffer\#RGBA_FP16, android.hardware.HardwareBuffer\#RGBA_1010102, android.hardware.HardwareBuffer\#RGBX_8888, android.hardware.HardwareBuffer\#RGB_888, android.hardware.HardwareBuffer\#RGB_565, android.hardware.HardwareBuffer\#BLOB, android.hardware.HardwareBuffer\#D_16, android.hardware.HardwareBuffer\#D_24, android.hardware.HardwareBuffer\#DS_24UI8, android.hardware.HardwareBuffer\#D_FP32, android.hardware.HardwareBuffer\#DS_FP32UI8, or android.hardware.HardwareBuffer\#S_UI8
  int getFormat() => jniAccessors.callMethodWithArgs(
      reference, _id_getFormat, jni.JniType.intType, []).integer;

  static final _id_getLayers =
      jniAccessors.getMethodIDOf(_classRef, "getLayers", "()I");

  /// from: public int getLayers()
  ///
  /// Returns the number of layers in this buffer.
  int getLayers() => jniAccessors.callMethodWithArgs(
      reference, _id_getLayers, jni.JniType.intType, []).integer;

  static final _id_getUsage =
      jniAccessors.getMethodIDOf(_classRef, "getUsage", "()J");

  /// from: public long getUsage()
  ///
  /// Returns the usage flags of the usage hints set on this buffer.
  int getUsage() => jniAccessors.callMethodWithArgs(
      reference, _id_getUsage, jni.JniType.longType, []).long;

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Destroys this buffer immediately. Calling this method frees up any
  /// underlying native resources. After calling this method, this buffer
  /// must not be used in any way.
  ///@see \#isClosed()
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_isClosed =
      jniAccessors.getMethodIDOf(_classRef, "isClosed", "()Z");

  /// from: public boolean isClosed()
  ///
  /// Indicates whether this buffer has been closed. A closed buffer cannot
  /// be used in any way: the buffer cannot be written to a parcel, etc.
  ///@return True if this <code>HardwareBuffer</code> is in a closed state,
  ///         false otherwise.
  ///@see \#close()
  bool isClosed() => jniAccessors.callMethodWithArgs(
      reference, _id_isClosed, jni.JniType.booleanType, []).boolean;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Flatten this object in to a Parcel.
  ///
  /// Calling this method will throw an <code>IllegalStateException</code> if
  /// \#close() has been previously called.
  ///
  ///@param dest The Parcel in which the object should be written.
  ///@param flags Additional flags about how the object should be written.
  ///              May be 0 or \#PARCELABLE_WRITE_RETURN_VALUE.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
