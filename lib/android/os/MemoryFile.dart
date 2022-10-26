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

/// from: android.os.MemoryFile
///
/// MemoryFile is a wrapper for SharedMemory which can optionally be set to purgeable.
///
/// Applications should generally prefer to use SharedMemory which offers more flexible
/// access & control over the shared memory region than MemoryFile does.
///
/// Purgeable files may have their contents reclaimed by the kernel
/// in low memory conditions (only if allowPurging is set to true).
/// After a file is purged, attempts to read or write the file will
/// cause an IOException to be thrown.
class MemoryFile extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/MemoryFile");
  MemoryFile.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;I)V");

  /// from: public void <init>(java.lang.String name, int length)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Allocates a new ashmem region. The region is initially not purgable.
  ///@param name optional name for the file (can be null).
  ///@param length of the memory file in bytes, must be positive.
  ///@throws IOException if the memory file could not be created.
  MemoryFile(jni.JniString name, int length)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [name.reference, length]).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Closes the memory file. If there are no other open references to the memory
  /// file, it will be deleted.
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_length =
      jniAccessors.getMethodIDOf(_classRef, "length", "()I");

  /// from: public int length()
  ///
  /// Returns the length of the memory file.
  ///@return file length.
  int length() => jniAccessors.callMethodWithArgs(
      reference, _id_length, jni.JniType.intType, []).integer;

  static final _id_isPurgingAllowed =
      jniAccessors.getMethodIDOf(_classRef, "isPurgingAllowed", "()Z");

  /// from: public boolean isPurgingAllowed()
  ///
  /// Is memory file purging enabled?
  ///@return true if the file may be purged.
  ///@deprecated Purgable is considered generally fragile and hard to use safely. Applications
  /// are recommend to instead use android.content.ComponentCallbacks2\#onTrimMemory(int)
  /// to react to memory events and release shared memory regions as appropriate.
  bool isPurgingAllowed() => jniAccessors.callMethodWithArgs(
      reference, _id_isPurgingAllowed, jni.JniType.booleanType, []).boolean;

  static final _id_allowPurging =
      jniAccessors.getMethodIDOf(_classRef, "allowPurging", "(Z)Z");

  /// from: synchronized public boolean allowPurging(boolean allowPurging)
  ///
  /// Enables or disables purging of the memory file.
  ///@param allowPurging true if the operating system can purge the contents
  /// of the file in low memory situations
  ///@return previous value of allowPurging
  ///@deprecated Purgable is considered generally fragile and hard to use safely. Applications
  /// are recommend to instead use android.content.ComponentCallbacks2\#onTrimMemory(int)
  /// to react to memory events and release shared memory regions as appropriate.
  bool allowPurging(bool allowPurging) => jniAccessors.callMethodWithArgs(
      reference,
      _id_allowPurging,
      jni.JniType.booleanType,
      [allowPurging]).boolean;

  static final _id_getInputStream = jniAccessors.getMethodIDOf(
      _classRef, "getInputStream", "()Ljava/io/InputStream;");

  /// from: public java.io.InputStream getInputStream()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new InputStream for reading from the memory file.
  ///@return InputStream
  jni.JniObject getInputStream() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInputStream, jni.JniType.objectType, []).object);

  static final _id_getOutputStream = jniAccessors.getMethodIDOf(
      _classRef, "getOutputStream", "()Ljava/io/OutputStream;");

  /// from: public java.io.OutputStream getOutputStream()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new OutputStream for writing to the memory file.
  ///@return OutputStream
  jni.JniObject getOutputStream() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getOutputStream, jni.JniType.objectType, []).object);

  static final _id_readBytes =
      jniAccessors.getMethodIDOf(_classRef, "readBytes", "([BIII)I");

  /// from: public int readBytes(byte[] buffer, int srcOffset, int destOffset, int count)
  ///
  /// Reads bytes from the memory file.
  /// Will throw an IOException if the file has been purged.
  ///@param buffer byte array to read bytes into.
  ///@param srcOffset offset into the memory file to read from.
  ///@param destOffset offset into the byte array buffer to read into.
  ///@param count number of bytes to read.
  ///@return number of bytes read.
  ///@throws IOException if the memory file has been purged or deactivated.
  int readBytes(
          jni.JniObject buffer, int srcOffset, int destOffset, int count) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_readBytes,
          jni.JniType.intType,
          [buffer.reference, srcOffset, destOffset, count]).integer;

  static final _id_writeBytes =
      jniAccessors.getMethodIDOf(_classRef, "writeBytes", "([BIII)V");

  /// from: public void writeBytes(byte[] buffer, int srcOffset, int destOffset, int count)
  ///
  /// Write bytes to the memory file.
  /// Will throw an IOException if the file has been purged.
  ///@param buffer byte array to write bytes from.
  ///@param srcOffset offset into the byte array buffer to write from.
  ///@param destOffset offset  into the memory file to write to.
  ///@param count number of bytes to write.
  ///@throws IOException if the memory file has been purged or deactivated.
  void writeBytes(
          jni.JniObject buffer, int srcOffset, int destOffset, int count) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_writeBytes,
          jni.JniType.voidType,
          [buffer.reference, srcOffset, destOffset, count]).check();
}
