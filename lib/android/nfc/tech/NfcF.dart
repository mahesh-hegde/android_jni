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

import "../Tag.dart" as tag_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.nfc.tech.NfcF
///
/// Provides access to NFC-F (JIS 6319-4) properties and I/O operations on a Tag.
///
/// Acquire a NfcF object using \#get.
/// The primary NFC-F I/O operation is \#transceive. Applications must
/// implement their own protocol stack on top of \#transceive.
///
/// <p class="note"><strong>Note:</strong> Methods that perform I/O operations
/// require the android.Manifest.permission\#NFC permission.
class NfcF extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/nfc/tech/NfcF");
  NfcF.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/nfc/Tag;)V");

  /// from: void <init>(android.nfc.Tag tag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  NfcF(tag_.Tag tag)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [tag.reference]).object);

  static final _id_get0 = jniAccessors.getStaticMethodIDOf(
      _classRef, "get", "(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcF;");

  /// from: static public android.nfc.tech.NfcF get(android.nfc.Tag tag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get an instance of NfcF for the given tag.
  /// Returns null if NfcF was not enumerated in Tag\#getTechList.
  /// This indicates the tag does not support NFC-F.
  /// Does not cause any RF activity and does not block.
  ///@param tag an NFC-F compatible tag
  ///@return NFC-F object
  static NfcF get0(tag_.Tag tag) =>
      NfcF.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_get0, jni.JniType.objectType, [tag.reference]).object);

  static final _id_getSystemCode =
      jniAccessors.getMethodIDOf(_classRef, "getSystemCode", "()[B");

  /// from: public byte[] getSystemCode()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the System Code bytes from tag discovery.
  ///
  /// Does not cause any RF activity and does not block.
  ///@return System Code bytes
  jni.JniObject getSystemCode() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSystemCode, jni.JniType.objectType, []).object);

  static final _id_getManufacturer =
      jniAccessors.getMethodIDOf(_classRef, "getManufacturer", "()[B");

  /// from: public byte[] getManufacturer()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the Manufacturer bytes from tag discovery.
  ///
  /// Does not cause any RF activity and does not block.
  ///@return Manufacturer bytes
  jni.JniObject getManufacturer() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getManufacturer, jni.JniType.objectType, []).object);

  static final _id_transceive =
      jniAccessors.getMethodIDOf(_classRef, "transceive", "([B)[B");

  /// from: public byte[] transceive(byte[] data)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Send raw NFC-F commands to the tag and receive the response.
  ///
  /// Applications must not prefix the SoD (preamble and sync code)
  /// and/or append the EoD (CRC) to the payload, it will be automatically calculated.
  ///
  /// A typical NFC-F frame for this method looks like:
  /// <pre>
  /// LENGTH (1 byte) --- CMD (1 byte) -- IDm (8 bytes) -- PARAMS (LENGTH - 10 bytes)
  /// </pre>
  ///
  /// Use \#getMaxTransceiveLength to retrieve the maximum amount of bytes
  /// that can be sent with \#transceive.
  ///
  /// This is an I/O operation and will block until complete. It must
  /// not be called from the main application thread. A blocked call will be canceled with
  /// IOException if \#close is called from another thread.
  ///
  /// <p class="note">Requires the android.Manifest.permission\#NFC permission.
  ///@param data bytes to send
  ///@return bytes received in response
  ///@throws TagLostException if the tag leaves the field
  ///@throws IOException if there is an I/O failure, or this operation is canceled
  jni.JniObject transceive(jni.JniObject data) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_transceive, jni.JniType.objectType, [data.reference]).object);

  static final _id_getMaxTransceiveLength =
      jniAccessors.getMethodIDOf(_classRef, "getMaxTransceiveLength", "()I");

  /// from: public int getMaxTransceiveLength()
  ///
  /// Return the maximum number of bytes that can be sent with \#transceive.
  ///@return the maximum number of bytes that can be sent with \#transceive.
  int getMaxTransceiveLength() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxTransceiveLength, jni.JniType.intType, []).integer;

  static final _id_setTimeout =
      jniAccessors.getMethodIDOf(_classRef, "setTimeout", "(I)V");

  /// from: public void setTimeout(int timeout)
  ///
  /// Set the \#transceive timeout in milliseconds.
  ///
  /// The timeout only applies to \#transceive on this object,
  /// and is reset to a default value when \#close is called.
  ///
  /// Setting a longer timeout may be useful when performing
  /// transactions that require a long processing time on the tag
  /// such as key generation.
  ///
  /// <p class="note">Requires the android.Manifest.permission\#NFC permission.
  ///@param timeout timeout value in milliseconds
  void setTimeout(int timeout) => jniAccessors.callMethodWithArgs(
      reference, _id_setTimeout, jni.JniType.voidType, [timeout]).check();

  static final _id_getTimeout =
      jniAccessors.getMethodIDOf(_classRef, "getTimeout", "()I");

  /// from: public int getTimeout()
  ///
  /// Get the current \#transceive timeout in milliseconds.
  ///
  /// <p class="note">Requires the android.Manifest.permission\#NFC permission.
  ///@return timeout value in milliseconds
  int getTimeout() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimeout, jni.JniType.intType, []).integer;

  static final _id_isConnected =
      jniAccessors.getMethodIDOf(_classRef, "isConnected", "()Z");

  /// from: public boolean isConnected()
  bool isConnected() => jniAccessors.callMethodWithArgs(
      reference, _id_isConnected, jni.JniType.booleanType, []).boolean;

  static final _id_getTag =
      jniAccessors.getMethodIDOf(_classRef, "getTag", "()Landroid/nfc/Tag;");

  /// from: public android.nfc.Tag getTag()
  /// The returned object must be deleted after use, by calling the `delete` method.
  tag_.Tag getTag() => tag_.Tag.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getTag, jni.JniType.objectType, []).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_connect =
      jniAccessors.getMethodIDOf(_classRef, "connect", "()V");

  /// from: public void connect()
  void connect() => jniAccessors.callMethodWithArgs(
      reference, _id_connect, jni.JniType.voidType, []).check();
}
