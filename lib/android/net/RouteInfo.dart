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

import "../os/Parcelable.dart" as parcelable_;

import "IpPrefix.dart" as ipprefix_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.RouteInfo
///
/// Represents a network route.
///
/// This is used both to describe static network configuration and live network
/// configuration information.
///
/// A route contains three pieces of information:
/// <ul>
/// <li>a destination IpPrefix specifying the network destinations covered by this route.
///     If this is {@code null} it indicates a default route of the address family (IPv4 or IPv6)
///     implied by the gateway IP address.
/// <li>a gateway InetAddress indicating the next hop to use.  If this is {@code null} it
///     indicates a directly-connected route.
/// <li>an interface (which may be unspecified).
/// </ul>
/// Either the destination or the gateway may be {@code null}, but not both.  If the
/// destination and gateway are both specified, they must be of the same address family
/// (IPv4 or IPv6).
class RouteInfo extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/net/RouteInfo");
  RouteInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.net.RouteInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Implement the Parcelable interface.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/net/InetAddress;)V");

  /// from: void <init>(java.net.InetAddress gateway)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a default {@code RouteInfo} object.
  ///@param gateway the InetAddress to route packets through
  ///@hide
  RouteInfo(jni.JniObject gateway)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [gateway.reference]).object);

  static final _id_getDestination = jniAccessors.getMethodIDOf(
      _classRef, "getDestination", "()Landroid/net/IpPrefix;");

  /// from: public android.net.IpPrefix getDestination()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the destination address and prefix length in the form of an IpPrefix.
  ///@return IpPrefix specifying the destination.  This is never {@code null}.
  ipprefix_.IpPrefix getDestination() =>
      ipprefix_.IpPrefix.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDestination, jni.JniType.objectType, []).object);

  static final _id_getGateway = jniAccessors.getMethodIDOf(
      _classRef, "getGateway", "()Ljava/net/InetAddress;");

  /// from: public java.net.InetAddress getGateway()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the gateway or next hop InetAddress for this route.
  ///@return InetAddress specifying the gateway or next hop.  This may be
  ///                             {@code null} for a directly-connected route."
  jni.JniObject getGateway() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getGateway, jni.JniType.objectType, []).object);

  static final _id_getInterface = jniAccessors.getMethodIDOf(
      _classRef, "getInterface", "()Ljava/lang/String;");

  /// from: public java.lang.String getInterface()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the interface used for this route if specified, else {@code null}.
  ///@return The name of the interface used for this route.
  jni.JniString getInterface() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInterface, jni.JniType.objectType, []).object);

  static final _id_isDefaultRoute =
      jniAccessors.getMethodIDOf(_classRef, "isDefaultRoute", "()Z");

  /// from: public boolean isDefaultRoute()
  ///
  /// Indicates if this route is a default route (ie, has no destination specified).
  ///@return {@code true} if the destination has a prefix length of 0.
  bool isDefaultRoute() => jniAccessors.callMethodWithArgs(
      reference, _id_isDefaultRoute, jni.JniType.booleanType, []).boolean;

  static final _id_matches = jniAccessors.getMethodIDOf(
      _classRef, "matches", "(Ljava/net/InetAddress;)Z");

  /// from: public boolean matches(java.net.InetAddress destination)
  ///
  /// Determines whether the destination and prefix of this route includes the specified
  /// address.
  ///@param destination A InetAddress to test to see if it would match this route.
  ///@return {@code true} if the destination and prefix length cover the given address.
  bool matches(jni.JniObject destination) => jniAccessors.callMethodWithArgs(
      reference,
      _id_matches,
      jni.JniType.booleanType,
      [destination.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a human-readable description of this object.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  ///
  /// Compares this RouteInfo object against the specified object and indicates if they are equal.
  ///@return {@code true} if the objects are equal, {@code false} otherwise.
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// Returns a hashcode for this <code>RouteInfo</code> object.
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  ///
  /// Implement the Parcelable interface
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Implement the Parcelable interface
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
