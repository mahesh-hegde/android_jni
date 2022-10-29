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

import "../../net/Uri.dart" as uri_;

import "StreamingServiceInfo.dart" as streamingserviceinfo_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.mbms.StreamingService
///
/// Class used to represent a single MBMS stream. After a stream has been started with
/// MbmsStreamingSession\#startStreaming(StreamingServiceInfo, java.util.concurrent.Executor,
/// StreamingServiceCallback),
/// this class is used to hold information about the stream and control it.
class StreamingService extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/mbms/StreamingService");
  StreamingService.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int BROADCAST_METHOD
  ///
  /// The method of transmission currently used for a stream,
  /// reported via StreamingServiceCallback\#onStreamMethodUpdated
  static const BROADCAST_METHOD = 1;

  /// from: static public final int REASON_BY_USER_REQUEST
  ///
  /// State changed due to a call to \#close() or
  /// MbmsStreamingSession\#startStreaming(StreamingServiceInfo,
  /// java.util.concurrent.Executor, StreamingServiceCallback)
  static const REASON_BY_USER_REQUEST = 1;

  /// from: static public final int REASON_END_OF_SESSION
  ///
  /// State changed due to the streaming session ending at the carrier.
  static const REASON_END_OF_SESSION = 2;

  /// from: static public final int REASON_FREQUENCY_CONFLICT
  ///
  /// State changed due to a frequency conflict with another requested stream.
  static const REASON_FREQUENCY_CONFLICT = 3;

  /// from: static public final int REASON_LEFT_MBMS_BROADCAST_AREA
  ///
  /// State changed due to the device leaving the where this stream is being broadcast.
  static const REASON_LEFT_MBMS_BROADCAST_AREA = 6;

  /// from: static public final int REASON_NONE
  ///
  /// Indicates that the middleware does not have a reason to provide for the state change.
  static const REASON_NONE = 0;

  /// from: static public final int REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE
  ///
  /// State changed due to the device leaving the home carrier's LTE network.
  static const REASON_NOT_CONNECTED_TO_HOMECARRIER_LTE = 5;

  /// from: static public final int REASON_OUT_OF_MEMORY
  ///
  /// State changed due to the middleware running out of memory
  static const REASON_OUT_OF_MEMORY = 4;

  /// from: static public final int STATE_STALLED
  static const STATE_STALLED = 3;

  /// from: static public final int STATE_STARTED
  static const STATE_STARTED = 2;

  /// from: static public final int STATE_STOPPED
  static const STATE_STOPPED = 1;

  /// from: static public final int UNICAST_METHOD
  static const UNICAST_METHOD = 2;

  static final _id_getPlaybackUri = jniAccessors.getMethodIDOf(
      _classRef, "getPlaybackUri", "()Landroid/net/Uri;");

  /// from: public android.net.Uri getPlaybackUri()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the Uri used to play this stream.
  ///
  /// May throw an IllegalArgumentException or an IllegalStateException.
  ///@return The Uri to pass to the streaming client, or {@code null} if an error
  ///         occurred.
  uri_.Uri getPlaybackUri() => uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getPlaybackUri, jni.JniType.objectType, []).object);

  static final _id_getInfo = jniAccessors.getMethodIDOf(
      _classRef, "getInfo", "()Landroid/telephony/mbms/StreamingServiceInfo;");

  /// from: public android.telephony.mbms.StreamingServiceInfo getInfo()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the StreamingServiceInfo corresponding to this stream.
  streamingserviceinfo_.StreamingServiceInfo getInfo() =>
      streamingserviceinfo_.StreamingServiceInfo.fromRef(jniAccessors
          .callMethodWithArgs(
              reference, _id_getInfo, jni.JniType.objectType, []).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Stop streaming this service. Further operations on this object will fail with an
  /// IllegalStateException.
  ///
  /// May throw an IllegalArgumentException or an IllegalStateException
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();
}
