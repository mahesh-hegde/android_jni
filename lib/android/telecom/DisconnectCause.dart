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

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telecom.DisconnectCause
///
/// Describes the cause of a disconnected call. This always includes a code describing the generic
/// cause of the disconnect. Optionally, it may include a label and/or description to display to the
/// user. It is the responsibility of the ConnectionService to provide localized versions of
/// the label and description. It also may contain a reason for the disconnect, which is intended for
/// logging and not for display to the user.
class DisconnectCause extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telecom/DisconnectCause");
  DisconnectCause.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ANSWERED_ELSEWHERE
  ///
  /// Disconnected because the user did not locally answer the incoming call, but it was answered
  /// on another device where the call was ringing.
  static const ANSWERED_ELSEWHERE = 11;

  /// from: static public final int BUSY
  ///
  /// Disconnected because the other party was busy.
  static const BUSY = 7;

  /// from: static public final int CALL_PULLED
  ///
  /// Disconnected because the call was pulled from the current device to another device.
  static const CALL_PULLED = 12;

  /// from: static public final int CANCELED
  ///
  /// Disconnected because it has been canceled.
  static const CANCELED = 4;

  /// from: static public final int CONNECTION_MANAGER_NOT_SUPPORTED
  ///
  /// Disconnected because the connection manager did not support the call. The call will be tried
  /// again without a connection manager. See PhoneAccount\#CAPABILITY_CONNECTION_MANAGER.
  static const CONNECTION_MANAGER_NOT_SUPPORTED = 10;

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telecom.DisconnectCause> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int ERROR
  ///
  /// Disconnected because there was an error, such as a problem with the network.
  static const ERROR = 1;

  /// from: static public final int LOCAL
  ///
  /// Disconnected because of a local user-initiated action, such as hanging up.
  static const LOCAL = 2;

  /// from: static public final int MISSED
  ///
  /// Disconnected because there was no response to an incoming call.
  static const MISSED = 5;

  /// from: static public final int OTHER
  ///
  /// Disconnected for reason not described by other disconnect codes.
  static const OTHER = 9;

  /// from: static public final int REJECTED
  ///
  /// Disconnected because the user rejected an incoming call.
  static const REJECTED = 6;

  /// from: static public final int REMOTE
  ///
  /// Disconnected because of a remote user-initiated action, such as the other party hanging up
  /// up.
  static const REMOTE = 3;

  /// from: static public final int RESTRICTED
  ///
  /// Disconnected because of a restriction on placing the call, such as dialing in airplane
  /// mode.
  static const RESTRICTED = 8;

  /// from: static public final int UNKNOWN
  ///
  /// Disconnected because of an unknown or unspecified reason.
  static const UNKNOWN = 0;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int code)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new DisconnectCause.
  ///@param code The code for the disconnect cause.
  DisconnectCause(int code)
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [code]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(ILjava/lang/String;)V");

  /// from: public void <init>(int code, java.lang.String reason)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new DisconnectCause.
  ///@param code The code for the disconnect cause.
  ///@param reason The reason for the disconnect.
  DisconnectCause.ctor1(int code, jni.JniString reason)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [code, reason.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V");

  /// from: public void <init>(int code, java.lang.CharSequence label, java.lang.CharSequence description, java.lang.String reason)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new DisconnectCause.
  ///@param code The code for the disconnect cause.
  ///@param label The localized label to show to the user to explain the disconnect.
  ///@param description The localized description to show to the user to explain the disconnect.
  ///@param reason The reason for the disconnect.
  DisconnectCause.ctor2(int code, jni.JniObject label,
      jni.JniObject description, jni.JniString reason)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, [
          code,
          label.reference,
          description.reference,
          reason.reference
        ]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V");

  /// from: public void <init>(int code, java.lang.CharSequence label, java.lang.CharSequence description, java.lang.String reason, int toneToPlay)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new DisconnectCause.
  ///@param code The code for the disconnect cause.
  ///@param label The localized label to show to the user to explain the disconnect.
  ///@param description The localized description to show to the user to explain the disconnect.
  ///@param reason The reason for the disconnect.
  ///@param toneToPlay The tone to play on disconnect, as defined in ToneGenerator.
  DisconnectCause.ctor3(int code, jni.JniObject label,
      jni.JniObject description, jni.JniString reason, int toneToPlay)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          code,
          label.reference,
          description.reference,
          reason.reference,
          toneToPlay
        ]).object);

  static final _id_getCode =
      jniAccessors.getMethodIDOf(_classRef, "getCode", "()I");

  /// from: public int getCode()
  ///
  /// Returns the code for the reason for this disconnect.
  ///@return The disconnect code.
  int getCode() => jniAccessors.callMethodWithArgs(
      reference, _id_getCode, jni.JniType.intType, []).integer;

  static final _id_getLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a short label which explains the reason for the disconnect cause and is for display
  /// in the user interface. If not null, it is expected that the In-Call UI should display this
  /// text where it would normally display the call state ("Dialing", "Disconnected") and is
  /// therefore expected to be relatively small. The ConnectionService is responsible for
  /// providing and localizing this label. If there is no string provided, returns null.
  ///@return The disconnect label.
  jni.JniObject getLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLabel, jni.JniType.objectType, []).object);

  static final _id_getDescription = jniAccessors.getMethodIDOf(
      _classRef, "getDescription", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getDescription()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a description which explains the reason for the disconnect cause and is for display
  /// in the user interface. This optional text is generally a longer and more descriptive version
  /// of \#getLabel, however it can exist even if \#getLabel is empty. The In-Call UI
  /// should display this relatively prominently; the traditional implementation displays this as
  /// an alert dialog. The ConnectionService is responsible for providing and localizing
  /// this message. If there is no string provided, returns null.
  ///@return The disconnect description.
  jni.JniObject getDescription() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDescription, jni.JniType.objectType, []).object);

  static final _id_getReason = jniAccessors.getMethodIDOf(
      _classRef, "getReason", "()Ljava/lang/String;");

  /// from: public java.lang.String getReason()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an explanation of the reason for the disconnect. This is not intended for display to
  /// the user and is used mainly for logging.
  ///@return The disconnect reason.
  jni.JniString getReason() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getReason, jni.JniType.objectType, []).object);

  static final _id_getTone =
      jniAccessors.getMethodIDOf(_classRef, "getTone", "()I");

  /// from: public int getTone()
  ///
  /// Returns the tone to play when disconnected.
  ///@return the tone as defined in ToneGenerator to play when disconnected.
  int getTone() => jniAccessors.callMethodWithArgs(
      reference, _id_getTone, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel destination, int flags)
  void writeToParcel(parcel_.Parcel destination, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [destination.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
