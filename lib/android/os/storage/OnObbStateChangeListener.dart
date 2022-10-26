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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.storage.OnObbStateChangeListener
///
/// Used for receiving notifications from StorageManager about OBB file
/// states.
class OnObbStateChangeListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/storage/OnObbStateChangeListener");
  OnObbStateChangeListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ERROR_ALREADY_MOUNTED
  ///
  /// The OBB has already been mounted. Returned in status messages from calls
  /// made via StorageManager
  static const ERROR_ALREADY_MOUNTED = 24;

  /// from: static public final int ERROR_COULD_NOT_MOUNT
  ///
  /// The OBB could not be mounted by the system. Returned in status messages
  /// from calls made via StorageManager
  static const ERROR_COULD_NOT_MOUNT = 21;

  /// from: static public final int ERROR_COULD_NOT_UNMOUNT
  ///
  /// The OBB could not be unmounted. This most likely indicates that a file is
  /// in use on the OBB. Returned in status messages from calls made via
  /// StorageManager
  static const ERROR_COULD_NOT_UNMOUNT = 22;

  /// from: static public final int ERROR_INTERNAL
  ///
  /// There was an internal system error encountered while trying to mount the
  /// OBB. Returned in status messages from calls made via
  /// StorageManager
  static const ERROR_INTERNAL = 20;

  /// from: static public final int ERROR_NOT_MOUNTED
  ///
  /// A call was made to unmount the OBB when it was not mounted. Returned in
  /// status messages from calls made via StorageManager
  static const ERROR_NOT_MOUNTED = 23;

  /// from: static public final int ERROR_PERMISSION_DENIED
  ///
  /// The current application does not have permission to use this OBB. This
  /// could be because the OBB indicates it's owned by a different package or
  /// some other error. Returned in status messages from calls made via
  /// StorageManager
  static const ERROR_PERMISSION_DENIED = 25;

  /// from: static public final int MOUNTED
  ///
  /// The OBB container is now mounted and ready for use. Returned in status
  /// messages from calls made via StorageManager
  static const MOUNTED = 1;

  /// from: static public final int UNMOUNTED
  ///
  /// The OBB container is now unmounted and not usable. Returned in status
  /// messages from calls made via StorageManager
  static const UNMOUNTED = 2;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  OnObbStateChangeListener()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onObbStateChange = jniAccessors.getMethodIDOf(
      _classRef, "onObbStateChange", "(Ljava/lang/String;I)V");

  /// from: public void onObbStateChange(java.lang.String path, int state)
  ///
  /// Called when an OBB has changed states.
  ///@param path path to the OBB file the state change has happened on
  ///@param state the current state of the OBB
  void onObbStateChange(jni.JniString path, int state) =>
      jniAccessors.callMethodWithArgs(reference, _id_onObbStateChange,
          jni.JniType.voidType, [path.reference, state]).check();
}
