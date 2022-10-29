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

import "PeerHandle.dart" as peerhandle_;

import "../../NetworkSpecifier.dart" as networkspecifier_;
import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.aware.DiscoverySession
///
/// A class representing a single publish or subscribe Aware session. This object
/// will not be created directly - only its child classes are available:
/// PublishDiscoverySession and SubscribeDiscoverySession. This
/// class provides functionality common to both publish and subscribe discovery sessions:
/// <ul>
///     <li>Sending messages: \#sendMessage(PeerHandle, int, byte[]) method.
///     <li>Creating a network-specifier when requesting a Aware connection:
///     \#createNetworkSpecifierOpen(PeerHandle) or
///     \#createNetworkSpecifierPassphrase(PeerHandle, String).
/// </ul>
/// The \#close() method must be called to destroy discovery sessions once they are
/// no longer needed.
class DiscoverySession extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/aware/DiscoverySession");
  DiscoverySession.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Destroy the publish or subscribe session - free any resources, and stop
  /// transmitting packets on-air (for an active session) or listening for
  /// matches (for a passive session). The session may not be used for any
  /// additional operations after its destruction.
  ///
  ///     This operation must be done on a session which is no longer needed. Otherwise system
  ///     resources will continue to be utilized until the application exits. The only
  ///     exception is a session for which we received a termination callback,
  ///     DiscoverySessionCallback\#onSessionTerminated().
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  ///
  /// @hide
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();

  static final _id_sendMessage = jniAccessors.getMethodIDOf(
      _classRef, "sendMessage", "(Landroid/net/wifi/aware/PeerHandle;I[B)V");

  /// from: public void sendMessage(android.net.wifi.aware.PeerHandle peerHandle, int messageId, byte[] message)
  ///
  /// Sends a message to the specified destination. Aware messages are transmitted in the context
  /// of a discovery session - executed subsequent to a publish/subscribe
  /// DiscoverySessionCallback\#onServiceDiscovered(PeerHandle,
  /// byte[], java.util.List) event.
  ///
  ///     Aware messages are not guaranteed delivery. Callbacks on
  ///     DiscoverySessionCallback indicate message was transmitted successfully,
  ///     DiscoverySessionCallback\#onMessageSendSucceeded(int), or transmission
  ///     failed (possibly after several retries) -
  ///     DiscoverySessionCallback\#onMessageSendFailed(int).
  ///
  /// The peer will get a callback indicating a message was received using
  /// DiscoverySessionCallback\#onMessageReceived(PeerHandle,
  /// byte[]).
  ///@param peerHandle The peer's handle for the message. Must be a result of an
  /// DiscoverySessionCallback\#onServiceDiscovered(PeerHandle,
  /// byte[], java.util.List) or
  /// DiscoverySessionCallback\#onMessageReceived(PeerHandle,
  /// byte[]) events.
  /// This value must never be {@code null}.
  ///@param messageId An arbitrary integer used by the caller to identify the message. The same
  ///            integer ID will be returned in the callbacks indicating message send success or
  ///            failure. The {@code messageId} is not used internally by the Aware service - it
  ///                  can be arbitrary and non-unique.
  ///@param message The message to be transmitted.
  ///
  /// This value may be {@code null}.
  void sendMessage(peerhandle_.PeerHandle peerHandle, int messageId,
          jni.JniObject message) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_sendMessage,
          jni.JniType.voidType,
          [peerHandle.reference, messageId, message.reference]).check();

  static final _id_createNetworkSpecifierOpen = jniAccessors.getMethodIDOf(
      _classRef,
      "createNetworkSpecifierOpen",
      "(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/NetworkSpecifier;");

  /// from: public android.net.NetworkSpecifier createNetworkSpecifierOpen(android.net.wifi.aware.PeerHandle peerHandle)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a android.net.NetworkRequest.Builder\#setNetworkSpecifier(NetworkSpecifier) for
  /// an unencrypted WiFi Aware connection (link) to the specified peer. The
  /// android.net.NetworkRequest.Builder\#addTransportType(int) should be set to
  /// android.net.NetworkCapabilities\#TRANSPORT_WIFI_AWARE.
  ///
  /// This method should be used when setting up a connection with a peer discovered through Aware
  /// discovery or communication (in such scenarios the MAC address of the peer is shielded by
  /// an opaque peer ID handle). If an Aware connection is needed to a peer discovered using other
  /// OOB (out-of-band) mechanism then use the alternative
  /// WifiAwareSession\#createNetworkSpecifierOpen(int, byte[]) method - which uses the
  /// peer's MAC address.
  ///
  /// Note: per the Wi-Fi Aware specification the roles are fixed - a Subscriber is an INITIATOR
  /// and a Publisher is a RESPONDER.
  ///
  /// To set up an encrypted link use the
  /// \#createNetworkSpecifierPassphrase(PeerHandle, String) API.
  ///@param peerHandle The peer's handle obtained through
  /// DiscoverySessionCallback\#onServiceDiscovered(PeerHandle, byte[], java.util.List)
  ///                   or
  ///                   DiscoverySessionCallback\#onMessageReceived(PeerHandle, byte[]).
  ///                   On a RESPONDER this value is used to gate the acceptance of a connection
  ///                   request from only that peer.
  ///
  /// This value must never be {@code null}.
  ///@return A NetworkSpecifier to be used to construct
  /// android.net.NetworkRequest.Builder\#setNetworkSpecifier(NetworkSpecifier) to pass to
  /// android.net.ConnectivityManager\#requestNetwork(android.net.NetworkRequest,
  /// android.net.ConnectivityManager.NetworkCallback)
  /// [or other varieties of that API].
  networkspecifier_.NetworkSpecifier createNetworkSpecifierOpen(
          peerhandle_.PeerHandle peerHandle) =>
      networkspecifier_.NetworkSpecifier.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_createNetworkSpecifierOpen,
              jni.JniType.objectType, [peerHandle.reference]).object);

  static final _id_createNetworkSpecifierPassphrase = jniAccessors.getMethodIDOf(
      _classRef,
      "createNetworkSpecifierPassphrase",
      "(Landroid/net/wifi/aware/PeerHandle;Ljava/lang/String;)Landroid/net/NetworkSpecifier;");

  /// from: public android.net.NetworkSpecifier createNetworkSpecifierPassphrase(android.net.wifi.aware.PeerHandle peerHandle, java.lang.String passphrase)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a android.net.NetworkRequest.Builder\#setNetworkSpecifier(NetworkSpecifier) for
  /// an encrypted WiFi Aware connection (link) to the specified peer. The
  /// android.net.NetworkRequest.Builder\#addTransportType(int) should be set to
  /// android.net.NetworkCapabilities\#TRANSPORT_WIFI_AWARE.
  ///
  /// This method should be used when setting up a connection with a peer discovered through Aware
  /// discovery or communication (in such scenarios the MAC address of the peer is shielded by
  /// an opaque peer ID handle). If an Aware connection is needed to a peer discovered using other
  /// OOB (out-of-band) mechanism then use the alternative
  /// WifiAwareSession\#createNetworkSpecifierPassphrase(int, byte[], String) method -
  /// which uses the peer's MAC address.
  ///
  /// Note: per the Wi-Fi Aware specification the roles are fixed - a Subscriber is an INITIATOR
  /// and a Publisher is a RESPONDER.
  ///@param peerHandle The peer's handle obtained through
  /// DiscoverySessionCallback\#onServiceDiscovered(PeerHandle,
  /// byte[], java.util.List) or
  /// DiscoverySessionCallback\#onMessageReceived(PeerHandle,
  /// byte[]). On a RESPONDER this value is used to gate the acceptance of a connection request
  ///                   from only that peer.
  /// This value must never be {@code null}.
  ///@param passphrase The passphrase to be used to encrypt the link. The PMK is generated from
  ///                   the passphrase. Use the
  ///                   \#createNetworkSpecifierOpen(PeerHandle) API to
  ///                   specify an open (unencrypted) link.
  ///
  /// This value must never be {@code null}.
  ///@return A NetworkSpecifier to be used to construct
  /// android.net.NetworkRequest.Builder\#setNetworkSpecifier(NetworkSpecifier) to pass to
  /// android.net.ConnectivityManager\#requestNetwork(android.net.NetworkRequest,
  /// android.net.ConnectivityManager.NetworkCallback)
  /// [or other varieties of that API].
  networkspecifier_.NetworkSpecifier createNetworkSpecifierPassphrase(
          peerhandle_.PeerHandle peerHandle, jni.JniString passphrase) =>
      networkspecifier_.NetworkSpecifier.fromRef(jniAccessors
          .callMethodWithArgs(
              reference,
              _id_createNetworkSpecifierPassphrase,
              jni.JniType.objectType,
              [peerHandle.reference, passphrase.reference]).object);
}
