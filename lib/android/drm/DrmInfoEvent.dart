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

import "DrmEvent.dart" as drmevent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.drm.DrmInfoEvent
///
/// An entity class that is passed to the
/// DrmManagerClient.OnInfoListener\#onInfo onInfo() callback.
class DrmInfoEvent extends drmevent_.DrmEvent {
  static final _classRef = jniAccessors.getClassOf("android/drm/DrmInfoEvent");
  DrmInfoEvent.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int TYPE_ACCOUNT_ALREADY_REGISTERED
  ///
  /// The registration has already been done for the given account.
  static const TYPE_ACCOUNT_ALREADY_REGISTERED = 5;

  /// from: static public final int TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT
  ///
  /// The registration has already been done by another account ID.
  static const TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT = 1;

  /// from: static public final int TYPE_REMOVE_RIGHTS
  ///
  /// The rights need to be removed completely.
  static const TYPE_REMOVE_RIGHTS = 2;

  /// from: static public final int TYPE_RIGHTS_INSTALLED
  ///
  /// The rights have been successfully downloaded and installed.
  static const TYPE_RIGHTS_INSTALLED = 3;

  /// from: static public final int TYPE_RIGHTS_REMOVED
  ///
  /// The rights have been removed.
  static const TYPE_RIGHTS_REMOVED = 6;

  /// from: static public final int TYPE_WAIT_FOR_RIGHTS
  ///
  /// The rights object is being delivered to the device. You must wait before
  /// calling DrmManagerClient\#acquireRights acquireRights() again.
  static const TYPE_WAIT_FOR_RIGHTS = 4;

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(IILjava/lang/String;)V");

  /// from: public void <init>(int uniqueId, int type, java.lang.String message)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a <code>DrmInfoEvent</code> object with the specified parameters.
  ///@param uniqueId Unique session identifier.
  ///@param type Type of the event. Must be any of the event types defined above,
  /// or the constants defined in DrmEvent.
  ///@param message Message description. It can be null.
  DrmInfoEvent.ctor1(int uniqueId, int type, jni.JniString message)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [uniqueId, type, message.reference]).object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(IILjava/lang/String;Ljava/util/HashMap;)V");

  /// from: public void <init>(int uniqueId, int type, java.lang.String message, java.util.HashMap<java.lang.String,java.lang.Object> attributes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a <code>DrmInfoEvent</code> object with the specified parameters.
  ///@param uniqueId Unique session identifier.
  ///@param type Type of the event. Must be any of the event types defined above,
  /// or the constants defined in DrmEvent
  ///@param message Message description. It can be null.
  ///@param attributes Attributes for extensible information. Could be any
  /// information provided by the plug-in.
  DrmInfoEvent(
      int uniqueId, int type, jni.JniString message, jni.JniObject attributes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [uniqueId, type, message.reference, attributes.reference]).object);
}
