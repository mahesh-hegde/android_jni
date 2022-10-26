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

/// from: android.os.ProxyFileDescriptorCallback
///
/// Callback that handles file system requests from ProxyFileDescriptor.
///
/// All callback methods except for onRelease should throw android.system.ErrnoException
/// with proper errno on errors. See
/// <a href="http://man7.org/linux/man-pages/man3/errno.3.html">errno(3)</a> and
/// android.system.OsConstants.
///
/// Typical errnos are
///
/// <ul>
/// <li>android.system.OsConstants\#EIO for general I/O issues
/// <li>android.system.OsConstants\#ENOENT when the file is not found
/// <li>android.system.OsConstants\#EBADF if the file doesn't allow read/write operations
///     based on how it was opened.  (For example, trying to write a file that was opened read-only.)
/// <li>android.system.OsConstants\#ENOSPC if you cannot handle a write operation to
///     space/quota limitations.
/// </ul>
///@see android.os.storage.StorageManager\#openProxyFileDescriptor(int, ProxyFileDescriptorCallback,
///     Handler)
class ProxyFileDescriptorCallback extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/ProxyFileDescriptorCallback");
  ProxyFileDescriptorCallback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ProxyFileDescriptorCallback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onGetSize =
      jniAccessors.getMethodIDOf(_classRef, "onGetSize", "()J");

  /// from: public long onGetSize()
  ///
  /// Returns size of bytes provided by the file descriptor.
  ///@return Size of bytes.
  ///@throws ErrnoException ErrnoException containing E constants in OsConstants.
  int onGetSize() => jniAccessors.callMethodWithArgs(
      reference, _id_onGetSize, jni.JniType.longType, []).long;

  static final _id_onRead =
      jniAccessors.getMethodIDOf(_classRef, "onRead", "(JI[B)I");

  /// from: public int onRead(long offset, int size, byte[] data)
  ///
  /// Provides bytes read from file descriptor.
  /// It needs to return exact requested size of bytes unless it reaches file end.
  ///@param offset Offset in bytes from the file head specifying where to read bytes. If a seek
  ///     operation is conducted on the file descriptor, then a read operation is requested, the
  ///     offset refrects the proper position of requested bytes.
  ///@param size Size for read bytes.
  ///@param data Byte array to store read bytes.
  ///@return Size of bytes returned by the function.
  ///@throws ErrnoException ErrnoException containing E constants in OsConstants.
  int onRead(int offset, int size, jni.JniObject data) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRead,
          jni.JniType.intType, [offset, size, data.reference]).integer;

  static final _id_onWrite =
      jniAccessors.getMethodIDOf(_classRef, "onWrite", "(JI[B)I");

  /// from: public int onWrite(long offset, int size, byte[] data)
  ///
  /// Handles bytes written to file descriptor.
  ///@param offset Offset in bytes from the file head specifying where to write bytes. If a seek
  ///     operation is conducted on the file descriptor, then a write operation is requested, the
  ///     offset refrects the proper position of requested bytes.
  ///@param size Size for write bytes.
  ///@param data Byte array to be written to somewhere.
  ///@return Size of bytes processed by the function.
  ///@throws ErrnoException ErrnoException containing E constants in OsConstants.
  int onWrite(int offset, int size, jni.JniObject data) =>
      jniAccessors.callMethodWithArgs(reference, _id_onWrite,
          jni.JniType.intType, [offset, size, data.reference]).integer;

  static final _id_onFsync =
      jniAccessors.getMethodIDOf(_classRef, "onFsync", "()V");

  /// from: public void onFsync()
  ///
  /// Ensures all the written data are stored in permanent storage device.
  /// For example, if it has data stored in on memory cache, it needs to flush data to storage
  /// device.
  ///@throws ErrnoException ErrnoException containing E constants in OsConstants.
  void onFsync() => jniAccessors.callMethodWithArgs(
      reference, _id_onFsync, jni.JniType.voidType, []).check();

  static final _id_onRelease =
      jniAccessors.getMethodIDOf(_classRef, "onRelease", "()V");

  /// from: public abstract void onRelease()
  ///
  /// Invoked after the file is closed.
  void onRelease() => jniAccessors.callMethodWithArgs(
      reference, _id_onRelease, jni.JniType.voidType, []).check();
}
