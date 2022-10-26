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

import "../net/Uri.dart" as uri_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.ContentProviderResult
///
/// Contains the result of the application of a ContentProviderOperation. It is guaranteed
/// to have exactly one of \#uri or \#count set.
class ContentProviderResult extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/ContentProviderResult");
  ContentProviderResult.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.ContentProviderResult> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_count =
      jniAccessors.getFieldIDOf(_classRef, "count", "Ljava/lang/Integer;");

  /// from: public final java.lang.Integer count
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject get count => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_count, jni.JniType.objectType)
      .object);

  static final _id_uri =
      jniAccessors.getFieldIDOf(_classRef, "uri", "Landroid/net/Uri;");

  /// from: public final android.net.Uri uri
  /// The returned object must be deleted after use, by calling the `delete` method.
  uri_.Uri get uri => uri_.Uri.fromRef(
      jniAccessors.getField(reference, _id_uri, jni.JniType.objectType).object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/net/Uri;)V");

  /// from: public void <init>(android.net.Uri uri)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ContentProviderResult(uri_.Uri uri)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [uri.reference]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int count)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ContentProviderResult.ctor1(int count)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [count]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ContentProviderResult.ctor2(parcel_.Parcel source)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [source.reference]).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
