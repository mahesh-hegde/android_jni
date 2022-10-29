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

import "ProcessedData.dart" as processeddata_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.drm.DrmInfoStatus
///
/// An entity class that wraps the result of communication between a device
/// and an online DRM server. Specifically, when the
/// DrmManagerClient\#processDrmInfo DrmManagerClient.processDrmInfo()
/// method is called, an instance of <code>DrmInfoStatus</code> is returned.
///
/// This class contains the ProcessedData object, which can be used
/// to instantiate a DrmRights object during license acquisition.
class DrmInfoStatus extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/drm/DrmInfoStatus");
  DrmInfoStatus.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int STATUS_ERROR
  ///
  /// Indicate failed communication.
  static const STATUS_ERROR = 2;

  /// from: static public final int STATUS_OK
  ///
  /// Indicate successful communication.
  static const STATUS_OK = 1;

  static final _id_data = jniAccessors.getFieldIDOf(
      _classRef, "data", "Landroid/drm/ProcessedData;");

  /// from: public final android.drm.ProcessedData data
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The processed data. It is optional and thus could be null. When it
  /// is null, it indicates that a particular call to
  /// DrmManagerClient\#processDrmInfo DrmManagerClient.processDrmInfo()
  /// does not return any additional useful information except for the status code.
  processeddata_.ProcessedData get data =>
      processeddata_.ProcessedData.fromRef(jniAccessors
          .getField(reference, _id_data, jni.JniType.objectType)
          .object);

  static final _id_infoType =
      jniAccessors.getFieldIDOf(_classRef, "infoType", "I");

  /// from: public final int infoType
  ///
  /// The type of DRM information processed. Must be one of the valid type
  /// constants defined in DrmInfoRequest.
  int get infoType => jniAccessors
      .getField(reference, _id_infoType, jni.JniType.intType)
      .integer;

  static final _id_mimeType =
      jniAccessors.getFieldIDOf(_classRef, "mimeType", "Ljava/lang/String;");

  /// from: public final java.lang.String mimeType
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The MIME type of the content. Must not be null or an empty string.
  jni.JniString get mimeType => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_mimeType, jni.JniType.objectType)
      .object);

  static final _id_statusCode =
      jniAccessors.getFieldIDOf(_classRef, "statusCode", "I");

  /// from: public final int statusCode
  ///
  /// The status of the communication. Must be one of the defined status
  /// constants above.
  int get statusCode => jniAccessors
      .getField(reference, _id_statusCode, jni.JniType.intType)
      .integer;

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(IILandroid/drm/ProcessedData;Ljava/lang/String;)V");

  /// from: public void <init>(int statusCode, int infoType, android.drm.ProcessedData data, java.lang.String mimeType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a <code>DrmInfoStatus</code> object with the specified parameters.
  ///@param statusCode The status of the communication. Must be one of the defined
  /// status constants above.
  ///@param infoType The type of the DRM information processed. Must be a valid
  /// type for DrmInfoRequest.
  ///@param data The processed data.
  ///@param mimeType The MIME type.
  DrmInfoStatus(int statusCode, int infoType, processeddata_.ProcessedData data,
      jni.JniString mimeType)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [statusCode, infoType, data.reference, mimeType.reference]).object);
}
