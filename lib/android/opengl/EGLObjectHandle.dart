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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.opengl.EGLObjectHandle
///
/// Base class for wrapped EGL objects.
class EGLObjectHandle extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/opengl/EGLObjectHandle");
  EGLObjectHandle.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: protected void <init>(int handle)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use \#EGLObjectHandle(long) instead. Handles
  ///     on 64 bit platforms will be wider than java ints.
  EGLObjectHandle(int handle)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [handle]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(J)V");

  /// from: protected void <init>(long handle)
  /// The returned object must be deleted after use, by calling the `delete` method.
  EGLObjectHandle.ctor1(int handle)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [handle]).object);

  static final _id_getHandle =
      jniAccessors.getMethodIDOf(_classRef, "getHandle", "()I");

  /// from: public int getHandle()
  ///
  /// @deprecated Use \#getNativeHandle() instead. Handles on
  ///     64 bit platforms will be wider than java ints.
  int getHandle() => jniAccessors.callMethodWithArgs(
      reference, _id_getHandle, jni.JniType.intType, []).integer;

  static final _id_getNativeHandle =
      jniAccessors.getMethodIDOf(_classRef, "getNativeHandle", "()J");

  /// from: public long getNativeHandle()
  ///
  /// Returns the native handle of the wrapped EGL object. This handle can be
  /// cast to the corresponding native type on the native side.
  ///
  /// For example, EGLDisplay dpy = (EGLDisplay)handle;
  ///@return the native handle of the wrapped EGL object.
  int getNativeHandle() => jniAccessors.callMethodWithArgs(
      reference, _id_getNativeHandle, jni.JniType.longType, []).long;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;
}
