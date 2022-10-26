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

import "WifiEnterpriseConfig.dart" as wifienterpriseconfig_;

import "../ProxyInfo.dart" as proxyinfo_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.WifiConfiguration
///
/// A class representing a configured Wi-Fi network, including the
/// security configuration.
class WifiConfiguration extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/WifiConfiguration");
  WifiConfiguration.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_BSSID =
      jniAccessors.getFieldIDOf(_classRef, "BSSID", "Ljava/lang/String;");

  /// from: public java.lang.String BSSID
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// When set, this network configuration entry should only be used when
  /// associating with the AP having the specified BSSID. The value is
  /// a string in the format of an Ethernet MAC address, e.g.,
  /// <code>XX:XX:XX:XX:XX:XX</code> where each <code>X</code> is a hex digit.
  jni.JniString get BSSID => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_BSSID, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String BSSID
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// When set, this network configuration entry should only be used when
  /// associating with the AP having the specified BSSID. The value is
  /// a string in the format of an Ethernet MAC address, e.g.,
  /// <code>XX:XX:XX:XX:XX:XX</code> where each <code>X</code> is a hex digit.
  set BSSID(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_BSSID, value.reference);

  static final _id_FQDN =
      jniAccessors.getFieldIDOf(_classRef, "FQDN", "Ljava/lang/String;");

  /// from: public java.lang.String FQDN
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Fully qualified domain name of a Passpoint configuration
  jni.JniString get FQDN => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_FQDN, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String FQDN
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Fully qualified domain name of a Passpoint configuration
  set FQDN(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_FQDN, value.reference);

  static final _id_SSID =
      jniAccessors.getFieldIDOf(_classRef, "SSID", "Ljava/lang/String;");

  /// from: public java.lang.String SSID
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The network's SSID. Can either be a UTF-8 string,
  /// which must be enclosed in double quotation marks
  /// (e.g., {@code "MyNetwork"}), or a string of
  /// hex digits, which are not enclosed in quotes
  /// (e.g., {@code 01a243f405}).
  jni.JniString get SSID => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_SSID, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String SSID
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The network's SSID. Can either be a UTF-8 string,
  /// which must be enclosed in double quotation marks
  /// (e.g., {@code "MyNetwork"}), or a string of
  /// hex digits, which are not enclosed in quotes
  /// (e.g., {@code 01a243f405}).
  set SSID(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_SSID, value.reference);

  static final _id_allowedAuthAlgorithms = jniAccessors.getFieldIDOf(
      _classRef, "allowedAuthAlgorithms", "Ljava/util/BitSet;");

  /// from: public java.util.BitSet allowedAuthAlgorithms
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of authentication protocols supported by this configuration.
  /// See AuthAlgorithm for descriptions of the values.
  /// Defaults to automatic selection.
  jni.JniObject get allowedAuthAlgorithms => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_allowedAuthAlgorithms, jni.JniType.objectType)
      .object);

  /// from: public java.util.BitSet allowedAuthAlgorithms
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of authentication protocols supported by this configuration.
  /// See AuthAlgorithm for descriptions of the values.
  /// Defaults to automatic selection.
  set allowedAuthAlgorithms(jni.JniObject value) => jniEnv.SetObjectField(
      reference, _id_allowedAuthAlgorithms, value.reference);

  static final _id_allowedGroupCiphers = jniAccessors.getFieldIDOf(
      _classRef, "allowedGroupCiphers", "Ljava/util/BitSet;");

  /// from: public java.util.BitSet allowedGroupCiphers
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of group ciphers supported by this configuration.
  /// See GroupCipher for descriptions of the values.
  /// Defaults to CCMP TKIP WEP104 WEP40.
  jni.JniObject get allowedGroupCiphers => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_allowedGroupCiphers, jni.JniType.objectType)
      .object);

  /// from: public java.util.BitSet allowedGroupCiphers
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of group ciphers supported by this configuration.
  /// See GroupCipher for descriptions of the values.
  /// Defaults to CCMP TKIP WEP104 WEP40.
  set allowedGroupCiphers(jni.JniObject value) => jniEnv.SetObjectField(
      reference, _id_allowedGroupCiphers, value.reference);

  static final _id_allowedKeyManagement = jniAccessors.getFieldIDOf(
      _classRef, "allowedKeyManagement", "Ljava/util/BitSet;");

  /// from: public java.util.BitSet allowedKeyManagement
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of key management protocols supported by this configuration.
  /// See KeyMgmt for descriptions of the values.
  /// Defaults to WPA-PSK WPA-EAP.
  jni.JniObject get allowedKeyManagement => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_allowedKeyManagement, jni.JniType.objectType)
      .object);

  /// from: public java.util.BitSet allowedKeyManagement
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of key management protocols supported by this configuration.
  /// See KeyMgmt for descriptions of the values.
  /// Defaults to WPA-PSK WPA-EAP.
  set allowedKeyManagement(jni.JniObject value) => jniEnv.SetObjectField(
      reference, _id_allowedKeyManagement, value.reference);

  static final _id_allowedPairwiseCiphers = jniAccessors.getFieldIDOf(
      _classRef, "allowedPairwiseCiphers", "Ljava/util/BitSet;");

  /// from: public java.util.BitSet allowedPairwiseCiphers
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of pairwise ciphers for WPA supported by this configuration.
  /// See PairwiseCipher for descriptions of the values.
  /// Defaults to CCMP TKIP.
  jni.JniObject get allowedPairwiseCiphers => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_allowedPairwiseCiphers, jni.JniType.objectType)
      .object);

  /// from: public java.util.BitSet allowedPairwiseCiphers
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of pairwise ciphers for WPA supported by this configuration.
  /// See PairwiseCipher for descriptions of the values.
  /// Defaults to CCMP TKIP.
  set allowedPairwiseCiphers(jni.JniObject value) => jniEnv.SetObjectField(
      reference, _id_allowedPairwiseCiphers, value.reference);

  static final _id_allowedProtocols = jniAccessors.getFieldIDOf(
      _classRef, "allowedProtocols", "Ljava/util/BitSet;");

  /// from: public java.util.BitSet allowedProtocols
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of security protocols supported by this configuration.
  /// See Protocol for descriptions of the values.
  /// Defaults to WPA RSN.
  jni.JniObject get allowedProtocols => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_allowedProtocols, jni.JniType.objectType)
      .object);

  /// from: public java.util.BitSet allowedProtocols
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The set of security protocols supported by this configuration.
  /// See Protocol for descriptions of the values.
  /// Defaults to WPA RSN.
  set allowedProtocols(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_allowedProtocols, value.reference);

  static final _id_enterpriseConfig = jniAccessors.getFieldIDOf(
      _classRef, "enterpriseConfig", "Landroid/net/wifi/WifiEnterpriseConfig;");

  /// from: public android.net.wifi.WifiEnterpriseConfig enterpriseConfig
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The enterprise configuration details specifying the EAP method,
  /// certificates and other settings associated with the EAP.
  wifienterpriseconfig_.WifiEnterpriseConfig get enterpriseConfig =>
      wifienterpriseconfig_.WifiEnterpriseConfig.fromRef(jniAccessors
          .getField(reference, _id_enterpriseConfig, jni.JniType.objectType)
          .object);

  /// from: public android.net.wifi.WifiEnterpriseConfig enterpriseConfig
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The enterprise configuration details specifying the EAP method,
  /// certificates and other settings associated with the EAP.
  set enterpriseConfig(wifienterpriseconfig_.WifiEnterpriseConfig value) =>
      jniEnv.SetObjectField(reference, _id_enterpriseConfig, value.reference);

  static final _id_hiddenSSID =
      jniAccessors.getFieldIDOf(_classRef, "hiddenSSID", "Z");

  /// from: public boolean hiddenSSID
  ///
  /// This is a network that does not broadcast its SSID, so an
  /// SSID-specific probe request must be used for scans.
  bool get hiddenSSID => jniAccessors
      .getField(reference, _id_hiddenSSID, jni.JniType.booleanType)
      .boolean;

  /// from: public boolean hiddenSSID
  ///
  /// This is a network that does not broadcast its SSID, so an
  /// SSID-specific probe request must be used for scans.
  set hiddenSSID(bool value) =>
      jniEnv.SetBooleanField(reference, _id_hiddenSSID, value ? 1 : 0);

  static final _id_isHomeProviderNetwork =
      jniAccessors.getFieldIDOf(_classRef, "isHomeProviderNetwork", "Z");

  /// from: public boolean isHomeProviderNetwork
  ///
  /// Flag indicating if this network is provided by a home Passpoint provider or a roaming
  /// Passpoint provider.  This flag will be {@code true} if this network is provided by
  /// a home Passpoint provider and {@code false} if is provided by a roaming Passpoint provider
  /// or is a non-Passpoint network.
  bool get isHomeProviderNetwork => jniAccessors
      .getField(reference, _id_isHomeProviderNetwork, jni.JniType.booleanType)
      .boolean;

  /// from: public boolean isHomeProviderNetwork
  ///
  /// Flag indicating if this network is provided by a home Passpoint provider or a roaming
  /// Passpoint provider.  This flag will be {@code true} if this network is provided by
  /// a home Passpoint provider and {@code false} if is provided by a roaming Passpoint provider
  /// or is a non-Passpoint network.
  set isHomeProviderNetwork(bool value) => jniEnv.SetBooleanField(
      reference, _id_isHomeProviderNetwork, value ? 1 : 0);

  static final _id_networkId =
      jniAccessors.getFieldIDOf(_classRef, "networkId", "I");

  /// from: public int networkId
  ///
  /// The ID number that the supplicant uses to identify this
  /// network configuration entry. This must be passed as an argument
  /// to most calls into the supplicant.
  int get networkId => jniAccessors
      .getField(reference, _id_networkId, jni.JniType.intType)
      .integer;

  /// from: public int networkId
  ///
  /// The ID number that the supplicant uses to identify this
  /// network configuration entry. This must be passed as an argument
  /// to most calls into the supplicant.
  set networkId(int value) =>
      jniEnv.SetIntField(reference, _id_networkId, value);

  static final _id_preSharedKey = jniAccessors.getFieldIDOf(
      _classRef, "preSharedKey", "Ljava/lang/String;");

  /// from: public java.lang.String preSharedKey
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Pre-shared key for use with WPA-PSK. Either an ASCII string enclosed in
  /// double quotation marks (e.g., {@code "abcdefghij"} for PSK passphrase or
  /// a string of 64 hex digits for raw PSK.
  /// <p/>
  /// When the value of this key is read, the actual key is
  /// not returned, just a "*" if the key has a value, or the null
  /// string otherwise.
  jni.JniString get preSharedKey => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_preSharedKey, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String preSharedKey
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Pre-shared key for use with WPA-PSK. Either an ASCII string enclosed in
  /// double quotation marks (e.g., {@code "abcdefghij"} for PSK passphrase or
  /// a string of 64 hex digits for raw PSK.
  /// <p/>
  /// When the value of this key is read, the actual key is
  /// not returned, just a "*" if the key has a value, or the null
  /// string otherwise.
  set preSharedKey(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_preSharedKey, value.reference);

  static final _id_priority =
      jniAccessors.getFieldIDOf(_classRef, "priority", "I");

  /// from: public int priority
  ///
  /// Priority determines the preference given to a network by {@code wpa_supplicant}
  /// when choosing an access point with which to associate.
  ///@deprecated This field does not exist anymore.
  int get priority => jniAccessors
      .getField(reference, _id_priority, jni.JniType.intType)
      .integer;

  /// from: public int priority
  ///
  /// Priority determines the preference given to a network by {@code wpa_supplicant}
  /// when choosing an access point with which to associate.
  ///@deprecated This field does not exist anymore.
  set priority(int value) => jniEnv.SetIntField(reference, _id_priority, value);

  static final _id_providerFriendlyName = jniAccessors.getFieldIDOf(
      _classRef, "providerFriendlyName", "Ljava/lang/String;");

  /// from: public java.lang.String providerFriendlyName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Name of Passpoint credential provider
  jni.JniString get providerFriendlyName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_providerFriendlyName, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String providerFriendlyName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Name of Passpoint credential provider
  set providerFriendlyName(jni.JniString value) => jniEnv.SetObjectField(
      reference, _id_providerFriendlyName, value.reference);

  static final _id_roamingConsortiumIds =
      jniAccessors.getFieldIDOf(_classRef, "roamingConsortiumIds", "[J");

  /// from: public long[] roamingConsortiumIds
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Roaming Consortium Id list for Passpoint credential; identifies a set of networks where
  /// Passpoint credential will be considered valid
  jni.JniObject get roamingConsortiumIds => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_roamingConsortiumIds, jni.JniType.objectType)
      .object);

  /// from: public long[] roamingConsortiumIds
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Roaming Consortium Id list for Passpoint credential; identifies a set of networks where
  /// Passpoint credential will be considered valid
  set roamingConsortiumIds(jni.JniObject value) => jniEnv.SetObjectField(
      reference, _id_roamingConsortiumIds, value.reference);

  static final _id_status = jniAccessors.getFieldIDOf(_classRef, "status", "I");

  /// from: public int status
  ///
  /// The current status of this network configuration entry.
  ///@see Status
  int get status =>
      jniAccessors.getField(reference, _id_status, jni.JniType.intType).integer;

  /// from: public int status
  ///
  /// The current status of this network configuration entry.
  ///@see Status
  set status(int value) => jniEnv.SetIntField(reference, _id_status, value);

  static final _id_wepKeys =
      jniAccessors.getFieldIDOf(_classRef, "wepKeys", "[Ljava/lang/String;");

  /// from: public java.lang.String[] wepKeys
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Up to four WEP keys. Either an ASCII string enclosed in double
  /// quotation marks (e.g., {@code "abcdef"}) or a string
  /// of hex digits (e.g., {@code 0102030405}).
  /// <p/>
  /// When the value of one of these keys is read, the actual key is
  /// not returned, just a "*" if the key has a value, or the null
  /// string otherwise.
  ///@deprecated Due to security and performance limitations, use of WEP networks
  /// is discouraged.
  jni.JniObject get wepKeys => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_wepKeys, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String[] wepKeys
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Up to four WEP keys. Either an ASCII string enclosed in double
  /// quotation marks (e.g., {@code "abcdef"}) or a string
  /// of hex digits (e.g., {@code 0102030405}).
  /// <p/>
  /// When the value of one of these keys is read, the actual key is
  /// not returned, just a "*" if the key has a value, or the null
  /// string otherwise.
  ///@deprecated Due to security and performance limitations, use of WEP networks
  /// is discouraged.
  set wepKeys(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_wepKeys, value.reference);

  static final _id_wepTxKeyIndex =
      jniAccessors.getFieldIDOf(_classRef, "wepTxKeyIndex", "I");

  /// from: public int wepTxKeyIndex
  ///
  /// Default WEP key index, ranging from 0 to 3.
  ///@deprecated Due to security and performance limitations, use of WEP networks
  /// is discouraged.
  int get wepTxKeyIndex => jniAccessors
      .getField(reference, _id_wepTxKeyIndex, jni.JniType.intType)
      .integer;

  /// from: public int wepTxKeyIndex
  ///
  /// Default WEP key index, ranging from 0 to 3.
  ///@deprecated Due to security and performance limitations, use of WEP networks
  /// is discouraged.
  set wepTxKeyIndex(int value) =>
      jniEnv.SetIntField(reference, _id_wepTxKeyIndex, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  WifiConfiguration()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_isPasspoint =
      jniAccessors.getMethodIDOf(_classRef, "isPasspoint", "()Z");

  /// from: public boolean isPasspoint()
  ///
  /// Identify if this configuration represents a Passpoint network
  bool isPasspoint() => jniAccessors.callMethodWithArgs(
      reference, _id_isPasspoint, jni.JniType.booleanType, []).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_getHttpProxy = jniAccessors.getMethodIDOf(
      _classRef, "getHttpProxy", "()Landroid/net/ProxyInfo;");

  /// from: public android.net.ProxyInfo getHttpProxy()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the HTTP proxy used by this object.
  ///@return a ProxyInfo httpProxy representing the proxy specified by this
  ///                  WifiConfiguration, or {@code null} if no proxy is specified.
  proxyinfo_.ProxyInfo getHttpProxy() =>
      proxyinfo_.ProxyInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getHttpProxy, jni.JniType.objectType, []).object);

  static final _id_setHttpProxy = jniAccessors.getMethodIDOf(
      _classRef, "setHttpProxy", "(Landroid/net/ProxyInfo;)V");

  /// from: public void setHttpProxy(android.net.ProxyInfo httpProxy)
  ///
  /// Set the ProxyInfo for this WifiConfiguration. This method should only be used by a
  /// device owner or profile owner. When other apps attempt to save a WifiConfiguration
  /// with modified proxy settings, the methods WifiManager\#addNetwork and
  /// WifiManager\#updateNetwork fail and return {@code -1}.
  ///@param httpProxy ProxyInfo representing the httpProxy to be used by this
  ///                  WifiConfiguration. Setting this to {@code null} will explicitly set no
  ///                  proxy, removing any proxy that was previously set.
  ///@exception IllegalArgumentException for invalid httpProxy
  void setHttpProxy(proxyinfo_.ProxyInfo httpProxy) =>
      jniAccessors.callMethodWithArgs(reference, _id_setHttpProxy,
          jni.JniType.voidType, [httpProxy.reference]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  ///
  /// Implement the Parcelable interface {@hide }
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Implement the Parcelable interface {@hide }
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}

/// from: android.net.wifi.WifiConfiguration$Status
///
/// Possible status of a network configuration.
class WifiConfiguration_Status extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/WifiConfiguration\$Status");
  WifiConfiguration_Status.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int CURRENT
  ///
  /// this is the network we are currently connected to
  static const CURRENT = 0;

  /// from: static public final int DISABLED
  ///
  /// supplicant will not attempt to use this network
  static const DISABLED = 1;

  /// from: static public final int ENABLED
  ///
  /// supplicant will consider this network available for association
  static const ENABLED = 2;

  static final _id_strings = jniAccessors.getStaticFieldIDOf(
      _classRef, "strings", "[Ljava/lang/String;");

  /// from: static public final java.lang.String[] strings
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get strings => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_strings, jni.JniType.objectType)
      .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  WifiConfiguration_Status()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.net.wifi.WifiConfiguration$Protocol
///
/// Recognized security protocols.
class WifiConfiguration_Protocol extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/WifiConfiguration\$Protocol");
  WifiConfiguration_Protocol.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int RSN
  ///
  /// WPA2/IEEE 802.11i
  static const RSN = 1;

  /// from: static public final int WPA
  ///
  /// WPA/IEEE 802.11i/D3.0
  ///@deprecated Due to security and performance limitations, use of WPA-1 networks
  /// is discouraged. WPA-2 (RSN) should be used instead.
  static const WPA = 0;

  static final _id_strings = jniAccessors.getStaticFieldIDOf(
      _classRef, "strings", "[Ljava/lang/String;");

  /// from: static public final java.lang.String[] strings
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get strings => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_strings, jni.JniType.objectType)
      .object);

  /// from: static public final java.lang.String varName
  static const varName = "proto";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  WifiConfiguration_Protocol()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.net.wifi.WifiConfiguration$PairwiseCipher
///
/// Recognized pairwise ciphers for WPA.
class WifiConfiguration_PairwiseCipher extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/net/wifi/WifiConfiguration\$PairwiseCipher");
  WifiConfiguration_PairwiseCipher.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  /// from: static public final int CCMP
  ///
  /// AES in Counter mode with CBC-MAC [RFC 3610, IEEE 802.11i/D7.0]
  static const CCMP = 2;

  /// from: static public final int NONE
  ///
  /// Use only Group keys (deprecated)
  static const NONE = 0;

  /// from: static public final int TKIP
  ///
  /// Temporal Key Integrity Protocol [IEEE 802.11i/D7.0]
  ///@deprecated Due to security and performance limitations, use of WPA-1 networks
  /// is discouraged. WPA-2 (RSN) should be used instead.
  static const TKIP = 1;

  static final _id_strings = jniAccessors.getStaticFieldIDOf(
      _classRef, "strings", "[Ljava/lang/String;");

  /// from: static public final java.lang.String[] strings
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get strings => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_strings, jni.JniType.objectType)
      .object);

  /// from: static public final java.lang.String varName
  static const varName = "pairwise";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  WifiConfiguration_PairwiseCipher()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.net.wifi.WifiConfiguration$KeyMgmt
///
/// Recognized key management schemes.
class WifiConfiguration_KeyMgmt extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/WifiConfiguration\$KeyMgmt");
  WifiConfiguration_KeyMgmt.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int IEEE8021X
  ///
  /// IEEE 802.1X using EAP authentication and (optionally) dynamically
  /// generated WEP keys.
  static const IEEE8021X = 3;

  /// from: static public final int NONE
  ///
  /// WPA is not used; plaintext or static WEP could be used.
  static const NONE = 0;

  /// from: static public final int WPA_EAP
  ///
  /// WPA using EAP authentication. Generally used with an external authentication server.
  static const WPA_EAP = 2;

  /// from: static public final int WPA_PSK
  ///
  /// WPA pre-shared key (requires {@code preSharedKey} to be specified).
  static const WPA_PSK = 1;

  static final _id_strings = jniAccessors.getStaticFieldIDOf(
      _classRef, "strings", "[Ljava/lang/String;");

  /// from: static public final java.lang.String[] strings
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get strings => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_strings, jni.JniType.objectType)
      .object);

  /// from: static public final java.lang.String varName
  static const varName = "key_mgmt";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  WifiConfiguration_KeyMgmt()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.net.wifi.WifiConfiguration$GroupCipher
///
/// Recognized group ciphers.
/// <pre>
/// CCMP = AES in Counter mode with CBC-MAC [RFC 3610, IEEE 802.11i/D7.0]
/// TKIP = Temporal Key Integrity Protocol [IEEE 802.11i/D7.0]
/// WEP104 = WEP (Wired Equivalent Privacy) with 104-bit key
/// WEP40 = WEP (Wired Equivalent Privacy) with 40-bit key (original 802.11)
/// </pre>
class WifiConfiguration_GroupCipher extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/net/wifi/WifiConfiguration\$GroupCipher");
  WifiConfiguration_GroupCipher.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int CCMP
  ///
  /// AES in Counter mode with CBC-MAC [RFC 3610, IEEE 802.11i/D7.0]
  static const CCMP = 3;

  /// from: static public final int TKIP
  ///
  /// Temporal Key Integrity Protocol [IEEE 802.11i/D7.0]
  static const TKIP = 2;

  /// from: static public final int WEP104
  ///
  /// WEP104 = WEP (Wired Equivalent Privacy) with 104-bit key
  ///@deprecated Due to security and performance limitations, use of WEP networks
  /// is discouraged.
  static const WEP104 = 1;

  /// from: static public final int WEP40
  ///
  /// WEP40 = WEP (Wired Equivalent Privacy) with 40-bit key (original 802.11)
  ///@deprecated Due to security and performance limitations, use of WEP networks
  /// is discouraged.
  static const WEP40 = 0;

  static final _id_strings = jniAccessors.getStaticFieldIDOf(
      _classRef, "strings", "[Ljava/lang/String;");

  /// from: static public final java.lang.String[] strings
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get strings => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_strings, jni.JniType.objectType)
      .object);

  /// from: static public final java.lang.String varName
  static const varName = "group";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  WifiConfiguration_GroupCipher()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.net.wifi.WifiConfiguration$AuthAlgorithm
///
/// Recognized IEEE 802.11 authentication algorithms.
class WifiConfiguration_AuthAlgorithm extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/net/wifi/WifiConfiguration\$AuthAlgorithm");
  WifiConfiguration_AuthAlgorithm.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int LEAP
  ///
  /// LEAP/Network EAP (only used with LEAP)
  static const LEAP = 2;

  /// from: static public final int OPEN
  ///
  /// Open System authentication (required for WPA/WPA2)
  static const OPEN = 0;

  /// from: static public final int SHARED
  ///
  /// Shared Key authentication (requires static WEP keys)
  ///@deprecated Due to security and performance limitations, use of WEP networks
  /// is discouraged.
  static const SHARED = 1;

  static final _id_strings = jniAccessors.getStaticFieldIDOf(
      _classRef, "strings", "[Ljava/lang/String;");

  /// from: static public final java.lang.String[] strings
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get strings => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_strings, jni.JniType.objectType)
      .object);

  /// from: static public final java.lang.String varName
  static const varName = "auth_alg";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  WifiConfiguration_AuthAlgorithm()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}