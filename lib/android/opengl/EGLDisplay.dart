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

import "EGLObjectHandle.dart" as eglobjecthandle_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.opengl.EGLDisplay
///
/// Wrapper class for native EGLDisplay objects.
class EGLDisplay extends eglobjecthandle_.EGLObjectHandle {
  static final _classRef = jniAccessors.getClassOf("android/opengl/EGLDisplay");
  EGLDisplay.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;
}
