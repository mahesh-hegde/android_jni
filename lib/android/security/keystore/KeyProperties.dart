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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.security.keystore.KeyProperties
///
/// Properties of <a href="{@docRoot}training/articles/keystore.html">Android Keystore</a> keys.
class KeyProperties extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/security/keystore/KeyProperties");
  KeyProperties.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String BLOCK_MODE_CBC
  ///
  /// Cipher Block Chaining (CBC) block mode.
  static const BLOCK_MODE_CBC = "CBC";

  /// from: static public final java.lang.String BLOCK_MODE_CTR
  ///
  /// Counter (CTR) block mode.
  static const BLOCK_MODE_CTR = "CTR";

  /// from: static public final java.lang.String BLOCK_MODE_ECB
  ///
  /// Electronic Codebook (ECB) block mode.
  static const BLOCK_MODE_ECB = "ECB";

  /// from: static public final java.lang.String BLOCK_MODE_GCM
  ///
  /// Galois/Counter Mode (GCM) block mode.
  static const BLOCK_MODE_GCM = "GCM";

  /// from: static public final java.lang.String DIGEST_MD5
  ///
  /// MD5 digest.
  static const DIGEST_MD5 = "MD5";

  /// from: static public final java.lang.String DIGEST_NONE
  ///
  /// No digest: sign/authenticate the raw message.
  static const DIGEST_NONE = "NONE";

  /// from: static public final java.lang.String DIGEST_SHA1
  ///
  /// SHA-1 digest.
  static const DIGEST_SHA1 = "SHA-1";

  /// from: static public final java.lang.String DIGEST_SHA224
  ///
  /// SHA-2 224 (aka SHA-224) digest.
  static const DIGEST_SHA224 = "SHA-224";

  /// from: static public final java.lang.String DIGEST_SHA256
  ///
  /// SHA-2 256 (aka SHA-256) digest.
  static const DIGEST_SHA256 = "SHA-256";

  /// from: static public final java.lang.String DIGEST_SHA384
  ///
  /// SHA-2 384 (aka SHA-384) digest.
  static const DIGEST_SHA384 = "SHA-384";

  /// from: static public final java.lang.String DIGEST_SHA512
  ///
  /// SHA-2 512 (aka SHA-512) digest.
  static const DIGEST_SHA512 = "SHA-512";

  /// from: static public final java.lang.String ENCRYPTION_PADDING_NONE
  ///
  /// No encryption padding.
  static const ENCRYPTION_PADDING_NONE = "NoPadding";

  /// from: static public final java.lang.String ENCRYPTION_PADDING_PKCS7
  ///
  /// PKCS\#7 encryption padding scheme.
  static const ENCRYPTION_PADDING_PKCS7 = "PKCS7Padding";

  /// from: static public final java.lang.String ENCRYPTION_PADDING_RSA_OAEP
  ///
  /// RSA Optimal Asymmetric Encryption Padding (OAEP) scheme.
  static const ENCRYPTION_PADDING_RSA_OAEP = "OAEPPadding";

  /// from: static public final java.lang.String ENCRYPTION_PADDING_RSA_PKCS1
  ///
  /// RSA PKCS\#1 v1.5 padding scheme for encryption.
  static const ENCRYPTION_PADDING_RSA_PKCS1 = "PKCS1Padding";

  /// from: static public final java.lang.String KEY_ALGORITHM_3DES
  ///
  /// Triple Data Encryption Algorithm (3DES) key.
  ///@deprecated Included for interoperability with legacy systems. Prefer KeyProperties\#KEY_ALGORITHM_AES for new development.
  static const KEY_ALGORITHM_3DES = "DESede";

  /// from: static public final java.lang.String KEY_ALGORITHM_AES
  ///
  /// Advanced Encryption Standard (AES) key.
  static const KEY_ALGORITHM_AES = "AES";

  /// from: static public final java.lang.String KEY_ALGORITHM_EC
  ///
  /// Elliptic Curve (EC) Cryptography key.
  static const KEY_ALGORITHM_EC = "EC";

  /// from: static public final java.lang.String KEY_ALGORITHM_HMAC_SHA1
  ///
  /// Keyed-Hash Message Authentication Code (HMAC) key using SHA-1 as the hash.
  static const KEY_ALGORITHM_HMAC_SHA1 = "HmacSHA1";

  /// from: static public final java.lang.String KEY_ALGORITHM_HMAC_SHA224
  ///
  /// Keyed-Hash Message Authentication Code (HMAC) key using SHA-224 as the hash.
  static const KEY_ALGORITHM_HMAC_SHA224 = "HmacSHA224";

  /// from: static public final java.lang.String KEY_ALGORITHM_HMAC_SHA256
  ///
  /// Keyed-Hash Message Authentication Code (HMAC) key using SHA-256 as the hash.
  static const KEY_ALGORITHM_HMAC_SHA256 = "HmacSHA256";

  /// from: static public final java.lang.String KEY_ALGORITHM_HMAC_SHA384
  ///
  /// Keyed-Hash Message Authentication Code (HMAC) key using SHA-384 as the hash.
  static const KEY_ALGORITHM_HMAC_SHA384 = "HmacSHA384";

  /// from: static public final java.lang.String KEY_ALGORITHM_HMAC_SHA512
  ///
  /// Keyed-Hash Message Authentication Code (HMAC) key using SHA-512 as the hash.
  static const KEY_ALGORITHM_HMAC_SHA512 = "HmacSHA512";

  /// from: static public final java.lang.String KEY_ALGORITHM_RSA
  ///
  /// Rivest Shamir Adleman (RSA) key.
  static const KEY_ALGORITHM_RSA = "RSA";

  /// from: static public final int ORIGIN_GENERATED
  ///
  /// Key was generated inside AndroidKeyStore.
  static const ORIGIN_GENERATED = 1;

  /// from: static public final int ORIGIN_IMPORTED
  ///
  /// Key was imported into AndroidKeyStore.
  static const ORIGIN_IMPORTED = 2;

  /// from: static public final int ORIGIN_SECURELY_IMPORTED
  ///
  /// Key was imported into the AndroidKeyStore in an encrypted wrapper. Unlike imported keys,
  /// securely imported keys can be imported without appearing as plaintext in the device's host
  /// memory.
  static const ORIGIN_SECURELY_IMPORTED = 8;

  /// from: static public final int ORIGIN_UNKNOWN
  ///
  /// Origin of the key is unknown. This can occur only for keys backed by an old TEE-backed
  /// implementation which does not record origin information.
  static const ORIGIN_UNKNOWN = 4;

  /// from: static public final int PURPOSE_DECRYPT
  ///
  /// Purpose of key: decryption.
  static const PURPOSE_DECRYPT = 2;

  /// from: static public final int PURPOSE_ENCRYPT
  ///
  /// Purpose of key: encryption.
  static const PURPOSE_ENCRYPT = 1;

  /// from: static public final int PURPOSE_SIGN
  ///
  /// Purpose of key: signing or generating a Message Authentication Code (MAC).
  static const PURPOSE_SIGN = 4;

  /// from: static public final int PURPOSE_VERIFY
  ///
  /// Purpose of key: signature or Message Authentication Code (MAC) verification.
  static const PURPOSE_VERIFY = 8;

  /// from: static public final int PURPOSE_WRAP_KEY
  ///
  /// Purpose of key: wrapping and unwrapping wrapped keys for secure import.
  static const PURPOSE_WRAP_KEY = 32;

  /// from: static public final java.lang.String SIGNATURE_PADDING_RSA_PKCS1
  ///
  /// RSA PKCS\#1 v1.5 padding for signatures.
  static const SIGNATURE_PADDING_RSA_PKCS1 = "PKCS1";

  /// from: static public final java.lang.String SIGNATURE_PADDING_RSA_PSS
  ///
  /// RSA PKCS\#1 v2.1 Probabilistic Signature Scheme (PSS) padding.
  static const SIGNATURE_PADDING_RSA_PSS = "PSS";
}
