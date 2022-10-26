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

import "../../content/Context.dart" as context_;

import "SipProfile.dart" as sipprofile_;

import "../../app/PendingIntent.dart" as pendingintent_;

import "SipRegistrationListener.dart" as sipregistrationlistener_;

import "SipAudioCall.dart" as sipaudiocall_;

import "../../content/Intent.dart" as intent_;

import "SipSession.dart" as sipsession_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.sip.SipManager
///
/// Provides APIs for SIP tasks, such as initiating SIP connections, and provides access to related
/// SIP services. This class is the starting point for any SIP actions. You can acquire an instance
/// of it with \#newInstance newInstance().
///
/// The APIs in this class allows you to:
///
/// <ul>
/// <li>Create a SipSession to get ready for making calls or listen for incoming calls. See
/// \#createSipSession createSipSession() and \#getSessionFor getSessionFor().</li>
/// <li>Initiate and receive generic SIP calls or audio-only SIP calls. Generic SIP calls may
/// be video, audio, or other, and are initiated with \#open open(). Audio-only SIP calls
/// should be handled with a SipAudioCall, which you can acquire with \#makeAudioCall makeAudioCall() and \#takeAudioCall takeAudioCall().</li>
/// <li>Register and unregister with a SIP service provider, with
///      \#register register() and \#unregister unregister().</li>
/// <li>Verify session connectivity, with \#isOpened isOpened() and
///      \#isRegistered isRegistered().</li>
/// </ul>
/// <p class="note"><strong>Note:</strong> Not all Android-powered devices support VOIP calls using
/// SIP. You should always call android.net.sip.SipManager\#isVoipSupported isVoipSupported() to verify that the device supports VOIP calling and android.net.sip.SipManager\#isApiSupported isApiSupported() to verify that the device supports
/// the SIP APIs. Your application must also request the android.Manifest.permission\#INTERNET and android.Manifest.permission\#USE_SIP
/// permissions.
///
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about using SIP, read the
/// <a href="{@docRoot}guide/topics/network/sip.html">Session Initiation Protocol</a>
/// developer guide.
///
/// </div>
class SipManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/sip/SipManager");
  SipManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String EXTRA_CALL_ID
  ///
  /// Key to retrieve the call ID from an incoming call intent.
  ///@see \#open(SipProfile, PendingIntent, SipRegistrationListener)
  static const EXTRA_CALL_ID = "android:sipCallID";

  /// from: static public final java.lang.String EXTRA_OFFER_SD
  ///
  /// Key to retrieve the offered session description from an incoming call
  /// intent.
  ///@see \#open(SipProfile, PendingIntent, SipRegistrationListener)
  static const EXTRA_OFFER_SD = "android:sipOfferSD";

  /// from: static public final int INCOMING_CALL_RESULT_CODE
  ///
  /// The result code to be sent back with the incoming call
  /// PendingIntent.
  ///@see \#open(SipProfile, PendingIntent, SipRegistrationListener)
  static const INCOMING_CALL_RESULT_CODE = 101;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  SipManager(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_newInstance = jniAccessors.getStaticMethodIDOf(_classRef,
      "newInstance", "(Landroid/content/Context;)Landroid/net/sip/SipManager;");

  /// from: static public android.net.sip.SipManager newInstance(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a manager instance. Returns null if SIP API is not supported.
  ///@param context application context for creating the manager object
  ///@return the manager instance or null if SIP API is not supported
  static SipManager newInstance(context_.Context context) =>
      SipManager.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_newInstance, jni.JniType.objectType, [context.reference]).object);

  static final _id_isApiSupported = jniAccessors.getStaticMethodIDOf(
      _classRef, "isApiSupported", "(Landroid/content/Context;)Z");

  /// from: static public boolean isApiSupported(android.content.Context context)
  ///
  /// Returns true if the SIP API is supported by the system.
  static bool isApiSupported(context_.Context context) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isApiSupported,
          jni.JniType.booleanType, [context.reference]).boolean;

  static final _id_isVoipSupported = jniAccessors.getStaticMethodIDOf(
      _classRef, "isVoipSupported", "(Landroid/content/Context;)Z");

  /// from: static public boolean isVoipSupported(android.content.Context context)
  ///
  /// Returns true if the system supports SIP-based VOIP API.
  static bool isVoipSupported(context_.Context context) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isVoipSupported,
          jni.JniType.booleanType, [context.reference]).boolean;

  static final _id_isSipWifiOnly = jniAccessors.getStaticMethodIDOf(
      _classRef, "isSipWifiOnly", "(Landroid/content/Context;)Z");

  /// from: static public boolean isSipWifiOnly(android.content.Context context)
  ///
  /// Returns true if SIP is only available on WIFI.
  static bool isSipWifiOnly(context_.Context context) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isSipWifiOnly,
          jni.JniType.booleanType, [context.reference]).boolean;

  static final _id_open = jniAccessors.getMethodIDOf(
      _classRef, "open", "(Landroid/net/sip/SipProfile;)V");

  /// from: public void open(android.net.sip.SipProfile localProfile)
  ///
  /// Opens the profile for making generic SIP calls. The caller may make subsequent calls
  /// through \#makeAudioCall. If one also wants to receive calls on the
  /// profile, use
  /// \#open(SipProfile, PendingIntent, SipRegistrationListener)
  /// instead.
  ///@param localProfile the SIP profile to make calls from
  ///@throws SipException if the profile contains incorrect settings or
  ///      calling the SIP service results in an error
  void open(sipprofile_.SipProfile localProfile) =>
      jniAccessors.callMethodWithArgs(reference, _id_open, jni.JniType.voidType,
          [localProfile.reference]).check();

  static final _id_open1 = jniAccessors.getMethodIDOf(_classRef, "open",
      "(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V");

  /// from: public void open(android.net.sip.SipProfile localProfile, android.app.PendingIntent incomingCallPendingIntent, android.net.sip.SipRegistrationListener listener)
  ///
  /// Opens the profile for making calls and/or receiving generic SIP calls. The caller may
  /// make subsequent calls through \#makeAudioCall. If the
  /// auto-registration option is enabled in the profile, the SIP service
  /// will register the profile to the corresponding SIP provider periodically
  /// in order to receive calls from the provider. When the SIP service
  /// receives a new call, it will send out an intent with the provided action
  /// string. The intent contains a call ID extra and an offer session
  /// description string extra. Use \#getCallId and
  /// \#getOfferSessionDescription to retrieve those extras.
  ///@param localProfile the SIP profile to receive incoming calls for
  ///@param incomingCallPendingIntent When an incoming call is received, the
  ///      SIP service will call
  ///      PendingIntent\#send(Context, int, Intent) to send back the
  ///      intent to the caller with \#INCOMING_CALL_RESULT_CODE as the
  ///      result code and the intent to fill in the call ID and session
  ///      description information. It cannot be null.
  ///@param listener to listen to registration events; can be null
  ///@see \#getCallId
  ///@see \#getOfferSessionDescription
  ///@see \#takeAudioCall
  ///@throws NullPointerException if {@code incomingCallPendingIntent} is null
  ///@throws SipException if the profile contains incorrect settings or
  ///      calling the SIP service results in an error
  ///@see \#isIncomingCallIntent
  ///@see \#getCallId
  ///@see \#getOfferSessionDescription
  void open1(
          sipprofile_.SipProfile localProfile,
          pendingintent_.PendingIntent incomingCallPendingIntent,
          sipregistrationlistener_.SipRegistrationListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_open1, jni.JniType.voidType, [
        localProfile.reference,
        incomingCallPendingIntent.reference,
        listener.reference
      ]).check();

  static final _id_setRegistrationListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setRegistrationListener",
      "(Ljava/lang/String;Landroid/net/sip/SipRegistrationListener;)V");

  /// from: public void setRegistrationListener(java.lang.String localProfileUri, android.net.sip.SipRegistrationListener listener)
  ///
  /// Sets the listener to listen to registration events. No effect if the
  /// profile has not been opened to receive calls (see
  /// \#open(SipProfile, PendingIntent, SipRegistrationListener)).
  ///@param localProfileUri the URI of the profile
  ///@param listener to listen to registration events; can be null
  ///@throws SipException if calling the SIP service results in an error
  void setRegistrationListener(jni.JniString localProfileUri,
          sipregistrationlistener_.SipRegistrationListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setRegistrationListener,
          jni.JniType.voidType,
          [localProfileUri.reference, listener.reference]).check();

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "(Ljava/lang/String;)V");

  /// from: public void close(java.lang.String localProfileUri)
  ///
  /// Closes the specified profile to not make/receive calls. All the resources
  /// that were allocated to the profile are also released.
  ///@param localProfileUri the URI of the profile to close
  ///@throws SipException if calling the SIP service results in an error
  void close(jni.JniString localProfileUri) => jniAccessors.callMethodWithArgs(
      reference,
      _id_close,
      jni.JniType.voidType,
      [localProfileUri.reference]).check();

  static final _id_isOpened = jniAccessors.getMethodIDOf(
      _classRef, "isOpened", "(Ljava/lang/String;)Z");

  /// from: public boolean isOpened(java.lang.String localProfileUri)
  ///
  /// Checks if the specified profile is opened in the SIP service for
  /// making and/or receiving calls.
  ///@param localProfileUri the URI of the profile in question
  ///@return true if the profile is enabled to receive calls
  ///@throws SipException if calling the SIP service results in an error
  bool isOpened(jni.JniString localProfileUri) =>
      jniAccessors.callMethodWithArgs(reference, _id_isOpened,
          jni.JniType.booleanType, [localProfileUri.reference]).boolean;

  static final _id_isRegistered = jniAccessors.getMethodIDOf(
      _classRef, "isRegistered", "(Ljava/lang/String;)Z");

  /// from: public boolean isRegistered(java.lang.String localProfileUri)
  ///
  /// Checks if the SIP service has successfully registered the profile to the
  /// SIP provider (specified in the profile) for receiving calls. Returning
  /// true from this method also implies the profile is opened
  /// (\#isOpened).
  ///@param localProfileUri the URI of the profile in question
  ///@return true if the profile is registered to the SIP provider; false if
  ///        the profile has not been opened in the SIP service or the SIP
  ///        service has not yet successfully registered the profile to the SIP
  ///        provider
  ///@throws SipException if calling the SIP service results in an error
  bool isRegistered(jni.JniString localProfileUri) =>
      jniAccessors.callMethodWithArgs(reference, _id_isRegistered,
          jni.JniType.booleanType, [localProfileUri.reference]).boolean;

  static final _id_makeAudioCall = jniAccessors.getMethodIDOf(
      _classRef,
      "makeAudioCall",
      "(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Landroid/net/sip/SipAudioCall\$Listener;I)Landroid/net/sip/SipAudioCall;");

  /// from: public android.net.sip.SipAudioCall makeAudioCall(android.net.sip.SipProfile localProfile, android.net.sip.SipProfile peerProfile, android.net.sip.SipAudioCall.Listener listener, int timeout)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a SipAudioCall to make a call. The attempt will be timed
  /// out if the call is not established within {@code timeout} seconds and
  /// SipAudioCall.Listener\#onError onError(SipAudioCall, SipErrorCode.TIME_OUT, String)
  /// will be called.
  ///@param localProfile the SIP profile to make the call from
  ///@param peerProfile the SIP profile to make the call to
  ///@param listener to listen to the call events from SipAudioCall;
  ///      can be null
  ///@param timeout the timeout value in seconds. Default value (defined by
  ///        SIP protocol) is used if {@code timeout} is zero or negative.
  ///@return a SipAudioCall object
  ///@throws SipException if calling the SIP service results in an error or
  ///      VOIP API is not supported by the device
  ///@see SipAudioCall.Listener\#onError
  ///@see \#isVoipSupported
  sipaudiocall_.SipAudioCall makeAudioCall(
          sipprofile_.SipProfile localProfile,
          sipprofile_.SipProfile peerProfile,
          sipaudiocall_.SipAudioCall_Listener listener,
          int timeout) =>
      sipaudiocall_.SipAudioCall.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_makeAudioCall, jni.JniType.objectType, [
        localProfile.reference,
        peerProfile.reference,
        listener.reference,
        timeout
      ]).object);

  static final _id_makeAudioCall1 = jniAccessors.getMethodIDOf(
      _classRef,
      "makeAudioCall",
      "(Ljava/lang/String;Ljava/lang/String;Landroid/net/sip/SipAudioCall\$Listener;I)Landroid/net/sip/SipAudioCall;");

  /// from: public android.net.sip.SipAudioCall makeAudioCall(java.lang.String localProfileUri, java.lang.String peerProfileUri, android.net.sip.SipAudioCall.Listener listener, int timeout)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a SipAudioCall to make an audio call. The attempt will be
  /// timed out if the call is not established within {@code timeout} seconds
  /// and
  /// SipAudioCall.Listener\#onError onError(SipAudioCall, SipErrorCode.TIME_OUT, String)
  /// will be called.
  ///@param localProfileUri URI of the SIP profile to make the call from
  ///@param peerProfileUri URI of the SIP profile to make the call to
  ///@param listener to listen to the call events from SipAudioCall;
  ///      can be null
  ///@param timeout the timeout value in seconds. Default value (defined by
  ///        SIP protocol) is used if {@code timeout} is zero or negative.
  ///@return a SipAudioCall object
  ///@throws SipException if calling the SIP service results in an error or
  ///      VOIP API is not supported by the device
  ///@see SipAudioCall.Listener\#onError
  ///@see \#isVoipSupported
  sipaudiocall_.SipAudioCall makeAudioCall1(
          jni.JniString localProfileUri,
          jni.JniString peerProfileUri,
          sipaudiocall_.SipAudioCall_Listener listener,
          int timeout) =>
      sipaudiocall_.SipAudioCall.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_makeAudioCall1, jni.JniType.objectType, [
        localProfileUri.reference,
        peerProfileUri.reference,
        listener.reference,
        timeout
      ]).object);

  static final _id_takeAudioCall = jniAccessors.getMethodIDOf(
      _classRef,
      "takeAudioCall",
      "(Landroid/content/Intent;Landroid/net/sip/SipAudioCall\$Listener;)Landroid/net/sip/SipAudioCall;");

  /// from: public android.net.sip.SipAudioCall takeAudioCall(android.content.Intent incomingCallIntent, android.net.sip.SipAudioCall.Listener listener)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a SipAudioCall to take an incoming call. Before the call
  /// is returned, the listener will receive a
  /// SipAudioCall.Listener\#onRinging
  /// callback.
  ///@param incomingCallIntent the incoming call broadcast intent
  ///@param listener to listen to the call events from SipAudioCall;
  ///      can be null
  ///@return a SipAudioCall object
  ///@throws SipException if calling the SIP service results in an error
  sipaudiocall_.SipAudioCall takeAudioCall(intent_.Intent incomingCallIntent,
          sipaudiocall_.SipAudioCall_Listener listener) =>
      sipaudiocall_.SipAudioCall.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_takeAudioCall,
          jni.JniType.objectType,
          [incomingCallIntent.reference, listener.reference]).object);

  static final _id_isIncomingCallIntent = jniAccessors.getStaticMethodIDOf(
      _classRef, "isIncomingCallIntent", "(Landroid/content/Intent;)Z");

  /// from: static public boolean isIncomingCallIntent(android.content.Intent intent)
  ///
  /// Checks if the intent is an incoming call broadcast intent.
  ///@param intent the intent in question
  ///@return true if the intent is an incoming call broadcast intent
  static bool isIncomingCallIntent(intent_.Intent intent) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isIncomingCallIntent,
          jni.JniType.booleanType, [intent.reference]).boolean;

  static final _id_getCallId = jniAccessors.getStaticMethodIDOf(
      _classRef, "getCallId", "(Landroid/content/Intent;)Ljava/lang/String;");

  /// from: static public java.lang.String getCallId(android.content.Intent incomingCallIntent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the call ID from the specified incoming call broadcast intent.
  ///@param incomingCallIntent the incoming call broadcast intent
  ///@return the call ID or null if the intent does not contain it
  static jni.JniString getCallId(intent_.Intent incomingCallIntent) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getCallId,
          jni.JniType.objectType,
          [incomingCallIntent.reference]).object);

  static final _id_getOfferSessionDescription =
      jniAccessors.getStaticMethodIDOf(_classRef, "getOfferSessionDescription",
          "(Landroid/content/Intent;)Ljava/lang/String;");

  /// from: static public java.lang.String getOfferSessionDescription(android.content.Intent incomingCallIntent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the offer session description from the specified incoming call
  /// broadcast intent.
  ///@param incomingCallIntent the incoming call broadcast intent
  ///@return the offer session description or null if the intent does not
  ///      have it
  static jni.JniString getOfferSessionDescription(
          intent_.Intent incomingCallIntent) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getOfferSessionDescription,
          jni.JniType.objectType,
          [incomingCallIntent.reference]).object);

  static final _id_register = jniAccessors.getMethodIDOf(_classRef, "register",
      "(Landroid/net/sip/SipProfile;ILandroid/net/sip/SipRegistrationListener;)V");

  /// from: public void register(android.net.sip.SipProfile localProfile, int expiryTime, android.net.sip.SipRegistrationListener listener)
  ///
  /// Manually registers the profile to the corresponding SIP provider for
  /// receiving calls.
  /// \#open(SipProfile, PendingIntent, SipRegistrationListener) is
  /// still needed to be called at least once in order for the SIP service to
  /// notify the caller with the android.app.PendingIntent when an incoming call is
  /// received.
  ///@param localProfile the SIP profile to register with
  ///@param expiryTime registration expiration time (in seconds)
  ///@param listener to listen to the registration events
  ///@throws SipException if calling the SIP service results in an error
  void register(sipprofile_.SipProfile localProfile, int expiryTime,
          sipregistrationlistener_.SipRegistrationListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_register,
          jni.JniType.voidType,
          [localProfile.reference, expiryTime, listener.reference]).check();

  static final _id_unregister = jniAccessors.getMethodIDOf(
      _classRef,
      "unregister",
      "(Landroid/net/sip/SipProfile;Landroid/net/sip/SipRegistrationListener;)V");

  /// from: public void unregister(android.net.sip.SipProfile localProfile, android.net.sip.SipRegistrationListener listener)
  ///
  /// Manually unregisters the profile from the corresponding SIP provider for
  /// stop receiving further calls. This may interference with the auto
  /// registration process in the SIP service if the auto-registration option
  /// in the profile is enabled.
  ///@param localProfile the SIP profile to register with
  ///@param listener to listen to the registration events
  ///@throws SipException if calling the SIP service results in an error
  void unregister(sipprofile_.SipProfile localProfile,
          sipregistrationlistener_.SipRegistrationListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_unregister,
          jni.JniType.voidType,
          [localProfile.reference, listener.reference]).check();

  static final _id_getSessionFor = jniAccessors.getMethodIDOf(
      _classRef,
      "getSessionFor",
      "(Landroid/content/Intent;)Landroid/net/sip/SipSession;");

  /// from: public android.net.sip.SipSession getSessionFor(android.content.Intent incomingCallIntent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the SipSession that handles the incoming call. For audio
  /// calls, consider to use SipAudioCall to handle the incoming call.
  /// See \#takeAudioCall. Note that the method may be called only once
  /// for the same intent. For subsequent calls on the same intent, the method
  /// returns null.
  ///@param incomingCallIntent the incoming call broadcast intent
  ///@return the session object that handles the incoming call
  sipsession_.SipSession getSessionFor(intent_.Intent incomingCallIntent) =>
      sipsession_.SipSession.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getSessionFor,
          jni.JniType.objectType,
          [incomingCallIntent.reference]).object);

  static final _id_createSipSession = jniAccessors.getMethodIDOf(
      _classRef,
      "createSipSession",
      "(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession\$Listener;)Landroid/net/sip/SipSession;");

  /// from: public android.net.sip.SipSession createSipSession(android.net.sip.SipProfile localProfile, android.net.sip.SipSession.Listener listener)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a SipSession with the specified profile. Use other
  /// methods, if applicable, instead of interacting with SipSession
  /// directly.
  ///@param localProfile the SIP profile the session is associated with
  ///@param listener to listen to SIP session events
  sipsession_.SipSession createSipSession(sipprofile_.SipProfile localProfile,
          sipsession_.SipSession_Listener listener) =>
      sipsession_.SipSession.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_createSipSession,
          jni.JniType.objectType,
          [localProfile.reference, listener.reference]).object);
}
