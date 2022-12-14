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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.util.TimingLogger
///
/// A utility class to help log timings splits throughout a method call.
/// Typical usage is:
///
/// <pre>
///     TimingLogger timings = new TimingLogger(TAG, "methodA");
///     // ... do some work A ...
///     timings.addSplit("work A");
///     // ... do some work B ...
///     timings.addSplit("work B");
///     // ... do some work C ...
///     timings.addSplit("work C");
///     timings.dumpToLog();
/// </pre>
///
/// The dumpToLog call would add the following to the log:
///
///
/// <pre>
///     D/TAG     ( 3459): methodA: begin
///     D/TAG     ( 3459): methodA:      9 ms, work A
///     D/TAG     ( 3459): methodA:      1 ms, work B
///     D/TAG     ( 3459): methodA:      6 ms, work C
///     D/TAG     ( 3459): methodA: end, 16 ms
/// </pre>
class TimingLogger extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/util/TimingLogger");
  TimingLogger.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String tag, java.lang.String label)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create and initialize a TimingLogger object that will log using
  /// the specific tag. If the Log.isLoggable is not enabled to at
  /// least the Log.VERBOSE level for that tag at creation time then
  /// the addSplit and dumpToLog call will do nothing.
  ///@param tag the log tag to use while logging the timings
  ///@param label a string to be displayed with each log
  TimingLogger(jni.JniString tag, jni.JniString label)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [tag.reference, label.reference]).object);

  static final _id_reset = jniAccessors.getMethodIDOf(
      _classRef, "reset", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void reset(java.lang.String tag, java.lang.String label)
  ///
  /// Clear and initialize a TimingLogger object that will log using
  /// the specific tag. If the Log.isLoggable is not enabled to at
  /// least the Log.VERBOSE level for that tag at creation time then
  /// the addSplit and dumpToLog call will do nothing.
  ///@param tag the log tag to use while logging the timings
  ///@param label a string to be displayed with each log
  void reset(jni.JniString tag, jni.JniString label) =>
      jniAccessors.callMethodWithArgs(reference, _id_reset,
          jni.JniType.voidType, [tag.reference, label.reference]).check();

  static final _id_reset1 =
      jniAccessors.getMethodIDOf(_classRef, "reset", "()V");

  /// from: public void reset()
  ///
  /// Clear and initialize a TimingLogger object that will log using
  /// the tag and label that was specified previously, either via
  /// the constructor or a call to reset(tag, label). If the
  /// Log.isLoggable is not enabled to at least the Log.VERBOSE
  /// level for that tag at creation time then the addSplit and
  /// dumpToLog call will do nothing.
  void reset1() => jniAccessors.callMethodWithArgs(
      reference, _id_reset1, jni.JniType.voidType, []).check();

  static final _id_addSplit = jniAccessors.getMethodIDOf(
      _classRef, "addSplit", "(Ljava/lang/String;)V");

  /// from: public void addSplit(java.lang.String splitLabel)
  ///
  /// Add a split for the current time, labeled with splitLabel. If
  /// Log.isLoggable was not enabled to at least the Log.VERBOSE for
  /// the specified tag at construction or reset() time then this
  /// call does nothing.
  ///@param splitLabel a label to associate with this split.
  void addSplit(jni.JniString splitLabel) => jniAccessors.callMethodWithArgs(
      reference,
      _id_addSplit,
      jni.JniType.voidType,
      [splitLabel.reference]).check();

  static final _id_dumpToLog =
      jniAccessors.getMethodIDOf(_classRef, "dumpToLog", "()V");

  /// from: public void dumpToLog()
  ///
  /// Dumps the timings to the log using Log.d(). If Log.isLoggable was
  /// not enabled to at least the Log.VERBOSE for the specified tag at
  /// construction or reset() time then this call does nothing.
  void dumpToLog() => jniAccessors.callMethodWithArgs(
      reference, _id_dumpToLog, jni.JniType.voidType, []).check();
}
