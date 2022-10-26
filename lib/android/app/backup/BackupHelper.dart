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

import "../../os/ParcelFileDescriptor.dart" as parcelfiledescriptor_;

import "BackupDataOutput.dart" as backupdataoutput_;

import "BackupDataInputStream.dart" as backupdatainputstream_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.backup.BackupHelper
///
/// Defines the calling interface that BackupAgentHelper uses
/// when dispatching backup and restore operations to the installed helpers.
/// Applications can define and install their own helpers as well as using those
/// provided as part of the Android framework.
///
/// Although multiple helper objects may be installed simultaneously, each helper
/// is responsible only for handling its own data, and will not see entities
/// created by other components within the backup system.  Invocations of multiple
/// helpers are performed sequentially by the BackupAgentHelper, with each
/// helper given a chance to access its own saved state from within the state record
/// produced during the previous backup operation.
///@see BackupAgentHelper
///@see FileBackupHelper
///@see SharedPreferencesBackupHelper
class BackupHelper extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/backup/BackupHelper");
  BackupHelper.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_performBackup = jniAccessors.getMethodIDOf(
      _classRef,
      "performBackup",
      "(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V");

  /// from: public abstract void performBackup(android.os.ParcelFileDescriptor oldState, android.app.backup.BackupDataOutput data, android.os.ParcelFileDescriptor newState)
  ///
  /// Based on <code>oldState</code>, determine what application content
  /// needs to be backed up, write it to <code>data</code>, and fill in
  /// <code>newState</code> with the complete state as it exists now.
  ///
  /// Implementing this method is much like implementing
  /// BackupAgent\#onBackup(ParcelFileDescriptor, BackupDataOutput, ParcelFileDescriptor) onBackup() &mdash; the method parameters are the same.  When this method is invoked the
  /// {@code oldState} descriptor points to the beginning of the state data
  /// written during this helper's previous backup operation, and the {@code newState}
  /// descriptor points to the file location at which the helper should write its
  /// new state after performing the backup operation.
  /// <p class="note">
  /// <strong>Note:</strong> The helper should not close or seek either the {@code oldState} or
  /// the {@code newState} file descriptors.  It is essential that when reading the helper's
  /// saved state from the {@code oldState} file, no extra content is consumed beyond
  /// what was stored by this helper.  If more old state data is read, even accidentally,
  /// it will make it impossible for additional helpers that may be invoked after this one
  /// to properly reconstruct their prior state.
  ///
  ///@param oldState An open, read-only android.os.ParcelFileDescriptor pointing to the
  ///            last backup state provided by the application. May be
  ///            <code>null</code>, in which case no prior state is being
  ///            provided and the application should perform a full backup.
  ///@param data An open, read/write BackupDataOutput
  ///            pointing to the backup data destination.
  ///            Typically the application will use backup helper classes to
  ///            write to this file.
  ///@param newState An open, read/write android.os.ParcelFileDescriptor pointing to an
  ///            empty file. The application should record the final backup
  ///            state here after writing the requested data to the <code>data</code>
  ///            output stream.
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

  /// from: public abstract void restoreEntity(android.app.backup.BackupDataInputStream data)
  ///
  /// Called by android.app.backup.BackupAgentHelper BackupAgentHelper
  /// to restore a single entity from the restore data set.  This method will be
  /// called for each entity in the data set that belongs to this handler.
  /// <p class="note">
  /// <strong>Note:</strong> Do not close the <code>data</code> stream.  Do not read more than
  /// android.app.backup.BackupDataInputStream\#size() size() bytes from
  /// <code>data</code>.
  ///
  ///@param data An open BackupDataInputStream from which the backup data can be read.
  void restoreEntity(backupdatainputstream_.BackupDataInputStream data) =>
      jniAccessors.callMethodWithArgs(reference, _id_restoreEntity,
          jni.JniType.voidType, [data.reference]).check();

  static final _id_writeNewStateDescription = jniAccessors.getMethodIDOf(
      _classRef,
      "writeNewStateDescription",
      "(Landroid/os/ParcelFileDescriptor;)V");

  /// from: public abstract void writeNewStateDescription(android.os.ParcelFileDescriptor newState)
  ///
  /// Called by android.app.backup.BackupAgentHelper BackupAgentHelper
  /// after a restore operation to write the backup state file corresponding to
  /// the data as processed by the helper.  The data written here will be
  /// available to the helper during the next call to its
  /// \#performBackup(ParcelFileDescriptor, BackupDataOutput, ParcelFileDescriptor) performBackup() method.
  ///
  /// This method will be called even if the handler's
  /// \#restoreEntity(BackupDataInputStream) restoreEntity() method was never invoked during
  /// the restore operation.
  /// <p class="note">
  /// <strong>Note:</strong> The helper should not close or seek the {@code newState}
  /// file descriptor.
  ///
  ///@param newState A android.os.ParcelFileDescriptor to which the new state will be
  /// written.
  void writeNewStateDescription(
          parcelfiledescriptor_.ParcelFileDescriptor newState) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeNewStateDescription,
          jni.JniType.voidType, [newState.reference]).check();
}
