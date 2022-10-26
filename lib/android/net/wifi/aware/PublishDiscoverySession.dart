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

import "DiscoverySession.dart" as discoverysession_;

import "WifiAwareManager.dart" as wifiawaremanager_;

import "PublishConfig.dart" as publishconfig_;
import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.aware.PublishDiscoverySession
///
/// A class representing a Aware publish session. Created when
/// WifiAwareSession\#publish(PublishConfig, DiscoverySessionCallback,
/// android.os.Handler) is called and a discovery session is created and returned in
/// DiscoverySessionCallback\#onPublishStarted(PublishDiscoverySession). See
/// baseline functionality of all discovery sessions in DiscoverySession. This
/// object allows updating an existing/running publish discovery session using
/// \#updatePublish(PublishConfig).
class PublishDiscoverySession extends discoverysession_.DiscoverySession {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/aware/PublishDiscoverySession");
  PublishDiscoverySession.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/net/wifi/aware/WifiAwareManager;II)V");

  /// from: void <init>(android.net.wifi.aware.WifiAwareManager manager, int clientId, int sessionId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  PublishDiscoverySession(
      wifiawaremanager_.WifiAwareManager manager, int clientId, int sessionId)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [manager.reference, clientId, sessionId]).object);

  static final _id_updatePublish = jniAccessors.getMethodIDOf(
      _classRef, "updatePublish", "(Landroid/net/wifi/aware/PublishConfig;)V");

  /// from: public void updatePublish(android.net.wifi.aware.PublishConfig publishConfig)
  ///
  /// Re-configure the currently active publish session. The
  /// DiscoverySessionCallback is not replaced - the same listener used
  /// at creation is still used. The results of the configuration are returned using
  /// DiscoverySessionCallback:
  /// <ul>
  ///     <li>DiscoverySessionCallback\#onSessionConfigUpdated(): configuration
  ///     update succeeded.
  ///     <li>DiscoverySessionCallback\#onSessionConfigFailed(): configuration
  ///     update failed. The publish discovery session is still running using its previous
  ///     configuration (i.e. update failure does not terminate the session).
  /// </ul>
  ///@param publishConfig The new discovery publish session configuration (PublishConfig).
  ///
  /// This value must never be {@code null}.
  void updatePublish(publishconfig_.PublishConfig publishConfig) =>
      jniAccessors.callMethodWithArgs(reference, _id_updatePublish,
          jni.JniType.voidType, [publishConfig.reference]).check();
}