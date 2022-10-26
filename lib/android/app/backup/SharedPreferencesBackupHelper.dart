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

/// from: android.app.backup.SharedPreferencesBackupHelper
///
/// A helper class that can be used in conjunction with
/// android.app.backup.BackupAgentHelper to manage the backup of
/// android.content.SharedPreferences. Whenever a backup is performed, it
/// will back up all named shared preferences that have changed since the last
/// backup operation.
///
/// To use this class, the application's backup agent class should extend
/// android.app.backup.BackupAgentHelper.  Then, in the agent's
/// BackupAgent\#onCreate() method, an instance of this class should be
/// allocated and installed as a backup/restore handler within the BackupAgentHelper
/// framework.  For example, an agent supporting backup and restore for
/// an application with two groups of android.content.SharedPreferences
/// data might look something like this:
/// <pre>
/// import android.app.backup.BackupAgentHelper;
/// import android.app.backup.SharedPreferencesBackupHelper;
///
/// public class MyBackupAgent extends BackupAgentHelper {
///     // The names of the SharedPreferences groups that the application maintains.  These
///     // are the same strings that are passed to Context\#getSharedPreferences(String, int).
///     static final String PREFS_DISPLAY = "displayprefs";
///     static final String PREFS_SCORES = "highscores";
///
///     // An arbitrary string used within the BackupAgentHelper implementation to
///     // identify the SharedPreferenceBackupHelper's data.
///     static final String MY_PREFS_BACKUP_KEY = "myprefs";
///
///     // Simply allocate a helper and install it
///     void onCreate() {
///         SharedPreferencesBackupHelper helper =
///                 new SharedPreferencesBackupHelper(this, PREFS_DISPLAY, PREFS_SCORES);
///         addHelper(MY_PREFS_BACKUP_KEY, helper);
///     }
/// }</pre>
///
/// No further implementation is needed; the BackupAgentHelper mechanism automatically
/// dispatches the
/// BackupAgent\#onBackup(android.os.ParcelFileDescriptor, BackupDataOutput, android.os.ParcelFileDescriptor) BackupAgent.onBackup()
/// and
/// BackupAgent\#onRestore(BackupDataInput, int, android.os.ParcelFileDescriptor) BackupAgent.onRestore()
/// callbacks to the SharedPreferencesBackupHelper as appropriate.
class SharedPreferencesBackupHelper extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/app/backup/SharedPreferencesBackupHelper");
  SharedPreferencesBackupHelper.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;[Ljava/lang/String;)V");

  /// from: public void <init>(android.content.Context context, java.lang.String[] prefGroups)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct a helper for backing up and restoring the
  /// android.content.SharedPreferences under the given names.
  ///@param context The application android.content.Context
  ///@param prefGroups The names of each android.content.SharedPreferences file to
  /// back up
  SharedPreferencesBackupHelper(
      context_.Context context, jni.JniObject prefGroups)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [context.reference, prefGroups.reference]).object);

  static final _id_performBackup = jniAccessors.getMethodIDOf(
      _classRef,
      "performBackup",
      "(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V");

  /// from: public void performBackup(android.os.ParcelFileDescriptor oldState, android.app.backup.BackupDataOutput data, android.os.ParcelFileDescriptor newState)
  ///
  /// Backs up the configured android.content.SharedPreferences groups.
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
  /// Restores one entity from the restore data stream to its proper shared
  /// preferences file store.
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