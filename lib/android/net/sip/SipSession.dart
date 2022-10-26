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

import "SipProfile.dart" as sipprofile_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.sip.SipSession
///
/// Represents a SIP session that is associated with a SIP dialog or a standalone
/// transaction not within a dialog.
/// You can get a SipSession from SipManager with SipManager\#createSipSession createSipSession() (when initiating calls) or SipManager\#getSessionFor getSessionFor() (when receiving calls).
///
class SipSession extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/sip/SipSession");
  SipSession.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SipSession()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getLocalIp = jniAccessors.getMethodIDOf(
      _classRef, "getLocalIp", "()Ljava/lang/String;");

  /// from: public java.lang.String getLocalIp()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the IP address of the local host on which this SIP session runs.
  ///@return the IP address of the local host
  jni.JniString getLocalIp() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocalIp, jni.JniType.objectType, []).object);

  static final _id_getLocalProfile = jniAccessors.getMethodIDOf(
      _classRef, "getLocalProfile", "()Landroid/net/sip/SipProfile;");

  /// from: public android.net.sip.SipProfile getLocalProfile()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the SIP profile that this session is associated with.
  ///@return the SIP profile that this session is associated with
  sipprofile_.SipProfile getLocalProfile() =>
      sipprofile_.SipProfile.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocalProfile, jni.JniType.objectType, []).object);

  static final _id_getPeerProfile = jniAccessors.getMethodIDOf(
      _classRef, "getPeerProfile", "()Landroid/net/sip/SipProfile;");

  /// from: public android.net.sip.SipProfile getPeerProfile()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the SIP profile that this session is connected to. Only available
  /// when the session is associated with a SIP dialog.
  ///@return the SIP profile that this session is connected to
  sipprofile_.SipProfile getPeerProfile() =>
      sipprofile_.SipProfile.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPeerProfile, jni.JniType.objectType, []).object);

  static final _id_getState =
      jniAccessors.getMethodIDOf(_classRef, "getState", "()I");

  /// from: public int getState()
  ///
  /// Gets the session state. The value returned must be one of the states in
  /// State.
  ///@return the session state
  int getState() => jniAccessors.callMethodWithArgs(
      reference, _id_getState, jni.JniType.intType, []).integer;

  static final _id_isInCall =
      jniAccessors.getMethodIDOf(_classRef, "isInCall", "()Z");

  /// from: public boolean isInCall()
  ///
  /// Checks if the session is in a call.
  ///@return true if the session is in a call
  bool isInCall() => jniAccessors.callMethodWithArgs(
      reference, _id_isInCall, jni.JniType.booleanType, []).boolean;

  static final _id_getCallId = jniAccessors.getMethodIDOf(
      _classRef, "getCallId", "()Ljava/lang/String;");

  /// from: public java.lang.String getCallId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the call ID of the session.
  ///@return the call ID
  jni.JniString getCallId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCallId, jni.JniType.objectType, []).object);

  static final _id_setListener = jniAccessors.getMethodIDOf(
      _classRef, "setListener", "(Landroid/net/sip/SipSession\$Listener;)V");

  /// from: public void setListener(android.net.sip.SipSession.Listener listener)
  ///
  /// Sets the listener to listen to the session events. A {@code SipSession}
  /// can only hold one listener at a time. Subsequent calls to this method
  /// override the previous listener.
  ///@param listener to listen to the session events of this object
  void setListener(SipSession_Listener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_register =
      jniAccessors.getMethodIDOf(_classRef, "register", "(I)V");

  /// from: public void register(int duration)
  ///
  /// Performs registration to the server specified by the associated local
  /// profile. The session listener is called back upon success or failure of
  /// registration. The method is only valid to call when the session state is
  /// in State\#READY_TO_CALL.
  ///@param duration duration in second before the registration expires
  ///@see Listener
  void register(int duration) => jniAccessors.callMethodWithArgs(
      reference, _id_register, jni.JniType.voidType, [duration]).check();

  static final _id_unregister =
      jniAccessors.getMethodIDOf(_classRef, "unregister", "()V");

  /// from: public void unregister()
  ///
  /// Performs unregistration to the server specified by the associated local
  /// profile. Unregistration is technically the same as registration with zero
  /// expiration duration. The session listener is called back upon success or
  /// failure of unregistration. The method is only valid to call when the
  /// session state is in State\#READY_TO_CALL.
  ///@see Listener
  void unregister() => jniAccessors.callMethodWithArgs(
      reference, _id_unregister, jni.JniType.voidType, []).check();

  static final _id_makeCall = jniAccessors.getMethodIDOf(_classRef, "makeCall",
      "(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V");

  /// from: public void makeCall(android.net.sip.SipProfile callee, java.lang.String sessionDescription, int timeout)
  ///
  /// Initiates a call to the specified profile. The session listener is called
  /// back upon defined session events. The method is only valid to call when
  /// the session state is in State\#READY_TO_CALL.
  ///@param callee the SIP profile to make the call to
  ///@param sessionDescription the session description of this call
  ///@param timeout the session will be timed out if the call is not
  ///        established within {@code timeout} seconds. Default value (defined
  ///        by SIP protocol) is used if {@code timeout} is zero or negative.
  ///@see Listener
  void makeCall(sipprofile_.SipProfile callee, jni.JniString sessionDescription,
          int timeout) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_makeCall,
          jni.JniType.voidType,
          [callee.reference, sessionDescription.reference, timeout]).check();

  static final _id_answerCall = jniAccessors.getMethodIDOf(
      _classRef, "answerCall", "(Ljava/lang/String;I)V");

  /// from: public void answerCall(java.lang.String sessionDescription, int timeout)
  ///
  /// Answers an incoming call with the specified session description. The
  /// method is only valid to call when the session state is in
  /// State\#INCOMING_CALL.
  ///@param sessionDescription the session description to answer this call
  ///@param timeout the session will be timed out if the call is not
  ///        established within {@code timeout} seconds. Default value (defined
  ///        by SIP protocol) is used if {@code timeout} is zero or negative.
  void answerCall(jni.JniString sessionDescription, int timeout) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_answerCall,
          jni.JniType.voidType,
          [sessionDescription.reference, timeout]).check();

  static final _id_endCall =
      jniAccessors.getMethodIDOf(_classRef, "endCall", "()V");

  /// from: public void endCall()
  ///
  /// Ends an established call, terminates an outgoing call or rejects an
  /// incoming call. The method is only valid to call when the session state is
  /// in State\#IN_CALL,
  /// State\#INCOMING_CALL,
  /// State\#OUTGOING_CALL or
  /// State\#OUTGOING_CALL_RING_BACK.
  void endCall() => jniAccessors.callMethodWithArgs(
      reference, _id_endCall, jni.JniType.voidType, []).check();

  static final _id_changeCall = jniAccessors.getMethodIDOf(
      _classRef, "changeCall", "(Ljava/lang/String;I)V");

  /// from: public void changeCall(java.lang.String sessionDescription, int timeout)
  ///
  /// Changes the session description during a call. The method is only valid
  /// to call when the session state is in State\#IN_CALL.
  ///@param sessionDescription the new session description
  ///@param timeout the session will be timed out if the call is not
  ///        established within {@code timeout} seconds. Default value (defined
  ///        by SIP protocol) is used if {@code timeout} is zero or negative.
  void changeCall(jni.JniString sessionDescription, int timeout) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_changeCall,
          jni.JniType.voidType,
          [sessionDescription.reference, timeout]).check();
}

/// from: android.net.sip.SipSession$State
///
/// Defines SIP session states, such as "registering", "outgoing call", and "in call".
class SipSession_State extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/sip/SipSession\$State");
  SipSession_State.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int DEREGISTERING
  ///
  /// When the unregistration request is sent out.
  static const DEREGISTERING = 2;

  /// from: static public final int INCOMING_CALL
  ///
  /// When an INVITE request is received.
  static const INCOMING_CALL = 3;

  /// from: static public final int INCOMING_CALL_ANSWERING
  ///
  /// When an OK response is sent for the INVITE request received.
  static const INCOMING_CALL_ANSWERING = 4;

  /// from: static public final int IN_CALL
  ///
  /// When a call is established.
  static const IN_CALL = 8;

  /// from: static public final int NOT_DEFINED
  ///
  /// Not defined.
  static const NOT_DEFINED = 101;

  /// from: static public final int OUTGOING_CALL
  ///
  /// When an INVITE request is sent.
  static const OUTGOING_CALL = 5;

  /// from: static public final int OUTGOING_CALL_CANCELING
  ///
  /// When a CANCEL request is sent for the INVITE request sent.
  static const OUTGOING_CALL_CANCELING = 7;

  /// from: static public final int OUTGOING_CALL_RING_BACK
  ///
  /// When a RINGING response is received for the INVITE request sent.
  static const OUTGOING_CALL_RING_BACK = 6;

  /// from: static public final int PINGING
  ///
  /// When an OPTIONS request is sent.
  static const PINGING = 9;

  /// from: static public final int READY_TO_CALL
  ///
  /// When session is ready to initiate a call or transaction.
  static const READY_TO_CALL = 0;

  /// from: static public final int REGISTERING
  ///
  /// When the registration request is sent out.
  static const REGISTERING = 1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SipSession_State()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_toString1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "toString", "(I)Ljava/lang/String;");

  /// from: static public java.lang.String toString(int state)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Converts the state to string.
  static jni.JniString toString1(int state) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_toString1, jni.JniType.objectType, [state]).object);
}

/// from: android.net.sip.SipSession$Listener
///
/// Listener for events relating to a SIP session, such as when a session is being registered
/// ("on registering") or a call is outgoing ("on calling").
/// Many of these events are also received by SipAudioCall.Listener.
///
class SipSession_Listener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/sip/SipSession\$Listener");
  SipSession_Listener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SipSession_Listener()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onCalling = jniAccessors.getMethodIDOf(
      _classRef, "onCalling", "(Landroid/net/sip/SipSession;)V");

  /// from: public void onCalling(android.net.sip.SipSession session)
  ///
  /// Called when an INVITE request is sent to initiate a new call.
  ///@param session the session object that carries out the transaction
  void onCalling(SipSession session) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onCalling,
      jni.JniType.voidType,
      [session.reference]).check();

  static final _id_onRinging = jniAccessors.getMethodIDOf(
      _classRef,
      "onRinging",
      "(Landroid/net/sip/SipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V");

  /// from: public void onRinging(android.net.sip.SipSession session, android.net.sip.SipProfile caller, java.lang.String sessionDescription)
  ///
  /// Called when an INVITE request is received.
  ///@param session the session object that carries out the transaction
  ///@param caller the SIP profile of the caller
  ///@param sessionDescription the caller's session description
  void onRinging(SipSession session, sipprofile_.SipProfile caller,
          jni.JniString sessionDescription) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onRinging, jni.JniType.voidType, [
        session.reference,
        caller.reference,
        sessionDescription.reference
      ]).check();

  static final _id_onRingingBack = jniAccessors.getMethodIDOf(
      _classRef, "onRingingBack", "(Landroid/net/sip/SipSession;)V");

  /// from: public void onRingingBack(android.net.sip.SipSession session)
  ///
  /// Called when a RINGING response is received for the INVITE request sent
  ///@param session the session object that carries out the transaction
  void onRingingBack(SipSession session) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onRingingBack,
      jni.JniType.voidType,
      [session.reference]).check();

  static final _id_onCallEstablished = jniAccessors.getMethodIDOf(_classRef,
      "onCallEstablished", "(Landroid/net/sip/SipSession;Ljava/lang/String;)V");

  /// from: public void onCallEstablished(android.net.sip.SipSession session, java.lang.String sessionDescription)
  ///
  /// Called when the session is established.
  ///@param session the session object that is associated with the dialog
  ///@param sessionDescription the peer's session description
  void onCallEstablished(
          SipSession session, jni.JniString sessionDescription) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onCallEstablished,
          jni.JniType.voidType,
          [session.reference, sessionDescription.reference]).check();

  static final _id_onCallEnded = jniAccessors.getMethodIDOf(
      _classRef, "onCallEnded", "(Landroid/net/sip/SipSession;)V");

  /// from: public void onCallEnded(android.net.sip.SipSession session)
  ///
  /// Called when the session is terminated.
  ///@param session the session object that is associated with the dialog
  void onCallEnded(SipSession session) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onCallEnded,
      jni.JniType.voidType,
      [session.reference]).check();

  static final _id_onCallBusy = jniAccessors.getMethodIDOf(
      _classRef, "onCallBusy", "(Landroid/net/sip/SipSession;)V");

  /// from: public void onCallBusy(android.net.sip.SipSession session)
  ///
  /// Called when the peer is busy during session initialization.
  ///@param session the session object that carries out the transaction
  void onCallBusy(SipSession session) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onCallBusy,
      jni.JniType.voidType,
      [session.reference]).check();

  static final _id_onError = jniAccessors.getMethodIDOf(_classRef, "onError",
      "(Landroid/net/sip/SipSession;ILjava/lang/String;)V");

  /// from: public void onError(android.net.sip.SipSession session, int errorCode, java.lang.String errorMessage)
  ///
  /// Called when an error occurs during session initialization and
  /// termination.
  ///@param session the session object that carries out the transaction
  ///@param errorCode error code defined in SipErrorCode
  ///@param errorMessage error message
  void onError(SipSession session, int errorCode, jni.JniString errorMessage) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onError,
          jni.JniType.voidType,
          [session.reference, errorCode, errorMessage.reference]).check();

  static final _id_onCallChangeFailed = jniAccessors.getMethodIDOf(
      _classRef,
      "onCallChangeFailed",
      "(Landroid/net/sip/SipSession;ILjava/lang/String;)V");

  /// from: public void onCallChangeFailed(android.net.sip.SipSession session, int errorCode, java.lang.String errorMessage)
  ///
  /// Called when an error occurs during session modification negotiation.
  ///@param session the session object that carries out the transaction
  ///@param errorCode error code defined in SipErrorCode
  ///@param errorMessage error message
  void onCallChangeFailed(
          SipSession session, int errorCode, jni.JniString errorMessage) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onCallChangeFailed,
          jni.JniType.voidType,
          [session.reference, errorCode, errorMessage.reference]).check();

  static final _id_onRegistering = jniAccessors.getMethodIDOf(
      _classRef, "onRegistering", "(Landroid/net/sip/SipSession;)V");

  /// from: public void onRegistering(android.net.sip.SipSession session)
  ///
  /// Called when a registration request is sent.
  ///@param session the session object that carries out the transaction
  void onRegistering(SipSession session) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onRegistering,
      jni.JniType.voidType,
      [session.reference]).check();

  static final _id_onRegistrationDone = jniAccessors.getMethodIDOf(
      _classRef, "onRegistrationDone", "(Landroid/net/sip/SipSession;I)V");

  /// from: public void onRegistrationDone(android.net.sip.SipSession session, int duration)
  ///
  /// Called when registration is successfully done.
  ///@param session the session object that carries out the transaction
  ///@param duration duration in second before the registration expires
  void onRegistrationDone(SipSession session, int duration) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRegistrationDone,
          jni.JniType.voidType, [session.reference, duration]).check();

  static final _id_onRegistrationFailed = jniAccessors.getMethodIDOf(
      _classRef,
      "onRegistrationFailed",
      "(Landroid/net/sip/SipSession;ILjava/lang/String;)V");

  /// from: public void onRegistrationFailed(android.net.sip.SipSession session, int errorCode, java.lang.String errorMessage)
  ///
  /// Called when the registration fails.
  ///@param session the session object that carries out the transaction
  ///@param errorCode error code defined in SipErrorCode
  ///@param errorMessage error message
  void onRegistrationFailed(
          SipSession session, int errorCode, jni.JniString errorMessage) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onRegistrationFailed,
          jni.JniType.voidType,
          [session.reference, errorCode, errorMessage.reference]).check();

  static final _id_onRegistrationTimeout = jniAccessors.getMethodIDOf(
      _classRef, "onRegistrationTimeout", "(Landroid/net/sip/SipSession;)V");

  /// from: public void onRegistrationTimeout(android.net.sip.SipSession session)
  ///
  /// Called when the registration gets timed out.
  ///@param session the session object that carries out the transaction
  void onRegistrationTimeout(SipSession session) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRegistrationTimeout,
          jni.JniType.voidType, [session.reference]).check();
}
