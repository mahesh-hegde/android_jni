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

import "../os/Bundle.dart" as bundle_;

import "RemoteConnection.dart" as remoteconnection_;

import "DisconnectCause.dart" as disconnectcause_;

import "CallAudioState.dart" as callaudiostate_;

import "../os/Handler.dart" as handler_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telecom.RemoteConference
///
/// A conference provided to a ConnectionService by another {@code ConnectionService} through
/// ConnectionService\#conferenceRemoteConnections. Once created, a {@code RemoteConference}
/// can be used to control the conference call or monitor changes through
/// RemoteConnection.Callback.
///@see ConnectionService\#onRemoteConferenceAdded
class RemoteConference extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telecom/RemoteConference");
  RemoteConference.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  RemoteConference()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getConnections = jniAccessors.getMethodIDOf(
      _classRef, "getConnections", "()Ljava/util/List;");

  /// from: public java.util.List<android.telecom.RemoteConnection> getConnections()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the list of RemoteConnections contained in this conference.
  ///@return A list of child connections.
  jni.JniObject getConnections() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getConnections, jni.JniType.objectType, []).object);

  static final _id_getState =
      jniAccessors.getMethodIDOf(_classRef, "getState", "()I");

  /// from: public int getState()
  ///
  /// Gets the state of the conference call. See Connection for valid values.
  ///@return A constant representing the state the conference call is currently in.
  int getState() => jniAccessors.callMethodWithArgs(
      reference, _id_getState, jni.JniType.intType, []).integer;

  static final _id_getConnectionCapabilities =
      jniAccessors.getMethodIDOf(_classRef, "getConnectionCapabilities", "()I");

  /// from: public int getConnectionCapabilities()
  ///
  /// Returns the capabilities of the conference. See {@code CAPABILITY_*} constants in class
  /// Connection for valid values.
  ///@return A bitmask of the capabilities of the conference call.
  int getConnectionCapabilities() => jniAccessors.callMethodWithArgs(reference,
      _id_getConnectionCapabilities, jni.JniType.intType, []).integer;

  static final _id_getConnectionProperties =
      jniAccessors.getMethodIDOf(_classRef, "getConnectionProperties", "()I");

  /// from: public int getConnectionProperties()
  ///
  /// Returns the properties of the conference. See {@code PROPERTY_*} constants in class
  /// Connection for valid values.
  ///@return A bitmask of the properties of the conference call.
  int getConnectionProperties() => jniAccessors.callMethodWithArgs(
      reference, _id_getConnectionProperties, jni.JniType.intType, []).integer;

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Obtain the extras associated with this {@code RemoteConnection}.
  ///@return The extras for this connection.
  bundle_.Bundle getExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_disconnect =
      jniAccessors.getMethodIDOf(_classRef, "disconnect", "()V");

  /// from: public void disconnect()
  ///
  /// Disconnects the conference call as well as the child RemoteConnections.
  void disconnect() => jniAccessors.callMethodWithArgs(
      reference, _id_disconnect, jni.JniType.voidType, []).check();

  static final _id_separate = jniAccessors.getMethodIDOf(
      _classRef, "separate", "(Landroid/telecom/RemoteConnection;)V");

  /// from: public void separate(android.telecom.RemoteConnection connection)
  ///
  /// Removes the specified RemoteConnection from the conference. This causes the
  /// RemoteConnection to become a standalone connection. This is a no-op if the
  /// RemoteConnection does not belong to this conference.
  ///@param connection The remote-connection to remove.
  void separate(remoteconnection_.RemoteConnection connection) =>
      jniAccessors.callMethodWithArgs(reference, _id_separate,
          jni.JniType.voidType, [connection.reference]).check();

  static final _id_merge =
      jniAccessors.getMethodIDOf(_classRef, "merge", "()V");

  /// from: public void merge()
  ///
  /// Merges all RemoteConnections of this conference into a single call. This should be
  /// invoked only if the conference contains the capability
  /// Connection\#CAPABILITY_MERGE_CONFERENCE, otherwise it is a no-op. The presence of said
  /// capability indicates that the connections of this conference, despite being part of the
  /// same conference object, are yet to have their audio streams merged; this is a common pattern
  /// for CDMA conference calls, but the capability is not used for GSM and SIP conference calls.
  /// Invoking this method will cause the unmerged child connections to merge their audio
  /// streams.
  void merge() => jniAccessors.callMethodWithArgs(
      reference, _id_merge, jni.JniType.voidType, []).check();

  static final _id_swap = jniAccessors.getMethodIDOf(_classRef, "swap", "()V");

  /// from: public void swap()
  ///
  /// Swaps the active audio stream between the conference's child RemoteConnections.
  /// This should be invoked only if the conference contains the capability
  /// Connection\#CAPABILITY_SWAP_CONFERENCE, otherwise it is a no-op. This is only used by
  /// ConnectionServices that create conferences for connections that do not yet have
  /// their audio streams merged; this is a common pattern for CDMA conference calls, but the
  /// capability is not used for GSM and SIP conference calls. Invoking this method will change the
  /// active audio stream to a different child connection.
  void swap() => jniAccessors.callMethodWithArgs(
      reference, _id_swap, jni.JniType.voidType, []).check();

  static final _id_hold = jniAccessors.getMethodIDOf(_classRef, "hold", "()V");

  /// from: public void hold()
  ///
  /// Puts the conference on hold.
  void hold() => jniAccessors.callMethodWithArgs(
      reference, _id_hold, jni.JniType.voidType, []).check();

  static final _id_unhold =
      jniAccessors.getMethodIDOf(_classRef, "unhold", "()V");

  /// from: public void unhold()
  ///
  /// Unholds the conference call.
  void unhold() => jniAccessors.callMethodWithArgs(
      reference, _id_unhold, jni.JniType.voidType, []).check();

  static final _id_getDisconnectCause = jniAccessors.getMethodIDOf(
      _classRef, "getDisconnectCause", "()Landroid/telecom/DisconnectCause;");

  /// from: public android.telecom.DisconnectCause getDisconnectCause()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the DisconnectCause for the conference if it is in the state
  /// Connection\#STATE_DISCONNECTED. If the conference is not disconnected, this will
  /// return null.
  ///@return The disconnect cause.
  disconnectcause_.DisconnectCause getDisconnectCause() =>
      disconnectcause_.DisconnectCause.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDisconnectCause,
          jni.JniType.objectType, []).object);

  static final _id_playDtmfTone =
      jniAccessors.getMethodIDOf(_classRef, "playDtmfTone", "(C)V");

  /// from: public void playDtmfTone(char digit)
  ///
  /// Requests that the conference start playing the specified DTMF tone.
  ///@param digit The digit for which to play a DTMF tone.
  void playDtmfTone(int digit) => jniAccessors.callMethodWithArgs(
      reference, _id_playDtmfTone, jni.JniType.voidType, [digit]).check();

  static final _id_stopDtmfTone =
      jniAccessors.getMethodIDOf(_classRef, "stopDtmfTone", "()V");

  /// from: public void stopDtmfTone()
  ///
  /// Stops the most recent request to play a DTMF tone.
  ///@see \#playDtmfTone
  void stopDtmfTone() => jniAccessors.callMethodWithArgs(
      reference, _id_stopDtmfTone, jni.JniType.voidType, []).check();

  static final _id_setCallAudioState = jniAccessors.getMethodIDOf(
      _classRef, "setCallAudioState", "(Landroid/telecom/CallAudioState;)V");

  /// from: public void setCallAudioState(android.telecom.CallAudioState state)
  ///
  /// Request to change the conference's audio routing to the specified state. The specified state
  /// can include audio routing (Bluetooth, Speaker, etc) and muting state.
  void setCallAudioState(callaudiostate_.CallAudioState state) =>
      jniAccessors.callMethodWithArgs(reference, _id_setCallAudioState,
          jni.JniType.voidType, [state.reference]).check();

  static final _id_getConferenceableConnections = jniAccessors.getMethodIDOf(
      _classRef, "getConferenceableConnections", "()Ljava/util/List;");

  /// from: public java.util.List<android.telecom.RemoteConnection> getConferenceableConnections()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a list of independent connections that can me merged with this conference.
  ///@return A list of conferenceable connections.
  jni.JniObject getConferenceableConnections() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getConferenceableConnections, jni.JniType.objectType, []).object);

  static final _id_registerCallback = jniAccessors.getMethodIDOf(_classRef,
      "registerCallback", "(Landroid/telecom/RemoteConference\$Callback;)V");

  /// from: public void registerCallback(android.telecom.RemoteConference.Callback callback)
  ///
  /// Register a callback through which to receive state updates for this conference.
  ///@param callback The callback to notify of state changes.
  void registerCallback(RemoteConference_Callback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_registerCallback,
          jni.JniType.voidType, [callback.reference]).check();

  static final _id_registerCallback1 = jniAccessors.getMethodIDOf(
      _classRef,
      "registerCallback",
      "(Landroid/telecom/RemoteConference\$Callback;Landroid/os/Handler;)V");

  /// from: public void registerCallback(android.telecom.RemoteConference.Callback callback, android.os.Handler handler)
  ///
  /// Registers a callback through which to receive state updates for this conference.
  /// Callbacks will be notified using the specified handler, if provided.
  ///@param callback The callback to notify of state changes.
  ///@param handler The handler on which to execute the callbacks.
  void registerCallback1(
          RemoteConference_Callback callback, handler_.Handler handler) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_registerCallback1,
          jni.JniType.voidType,
          [callback.reference, handler.reference]).check();

  static final _id_unregisterCallback = jniAccessors.getMethodIDOf(_classRef,
      "unregisterCallback", "(Landroid/telecom/RemoteConference\$Callback;)V");

  /// from: public void unregisterCallback(android.telecom.RemoteConference.Callback callback)
  ///
  /// Unregisters a previously registered callback.
  ///@see \#registerCallback
  ///@param callback The callback to unregister.
  void unregisterCallback(RemoteConference_Callback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_unregisterCallback,
          jni.JniType.voidType, [callback.reference]).check();
}

/// from: android.telecom.RemoteConference$Callback
///
/// Callback base class for RemoteConference.
class RemoteConference_Callback extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telecom/RemoteConference\$Callback");
  RemoteConference_Callback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  RemoteConference_Callback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onStateChanged = jniAccessors.getMethodIDOf(
      _classRef, "onStateChanged", "(Landroid/telecom/RemoteConference;II)V");

  /// from: public void onStateChanged(android.telecom.RemoteConference conference, int oldState, int newState)
  ///
  /// Invoked when the state of this {@code RemoteConferece} has changed. See
  /// \#getState().
  ///@param conference The {@code RemoteConference} invoking this method.
  ///@param oldState The previous state of the {@code RemoteConference}.
  ///@param newState The new state of the {@code RemoteConference}.
  void onStateChanged(
          RemoteConference conference, int oldState, int newState) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onStateChanged,
          jni.JniType.voidType,
          [conference.reference, oldState, newState]).check();

  static final _id_onDisconnected = jniAccessors.getMethodIDOf(
      _classRef,
      "onDisconnected",
      "(Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V");

  /// from: public void onDisconnected(android.telecom.RemoteConference conference, android.telecom.DisconnectCause disconnectCause)
  ///
  /// Invoked when this {@code RemoteConference} is disconnected.
  ///@param conference The {@code RemoteConference} invoking this method.
  ///@param disconnectCause The ({@see DisconnectCause}) associated with this failed
  ///     conference.
  void onDisconnected(RemoteConference conference,
          disconnectcause_.DisconnectCause disconnectCause) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onDisconnected,
          jni.JniType.voidType,
          [conference.reference, disconnectCause.reference]).check();

  static final _id_onConnectionAdded = jniAccessors.getMethodIDOf(
      _classRef,
      "onConnectionAdded",
      "(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V");

  /// from: public void onConnectionAdded(android.telecom.RemoteConference conference, android.telecom.RemoteConnection connection)
  ///
  /// Invoked when a RemoteConnection is added to the conference call.
  ///@param conference The {@code RemoteConference} invoking this method.
  ///@param connection The RemoteConnection being added.
  void onConnectionAdded(RemoteConference conference,
          remoteconnection_.RemoteConnection connection) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onConnectionAdded,
          jni.JniType.voidType,
          [conference.reference, connection.reference]).check();

  static final _id_onConnectionRemoved = jniAccessors.getMethodIDOf(
      _classRef,
      "onConnectionRemoved",
      "(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V");

  /// from: public void onConnectionRemoved(android.telecom.RemoteConference conference, android.telecom.RemoteConnection connection)
  ///
  /// Invoked when a RemoteConnection is removed from the conference call.
  ///@param conference The {@code RemoteConference} invoking this method.
  ///@param connection The RemoteConnection being removed.
  void onConnectionRemoved(RemoteConference conference,
          remoteconnection_.RemoteConnection connection) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onConnectionRemoved,
          jni.JniType.voidType,
          [conference.reference, connection.reference]).check();

  static final _id_onConnectionCapabilitiesChanged = jniAccessors.getMethodIDOf(
      _classRef,
      "onConnectionCapabilitiesChanged",
      "(Landroid/telecom/RemoteConference;I)V");

  /// from: public void onConnectionCapabilitiesChanged(android.telecom.RemoteConference conference, int connectionCapabilities)
  ///
  /// Indicates that the call capabilities of this {@code RemoteConference} have changed.
  /// See \#getConnectionCapabilities().
  ///@param conference The {@code RemoteConference} invoking this method.
  ///@param connectionCapabilities The new capabilities of the {@code RemoteConference}.
  void onConnectionCapabilitiesChanged(
          RemoteConference conference, int connectionCapabilities) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onConnectionCapabilitiesChanged,
          jni.JniType.voidType,
          [conference.reference, connectionCapabilities]).check();

  static final _id_onConnectionPropertiesChanged = jniAccessors.getMethodIDOf(
      _classRef,
      "onConnectionPropertiesChanged",
      "(Landroid/telecom/RemoteConference;I)V");

  /// from: public void onConnectionPropertiesChanged(android.telecom.RemoteConference conference, int connectionProperties)
  ///
  /// Indicates that the call properties of this {@code RemoteConference} have changed.
  /// See \#getConnectionProperties().
  ///@param conference The {@code RemoteConference} invoking this method.
  ///@param connectionProperties The new properties of the {@code RemoteConference}.
  void onConnectionPropertiesChanged(
          RemoteConference conference, int connectionProperties) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onConnectionPropertiesChanged,
          jni.JniType.voidType,
          [conference.reference, connectionProperties]).check();

  static final _id_onConferenceableConnectionsChanged =
      jniAccessors.getMethodIDOf(
          _classRef,
          "onConferenceableConnectionsChanged",
          "(Landroid/telecom/RemoteConference;Ljava/util/List;)V");

  /// from: public void onConferenceableConnectionsChanged(android.telecom.RemoteConference conference, java.util.List<android.telecom.RemoteConnection> conferenceableConnections)
  ///
  /// Invoked when the set of RemoteConnections which can be added to this conference
  /// call have changed.
  ///@param conference The {@code RemoteConference} invoking this method.
  ///@param conferenceableConnections The list of conferenceable RemoteConnections.
  void onConferenceableConnectionsChanged(RemoteConference conference,
          jni.JniObject conferenceableConnections) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onConferenceableConnectionsChanged,
          jni.JniType.voidType,
          [conference.reference, conferenceableConnections.reference]).check();

  static final _id_onDestroyed = jniAccessors.getMethodIDOf(
      _classRef, "onDestroyed", "(Landroid/telecom/RemoteConference;)V");

  /// from: public void onDestroyed(android.telecom.RemoteConference conference)
  ///
  /// Indicates that this {@code RemoteConference} has been destroyed. No further requests
  /// should be made to the {@code RemoteConference}, and references to it should be cleared.
  ///@param conference The {@code RemoteConference} invoking this method.
  void onDestroyed(RemoteConference conference) =>
      jniAccessors.callMethodWithArgs(reference, _id_onDestroyed,
          jni.JniType.voidType, [conference.reference]).check();

  static final _id_onExtrasChanged = jniAccessors.getMethodIDOf(
      _classRef,
      "onExtrasChanged",
      "(Landroid/telecom/RemoteConference;Landroid/os/Bundle;)V");

  /// from: public void onExtrasChanged(android.telecom.RemoteConference conference, android.os.Bundle extras)
  ///
  /// Handles changes to the {@code RemoteConference} extras.
  ///@param conference The {@code RemoteConference} invoking this method.
  ///@param extras The extras containing other information associated with the conference.
  ///
  /// This value may be {@code null}.
  void onExtrasChanged(RemoteConference conference, bundle_.Bundle extras) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onExtrasChanged,
          jni.JniType.voidType,
          [conference.reference, extras.reference]).check();
}
