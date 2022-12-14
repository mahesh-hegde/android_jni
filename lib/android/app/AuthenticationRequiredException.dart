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

import "PendingIntent.dart" as pendingintent_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.AuthenticationRequiredException
///
/// Specialization of SecurityException that is thrown when authentication is needed from the
/// end user before viewing the content.
///
/// This exception is only appropriate where there is a concrete action the user can take to
/// authorize and make forward progress, such as confirming or entering authentication credentials,
/// or granting access via other means.
/// <p class="note">
/// Note: legacy code that receives this exception may treat it as a general
/// SecurityException, and thus there is no guarantee that the action contained will be
/// invoked by the user.
///
///
class AuthenticationRequiredException extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/AuthenticationRequiredException");
  AuthenticationRequiredException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.AuthenticationRequiredException> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/Throwable;Landroid/app/PendingIntent;)V");

  /// from: public void <init>(java.lang.Throwable cause, android.app.PendingIntent userAction)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an instance ready to be thrown.
  ///@param cause original cause with details designed for engineering
  ///            audiences.
  ///@param userAction primary action that will initiate the recovery. This
  ///            must launch an activity that is expected to set
  ///            Activity\#setResult(int) before finishing to
  ///            communicate the final status of the recovery. For example,
  ///            apps that observe Activity\#RESULT_OK may choose to
  ///            immediately retry their operation.
  AuthenticationRequiredException(
      jni.JniObject cause, pendingintent_.PendingIntent userAction)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [cause.reference, userAction.reference]).object);

  static final _id_getUserAction = jniAccessors.getMethodIDOf(
      _classRef, "getUserAction", "()Landroid/app/PendingIntent;");

  /// from: public android.app.PendingIntent getUserAction()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return primary action that will initiate the authorization.
  pendingintent_.PendingIntent getUserAction() =>
      pendingintent_.PendingIntent.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUserAction, jni.JniType.objectType, []).object);

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
}
