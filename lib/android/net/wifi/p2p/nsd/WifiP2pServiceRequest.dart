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

import "../../../../os/Parcel.dart" as parcel_;
import "../../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.wifi.p2p.nsd.WifiP2pServiceRequest
///
/// A class for creating a service discovery request for use with
/// WifiP2pManager\#addServiceRequest and WifiP2pManager\#removeServiceRequest
///
/// This class is used to create service discovery request for custom
/// vendor specific service discovery protocol WifiP2pServiceInfo\#SERVICE_TYPE_VENDOR_SPECIFIC
/// or to search all service protocols WifiP2pServiceInfo\#SERVICE_TYPE_ALL.
///
/// For the purpose of creating a UPnP or Bonjour service request, use
/// WifiP2pUpnpServiceRequest or WifiP2pDnsSdServiceRequest respectively.
///
/// {@see WifiP2pManager}
/// {@see WifiP2pUpnpServiceRequest}
/// {@see WifiP2pDnsSdServiceRequest}
class WifiP2pServiceRequest extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/wifi/p2p/nsd/WifiP2pServiceRequest");
  WifiP2pServiceRequest.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(ILjava/lang/String;)V");

  /// from: void <init>(int protocolType, java.lang.String query)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This constructor is only used in newInstance().
  ///@param protocolType service discovery protocol.
  ///@param query The part of service specific query.
  ///@hide
  WifiP2pServiceRequest(int protocolType, jni.JniString query)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [protocolType, query.reference]).object);

  static final _id_newInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "newInstance",
      "(ILjava/lang/String;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;");

  /// from: static public android.net.wifi.p2p.nsd.WifiP2pServiceRequest newInstance(int protocolType, java.lang.String queryData)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a service discovery request.
  ///@param protocolType can be WifiP2pServiceInfo\#SERVICE_TYPE_ALL
  /// or WifiP2pServiceInfo\#SERVICE_TYPE_VENDOR_SPECIFIC.
  /// In order to create a UPnP or Bonjour service request, use
  /// WifiP2pUpnpServiceRequest or WifiP2pDnsSdServiceRequest
  /// respectively
  ///@param queryData hex string that is vendor specific.  Can be null.
  ///@return service discovery request.
  static WifiP2pServiceRequest newInstance(
          int protocolType, jni.JniString queryData) =>
      WifiP2pServiceRequest.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_newInstance,
          jni.JniType.objectType,
          [protocolType, queryData.reference]).object);

  static final _id_newInstance1 = jniAccessors.getStaticMethodIDOf(_classRef,
      "newInstance", "(I)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;");

  /// from: static public android.net.wifi.p2p.nsd.WifiP2pServiceRequest newInstance(int protocolType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a service discovery request.
  ///@param protocolType can be WifiP2pServiceInfo\#SERVICE_TYPE_ALL
  /// or WifiP2pServiceInfo\#SERVICE_TYPE_VENDOR_SPECIFIC.
  /// In order to create a UPnP or Bonjour service request, use
  /// WifiP2pUpnpServiceRequest or WifiP2pDnsSdServiceRequest
  /// respectively
  ///@return service discovery request.
  static WifiP2pServiceRequest newInstance1(int protocolType) =>
      WifiP2pServiceRequest.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_newInstance1,
          jni.JniType.objectType,
          [protocolType]).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

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