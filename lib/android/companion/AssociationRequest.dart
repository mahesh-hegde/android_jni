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

import "DeviceFilter.dart" as devicefilter_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.companion.AssociationRequest
///
/// A request for the user to select a companion device to associate with.
///
/// You can optionally set Builder\#addDeviceFilter filters for which devices to show to the
/// user to select from.
/// The exact type and fields of the filter you can set depend on the
/// medium type. See Builder's static factory methods for specific protocols that are
/// supported.
///
/// You can also set Builder\#setSingleDevice single device to request a popup with single
/// device to be shown instead of a list to choose from
class AssociationRequest extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/companion/AssociationRequest");
  AssociationRequest.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.companion.AssociationRequest> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AssociationRequest(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [in0.reference]).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

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
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;
}

/// from: android.companion.AssociationRequest$Builder
///
/// A builder for AssociationRequest
class AssociationRequest_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/companion/AssociationRequest\$Builder");
  AssociationRequest_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AssociationRequest_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setSingleDevice = jniAccessors.getMethodIDOf(_classRef,
      "setSingleDevice", "(Z)Landroid/companion/AssociationRequest\$Builder;");

  /// from: public android.companion.AssociationRequest.Builder setSingleDevice(boolean singleDevice)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param singleDevice if true, scanning for a device will stop as soon as at least one
  ///                     fitting device is found
  ///@return This value will never be {@code null}.
  AssociationRequest_Builder setSingleDevice(bool singleDevice) =>
      AssociationRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setSingleDevice,
          jni.JniType.objectType,
          [singleDevice]).object);

  static final _id_addDeviceFilter = jniAccessors.getMethodIDOf(
      _classRef,
      "addDeviceFilter",
      "(Landroid/companion/DeviceFilter;)Landroid/companion/AssociationRequest\$Builder;");

  /// from: public android.companion.AssociationRequest.Builder addDeviceFilter(android.companion.DeviceFilter<?> deviceFilter)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param deviceFilter if set, only devices matching the given filter will be shown to the
  ///                     user
  ///
  /// This value may be {@code null}.
  ///@return This value will never be {@code null}.
  AssociationRequest_Builder addDeviceFilter(
          devicefilter_.DeviceFilter deviceFilter) =>
      AssociationRequest_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addDeviceFilter,
          jni.JniType.objectType,
          [deviceFilter.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/companion/AssociationRequest;");

  /// from: public android.companion.AssociationRequest build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @inheritDoc
  AssociationRequest build() =>
      AssociationRequest.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);

  static final _id_markUsed =
      jniAccessors.getMethodIDOf(_classRef, "markUsed", "()V");

  /// from: protected void markUsed()
  void markUsed() => jniAccessors.callMethodWithArgs(
      reference, _id_markUsed, jni.JniType.voidType, []).check();

  static final _id_checkNotUsed =
      jniAccessors.getMethodIDOf(_classRef, "checkNotUsed", "()V");

  /// from: protected void checkNotUsed()
  void checkNotUsed() => jniAccessors.callMethodWithArgs(
      reference, _id_checkNotUsed, jni.JniType.voidType, []).check();
}
