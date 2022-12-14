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

import "ComponentInfo.dart" as componentinfo_;

import "../../os/Parcelable.dart" as parcelable_;

import "../../util/Printer.dart" as printer_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.pm.ServiceInfo
///
/// Information you can retrieve about a particular application
/// service. This corresponds to information collected from the
/// AndroidManifest.xml's &lt;service&gt; tags.
class ServiceInfo extends componentinfo_.ComponentInfo {
  static final _classRef =
      jniAccessors.getClassOf("android/content/pm/ServiceInfo");
  ServiceInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.pm.ServiceInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int FLAG_EXTERNAL_SERVICE
  ///
  /// Bit in \#flags: If set, the service can be bound and run in the
  /// calling application's package, rather than the package in which it is
  /// declared.  Set from android.R.attr\#externalService attribute.
  static const FLAG_EXTERNAL_SERVICE = 4;

  /// from: static public final int FLAG_ISOLATED_PROCESS
  ///
  /// Bit in \#flags: If set, the service will run in its own
  /// isolated process.  Set from the
  /// android.R.attr\#isolatedProcess attribute.
  static const FLAG_ISOLATED_PROCESS = 2;

  /// from: static public final int FLAG_SINGLE_USER
  ///
  /// Bit in \#flags: If set, a single instance of the service will
  /// run for all users on the device.  Set from the
  /// android.R.attr\#singleUser attribute.
  static const FLAG_SINGLE_USER = 1073741824;

  /// from: static public final int FLAG_STOP_WITH_TASK
  ///
  /// Bit in \#flags: If set, the service will automatically be
  /// stopped by the system if the user removes a task that is rooted
  /// in one of the application's activities.  Set from the
  /// android.R.attr\#stopWithTask attribute.
  static const FLAG_STOP_WITH_TASK = 1;

  static final _id_flags = jniAccessors.getFieldIDOf(_classRef, "flags", "I");

  /// from: public int flags
  ///
  /// Options that have been set in the service declaration in the
  /// manifest.
  /// These include:
  /// \#FLAG_STOP_WITH_TASK, \#FLAG_ISOLATED_PROCESS,
  /// \#FLAG_SINGLE_USER.
  int get flags =>
      jniAccessors.getField(reference, _id_flags, jni.JniType.intType).integer;

  /// from: public int flags
  ///
  /// Options that have been set in the service declaration in the
  /// manifest.
  /// These include:
  /// \#FLAG_STOP_WITH_TASK, \#FLAG_ISOLATED_PROCESS,
  /// \#FLAG_SINGLE_USER.
  set flags(int value) => jniEnv.SetIntField(reference, _id_flags, value);

  static final _id_permission =
      jniAccessors.getFieldIDOf(_classRef, "permission", "Ljava/lang/String;");

  /// from: public java.lang.String permission
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Optional name of a permission required to be able to access this
  /// Service.  From the "permission" attribute.
  jni.JniString get permission => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_permission, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String permission
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Optional name of a permission required to be able to access this
  /// Service.  From the "permission" attribute.
  set permission(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_permission, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ServiceInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/pm/ServiceInfo;)V");

  /// from: public void <init>(android.content.pm.ServiceInfo orig)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ServiceInfo.ctor4(ServiceInfo orig)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor4, [orig.reference]).object);

  static final _id_dump = jniAccessors.getMethodIDOf(
      _classRef, "dump", "(Landroid/util/Printer;Ljava/lang/String;)V");

  /// from: public void dump(android.util.Printer pw, java.lang.String prefix)
  void dump(printer_.Printer pw, jni.JniString prefix) =>
      jniAccessors.callMethodWithArgs(reference, _id_dump, jni.JniType.voidType,
          [pw.reference, prefix.reference]).check();

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
