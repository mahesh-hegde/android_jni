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

/// from: android.app.usage.ExternalStorageStats
///
/// Shared/external storage statistics for a UserHandle on a single
/// storage volume.
///@see StorageStatsManager
class ExternalStorageStats extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/usage/ExternalStorageStats");
  ExternalStorageStats.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.usage.ExternalStorageStats> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getTotalBytes =
      jniAccessors.getMethodIDOf(_classRef, "getTotalBytes", "()J");

  /// from: public long getTotalBytes()
  ///
  /// Return the total bytes used by all files in the shared/external storage
  /// hosted on this volume.
  ///
  /// This value only includes data which is isolated for each user on a
  /// multiuser device. Any OBB data shared between users is not accounted in
  /// this value.
  ///
  /// Value is a non-negative number of bytes.
  ///@return Value is a non-negative number of bytes.
  int getTotalBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getTotalBytes, jni.JniType.longType, []).long;

  static final _id_getAudioBytes =
      jniAccessors.getMethodIDOf(_classRef, "getAudioBytes", "()J");

  /// from: public long getAudioBytes()
  ///
  /// Return the total bytes used by all audio files in the shared/external
  /// storage hosted on this volume.
  ///
  /// This value only includes data which is isolated for each user on a
  /// multiuser device. This value does not include any app files which are all
  /// accounted under \#getAppBytes().
  ///
  /// Value is a non-negative number of bytes.
  ///@return Value is a non-negative number of bytes.
  int getAudioBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getAudioBytes, jni.JniType.longType, []).long;

  static final _id_getVideoBytes =
      jniAccessors.getMethodIDOf(_classRef, "getVideoBytes", "()J");

  /// from: public long getVideoBytes()
  ///
  /// Return the total bytes used by all video files in the shared/external
  /// storage hosted on this volume.
  ///
  /// This value only includes data which is isolated for each user on a
  /// multiuser device. This value does not include any app files which are all
  /// accounted under \#getAppBytes().
  ///
  /// Value is a non-negative number of bytes.
  ///@return Value is a non-negative number of bytes.
  int getVideoBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getVideoBytes, jni.JniType.longType, []).long;

  static final _id_getImageBytes =
      jniAccessors.getMethodIDOf(_classRef, "getImageBytes", "()J");

  /// from: public long getImageBytes()
  ///
  /// Return the total bytes used by all image files in the shared/external
  /// storage hosted on this volume.
  ///
  /// This value only includes data which is isolated for each user on a
  /// multiuser device. This value does not include any app files which are all
  /// accounted under \#getAppBytes().
  ///
  /// Value is a non-negative number of bytes.
  ///@return Value is a non-negative number of bytes.
  int getImageBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getImageBytes, jni.JniType.longType, []).long;

  static final _id_getAppBytes =
      jniAccessors.getMethodIDOf(_classRef, "getAppBytes", "()J");

  /// from: public long getAppBytes()
  ///
  /// Return the total bytes used by app files in the shared/external storage
  /// hosted on this volume.
  ///
  /// This data is already accounted against individual apps as returned
  /// through StorageStats.
  ///
  /// This value only includes data which is isolated for each user on a
  /// multiuser device.
  ///
  /// Value is a non-negative number of bytes.
  ///@return Value is a non-negative number of bytes.
  int getAppBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getAppBytes, jni.JniType.longType, []).long;

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
