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

/// from: android.os.StatFs
///
/// Retrieve overall information about the space on a filesystem. This is a
/// wrapper for Unix statvfs().
class StatFs extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/StatFs");
  StatFs.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String path)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct a new StatFs for looking at the stats of the filesystem at
  /// {@code path}. Upon construction, the stat of the file system will be
  /// performed, and the values retrieved available from the methods on this
  /// class.
  ///@param path path in the desired file system to stat.
  ///@throws IllegalArgumentException if the file system access fails
  StatFs(jni.JniString path)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [path.reference]).object);

  static final _id_restat =
      jniAccessors.getMethodIDOf(_classRef, "restat", "(Ljava/lang/String;)V");

  /// from: public void restat(java.lang.String path)
  ///
  /// Perform a restat of the file system referenced by this object. This is
  /// the same as re-constructing the object with the same file system path,
  /// and the new stat values are available upon return.
  ///@throws IllegalArgumentException if the file system access fails
  void restat(jni.JniString path) => jniAccessors.callMethodWithArgs(
      reference, _id_restat, jni.JniType.voidType, [path.reference]).check();

  static final _id_getBlockSize =
      jniAccessors.getMethodIDOf(_classRef, "getBlockSize", "()I");

  /// from: public int getBlockSize()
  ///
  /// @deprecated Use \#getBlockSizeLong() instead.
  int getBlockSize() => jniAccessors.callMethodWithArgs(
      reference, _id_getBlockSize, jni.JniType.intType, []).integer;

  static final _id_getBlockSizeLong =
      jniAccessors.getMethodIDOf(_classRef, "getBlockSizeLong", "()J");

  /// from: public long getBlockSizeLong()
  ///
  /// The size, in bytes, of a block on the file system. This corresponds to
  /// the Unix {@code statvfs.f_frsize} field.
  int getBlockSizeLong() => jniAccessors.callMethodWithArgs(
      reference, _id_getBlockSizeLong, jni.JniType.longType, []).long;

  static final _id_getBlockCount =
      jniAccessors.getMethodIDOf(_classRef, "getBlockCount", "()I");

  /// from: public int getBlockCount()
  ///
  /// @deprecated Use \#getBlockCountLong() instead.
  int getBlockCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getBlockCount, jni.JniType.intType, []).integer;

  static final _id_getBlockCountLong =
      jniAccessors.getMethodIDOf(_classRef, "getBlockCountLong", "()J");

  /// from: public long getBlockCountLong()
  ///
  /// The total number of blocks on the file system. This corresponds to the
  /// Unix {@code statvfs.f_blocks} field.
  int getBlockCountLong() => jniAccessors.callMethodWithArgs(
      reference, _id_getBlockCountLong, jni.JniType.longType, []).long;

  static final _id_getFreeBlocks =
      jniAccessors.getMethodIDOf(_classRef, "getFreeBlocks", "()I");

  /// from: public int getFreeBlocks()
  ///
  /// @deprecated Use \#getFreeBlocksLong() instead.
  int getFreeBlocks() => jniAccessors.callMethodWithArgs(
      reference, _id_getFreeBlocks, jni.JniType.intType, []).integer;

  static final _id_getFreeBlocksLong =
      jniAccessors.getMethodIDOf(_classRef, "getFreeBlocksLong", "()J");

  /// from: public long getFreeBlocksLong()
  ///
  /// The total number of blocks that are free on the file system, including
  /// reserved blocks (that are not available to normal applications). This
  /// corresponds to the Unix {@code statvfs.f_bfree} field. Most applications
  /// will want to use \#getAvailableBlocks() instead.
  int getFreeBlocksLong() => jniAccessors.callMethodWithArgs(
      reference, _id_getFreeBlocksLong, jni.JniType.longType, []).long;

  static final _id_getFreeBytes =
      jniAccessors.getMethodIDOf(_classRef, "getFreeBytes", "()J");

  /// from: public long getFreeBytes()
  ///
  /// The number of bytes that are free on the file system, including reserved
  /// blocks (that are not available to normal applications). Most applications
  /// will want to use \#getAvailableBytes() instead.
  int getFreeBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getFreeBytes, jni.JniType.longType, []).long;

  static final _id_getAvailableBlocks =
      jniAccessors.getMethodIDOf(_classRef, "getAvailableBlocks", "()I");

  /// from: public int getAvailableBlocks()
  ///
  /// @deprecated Use \#getAvailableBlocksLong() instead.
  int getAvailableBlocks() => jniAccessors.callMethodWithArgs(
      reference, _id_getAvailableBlocks, jni.JniType.intType, []).integer;

  static final _id_getAvailableBlocksLong =
      jniAccessors.getMethodIDOf(_classRef, "getAvailableBlocksLong", "()J");

  /// from: public long getAvailableBlocksLong()
  ///
  /// The number of blocks that are free on the file system and available to
  /// applications. This corresponds to the Unix {@code statvfs.f_bavail} field.
  int getAvailableBlocksLong() => jniAccessors.callMethodWithArgs(
      reference, _id_getAvailableBlocksLong, jni.JniType.longType, []).long;

  static final _id_getAvailableBytes =
      jniAccessors.getMethodIDOf(_classRef, "getAvailableBytes", "()J");

  /// from: public long getAvailableBytes()
  ///
  /// The number of bytes that are free on the file system and available to
  /// applications.
  int getAvailableBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getAvailableBytes, jni.JniType.longType, []).long;

  static final _id_getTotalBytes =
      jniAccessors.getMethodIDOf(_classRef, "getTotalBytes", "()J");

  /// from: public long getTotalBytes()
  ///
  /// The total number of bytes supported by the file system.
  int getTotalBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getTotalBytes, jni.JniType.longType, []).long;
}
