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

/// from: android.content.pm.SigningInfo
///
/// Information pertaining to the signing certificates used to sign a package.
class SigningInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/pm/SigningInfo");
  SigningInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.pm.SigningInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SigningInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/pm/SigningInfo;)V");

  /// from: public void <init>(android.content.pm.SigningInfo orig)
  /// The returned object must be deleted after use, by calling the `delete` method.
  SigningInfo.ctor1(SigningInfo orig)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [orig.reference]).object);

  static final _id_hasMultipleSigners =
      jniAccessors.getMethodIDOf(_classRef, "hasMultipleSigners", "()Z");

  /// from: public boolean hasMultipleSigners()
  ///
  /// Although relatively uncommon, packages may be signed by more than one signer, in which case
  /// their identity is viewed as being the set of all signers, not just any one.
  bool hasMultipleSigners() => jniAccessors.callMethodWithArgs(
      reference, _id_hasMultipleSigners, jni.JniType.booleanType, []).boolean;

  static final _id_hasPastSigningCertificates = jniAccessors.getMethodIDOf(
      _classRef, "hasPastSigningCertificates", "()Z");

  /// from: public boolean hasPastSigningCertificates()
  ///
  /// APK Signature Scheme v3 enables packages to provide a proof-of-rotation record that the
  /// platform verifies, and uses, to allow the use of new signing certificates.  This is only
  /// available to packages that are not signed by multiple signers.  In the event of a change to a
  /// new signing certificate, the package's past signing certificates are presented as well.  Any
  /// check of a package's signing certificate should also include a search through its entire
  /// signing history, since it could change to a new signing certificate at any time.
  bool hasPastSigningCertificates() => jniAccessors.callMethodWithArgs(
      reference,
      _id_hasPastSigningCertificates,
      jni.JniType.booleanType, []).boolean;

  static final _id_getSigningCertificateHistory = jniAccessors.getMethodIDOf(
      _classRef,
      "getSigningCertificateHistory",
      "()[Landroid/content/pm/Signature;");

  /// from: public android.content.pm.Signature[] getSigningCertificateHistory()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the signing certificates this package has proven it is authorized to use. This
  /// includes both the signing certificate associated with the signer of the package and the past
  /// signing certificates it included as its proof of signing certificate rotation.  This method
  /// is the preferred replacement for the {@code GET_SIGNATURES} flag used with PackageManager\#getPackageInfo(String, int).  When determining if a package is signed by a
  /// desired certificate, the returned array should be checked to determine if it is one of the
  /// entries.
  ///
  /// <note>
  ///     This method returns null if the package is signed by multiple signing certificates, as
  ///     opposed to being signed by one current signer and also providing the history of past
  ///     signing certificates.  \#hasMultipleSigners() may be used to determine if this
  ///     package is signed by multiple signers.  Packages which are signed by multiple signers
  ///     cannot change their signing certificates and their {@code Signature} array should be
  ///     checked to make sure that every entry matches the looked-for signing certificates.
  /// </note>
  jni.JniObject getSigningCertificateHistory() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getSigningCertificateHistory, jni.JniType.objectType, []).object);

  static final _id_getApkContentsSigners = jniAccessors.getMethodIDOf(
      _classRef, "getApkContentsSigners", "()[Landroid/content/pm/Signature;");

  /// from: public android.content.pm.Signature[] getApkContentsSigners()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the signing certificates used to sign the APK contents of this application.  Not
  /// including any past signing certificates the package proved it is authorized to use.
  /// <note>
  ///     This method should not be used unless \#hasMultipleSigners() returns true,
  ///     indicating that \#getSigningCertificateHistory() cannot be used, otherwise \#getSigningCertificateHistory() should be preferred.
  /// </note>
  jni.JniObject getApkContentsSigners() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getApkContentsSigners, jni.JniType.objectType, []).object);

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
