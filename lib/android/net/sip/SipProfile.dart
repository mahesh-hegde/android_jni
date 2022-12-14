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

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.sip.SipProfile
///
/// Defines a SIP profile, including a SIP account, domain and server information.
/// You can create a SipProfile using SipProfile.Builder. You can also retrieve one from a SipSession, using SipSession\#getLocalProfile and SipSession\#getPeerProfile.
///
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about using SIP, read the
/// <a href="{@docRoot}guide/topics/network/sip.html">Session Initiation Protocol</a>
/// developer guide.
///
/// </div>
class SipProfile extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/sip/SipProfile");
  SipProfile.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.net.sip.SipProfile> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_getUriString = jniAccessors.getMethodIDOf(
      _classRef, "getUriString", "()Ljava/lang/String;");

  /// from: public java.lang.String getUriString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the SIP URI string of this profile.
  ///@return the SIP URI string of this profile
  jni.JniString getUriString() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUriString, jni.JniType.objectType, []).object);

  static final _id_getDisplayName = jniAccessors.getMethodIDOf(
      _classRef, "getDisplayName", "()Ljava/lang/String;");

  /// from: public java.lang.String getDisplayName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the display name of the user.
  ///@return the display name of the user
  jni.JniString getDisplayName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDisplayName, jni.JniType.objectType, []).object);

  static final _id_getUserName = jniAccessors.getMethodIDOf(
      _classRef, "getUserName", "()Ljava/lang/String;");

  /// from: public java.lang.String getUserName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the username.
  ///@return the username
  jni.JniString getUserName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUserName, jni.JniType.objectType, []).object);

  static final _id_getAuthUserName = jniAccessors.getMethodIDOf(
      _classRef, "getAuthUserName", "()Ljava/lang/String;");

  /// from: public java.lang.String getAuthUserName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the username for authentication. If it is null, then the username
  /// is used in authentication instead.
  ///@return the authentication username
  ///@see \#getUserName
  jni.JniString getAuthUserName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAuthUserName, jni.JniType.objectType, []).object);

  static final _id_getPassword = jniAccessors.getMethodIDOf(
      _classRef, "getPassword", "()Ljava/lang/String;");

  /// from: public java.lang.String getPassword()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the password.
  ///@return the password
  jni.JniString getPassword() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPassword, jni.JniType.objectType, []).object);

  static final _id_getSipDomain = jniAccessors.getMethodIDOf(
      _classRef, "getSipDomain", "()Ljava/lang/String;");

  /// from: public java.lang.String getSipDomain()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the SIP domain.
  ///@return the SIP domain
  jni.JniString getSipDomain() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSipDomain, jni.JniType.objectType, []).object);

  static final _id_getPort =
      jniAccessors.getMethodIDOf(_classRef, "getPort", "()I");

  /// from: public int getPort()
  ///
  /// Gets the port number of the SIP server.
  ///@return the port number of the SIP server
  int getPort() => jniAccessors.callMethodWithArgs(
      reference, _id_getPort, jni.JniType.intType, []).integer;

  static final _id_getProtocol = jniAccessors.getMethodIDOf(
      _classRef, "getProtocol", "()Ljava/lang/String;");

  /// from: public java.lang.String getProtocol()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the protocol used to connect to the server.
  ///@return the protocol
  jni.JniString getProtocol() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getProtocol, jni.JniType.objectType, []).object);

  static final _id_getProxyAddress = jniAccessors.getMethodIDOf(
      _classRef, "getProxyAddress", "()Ljava/lang/String;");

  /// from: public java.lang.String getProxyAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the network address of the server outbound proxy.
  ///@return the network address of the server outbound proxy
  jni.JniString getProxyAddress() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getProxyAddress, jni.JniType.objectType, []).object);

  static final _id_getProfileName = jniAccessors.getMethodIDOf(
      _classRef, "getProfileName", "()Ljava/lang/String;");

  /// from: public java.lang.String getProfileName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the (user-defined) name of the profile.
  ///@return name of the profile
  jni.JniString getProfileName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getProfileName, jni.JniType.objectType, []).object);

  static final _id_getSendKeepAlive =
      jniAccessors.getMethodIDOf(_classRef, "getSendKeepAlive", "()Z");

  /// from: public boolean getSendKeepAlive()
  ///
  /// Gets the flag of 'Sending keep-alive'.
  ///@return the flag of sending SIP keep-alive messages.
  bool getSendKeepAlive() => jniAccessors.callMethodWithArgs(
      reference, _id_getSendKeepAlive, jni.JniType.booleanType, []).boolean;

  static final _id_getAutoRegistration =
      jniAccessors.getMethodIDOf(_classRef, "getAutoRegistration", "()Z");

  /// from: public boolean getAutoRegistration()
  ///
  /// Gets the flag of 'Auto Registration'.
  ///@return the flag of registering the profile automatically.
  bool getAutoRegistration() => jniAccessors.callMethodWithArgs(
      reference, _id_getAutoRegistration, jni.JniType.booleanType, []).boolean;
}

/// from: android.net.sip.SipProfile$Builder
///
/// Helper class for creating a SipProfile.
class SipProfile_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/sip/SipProfile\$Builder");
  SipProfile_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/net/sip/SipProfile;)V");

  /// from: public void <init>(android.net.sip.SipProfile profile)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a builder based on the given profile.
  SipProfile_Builder(SipProfile profile)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [profile.reference]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String uriString)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor.
  ///@param uriString the URI string as "sip:<user_name>@<domain>"
  ///@throws ParseException if the string is not a valid URI
  SipProfile_Builder.ctor1(jni.JniString uriString)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [uriString.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String username, java.lang.String serverDomain)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor.
  ///@param username username of the SIP account
  ///@param serverDomain the SIP server domain; if the network address
  ///      is different from the domain, use \#setOutboundProxy to
  ///      set server address
  ///@throws ParseException if the parameters are not valid
  SipProfile_Builder.ctor2(jni.JniString username, jni.JniString serverDomain)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [username.reference, serverDomain.reference]).object);

  static final _id_setAuthUserName = jniAccessors.getMethodIDOf(
      _classRef,
      "setAuthUserName",
      "(Ljava/lang/String;)Landroid/net/sip/SipProfile\$Builder;");

  /// from: public android.net.sip.SipProfile.Builder setAuthUserName(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the username used for authentication.
  ///@param name authentication username of the profile
  ///@return this builder object
  SipProfile_Builder setAuthUserName(jni.JniString name) =>
      SipProfile_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setAuthUserName,
          jni.JniType.objectType,
          [name.reference]).object);

  static final _id_setProfileName = jniAccessors.getMethodIDOf(
      _classRef,
      "setProfileName",
      "(Ljava/lang/String;)Landroid/net/sip/SipProfile\$Builder;");

  /// from: public android.net.sip.SipProfile.Builder setProfileName(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the name of the profile. This name is given by user.
  ///@param name name of the profile
  ///@return this builder object
  SipProfile_Builder setProfileName(jni.JniString name) =>
      SipProfile_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setProfileName, jni.JniType.objectType, [name.reference]).object);

  static final _id_setPassword = jniAccessors.getMethodIDOf(
      _classRef,
      "setPassword",
      "(Ljava/lang/String;)Landroid/net/sip/SipProfile\$Builder;");

  /// from: public android.net.sip.SipProfile.Builder setPassword(java.lang.String password)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the password of the SIP account
  ///@param password password of the SIP account
  ///@return this builder object
  SipProfile_Builder setPassword(jni.JniString password) =>
      SipProfile_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setPassword,
          jni.JniType.objectType,
          [password.reference]).object);

  static final _id_setPort = jniAccessors.getMethodIDOf(
      _classRef, "setPort", "(I)Landroid/net/sip/SipProfile\$Builder;");

  /// from: public android.net.sip.SipProfile.Builder setPort(int port)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the port number of the server. By default, it is 5060.
  ///@param port port number of the server
  ///@return this builder object
  ///@throws IllegalArgumentException if the port number is out of range
  SipProfile_Builder setPort(int port) =>
      SipProfile_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setPort, jni.JniType.objectType, [port]).object);

  static final _id_setProtocol = jniAccessors.getMethodIDOf(
      _classRef,
      "setProtocol",
      "(Ljava/lang/String;)Landroid/net/sip/SipProfile\$Builder;");

  /// from: public android.net.sip.SipProfile.Builder setProtocol(java.lang.String protocol)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the protocol used to connect to the SIP server. Currently,
  /// only "UDP" and "TCP" are supported.
  ///@param protocol the protocol string
  ///@return this builder object
  ///@throws IllegalArgumentException if the protocol is not recognized
  SipProfile_Builder setProtocol(jni.JniString protocol) =>
      SipProfile_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setProtocol,
          jni.JniType.objectType,
          [protocol.reference]).object);

  static final _id_setOutboundProxy = jniAccessors.getMethodIDOf(
      _classRef,
      "setOutboundProxy",
      "(Ljava/lang/String;)Landroid/net/sip/SipProfile\$Builder;");

  /// from: public android.net.sip.SipProfile.Builder setOutboundProxy(java.lang.String outboundProxy)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the outbound proxy of the SIP server.
  ///@param outboundProxy the network address of the outbound proxy
  ///@return this builder object
  SipProfile_Builder setOutboundProxy(jni.JniString outboundProxy) =>
      SipProfile_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setOutboundProxy,
          jni.JniType.objectType,
          [outboundProxy.reference]).object);

  static final _id_setDisplayName = jniAccessors.getMethodIDOf(
      _classRef,
      "setDisplayName",
      "(Ljava/lang/String;)Landroid/net/sip/SipProfile\$Builder;");

  /// from: public android.net.sip.SipProfile.Builder setDisplayName(java.lang.String displayName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the display name of the user.
  ///@param displayName display name of the user
  ///@return this builder object
  SipProfile_Builder setDisplayName(jni.JniString displayName) =>
      SipProfile_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setDisplayName,
          jni.JniType.objectType,
          [displayName.reference]).object);

  static final _id_setSendKeepAlive = jniAccessors.getMethodIDOf(_classRef,
      "setSendKeepAlive", "(Z)Landroid/net/sip/SipProfile\$Builder;");

  /// from: public android.net.sip.SipProfile.Builder setSendKeepAlive(boolean flag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the send keep-alive flag.
  ///@param flag true if sending keep-alive message is required,
  ///      false otherwise
  ///@return this builder object
  SipProfile_Builder setSendKeepAlive(bool flag) =>
      SipProfile_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setSendKeepAlive, jni.JniType.objectType, [flag]).object);

  static final _id_setAutoRegistration = jniAccessors.getMethodIDOf(_classRef,
      "setAutoRegistration", "(Z)Landroid/net/sip/SipProfile\$Builder;");

  /// from: public android.net.sip.SipProfile.Builder setAutoRegistration(boolean flag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the auto. registration flag.
  ///@param flag true if the profile will be registered automatically,
  ///      false otherwise
  ///@return this builder object
  SipProfile_Builder setAutoRegistration(bool flag) =>
      SipProfile_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setAutoRegistration, jni.JniType.objectType, [flag]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/net/sip/SipProfile;");

  /// from: public android.net.sip.SipProfile build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Builds and returns the SIP profile object.
  ///@return the profile object created
  SipProfile build() => SipProfile.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_build, jni.JniType.objectType, []).object);
}
