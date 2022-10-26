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

import "../../content/Context.dart" as context_;

import "../../os/ParcelFileDescriptor.dart" as parcelfiledescriptor_;

import "BackupDataOutput.dart" as backupdataoutput_;

import "BackupDataInputStream.dart" as backupdatainputstream_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.backup.FileBackupHelper
///
/// A helper class that can be used in conjunction with
/// android.app.backup.BackupAgentHelper to manage the backup of a set of
/// files. Whenever backup is performed, all files changed since the last backup
/// will be saved in their entirety. When backup first occurs,
/// every file in the list provided to \#FileBackupHelper will be backed up.
///
/// During restore, if the helper encounters data for a file that was not
/// specified when the FileBackupHelper object was constructed, that data
/// will be ignored.
/// <p class="note"><strong>Note:</strong> This should be
/// used only with small configuration files, not large binary files.
class FileBackupHelper extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/backup/FileBackupHelper");
  FileBackupHelper.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;[Ljava/lang/String;)V");

  /// from: public void <init>(android.content.Context context, java.lang.String[] files)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct a helper to manage backup/restore of entire files within the
  /// application's data directory hierarchy.
  ///@param context The backup agent's Context object
  ///@param files A list of the files to be backed up or restored.
  FileBackupHelper(context_.Context context, jni.JniObject files)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference, files.reference]).object);

  static final _id_performBackup = jniAccessors.getMethodIDOf(
      _classRef,
      "performBackup",
      "(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V");

  /// from: public void performBackup(android.os.ParcelFileDescriptor oldState, android.app.backup.BackupDataOutput data, android.os.ParcelFileDescriptor newState)
  ///
  /// Based on <code>oldState</code>, determine which of the files from the
  /// application's data directory need to be backed up, write them to the data
  /// stream, and fill in <code>newState</code> with the state as it exists
  /// now. When <code>oldState</code> is <code>null</code>, all the files will
  /// be backed up.
  ///
  /// This should only be called directly from within the BackupAgentHelper
  /// implementation. See
  /// android.app.backup.BackupAgent\#onBackup(ParcelFileDescriptor, BackupDataOutput, ParcelFileDescriptor)
  /// for a description of parameter meanings.
  void performBackup(
          parcelfiledescriptor_.ParcelFileDescriptor oldState,
          backupdataoutput_.BackupDataOutput data,
          parcelfiledescriptor_.ParcelFileDescriptor newState) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_performBackup,
          jni.JniType.voidType,
          [oldState.reference, data.reference, newState.reference]).check();

  static final _id_restoreEntity = jniAccessors.getMethodIDOf(_classRef,
      "restoreEntity", "(Landroid/app/backup/BackupDataInputStream;)V");

  /// from: public void restoreEntity(android.app.backup.BackupDataInputStream data)
  ///
  /// Restore one record [representing a single file] from the restore dataset.
  ///
  /// This should only be called directly from within the BackupAgentHelper
  /// implementation.
  void restoreEntity(backupdatainputstream_.BackupDataInputStream data) =>
      jniAccessors.callMethodWithArgs(reference, _id_restoreEntity,
          jni.JniType.voidType, [data.reference]).check();

  static final _id_writeNewStateDescription = jniAccessors.getMethodIDOf(
      _classRef,
      "writeNewStateDescription",
      "(Landroid/os/ParcelFileDescriptor;)V");

  /// from: public void writeNewStateDescription(android.os.ParcelFileDescriptor fd)
  void writeNewStateDescription(
          parcelfiledescriptor_.ParcelFileDescriptor fd) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeNewStateDescription,
          jni.JniType.voidType, [fd.reference]).check();

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();
}