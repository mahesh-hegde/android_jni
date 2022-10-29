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

import "../Parcelable.dart" as parcelable_;

import "../../content/Context.dart" as context_;

import "../../content/Intent.dart" as intent_;

import "../Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.storage.StorageVolume
///
/// Information about a shared/external storage volume for a specific user.
///
///
/// A device always has one (and one only) primary storage volume, but it could have extra volumes,
/// like SD cards and USB drives. This object represents the logical view of a storage
/// volume for a specific user: different users might have different views for the same physical
/// volume (for example, if the volume is a built-in emulated storage).
///
///
/// The storage volume is not necessarily mounted, applications should use \#getState() to
/// verify its state.
///
///
/// Applications willing to read or write to this storage volume needs to get a permission from the
/// user first, which can be achieved in the following ways:
///
/// <ul>
/// <li>To get access to standard directories (like the Environment\#DIRECTORY_PICTURES), they
/// can use the \#createAccessIntent(String). This is the recommend way, since it provides a
/// simpler API and narrows the access to the given directory (and its descendants).
/// <li>To get access to any directory (and its descendants), they can use the Storage Acess
/// Framework APIs (such as Intent\#ACTION_OPEN_DOCUMENT and
/// Intent\#ACTION_OPEN_DOCUMENT_TREE, although these APIs do not guarantee the user will
/// select this specific volume.
/// <li>To get read and write access to the primary storage volume, applications can declare the
/// android.Manifest.permission\#READ_EXTERNAL_STORAGE and
/// android.Manifest.permission\#WRITE_EXTERNAL_STORAGE permissions respectively, with the
/// latter including the former. This approach is discouraged, since users may be hesitant to grant
/// broad access to all files contained on a storage device.
/// </ul>
///
/// It can be obtained through StorageManager\#getStorageVolumes() and
/// StorageManager\#getPrimaryStorageVolume() and also as an extra in some broadcasts
/// (see \#EXTRA_STORAGE_VOLUME).
///
///
/// See Environment\#getExternalStorageDirectory() for more info about shared/external
/// storage semantics.
class StorageVolume extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/storage/StorageVolume");
  StorageVolume.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.os.storage.StorageVolume> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final java.lang.String EXTRA_STORAGE_VOLUME
  ///
  /// Name of the Parcelable extra in the Intent\#ACTION_MEDIA_REMOVED,
  /// Intent\#ACTION_MEDIA_UNMOUNTED, Intent\#ACTION_MEDIA_CHECKING,
  /// Intent\#ACTION_MEDIA_NOFS, Intent\#ACTION_MEDIA_MOUNTED,
  /// Intent\#ACTION_MEDIA_SHARED, Intent\#ACTION_MEDIA_BAD_REMOVAL,
  /// Intent\#ACTION_MEDIA_UNMOUNTABLE, and Intent\#ACTION_MEDIA_EJECT broadcast that
  /// contains a StorageVolume.
  static const EXTRA_STORAGE_VOLUME = "android.os.storage.extra.STORAGE_VOLUME";

  static final _id_getDescription = jniAccessors.getMethodIDOf(_classRef,
      "getDescription", "(Landroid/content/Context;)Ljava/lang/String;");

  /// from: public java.lang.String getDescription(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a user-visible description of the volume.
  ///@return the volume description
  jni.JniString getDescription(context_.Context context) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDescription,
          jni.JniType.objectType,
          [context.reference]).object);

  static final _id_isPrimary =
      jniAccessors.getMethodIDOf(_classRef, "isPrimary", "()Z");

  /// from: public boolean isPrimary()
  ///
  /// Returns true if the volume is the primary shared/external storage, which is the volume
  /// backed by Environment\#getExternalStorageDirectory().
  bool isPrimary() => jniAccessors.callMethodWithArgs(
      reference, _id_isPrimary, jni.JniType.booleanType, []).boolean;

  static final _id_isRemovable =
      jniAccessors.getMethodIDOf(_classRef, "isRemovable", "()Z");

  /// from: public boolean isRemovable()
  ///
  /// Returns true if the volume is removable.
  ///@return is removable
  bool isRemovable() => jniAccessors.callMethodWithArgs(
      reference, _id_isRemovable, jni.JniType.booleanType, []).boolean;

  static final _id_isEmulated =
      jniAccessors.getMethodIDOf(_classRef, "isEmulated", "()Z");

  /// from: public boolean isEmulated()
  ///
  /// Returns true if the volume is emulated.
  ///@return is removable
  bool isEmulated() => jniAccessors.callMethodWithArgs(
      reference, _id_isEmulated, jni.JniType.booleanType, []).boolean;

  static final _id_getUuid =
      jniAccessors.getMethodIDOf(_classRef, "getUuid", "()Ljava/lang/String;");

  /// from: public java.lang.String getUuid()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the volume UUID, if any.
  ///@return This value may be {@code null}.
  jni.JniString getUuid() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUuid, jni.JniType.objectType, []).object);

  static final _id_getState =
      jniAccessors.getMethodIDOf(_classRef, "getState", "()Ljava/lang/String;");

  /// from: public java.lang.String getState()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the current state of the volume.
  ///@return one of Environment\#MEDIA_UNKNOWN, Environment\#MEDIA_REMOVED,
  ///         Environment\#MEDIA_UNMOUNTED, Environment\#MEDIA_CHECKING,
  ///         Environment\#MEDIA_NOFS, Environment\#MEDIA_MOUNTED,
  ///         Environment\#MEDIA_MOUNTED_READ_ONLY, Environment\#MEDIA_SHARED,
  ///         Environment\#MEDIA_BAD_REMOVAL, or Environment\#MEDIA_UNMOUNTABLE.
  jni.JniString getState() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getState, jni.JniType.objectType, []).object);

  static final _id_createAccessIntent = jniAccessors.getMethodIDOf(_classRef,
      "createAccessIntent", "(Ljava/lang/String;)Landroid/content/Intent;");

  /// from: public android.content.Intent createAccessIntent(java.lang.String directoryName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Builds an intent to give access to a standard storage directory or entire volume after
  /// obtaining the user's approval.
  ///
  /// When invoked, the system will ask the user to grant access to the requested directory (and
  /// its descendants). The result of the request will be returned to the activity through the
  /// {@code onActivityResult} method.
  ///
  /// To gain access to descendants (child, grandchild, etc) documents, use
  /// DocumentsContract\#buildDocumentUriUsingTree(Uri, String), or
  /// DocumentsContract\#buildChildDocumentsUriUsingTree(Uri, String) with the returned URI.
  ///
  /// If your application only needs to store internal data, consider using
  /// Context\#getExternalFilesDirs(String) Context.getExternalFilesDirs,
  /// Context\#getExternalCacheDirs(), or Context\#getExternalMediaDirs(), which
  /// require no permissions to read or write.
  ///
  /// Access to the entire volume is only available for non-primary volumes (for the primary
  /// volume, apps can use the android.Manifest.permission\#READ_EXTERNAL_STORAGE and
  /// android.Manifest.permission\#WRITE_EXTERNAL_STORAGE permissions) and should be used
  /// with caution, since users are more likely to deny access when asked for entire volume access
  /// rather than specific directories.
  ///@param directoryName must be one of Environment\#DIRECTORY_MUSIC,
  ///            Environment\#DIRECTORY_PODCASTS, Environment\#DIRECTORY_RINGTONES,
  ///            Environment\#DIRECTORY_ALARMS, Environment\#DIRECTORY_NOTIFICATIONS,
  ///            Environment\#DIRECTORY_PICTURES, Environment\#DIRECTORY_MOVIES,
  ///            Environment\#DIRECTORY_DOWNLOADS, Environment\#DIRECTORY_DCIM, or
  ///            Environment\#DIRECTORY_DOCUMENTS, or {@code null} to request access to the
  ///            entire volume.
  ///@return intent to request access, or {@code null} if the requested directory is invalid for
  ///         that volume.
  ///@see DocumentsContract
  intent_.Intent createAccessIntent(jni.JniString directoryName) =>
      intent_.Intent.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_createAccessIntent,
          jni.JniType.objectType,
          [directoryName.reference]).object);

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

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel parcel, int flags)
  void writeToParcel(parcel_.Parcel parcel, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [parcel.reference, flags]).check();
}
