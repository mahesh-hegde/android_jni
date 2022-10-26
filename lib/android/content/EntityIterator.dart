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

/// from: android.content.EntityIterator
///
/// A specialization of Iterator that allows iterating over a collection of
/// Entity objects. In addition to the iteration functionality it also allows
/// resetting the iterator back to the beginning and provides for an explicit \#close()
/// method to indicate that the iterator is no longer needed and that its resources
/// can be released.
class EntityIterator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/EntityIterator");
  EntityIterator.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, "reset", "()V");

  /// from: public abstract void reset()
  ///
  /// Reset the iterator back to the beginning.
  void reset() => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniType.voidType, []).check();

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public abstract void close()
  ///
  /// Indicates that this iterator is no longer needed and that any associated resources
  /// may be released (such as a SQLite cursor).
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();
}
