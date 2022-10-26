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

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.res.ObbInfo
///
/// Basic information about a Opaque Binary Blob (OBB) that reflects the info
/// from the footer on the OBB file. This information may be manipulated by a
/// developer with the <code>obbtool</code> program in the Android SDK.
class ObbInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/res/ObbInfo");
  ObbInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.res.ObbInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int OBB_OVERLAY
  ///
  /// Flag noting that this OBB is an overlay patch for a base OBB.
  static const OBB_OVERLAY = 1;

  static final _id_filename =
      jniAccessors.getFieldIDOf(_classRef, "filename", "Ljava/lang/String;");

  /// from: public java.lang.String filename
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The canonical filename of the OBB.
  jni.JniString get filename => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_filename, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String filename
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The canonical filename of the OBB.
  set filename(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_filename, value.reference);

  static final _id_flags = jniAccessors.getFieldIDOf(_classRef, "flags", "I");

  /// from: public int flags
  ///
  /// The flags relating to the OBB.
  int get flags =>
      jniAccessors.getField(reference, _id_flags, jni.JniType.intType).integer;

  /// from: public int flags
  ///
  /// The flags relating to the OBB.
  set flags(int value) => jniEnv.SetIntField(reference, _id_flags, value);

  static final _id_packageName =
      jniAccessors.getFieldIDOf(_classRef, "packageName", "Ljava/lang/String;");

  /// from: public java.lang.String packageName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The name of the package to which the OBB file belongs.
  jni.JniString get packageName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_packageName, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String packageName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The name of the package to which the OBB file belongs.
  set packageName(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_packageName, value.reference);

  static final _id_version =
      jniAccessors.getFieldIDOf(_classRef, "version", "I");

  /// from: public int version
  ///
  /// The version of the package to which the OBB file belongs.
  int get version => jniAccessors
      .getField(reference, _id_version, jni.JniType.intType)
      .integer;

  /// from: public int version
  ///
  /// The version of the package to which the OBB file belongs.
  set version(int value) => jniEnv.SetIntField(reference, _id_version, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ObbInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int parcelableFlags)
  void writeToParcel(parcel_.Parcel dest, int parcelableFlags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, parcelableFlags]).check();
}