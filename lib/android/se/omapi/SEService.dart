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

import "../../content/Context.dart" as context_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.se.omapi.SEService
///
/// The SEService realises the communication to available Secure Elements on the
/// device. This is the entry point of this API. It is used to connect to the
/// infrastructure and get access to a list of Secure Element Readers.
///@see <a href="http://simalliance.org">SIMalliance Open Mobile API  v3.0</a>
class SEService extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/se/omapi/SEService");
  SEService.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService\$OnConnectedListener;)V");

  /// from: public void <init>(android.content.Context context, java.util.concurrent.Executor executor, android.se.omapi.SEService.OnConnectedListener listener)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Establishes a new connection that can be used to connect to all the
  /// Secure Elements available in the system. The connection process can be
  /// quite long, so it happens in an asynchronous way. It is usable only if
  /// the specified listener is called or if isConnected() returns
  /// <code>true</code>. <br>
  /// The call-back object passed as a parameter will have its
  /// onConnected() method called when the connection actually happen.
  ///@param context the context of the calling application. Cannot be
  ///            <code>null</code>.
  /// This value must never be {@code null}.
  ///@param listener a OnConnectedListener object.
  /// This value must never be {@code null}.
  ///@param executor an Executor which will be used when invoking the callback.
  ///
  /// This value must never be {@code null}.
  SEService(context_.Context context, jni.JniObject executor,
      SEService_OnConnectedListener listener)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          context.reference,
          executor.reference,
          listener.reference
        ]).object);

  static final _id_isConnected =
      jniAccessors.getMethodIDOf(_classRef, "isConnected", "()Z");

  /// from: public boolean isConnected()
  ///
  /// Tells whether or not the service is connected.
  ///@return <code>true</code> if the service is connected.
  bool isConnected() => jniAccessors.callMethodWithArgs(
      reference, _id_isConnected, jni.JniType.booleanType, []).boolean;

  static final _id_getReaders = jniAccessors.getMethodIDOf(
      _classRef, "getReaders", "()[Landroid/se/omapi/Reader;");

  /// from: public android.se.omapi.Reader[] getReaders()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an array of available Secure Element readers.
  /// There must be no duplicated objects in the returned list.
  /// All available readers shall be listed even if no card is inserted.
  ///@return An array of Readers. If there are no readers the returned array
  /// is of length 0.
  ///
  /// This value will never be {@code null}.
  jni.JniObject getReaders() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getReaders, jni.JniType.objectType, []).object);

  static final _id_shutdown =
      jniAccessors.getMethodIDOf(_classRef, "shutdown", "()V");

  /// from: public void shutdown()
  ///
  /// Releases all Secure Elements resources allocated by this SEService
  /// (including any binding to an underlying service).
  /// As a result isConnected() will return false after shutdown() was called.
  /// After this method call, the SEService object is not connected.
  /// This method should be called when connection to the Secure Element is not needed
  /// or in the termination method of the calling application
  /// (or part of this application) which is bound to this SEService.
  void shutdown() => jniAccessors.callMethodWithArgs(
      reference, _id_shutdown, jni.JniType.voidType, []).check();

  static final _id_getVersion = jniAccessors.getMethodIDOf(
      _classRef, "getVersion", "()Ljava/lang/String;");

  /// from: public java.lang.String getVersion()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the version of the OpenMobile API specification this
  /// implementation is based on.
  ///@return String containing the OpenMobile API version (e.g. "3.0").
  ///
  /// This value will never be {@code null}.
  jni.JniString getVersion() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getVersion, jni.JniType.objectType, []).object);
}

/// from: android.se.omapi.SEService$OnConnectedListener
///
/// Interface to send call-backs to the application when the service is connected.
class SEService_OnConnectedListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/se/omapi/SEService\$OnConnectedListener");
  SEService_OnConnectedListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onConnected =
      jniAccessors.getMethodIDOf(_classRef, "onConnected", "()V");

  /// from: public abstract void onConnected()
  ///
  /// Called by the framework when the service is connected.
  void onConnected() => jniAccessors.callMethodWithArgs(
      reference, _id_onConnected, jni.JniType.voidType, []).check();
}
