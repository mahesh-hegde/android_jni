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

import "../../content/ContextWrapper.dart" as contextwrapper_;

import "../../os/ParcelFileDescriptor.dart" as parcelfiledescriptor_;

import "BackupDataOutput.dart" as backupdataoutput_;

import "BackupDataInput.dart" as backupdatainput_;

import "FullBackupDataOutput.dart" as fullbackupdataoutput_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.backup.BackupAgent
///
/// Provides the central interface between an
/// application and Android's data backup infrastructure.  An application that wishes
/// to participate in the backup and restore mechanism will declare a subclass of
/// android.app.backup.BackupAgent, implement the
/// \#onBackup(ParcelFileDescriptor, BackupDataOutput, ParcelFileDescriptor) onBackup()
/// and \#onRestore(BackupDataInput, int, ParcelFileDescriptor) onRestore() methods,
/// and provide the name of its backup agent class in its {@code AndroidManifest.xml} file via
/// the <code>
/// <a href="{@docRoot}guide/topics/manifest/application-element.html">&lt;application&gt;</a></code>
/// tag's {@code android:backupAgent} attribute.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about using BackupAgent, read the
/// <a href="{@docRoot}guide/topics/data/backup.html">Data Backup</a> developer guide.
///</div>
///
/// <h3>Basic Operation</h3>
///
/// When the application makes changes to data that it wishes to keep backed up,
/// it should call the
/// android.app.backup.BackupManager\#dataChanged() BackupManager.dataChanged() method.
/// This notifies the Android Backup Manager that the application needs an opportunity
/// to update its backup image.  The Backup Manager, in turn, schedules a
/// backup pass to be performed at an opportune time.
///
/// Restore operations are typically performed only when applications are first
/// installed on a device.  At that time, the operating system checks to see whether
/// there is a previously-saved data set available for the application being installed, and if so,
/// begins an immediate restore pass to deliver the backup data as part of the installation
/// process.
///
/// When a backup or restore pass is run, the application's process is launched
/// (if not already running), the manifest-declared backup agent class (in the {@code
/// android:backupAgent} attribute) is instantiated within
/// that process, and the agent's \#onCreate() method is invoked.  This prepares the
/// agent instance to run the actual backup or restore logic.  At this point the
/// agent's
/// \#onBackup(ParcelFileDescriptor, BackupDataOutput, ParcelFileDescriptor) onBackup() or
/// \#onRestore(BackupDataInput, int, ParcelFileDescriptor) onRestore() method will be
/// invoked as appropriate for the operation being performed.
///
/// A backup data set consists of one or more "entities," flattened binary data
/// records that are each identified with a key string unique within the data set.  Adding a
/// record to the active data set or updating an existing record is done by simply
/// writing new entity data under the desired key.  Deleting an entity from the data set
/// is done by writing an entity under that key with header specifying a negative data
/// size, and no actual entity data.
///
/// __Helper Classes__
///
/// An extensible agent based on convenient helper classes is available in
/// android.app.backup.BackupAgentHelper.  That class is particularly
/// suited to handling of simple file or android.content.SharedPreferences
/// backup and restore.
///
/// __Threading__
///
/// The constructor, as well as \#onCreate() and \#onDestroy() lifecycle callbacks run
/// on the main thread (UI thread) of the application that implements the BackupAgent.
/// The data-handling callbacks:
/// \#onBackup(ParcelFileDescriptor, BackupDataOutput, ParcelFileDescriptor) onBackup(),
/// \#onFullBackup(FullBackupDataOutput),
/// \#onRestore(BackupDataInput, int, ParcelFileDescriptor) onRestore(),
/// \#onRestoreFile(ParcelFileDescriptor, long, File, int, long, long) onRestoreFile(),
/// \#onRestoreFinished(), and \#onQuotaExceeded(long, long) onQuotaExceeded()
/// run on binder pool threads.
///@see android.app.backup.BackupManager
///@see android.app.backup.BackupAgentHelper
///@see android.app.backup.BackupDataInput
///@see android.app.backup.BackupDataOutput
class BackupAgent extends contextwrapper_.ContextWrapper {
  static final _classRef =
      jniAccessors.getClassOf("android/app/backup/BackupAgent");
  BackupAgent.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int FLAG_CLIENT_SIDE_ENCRYPTION_ENABLED
  ///
  /// Flag for BackupDataOutput\#getTransportFlags() and
  /// FullBackupDataOutput\#getTransportFlags() only.
  ///
  /// The transport has client-side encryption enabled. i.e., the user's backup has been
  /// encrypted with a key known only to the device, and not to the remote storage solution. Even
  /// if an attacker had root access to the remote storage provider they should not be able to
  /// decrypt the user's backup data.
  static const FLAG_CLIENT_SIDE_ENCRYPTION_ENABLED = 1;

  /// from: static public final int FLAG_DEVICE_TO_DEVICE_TRANSFER
  ///
  /// Flag for BackupDataOutput\#getTransportFlags() and
  /// FullBackupDataOutput\#getTransportFlags() only.
  ///
  /// The transport is for a device-to-device transfer. There is no third party or intermediate
  /// storage. The user's backup data is sent directly to another device over e.g., USB or WiFi.
  static const FLAG_DEVICE_TO_DEVICE_TRANSFER = 2;

  /// from: static public final int TYPE_DIRECTORY
  ///
  /// During a full restore, indicates that the file system object being restored
  /// is a directory.
  static const TYPE_DIRECTORY = 2;

  /// from: static public final int TYPE_FILE
  ///
  /// During a full restore, indicates that the file system object being restored
  /// is an ordinary file.
  static const TYPE_FILE = 1;

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  BackupAgent.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_onCreate =
      jniAccessors.getMethodIDOf(_classRef, "onCreate", "()V");

  /// from: public void onCreate()
  ///
  /// Provided as a convenience for agent implementations that need an opportunity
  /// to do one-time initialization before the actual backup or restore operation
  /// is begun.
  ///
  void onCreate() => jniAccessors.callMethodWithArgs(
      reference, _id_onCreate, jni.JniType.voidType, []).check();

  static final _id_onDestroy =
      jniAccessors.getMethodIDOf(_classRef, "onDestroy", "()V");

  /// from: public void onDestroy()
  ///
  /// Provided as a convenience for agent implementations that need to do some
  /// sort of shutdown process after backup or restore is completed.
  ///
  /// Agents do not need to override this method.
  void onDestroy() => jniAccessors.callMethodWithArgs(
      reference, _id_onDestroy, jni.JniType.voidType, []).check();

  static final _id_onBackup = jniAccessors.getMethodIDOf(_classRef, "onBackup",
      "(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V");

  /// from: public abstract void onBackup(android.os.ParcelFileDescriptor oldState, android.app.backup.BackupDataOutput data, android.os.ParcelFileDescriptor newState)
  ///
  /// The application is being asked to write any data changed since the last
  /// time it performed a backup operation. The state data recorded during the
  /// last backup pass is provided in the <code>oldState</code> file
  /// descriptor. If <code>oldState</code> is <code>null</code>, no old state
  /// is available and the application should perform a full backup. In both
  /// cases, a representation of the final backup state after this pass should
  /// be written to the file pointed to by the file descriptor wrapped in
  /// <code>newState</code>.
  ///
  /// Each entity written to the android.app.backup.BackupDataOutput
  /// <code>data</code> stream will be transmitted
  /// over the current backup transport and stored in the remote data set under
  /// the key supplied as part of the entity.  Writing an entity with a negative
  /// data size instructs the transport to delete whatever entity currently exists
  /// under that key from the remote data set.
  ///@param oldState An open, read-only ParcelFileDescriptor pointing to the
  ///            last backup state provided by the application. May be
  ///            <code>null</code>, in which case no prior state is being
  ///            provided and the application should perform a full backup.
  ///@param data A structured wrapper around an open, read/write
  ///            file descriptor pointing to the backup data destination.
  ///            Typically the application will use backup helper classes to
  ///            write to this file.
  ///@param newState An open, read/write ParcelFileDescriptor pointing to an
  ///            empty file. The application should record the final backup
  ///            state here after writing the requested data to the <code>data</code>
  ///            output stream.
  void onBackup(
          parcelfiledescriptor_.ParcelFileDescriptor oldState,
          backupdataoutput_.BackupDataOutput data,
          parcelfiledescriptor_.ParcelFileDescriptor newState) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onBackup,
          jni.JniType.voidType,
          [oldState.reference, data.reference, newState.reference]).check();

  static final _id_onRestore = jniAccessors.getMethodIDOf(
      _classRef,
      "onRestore",
      "(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V");

  /// from: public abstract void onRestore(android.app.backup.BackupDataInput data, int appVersionCode, android.os.ParcelFileDescriptor newState)
  ///
  /// The application is being restored from backup and should replace any
  /// existing data with the contents of the backup. The backup data is
  /// provided through the <code>data</code> parameter. Once
  /// the restore is finished, the application should write a representation of
  /// the final state to the <code>newState</code> file descriptor.
  ///
  /// The application is responsible for properly erasing its old data and
  /// replacing it with the data supplied to this method. No "clear user data"
  /// operation will be performed automatically by the operating system. The
  /// exception to this is in the case of a failed restore attempt: if
  /// onRestore() throws an exception, the OS will assume that the
  /// application's data may now be in an incoherent state, and will clear it
  /// before proceeding.
  ///@param data A structured wrapper around an open, read-only
  ///            file descriptor pointing to a full snapshot of the
  ///            application's data.  The application should consume every
  ///            entity represented in this data stream.
  ///@param appVersionCode The value of the <a href="{@docRoot}guide/topics/manifest/manifest-element.html\#vcode">{@code
  ///            android:versionCode}</a> manifest attribute,
  ///            from the application that backed up this particular data set. This
  ///            makes it possible for an application's agent to distinguish among any
  ///            possible older data versions when asked to perform the restore
  ///            operation.
  ///@param newState An open, read/write ParcelFileDescriptor pointing to an
  ///            empty file. The application should record the final backup
  ///            state here after restoring its data from the <code>data</code> stream.
  ///            When a full-backup dataset is being restored, this will be <code>null</code>.
  void onRestore(backupdatainput_.BackupDataInput data, int appVersionCode,
          parcelfiledescriptor_.ParcelFileDescriptor newState) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onRestore,
          jni.JniType.voidType,
          [data.reference, appVersionCode, newState.reference]).check();

  static final _id_onRestore1 = jniAccessors.getMethodIDOf(
      _classRef,
      "onRestore",
      "(Landroid/app/backup/BackupDataInput;JLandroid/os/ParcelFileDescriptor;)V");

  /// from: public void onRestore(android.app.backup.BackupDataInput data, long appVersionCode, android.os.ParcelFileDescriptor newState)
  ///
  /// New version of \#onRestore(BackupDataInput, int, android.os.ParcelFileDescriptor)
  /// that handles a long app version code.  Default implementation casts the version code to
  /// an int and calls \#onRestore(BackupDataInput, int, android.os.ParcelFileDescriptor).
  void onRestore1(backupdatainput_.BackupDataInput data, int appVersionCode,
          parcelfiledescriptor_.ParcelFileDescriptor newState) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onRestore1,
          jni.JniType.voidType,
          [data.reference, appVersionCode, newState.reference]).check();

  static final _id_onFullBackup = jniAccessors.getMethodIDOf(_classRef,
      "onFullBackup", "(Landroid/app/backup/FullBackupDataOutput;)V");

  /// from: public void onFullBackup(android.app.backup.FullBackupDataOutput data)
  ///
  /// The application is having its entire file system contents backed up.  {@code data}
  /// points to the backup destination, and the app has the opportunity to choose which
  /// files are to be stored.  To commit a file as part of the backup, call the
  /// \#fullBackupFile(File, FullBackupDataOutput) helper method.  After all file
  /// data is written to the output, the agent returns from this method and the backup
  /// operation concludes.
  ///
  /// Certain parts of the app's data are never backed up even if the app explicitly
  /// sends them to the output:
  ///
  /// <ul>
  /// <li>The contents of the \#getCacheDir() directory</li>
  /// <li>The contents of the \#getCodeCacheDir() directory</li>
  /// <li>The contents of the \#getNoBackupFilesDir() directory</li>
  /// <li>The contents of the app's shared library directory</li>
  /// </ul>
  ///
  /// The default implementation of this method backs up the entirety of the
  /// application's "owned" file system trees to the output other than the few exceptions
  /// listed above.  Apps only need to override this method if they need to impose special
  /// limitations on which files are being stored beyond the control that
  /// \#getNoBackupFilesDir() offers.
  /// Alternatively they can provide an xml resource to specify what data to include or exclude.
  ///@param data A structured wrapper pointing to the backup destination.
  ///@throws IOException
  ///@see Context\#getNoBackupFilesDir()
  ///@see ApplicationInfo\#fullBackupContent
  ///@see \#fullBackupFile(File, FullBackupDataOutput)
  ///@see \#onRestoreFile(ParcelFileDescriptor, long, File, int, long, long)
  void onFullBackup(fullbackupdataoutput_.FullBackupDataOutput data) =>
      jniAccessors.callMethodWithArgs(reference, _id_onFullBackup,
          jni.JniType.voidType, [data.reference]).check();

  static final _id_onQuotaExceeded =
      jniAccessors.getMethodIDOf(_classRef, "onQuotaExceeded", "(JJ)V");

  /// from: public void onQuotaExceeded(long backupDataBytes, long quotaBytes)
  ///
  /// Notification that the application's current backup operation causes it to exceed
  /// the maximum size permitted by the transport.  The ongoing backup operation is
  /// halted and rolled back: any data that had been stored by a previous backup operation
  /// is still intact.  Typically the quota-exceeded state will be detected before any data
  /// is actually transmitted over the network.
  ///
  /// The {@code quotaBytes} value is the total data size currently permitted for this
  /// application.  If desired, the application can use this as a hint for determining
  /// how much data to store.  For example, a messaging application might choose to
  /// store only the newest messages, dropping enough older content to stay under
  /// the quota.
  ///
  /// <p class="note">Note that the maximum quota for the application can change over
  /// time.  In particular, in the future the quota may grow.  Applications that adapt
  /// to the quota when deciding what data to store should be aware of this and implement
  /// their data storage mechanisms in a way that can take advantage of additional
  /// quota.
  ///@param backupDataBytes The amount of data measured while initializing the backup
  ///    operation, if the total exceeds the app's alloted quota.  If initial measurement
  ///    suggested that the data would fit but then too much data was actually submitted
  ///    as part of the operation, then this value is the amount of data that had been
  ///    streamed into the transport at the time the quota was reached.
  ///@param quotaBytes The maximum data size that the transport currently permits
  ///    this application to store as a backup.
  void onQuotaExceeded(int backupDataBytes, int quotaBytes) =>
      jniAccessors.callMethodWithArgs(reference, _id_onQuotaExceeded,
          jni.JniType.voidType, [backupDataBytes, quotaBytes]).check();

  static final _id_fullBackupFile = jniAccessors.getMethodIDOf(
      _classRef,
      "fullBackupFile",
      "(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V");

  /// from: public final void fullBackupFile(java.io.File file, android.app.backup.FullBackupDataOutput output)
  ///
  /// Write an entire file as part of a full-backup operation.  The file's contents
  /// will be delivered to the backup destination along with the metadata necessary
  /// to place it with the proper location and permissions on the device where the
  /// data is restored.
  ///
  /// <p class="note">Attempting to back up files in directories that are ignored by
  /// the backup system will have no effect.  For example, if the app calls this method
  /// with a file inside the \#getNoBackupFilesDir() directory, it will be ignored.
  /// See \#onFullBackup(FullBackupDataOutput) for details on what directories
  /// are excluded from backups.
  ///@param file The file to be backed up.  The file must exist and be readable by
  ///     the caller.
  ///@param output The destination to which the backed-up file data will be sent.
  void fullBackupFile(jni.JniObject file,
          fullbackupdataoutput_.FullBackupDataOutput output) =>
      jniAccessors.callMethodWithArgs(reference, _id_fullBackupFile,
          jni.JniType.voidType, [file.reference, output.reference]).check();

  static final _id_onRestoreFile = jniAccessors.getMethodIDOf(
      _classRef,
      "onRestoreFile",
      "(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V");

  /// from: public void onRestoreFile(android.os.ParcelFileDescriptor data, long size, java.io.File destination, int type, long mode, long mtime)
  ///
  /// Handle the data delivered via the given file descriptor during a full restore
  /// operation.  The agent is given the path to the file's original location as well
  /// as its size and metadata.
  ///
  /// The file descriptor can only be read for {@code size} bytes; attempting to read
  /// more data has undefined behavior.
  ///
  /// The default implementation creates the destination file/directory and populates it
  /// with the data from the file descriptor, then sets the file's access mode and
  /// modification time to match the restore arguments.
  ///@param data A read-only file descriptor from which the agent can read {@code size}
  ///     bytes of file data.
  ///@param size The number of bytes of file content to be restored to the given
  ///     destination.  If the file system object being restored is a directory, {@code size}
  ///     will be zero.
  ///@param destination The File on disk to be restored with the given data.
  ///@param type The kind of file system object being restored.  This will be either
  ///     BackupAgent\#TYPE_FILE or BackupAgent\#TYPE_DIRECTORY.
  ///@param mode The access mode to be assigned to the destination after its data is
  ///     written.  This is in the standard format used by {@code chmod()}.
  ///@param mtime The modification time of the file when it was backed up, suitable to
  ///     be assigned to the file after its data is written.
  ///@throws IOException
  void onRestoreFile(parcelfiledescriptor_.ParcelFileDescriptor data, int size,
          jni.JniObject destination, int type, int mode, int mtime) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onRestoreFile, jni.JniType.voidType, [
        data.reference,
        size,
        destination.reference,
        type,
        mode,
        mtime
      ]).check();

  static final _id_onRestoreFinished =
      jniAccessors.getMethodIDOf(_classRef, "onRestoreFinished", "()V");

  /// from: public void onRestoreFinished()
  ///
  /// The application's restore operation has completed.  This method is called after
  /// all available data has been delivered to the application for restore (via either
  /// the \#onRestore(BackupDataInput, int, ParcelFileDescriptor) onRestore() or
  /// \#onRestoreFile(ParcelFileDescriptor, long, File, int, long, long) onRestoreFile()
  /// callbacks).  This provides the app with a stable end-of-restore opportunity to
  /// perform any appropriate post-processing on the data that was just delivered.
  ///@see \#onRestore(BackupDataInput, int, ParcelFileDescriptor)
  ///@see \#onRestoreFile(ParcelFileDescriptor, long, File, int, long, long)
  void onRestoreFinished() => jniAccessors.callMethodWithArgs(
      reference, _id_onRestoreFinished, jni.JniType.voidType, []).check();
}
