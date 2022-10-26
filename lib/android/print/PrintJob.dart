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

import "PrintJobInfo.dart" as printjobinfo_;

import "PrintManager.dart" as printmanager_;

import "PrintJobId.dart" as printjobid_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.print.PrintJob
///
/// This class represents a print job from the perspective of an
/// application. It contains behavior methods for performing operations
/// on it as well as methods for querying its state. A snapshot of the
/// print job state is represented by the PrintJobInfo class.
/// The state of a print job may change over time. An application receives
/// instances of this class when creating a print job or querying for
/// its print jobs.
class PrintJob extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/print/PrintJob");
  PrintJob.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V");

  /// from: void <init>(android.print.PrintJobInfo info, android.print.PrintManager printManager)
  /// The returned object must be deleted after use, by calling the `delete` method.
  PrintJob(
      printjobinfo_.PrintJobInfo info, printmanager_.PrintManager printManager)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [info.reference, printManager.reference]).object);

  static final _id_getId = jniAccessors.getMethodIDOf(
      _classRef, "getId", "()Landroid/print/PrintJobId;");

  /// from: public android.print.PrintJobId getId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the unique print job id.
  ///@return The id.
  ///
  /// This value may be {@code null}.
  printjobid_.PrintJobId getId() =>
      printjobid_.PrintJobId.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getId, jni.JniType.objectType, []).object);

  static final _id_getInfo = jniAccessors.getMethodIDOf(
      _classRef, "getInfo", "()Landroid/print/PrintJobInfo;");

  /// from: public android.print.PrintJobInfo getInfo()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the PrintJobInfo that describes this job.
  ///
  /// <strong>Node:</strong>The returned info object is a snapshot of the
  /// current print job state. Every call to this method returns a fresh
  /// info object that reflects the current print job state.
  ///
  ///
  ///@return The print job info.
  ///
  /// This value will never be {@code null}.
  printjobinfo_.PrintJobInfo getInfo() =>
      printjobinfo_.PrintJobInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInfo, jni.JniType.objectType, []).object);

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public void cancel()
  ///
  /// Cancels this print job. You can request cancellation of a
  /// queued, started, blocked, or failed print job.
  ///@see \#isQueued()
  ///@see \#isStarted()
  ///@see \#isBlocked()
  ///@see \#isFailed()
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();

  static final _id_restart =
      jniAccessors.getMethodIDOf(_classRef, "restart", "()V");

  /// from: public void restart()
  ///
  /// Restarts this print job. You can request restart of a failed
  /// print job.
  ///@see \#isFailed()
  void restart() => jniAccessors.callMethodWithArgs(
      reference, _id_restart, jni.JniType.voidType, []).check();

  static final _id_isQueued =
      jniAccessors.getMethodIDOf(_classRef, "isQueued", "()Z");

  /// from: public boolean isQueued()
  ///
  /// Gets whether this print job is queued. Such a print job is
  /// ready to be printed. You can request a cancellation via
  /// \#cancel().
  ///@return Whether the print job is queued.
  ///@see \#cancel()
  bool isQueued() => jniAccessors.callMethodWithArgs(
      reference, _id_isQueued, jni.JniType.booleanType, []).boolean;

  static final _id_isStarted =
      jniAccessors.getMethodIDOf(_classRef, "isStarted", "()Z");

  /// from: public boolean isStarted()
  ///
  /// Gets whether this print job is started. Such a print job is
  /// being printed. You can request a cancellation via
  /// \#cancel().
  ///@return Whether the print job is started.
  ///@see \#cancel()
  bool isStarted() => jniAccessors.callMethodWithArgs(
      reference, _id_isStarted, jni.JniType.booleanType, []).boolean;

  static final _id_isBlocked =
      jniAccessors.getMethodIDOf(_classRef, "isBlocked", "()Z");

  /// from: public boolean isBlocked()
  ///
  /// Gets whether this print job is blocked. Such a print job is halted
  /// due to an abnormal condition. You can request a cancellation via
  /// \#cancel().
  ///@return Whether the print job is blocked.
  ///@see \#cancel()
  bool isBlocked() => jniAccessors.callMethodWithArgs(
      reference, _id_isBlocked, jni.JniType.booleanType, []).boolean;

  static final _id_isCompleted =
      jniAccessors.getMethodIDOf(_classRef, "isCompleted", "()Z");

  /// from: public boolean isCompleted()
  ///
  /// Gets whether this print job is completed. Such a print job
  /// is successfully printed. You can neither cancel nor restart
  /// such a print job.
  ///@return Whether the print job is completed.
  bool isCompleted() => jniAccessors.callMethodWithArgs(
      reference, _id_isCompleted, jni.JniType.booleanType, []).boolean;

  static final _id_isFailed =
      jniAccessors.getMethodIDOf(_classRef, "isFailed", "()Z");

  /// from: public boolean isFailed()
  ///
  /// Gets whether this print job is failed. Such a print job is
  /// not successfully printed due to an error. You can request
  /// a restart via \#restart() or cancel via \#cancel().
  ///@return Whether the print job is failed.
  ///@see \#restart()
  ///@see \#cancel()
  bool isFailed() => jniAccessors.callMethodWithArgs(
      reference, _id_isFailed, jni.JniType.booleanType, []).boolean;

  static final _id_isCancelled =
      jniAccessors.getMethodIDOf(_classRef, "isCancelled", "()Z");

  /// from: public boolean isCancelled()
  ///
  /// Gets whether this print job is cancelled. Such a print job was
  /// cancelled as a result of a user request. This is a final state.
  /// You cannot restart such a print job.
  ///@return Whether the print job is cancelled.
  bool isCancelled() => jniAccessors.callMethodWithArgs(
      reference, _id_isCancelled, jni.JniType.booleanType, []).boolean;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;
}
