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

/// from: android.app.admin.NetworkEvent
///
/// An abstract class that represents a network event.
class NetworkEvent extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/admin/NetworkEvent");
  NetworkEvent.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.admin.NetworkEvent> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getPackageName = jniAccessors.getMethodIDOf(
      _classRef, "getPackageName", "()Ljava/lang/String;");

  /// from: public java.lang.String getPackageName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the package name of the UID that performed the query, as returned by
  /// PackageManager\#getNameForUid.
  jni.JniString getPackageName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPackageName, jni.JniType.objectType, []).object);

  static final _id_getTimestamp =
      jniAccessors.getMethodIDOf(_classRef, "getTimestamp", "()J");

  /// from: public long getTimestamp()
  ///
  /// Returns the timestamp of the event being reported in milliseconds, the difference between
  /// the time the event was reported and midnight, January 1, 1970 UTC.
  int getTimestamp() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimestamp, jni.JniType.longType, []).long;

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()J");

  /// from: public long getId()
  ///
  /// Returns the id of the event, where the id monotonically increases for each event. The id
  /// is reset when the device reboots, and when network logging is enabled.
  int getId() => jniAccessors
      .callMethodWithArgs(reference, _id_getId, jni.JniType.longType, []).long;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public abstract void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();
}
