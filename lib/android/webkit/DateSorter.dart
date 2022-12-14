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

import "../content/Context.dart" as context_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.webkit.DateSorter
///
/// Sorts dates into the following groups:
///   Today
///   Yesterday
///   seven days ago
///   one month ago
///   older than a month ago
class DateSorter extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/webkit/DateSorter");
  DateSorter.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int DAY_COUNT
  ///
  /// must be >= 3
  static const DAY_COUNT = 5;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param context Application context
  DateSorter(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_getIndex =
      jniAccessors.getMethodIDOf(_classRef, "getIndex", "(J)I");

  /// from: public int getIndex(long time)
  ///
  /// @param time time since the Epoch in milliseconds, such as that
  /// returned by Calendar.getTimeInMillis()
  ///@return an index from 0 to (DAY_COUNT - 1) that identifies which
  /// date bin this date belongs to
  int getIndex(int time) => jniAccessors.callMethodWithArgs(
      reference, _id_getIndex, jni.JniType.intType, [time]).integer;

  static final _id_getLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLabel", "(I)Ljava/lang/String;");

  /// from: public java.lang.String getLabel(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param index date bin index as returned by getIndex()
  ///@return string label suitable for display to user
  jni.JniString getLabel(int index) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLabel, jni.JniType.objectType, [index]).object);

  static final _id_getBoundary =
      jniAccessors.getMethodIDOf(_classRef, "getBoundary", "(I)J");

  /// from: public long getBoundary(int index)
  ///
  /// @param index date bin index as returned by getIndex()
  ///@return date boundary at given index
  int getBoundary(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_getBoundary, jni.JniType.longType, [index]).long;
}
