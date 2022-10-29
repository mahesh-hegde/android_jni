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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.backup.BackupDataOutput
///
/// Provides the structured interface through which a BackupAgent commits
/// information to the backup data set, via its BackupAgent\#onBackup(ParcelFileDescriptor,BackupDataOutput,ParcelFileDescriptor) onBackup() method.  Data written for backup is presented
/// as a set of "entities," key/value pairs in which each binary data record "value" is
/// named with a string "key."
///
/// To commit a data record to the backup transport, the agent's
/// BackupAgent\#onBackup(ParcelFileDescriptor,BackupDataOutput,ParcelFileDescriptor) onBackup() method first writes an "entity header" that supplies the key string for the record
/// and the total size of the binary value for the record.  After the header has been
/// written, the agent then writes the binary entity value itself.  The entity value can
/// be written in multiple chunks if desired, as long as the total count of bytes written
/// matches what was supplied to \#writeEntityHeader(String, int) writeEntityHeader().
///
/// Entity key strings are considered to be unique within a given application's backup
/// data set. If a backup agent writes a new entity under an existing key string, its value will
/// replace any previous value in the transport's remote data store.  You can remove a record
/// entirely from the remote data set by writing a new entity header using the
/// existing record's key, but supplying a negative <code>dataSize</code> parameter.
/// When you do so, the agent does not need to call \#writeEntityData(byte[], int).
/// <h3>Example</h3>
///
/// Here is an example illustrating a way to back up the value of a String variable
/// called <code>mStringToBackUp</code>:
/// <pre>
/// static final String MY_STRING_KEY = "storedstring";
///
/// public void BackupAgent\#onBackup(ParcelFileDescriptor, BackupDataOutput, ParcelFileDescriptor) onBackup(ParcelFileDescriptor oldState, BackupDataOutput data, ParcelFileDescriptor newState)
///         throws IOException {
///     ...
///     byte[] stringBytes = mStringToBackUp.getBytes();
///     data.writeEntityHeader(MY_STRING_KEY, stringBytes.length);
///     data.writeEntityData(stringBytes, stringBytes.length);
///     ...
/// }</pre>
///@see BackupAgent
class BackupDataOutput extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/backup/BackupDataOutput");
  BackupDataOutput.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getQuota =
      jniAccessors.getMethodIDOf(_classRef, "getQuota", "()J");

  /// from: public long getQuota()
  ///
  /// Returns the quota in bytes for the application's current backup operation.  The
  /// value can vary for each operation.
  ///@see FullBackupDataOutput\#getQuota()
  int getQuota() => jniAccessors.callMethodWithArgs(
      reference, _id_getQuota, jni.JniType.longType, []).long;

  static final _id_getTransportFlags =
      jniAccessors.getMethodIDOf(_classRef, "getTransportFlags", "()I");

  /// from: public int getTransportFlags()
  ///
  /// Returns flags with additional information about the backup transport. For supported flags see
  /// android.app.backup.BackupAgent
  ///@see FullBackupDataOutput\#getTransportFlags()
  int getTransportFlags() => jniAccessors.callMethodWithArgs(
      reference, _id_getTransportFlags, jni.JniType.intType, []).integer;

  static final _id_writeEntityHeader = jniAccessors.getMethodIDOf(
      _classRef, "writeEntityHeader", "(Ljava/lang/String;I)I");

  /// from: public int writeEntityHeader(java.lang.String key, int dataSize)
  ///
  /// Mark the beginning of one record in the backup data stream. This must be called before
  /// \#writeEntityData.
  ///@param key A string key that uniquely identifies the data record within the application.
  ///    Keys whose first character is \uff00 or higher are not valid.
  ///@param dataSize The size in bytes of this record's data.  Passing a dataSize
  ///    of -1 indicates that the record under this key should be deleted.
  ///@return The number of bytes written to the backup stream
  ///@throws IOException if the write failed
  int writeEntityHeader(jni.JniString key, int dataSize) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeEntityHeader,
          jni.JniType.intType, [key.reference, dataSize]).integer;

  static final _id_writeEntityData =
      jniAccessors.getMethodIDOf(_classRef, "writeEntityData", "([BI)I");

  /// from: public int writeEntityData(byte[] data, int size)
  ///
  /// Write a chunk of data under the current entity to the backup transport.
  ///@param data A raw data buffer to send
  ///@param size The number of bytes to be sent in this chunk
  ///@return the number of bytes written
  ///@throws IOException if the write failed
  int writeEntityData(jni.JniObject data, int size) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeEntityData,
          jni.JniType.intType, [data.reference, size]).integer;

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  ///
  /// @hide
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();
}
