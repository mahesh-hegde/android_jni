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

import "../accounts/Account.dart" as account_;

import "../os/Bundle.dart" as bundle_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.PeriodicSync
///
/// Value type that contains information about a periodic sync.
class PeriodicSync extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/PeriodicSync");
  PeriodicSync.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.PeriodicSync> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_account = jniAccessors.getFieldIDOf(
      _classRef, "account", "Landroid/accounts/Account;");

  /// from: public final android.accounts.Account account
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The account to be synced. Can be null.
  account_.Account get account => account_.Account.fromRef(jniAccessors
      .getField(reference, _id_account, jni.JniType.objectType)
      .object);

  static final _id_authority =
      jniAccessors.getFieldIDOf(_classRef, "authority", "Ljava/lang/String;");

  /// from: public final java.lang.String authority
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The authority of the sync. Can be null.
  jni.JniString get authority => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_authority, jni.JniType.objectType)
      .object);

  static final _id_extras =
      jniAccessors.getFieldIDOf(_classRef, "extras", "Landroid/os/Bundle;");

  /// from: public final android.os.Bundle extras
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Any extras that parameters that are to be passed to the sync adapter.
  bundle_.Bundle get extras => bundle_.Bundle.fromRef(jniAccessors
      .getField(reference, _id_extras, jni.JniType.objectType)
      .object);

  static final _id_period = jniAccessors.getFieldIDOf(_classRef, "period", "J");

  /// from: public final long period
  ///
  /// How frequently the sync should be scheduled, in seconds. Kept around for API purposes.
  int get period =>
      jniAccessors.getField(reference, _id_period, jni.JniType.longType).long;

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V");

  /// from: public void <init>(android.accounts.Account account, java.lang.String authority, android.os.Bundle extras, long periodInSeconds)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new PeriodicSync, copying the Bundle. This constructor is no longer used.
  PeriodicSync(account_.Account account, jni.JniString authority,
      bundle_.Bundle extras, int periodInSeconds)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          account.reference,
          authority.reference,
          extras.reference,
          periodInSeconds
        ]).object);

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
