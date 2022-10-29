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

import "../os/Parcel.dart" as parcel_;

import "NetworkSpecifier.dart" as networkspecifier_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.NetworkRequest
///
/// Defines a request for a network, made through NetworkRequest.Builder and used
/// to request a network via ConnectivityManager\#requestNetwork or listen for changes
/// via ConnectivityManager\#registerNetworkCallback.
class NetworkRequest extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/NetworkRequest");
  NetworkRequest.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.net.NetworkRequest> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_hasCapability =
      jniAccessors.getMethodIDOf(_classRef, "hasCapability", "(I)Z");

  /// from: public boolean hasCapability(int capability)
  ///
  /// @see Builder\#addCapability(int)
  ///@param capability Value is android.net.NetworkCapabilities\#NET_CAPABILITY_MMS, android.net.NetworkCapabilities\#NET_CAPABILITY_SUPL, android.net.NetworkCapabilities\#NET_CAPABILITY_DUN, android.net.NetworkCapabilities\#NET_CAPABILITY_FOTA, android.net.NetworkCapabilities\#NET_CAPABILITY_IMS, android.net.NetworkCapabilities\#NET_CAPABILITY_CBS, android.net.NetworkCapabilities\#NET_CAPABILITY_WIFI_P2P, android.net.NetworkCapabilities\#NET_CAPABILITY_IA, android.net.NetworkCapabilities\#NET_CAPABILITY_RCS, android.net.NetworkCapabilities\#NET_CAPABILITY_XCAP, android.net.NetworkCapabilities\#NET_CAPABILITY_EIMS, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_METERED, android.net.NetworkCapabilities\#NET_CAPABILITY_INTERNET, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_RESTRICTED, android.net.NetworkCapabilities\#NET_CAPABILITY_TRUSTED, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_VPN, android.net.NetworkCapabilities\#NET_CAPABILITY_VALIDATED, android.net.NetworkCapabilities\#NET_CAPABILITY_CAPTIVE_PORTAL, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_ROAMING, android.net.NetworkCapabilities\#NET_CAPABILITY_FOREGROUND, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_CONGESTED, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_SUSPENDED, or android.net.NetworkCapabilities.NET_CAPABILITY_OEM_PAID
  bool hasCapability(int capability) => jniAccessors.callMethodWithArgs(
      reference,
      _id_hasCapability,
      jni.JniType.booleanType,
      [capability]).boolean;

  static final _id_hasTransport =
      jniAccessors.getMethodIDOf(_classRef, "hasTransport", "(I)Z");

  /// from: public boolean hasTransport(int transportType)
  ///
  /// @see Builder\#addTransportType(int)
  ///@param transportType Value is android.net.NetworkCapabilities\#TRANSPORT_CELLULAR, android.net.NetworkCapabilities\#TRANSPORT_WIFI, android.net.NetworkCapabilities\#TRANSPORT_BLUETOOTH, android.net.NetworkCapabilities\#TRANSPORT_ETHERNET, android.net.NetworkCapabilities\#TRANSPORT_VPN, android.net.NetworkCapabilities\#TRANSPORT_WIFI_AWARE, or android.net.NetworkCapabilities\#TRANSPORT_LOWPAN
  bool hasTransport(int transportType) => jniAccessors.callMethodWithArgs(
      reference,
      _id_hasTransport,
      jni.JniType.booleanType,
      [transportType]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;
}

/// from: android.net.NetworkRequest$Builder
///
/// Builder used to create NetworkRequest objects.  Specify the Network features
/// needed in terms of NetworkCapabilities features
class NetworkRequest_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/NetworkRequest\$Builder");
  NetworkRequest_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Default constructor for Builder.
  NetworkRequest_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/net/NetworkRequest;");

  /// from: public android.net.NetworkRequest build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build NetworkRequest give the current set of capabilities.
  NetworkRequest build() =>
      NetworkRequest.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);

  static final _id_addCapability = jniAccessors.getMethodIDOf(
      _classRef, "addCapability", "(I)Landroid/net/NetworkRequest\$Builder;");

  /// from: public android.net.NetworkRequest.Builder addCapability(int capability)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add the given capability requirement to this builder.  These represent
  /// the requested network's required capabilities.  Note that when searching
  /// for a network to satisfy a request, all capabilities requested must be
  /// satisfied.
  ///@param capability The capability to add.
  /// Value is android.net.NetworkCapabilities\#NET_CAPABILITY_MMS, android.net.NetworkCapabilities\#NET_CAPABILITY_SUPL, android.net.NetworkCapabilities\#NET_CAPABILITY_DUN, android.net.NetworkCapabilities\#NET_CAPABILITY_FOTA, android.net.NetworkCapabilities\#NET_CAPABILITY_IMS, android.net.NetworkCapabilities\#NET_CAPABILITY_CBS, android.net.NetworkCapabilities\#NET_CAPABILITY_WIFI_P2P, android.net.NetworkCapabilities\#NET_CAPABILITY_IA, android.net.NetworkCapabilities\#NET_CAPABILITY_RCS, android.net.NetworkCapabilities\#NET_CAPABILITY_XCAP, android.net.NetworkCapabilities\#NET_CAPABILITY_EIMS, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_METERED, android.net.NetworkCapabilities\#NET_CAPABILITY_INTERNET, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_RESTRICTED, android.net.NetworkCapabilities\#NET_CAPABILITY_TRUSTED, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_VPN, android.net.NetworkCapabilities\#NET_CAPABILITY_VALIDATED, android.net.NetworkCapabilities\#NET_CAPABILITY_CAPTIVE_PORTAL, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_ROAMING, android.net.NetworkCapabilities\#NET_CAPABILITY_FOREGROUND, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_CONGESTED, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_SUSPENDED, or android.net.NetworkCapabilities.NET_CAPABILITY_OEM_PAID
  ///@return The builder to facilitate chaining
  ///         {@code builder.addCapability(...).addCapability();}.
  NetworkRequest_Builder addCapability(int capability) =>
      NetworkRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_addCapability, jni.JniType.objectType, [capability]).object);

  static final _id_removeCapability = jniAccessors.getMethodIDOf(_classRef,
      "removeCapability", "(I)Landroid/net/NetworkRequest\$Builder;");

  /// from: public android.net.NetworkRequest.Builder removeCapability(int capability)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Removes (if found) the given capability from this builder instance.
  ///@param capability The capability to remove.
  /// Value is android.net.NetworkCapabilities\#NET_CAPABILITY_MMS, android.net.NetworkCapabilities\#NET_CAPABILITY_SUPL, android.net.NetworkCapabilities\#NET_CAPABILITY_DUN, android.net.NetworkCapabilities\#NET_CAPABILITY_FOTA, android.net.NetworkCapabilities\#NET_CAPABILITY_IMS, android.net.NetworkCapabilities\#NET_CAPABILITY_CBS, android.net.NetworkCapabilities\#NET_CAPABILITY_WIFI_P2P, android.net.NetworkCapabilities\#NET_CAPABILITY_IA, android.net.NetworkCapabilities\#NET_CAPABILITY_RCS, android.net.NetworkCapabilities\#NET_CAPABILITY_XCAP, android.net.NetworkCapabilities\#NET_CAPABILITY_EIMS, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_METERED, android.net.NetworkCapabilities\#NET_CAPABILITY_INTERNET, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_RESTRICTED, android.net.NetworkCapabilities\#NET_CAPABILITY_TRUSTED, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_VPN, android.net.NetworkCapabilities\#NET_CAPABILITY_VALIDATED, android.net.NetworkCapabilities\#NET_CAPABILITY_CAPTIVE_PORTAL, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_ROAMING, android.net.NetworkCapabilities\#NET_CAPABILITY_FOREGROUND, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_CONGESTED, android.net.NetworkCapabilities\#NET_CAPABILITY_NOT_SUSPENDED, or android.net.NetworkCapabilities.NET_CAPABILITY_OEM_PAID
  ///@return The builder to facilitate chaining.
  NetworkRequest_Builder removeCapability(int capability) =>
      NetworkRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_removeCapability, jni.JniType.objectType, [capability]).object);

  static final _id_addTransportType = jniAccessors.getMethodIDOf(_classRef,
      "addTransportType", "(I)Landroid/net/NetworkRequest\$Builder;");

  /// from: public android.net.NetworkRequest.Builder addTransportType(int transportType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds the given transport requirement to this builder.  These represent
  /// the set of allowed transports for the request.  Only networks using one
  /// of these transports will satisfy the request.  If no particular transports
  /// are required, none should be specified here.
  ///@param transportType The transport type to add.
  /// Value is android.net.NetworkCapabilities\#TRANSPORT_CELLULAR, android.net.NetworkCapabilities\#TRANSPORT_WIFI, android.net.NetworkCapabilities\#TRANSPORT_BLUETOOTH, android.net.NetworkCapabilities\#TRANSPORT_ETHERNET, android.net.NetworkCapabilities\#TRANSPORT_VPN, android.net.NetworkCapabilities\#TRANSPORT_WIFI_AWARE, or android.net.NetworkCapabilities\#TRANSPORT_LOWPAN
  ///@return The builder to facilitate chaining.
  NetworkRequest_Builder addTransportType(int transportType) =>
      NetworkRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addTransportType,
          jni.JniType.objectType,
          [transportType]).object);

  static final _id_removeTransportType = jniAccessors.getMethodIDOf(_classRef,
      "removeTransportType", "(I)Landroid/net/NetworkRequest\$Builder;");

  /// from: public android.net.NetworkRequest.Builder removeTransportType(int transportType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Removes (if found) the given transport from this builder instance.
  ///@param transportType The transport type to remove.
  /// Value is android.net.NetworkCapabilities\#TRANSPORT_CELLULAR, android.net.NetworkCapabilities\#TRANSPORT_WIFI, android.net.NetworkCapabilities\#TRANSPORT_BLUETOOTH, android.net.NetworkCapabilities\#TRANSPORT_ETHERNET, android.net.NetworkCapabilities\#TRANSPORT_VPN, android.net.NetworkCapabilities\#TRANSPORT_WIFI_AWARE, or android.net.NetworkCapabilities\#TRANSPORT_LOWPAN
  ///@return The builder to facilitate chaining.
  NetworkRequest_Builder removeTransportType(int transportType) =>
      NetworkRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_removeTransportType,
          jni.JniType.objectType,
          [transportType]).object);

  static final _id_setNetworkSpecifier = jniAccessors.getMethodIDOf(
      _classRef,
      "setNetworkSpecifier",
      "(Ljava/lang/String;)Landroid/net/NetworkRequest\$Builder;");

  /// from: public android.net.NetworkRequest.Builder setNetworkSpecifier(java.lang.String networkSpecifier)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the optional bearer specific network specifier.
  /// This has no meaning if a single transport is also not specified, so calling
  /// this without a single transport set will generate an exception, as will
  /// subsequently adding or removing transports after this is set.
  ///
  ///
  /// The interpretation of this {@code String} is bearer specific and bearers that use
  /// it should document their particulars.  For example, Bluetooth may use some sort of
  /// device id while WiFi could used ssid and/or bssid.  Cellular may use carrier spn.
  ///@param networkSpecifier An {@code String} of opaque format used to specify the bearer
  ///                         specific network specifier where the bearer has a choice of
  ///                         networks.
  NetworkRequest_Builder setNetworkSpecifier(jni.JniString networkSpecifier) =>
      NetworkRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setNetworkSpecifier,
          jni.JniType.objectType,
          [networkSpecifier.reference]).object);

  static final _id_setNetworkSpecifier1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setNetworkSpecifier",
      "(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest\$Builder;");

  /// from: public android.net.NetworkRequest.Builder setNetworkSpecifier(android.net.NetworkSpecifier networkSpecifier)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the optional bearer specific network specifier.
  /// This has no meaning if a single transport is also not specified, so calling
  /// this without a single transport set will generate an exception, as will
  /// subsequently adding or removing transports after this is set.
  ///
  ///
  ///@param networkSpecifier A concrete, parcelable framework class that extends
  ///                         NetworkSpecifier.
  NetworkRequest_Builder setNetworkSpecifier1(
          networkspecifier_.NetworkSpecifier networkSpecifier) =>
      NetworkRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setNetworkSpecifier1,
          jni.JniType.objectType,
          [networkSpecifier.reference]).object);
}
