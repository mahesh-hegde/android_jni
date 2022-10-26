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

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.usage.UsageStats
///
/// Contains usage statistics for an app package for a specific
/// time range.
class UsageStats extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/usage/UsageStats");
  UsageStats.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.usage.UsageStats> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/app/usage/UsageStats;)V");

  /// from: public void <init>(android.app.usage.UsageStats stats)
  /// The returned object must be deleted after use, by calling the `delete` method.
  UsageStats(UsageStats stats)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [stats.reference]).object);

  static final _id_getPackageName = jniAccessors.getMethodIDOf(
      _classRef, "getPackageName", "()Ljava/lang/String;");

  /// from: public java.lang.String getPackageName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString getPackageName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPackageName, jni.JniType.objectType, []).object);

  static final _id_getFirstTimeStamp =
      jniAccessors.getMethodIDOf(_classRef, "getFirstTimeStamp", "()J");

  /// from: public long getFirstTimeStamp()
  ///
  /// Get the beginning of the time range this android.app.usage.UsageStats represents,
  /// measured in milliseconds since the epoch.
  /// <p/>
  /// See System\#currentTimeMillis().
  int getFirstTimeStamp() => jniAccessors.callMethodWithArgs(
      reference, _id_getFirstTimeStamp, jni.JniType.longType, []).long;

  static final _id_getLastTimeStamp =
      jniAccessors.getMethodIDOf(_classRef, "getLastTimeStamp", "()J");

  /// from: public long getLastTimeStamp()
  ///
  /// Get the end of the time range this android.app.usage.UsageStats represents,
  /// measured in milliseconds since the epoch.
  /// <p/>
  /// See System\#currentTimeMillis().
  int getLastTimeStamp() => jniAccessors.callMethodWithArgs(
      reference, _id_getLastTimeStamp, jni.JniType.longType, []).long;

  static final _id_getLastTimeUsed =
      jniAccessors.getMethodIDOf(_classRef, "getLastTimeUsed", "()J");

  /// from: public long getLastTimeUsed()
  ///
  /// Get the last time this package was used, measured in milliseconds since the epoch.
  /// <p/>
  /// See System\#currentTimeMillis().
  int getLastTimeUsed() => jniAccessors.callMethodWithArgs(
      reference, _id_getLastTimeUsed, jni.JniType.longType, []).long;

  static final _id_getTotalTimeInForeground =
      jniAccessors.getMethodIDOf(_classRef, "getTotalTimeInForeground", "()J");

  /// from: public long getTotalTimeInForeground()
  ///
  /// Get the total time this package spent in the foreground, measured in milliseconds.
  int getTotalTimeInForeground() => jniAccessors.callMethodWithArgs(
      reference, _id_getTotalTimeInForeground, jni.JniType.longType, []).long;

  static final _id_add = jniAccessors.getMethodIDOf(
      _classRef, "add", "(Landroid/app/usage/UsageStats;)V");

  /// from: public void add(android.app.usage.UsageStats right)
  ///
  /// Add the statistics from the right UsageStats to the left. The package name for
  /// both UsageStats objects must be the same.
  ///@param right The UsageStats object to merge into this one.
  ///@throws java.lang.IllegalArgumentException if the package names of the two
  ///         UsageStats objects are different.
  void add(UsageStats right) => jniAccessors.callMethodWithArgs(
      reference, _id_add, jni.JniType.voidType, [right.reference]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
