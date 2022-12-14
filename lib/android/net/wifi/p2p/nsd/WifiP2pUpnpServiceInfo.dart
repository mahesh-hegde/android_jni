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

import "WifiP2pServiceInfo.dart" as wifip2pserviceinfo_;
import "../../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.p2p.nsd.WifiP2pUpnpServiceInfo
///
/// A class for storing Upnp service information that is advertised
/// over a Wi-Fi peer-to-peer setup.
///
/// {@see android.net.wifi.p2p.WifiP2pManager\#addLocalService}
/// {@see android.net.wifi.p2p.WifiP2pManager\#removeLocalService}
/// {@see WifiP2pServiceInfo}
/// {@see WifiP2pDnsSdServiceInfo}
class WifiP2pUpnpServiceInfo extends wifip2pserviceinfo_.WifiP2pServiceInfo {
  static final _classRef = jniAccessors
      .getClassOf("android/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo");
  WifiP2pUpnpServiceInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_newInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "newInstance",
      "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;");

  /// from: static public android.net.wifi.p2p.nsd.WifiP2pUpnpServiceInfo newInstance(java.lang.String uuid, java.lang.String device, java.util.List<java.lang.String> services)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create UPnP service information object.
  ///@param uuid a string representation of this UUID in the following format,
  ///  as per <a href="http://www.ietf.org/rfc/rfc4122.txt">RFC 4122</a>.<br>
  ///  e.g) 6859dede-8574-59ab-9332-123456789012
  ///@param device a string representation of this device in the following format,
  /// as per
  /// <a href="http://www.upnp.org/specs/arch/UPnP-arch-DeviceArchitecture-v1.1.pdf">
  ///  UPnP Device Architecture1.1</a><br>
  ///  e.g) urn:schemas-upnp-org:device:MediaServer:1
  ///@param services a string representation of this service in the following format,
  /// as per
  /// <a href="http://www.upnp.org/specs/arch/UPnP-arch-DeviceArchitecture-v1.1.pdf">
  ///  UPnP Device Architecture1.1</a><br>
  ///  e.g) urn:schemas-upnp-org:service:ContentDirectory:1
  ///@return UPnP service information object.
  static WifiP2pUpnpServiceInfo newInstance(
          jni.JniString uuid, jni.JniString device, jni.JniObject services) =>
      WifiP2pUpnpServiceInfo.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_newInstance,
          jni.JniType.objectType,
          [uuid.reference, device.reference, services.reference]).object);
}
