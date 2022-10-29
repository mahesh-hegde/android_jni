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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.LocalSocketAddress
///
/// A UNIX-domain (AF_LOCAL) socket address. For use with
/// android.net.LocalSocket and android.net.LocalServerSocket.
///
/// On the Android system, these names refer to names in the Linux
/// abstract (non-filesystem) UNIX domain namespace.
class LocalSocketAddress extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/LocalSocketAddress");
  LocalSocketAddress.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;Landroid/net/LocalSocketAddress\$Namespace;)V");

  /// from: public void <init>(java.lang.String name, android.net.LocalSocketAddress.Namespace namespace)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an instance with a given name.
  ///@param name non-null name
  ///@param namespace namespace the name should be created in.
  LocalSocketAddress(jni.JniString name, LocalSocketAddress_Namespace namespace)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [name.reference, namespace.reference]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an instance with a given name in the Namespace\#ABSTRACT
  /// namespace
  ///@param name non-null name
  LocalSocketAddress.ctor1(jni.JniString name)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [name.reference]).object);

  static final _id_getName =
      jniAccessors.getMethodIDOf(_classRef, "getName", "()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the string name of this address
  ///@return string name
  jni.JniString getName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_getNamespace = jniAccessors.getMethodIDOf(_classRef,
      "getNamespace", "()Landroid/net/LocalSocketAddress\$Namespace;");

  /// from: public android.net.LocalSocketAddress.Namespace getNamespace()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the namespace used by this address.
  ///@return non-null a namespace
  LocalSocketAddress_Namespace getNamespace() =>
      LocalSocketAddress_Namespace.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getNamespace, jni.JniType.objectType, []).object);
}

/// from: android.net.LocalSocketAddress$Namespace
///
/// The namespace that this address exists in. See also
/// include/cutils/sockets.h ANDROID_SOCKET_NAMESPACE_*
class LocalSocketAddress_Namespace extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/LocalSocketAddress\$Namespace");
  LocalSocketAddress_Namespace.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/net/LocalSocketAddress\$Namespace;");

  /// from: static public android.net.LocalSocketAddress.Namespace[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "valueOf",
      "(Ljava/lang/String;)Landroid/net/LocalSocketAddress\$Namespace;");

  /// from: static public android.net.LocalSocketAddress.Namespace valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static LocalSocketAddress_Namespace valueOf(jni.JniString name) =>
      LocalSocketAddress_Namespace.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_valueOf,
              jni.JniType.objectType, [name.reference]).object);
}
