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

import "../../os/Parcelable.dart" as parcelable_;

import "InputConnection.dart" as inputconnection_;

import "../../os/IBinder.dart" as ibinder_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.inputmethod.InputBinding
///
/// Information given to an InputMethod about a client connecting
/// to it.
class InputBinding extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/inputmethod/InputBinding");
  InputBinding.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.inputmethod.InputBinding> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Used to make this class parcelable.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V");

  /// from: public void <init>(android.view.inputmethod.InputConnection conn, android.os.IBinder connToken, int uid, int pid)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor.
  ///@param conn The interface for communicating back with the application.
  ///@param connToken A remoteable token for communicating across processes.
  ///@param uid The user id of the client of this binding.
  ///@param pid The process id of where the binding came from.
  InputBinding(inputconnection_.InputConnection conn,
      ibinder_.IBinder connToken, int uid, int pid)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [conn.reference, connToken.reference, uid, pid]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V");

  /// from: public void <init>(android.view.inputmethod.InputConnection conn, android.view.inputmethod.InputBinding binding)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor from an existing InputBinding taking a new local input
  /// connection interface.
  ///@param conn The new connection interface.
  ///@param binding Existing binding to copy.
  InputBinding.ctor1(
      inputconnection_.InputConnection conn, InputBinding binding)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [conn.reference, binding.reference]).object);

  static final _id_getConnection = jniAccessors.getMethodIDOf(_classRef,
      "getConnection", "()Landroid/view/inputmethod/InputConnection;");

  /// from: public android.view.inputmethod.InputConnection getConnection()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the connection for interacting back with the application.
  inputconnection_.InputConnection getConnection() =>
      inputconnection_.InputConnection.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getConnection, jni.JniType.objectType, []).object);

  static final _id_getConnectionToken = jniAccessors.getMethodIDOf(
      _classRef, "getConnectionToken", "()Landroid/os/IBinder;");

  /// from: public android.os.IBinder getConnectionToken()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the token for the connection back to the application.  You can
  /// not use this directly, it must be converted to a InputConnection
  /// for you.
  ibinder_.IBinder getConnectionToken() =>
      ibinder_.IBinder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getConnectionToken, jni.JniType.objectType, []).object);

  static final _id_getUid =
      jniAccessors.getMethodIDOf(_classRef, "getUid", "()I");

  /// from: public int getUid()
  ///
  /// Return the user id of the client associated with this binding.
  int getUid() => jniAccessors.callMethodWithArgs(
      reference, _id_getUid, jni.JniType.intType, []).integer;

  static final _id_getPid =
      jniAccessors.getMethodIDOf(_classRef, "getPid", "()I");

  /// from: public int getPid()
  ///
  /// Return the process id where this binding came from.
  int getPid() => jniAccessors.callMethodWithArgs(
      reference, _id_getPid, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Used to package this object into a Parcel.
  ///@param dest The Parcel to be written.
  ///@param flags The flags used for parceling.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;
}