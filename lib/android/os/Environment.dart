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

/// from: android.os.Environment
///
/// Provides access to environment variables.
class Environment extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/Environment");
  Environment.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_DIRECTORY_ALARMS = jniAccessors.getStaticFieldIDOf(
      _classRef, "DIRECTORY_ALARMS", "Ljava/lang/String;");

  /// from: static public java.lang.String DIRECTORY_ALARMS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place any audio files that should be
  /// in the list of alarms that the user can select (not as regular
  /// music).
  /// This may be combined with \#DIRECTORY_MUSIC,
  /// \#DIRECTORY_PODCASTS, \#DIRECTORY_NOTIFICATIONS,
  /// and \#DIRECTORY_RINGTONES as a series
  /// of directories to categories a particular audio file as more than one
  /// type.
  static jni.JniString get DIRECTORY_ALARMS =>
      jni.JniString.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_DIRECTORY_ALARMS, jni.JniType.objectType)
          .object);

  /// from: static public java.lang.String DIRECTORY_ALARMS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place any audio files that should be
  /// in the list of alarms that the user can select (not as regular
  /// music).
  /// This may be combined with \#DIRECTORY_MUSIC,
  /// \#DIRECTORY_PODCASTS, \#DIRECTORY_NOTIFICATIONS,
  /// and \#DIRECTORY_RINGTONES as a series
  /// of directories to categories a particular audio file as more than one
  /// type.
  static set DIRECTORY_ALARMS(jni.JniString value) =>
      jniEnv.SetStaticObjectField(
          _classRef, _id_DIRECTORY_ALARMS, value.reference);

  static final _id_DIRECTORY_DCIM = jniAccessors.getStaticFieldIDOf(
      _classRef, "DIRECTORY_DCIM", "Ljava/lang/String;");

  /// from: static public java.lang.String DIRECTORY_DCIM
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The traditional location for pictures and videos when mounting the
  /// device as a camera.  Note that this is primarily a convention for the
  /// top-level public directory, as this convention makes no sense elsewhere.
  static jni.JniString get DIRECTORY_DCIM => jni.JniString.fromRef(jniAccessors
      .getStaticField(_classRef, _id_DIRECTORY_DCIM, jni.JniType.objectType)
      .object);

  /// from: static public java.lang.String DIRECTORY_DCIM
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The traditional location for pictures and videos when mounting the
  /// device as a camera.  Note that this is primarily a convention for the
  /// top-level public directory, as this convention makes no sense elsewhere.
  static set DIRECTORY_DCIM(jni.JniString value) => jniEnv.SetStaticObjectField(
      _classRef, _id_DIRECTORY_DCIM, value.reference);

  static final _id_DIRECTORY_DOCUMENTS = jniAccessors.getStaticFieldIDOf(
      _classRef, "DIRECTORY_DOCUMENTS", "Ljava/lang/String;");

  /// from: static public java.lang.String DIRECTORY_DOCUMENTS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place documents that have been created by
  /// the user.
  static jni.JniString get DIRECTORY_DOCUMENTS => jni.JniString.fromRef(
      jniAccessors
          .getStaticField(
              _classRef, _id_DIRECTORY_DOCUMENTS, jni.JniType.objectType)
          .object);

  /// from: static public java.lang.String DIRECTORY_DOCUMENTS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place documents that have been created by
  /// the user.
  static set DIRECTORY_DOCUMENTS(jni.JniString value) =>
      jniEnv.SetStaticObjectField(
          _classRef, _id_DIRECTORY_DOCUMENTS, value.reference);

  static final _id_DIRECTORY_DOWNLOADS = jniAccessors.getStaticFieldIDOf(
      _classRef, "DIRECTORY_DOWNLOADS", "Ljava/lang/String;");

  /// from: static public java.lang.String DIRECTORY_DOWNLOADS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place files that have been downloaded by
  /// the user.  Note that this is primarily a convention for the top-level
  /// public directory, you are free to download files anywhere in your own
  /// private directories.  Also note that though the constant here is
  /// named DIRECTORY_DOWNLOADS (plural), the actual file name is non-plural for
  /// backwards compatibility reasons.
  static jni.JniString get DIRECTORY_DOWNLOADS => jni.JniString.fromRef(
      jniAccessors
          .getStaticField(
              _classRef, _id_DIRECTORY_DOWNLOADS, jni.JniType.objectType)
          .object);

  /// from: static public java.lang.String DIRECTORY_DOWNLOADS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place files that have been downloaded by
  /// the user.  Note that this is primarily a convention for the top-level
  /// public directory, you are free to download files anywhere in your own
  /// private directories.  Also note that though the constant here is
  /// named DIRECTORY_DOWNLOADS (plural), the actual file name is non-plural for
  /// backwards compatibility reasons.
  static set DIRECTORY_DOWNLOADS(jni.JniString value) =>
      jniEnv.SetStaticObjectField(
          _classRef, _id_DIRECTORY_DOWNLOADS, value.reference);

  static final _id_DIRECTORY_MOVIES = jniAccessors.getStaticFieldIDOf(
      _classRef, "DIRECTORY_MOVIES", "Ljava/lang/String;");

  /// from: static public java.lang.String DIRECTORY_MOVIES
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place movies that are available to
  /// the user.  Note that this is primarily a convention for the top-level
  /// public directory, as the media scanner will find and collect movies
  /// in any directory.
  static jni.JniString get DIRECTORY_MOVIES =>
      jni.JniString.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_DIRECTORY_MOVIES, jni.JniType.objectType)
          .object);

  /// from: static public java.lang.String DIRECTORY_MOVIES
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place movies that are available to
  /// the user.  Note that this is primarily a convention for the top-level
  /// public directory, as the media scanner will find and collect movies
  /// in any directory.
  static set DIRECTORY_MOVIES(jni.JniString value) =>
      jniEnv.SetStaticObjectField(
          _classRef, _id_DIRECTORY_MOVIES, value.reference);

  static final _id_DIRECTORY_MUSIC = jniAccessors.getStaticFieldIDOf(
      _classRef, "DIRECTORY_MUSIC", "Ljava/lang/String;");

  /// from: static public java.lang.String DIRECTORY_MUSIC
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place any audio files that should be
  /// in the regular list of music for the user.
  /// This may be combined with
  /// \#DIRECTORY_PODCASTS, \#DIRECTORY_NOTIFICATIONS,
  /// \#DIRECTORY_ALARMS, and \#DIRECTORY_RINGTONES as a series
  /// of directories to categories a particular audio file as more than one
  /// type.
  static jni.JniString get DIRECTORY_MUSIC => jni.JniString.fromRef(jniAccessors
      .getStaticField(_classRef, _id_DIRECTORY_MUSIC, jni.JniType.objectType)
      .object);

  /// from: static public java.lang.String DIRECTORY_MUSIC
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place any audio files that should be
  /// in the regular list of music for the user.
  /// This may be combined with
  /// \#DIRECTORY_PODCASTS, \#DIRECTORY_NOTIFICATIONS,
  /// \#DIRECTORY_ALARMS, and \#DIRECTORY_RINGTONES as a series
  /// of directories to categories a particular audio file as more than one
  /// type.
  static set DIRECTORY_MUSIC(jni.JniString value) =>
      jniEnv.SetStaticObjectField(
          _classRef, _id_DIRECTORY_MUSIC, value.reference);

  static final _id_DIRECTORY_NOTIFICATIONS = jniAccessors.getStaticFieldIDOf(
      _classRef, "DIRECTORY_NOTIFICATIONS", "Ljava/lang/String;");

  /// from: static public java.lang.String DIRECTORY_NOTIFICATIONS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place any audio files that should be
  /// in the list of notifications that the user can select (not as regular
  /// music).
  /// This may be combined with \#DIRECTORY_MUSIC,
  /// \#DIRECTORY_PODCASTS,
  /// \#DIRECTORY_ALARMS, and \#DIRECTORY_RINGTONES as a series
  /// of directories to categories a particular audio file as more than one
  /// type.
  static jni.JniString get DIRECTORY_NOTIFICATIONS =>
      jni.JniString.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_DIRECTORY_NOTIFICATIONS, jni.JniType.objectType)
          .object);

  /// from: static public java.lang.String DIRECTORY_NOTIFICATIONS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place any audio files that should be
  /// in the list of notifications that the user can select (not as regular
  /// music).
  /// This may be combined with \#DIRECTORY_MUSIC,
  /// \#DIRECTORY_PODCASTS,
  /// \#DIRECTORY_ALARMS, and \#DIRECTORY_RINGTONES as a series
  /// of directories to categories a particular audio file as more than one
  /// type.
  static set DIRECTORY_NOTIFICATIONS(jni.JniString value) =>
      jniEnv.SetStaticObjectField(
          _classRef, _id_DIRECTORY_NOTIFICATIONS, value.reference);

  static final _id_DIRECTORY_PICTURES = jniAccessors.getStaticFieldIDOf(
      _classRef, "DIRECTORY_PICTURES", "Ljava/lang/String;");

  /// from: static public java.lang.String DIRECTORY_PICTURES
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place pictures that are available to
  /// the user.  Note that this is primarily a convention for the top-level
  /// public directory, as the media scanner will find and collect pictures
  /// in any directory.
  static jni.JniString get DIRECTORY_PICTURES =>
      jni.JniString.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_DIRECTORY_PICTURES, jni.JniType.objectType)
          .object);

  /// from: static public java.lang.String DIRECTORY_PICTURES
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place pictures that are available to
  /// the user.  Note that this is primarily a convention for the top-level
  /// public directory, as the media scanner will find and collect pictures
  /// in any directory.
  static set DIRECTORY_PICTURES(jni.JniString value) =>
      jniEnv.SetStaticObjectField(
          _classRef, _id_DIRECTORY_PICTURES, value.reference);

  static final _id_DIRECTORY_PODCASTS = jniAccessors.getStaticFieldIDOf(
      _classRef, "DIRECTORY_PODCASTS", "Ljava/lang/String;");

  /// from: static public java.lang.String DIRECTORY_PODCASTS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place any audio files that should be
  /// in the list of podcasts that the user can select (not as regular
  /// music).
  /// This may be combined with \#DIRECTORY_MUSIC,
  /// \#DIRECTORY_NOTIFICATIONS,
  /// \#DIRECTORY_ALARMS, and \#DIRECTORY_RINGTONES as a series
  /// of directories to categories a particular audio file as more than one
  /// type.
  static jni.JniString get DIRECTORY_PODCASTS =>
      jni.JniString.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_DIRECTORY_PODCASTS, jni.JniType.objectType)
          .object);

  /// from: static public java.lang.String DIRECTORY_PODCASTS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place any audio files that should be
  /// in the list of podcasts that the user can select (not as regular
  /// music).
  /// This may be combined with \#DIRECTORY_MUSIC,
  /// \#DIRECTORY_NOTIFICATIONS,
  /// \#DIRECTORY_ALARMS, and \#DIRECTORY_RINGTONES as a series
  /// of directories to categories a particular audio file as more than one
  /// type.
  static set DIRECTORY_PODCASTS(jni.JniString value) =>
      jniEnv.SetStaticObjectField(
          _classRef, _id_DIRECTORY_PODCASTS, value.reference);

  static final _id_DIRECTORY_RINGTONES = jniAccessors.getStaticFieldIDOf(
      _classRef, "DIRECTORY_RINGTONES", "Ljava/lang/String;");

  /// from: static public java.lang.String DIRECTORY_RINGTONES
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place any audio files that should be
  /// in the list of ringtones that the user can select (not as regular
  /// music).
  /// This may be combined with \#DIRECTORY_MUSIC,
  /// \#DIRECTORY_PODCASTS, \#DIRECTORY_NOTIFICATIONS, and
  /// \#DIRECTORY_ALARMS as a series
  /// of directories to categories a particular audio file as more than one
  /// type.
  static jni.JniString get DIRECTORY_RINGTONES => jni.JniString.fromRef(
      jniAccessors
          .getStaticField(
              _classRef, _id_DIRECTORY_RINGTONES, jni.JniType.objectType)
          .object);

  /// from: static public java.lang.String DIRECTORY_RINGTONES
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard directory in which to place any audio files that should be
  /// in the list of ringtones that the user can select (not as regular
  /// music).
  /// This may be combined with \#DIRECTORY_MUSIC,
  /// \#DIRECTORY_PODCASTS, \#DIRECTORY_NOTIFICATIONS, and
  /// \#DIRECTORY_ALARMS as a series
  /// of directories to categories a particular audio file as more than one
  /// type.
  static set DIRECTORY_RINGTONES(jni.JniString value) =>
      jniEnv.SetStaticObjectField(
          _classRef, _id_DIRECTORY_RINGTONES, value.reference);

  /// from: static public final java.lang.String MEDIA_BAD_REMOVAL
  ///
  /// Storage state if the media was removed before it was unmounted.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_BAD_REMOVAL = "bad_removal";

  /// from: static public final java.lang.String MEDIA_CHECKING
  ///
  /// Storage state if the media is present and being disk-checked.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_CHECKING = "checking";

  /// from: static public final java.lang.String MEDIA_EJECTING
  ///
  /// Storage state if the media is in the process of being ejected.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_EJECTING = "ejecting";

  /// from: static public final java.lang.String MEDIA_MOUNTED
  ///
  /// Storage state if the media is present and mounted at its mount point with
  /// read/write access.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_MOUNTED = "mounted";

  /// from: static public final java.lang.String MEDIA_MOUNTED_READ_ONLY
  ///
  /// Storage state if the media is present and mounted at its mount point with
  /// read-only access.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_MOUNTED_READ_ONLY = "mounted_ro";

  /// from: static public final java.lang.String MEDIA_NOFS
  ///
  /// Storage state if the media is present but is blank or is using an
  /// unsupported filesystem.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_NOFS = "nofs";

  /// from: static public final java.lang.String MEDIA_REMOVED
  ///
  /// Storage state if the media is not present.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_REMOVED = "removed";

  /// from: static public final java.lang.String MEDIA_SHARED
  ///
  /// Storage state if the media is present not mounted, and shared via USB
  /// mass storage.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_SHARED = "shared";

  /// from: static public final java.lang.String MEDIA_UNKNOWN
  ///
  /// Unknown storage state, such as when a path isn't backed by known storage
  /// media.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_UNKNOWN = "unknown";

  /// from: static public final java.lang.String MEDIA_UNMOUNTABLE
  ///
  /// Storage state if the media is present but cannot be mounted. Typically
  /// this happens if the file system on the media is corrupted.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_UNMOUNTABLE = "unmountable";

  /// from: static public final java.lang.String MEDIA_UNMOUNTED
  ///
  /// Storage state if the media is present but not mounted.
  ///@see \#getExternalStorageState(File)
  static const MEDIA_UNMOUNTED = "unmounted";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Environment()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getRootDirectory = jniAccessors.getStaticMethodIDOf(
      _classRef, "getRootDirectory", "()Ljava/io/File;");

  /// from: static public java.io.File getRootDirectory()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return root of the "system" partition holding the core Android OS.
  /// Always present and mounted read-only.
  static jni.JniObject getRootDirectory() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getRootDirectory, jni.JniType.objectType, []).object);

  static final _id_getDataDirectory = jniAccessors.getStaticMethodIDOf(
      _classRef, "getDataDirectory", "()Ljava/io/File;");

  /// from: static public java.io.File getDataDirectory()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the user data directory.
  static jni.JniObject getDataDirectory() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getDataDirectory, jni.JniType.objectType, []).object);

  static final _id_getExternalStorageDirectory =
      jniAccessors.getStaticMethodIDOf(
          _classRef, "getExternalStorageDirectory", "()Ljava/io/File;");

  /// from: static public java.io.File getExternalStorageDirectory()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the primary shared/external storage directory. This directory may
  /// not currently be accessible if it has been mounted by the user on their
  /// computer, has been removed from the device, or some other problem has
  /// happened. You can determine its current state with
  /// \#getExternalStorageState().
  ///
  /// _Note: don't be confused by the word "external" here. This directory
  /// can better be thought as media/shared storage. It is a filesystem that
  /// can hold a relatively large amount of data and that is shared across all
  /// applications (does not enforce permissions). Traditionally this is an SD
  /// card, but it may also be implemented as built-in storage in a device that
  /// is distinct from the protected internal storage and can be mounted as a
  /// filesystem on a computer._
  ///
  /// On devices with multiple users (as described by UserManager),
  /// each user has their own isolated shared storage. Applications only have
  /// access to the shared storage for the user they're running as.
  ///
  /// In devices with multiple shared/external storage directories, this
  /// directory represents the primary storage that the user will interact
  /// with. Access to secondary storage is available through
  /// Context\#getExternalFilesDirs(String),
  /// Context\#getExternalCacheDirs(), and
  /// Context\#getExternalMediaDirs().
  ///
  /// Applications should not directly use this top-level directory, in order
  /// to avoid polluting the user's root namespace. Any files that are private
  /// to the application should be placed in a directory returned by
  /// android.content.Context\#getExternalFilesDir Context.getExternalFilesDir, which the system will take care of deleting
  /// if the application is uninstalled. Other shared files should be placed in
  /// one of the directories returned by
  /// \#getExternalStoragePublicDirectory.
  ///
  /// Writing to this path requires the
  /// android.Manifest.permission\#WRITE_EXTERNAL_STORAGE permission,
  /// and starting in android.os.Build.VERSION_CODES\#KITKAT, read access requires the
  /// android.Manifest.permission\#READ_EXTERNAL_STORAGE permission,
  /// which is automatically granted if you hold the write permission.
  ///
  /// Starting in android.os.Build.VERSION_CODES\#KITKAT, if your
  /// application only needs to store internal data, consider using
  /// Context\#getExternalFilesDir(String),
  /// Context\#getExternalCacheDir(), or
  /// Context\#getExternalMediaDirs(), which require no permissions to
  /// read or write.
  ///
  /// This path may change between platform versions, so applications should
  /// only persist relative paths.
  ///
  /// Here is an example of typical code to monitor the state of external
  /// storage:
  ///
  /// {@sample development/samples/ApiDemos/src/com/example/android/apis/content/ExternalStorage.java
  /// monitor_storage}
  ///@see \#getExternalStorageState()
  ///@see \#isExternalStorageRemovable()
  static jni.JniObject getExternalStorageDirectory() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getExternalStorageDirectory, jni.JniType.objectType, []).object);

  static final _id_getExternalStoragePublicDirectory =
      jniAccessors.getStaticMethodIDOf(
          _classRef,
          "getExternalStoragePublicDirectory",
          "(Ljava/lang/String;)Ljava/io/File;");

  /// from: static public java.io.File getExternalStoragePublicDirectory(java.lang.String type)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get a top-level shared/external storage directory for placing files of a
  /// particular type. This is where the user will typically place and manage
  /// their own files, so you should be careful about what you put here to
  /// ensure you don't erase their files or get in the way of their own
  /// organization.
  ///
  /// On devices with multiple users (as described by UserManager),
  /// each user has their own isolated shared storage. Applications only have
  /// access to the shared storage for the user they're running as.
  ///
  ///
  ///
  /// Here is an example of typical code to manipulate a picture on the public
  /// shared storage:
  ///
  ///
  /// {@sample development/samples/ApiDemos/src/com/example/android/apis/content/ExternalStorage.java
  /// public_picture}
  ///@param type The type of storage directory to return. Should be one of
  ///            \#DIRECTORY_MUSIC, \#DIRECTORY_PODCASTS,
  ///            \#DIRECTORY_RINGTONES, \#DIRECTORY_ALARMS,
  ///            \#DIRECTORY_NOTIFICATIONS, \#DIRECTORY_PICTURES,
  ///            \#DIRECTORY_MOVIES, \#DIRECTORY_DOWNLOADS,
  ///            \#DIRECTORY_DCIM, or \#DIRECTORY_DOCUMENTS. May not be null.
  ///@return Returns the File path for the directory. Note that this directory
  ///         may not yet exist, so you must make sure it exists before using
  ///         it such as with File\#mkdirs File.mkdirs().
  static jni.JniObject getExternalStoragePublicDirectory(jni.JniString type) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getExternalStoragePublicDirectory,
          jni.JniType.objectType,
          [type.reference]).object);

  static final _id_getDownloadCacheDirectory = jniAccessors.getStaticMethodIDOf(
      _classRef, "getDownloadCacheDirectory", "()Ljava/io/File;");

  /// from: static public java.io.File getDownloadCacheDirectory()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the download/cache content directory.
  static jni.JniObject getDownloadCacheDirectory() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getDownloadCacheDirectory, jni.JniType.objectType, []).object);

  static final _id_getExternalStorageState = jniAccessors.getStaticMethodIDOf(
      _classRef, "getExternalStorageState", "()Ljava/lang/String;");

  /// from: static public java.lang.String getExternalStorageState()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the current state of the primary shared/external storage media.
  ///@see \#getExternalStorageDirectory()
  ///@return one of \#MEDIA_UNKNOWN, \#MEDIA_REMOVED,
  ///         \#MEDIA_UNMOUNTED, \#MEDIA_CHECKING,
  ///         \#MEDIA_NOFS, \#MEDIA_MOUNTED,
  ///         \#MEDIA_MOUNTED_READ_ONLY, \#MEDIA_SHARED,
  ///         \#MEDIA_BAD_REMOVAL, or \#MEDIA_UNMOUNTABLE.
  static jni.JniString getExternalStorageState() =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getExternalStorageState, jni.JniType.objectType, []).object);

  static final _id_getStorageState = jniAccessors.getStaticMethodIDOf(
      _classRef, "getStorageState", "(Ljava/io/File;)Ljava/lang/String;");

  /// from: static public java.lang.String getStorageState(java.io.File path)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated use \#getExternalStorageState(File)
  static jni.JniString getStorageState(jni.JniObject path) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getStorageState,
          jni.JniType.objectType,
          [path.reference]).object);

  static final _id_getExternalStorageState1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getExternalStorageState",
      "(Ljava/io/File;)Ljava/lang/String;");

  /// from: static public java.lang.String getExternalStorageState(java.io.File path)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the current state of the shared/external storage media at the
  /// given path.
  ///@return one of \#MEDIA_UNKNOWN, \#MEDIA_REMOVED,
  ///         \#MEDIA_UNMOUNTED, \#MEDIA_CHECKING,
  ///         \#MEDIA_NOFS, \#MEDIA_MOUNTED,
  ///         \#MEDIA_MOUNTED_READ_ONLY, \#MEDIA_SHARED,
  ///         \#MEDIA_BAD_REMOVAL, or \#MEDIA_UNMOUNTABLE.
  static jni.JniString getExternalStorageState1(jni.JniObject path) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getExternalStorageState1,
          jni.JniType.objectType,
          [path.reference]).object);

  static final _id_isExternalStorageRemovable = jniAccessors
      .getStaticMethodIDOf(_classRef, "isExternalStorageRemovable", "()Z");

  /// from: static public boolean isExternalStorageRemovable()
  ///
  /// Returns whether the primary shared/external storage media is physically
  /// removable.
  ///@return true if the storage device can be removed (such as an SD card),
  ///         or false if the storage device is built in and cannot be
  ///         physically removed.
  static bool isExternalStorageRemovable() =>
      jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_isExternalStorageRemovable, jni.JniType.booleanType, []).boolean;

  static final _id_isExternalStorageRemovable1 =
      jniAccessors.getStaticMethodIDOf(
          _classRef, "isExternalStorageRemovable", "(Ljava/io/File;)Z");

  /// from: static public boolean isExternalStorageRemovable(java.io.File path)
  ///
  /// Returns whether the shared/external storage media at the given path is
  /// physically removable.
  ///@return true if the storage device can be removed (such as an SD card),
  ///         or false if the storage device is built in and cannot be
  ///         physically removed.
  ///@throws IllegalArgumentException if the path is not a valid storage
  ///             device.
  static bool isExternalStorageRemovable1(jni.JniObject path) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_isExternalStorageRemovable1,
          jni.JniType.booleanType,
          [path.reference]).boolean;

  static final _id_isExternalStorageEmulated = jniAccessors.getStaticMethodIDOf(
      _classRef, "isExternalStorageEmulated", "()Z");

  /// from: static public boolean isExternalStorageEmulated()
  ///
  /// Returns whether the primary shared/external storage media is emulated.
  ///
  /// The contents of emulated storage devices are backed by a private user
  /// data partition, which means there is little benefit to apps storing data
  /// here instead of the private directories returned by
  /// Context\#getFilesDir(), etc.
  ///
  /// This returns true when emulated storage is backed by either internal
  /// storage or an adopted storage device.
  ///@see DevicePolicyManager\#setStorageEncryption(android.content.ComponentName,
  ///      boolean)
  static bool isExternalStorageEmulated() =>
      jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_isExternalStorageEmulated, jni.JniType.booleanType, []).boolean;

  static final _id_isExternalStorageEmulated1 =
      jniAccessors.getStaticMethodIDOf(
          _classRef, "isExternalStorageEmulated", "(Ljava/io/File;)Z");

  /// from: static public boolean isExternalStorageEmulated(java.io.File path)
  ///
  /// Returns whether the shared/external storage media at the given path is
  /// emulated.
  ///
  /// The contents of emulated storage devices are backed by a private user
  /// data partition, which means there is little benefit to apps storing data
  /// here instead of the private directories returned by
  /// Context\#getFilesDir(), etc.
  ///
  /// This returns true when emulated storage is backed by either internal
  /// storage or an adopted storage device.
  ///@throws IllegalArgumentException if the path is not a valid storage
  ///             device.
  static bool isExternalStorageEmulated1(jni.JniObject path) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_isExternalStorageEmulated1,
          jni.JniType.booleanType,
          [path.reference]).boolean;
}