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

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.usage.StorageStats
///
/// Storage statistics for a UID, package, or UserHandle on a single
/// storage volume.
///@see StorageStatsManager
class StorageStats extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/usage/StorageStats");
  StorageStats.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.usage.StorageStats> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getAppBytes =
      jniAccessors.getMethodIDOf(_classRef, "getAppBytes", "()J");

  /// from: public long getAppBytes()
  ///
  /// Return the size of app. This includes {@code APK} files, optimized
  /// compiler output, and unpacked native libraries.
  ///
  /// If the primary external/shared storage is hosted on this storage device,
  /// then this includes files stored under Context\#getObbDir().
  ///
  /// Code is shared between all users on a multiuser device.
  ///
  /// Value is a non-negative number of bytes.
  ///@return Value is a non-negative number of bytes.
  int getAppBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getAppBytes, jni.JniType.longType, []).long;

  static final _id_getDataBytes =
      jniAccessors.getMethodIDOf(_classRef, "getDataBytes", "()J");

  /// from: public long getDataBytes()
  ///
  /// Return the size of all data. This includes files stored under
  /// Context\#getDataDir(), Context\#getCacheDir(),
  /// Context\#getCodeCacheDir().
  ///
  /// If the primary external/shared storage is hosted on this storage device,
  /// then this includes files stored under
  /// Context\#getExternalFilesDir(String),
  /// Context\#getExternalCacheDir(), and
  /// Context\#getExternalMediaDirs().
  ///
  /// Data is isolated for each user on a multiuser device.
  ///
  /// Value is a non-negative number of bytes.
  ///@return Value is a non-negative number of bytes.
  int getDataBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getDataBytes, jni.JniType.longType, []).long;

  static final _id_getCacheBytes =
      jniAccessors.getMethodIDOf(_classRef, "getCacheBytes", "()J");

  /// from: public long getCacheBytes()
  ///
  /// Return the size of all cached data. This includes files stored under
  /// Context\#getCacheDir() and Context\#getCodeCacheDir().
  ///
  /// If the primary external/shared storage is hosted on this storage device,
  /// then this includes files stored under
  /// Context\#getExternalCacheDir().
  ///
  /// Cached data is isolated for each user on a multiuser device.
  ///
  /// Value is a non-negative number of bytes.
  ///@return Value is a non-negative number of bytes.
  int getCacheBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getCacheBytes, jni.JniType.longType, []).long;

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
