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

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.carrier.MessagePdu
///
/// A parcelable list of PDUs representing contents of a possibly multi-part SMS.
class MessagePdu extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/carrier/MessagePdu");
  MessagePdu.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.service.carrier.MessagePdu> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a MessagePdu from a Parcel.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/List;)V");

  /// from: public void <init>(java.util.List<byte[]> pduList)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a MessagePdu with the list of message PDUs.
  ///@param pduList the list of message PDUs
  ///
  /// This value must never be {@code null}.
  MessagePdu(jni.JniObject pduList)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [pduList.reference]).object);

  static final _id_getPdus =
      jniAccessors.getMethodIDOf(_classRef, "getPdus", "()Ljava/util/List;");

  /// from: public java.util.List<byte[]> getPdus()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the contents of a possibly multi-part SMS.
  ///@return the list of PDUs
  ///
  /// This value will never be {@code null}.
  jni.JniObject getPdus() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPdus, jni.JniType.objectType, []).object);

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
