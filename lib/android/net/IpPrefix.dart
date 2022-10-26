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

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.IpPrefix
///
/// This class represents an IP prefix, i.e., a contiguous block of IP addresses aligned on a
/// power of two boundary (also known as an "IP subnet"). A prefix is specified by two pieces of
/// information:
///
/// <ul>
/// <li>A starting IP address (IPv4 or IPv6). This is the first IP address of the prefix.
/// <li>A prefix length. This specifies the length of the prefix by specifing the number of bits
///     in the IP address, starting from the most significant bit in network byte order, that
///     are constant for all addresses in the prefix.
/// </ul>
///
/// For example, the prefix <code>192.0.2.0/24</code> covers the 256 IPv4 addresses from
/// <code>192.0.2.0</code> to <code>192.0.2.255</code>, inclusive, and the prefix
/// <code>2001:db8:1:2</code>  covers the 2^64 IPv6 addresses from <code>2001:db8:1:2::</code> to
/// <code>2001:db8:1:2:ffff:ffff:ffff:ffff</code>, inclusive.
///
/// Objects of this class are immutable.
class IpPrefix extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/net/IpPrefix");
  IpPrefix.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.net.IpPrefix> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Implement the Parcelable interface.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: void <init>(java.lang.String prefix)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new IpPrefix from a string such as "192.0.2.1/24" or "2001:db8::1/64".
  /// Silently truncates the address to the prefix length, so for example {@code 192.0.2.1/24}
  /// is silently converted to {@code 192.0.2.0/24}.
  ///@param prefix the prefix to parse
  ///@hide
  IpPrefix(jni.JniString prefix)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [prefix.reference]).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  ///
  /// Compares this {@code IpPrefix} object against the specified object in {@code obj}. Two
  /// objects are equal if they have the same startAddress and prefixLength.
  ///@param obj the object to be tested for equality.
  ///@return {@code true} if both objects are equal, {@code false} otherwise.
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// Gets the hashcode of the represented IP prefix.
  ///@return the appropriate hashcode value.
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_getAddress = jniAccessors.getMethodIDOf(
      _classRef, "getAddress", "()Ljava/net/InetAddress;");

  /// from: public java.net.InetAddress getAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a copy of the first IP address in the prefix. Modifying the returned object does not
  /// change this object's contents.
  ///@return the address in the form of a byte array.
  jni.JniObject getAddress() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAddress, jni.JniType.objectType, []).object);

  static final _id_getRawAddress =
      jniAccessors.getMethodIDOf(_classRef, "getRawAddress", "()[B");

  /// from: public byte[] getRawAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a copy of the IP address bytes in network order (the highest order byte is the zeroth
  /// element). Modifying the returned array does not change this object's contents.
  ///@return the address in the form of a byte array.
  jni.JniObject getRawAddress() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getRawAddress, jni.JniType.objectType, []).object);

  static final _id_getPrefixLength =
      jniAccessors.getMethodIDOf(_classRef, "getPrefixLength", "()I");

  /// from: public int getPrefixLength()
  ///
  /// Returns the prefix length of this {@code IpPrefix}.
  ///@return the prefix length.
  int getPrefixLength() => jniAccessors.callMethodWithArgs(
      reference, _id_getPrefixLength, jni.JniType.intType, []).integer;

  static final _id_contains = jniAccessors.getMethodIDOf(
      _classRef, "contains", "(Ljava/net/InetAddress;)Z");

  /// from: public boolean contains(java.net.InetAddress address)
  ///
  /// Determines whether the prefix contains the specified address.
  ///@param address An InetAddress to test.
  ///@return {@code true} if the prefix covers the given address.
  bool contains(jni.JniObject address) => jniAccessors.callMethodWithArgs(
      reference,
      _id_contains,
      jni.JniType.booleanType,
      [address.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a string representation of this {@code IpPrefix}.
  ///@return a string such as {@code "192.0.2.0/24"} or {@code "2001:db8:1:2::/64"}.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  ///
  /// Implement the Parcelable interface.
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Implement the Parcelable interface.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}