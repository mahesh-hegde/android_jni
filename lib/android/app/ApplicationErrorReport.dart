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

import "../os/Parcelable.dart" as parcelable_;

import "../content/ComponentName.dart" as componentname_;

import "../content/Context.dart" as context_;

import "../os/Parcel.dart" as parcel_;

import "../util/Printer.dart" as printer_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.ApplicationErrorReport
///
/// Describes an application error.
///
/// A report has a type, which is one of
/// <ul>
/// <li> \#TYPE_NONE uninitialized instance of ApplicationErrorReport.
/// <li> \#TYPE_CRASH application crash. Information about the crash
/// is stored in \#crashInfo.
/// <li> \#TYPE_ANR application not responding. Information about the
/// ANR is stored in \#anrInfo.
/// <li> \#TYPE_BATTERY user reported application is using too much
/// battery. Information about the battery use is stored in \#batteryInfo.
/// <li> \#TYPE_RUNNING_SERVICE user reported application is leaving an
/// unneeded serive running. Information about the battery use is stored in
/// \#runningServiceInfo.
/// </ul>
class ApplicationErrorReport extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/ApplicationErrorReport");
  ApplicationErrorReport.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.ApplicationErrorReport> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int TYPE_ANR
  ///
  /// An error report about an application that's not responding.
  static const TYPE_ANR = 2;

  /// from: static public final int TYPE_BATTERY
  ///
  /// An error report about an application that's consuming too much battery.
  static const TYPE_BATTERY = 3;

  /// from: static public final int TYPE_CRASH
  ///
  /// An error report about an application crash.
  static const TYPE_CRASH = 1;

  /// from: static public final int TYPE_NONE
  ///
  /// Uninitialized error report.
  static const TYPE_NONE = 0;

  /// from: static public final int TYPE_RUNNING_SERVICE
  ///
  /// A report from a user to a developer about a running service that the
  /// user doesn't think should be running.
  static const TYPE_RUNNING_SERVICE = 5;

  static final _id_anrInfo = jniAccessors.getFieldIDOf(
      _classRef, "anrInfo", "Landroid/app/ApplicationErrorReport\$AnrInfo;");

  /// from: public android.app.ApplicationErrorReport.AnrInfo anrInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If this report is of type \#TYPE_ANR, contains an instance
  /// of AnrInfo describing the ANR; otherwise null.
  ApplicationErrorReport_AnrInfo get anrInfo =>
      ApplicationErrorReport_AnrInfo.fromRef(jniAccessors
          .getField(reference, _id_anrInfo, jni.JniType.objectType)
          .object);

  /// from: public android.app.ApplicationErrorReport.AnrInfo anrInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If this report is of type \#TYPE_ANR, contains an instance
  /// of AnrInfo describing the ANR; otherwise null.
  set anrInfo(ApplicationErrorReport_AnrInfo value) =>
      jniEnv.SetObjectField(reference, _id_anrInfo, value.reference);

  static final _id_batteryInfo = jniAccessors.getFieldIDOf(_classRef,
      "batteryInfo", "Landroid/app/ApplicationErrorReport\$BatteryInfo;");

  /// from: public android.app.ApplicationErrorReport.BatteryInfo batteryInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If this report is of type \#TYPE_BATTERY, contains an instance
  /// of BatteryInfo; otherwise null.
  ApplicationErrorReport_BatteryInfo get batteryInfo =>
      ApplicationErrorReport_BatteryInfo.fromRef(jniAccessors
          .getField(reference, _id_batteryInfo, jni.JniType.objectType)
          .object);

  /// from: public android.app.ApplicationErrorReport.BatteryInfo batteryInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If this report is of type \#TYPE_BATTERY, contains an instance
  /// of BatteryInfo; otherwise null.
  set batteryInfo(ApplicationErrorReport_BatteryInfo value) =>
      jniEnv.SetObjectField(reference, _id_batteryInfo, value.reference);

  static final _id_crashInfo = jniAccessors.getFieldIDOf(_classRef, "crashInfo",
      "Landroid/app/ApplicationErrorReport\$CrashInfo;");

  /// from: public android.app.ApplicationErrorReport.CrashInfo crashInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If this report is of type \#TYPE_CRASH, contains an instance
  /// of CrashInfo describing the crash; otherwise null.
  ApplicationErrorReport_CrashInfo get crashInfo =>
      ApplicationErrorReport_CrashInfo.fromRef(jniAccessors
          .getField(reference, _id_crashInfo, jni.JniType.objectType)
          .object);

  /// from: public android.app.ApplicationErrorReport.CrashInfo crashInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If this report is of type \#TYPE_CRASH, contains an instance
  /// of CrashInfo describing the crash; otherwise null.
  set crashInfo(ApplicationErrorReport_CrashInfo value) =>
      jniEnv.SetObjectField(reference, _id_crashInfo, value.reference);

  static final _id_installerPackageName = jniAccessors.getFieldIDOf(
      _classRef, "installerPackageName", "Ljava/lang/String;");

  /// from: public java.lang.String installerPackageName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Package name of the application which installed the application this
  /// report pertains to.
  /// This identifies which market the application came from.
  jni.JniString get installerPackageName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_installerPackageName, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String installerPackageName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Package name of the application which installed the application this
  /// report pertains to.
  /// This identifies which market the application came from.
  set installerPackageName(jni.JniString value) => jniEnv.SetObjectField(
      reference, _id_installerPackageName, value.reference);

  static final _id_packageName =
      jniAccessors.getFieldIDOf(_classRef, "packageName", "Ljava/lang/String;");

  /// from: public java.lang.String packageName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Package name of the application.
  jni.JniString get packageName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_packageName, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String packageName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Package name of the application.
  set packageName(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_packageName, value.reference);

  static final _id_processName =
      jniAccessors.getFieldIDOf(_classRef, "processName", "Ljava/lang/String;");

  /// from: public java.lang.String processName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Process name of the application.
  jni.JniString get processName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_processName, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String processName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Process name of the application.
  set processName(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_processName, value.reference);

  static final _id_runningServiceInfo = jniAccessors.getFieldIDOf(
      _classRef,
      "runningServiceInfo",
      "Landroid/app/ApplicationErrorReport\$RunningServiceInfo;");

  /// from: public android.app.ApplicationErrorReport.RunningServiceInfo runningServiceInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If this report is of type \#TYPE_RUNNING_SERVICE, contains an instance
  /// of RunningServiceInfo; otherwise null.
  ApplicationErrorReport_RunningServiceInfo get runningServiceInfo =>
      ApplicationErrorReport_RunningServiceInfo.fromRef(jniAccessors
          .getField(reference, _id_runningServiceInfo, jni.JniType.objectType)
          .object);

  /// from: public android.app.ApplicationErrorReport.RunningServiceInfo runningServiceInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If this report is of type \#TYPE_RUNNING_SERVICE, contains an instance
  /// of RunningServiceInfo; otherwise null.
  set runningServiceInfo(ApplicationErrorReport_RunningServiceInfo value) =>
      jniEnv.SetObjectField(reference, _id_runningServiceInfo, value.reference);

  static final _id_systemApp =
      jniAccessors.getFieldIDOf(_classRef, "systemApp", "Z");

  /// from: public boolean systemApp
  ///
  /// Set if the app is on the system image.
  bool get systemApp => jniAccessors
      .getField(reference, _id_systemApp, jni.JniType.booleanType)
      .boolean;

  /// from: public boolean systemApp
  ///
  /// Set if the app is on the system image.
  set systemApp(bool value) =>
      jniEnv.SetBooleanField(reference, _id_systemApp, value ? 1 : 0);

  static final _id_time = jniAccessors.getFieldIDOf(_classRef, "time", "J");

  /// from: public long time
  ///
  /// Time at which the error occurred.
  int get time =>
      jniAccessors.getField(reference, _id_time, jni.JniType.longType).long;

  /// from: public long time
  ///
  /// Time at which the error occurred.
  set time(int value) => jniEnv.SetLongField(reference, _id_time, value);

  static final _id_type = jniAccessors.getFieldIDOf(_classRef, "type", "I");

  /// from: public int type
  ///
  /// Type of this report. Can be one of \#TYPE_NONE,
  /// \#TYPE_CRASH, \#TYPE_ANR, \#TYPE_BATTERY,
  /// or \#TYPE_RUNNING_SERVICE.
  int get type =>
      jniAccessors.getField(reference, _id_type, jni.JniType.intType).integer;

  /// from: public int type
  ///
  /// Type of this report. Can be one of \#TYPE_NONE,
  /// \#TYPE_CRASH, \#TYPE_ANR, \#TYPE_BATTERY,
  /// or \#TYPE_RUNNING_SERVICE.
  set type(int value) => jniEnv.SetIntField(reference, _id_type, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an uninitialized instance of ApplicationErrorReport.
  ApplicationErrorReport()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getErrorReportReceiver = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getErrorReportReceiver",
      "(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;");

  /// from: static public android.content.ComponentName getErrorReportReceiver(android.content.Context context, java.lang.String packageName, int appFlags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static componentname_.ComponentName getErrorReportReceiver(
          context_.Context context, jni.JniString packageName, int appFlags) =>
      componentname_.ComponentName.fromRef(jniAccessors
          .callStaticMethodWithArgs(
              _classRef,
              _id_getErrorReportReceiver,
              jni.JniType.objectType,
              [context.reference, packageName.reference, appFlags]).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_readFromParcel = jniAccessors.getMethodIDOf(
      _classRef, "readFromParcel", "(Landroid/os/Parcel;)V");

  /// from: public void readFromParcel(android.os.Parcel in)
  void readFromParcel(parcel_.Parcel in0) => jniAccessors.callMethodWithArgs(
      reference,
      _id_readFromParcel,
      jni.JniType.voidType,
      [in0.reference]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_dump = jniAccessors.getMethodIDOf(
      _classRef, "dump", "(Landroid/util/Printer;Ljava/lang/String;)V");

  /// from: public void dump(android.util.Printer pw, java.lang.String prefix)
  ///
  /// Dump the report to a Printer.
  void dump(printer_.Printer pw, jni.JniString prefix) =>
      jniAccessors.callMethodWithArgs(reference, _id_dump, jni.JniType.voidType,
          [pw.reference, prefix.reference]).check();
}

/// from: android.app.ApplicationErrorReport$RunningServiceInfo
///
/// Describes a running service report.
class ApplicationErrorReport_RunningServiceInfo extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/app/ApplicationErrorReport\$RunningServiceInfo");
  ApplicationErrorReport_RunningServiceInfo.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_durationMillis =
      jniAccessors.getFieldIDOf(_classRef, "durationMillis", "J");

  /// from: public long durationMillis
  ///
  /// Duration in milliseconds that the service has been running.
  int get durationMillis => jniAccessors
      .getField(reference, _id_durationMillis, jni.JniType.longType)
      .long;

  /// from: public long durationMillis
  ///
  /// Duration in milliseconds that the service has been running.
  set durationMillis(int value) =>
      jniEnv.SetLongField(reference, _id_durationMillis, value);

  static final _id_serviceDetails = jniAccessors.getFieldIDOf(
      _classRef, "serviceDetails", "Ljava/lang/String;");

  /// from: public java.lang.String serviceDetails
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Dump of debug information about the service.
  jni.JniString get serviceDetails => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_serviceDetails, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String serviceDetails
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Dump of debug information about the service.
  set serviceDetails(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_serviceDetails, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an uninitialized instance of RunningServiceInfo.
  ApplicationErrorReport_RunningServiceInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an instance of RunningServiceInfo initialized from a Parcel.
  ApplicationErrorReport_RunningServiceInfo.ctor1(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [in0.reference]).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Save a RunningServiceInfo instance to a parcel.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_dump = jniAccessors.getMethodIDOf(
      _classRef, "dump", "(Landroid/util/Printer;Ljava/lang/String;)V");

  /// from: public void dump(android.util.Printer pw, java.lang.String prefix)
  ///
  /// Dump a BatteryInfo instance to a Printer.
  void dump(printer_.Printer pw, jni.JniString prefix) =>
      jniAccessors.callMethodWithArgs(reference, _id_dump, jni.JniType.voidType,
          [pw.reference, prefix.reference]).check();
}

/// from: android.app.ApplicationErrorReport$CrashInfo
///
/// Describes an application crash.
class ApplicationErrorReport_CrashInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/ApplicationErrorReport\$CrashInfo");
  ApplicationErrorReport_CrashInfo.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_exceptionClassName = jniAccessors.getFieldIDOf(
      _classRef, "exceptionClassName", "Ljava/lang/String;");

  /// from: public java.lang.String exceptionClassName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Class name of the exception that caused the crash.
  jni.JniString get exceptionClassName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_exceptionClassName, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String exceptionClassName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Class name of the exception that caused the crash.
  set exceptionClassName(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_exceptionClassName, value.reference);

  static final _id_exceptionMessage = jniAccessors.getFieldIDOf(
      _classRef, "exceptionMessage", "Ljava/lang/String;");

  /// from: public java.lang.String exceptionMessage
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Message stored in the exception.
  jni.JniString get exceptionMessage => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_exceptionMessage, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String exceptionMessage
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Message stored in the exception.
  set exceptionMessage(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_exceptionMessage, value.reference);

  static final _id_stackTrace =
      jniAccessors.getFieldIDOf(_classRef, "stackTrace", "Ljava/lang/String;");

  /// from: public java.lang.String stackTrace
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Stack trace.
  jni.JniString get stackTrace => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_stackTrace, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String stackTrace
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Stack trace.
  set stackTrace(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_stackTrace, value.reference);

  static final _id_throwClassName = jniAccessors.getFieldIDOf(
      _classRef, "throwClassName", "Ljava/lang/String;");

  /// from: public java.lang.String throwClassName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Class which the exception was thrown from.
  jni.JniString get throwClassName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_throwClassName, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String throwClassName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Class which the exception was thrown from.
  set throwClassName(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_throwClassName, value.reference);

  static final _id_throwFileName = jniAccessors.getFieldIDOf(
      _classRef, "throwFileName", "Ljava/lang/String;");

  /// from: public java.lang.String throwFileName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// File which the exception was thrown from.
  jni.JniString get throwFileName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_throwFileName, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String throwFileName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// File which the exception was thrown from.
  set throwFileName(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_throwFileName, value.reference);

  static final _id_throwLineNumber =
      jniAccessors.getFieldIDOf(_classRef, "throwLineNumber", "I");

  /// from: public int throwLineNumber
  ///
  /// Line number the exception was thrown from.
  int get throwLineNumber => jniAccessors
      .getField(reference, _id_throwLineNumber, jni.JniType.intType)
      .integer;

  /// from: public int throwLineNumber
  ///
  /// Line number the exception was thrown from.
  set throwLineNumber(int value) =>
      jniEnv.SetIntField(reference, _id_throwLineNumber, value);

  static final _id_throwMethodName = jniAccessors.getFieldIDOf(
      _classRef, "throwMethodName", "Ljava/lang/String;");

  /// from: public java.lang.String throwMethodName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Method which the exception was thrown from.
  jni.JniString get throwMethodName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_throwMethodName, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String throwMethodName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Method which the exception was thrown from.
  set throwMethodName(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_throwMethodName, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an uninitialized instance of CrashInfo.
  ApplicationErrorReport_CrashInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/Throwable;)V");

  /// from: public void <init>(java.lang.Throwable tr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an instance of CrashInfo initialized from an exception.
  ApplicationErrorReport_CrashInfo.ctor1(jni.JniObject tr)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [tr.reference]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an instance of CrashInfo initialized from a Parcel.
  ApplicationErrorReport_CrashInfo.ctor2(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [in0.reference]).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Save a CrashInfo instance to a parcel.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_dump = jniAccessors.getMethodIDOf(
      _classRef, "dump", "(Landroid/util/Printer;Ljava/lang/String;)V");

  /// from: public void dump(android.util.Printer pw, java.lang.String prefix)
  ///
  /// Dump a CrashInfo instance to a Printer.
  void dump(printer_.Printer pw, jni.JniString prefix) =>
      jniAccessors.callMethodWithArgs(reference, _id_dump, jni.JniType.voidType,
          [pw.reference, prefix.reference]).check();
}

/// from: android.app.ApplicationErrorReport$BatteryInfo
///
/// Describes a battery usage report.
class ApplicationErrorReport_BatteryInfo extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/app/ApplicationErrorReport\$BatteryInfo");
  ApplicationErrorReport_BatteryInfo.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_checkinDetails = jniAccessors.getFieldIDOf(
      _classRef, "checkinDetails", "Ljava/lang/String;");

  /// from: public java.lang.String checkinDetails
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Checkin details.
  jni.JniString get checkinDetails => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_checkinDetails, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String checkinDetails
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Checkin details.
  set checkinDetails(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_checkinDetails, value.reference);

  static final _id_durationMicros =
      jniAccessors.getFieldIDOf(_classRef, "durationMicros", "J");

  /// from: public long durationMicros
  ///
  /// Duration in microseconds over which the process used the above
  /// percentage of battery.
  int get durationMicros => jniAccessors
      .getField(reference, _id_durationMicros, jni.JniType.longType)
      .long;

  /// from: public long durationMicros
  ///
  /// Duration in microseconds over which the process used the above
  /// percentage of battery.
  set durationMicros(int value) =>
      jniEnv.SetLongField(reference, _id_durationMicros, value);

  static final _id_usageDetails = jniAccessors.getFieldIDOf(
      _classRef, "usageDetails", "Ljava/lang/String;");

  /// from: public java.lang.String usageDetails
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Dump of various info impacting battery use.
  jni.JniString get usageDetails => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_usageDetails, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String usageDetails
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Dump of various info impacting battery use.
  set usageDetails(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_usageDetails, value.reference);

  static final _id_usagePercent =
      jniAccessors.getFieldIDOf(_classRef, "usagePercent", "I");

  /// from: public int usagePercent
  ///
  /// Percentage of the battery that was used up by the process.
  int get usagePercent => jniAccessors
      .getField(reference, _id_usagePercent, jni.JniType.intType)
      .integer;

  /// from: public int usagePercent
  ///
  /// Percentage of the battery that was used up by the process.
  set usagePercent(int value) =>
      jniEnv.SetIntField(reference, _id_usagePercent, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an uninitialized instance of BatteryInfo.
  ApplicationErrorReport_BatteryInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an instance of BatteryInfo initialized from a Parcel.
  ApplicationErrorReport_BatteryInfo.ctor1(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [in0.reference]).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Save a BatteryInfo instance to a parcel.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_dump = jniAccessors.getMethodIDOf(
      _classRef, "dump", "(Landroid/util/Printer;Ljava/lang/String;)V");

  /// from: public void dump(android.util.Printer pw, java.lang.String prefix)
  ///
  /// Dump a BatteryInfo instance to a Printer.
  void dump(printer_.Printer pw, jni.JniString prefix) =>
      jniAccessors.callMethodWithArgs(reference, _id_dump, jni.JniType.voidType,
          [pw.reference, prefix.reference]).check();
}

/// from: android.app.ApplicationErrorReport$AnrInfo
///
/// Describes an application not responding error.
class ApplicationErrorReport_AnrInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/ApplicationErrorReport\$AnrInfo");
  ApplicationErrorReport_AnrInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_activity =
      jniAccessors.getFieldIDOf(_classRef, "activity", "Ljava/lang/String;");

  /// from: public java.lang.String activity
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Activity name.
  jni.JniString get activity => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_activity, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String activity
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Activity name.
  set activity(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_activity, value.reference);

  static final _id_cause =
      jniAccessors.getFieldIDOf(_classRef, "cause", "Ljava/lang/String;");

  /// from: public java.lang.String cause
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Description of the operation that timed out.
  jni.JniString get cause => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_cause, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String cause
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Description of the operation that timed out.
  set cause(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_cause, value.reference);

  static final _id_info =
      jniAccessors.getFieldIDOf(_classRef, "info", "Ljava/lang/String;");

  /// from: public java.lang.String info
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Additional info, including CPU stats.
  jni.JniString get info => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_info, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String info
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Additional info, including CPU stats.
  set info(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_info, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an uninitialized instance of AnrInfo.
  ApplicationErrorReport_AnrInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an instance of AnrInfo initialized from a Parcel.
  ApplicationErrorReport_AnrInfo.ctor1(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [in0.reference]).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Save an AnrInfo instance to a parcel.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_dump = jniAccessors.getMethodIDOf(
      _classRef, "dump", "(Landroid/util/Printer;Ljava/lang/String;)V");

  /// from: public void dump(android.util.Printer pw, java.lang.String prefix)
  ///
  /// Dump an AnrInfo instance to a Printer.
  void dump(printer_.Printer pw, jni.JniString prefix) =>
      jniAccessors.callMethodWithArgs(reference, _id_dump, jni.JniType.voidType,
          [pw.reference, prefix.reference]).check();
}
