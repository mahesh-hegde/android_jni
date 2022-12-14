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

import "../os/Parcelable.dart" as parcelable_;

import "PhoneAccountHandle.dart" as phoneaccounthandle_;

import "../net/Uri.dart" as uri_;

import "../os/Bundle.dart" as bundle_;

import "../graphics/drawable/Icon.dart" as icon_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telecom.PhoneAccount
///
/// Represents a distinct method to place or receive a phone call. Apps which can place calls and
/// want those calls to be integrated into the dialer and in-call UI should build an instance of
/// this class and register it with the system using TelecomManager.
///
/// TelecomManager uses registered PhoneAccounts to present the user with
/// alternative options when placing a phone call. When building a PhoneAccount, the app
/// should supply a valid PhoneAccountHandle that references the connection service
/// implementation Telecom will use to interact with the app.
class PhoneAccount extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telecom/PhoneAccount");
  PhoneAccount.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int CAPABILITY_CALL_PROVIDER
  ///
  /// Flag indicating that this {@code PhoneAccount} can make phone calls in place of
  /// traditional SIM-based telephony calls. This account will be treated as a distinct method
  /// for placing calls alongside the traditional SIM-based telephony stack. This flag is
  /// distinct from \#CAPABILITY_CONNECTION_MANAGER in that it is not allowed to manage
  /// or place calls from the built-in telephony stack.
  ///
  /// See \#getCapabilities
  ///
  static const CAPABILITY_CALL_PROVIDER = 2;

  /// from: static public final int CAPABILITY_CALL_SUBJECT
  ///
  /// Flag indicating that this {@code PhoneAccount} supports a subject for Calls.  This means a
  /// caller is able to specify a short subject line for an outgoing call.  A capable receiving
  /// device displays the call subject on the incoming call screen.
  ///
  /// See \#getCapabilities
  static const CAPABILITY_CALL_SUBJECT = 64;

  /// from: static public final int CAPABILITY_CONNECTION_MANAGER
  ///
  /// Flag indicating that this {@code PhoneAccount} can act as a connection manager for
  /// other connections. The ConnectionService associated with this {@code PhoneAccount}
  /// will be allowed to manage phone calls including using its own proprietary phone-call
  /// implementation (like VoIP calling) to make calls instead of the telephony stack.
  ///
  /// When a user opts to place a call using the SIM-based telephony stack, the
  /// ConnectionService associated with this {@code PhoneAccount} will be attempted first
  /// if the user has explicitly selected it to be used as the default connection manager.
  ///
  /// See \#getCapabilities
  static const CAPABILITY_CONNECTION_MANAGER = 1;

  /// from: static public final int CAPABILITY_PLACE_EMERGENCY_CALLS
  ///
  /// Flag indicating that this {@code PhoneAccount} is capable of placing emergency calls.
  /// By default all PSTN {@code PhoneAccount}s are capable of placing emergency calls.
  ///
  /// See \#getCapabilities
  static const CAPABILITY_PLACE_EMERGENCY_CALLS = 16;

  /// from: static public final int CAPABILITY_RTT
  ///
  /// Flag indicating that this PhoneAccount is capable of making a call with an
  /// RTT (Real-time text) session.
  /// When set, Telecom will attempt to open an RTT session on outgoing calls that specify
  /// that they should be placed with an RTT session , and the in-call app will be displayed
  /// with text entry fields for RTT. Likewise, the in-call app can request that an RTT
  /// session be opened during a call if this bit is set.
  static const CAPABILITY_RTT = 4096;

  /// from: static public final int CAPABILITY_SELF_MANAGED
  ///
  /// Flag indicating that this PhoneAccount is responsible for managing its own
  /// Connections.  This type of PhoneAccount is ideal for use with standalone
  /// calling apps which do not wish to use the default phone app for Connection UX,
  /// but which want to leverage the call and audio routing capabilities of the Telecom framework.
  ///
  /// When set, Connections created by the self-managed ConnectionService will not
  /// be surfaced to implementations of the InCallService API.  Thus it is the
  /// responsibility of a self-managed ConnectionService to provide a user interface for
  /// its Connections.
  ///
  /// Self-managed Connections will, however, be displayed on connected Bluetooth devices.
  static const CAPABILITY_SELF_MANAGED = 2048;

  /// from: static public final int CAPABILITY_SIM_SUBSCRIPTION
  ///
  /// Flag indicating that this {@code PhoneAccount} represents a built-in PSTN SIM
  /// subscription.
  ///
  /// Only the Android framework can register a {@code PhoneAccount} having this capability.
  ///
  /// See \#getCapabilities
  static const CAPABILITY_SIM_SUBSCRIPTION = 4;

  /// from: static public final int CAPABILITY_SUPPORTS_VIDEO_CALLING
  ///
  /// Flag indicating that this PhoneAccount supports video calling.
  /// This is not an indication that the PhoneAccount is currently able to make a video
  /// call, but rather that it has the ability to make video calls (but not necessarily at this
  /// time).
  ///
  /// Whether a PhoneAccount can make a video call is ultimately controlled by
  /// \#CAPABILITY_VIDEO_CALLING, which indicates whether the PhoneAccount is
  /// currently capable of making a video call.  Consider a case where, for example, a
  /// PhoneAccount supports making video calls (e.g.
  /// \#CAPABILITY_SUPPORTS_VIDEO_CALLING), but a current lack of network connectivity
  /// prevents video calls from being made (e.g. \#CAPABILITY_VIDEO_CALLING).
  ///
  /// See \#getCapabilities
  static const CAPABILITY_SUPPORTS_VIDEO_CALLING = 1024;

  /// from: static public final int CAPABILITY_VIDEO_CALLING
  ///
  /// Flag indicating that this {@code PhoneAccount} is currently able to place video calls.
  ///
  /// See also \#CAPABILITY_SUPPORTS_VIDEO_CALLING which indicates whether the
  /// {@code PhoneAccount} supports placing video calls.
  ///
  /// See \#getCapabilities
  static const CAPABILITY_VIDEO_CALLING = 8;

  /// from: static public final int CAPABILITY_VIDEO_CALLING_RELIES_ON_PRESENCE
  ///
  /// Flag indicating that for this {@code PhoneAccount}, the ability to make a video call to a
  /// number relies on presence.  Should only be set if the {@code PhoneAccount} also has
  /// \#CAPABILITY_VIDEO_CALLING.
  ///
  /// When set, the ConnectionService is responsible for toggling the
  /// android.provider.ContactsContract.Data\#CARRIER_PRESENCE_VT_CAPABLE bit on the
  /// android.provider.ContactsContract.Data\#CARRIER_PRESENCE column to indicate whether
  /// a contact's phone number supports video calling.
  ///
  /// See \#getCapabilities
  static const CAPABILITY_VIDEO_CALLING_RELIES_ON_PRESENCE = 256;

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telecom.PhoneAccount> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final java.lang.String EXTRA_CALL_SUBJECT_CHARACTER_ENCODING
  ///
  /// PhoneAccount extras key (see PhoneAccount\#getExtras()) which determines the
  /// character encoding to be used when determining the length of messages.
  /// The user interface can use this when determining the number of characters the user may type
  /// in a call subject.  If empty-string, the call subject message size limit will be enforced on
  /// a 1:1 basis.  That is, each character will count towards the messages size limit as a single
  /// character.  If a character encoding is specified, the message size limit will be based on the
  /// number of bytes in the message per the specified encoding.  See
  /// \#EXTRA_CALL_SUBJECT_MAX_LENGTH for more information on the call subject maximum
  /// length.
  static const EXTRA_CALL_SUBJECT_CHARACTER_ENCODING =
      "android.telecom.extra.CALL_SUBJECT_CHARACTER_ENCODING";

  /// from: static public final java.lang.String EXTRA_CALL_SUBJECT_MAX_LENGTH
  ///
  /// PhoneAccount extras key (see PhoneAccount\#getExtras()) which determines the
  /// maximum permitted length of a call subject specified via the
  /// TelecomManager\#EXTRA_CALL_SUBJECT extra on an
  /// android.content.Intent\#ACTION_CALL intent.  Ultimately a ConnectionService is
  /// responsible for enforcing the maximum call subject length when sending the message, however
  /// this extra is provided so that the user interface can proactively limit the length of the
  /// call subject as the user types it.
  static const EXTRA_CALL_SUBJECT_MAX_LENGTH =
      "android.telecom.extra.CALL_SUBJECT_MAX_LENGTH";

  /// from: static public final java.lang.String EXTRA_LOG_SELF_MANAGED_CALLS
  ///
  /// Boolean PhoneAccount extras key (see PhoneAccount\#getExtras()) which
  /// indicates whether a Self-Managed PhoneAccount should log its calls to the call log.
  /// Self-Managed PhoneAccounts are responsible for their own notifications, so the system
  /// will not create a notification when a missed call is logged.
  ///
  /// By default, Self-Managed PhoneAccounts do not log their calls to the call log.
  /// Setting this extra to {@code true} provides a means for them to log their calls.
  ///
  /// Note: Only calls where the Call.Details\#getHandle() Uri\#getScheme() is
  /// \#SCHEME_SIP or \#SCHEME_TEL will be logged at the current time.
  static const EXTRA_LOG_SELF_MANAGED_CALLS =
      "android.telecom.extra.LOG_SELF_MANAGED_CALLS";

  /// from: static public final java.lang.String EXTRA_SUPPORTS_HANDOVER_FROM
  ///
  /// Boolean PhoneAccount extras key (see PhoneAccount\#getExtras()) which
  /// indicates whether this PhoneAccount is capable of supporting a request to handover a
  /// connection from this PhoneAccount to another PhoneAccount.
  /// (see {@code android.telecom.Call\#handoverTo()}) which specifies
  /// \#EXTRA_SUPPORTS_HANDOVER_TO.
  ///
  /// A handover request is initiated by the user from the default dialer app to indicate a desire
  /// to handover a call from one PhoneAccount/ConnectionService to another.
  static const EXTRA_SUPPORTS_HANDOVER_FROM =
      "android.telecom.extra.SUPPORTS_HANDOVER_FROM";

  /// from: static public final java.lang.String EXTRA_SUPPORTS_HANDOVER_TO
  ///
  /// Boolean PhoneAccount extras key (see PhoneAccount\#getExtras()) which
  /// indicates whether this PhoneAccount is capable of supporting a request to handover a
  /// connection (see {@code android.telecom.Call\#handoverTo()}) to this PhoneAccount from
  /// a PhoneAccount specifying \#EXTRA_SUPPORTS_HANDOVER_FROM.
  ///
  /// A handover request is initiated by the user from the default dialer app to indicate a desire
  /// to handover a call from one PhoneAccount/ConnectionService to another.
  static const EXTRA_SUPPORTS_HANDOVER_TO =
      "android.telecom.extra.SUPPORTS_HANDOVER_TO";

  /// from: static public final int NO_HIGHLIGHT_COLOR
  ///
  /// Indicating no hightlight color is set.
  static const NO_HIGHLIGHT_COLOR = 0;

  /// from: static public final int NO_RESOURCE_ID
  ///
  /// Indicating no resource ID is set.
  static const NO_RESOURCE_ID = -1;

  /// from: static public final java.lang.String SCHEME_SIP
  ///
  /// URI scheme for SIP URIs.
  static const SCHEME_SIP = "sip";

  /// from: static public final java.lang.String SCHEME_TEL
  ///
  /// URI scheme for telephone number URIs.
  static const SCHEME_TEL = "tel";

  /// from: static public final java.lang.String SCHEME_VOICEMAIL
  ///
  /// URI scheme for voicemail URIs.
  static const SCHEME_VOICEMAIL = "voicemail";

  static final _id_builder = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "builder",
      "(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount\$Builder;");

  /// from: static public android.telecom.PhoneAccount.Builder builder(android.telecom.PhoneAccountHandle accountHandle, java.lang.CharSequence label)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static PhoneAccount_Builder builder(
          phoneaccounthandle_.PhoneAccountHandle accountHandle,
          jni.JniObject label) =>
      PhoneAccount_Builder.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_builder,
          jni.JniType.objectType,
          [accountHandle.reference, label.reference]).object);

  static final _id_toBuilder = jniAccessors.getMethodIDOf(
      _classRef, "toBuilder", "()Landroid/telecom/PhoneAccount\$Builder;");

  /// from: public android.telecom.PhoneAccount.Builder toBuilder()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a builder initialized with the current PhoneAccount instance.
  ///@return The builder.
  PhoneAccount_Builder toBuilder() =>
      PhoneAccount_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toBuilder, jni.JniType.objectType, []).object);

  static final _id_getAccountHandle = jniAccessors.getMethodIDOf(
      _classRef, "getAccountHandle", "()Landroid/telecom/PhoneAccountHandle;");

  /// from: public android.telecom.PhoneAccountHandle getAccountHandle()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The unique identifier of this {@code PhoneAccount}.
  ///@return A {@code PhoneAccountHandle}.
  phoneaccounthandle_.PhoneAccountHandle getAccountHandle() =>
      phoneaccounthandle_.PhoneAccountHandle.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getAccountHandle,
              jni.JniType.objectType, []).object);

  static final _id_getAddress = jniAccessors.getMethodIDOf(
      _classRef, "getAddress", "()Landroid/net/Uri;");

  /// from: public android.net.Uri getAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The address (e.g., a phone number) associated with this {@code PhoneAccount}. This
  /// represents the destination from which outgoing calls using this {@code PhoneAccount}
  /// will appear to come, if applicable, and the destination to which incoming calls using this
  /// {@code PhoneAccount} may be addressed.
  ///@return A address expressed as a {@code Uri}, for example, a phone number.
  uri_.Uri getAddress() => uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getAddress, jni.JniType.objectType, []).object);

  static final _id_getSubscriptionAddress = jniAccessors.getMethodIDOf(
      _classRef, "getSubscriptionAddress", "()Landroid/net/Uri;");

  /// from: public android.net.Uri getSubscriptionAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The raw callback number used for this {@code PhoneAccount}, as distinct from
  /// \#getAddress(). For the majority of {@code PhoneAccount}s this should be registered
  /// as {@code null}.  It is used by the system for SIM-based {@code PhoneAccount} registration
  /// where android.telephony.TelephonyManager\#setLine1NumberForDisplay(String, String)
  /// has been used to alter the callback number.
  ///
  ///@return The subscription number, suitable for display to the user.
  uri_.Uri getSubscriptionAddress() =>
      uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getSubscriptionAddress, jni.JniType.objectType, []).object);

  static final _id_getCapabilities =
      jniAccessors.getMethodIDOf(_classRef, "getCapabilities", "()I");

  /// from: public int getCapabilities()
  ///
  /// The capabilities of this {@code PhoneAccount}.
  ///@return A bit field of flags describing this {@code PhoneAccount}'s capabilities.
  int getCapabilities() => jniAccessors.callMethodWithArgs(
      reference, _id_getCapabilities, jni.JniType.intType, []).integer;

  static final _id_hasCapabilities =
      jniAccessors.getMethodIDOf(_classRef, "hasCapabilities", "(I)Z");

  /// from: public boolean hasCapabilities(int capability)
  ///
  /// Determines if this {@code PhoneAccount} has a capabilities specified by the passed in
  /// bit mask.
  ///@param capability The capabilities to check.
  ///@return {@code true} if the phone account has the capability.
  bool hasCapabilities(int capability) => jniAccessors.callMethodWithArgs(
      reference,
      _id_hasCapabilities,
      jni.JniType.booleanType,
      [capability]).boolean;

  static final _id_getLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// A short label describing a {@code PhoneAccount}.
  ///@return A label for this {@code PhoneAccount}.
  jni.JniObject getLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLabel, jni.JniType.objectType, []).object);

  static final _id_getShortDescription = jniAccessors.getMethodIDOf(
      _classRef, "getShortDescription", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getShortDescription()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// A short paragraph describing this {@code PhoneAccount}.
  ///@return A description for this {@code PhoneAccount}.
  jni.JniObject getShortDescription() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getShortDescription, jni.JniType.objectType, []).object);

  static final _id_getSupportedUriSchemes = jniAccessors.getMethodIDOf(
      _classRef, "getSupportedUriSchemes", "()Ljava/util/List;");

  /// from: public java.util.List<java.lang.String> getSupportedUriSchemes()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The URI schemes supported by this {@code PhoneAccount}.
  ///@return The URI schemes.
  jni.JniObject getSupportedUriSchemes() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getSupportedUriSchemes, jni.JniType.objectType, []).object);

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The extras associated with this {@code PhoneAccount}.
  ///
  /// A ConnectionService may provide implementation specific information about the
  /// PhoneAccount via the extras.
  ///@return The extras.
  bundle_.Bundle getExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_getIcon = jniAccessors.getMethodIDOf(
      _classRef, "getIcon", "()Landroid/graphics/drawable/Icon;");

  /// from: public android.graphics.drawable.Icon getIcon()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The icon to represent this {@code PhoneAccount}.
  ///@return The icon.
  icon_.Icon getIcon() => icon_.Icon.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getIcon, jni.JniType.objectType, []).object);

  static final _id_isEnabled =
      jniAccessors.getMethodIDOf(_classRef, "isEnabled", "()Z");

  /// from: public boolean isEnabled()
  ///
  /// Indicates whether the user has enabled this {@code PhoneAccount} or not. This value is only
  /// populated for {@code PhoneAccount}s returned by TelecomManager\#getPhoneAccount.
  ///@return {@code true} if the account is enabled by the user, {@code false} otherwise.
  bool isEnabled() => jniAccessors.callMethodWithArgs(
      reference, _id_isEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_supportsUriScheme = jniAccessors.getMethodIDOf(
      _classRef, "supportsUriScheme", "(Ljava/lang/String;)Z");

  /// from: public boolean supportsUriScheme(java.lang.String uriScheme)
  ///
  /// Determines if the PhoneAccount supports calls to/from addresses with a specified URI
  /// scheme.
  ///@param uriScheme The URI scheme to check.
  ///@return {@code true} if the {@code PhoneAccount} supports calls to/from addresses with the
  /// specified URI scheme.
  bool supportsUriScheme(jni.JniString uriScheme) =>
      jniAccessors.callMethodWithArgs(reference, _id_supportsUriScheme,
          jni.JniType.booleanType, [uriScheme.reference]).boolean;

  static final _id_getHighlightColor =
      jniAccessors.getMethodIDOf(_classRef, "getHighlightColor", "()I");

  /// from: public int getHighlightColor()
  ///
  /// A highlight color to use in displaying information about this {@code PhoneAccount}.
  ///@return A hexadecimal color value.
  int getHighlightColor() => jniAccessors.callMethodWithArgs(
      reference, _id_getHighlightColor, jni.JniType.intType, []).integer;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.telecom.PhoneAccount$Builder
///
/// Helper class for creating a PhoneAccount.
class PhoneAccount_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telecom/PhoneAccount\$Builder");
  PhoneAccount_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V");

  /// from: public void <init>(android.telecom.PhoneAccountHandle accountHandle, java.lang.CharSequence label)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a builder with the specified PhoneAccountHandle and label.
  PhoneAccount_Builder(
      phoneaccounthandle_.PhoneAccountHandle accountHandle, jni.JniObject label)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [accountHandle.reference, label.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/telecom/PhoneAccount;)V");

  /// from: public void <init>(android.telecom.PhoneAccount phoneAccount)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an instance of the PhoneAccount.Builder from an existing
  /// PhoneAccount.
  ///@param phoneAccount The PhoneAccount used to initialize the builder.
  PhoneAccount_Builder.ctor1(PhoneAccount phoneAccount)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [phoneAccount.reference]).object);

  static final _id_setAddress = jniAccessors.getMethodIDOf(
      _classRef,
      "setAddress",
      "(Landroid/net/Uri;)Landroid/telecom/PhoneAccount\$Builder;");

  /// from: public android.telecom.PhoneAccount.Builder setAddress(android.net.Uri value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the address. See PhoneAccount\#getAddress.
  ///@param value The address of the phone account.
  ///@return The builder.
  PhoneAccount_Builder setAddress(uri_.Uri value) =>
      PhoneAccount_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setAddress, jni.JniType.objectType, [value.reference]).object);

  static final _id_setSubscriptionAddress = jniAccessors.getMethodIDOf(
      _classRef,
      "setSubscriptionAddress",
      "(Landroid/net/Uri;)Landroid/telecom/PhoneAccount\$Builder;");

  /// from: public android.telecom.PhoneAccount.Builder setSubscriptionAddress(android.net.Uri value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the subscription address. See PhoneAccount\#getSubscriptionAddress.
  ///@param value The subscription address.
  ///@return The builder.
  PhoneAccount_Builder setSubscriptionAddress(uri_.Uri value) =>
      PhoneAccount_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setSubscriptionAddress,
          jni.JniType.objectType,
          [value.reference]).object);

  static final _id_setCapabilities = jniAccessors.getMethodIDOf(_classRef,
      "setCapabilities", "(I)Landroid/telecom/PhoneAccount\$Builder;");

  /// from: public android.telecom.PhoneAccount.Builder setCapabilities(int value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the capabilities. See PhoneAccount\#getCapabilities.
  ///@param value The capabilities to set.
  ///@return The builder.
  PhoneAccount_Builder setCapabilities(int value) =>
      PhoneAccount_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setCapabilities, jni.JniType.objectType, [value]).object);

  static final _id_setIcon = jniAccessors.getMethodIDOf(_classRef, "setIcon",
      "(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount\$Builder;");

  /// from: public android.telecom.PhoneAccount.Builder setIcon(android.graphics.drawable.Icon icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the icon. See PhoneAccount\#getIcon.
  ///@param icon The icon to set.
  PhoneAccount_Builder setIcon(icon_.Icon icon) =>
      PhoneAccount_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setIcon, jni.JniType.objectType, [icon.reference]).object);

  static final _id_setHighlightColor = jniAccessors.getMethodIDOf(_classRef,
      "setHighlightColor", "(I)Landroid/telecom/PhoneAccount\$Builder;");

  /// from: public android.telecom.PhoneAccount.Builder setHighlightColor(int value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the highlight color. See PhoneAccount\#getHighlightColor.
  ///@param value The highlight color.
  ///@return The builder.
  PhoneAccount_Builder setHighlightColor(int value) =>
      PhoneAccount_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setHighlightColor, jni.JniType.objectType, [value]).object);

  static final _id_setShortDescription = jniAccessors.getMethodIDOf(
      _classRef,
      "setShortDescription",
      "(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount\$Builder;");

  /// from: public android.telecom.PhoneAccount.Builder setShortDescription(java.lang.CharSequence value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the short description. See PhoneAccount\#getShortDescription.
  ///@param value The short description.
  ///@return The builder.
  PhoneAccount_Builder setShortDescription(jni.JniObject value) =>
      PhoneAccount_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setShortDescription,
          jni.JniType.objectType,
          [value.reference]).object);

  static final _id_addSupportedUriScheme = jniAccessors.getMethodIDOf(
      _classRef,
      "addSupportedUriScheme",
      "(Ljava/lang/String;)Landroid/telecom/PhoneAccount\$Builder;");

  /// from: public android.telecom.PhoneAccount.Builder addSupportedUriScheme(java.lang.String uriScheme)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Specifies an additional URI scheme supported by the PhoneAccount.
  ///@param uriScheme The URI scheme.
  ///@return The builder.
  PhoneAccount_Builder addSupportedUriScheme(jni.JniString uriScheme) =>
      PhoneAccount_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addSupportedUriScheme,
          jni.JniType.objectType,
          [uriScheme.reference]).object);

  static final _id_setSupportedUriSchemes = jniAccessors.getMethodIDOf(
      _classRef,
      "setSupportedUriSchemes",
      "(Ljava/util/List;)Landroid/telecom/PhoneAccount\$Builder;");

  /// from: public android.telecom.PhoneAccount.Builder setSupportedUriSchemes(java.util.List<java.lang.String> uriSchemes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Specifies the URI schemes supported by the PhoneAccount.
  ///@param uriSchemes The URI schemes.
  ///@return The builder.
  PhoneAccount_Builder setSupportedUriSchemes(jni.JniObject uriSchemes) =>
      PhoneAccount_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setSupportedUriSchemes,
          jni.JniType.objectType,
          [uriSchemes.reference]).object);

  static final _id_setExtras = jniAccessors.getMethodIDOf(
      _classRef,
      "setExtras",
      "(Landroid/os/Bundle;)Landroid/telecom/PhoneAccount\$Builder;");

  /// from: public android.telecom.PhoneAccount.Builder setExtras(android.os.Bundle extras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Specifies the extras associated with the PhoneAccount.
  ///
  /// {@code PhoneAccount}s only support extra values of type: String, Integer,
  /// and Boolean.  Extras which are not of these types are ignored.
  ///@param extras
  ///@return
  PhoneAccount_Builder setExtras(bundle_.Bundle extras) =>
      PhoneAccount_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setExtras, jni.JniType.objectType, [extras.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/telecom/PhoneAccount;");

  /// from: public android.telecom.PhoneAccount build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an instance of a PhoneAccount based on the current builder settings.
  ///@return The PhoneAccount.
  PhoneAccount build() => PhoneAccount.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_build, jni.JniType.objectType, []).object);
}
