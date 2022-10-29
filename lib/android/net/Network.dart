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
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.Network
///
/// Identifies a {@code Network}.  This is supplied to applications via
/// ConnectivityManager.NetworkCallback in response to the active
/// ConnectivityManager\#requestNetwork or passive
/// ConnectivityManager\#registerNetworkCallback calls.
/// It is used to direct traffic to the given {@code Network}, either on a Socket basis
/// through a targeted SocketFactory or process-wide via
/// ConnectivityManager\#bindProcessToNetwork.
class Network extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/net/Network");
  Network.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.net.Network> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getAllByName = jniAccessors.getMethodIDOf(
      _classRef, "getAllByName", "(Ljava/lang/String;)[Ljava/net/InetAddress;");

  /// from: public java.net.InetAddress[] getAllByName(java.lang.String host)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Operates the same as {@code InetAddress.getAllByName} except that host
  /// resolution is done on this network.
  ///@param host the hostname or literal IP string to be resolved.
  ///@return the array of addresses associated with the specified host.
  ///@throws UnknownHostException if the address lookup fails.
  jni.JniObject getAllByName(jni.JniString host) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAllByName, jni.JniType.objectType, [host.reference]).object);

  static final _id_getByName = jniAccessors.getMethodIDOf(
      _classRef, "getByName", "(Ljava/lang/String;)Ljava/net/InetAddress;");

  /// from: public java.net.InetAddress getByName(java.lang.String host)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Operates the same as {@code InetAddress.getByName} except that host
  /// resolution is done on this network.
  ///@param host the hostName to be resolved to an address or {@code null}.
  ///@return the {@code InetAddress} instance representing the host.
  ///@throws UnknownHostException if the address lookup fails.
  jni.JniObject getByName(jni.JniString host) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getByName, jni.JniType.objectType, [host.reference]).object);

  static final _id_getSocketFactory = jniAccessors.getMethodIDOf(
      _classRef, "getSocketFactory", "()Ljavax/net/SocketFactory;");

  /// from: public javax.net.SocketFactory getSocketFactory()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a SocketFactory bound to this network.  Any Socket created by
  /// this factory will have its traffic sent over this {@code Network}.  Note that if this
  /// {@code Network} ever disconnects, this factory and any Socket it produced in the
  /// past or future will cease to work.
  ///@return a SocketFactory which produces Socket instances bound to this
  ///         {@code Network}.
  jni.JniObject getSocketFactory() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSocketFactory, jni.JniType.objectType, []).object);

  static final _id_openConnection = jniAccessors.getMethodIDOf(
      _classRef, "openConnection", "(Ljava/net/URL;)Ljava/net/URLConnection;");

  /// from: public java.net.URLConnection openConnection(java.net.URL url)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Opens the specified URL on this {@code Network}, such that all traffic will be sent
  /// on this Network. The URL protocol must be {@code HTTP} or {@code HTTPS}.
  ///@return a {@code URLConnection} to the resource referred to by this URL.
  ///@throws MalformedURLException if the URL protocol is not HTTP or HTTPS.
  ///@throws IOException if an error occurs while opening the connection.
  ///@see java.net.URL\#openConnection()
  jni.JniObject openConnection(jni.JniObject url) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_openConnection, jni.JniType.objectType, [url.reference]).object);

  static final _id_openConnection1 = jniAccessors.getMethodIDOf(
      _classRef,
      "openConnection",
      "(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;");

  /// from: public java.net.URLConnection openConnection(java.net.URL url, java.net.Proxy proxy)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Opens the specified URL on this {@code Network}, such that all traffic will be sent
  /// on this Network. The URL protocol must be {@code HTTP} or {@code HTTPS}.
  ///@param proxy the proxy through which the connection will be established.
  ///@return a {@code URLConnection} to the resource referred to by this URL.
  ///@throws MalformedURLException if the URL protocol is not HTTP or HTTPS.
  ///@throws IllegalArgumentException if the argument proxy is null.
  ///@throws IOException if an error occurs while opening the connection.
  ///@see java.net.URL\#openConnection()
  jni.JniObject openConnection1(jni.JniObject url, jni.JniObject proxy) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_openConnection1,
          jni.JniType.objectType,
          [url.reference, proxy.reference]).object);

  static final _id_bindSocket = jniAccessors.getMethodIDOf(
      _classRef, "bindSocket", "(Ljava/net/DatagramSocket;)V");

  /// from: public void bindSocket(java.net.DatagramSocket socket)
  ///
  /// Binds the specified DatagramSocket to this {@code Network}. All data traffic on the
  /// socket will be sent on this {@code Network}, irrespective of any process-wide network binding
  /// set by ConnectivityManager\#bindProcessToNetwork. The socket must not be
  /// connected.
  void bindSocket(jni.JniObject socket) => jniAccessors.callMethodWithArgs(
      reference,
      _id_bindSocket,
      jni.JniType.voidType,
      [socket.reference]).check();

  static final _id_bindSocket1 = jniAccessors.getMethodIDOf(
      _classRef, "bindSocket", "(Ljava/net/Socket;)V");

  /// from: public void bindSocket(java.net.Socket socket)
  ///
  /// Binds the specified Socket to this {@code Network}. All data traffic on the socket
  /// will be sent on this {@code Network}, irrespective of any process-wide network binding set by
  /// ConnectivityManager\#bindProcessToNetwork. The socket must not be connected.
  void bindSocket1(jni.JniObject socket) => jniAccessors.callMethodWithArgs(
      reference,
      _id_bindSocket1,
      jni.JniType.voidType,
      [socket.reference]).check();

  static final _id_bindSocket2 = jniAccessors.getMethodIDOf(
      _classRef, "bindSocket", "(Ljava/io/FileDescriptor;)V");

  /// from: public void bindSocket(java.io.FileDescriptor fd)
  ///
  /// Binds the specified FileDescriptor to this {@code Network}. All data traffic on the
  /// socket represented by this file descriptor will be sent on this {@code Network},
  /// irrespective of any process-wide network binding set by
  /// ConnectivityManager\#bindProcessToNetwork. The socket must not be connected.
  void bindSocket2(jni.JniObject fd) => jniAccessors.callMethodWithArgs(
      reference, _id_bindSocket2, jni.JniType.voidType, [fd.reference]).check();

  static final _id_fromNetworkHandle = jniAccessors.getStaticMethodIDOf(
      _classRef, "fromNetworkHandle", "(J)Landroid/net/Network;");

  /// from: static public android.net.Network fromNetworkHandle(long networkHandle)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a Network object given a handle returned from \#getNetworkHandle.
  ///@param networkHandle a handle returned from \#getNetworkHandle.
  ///@return A Network object derived from {@code networkHandle}.
  static Network fromNetworkHandle(int networkHandle) =>
      Network.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_fromNetworkHandle,
          jni.JniType.objectType,
          [networkHandle]).object);

  static final _id_getNetworkHandle =
      jniAccessors.getMethodIDOf(_classRef, "getNetworkHandle", "()J");

  /// from: public long getNetworkHandle()
  ///
  /// Returns a handle representing this {@code Network}, for use with the NDK API.
  int getNetworkHandle() => jniAccessors.callMethodWithArgs(
      reference, _id_getNetworkHandle, jni.JniType.longType, []).long;

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

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
