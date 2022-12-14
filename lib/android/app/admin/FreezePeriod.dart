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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.admin.FreezePeriod
///
/// A class that represents one freeze period which repeats _annually_. A freeze period has
/// two java.time\#MonthDay values that define the start and end dates of the period, both
/// inclusive. If the end date is earlier than the start date, the period is considered wrapped
/// around the year-end. As far as freeze period is concerned, leap year is disregarded and February
/// 29th should be treated as if it were February 28th: so a freeze starting or ending on February
/// 28th is identical to a freeze starting or ending on February 29th. When calulating the length of
/// a freeze or the distance bewteen two freee periods, February 29th is also ignored.
///@see SystemUpdatePolicy\#setFreezePeriods
class FreezePeriod extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/admin/FreezePeriod");
  FreezePeriod.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/time/MonthDay;Ljava/time/MonthDay;)V");

  /// from: public void <init>(java.time.MonthDay start, java.time.MonthDay end)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a freeze period by its start and end dates. If the end date is earlier than the start
  /// date, the freeze period is considered wrapping year-end.
  FreezePeriod(jni.JniObject start, jni.JniObject end)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [start.reference, end.reference]).object);

  static final _id_getStart = jniAccessors.getMethodIDOf(
      _classRef, "getStart", "()Ljava/time/MonthDay;");

  /// from: public java.time.MonthDay getStart()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the start date (inclusive) of this freeze period.
  jni.JniObject getStart() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getStart, jni.JniType.objectType, []).object);

  static final _id_getEnd =
      jniAccessors.getMethodIDOf(_classRef, "getEnd", "()Ljava/time/MonthDay;");

  /// from: public java.time.MonthDay getEnd()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the end date (inclusive) of this freeze period.
  jni.JniObject getEnd() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEnd, jni.JniType.objectType, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
