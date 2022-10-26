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

/// from: android.util.EventLogTags
///
/// @deprecated This class is no longer functional.
/// Use android.util.EventLog instead.
class EventLogTags extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/util/EventLogTags");
  EventLogTags.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  EventLogTags()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/io/BufferedReader;)V");

  /// from: public void <init>(java.io.BufferedReader input)
  /// The returned object must be deleted after use, by calling the `delete` method.
  EventLogTags.ctor1(jni.JniObject input)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [input.reference]).object);

  static final _id_get0 = jniAccessors.getMethodIDOf(_classRef, "get",
      "(Ljava/lang/String;)Landroid/util/EventLogTags\$Description;");

  /// from: public android.util.EventLogTags.Description get(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  EventLogTags_Description get0(jni.JniString name) =>
      EventLogTags_Description.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_get0,
          jni.JniType.objectType,
          [name.reference]).object);

  static final _id_get1 = jniAccessors.getMethodIDOf(
      _classRef, "get", "(I)Landroid/util/EventLogTags\$Description;");

  /// from: public android.util.EventLogTags.Description get(int tag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  EventLogTags_Description get1(int tag) =>
      EventLogTags_Description.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_get1, jni.JniType.objectType, [tag]).object);
}

/// from: android.util.EventLogTags$Description
class EventLogTags_Description extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/util/EventLogTags\$Description");
  EventLogTags_Description.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_mName =
      jniAccessors.getFieldIDOf(_classRef, "mName", "Ljava/lang/String;");

  /// from: public final java.lang.String mName
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString get mName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_mName, jni.JniType.objectType)
      .object);

  static final _id_mTag = jniAccessors.getFieldIDOf(_classRef, "mTag", "I");

  /// from: public final int mTag
  int get mTag =>
      jniAccessors.getField(reference, _id_mTag, jni.JniType.intType).integer;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(ILjava/lang/String;)V");

  /// from: void <init>(int tag, java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  EventLogTags_Description(int tag, jni.JniString name)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [tag, name.reference]).object);
}