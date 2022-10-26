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

/// from: android.drm.ProcessedData
///
/// An entity class that wraps the result of a
/// DrmManagerClient\#processDrmInfo(DrmInfo) processDrmInfo()
/// transaction between a device and a DRM server.
///
/// In a license acquisition scenario this class holds the rights information in binary form.
class ProcessedData extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/drm/ProcessedData");
  ProcessedData.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "([BLjava/lang/String;)V");

  /// from: void <init>(byte[] data, java.lang.String accountId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a <code>ProcessedData</code> object with the given parameters.
  ///@param data Rights data.
  ///@param accountId Account ID of the user.
  ProcessedData(jni.JniObject data, jni.JniString accountId)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [data.reference, accountId.reference]).object);

  static final _id_getData =
      jniAccessors.getMethodIDOf(_classRef, "getData", "()[B");

  /// from: public byte[] getData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the processed data.
  ///@return The rights data.
  jni.JniObject getData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getData, jni.JniType.objectType, []).object);

  static final _id_getAccountId = jniAccessors.getMethodIDOf(
      _classRef, "getAccountId", "()Ljava/lang/String;");

  /// from: public java.lang.String getAccountId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the account ID associated with this object.
  ///@return The account ID of the user.
  jni.JniString getAccountId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAccountId, jni.JniType.objectType, []).object);

  static final _id_getSubscriptionId = jniAccessors.getMethodIDOf(
      _classRef, "getSubscriptionId", "()Ljava/lang/String;");

  /// from: public java.lang.String getSubscriptionId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the subscription ID associated with this object.
  ///@return The subscription ID of the user.
  jni.JniString getSubscriptionId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSubscriptionId, jni.JniType.objectType, []).object);
}
