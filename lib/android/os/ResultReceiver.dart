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

import "Parcelable.dart" as parcelable_;

import "Handler.dart" as handler_;

import "Bundle.dart" as bundle_;

import "Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.ResultReceiver
///
/// Generic interface for receiving a callback result from someone.  Use this
/// by creating a subclass and implement \#onReceiveResult, which you can
/// then pass to others and send through IPC, and receive results they
/// supply with \#send.
///
/// Note: the implementation underneath is just a simple wrapper around
/// a Binder that is used to perform the communication.  This means
/// semantically you should treat it as such: this class does not impact process
/// lifecycle management (you must be using some higher-level component to tell
/// the system that your process needs to continue running), the connection will
/// break if your process goes away for any reason, etc.
///
class ResultReceiver extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/ResultReceiver");
  ResultReceiver.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.os.ResultReceiver> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/os/Handler;)V");

  /// from: public void <init>(android.os.Handler handler)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new ResultReceive to receive results.  Your
  /// \#onReceiveResult method will be called from the thread running
  /// <var>handler</var> if given, or from an arbitrary thread if null.
  ResultReceiver(handler_.Handler handler)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [handler.reference]).object);

  static final _id_send =
      jniAccessors.getMethodIDOf(_classRef, "send", "(ILandroid/os/Bundle;)V");

  /// from: public void send(int resultCode, android.os.Bundle resultData)
  ///
  /// Deliver a result to this receiver.  Will call \#onReceiveResult,
  /// always asynchronously if the receiver has supplied a Handler in which
  /// to dispatch the result.
  ///@param resultCode Arbitrary result code to deliver, as defined by you.
  ///@param resultData Any additional data provided by you.
  void send(int resultCode, bundle_.Bundle resultData) =>
      jniAccessors.callMethodWithArgs(reference, _id_send, jni.JniType.voidType,
          [resultCode, resultData.reference]).check();

  static final _id_onReceiveResult = jniAccessors.getMethodIDOf(
      _classRef, "onReceiveResult", "(ILandroid/os/Bundle;)V");

  /// from: protected void onReceiveResult(int resultCode, android.os.Bundle resultData)
  ///
  /// Override to receive results delivered to this object.
  ///@param resultCode Arbitrary result code delivered by the sender, as
  /// defined by the sender.
  ///@param resultData Any additional data provided by the sender.
  void onReceiveResult(int resultCode, bundle_.Bundle resultData) =>
      jniAccessors.callMethodWithArgs(reference, _id_onReceiveResult,
          jni.JniType.voidType, [resultCode, resultData.reference]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();
}
