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

/// from: android.net.IpSecAlgorithm
///
/// This class represents a single algorithm that can be used by an IpSecTransform.
///@see <a href="https://tools.ietf.org/html/rfc4301">RFC 4301, Security Architecture for the
/// Internet Protocol</a>
class IpSecAlgorithm extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/IpSecAlgorithm");
  IpSecAlgorithm.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String AUTH_CRYPT_AES_GCM
  ///
  /// AES-GCM Authentication/Integrity + Encryption/Ciphering Algorithm.
  ///
  /// Valid lengths for keying material are {160, 224, 288}.
  ///
  /// As per <a href="https://tools.ietf.org/html/rfc4106\#section-8.1">RFC4106 (Section
  /// 8.1)</a>, keying material consists of a 128, 192, or 256 bit AES key followed by a 32-bit
  /// salt. RFC compliance requires that the salt must be unique per invocation with the same key.
  ///
  /// Valid ICV (truncation) lengths are {64, 96, 128}.
  static const AUTH_CRYPT_AES_GCM = "rfc4106(gcm(aes))";

  /// from: static public final java.lang.String AUTH_HMAC_MD5
  ///
  /// MD5 HMAC Authentication/Integrity Algorithm. __This algorithm is not recommended for use in
  /// new applications and is provided for legacy compatibility with 3gpp infrastructure.__
  ///
  /// Keys for this algorithm must be 128 bits in length.
  ///
  /// Valid truncation lengths are multiples of 8 bits from 96 to 128.
  static const AUTH_HMAC_MD5 = "hmac(md5)";

  /// from: static public final java.lang.String AUTH_HMAC_SHA1
  ///
  /// SHA1 HMAC Authentication/Integrity Algorithm. __This algorithm is not recommended for use in
  /// new applications and is provided for legacy compatibility with 3gpp infrastructure.__
  ///
  /// Keys for this algorithm must be 160 bits in length.
  ///
  /// Valid truncation lengths are multiples of 8 bits from 96 to 160.
  static const AUTH_HMAC_SHA1 = "hmac(sha1)";

  /// from: static public final java.lang.String AUTH_HMAC_SHA256
  ///
  /// SHA256 HMAC Authentication/Integrity Algorithm.
  ///
  /// Keys for this algorithm must be 256 bits in length.
  ///
  /// Valid truncation lengths are multiples of 8 bits from 96 to 256.
  static const AUTH_HMAC_SHA256 = "hmac(sha256)";

  /// from: static public final java.lang.String AUTH_HMAC_SHA384
  ///
  /// SHA384 HMAC Authentication/Integrity Algorithm.
  ///
  /// Keys for this algorithm must be 384 bits in length.
  ///
  /// Valid truncation lengths are multiples of 8 bits from 192 to 384.
  static const AUTH_HMAC_SHA384 = "hmac(sha384)";

  /// from: static public final java.lang.String AUTH_HMAC_SHA512
  ///
  /// SHA512 HMAC Authentication/Integrity Algorithm.
  ///
  /// Keys for this algorithm must be 512 bits in length.
  ///
  /// Valid truncation lengths are multiples of 8 bits from 256 to 512.
  static const AUTH_HMAC_SHA512 = "hmac(sha512)";

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.net.IpSecAlgorithm> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Parcelable Creator
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final java.lang.String CRYPT_AES_CBC
  ///
  /// AES-CBC Encryption/Ciphering Algorithm.
  ///
  /// Valid lengths for this key are {128, 192, 256}.
  static const CRYPT_AES_CBC = "cbc(aes)";

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;[B)V");

  /// from: public void <init>(java.lang.String algorithm, byte[] key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an IpSecAlgorithm of one of the supported types. Supported algorithm names are
  /// defined as constants in this class.
  ///
  /// For algorithms that produce an integrity check value, the truncation length is a required
  /// parameter. See \#IpSecAlgorithm(String algorithm, byte[] key, int truncLenBits)
  ///@param algorithm name of the algorithm.
  /// This value must never be {@code null}.
  /// Value is android.net.IpSecAlgorithm\#CRYPT_AES_CBC, android.net.IpSecAlgorithm\#AUTH_HMAC_MD5, android.net.IpSecAlgorithm\#AUTH_HMAC_SHA1, android.net.IpSecAlgorithm\#AUTH_HMAC_SHA256, android.net.IpSecAlgorithm\#AUTH_HMAC_SHA384, android.net.IpSecAlgorithm\#AUTH_HMAC_SHA512, or android.net.IpSecAlgorithm\#AUTH_CRYPT_AES_GCM
  ///@param key key padded to a multiple of 8 bits.
  ///
  /// This value must never be {@code null}.
  IpSecAlgorithm(jni.JniString algorithm, jni.JniObject key)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [algorithm.reference, key.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;[BI)V");

  /// from: public void <init>(java.lang.String algorithm, byte[] key, int truncLenBits)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an IpSecAlgorithm of one of the supported types. Supported algorithm names are
  /// defined as constants in this class.
  ///
  /// This constructor only supports algorithms that use a truncation length. i.e.
  /// Authentication and Authenticated Encryption algorithms.
  ///@param algorithm name of the algorithm.
  /// This value must never be {@code null}.
  /// Value is android.net.IpSecAlgorithm\#CRYPT_AES_CBC, android.net.IpSecAlgorithm\#AUTH_HMAC_MD5, android.net.IpSecAlgorithm\#AUTH_HMAC_SHA1, android.net.IpSecAlgorithm\#AUTH_HMAC_SHA256, android.net.IpSecAlgorithm\#AUTH_HMAC_SHA384, android.net.IpSecAlgorithm\#AUTH_HMAC_SHA512, or android.net.IpSecAlgorithm\#AUTH_CRYPT_AES_GCM
  ///@param key key padded to a multiple of 8 bits.
  /// This value must never be {@code null}.
  ///@param truncLenBits number of bits of output hash to use.
  IpSecAlgorithm.ctor1(
      jni.JniString algorithm, jni.JniObject key, int truncLenBits)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [algorithm.reference, key.reference, truncLenBits]).object);

  static final _id_getName =
      jniAccessors.getMethodIDOf(_classRef, "getName", "()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the algorithm name
  ///@return This value will never be {@code null}.
  jni.JniString getName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_getKey =
      jniAccessors.getMethodIDOf(_classRef, "getKey", "()[B");

  /// from: public byte[] getKey()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the key for this algorithm
  ///@return This value will never be {@code null}.
  jni.JniObject getKey() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getKey, jni.JniType.objectType, []).object);

  static final _id_getTruncationLengthBits =
      jniAccessors.getMethodIDOf(_classRef, "getTruncationLengthBits", "()I");

  /// from: public int getTruncationLengthBits()
  ///
  /// Get the truncation length of this algorithm, in bits
  int getTruncationLengthBits() => jniAccessors.callMethodWithArgs(
      reference, _id_getTruncationLengthBits, jni.JniType.intType, []).integer;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  ///
  /// Write to parcel
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return This value will never be {@code null}.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}