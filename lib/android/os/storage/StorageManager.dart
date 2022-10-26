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

import "OnObbStateChangeListener.dart" as onobbstatechangelistener_;

import "StorageVolume.dart" as storagevolume_;

import "../ParcelFileDescriptor.dart" as parcelfiledescriptor_;

import "../ProxyFileDescriptorCallback.dart" as proxyfiledescriptorcallback_;

import "../Handler.dart" as handler_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.storage.StorageManager
///
/// StorageManager is the interface to the systems storage service. The storage
/// manager handles storage-related items such as Opaque Binary Blobs (OBBs).
///
/// OBBs contain a filesystem that maybe be encrypted on disk and mounted
/// on-demand from an application. OBBs are a good way of providing large amounts
/// of binary assets without packaging them into APKs as they may be multiple
/// gigabytes in size. However, due to their size, they're most likely stored in
/// a shared storage pool accessible from all programs. The system does not
/// guarantee the security of the OBB file itself: if any program modifies the
/// OBB, there is no guarantee that a read from that OBB will produce the
/// expected output.
class StorageManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/storage/StorageManager");
  StorageManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_MANAGE_STORAGE
  ///
  /// Activity Action: Allows the user to manage their storage. This activity
  /// provides the ability to free up space on the device by deleting data such
  /// as apps.
  ///
  /// If the sending application has a specific storage device or allocation
  /// size in mind, they can optionally define \#EXTRA_UUID or
  /// \#EXTRA_REQUESTED_BYTES, respectively.
  ///
  /// This intent should be launched using
  /// Activity\#startActivityForResult(Intent, int) so that the user
  /// knows which app is requesting the storage space. The returned result will
  /// be Activity\#RESULT_OK if the requested space was made available,
  /// or Activity\#RESULT_CANCELED otherwise.
  static const ACTION_MANAGE_STORAGE =
      "android.os.storage.action.MANAGE_STORAGE";

  /// from: static public final java.lang.String EXTRA_REQUESTED_BYTES
  ///
  /// Extra used to indicate the total size (in bytes) that an application is
  /// interested in allocating.
  ///
  /// When defined, the management UI will help guide the user to free up
  /// enough disk space to reach this requested value.
  ///@see \#ACTION_MANAGE_STORAGE
  static const EXTRA_REQUESTED_BYTES =
      "android.os.storage.extra.REQUESTED_BYTES";

  /// from: static public final java.lang.String EXTRA_UUID
  ///
  /// Extra UUID used to indicate the storage volume where an
  /// application is interested in allocating or managing disk space.
  ///@see \#ACTION_MANAGE_STORAGE
  ///@see \#UUID_DEFAULT
  ///@see \#getUuidForPath(File)
  ///@see Intent\#putExtra(String, java.io.Serializable)
  static const EXTRA_UUID = "android.os.storage.extra.UUID";

  static final _id_UUID_DEFAULT = jniAccessors.getStaticFieldIDOf(
      _classRef, "UUID_DEFAULT", "Ljava/util/UUID;");

  /// from: static public final java.util.UUID UUID_DEFAULT
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// UUID representing the default internal storage of this device which
  /// provides Environment\#getDataDirectory().
  ///
  /// This value is constant across all devices and it will never change, and
  /// thus it cannot be used to uniquely identify a particular physical device.
  ///@see \#getUuidForPath(File)
  ///@see ApplicationInfo\#storageUuid
  static jni.JniObject get UUID_DEFAULT => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_UUID_DEFAULT, jni.JniType.objectType)
      .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  StorageManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_mountObb = jniAccessors.getMethodIDOf(_classRef, "mountObb",
      "(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z");

  /// from: public boolean mountObb(java.lang.String rawPath, java.lang.String key, android.os.storage.OnObbStateChangeListener listener)
  ///
  /// Mount an Opaque Binary Blob (OBB) file. If a <code>key</code> is
  /// specified, it is supplied to the mounting process to be used in any
  /// encryption used in the OBB.
  ///
  /// The OBB will remain mounted for as long as the StorageManager reference
  /// is held by the application. As soon as this reference is lost, the OBBs
  /// in use will be unmounted. The OnObbStateChangeListener registered
  /// with this call will receive the success or failure of this operation.
  ///
  /// _Note:_ you can only mount OBB files for which the OBB tag on the
  /// file matches a package ID that is owned by the calling program's UID.
  /// That is, shared UID applications can attempt to mount any other
  /// application's OBB that shares its UID.
  ///@param rawPath the path to the OBB file
  ///@param key secret used to encrypt the OBB; may be <code>null</code> if no
  ///            encryption was used on the OBB.
  ///@param listener will receive the success or failure of the operation
  ///@return whether the mount call was successfully queued or not
  bool mountObb(jni.JniString rawPath, jni.JniString key,
          onobbstatechangelistener_.OnObbStateChangeListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_mountObb,
          jni.JniType.booleanType,
          [rawPath.reference, key.reference, listener.reference]).boolean;

  static final _id_unmountObb = jniAccessors.getMethodIDOf(
      _classRef,
      "unmountObb",
      "(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z");

  /// from: public boolean unmountObb(java.lang.String rawPath, boolean force, android.os.storage.OnObbStateChangeListener listener)
  ///
  /// Unmount an Opaque Binary Blob (OBB) file asynchronously. If the
  /// <code>force</code> flag is true, it will kill any application needed to
  /// unmount the given OBB (even the calling application).
  ///
  /// The OnObbStateChangeListener registered with this call will
  /// receive the success or failure of this operation.
  ///
  /// _Note:_ you can only mount OBB files for which the OBB tag on the
  /// file matches a package ID that is owned by the calling program's UID.
  /// That is, shared UID applications can obtain access to any other
  /// application's OBB that shares its UID.
  ///
  ///@param rawPath path to the OBB file
  ///@param force whether to kill any programs using this in order to unmount
  ///            it
  ///@param listener will receive the success or failure of the operation
  ///@return whether the unmount call was successfully queued or not
  bool unmountObb(jni.JniString rawPath, bool force,
          onobbstatechangelistener_.OnObbStateChangeListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_unmountObb,
          jni.JniType.booleanType,
          [rawPath.reference, force, listener.reference]).boolean;

  static final _id_isObbMounted = jniAccessors.getMethodIDOf(
      _classRef, "isObbMounted", "(Ljava/lang/String;)Z");

  /// from: public boolean isObbMounted(java.lang.String rawPath)
  ///
  /// Check whether an Opaque Binary Blob (OBB) is mounted or not.
  ///@param rawPath path to OBB image
  ///@return true if OBB is mounted; false if not mounted or on error
  bool isObbMounted(jni.JniString rawPath) => jniAccessors.callMethodWithArgs(
      reference,
      _id_isObbMounted,
      jni.JniType.booleanType,
      [rawPath.reference]).boolean;

  static final _id_getMountedObbPath = jniAccessors.getMethodIDOf(
      _classRef, "getMountedObbPath", "(Ljava/lang/String;)Ljava/lang/String;");

  /// from: public java.lang.String getMountedObbPath(java.lang.String rawPath)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Check the mounted path of an Opaque Binary Blob (OBB) file. This will
  /// give you the path to where you can obtain access to the internals of the
  /// OBB.
  ///@param rawPath path to OBB image
  ///@return absolute path to mounted OBB image data or <code>null</code> if
  ///         not mounted or exception encountered trying to read status
  jni.JniString getMountedObbPath(jni.JniString rawPath) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getMountedObbPath,
          jni.JniType.objectType,
          [rawPath.reference]).object);

  static final _id_getUuidForPath = jniAccessors.getMethodIDOf(
      _classRef, "getUuidForPath", "(Ljava/io/File;)Ljava/util/UUID;");

  /// from: public java.util.UUID getUuidForPath(java.io.File path)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a UUID identifying the storage volume that hosts the given
  /// filesystem path.
  ///
  /// If this path is hosted by the default internal storage of the device at
  /// Environment\#getDataDirectory(), the returned value will be
  /// \#UUID_DEFAULT.
  ///@throws IOException when the storage device hosting the given path isn't
  ///             present, or when it doesn't have a valid UUID.
  ///@param path This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  jni.JniObject getUuidForPath(jni.JniObject path) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getUuidForPath, jni.JniType.objectType, [path.reference]).object);

  static final _id_isAllocationSupported = jniAccessors.getMethodIDOf(
      _classRef, "isAllocationSupported", "(Ljava/io/FileDescriptor;)Z");

  /// from: public boolean isAllocationSupported(java.io.FileDescriptor fd)
  ///
  /// Test if the given file descriptor supports allocation of disk space using
  /// \#allocateBytes(FileDescriptor, long).
  ///@param fd This value must never be {@code null}.
  bool isAllocationSupported(jni.JniObject fd) =>
      jniAccessors.callMethodWithArgs(reference, _id_isAllocationSupported,
          jni.JniType.booleanType, [fd.reference]).boolean;

  static final _id_getStorageVolume = jniAccessors.getMethodIDOf(_classRef,
      "getStorageVolume", "(Ljava/io/File;)Landroid/os/storage/StorageVolume;");

  /// from: public android.os.storage.StorageVolume getStorageVolume(java.io.File file)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the StorageVolume that contains the given file, or {@code null} if none.
  storagevolume_.StorageVolume getStorageVolume(jni.JniObject file) =>
      storagevolume_.StorageVolume.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getStorageVolume,
          jni.JniType.objectType,
          [file.reference]).object);

  static final _id_getStorageVolumes = jniAccessors.getMethodIDOf(
      _classRef, "getStorageVolumes", "()Ljava/util/List;");

  /// from: public java.util.List<android.os.storage.StorageVolume> getStorageVolumes()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the list of shared/external storage volumes available to the
  /// current user. This includes both the primary shared storage device and
  /// any attached external volumes including SD cards and USB drives.
  ///@see Environment\#getExternalStorageDirectory()
  ///@see StorageVolume\#createAccessIntent(String)
  ///@return This value will never be {@code null}.
  jni.JniObject getStorageVolumes() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getStorageVolumes, jni.JniType.objectType, []).object);

  static final _id_getPrimaryStorageVolume = jniAccessors.getMethodIDOf(
      _classRef,
      "getPrimaryStorageVolume",
      "()Landroid/os/storage/StorageVolume;");

  /// from: public android.os.storage.StorageVolume getPrimaryStorageVolume()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the primary shared/external storage volume available to the
  /// current user. This volume is the same storage device returned by
  /// Environment\#getExternalStorageDirectory() and
  /// Context\#getExternalFilesDir(String).
  ///@return This value will never be {@code null}.
  storagevolume_.StorageVolume getPrimaryStorageVolume() =>
      storagevolume_.StorageVolume.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getPrimaryStorageVolume,
          jni.JniType.objectType, []).object);

  static final _id_isEncrypted =
      jniAccessors.getMethodIDOf(_classRef, "isEncrypted", "(Ljava/io/File;)Z");

  /// from: public boolean isEncrypted(java.io.File file)
  ///
  /// Return if data stored at or under the given path will be encrypted while
  /// at rest. This can help apps avoid the overhead of double-encrypting data.
  bool isEncrypted(jni.JniObject file) => jniAccessors.callMethodWithArgs(
      reference,
      _id_isEncrypted,
      jni.JniType.booleanType,
      [file.reference]).boolean;

  static final _id_openProxyFileDescriptor = jniAccessors.getMethodIDOf(
      _classRef,
      "openProxyFileDescriptor",
      "(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)Landroid/os/ParcelFileDescriptor;");

  /// from: public android.os.ParcelFileDescriptor openProxyFileDescriptor(int mode, android.os.ProxyFileDescriptorCallback callback, android.os.Handler handler)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Opens a seekable ParcelFileDescriptor that proxies all low-level
  /// I/O requests back to the given ProxyFileDescriptorCallback.
  ///
  /// This can be useful when you want to provide quick access to a large file
  /// that isn't backed by a real file on disk, such as a file on a network
  /// share, cloud storage service, etc. As an example, you could respond to a
  /// ContentResolver\#openFileDescriptor(android.net.Uri, String)
  /// request by returning a ParcelFileDescriptor created with this
  /// method, and then stream the content on-demand as requested.
  ///
  /// Another useful example might be where you have an encrypted file that
  /// you're willing to decrypt on-demand, but where you want to avoid
  /// persisting the cleartext version.
  ///@param mode The desired access mode, must be one of
  ///            ParcelFileDescriptor\#MODE_READ_ONLY,
  ///            ParcelFileDescriptor\#MODE_WRITE_ONLY, or
  ///            ParcelFileDescriptor\#MODE_READ_WRITE
  ///@param callback Callback to process file operation requests issued on
  ///            returned file descriptor.
  ///@param handler Handler that invokes callback methods.
  ///@return Seekable ParcelFileDescriptor.
  /// This value will never be {@code null}.
  ///@throws IOException
  parcelfiledescriptor_.ParcelFileDescriptor openProxyFileDescriptor(
          int mode,
          proxyfiledescriptorcallback_.ProxyFileDescriptorCallback callback,
          handler_.Handler handler) =>
      parcelfiledescriptor_.ParcelFileDescriptor.fromRef(jniAccessors
          .callMethodWithArgs(
              reference,
              _id_openProxyFileDescriptor,
              jni.JniType.objectType,
              [mode, callback.reference, handler.reference]).object);

  static final _id_getCacheQuotaBytes = jniAccessors.getMethodIDOf(
      _classRef, "getCacheQuotaBytes", "(Ljava/util/UUID;)J");

  /// from: public long getCacheQuotaBytes(java.util.UUID storageUuid)
  ///
  /// Return quota size in bytes for all cached data belonging to the calling
  /// app on the given storage volume.
  ///
  /// If your app goes above this quota, your cached files will be some of the
  /// first to be deleted when additional disk space is needed. Conversely, if
  /// your app stays under this quota, your cached files will be some of the
  /// last to be deleted when additional disk space is needed.
  ///
  /// This quota will change over time depending on how frequently the user
  /// interacts with your app, and depending on how much system-wide disk space
  /// is used.
  /// <p class="note">
  /// Note: if your app uses the {@code android:sharedUserId} manifest feature,
  /// then cached data for all packages in your shared UID is tracked together
  /// as a single unit.
  ///
  ///
  ///
  /// This method may take several seconds to complete, so it should
  ///  *            only be called from a worker thread.
  /// Value is a non-negative number of bytes.
  ///@param storageUuid the UUID of the storage volume that you're interested
  ///            in. The UUID for a specific path can be obtained using
  ///            \#getUuidForPath(File).
  /// This value must never be {@code null}.
  ///@throws IOException when the storage device isn't present, or when it
  ///             doesn't support cache quotas.
  ///@see \#getCacheSizeBytes(UUID)
  ///@return Value is a non-negative number of bytes.
  int getCacheQuotaBytes(jni.JniObject storageUuid) =>
      jniAccessors.callMethodWithArgs(reference, _id_getCacheQuotaBytes,
          jni.JniType.longType, [storageUuid.reference]).long;

  static final _id_getCacheSizeBytes = jniAccessors.getMethodIDOf(
      _classRef, "getCacheSizeBytes", "(Ljava/util/UUID;)J");

  /// from: public long getCacheSizeBytes(java.util.UUID storageUuid)
  ///
  /// Return total size in bytes of all cached data belonging to the calling
  /// app on the given storage volume.
  ///
  /// Cached data tracked by this method always includes
  /// Context\#getCacheDir() and Context\#getCodeCacheDir(), and
  /// it also includes Context\#getExternalCacheDir() if the primary
  /// shared/external storage is hosted on the same storage device as your
  /// private data.
  /// <p class="note">
  /// Note: if your app uses the {@code android:sharedUserId} manifest feature,
  /// then cached data for all packages in your shared UID is tracked together
  /// as a single unit.
  ///
  ///
  ///
  /// This method may take several seconds to complete, so it should
  ///  *            only be called from a worker thread.
  /// Value is a non-negative number of bytes.
  ///@param storageUuid the UUID of the storage volume that you're interested
  ///            in. The UUID for a specific path can be obtained using
  ///            \#getUuidForPath(File).
  /// This value must never be {@code null}.
  ///@throws IOException when the storage device isn't present, or when it
  ///             doesn't support cache quotas.
  ///@see \#getCacheQuotaBytes(UUID)
  ///@return Value is a non-negative number of bytes.
  int getCacheSizeBytes(jni.JniObject storageUuid) =>
      jniAccessors.callMethodWithArgs(reference, _id_getCacheSizeBytes,
          jni.JniType.longType, [storageUuid.reference]).long;

  static final _id_getAllocatableBytes = jniAccessors.getMethodIDOf(
      _classRef, "getAllocatableBytes", "(Ljava/util/UUID;)J");

  /// from: public long getAllocatableBytes(java.util.UUID storageUuid)
  ///
  /// Return the maximum number of new bytes that your app can allocate for
  /// itself on the given storage volume. This value is typically larger than
  /// File\#getUsableSpace(), since the system may be willing to delete
  /// cached files to satisfy an allocation request. You can then allocate
  /// space for yourself using \#allocateBytes(UUID, long) or
  /// \#allocateBytes(FileDescriptor, long).
  ///
  /// This method is best used as a pre-flight check, such as deciding if there
  /// is enough space to store an entire music album before you allocate space
  /// for each audio file in the album. Attempts to allocate disk space beyond
  /// the returned value will fail.
  ///
  /// If the returned value is not large enough for the data you'd like to
  /// persist, you can launch \#ACTION_MANAGE_STORAGE with the
  /// \#EXTRA_UUID and \#EXTRA_REQUESTED_BYTES options to help
  /// involve the user in freeing up disk space.
  ///
  /// If you're progressively allocating an unbounded amount of storage space
  /// (such as when recording a video) you should avoid calling this method
  /// more than once every 30 seconds.
  /// <p class="note">
  /// Note: if your app uses the {@code android:sharedUserId} manifest feature,
  /// then allocatable space for all packages in your shared UID is tracked
  /// together as a single unit.
  ///
  ///
  ///
  /// This method may take several seconds to complete, so it should
  ///  *            only be called from a worker thread.
  /// Value is a non-negative number of bytes.
  ///@param storageUuid the UUID of the storage volume where you're
  ///            considering allocating disk space, since allocatable space can
  ///            vary widely depending on the underlying storage device. The
  ///            UUID for a specific path can be obtained using
  ///            \#getUuidForPath(File).
  /// This value must never be {@code null}.
  ///@return the maximum number of new bytes that the calling app can allocate
  ///         using \#allocateBytes(UUID, long) or
  ///         \#allocateBytes(FileDescriptor, long).
  /// Value is a non-negative number of bytes.
  ///@throws IOException when the storage device isn't present, or when it
  ///             doesn't support allocating space.
  int getAllocatableBytes(jni.JniObject storageUuid) =>
      jniAccessors.callMethodWithArgs(reference, _id_getAllocatableBytes,
          jni.JniType.longType, [storageUuid.reference]).long;

  static final _id_allocateBytes = jniAccessors.getMethodIDOf(
      _classRef, "allocateBytes", "(Ljava/util/UUID;J)V");

  /// from: public void allocateBytes(java.util.UUID storageUuid, long bytes)
  ///
  /// Allocate the requested number of bytes for your application to use on the
  /// given storage volume. This will cause the system to delete any cached
  /// files necessary to satisfy your request.
  ///
  /// Attempts to allocate disk space beyond the value returned by
  /// \#getAllocatableBytes(UUID) will fail.
  ///
  /// Since multiple apps can be running simultaneously, this method may be
  /// subject to race conditions. If possible, consider using
  /// \#allocateBytes(FileDescriptor, long) which will guarantee
  /// that bytes are allocated to an opened file.
  ///
  /// If you're progressively allocating an unbounded amount of storage space
  /// (such as when recording a video) you should avoid calling this method
  /// more than once every 60 seconds.
  ///
  /// This method may take several seconds to complete, so it should
  ///  *            only be called from a worker thread.
  ///@param storageUuid the UUID of the storage volume where you'd like to
  ///            allocate disk space. The UUID for a specific path can be
  ///            obtained using \#getUuidForPath(File).
  /// This value must never be {@code null}.
  ///@param bytes the number of bytes to allocate.
  /// Value is a non-negative number of bytes.
  ///@throws IOException when the storage device isn't present, or when it
  ///             doesn't support allocating space, or if the device had
  ///             trouble allocating the requested space.
  ///@see \#getAllocatableBytes(UUID)
  void allocateBytes(jni.JniObject storageUuid, int bytes) =>
      jniAccessors.callMethodWithArgs(reference, _id_allocateBytes,
          jni.JniType.voidType, [storageUuid.reference, bytes]).check();

  static final _id_allocateBytes1 = jniAccessors.getMethodIDOf(
      _classRef, "allocateBytes", "(Ljava/io/FileDescriptor;J)V");

  /// from: public void allocateBytes(java.io.FileDescriptor fd, long bytes)
  ///
  /// Allocate the requested number of bytes for your application to use in the
  /// given open file. This will cause the system to delete any cached files
  /// necessary to satisfy your request.
  ///
  /// Attempts to allocate disk space beyond the value returned by
  /// \#getAllocatableBytes(UUID) will fail.
  ///
  /// This method guarantees that bytes have been allocated to the opened file,
  /// otherwise it will throw if fast allocation is not possible. Fast
  /// allocation is typically only supported in private app data directories,
  /// and on shared/external storage devices which are emulated.
  ///
  /// If you're progressively allocating an unbounded amount of storage space
  /// (such as when recording a video) you should avoid calling this method
  /// more than once every 60 seconds.
  ///
  /// This method may take several seconds to complete, so it should
  ///  *            only be called from a worker thread.
  ///@param fd the open file that you'd like to allocate disk space for.
  ///@param bytes the number of bytes to allocate. This is the desired final
  ///            size of the open file. If the open file is smaller than this
  ///            requested size, it will be extended without modifying any
  ///            existing contents. If the open file is larger than this
  ///            requested size, it will be truncated.
  /// Value is a non-negative number of bytes.
  ///@throws IOException when the storage device isn't present, or when it
  ///             doesn't support allocating space, or if the device had
  ///             trouble allocating the requested space.
  ///@see \#getAllocatableBytes(UUID, int)
  ///@see \#isAllocationSupported(FileDescriptor)
  ///@see Environment\#isExternalStorageEmulated(File)
  void allocateBytes1(jni.JniObject fd, int bytes) =>
      jniAccessors.callMethodWithArgs(reference, _id_allocateBytes1,
          jni.JniType.voidType, [fd.reference, bytes]).check();

  static final _id_setCacheBehaviorGroup = jniAccessors.getMethodIDOf(
      _classRef, "setCacheBehaviorGroup", "(Ljava/io/File;Z)V");

  /// from: public void setCacheBehaviorGroup(java.io.File path, boolean group)
  ///
  /// Enable or disable special cache behavior that treats this directory and
  /// its contents as an entire group.
  ///
  /// When enabled and this directory is considered for automatic deletion by
  /// the OS, all contained files will either be deleted together, or not at
  /// all. This is useful when you have a directory that contains several
  /// related metadata files that depend on each other, such as movie file and
  /// a subtitle file.
  ///
  /// When enabled, the _newest_ File\#lastModified() value of
  /// any contained files is considered the modified time of the entire
  /// directory.
  ///
  /// This behavior can only be set on a directory, and it applies recursively
  /// to all contained files and directories.
  void setCacheBehaviorGroup(jni.JniObject path, bool group) =>
      jniAccessors.callMethodWithArgs(reference, _id_setCacheBehaviorGroup,
          jni.JniType.voidType, [path.reference, group]).check();

  static final _id_isCacheBehaviorGroup = jniAccessors.getMethodIDOf(
      _classRef, "isCacheBehaviorGroup", "(Ljava/io/File;)Z");

  /// from: public boolean isCacheBehaviorGroup(java.io.File path)
  ///
  /// Read the current value set by
  /// \#setCacheBehaviorGroup(File, boolean).
  bool isCacheBehaviorGroup(jni.JniObject path) =>
      jniAccessors.callMethodWithArgs(reference, _id_isCacheBehaviorGroup,
          jni.JniType.booleanType, [path.reference]).boolean;

  static final _id_setCacheBehaviorTombstone = jniAccessors.getMethodIDOf(
      _classRef, "setCacheBehaviorTombstone", "(Ljava/io/File;Z)V");

  /// from: public void setCacheBehaviorTombstone(java.io.File path, boolean tombstone)
  ///
  /// Enable or disable special cache behavior that leaves deleted cache files
  /// intact as tombstones.
  ///
  /// When enabled and a file contained in this directory is automatically
  /// deleted by the OS, the file will be truncated to have a length of 0 bytes
  /// instead of being fully deleted. This is useful if you need to distinguish
  /// between a file that was deleted versus one that never existed.
  ///
  /// This behavior can only be set on a directory, and it applies recursively
  /// to all contained files and directories.
  /// <p class="note">
  /// Note: this behavior is ignored completely if the user explicitly requests
  /// that all cached data be cleared.
  ///
  ///
  void setCacheBehaviorTombstone(jni.JniObject path, bool tombstone) =>
      jniAccessors.callMethodWithArgs(reference, _id_setCacheBehaviorTombstone,
          jni.JniType.voidType, [path.reference, tombstone]).check();

  static final _id_isCacheBehaviorTombstone = jniAccessors.getMethodIDOf(
      _classRef, "isCacheBehaviorTombstone", "(Ljava/io/File;)Z");

  /// from: public boolean isCacheBehaviorTombstone(java.io.File path)
  ///
  /// Read the current value set by
  /// \#setCacheBehaviorTombstone(File, boolean).
  bool isCacheBehaviorTombstone(jni.JniObject path) =>
      jniAccessors.callMethodWithArgs(reference, _id_isCacheBehaviorTombstone,
          jni.JniType.booleanType, [path.reference]).boolean;
}