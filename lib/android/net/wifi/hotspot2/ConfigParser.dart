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

import "PasspointConfiguration.dart" as passpointconfiguration_;
import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.hotspot2.ConfigParser
///
/// Utility class for building PasspointConfiguration from an installation file.
class ConfigParser extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/hotspot2/ConfigParser");
  ConfigParser.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  ConfigParser()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_parsePasspointConfig = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "parsePasspointConfig",
      "(Ljava/lang/String;[B)Landroid/net/wifi/hotspot2/PasspointConfiguration;");

  /// from: static public android.net.wifi.hotspot2.PasspointConfiguration parsePasspointConfig(java.lang.String mimeType, byte[] data)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Parse the Hotspot 2.0 Release 1 configuration data into a PasspointConfiguration
  /// object.  The configuration data is a base64 encoded MIME multipart data.  Below is
  /// the format of the decoded message:
  ///
  /// Content-Type: multipart/mixed; boundary={boundary}
  /// Content-Transfer-Encoding: base64
  /// [Skip uninterested headers]
  ///
  /// --{boundary}
  /// Content-Type: application/x-passpoint-profile
  /// Content-Transfer-Encoding: base64
  ///
  /// [base64 encoded Passpoint profile data]
  /// --{boundary}
  /// Content-Type: application/x-x509-ca-cert
  /// Content-Transfer-Encoding: base64
  ///
  /// [base64 encoded X509 CA certificate data]
  /// --{boundary}
  /// Content-Type: application/x-pkcs12
  /// Content-Transfer-Encoding: base64
  ///
  /// [base64 encoded PKCS\#12 ASN.1 structure containing client certificate chain]
  /// --{boundary}
  ///@param mimeType MIME type of the encoded data.
  ///@param data A base64 encoded MIME multipart message containing the Passpoint profile
  ///             (required), CA (Certificate Authority) certificate (optional), and client
  ///             certificate chain (optional).
  ///@return PasspointConfiguration
  static passpointconfiguration_.PasspointConfiguration parsePasspointConfig(
          jni.JniString mimeType, jni.JniObject data) =>
      passpointconfiguration_.PasspointConfiguration.fromRef(jniAccessors
          .callStaticMethodWithArgs(
              _classRef,
              _id_parsePasspointConfig,
              jni.JniType.objectType,
              [mimeType.reference, data.reference]).object);
}