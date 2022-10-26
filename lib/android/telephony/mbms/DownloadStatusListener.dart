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

import "DownloadRequest.dart" as downloadrequest_;

import "FileInfo.dart" as fileinfo_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.mbms.DownloadStatusListener
///
/// A optional listener class used by download clients to track progress. Apps should extend this
/// class and pass an instance into
/// MbmsDownloadSession\#download(DownloadRequest)
///
/// This is optionally specified when requesting a download and will only be called while the app
/// is running.
class DownloadStatusListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/mbms/DownloadStatusListener");
  DownloadStatusListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  DownloadStatusListener()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onStatusUpdated = jniAccessors.getMethodIDOf(
      _classRef,
      "onStatusUpdated",
      "(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;I)V");

  /// from: public void onStatusUpdated(android.telephony.mbms.DownloadRequest request, android.telephony.mbms.FileInfo fileInfo, int status)
  ///
  /// Gives download status callbacks for a file in a DownloadRequest.
  ///@param request a DownloadRequest, indicating which download is being referenced.
  ///@param fileInfo a FileInfo specifying the file to report progress on.  Note that
  ///   the request may result in many files being downloaded and the client
  ///   may not have been able to get a list of them in advance.
  ///@param status The current status of the download.
  ///
  /// Value is android.telephony.MbmsDownloadSession\#STATUS_UNKNOWN, android.telephony.MbmsDownloadSession\#STATUS_ACTIVELY_DOWNLOADING, android.telephony.MbmsDownloadSession\#STATUS_PENDING_DOWNLOAD, android.telephony.MbmsDownloadSession\#STATUS_PENDING_REPAIR, or android.telephony.MbmsDownloadSession\#STATUS_PENDING_DOWNLOAD_WINDOW
  void onStatusUpdated(downloadrequest_.DownloadRequest request,
          fileinfo_.FileInfo fileInfo, int status) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onStatusUpdated,
          jni.JniType.voidType,
          [request.reference, fileInfo.reference, status]).check();
}