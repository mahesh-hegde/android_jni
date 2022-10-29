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

import "../../content/Intent.dart" as intent_;

import "MediaProjection.dart" as mediaprojection_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.projection.MediaProjectionManager
///
/// Manages the retrieval of certain types of MediaProjection tokens.
class MediaProjectionManager extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/media/projection/MediaProjectionManager");
  MediaProjectionManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_createScreenCaptureIntent = jniAccessors.getMethodIDOf(
      _classRef, "createScreenCaptureIntent", "()Landroid/content/Intent;");

  /// from: public android.content.Intent createScreenCaptureIntent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an Intent that __must__ passed to startActivityForResult()
  /// in order to start screen capture. The activity will prompt
  /// the user whether to allow screen capture.  The result of this
  /// activity should be passed to getMediaProjection.
  intent_.Intent createScreenCaptureIntent() =>
      intent_.Intent.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_createScreenCaptureIntent, jni.JniType.objectType, []).object);

  static final _id_getMediaProjection = jniAccessors.getMethodIDOf(
      _classRef,
      "getMediaProjection",
      "(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;");

  /// from: public android.media.projection.MediaProjection getMediaProjection(int resultCode, android.content.Intent resultData)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the MediaProjection obtained from a succesful screen
  /// capture request. Will be null if the result from the
  /// startActivityForResult() is anything other than RESULT_OK.
  ///@param resultCode The result code from android.app.Activity\#onActivityResult(int,
  /// int, android.content.Intent)
  ///@param resultData The resulting data from android.app.Activity\#onActivityResult(int,
  /// int, android.content.Intent)
  ///
  /// This value must never be {@code null}.
  mediaprojection_.MediaProjection getMediaProjection(
          int resultCode, intent_.Intent resultData) =>
      mediaprojection_.MediaProjection.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getMediaProjection,
          jni.JniType.objectType,
          [resultCode, resultData.reference]).object);
}
