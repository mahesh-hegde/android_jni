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

import "../graphics/Bitmap.dart" as bitmap_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.opengl.GLUtils
///
/// Utility class to help bridging OpenGL ES and Android APIs.
class GLUtils extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/opengl/GLUtils");
  GLUtils.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getInternalFormat = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInternalFormat", "(Landroid/graphics/Bitmap;)I");

  /// from: static public int getInternalFormat(android.graphics.Bitmap bitmap)
  ///
  /// return the internal format as defined by OpenGL ES of the supplied bitmap.
  ///@param bitmap
  ///@return the internal format of the bitmap.
  static int getInternalFormat(bitmap_.Bitmap bitmap) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getInternalFormat,
          jni.JniType.intType, [bitmap.reference]).integer;

  static final _id_getType = jniAccessors.getStaticMethodIDOf(
      _classRef, "getType", "(Landroid/graphics/Bitmap;)I");

  /// from: static public int getType(android.graphics.Bitmap bitmap)
  ///
  /// Return the type as defined by OpenGL ES of the supplied bitmap, if there
  /// is one. If the bitmap is stored in a compressed format, it may not have
  /// a valid OpenGL ES type.
  ///@throws IllegalArgumentException if the bitmap does not have a type.
  ///@param bitmap
  ///@return the OpenGL ES type of the bitmap.
  static int getType(bitmap_.Bitmap bitmap) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getType,
          jni.JniType.intType, [bitmap.reference]).integer;

  static final _id_texImage2D = jniAccessors.getStaticMethodIDOf(
      _classRef, "texImage2D", "(IIILandroid/graphics/Bitmap;I)V");

  /// from: static public void texImage2D(int target, int level, int internalformat, android.graphics.Bitmap bitmap, int border)
  ///
  /// Calls glTexImage2D() on the current OpenGL context. If no context is
  /// current the behavior is the same as calling glTexImage2D() with  no
  /// current context, that is, eglGetError() will return the appropriate
  /// error.
  /// Unlike glTexImage2D() bitmap cannot be null and will raise an exception
  /// in that case.
  /// All other parameters are identical to those used for glTexImage2D().
  ///
  /// NOTE: this method doesn't change GL_UNPACK_ALIGNMENT, you must make
  /// sure to set it properly according to the supplied bitmap.
  ///
  /// Whether or not bitmap can have non power of two dimensions depends on
  /// the current OpenGL context. Always check glGetError() some time
  /// after calling this method, just like when using OpenGL directly.
  ///@param target
  ///@param level
  ///@param internalformat
  ///@param bitmap
  ///@param border
  static void texImage2D(int target, int level, int internalformat,
          bitmap_.Bitmap bitmap, int border) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_texImage2D,
          jni.JniType.voidType,
          [target, level, internalformat, bitmap.reference, border]).check();

  static final _id_texImage2D1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "texImage2D", "(IIILandroid/graphics/Bitmap;II)V");

  /// from: static public void texImage2D(int target, int level, int internalformat, android.graphics.Bitmap bitmap, int type, int border)
  ///
  /// A version of texImage2D() that takes an explicit type parameter
  /// as defined by the OpenGL ES specification. The actual type and
  /// internalformat of the bitmap must be compatible with the specified
  /// type and internalformat parameters.
  ///@param target
  ///@param level
  ///@param internalformat
  ///@param bitmap
  ///@param type
  ///@param border
  static void texImage2D1(int target, int level, int internalformat,
          bitmap_.Bitmap bitmap, int type, int border) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_texImage2D1, jni.JniType.voidType, [
        target,
        level,
        internalformat,
        bitmap.reference,
        type,
        border
      ]).check();

  static final _id_texImage2D2 = jniAccessors.getStaticMethodIDOf(
      _classRef, "texImage2D", "(IILandroid/graphics/Bitmap;I)V");

  /// from: static public void texImage2D(int target, int level, android.graphics.Bitmap bitmap, int border)
  ///
  /// A version of texImage2D that determines the internalFormat and type
  /// automatically.
  ///@param target
  ///@param level
  ///@param bitmap
  ///@param border
  static void texImage2D2(
          int target, int level, bitmap_.Bitmap bitmap, int border) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_texImage2D2,
          jni.JniType.voidType,
          [target, level, bitmap.reference, border]).check();

  static final _id_texSubImage2D = jniAccessors.getStaticMethodIDOf(
      _classRef, "texSubImage2D", "(IIIILandroid/graphics/Bitmap;)V");

  /// from: static public void texSubImage2D(int target, int level, int xoffset, int yoffset, android.graphics.Bitmap bitmap)
  ///
  /// Calls glTexSubImage2D() on the current OpenGL context. If no context is
  /// current the behavior is the same as calling glTexSubImage2D() with  no
  /// current context, that is, eglGetError() will return the appropriate
  /// error.
  /// Unlike glTexSubImage2D() bitmap cannot be null and will raise an exception
  /// in that case.
  /// All other parameters are identical to those used for glTexSubImage2D().
  ///
  /// NOTE: this method doesn't change GL_UNPACK_ALIGNMENT, you must make
  /// sure to set it properly according to the supplied bitmap.
  ///
  /// Whether or not bitmap can have non power of two dimensions depends on
  /// the current OpenGL context. Always check glGetError() some time
  /// after calling this method, just like when using OpenGL directly.
  ///@param target
  ///@param level
  ///@param xoffset
  ///@param yoffset
  ///@param bitmap
  static void texSubImage2D(int target, int level, int xoffset, int yoffset,
          bitmap_.Bitmap bitmap) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_texSubImage2D,
          jni.JniType.voidType,
          [target, level, xoffset, yoffset, bitmap.reference]).check();

  static final _id_texSubImage2D1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "texSubImage2D", "(IIIILandroid/graphics/Bitmap;II)V");

  /// from: static public void texSubImage2D(int target, int level, int xoffset, int yoffset, android.graphics.Bitmap bitmap, int format, int type)
  ///
  /// A version of texSubImage2D() that takes an explicit type parameter
  /// as defined by the OpenGL ES specification.
  ///@param target
  ///@param level
  ///@param xoffset
  ///@param yoffset
  ///@param bitmap
  ///@param type
  static void texSubImage2D1(int target, int level, int xoffset, int yoffset,
          bitmap_.Bitmap bitmap, int format, int type) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_texSubImage2D1, jni.JniType.voidType, [
        target,
        level,
        xoffset,
        yoffset,
        bitmap.reference,
        format,
        type
      ]).check();

  static final _id_getEGLErrorString = jniAccessors.getStaticMethodIDOf(
      _classRef, "getEGLErrorString", "(I)Ljava/lang/String;");

  /// from: static public java.lang.String getEGLErrorString(int error)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a string for the EGL error code, or the hex representation
  /// if the error is unknown.
  ///@param error The EGL error to convert into a String.
  ///@return An error string corresponding to the EGL error code.
  static jni.JniString getEGLErrorString(int error) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getEGLErrorString, jni.JniType.objectType, [error]).object);
}
