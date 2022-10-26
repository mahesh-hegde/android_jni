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

import "ProcessedData.dart" as processeddata_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.drm.DrmRights
///
/// An entity class that wraps the license information retrieved from the online DRM server.
///
/// A caller can instantiate a DrmRights object by first invoking the
/// DrmManagerClient\#processDrmInfo(DrmInfo) method and then using the resulting
/// ProcessedData object to invoke the DrmRights\#DrmRights(ProcessedData, String)
/// constructor.
///
/// A caller can also instantiate a DrmRights object by using the
/// DrmRights\#DrmRights(String, String) constructor, which takes a path to a file
/// containing rights information instead of a <code>ProcessedData</code>.
///
/// Please note that the account id and subscription id is not mandatory by all DRM agents
/// or plugins. When account id or subscription id is not required by the specific DRM
/// agent or plugin, they can be either null, or an empty string, or any other don't-care
/// string value.
class DrmRights extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/drm/DrmRights");
  DrmRights.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String rightsFilePath, java.lang.String mimeType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a <code>DrmRights</code> object with the given parameters.
  ///@param rightsFilePath Path to the file containing rights information.
  ///@param mimeType MIME type. Must not be null or an empty string.
  DrmRights(jni.JniString rightsFilePath, jni.JniString mimeType)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [rightsFilePath.reference, mimeType.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String rightsFilePath, java.lang.String mimeType, java.lang.String accountId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a <code>DrmRights</code> object with the given parameters.
  ///@param rightsFilePath Path to the file containing rights information.
  ///@param mimeType MIME type. Must not be null or an empty string.
  ///@param accountId Account ID of the user.
  DrmRights.ctor1(jni.JniString rightsFilePath, jni.JniString mimeType,
      jni.JniString accountId)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, [
          rightsFilePath.reference,
          mimeType.reference,
          accountId.reference
        ]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String rightsFilePath, java.lang.String mimeType, java.lang.String accountId, java.lang.String subscriptionId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a <code>DrmRights</code> object with the given parameters.
  ///@param rightsFilePath Path to the file containing rights information.
  ///@param mimeType MIME type. Must not be null or an empty string.
  ///@param accountId Account ID of the user.
  ///@param subscriptionId Subscription ID of the user.
  DrmRights.ctor2(jni.JniString rightsFilePath, jni.JniString mimeType,
      jni.JniString accountId, jni.JniString subscriptionId)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, [
          rightsFilePath.reference,
          mimeType.reference,
          accountId.reference,
          subscriptionId.reference
        ]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/io/File;Ljava/lang/String;)V");

  /// from: public void <init>(java.io.File rightsFile, java.lang.String mimeType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a <code>DrmRights</code> object with the given parameters.
  ///@param rightsFile File containing rights information.
  ///@param mimeType MIME type. Must not be null or an empty string.
  DrmRights.ctor3(jni.JniObject rightsFile, jni.JniString mimeType)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3,
            [rightsFile.reference, mimeType.reference]).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/drm/ProcessedData;Ljava/lang/String;)V");

  /// from: public void <init>(android.drm.ProcessedData data, java.lang.String mimeType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a <code>DrmRights</code> object with the given parameters.
  ///@param data A ProcessedData object containing rights information.
  ///             Must not be null.
  ///@param mimeType The MIME type. It must not be null or an empty string.
  DrmRights.ctor4(processeddata_.ProcessedData data, jni.JniString mimeType)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [data.reference, mimeType.reference]).object);

  static final _id_getData =
      jniAccessors.getMethodIDOf(_classRef, "getData", "()[B");

  /// from: public byte[] getData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the rights data associated with this <code>DrmRights</code> object.
  ///@return A <code>byte</code> array representing the rights data.
  jni.JniObject getData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getData, jni.JniType.objectType, []).object);

  static final _id_getMimeType = jniAccessors.getMethodIDOf(
      _classRef, "getMimeType", "()Ljava/lang/String;");

  /// from: public java.lang.String getMimeType()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the MIME type associated with this <code>DrmRights</code> object.
  ///@return The MIME type.
  jni.JniString getMimeType() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMimeType, jni.JniType.objectType, []).object);

  static final _id_getAccountId = jniAccessors.getMethodIDOf(
      _classRef, "getAccountId", "()Ljava/lang/String;");

  /// from: public java.lang.String getAccountId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the account ID associated with this <code>DrmRights</code> object.
  ///@return The account ID.
  jni.JniString getAccountId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAccountId, jni.JniType.objectType, []).object);

  static final _id_getSubscriptionId = jniAccessors.getMethodIDOf(
      _classRef, "getSubscriptionId", "()Ljava/lang/String;");

  /// from: public java.lang.String getSubscriptionId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the subscription ID associated with this <code>DrmRights</code> object.
  ///@return The subscription ID.
  jni.JniString getSubscriptionId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSubscriptionId, jni.JniType.objectType, []).object);
}