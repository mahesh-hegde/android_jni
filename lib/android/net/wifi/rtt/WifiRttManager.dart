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

import "RangingRequest.dart" as rangingrequest_;

import "RangingResultCallback.dart" as rangingresultcallback_;
import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.rtt.WifiRttManager
///
/// This class provides the primary API for measuring distance (range) to other devices using the
/// IEEE 802.11mc Wi-Fi Round Trip Time (RTT) technology.
///
/// The devices which can be ranged include:
/// <li>Access Points (APs)
/// <li>Wi-Fi Aware peers
///
/// Ranging requests are triggered using
/// \#startRanging(RangingRequest, Executor, RangingResultCallback). Results (in case of
/// successful operation) are returned in the RangingResultCallback\#onRangingResults(List)
/// callback.
///
///     Wi-Fi RTT may not be usable at some points, e.g. when Wi-Fi is disabled. To validate that
///     the functionality is available use the \#isAvailable() function. To track
///     changes in RTT usability register for the \#ACTION_WIFI_RTT_STATE_CHANGED
///     broadcast. Note that this broadcast is not sticky - you should register for it and then
///     check the above API to avoid a race condition.
class WifiRttManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/rtt/WifiRttManager");
  WifiRttManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_WIFI_RTT_STATE_CHANGED
  ///
  /// Broadcast intent action to indicate that the state of Wi-Fi RTT availability has changed.
  /// Use the \#isAvailable() to query the current status.
  /// This broadcast is __not__ sticky, use the \#isAvailable() API after registering
  /// the broadcast to check the current state of Wi-Fi RTT.
  /// Note: The broadcast is only delivered to registered receivers - no manifest registered
  /// components will be launched.
  static const ACTION_WIFI_RTT_STATE_CHANGED =
      "android.net.wifi.rtt.action.WIFI_RTT_STATE_CHANGED";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  WifiRttManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_isAvailable =
      jniAccessors.getMethodIDOf(_classRef, "isAvailable", "()Z");

  /// from: public boolean isAvailable()
  ///
  /// Returns the current status of RTT API: whether or not RTT is available. To track
  /// changes in the state of RTT API register for the
  /// \#ACTION_WIFI_RTT_STATE_CHANGED broadcast.
  /// Note: availability of RTT does not mean that the app can use the API. The app's
  /// permissions and platform Location Mode are validated at run-time.
  ///@return A boolean indicating whether the app can use the RTT API at this time (true) or
  /// not (false).
  bool isAvailable() => jniAccessors.callMethodWithArgs(
      reference, _id_isAvailable, jni.JniType.booleanType, []).boolean;

  static final _id_startRanging = jniAccessors.getMethodIDOf(
      _classRef,
      "startRanging",
      "(Landroid/net/wifi/rtt/RangingRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V");

  /// from: public void startRanging(android.net.wifi.rtt.RangingRequest request, java.util.concurrent.Executor executor, android.net.wifi.rtt.RangingResultCallback callback)
  ///
  /// Initiate a request to range to a set of devices specified in the RangingRequest.
  /// Results will be returned in the RangingResultCallback set of callbacks.
  ///
  /// Requires android.Manifest.permission\#ACCESS_FINE_LOCATION and android.Manifest.permission\#CHANGE_WIFI_STATE and android.Manifest.permission\#ACCESS_WIFI_STATE
  ///@param request A request specifying a set of devices whose distance measurements are
  ///                 requested.
  /// This value must never be {@code null}.
  ///@param executor The Executor on which to run the callback.
  /// This value must never be {@code null}.
  /// Callback and listener events are dispatched through this
  ///  *           Executor, providing an easy way to control which thread is
  ///  *           used. To dispatch events through the main thread of your
  ///  *           application, you can use Context\#getMainExecutor(). To
  ///  *           dispatch events through a shared thread pool, you can use
  ///  *           AsyncTask\#THREAD_POOL_EXECUTOR.
  ///@param callback A callback for the result of the ranging request.
  ///
  /// This value must never be {@code null}.
  void startRanging(
          rangingrequest_.RangingRequest request,
          jni.JniObject executor,
          rangingresultcallback_.RangingResultCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_startRanging,
          jni.JniType.voidType,
          [request.reference, executor.reference, callback.reference]).check();
}