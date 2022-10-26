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

import "RestoreObserver.dart" as restoreobserver_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.backup.BackupManager
///
/// The interface through which an application interacts with the Android backup service to
/// request backup and restore operations.
/// Applications instantiate it using the constructor and issue calls through that instance.
///
/// When an application has made changes to data which should be backed up, a
/// call to \#dataChanged() will notify the backup service. The system
/// will then schedule a backup operation to occur in the near future. Repeated
/// calls to \#dataChanged() have no further effect until the backup
/// operation actually occurs.
///
/// A backup or restore operation for your application begins when the system launches the
/// android.app.backup.BackupAgent subclass you've declared in your manifest. See the
/// documentation for android.app.backup.BackupAgent for a detailed description
/// of how the operation then proceeds.
///
/// Several attributes affecting the operation of the backup and restore mechanism
/// can be set on the <code>
/// <a href="{@docRoot}guide/topics/manifest/application-element.html">&lt;application&gt;</a></code>
/// tag in your application's AndroidManifest.xml file.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about using BackupManager, read the
/// <a href="{@docRoot}guide/topics/data/backup.html">Data Backup</a> developer guide.
///</div>
///@attr ref android.R.styleable\#AndroidManifestApplication_allowBackup
///@attr ref android.R.styleable\#AndroidManifestApplication_backupAgent
///@attr ref android.R.styleable\#AndroidManifestApplication_killAfterRestore
///@attr ref android.R.styleable\#AndroidManifestApplication_restoreAnyVersion
class BackupManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/backup/BackupManager");
  BackupManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a BackupManager object through which the application can
  /// communicate with the Android backup system.
  ///@param context The android.content.Context that was provided when
  ///                one of your application's android.app.Activity Activities
  ///                was created.
  BackupManager(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_dataChanged =
      jniAccessors.getMethodIDOf(_classRef, "dataChanged", "()V");

  /// from: public void dataChanged()
  ///
  /// Notifies the Android backup system that your application wishes to back up
  /// new changes to its data.  A backup operation using your application's
  /// android.app.backup.BackupAgent subclass will be scheduled when you
  /// call this method.
  void dataChanged() => jniAccessors.callMethodWithArgs(
      reference, _id_dataChanged, jni.JniType.voidType, []).check();

  static final _id_dataChanged1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "dataChanged", "(Ljava/lang/String;)V");

  /// from: static public void dataChanged(java.lang.String packageName)
  ///
  /// Convenience method for callers who need to indicate that some other package
  /// needs a backup pass.  This can be useful in the case of groups of packages
  /// that share a uid.
  ///
  /// This method requires that the application hold the "android.permission.BACKUP"
  /// permission if the package named in the argument does not run under the same uid
  /// as the caller.
  ///@param packageName The package name identifying the application to back up.
  static void dataChanged1(jni.JniString packageName) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_dataChanged1,
          jni.JniType.voidType, [packageName.reference]).check();

  static final _id_requestRestore = jniAccessors.getMethodIDOf(
      _classRef, "requestRestore", "(Landroid/app/backup/RestoreObserver;)I");

  /// from: public int requestRestore(android.app.backup.RestoreObserver observer)
  ///
  /// @deprecated Applications shouldn't request a restore operation using this method. In Android
  /// P and later, this method is a no-op.
  ///
  /// Restore the calling application from backup. The data will be restored from the
  /// current backup dataset if the application has stored data there, or from
  /// the dataset used during the last full device setup operation if the current
  /// backup dataset has no matching data.  If no backup data exists for this application
  /// in either source, a non-zero value is returned.
  ///
  /// If this method returns zero (meaning success), the OS attempts to retrieve a backed-up
  /// dataset from the remote transport, instantiate the application's backup agent, and pass the
  /// dataset to the agent's
  /// android.app.backup.BackupAgent\#onRestore(BackupDataInput, int, android.os.ParcelFileDescriptor) onRestore()
  /// method.
  ///
  /// <p class="caution">Unlike other restore operations, this method doesn't terminate the
  /// application after the restore. The application continues running to receive the
  /// RestoreObserver callbacks on the {@code observer} argument. Full backups use an
  /// android.app.Application Application base class while key-value backups use the
  /// application subclass declared in the AndroidManifest.xml {@code <application>} tag.
  ///@param observer The RestoreObserver to receive callbacks during the restore
  /// operation. This must not be null.
  ///@return Zero on success; nonzero on error.
  int requestRestore(restoreobserver_.RestoreObserver observer) =>
      jniAccessors.callMethodWithArgs(reference, _id_requestRestore,
          jni.JniType.intType, [observer.reference]).integer;
}
