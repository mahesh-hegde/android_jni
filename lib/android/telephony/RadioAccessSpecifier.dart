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

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.RadioAccessSpecifier
///
/// Describes a particular radio access network to be scanned.
///
/// The scan can be performed on either bands or channels for a specific radio access network type.
class RadioAccessSpecifier extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/RadioAccessSpecifier");
  RadioAccessSpecifier.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telephony.RadioAccessSpecifier> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I[I[I)V");

  /// from: public void <init>(int ran, int[] bands, int[] channels)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new RadioAccessSpecifier with radio network, bands and channels
  ///
  /// The user must specify the radio network type, and at least specify either of frequency
  /// bands or channels.
  ///@param ran The type of the radio access network
  ///@param bands the frequency bands to be scanned
  ///@param channels the frequency bands to be scanned
  RadioAccessSpecifier(int ran, jni.JniObject bands, jni.JniObject channels)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [ran, bands.reference, channels.reference]).object);

  static final _id_getRadioAccessNetwork =
      jniAccessors.getMethodIDOf(_classRef, "getRadioAccessNetwork", "()I");

  /// from: public int getRadioAccessNetwork()
  ///
  /// Returns the radio access network that needs to be scanned.
  ///
  /// The returned value is define in AccessNetworkConstants.AccessNetworkType;
  int getRadioAccessNetwork() => jniAccessors.callMethodWithArgs(
      reference, _id_getRadioAccessNetwork, jni.JniType.intType, []).integer;

  static final _id_getBands =
      jniAccessors.getMethodIDOf(_classRef, "getBands", "()[I");

  /// from: public int[] getBands()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the frequency bands that need to be scanned.
  ///
  /// The returned value is defined in either of AccessNetworkConstants.GeranBand,
  /// AccessNetworkConstants.UtranBand and AccessNetworkConstants.EutranBand, and
  /// it depends on the returned value of \#getRadioAccessNetwork().
  jni.JniObject getBands() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getBands, jni.JniType.objectType, []).object);

  static final _id_getChannels =
      jniAccessors.getMethodIDOf(_classRef, "getChannels", "()[I");

  /// from: public int[] getChannels()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the frequency channels that need to be scanned.
  jni.JniObject getChannels() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getChannels, jni.JniType.objectType, []).object);

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

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;
}
