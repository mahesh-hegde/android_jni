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

/// from: android.system.StructPollfd
///
/// Used as an in/out parameter to Os\#poll.
/// Corresponds to C's {@code struct pollfd} from {@code <poll.h>}.
class StructPollfd extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/system/StructPollfd");
  StructPollfd.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_events = jniAccessors.getFieldIDOf(_classRef, "events", "S");

  /// from: public short events
  ///
  /// The events we're interested in. POLLIN corresponds to being in select(2)'s read fd set,
  /// POLLOUT to the write fd set.
  int get events =>
      jniAccessors.getField(reference, _id_events, jni.JniType.shortType).short;

  /// from: public short events
  ///
  /// The events we're interested in. POLLIN corresponds to being in select(2)'s read fd set,
  /// POLLOUT to the write fd set.
  set events(int value) => jniEnv.SetShortField(reference, _id_events, value);

  static final _id_fd =
      jniAccessors.getFieldIDOf(_classRef, "fd", "Ljava/io/FileDescriptor;");

  /// from: public java.io.FileDescriptor fd
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The file descriptor to poll.
  jni.JniObject get fd => jni.JniObject.fromRef(
      jniAccessors.getField(reference, _id_fd, jni.JniType.objectType).object);

  /// from: public java.io.FileDescriptor fd
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The file descriptor to poll.
  set fd(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_fd, value.reference);

  static final _id_revents =
      jniAccessors.getFieldIDOf(_classRef, "revents", "S");

  /// from: public short revents
  ///
  /// The events that actually happened.
  int get revents => jniAccessors
      .getField(reference, _id_revents, jni.JniType.shortType)
      .short;

  /// from: public short revents
  ///
  /// The events that actually happened.
  set revents(int value) => jniEnv.SetShortField(reference, _id_revents, value);

  static final _id_userData =
      jniAccessors.getFieldIDOf(_classRef, "userData", "Ljava/lang/Object;");

  /// from: public java.lang.Object userData
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// A non-standard extension that lets callers conveniently map back to the object
  /// their fd belongs to. This is used by Selector, for example, to associate each
  /// FileDescriptor with the corresponding SelectionKey.
  jni.JniObject get userData => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_userData, jni.JniType.objectType)
      .object);

  /// from: public java.lang.Object userData
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// A non-standard extension that lets callers conveniently map back to the object
  /// their fd belongs to. This is used by Selector, for example, to associate each
  /// FileDescriptor with the corresponding SelectionKey.
  set userData(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_userData, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  StructPollfd()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}