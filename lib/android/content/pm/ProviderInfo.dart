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

/// from: android.content.pm.ProviderInfo
///
/// Holds information about a specific
/// android.content.ContentProvider content provider. This is returned by
/// android.content.pm.PackageManager\#resolveContentProvider(java.lang.String, int) PackageManager.resolveContentProvider().
class ProviderInfo extends componentinfo_.ComponentInfo {
  static final _classRef =
      jniAccessors.getClassOf("android/content/pm/ProviderInfo");
  ProviderInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.pm.ProviderInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int FLAG_SINGLE_USER
  ///
  /// Bit in \#flags: If set, a single instance of the provider will
  /// run for all users on the device.  Set from the
  /// android.R.attr\#singleUser attribute.
  static const FLAG_SINGLE_USER = 1073741824;

  static final _id_authority =
      jniAccessors.getFieldIDOf(_classRef, "authority", "Ljava/lang/String;");

  /// from: public java.lang.String authority
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The name provider is published under content://
  jni.JniString get authority => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_authority, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String authority
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The name provider is published under content://
  set authority(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_authority, value.reference);

  static final _id_flags = jniAccessors.getFieldIDOf(_classRef, "flags", "I");

  /// from: public int flags
  ///
  /// Options that have been set in the provider declaration in the
  /// manifest.
  /// These include: \#FLAG_SINGLE_USER.
  int get flags =>
      jniAccessors.getField(reference, _id_flags, jni.JniType.intType).integer;

  /// from: public int flags
  ///
  /// Options that have been set in the provider declaration in the
  /// manifest.
  /// These include: \#FLAG_SINGLE_USER.
  set flags(int value) => jniEnv.SetIntField(reference, _id_flags, value);

  static final _id_grantUriPermissions =
      jniAccessors.getFieldIDOf(_classRef, "grantUriPermissions", "Z");

  /// from: public boolean grantUriPermissions
  ///
  /// If true, additional permissions to specific Uris in this content
  /// provider can be granted, as per the
  /// android.R.styleable\#AndroidManifestProvider_grantUriPermissions grantUriPermissions attribute.
  bool get grantUriPermissions => jniAccessors
      .getField(reference, _id_grantUriPermissions, jni.JniType.booleanType)
      .boolean;

  /// from: public boolean grantUriPermissions
  ///
  /// If true, additional permissions to specific Uris in this content
  /// provider can be granted, as per the
  /// android.R.styleable\#AndroidManifestProvider_grantUriPermissions grantUriPermissions attribute.
  set grantUriPermissions(bool value) =>
      jniEnv.SetBooleanField(reference, _id_grantUriPermissions, value ? 1 : 0);

  static final _id_initOrder =
      jniAccessors.getFieldIDOf(_classRef, "initOrder", "I");

  /// from: public int initOrder
  ///
  /// Used to control initialization order of single-process providers
  ///  running in the same process.  Higher goes first.
  int get initOrder => jniAccessors
      .getField(reference, _id_initOrder, jni.JniType.intType)
      .integer;

  /// from: public int initOrder
  ///
  /// Used to control initialization order of single-process providers
  ///  running in the same process.  Higher goes first.
  set initOrder(int value) =>
      jniEnv.SetIntField(reference, _id_initOrder, value);

  static final _id_isSyncable =
      jniAccessors.getFieldIDOf(_classRef, "isSyncable", "Z");

  /// from: public boolean isSyncable
  ///
  /// Whether or not this provider is syncable.
  ///@deprecated This flag is now being ignored. The current way to make a provider
  /// syncable is to provide a SyncAdapter service for a given provider/account type.
  bool get isSyncable => jniAccessors
      .getField(reference, _id_isSyncable, jni.JniType.booleanType)
      .boolean;

  /// from: public boolean isSyncable
  ///
  /// Whether or not this provider is syncable.
  ///@deprecated This flag is now being ignored. The current way to make a provider
  /// syncable is to provide a SyncAdapter service for a given provider/account type.
  set isSyncable(bool value) =>
      jniEnv.SetBooleanField(reference, _id_isSyncable, value ? 1 : 0);

  static final _id_multiprocess =
      jniAccessors.getFieldIDOf(_classRef, "multiprocess", "Z");

  /// from: public boolean multiprocess
  ///
  /// If true, this content provider allows multiple instances of itself
  ///  to run in different process.  If false, a single instances is always
  ///  run in \#processName.
  bool get multiprocess => jniAccessors
      .getField(reference, _id_multiprocess, jni.JniType.booleanType)
      .boolean;

  /// from: public boolean multiprocess
  ///
  /// If true, this content provider allows multiple instances of itself
  ///  to run in different process.  If false, a single instances is always
  ///  run in \#processName.
  set multiprocess(bool value) =>
      jniEnv.SetBooleanField(reference, _id_multiprocess, value ? 1 : 0);

  static final _id_pathPermissions = jniAccessors.getFieldIDOf(
      _classRef, "pathPermissions", "[Landroid/content/pm/PathPermission;");

  /// from: public android.content.pm.PathPermission[] pathPermissions
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If non-null, these are path-specific permissions that are allowed for
  /// accessing the provider.  Any permissions listed here will allow a
  /// holding client to access the provider, and the provider will check
  /// the URI it provides when making calls against the patterns here.
  jni.JniObject get pathPermissions => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_pathPermissions, jni.JniType.objectType)
      .object);

  /// from: public android.content.pm.PathPermission[] pathPermissions
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If non-null, these are path-specific permissions that are allowed for
  /// accessing the provider.  Any permissions listed here will allow a
  /// holding client to access the provider, and the provider will check
  /// the URI it provides when making calls against the patterns here.
  set pathPermissions(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_pathPermissions, value.reference);

  static final _id_readPermission = jniAccessors.getFieldIDOf(
      _classRef, "readPermission", "Ljava/lang/String;");

  /// from: public java.lang.String readPermission
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Optional permission required for read-only access this content
  /// provider.
  jni.JniString get readPermission => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_readPermission, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String readPermission
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Optional permission required for read-only access this content
  /// provider.
  set readPermission(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_readPermission, value.reference);

  static final _id_uriPermissionPatterns = jniAccessors.getFieldIDOf(
      _classRef, "uriPermissionPatterns", "[Landroid/os/PatternMatcher;");

  /// from: public android.os.PatternMatcher[] uriPermissionPatterns
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If non-null, these are the patterns that are allowed for granting URI
  /// permissions.  Any URI that does not match one of these patterns will not
  /// allowed to be granted.  If null, all URIs are allowed.  The
  /// PackageManager\#GET_URI_PERMISSION_PATTERNS PackageManager.GET_URI_PERMISSION_PATTERNS flag must be specified for
  /// this field to be filled in.
  jni.JniObject get uriPermissionPatterns => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_uriPermissionPatterns, jni.JniType.objectType)
      .object);

  /// from: public android.os.PatternMatcher[] uriPermissionPatterns
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// If non-null, these are the patterns that are allowed for granting URI
  /// permissions.  Any URI that does not match one of these patterns will not
  /// allowed to be granted.  If null, all URIs are allowed.  The
  /// PackageManager\#GET_URI_PERMISSION_PATTERNS PackageManager.GET_URI_PERMISSION_PATTERNS flag must be specified for
  /// this field to be filled in.
  set uriPermissionPatterns(jni.JniObject value) => jniEnv.SetObjectField(
      reference, _id_uriPermissionPatterns, value.reference);

  static final _id_writePermission = jniAccessors.getFieldIDOf(
      _classRef, "writePermission", "Ljava/lang/String;");

  /// from: public java.lang.String writePermission
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Optional permission required for read/write access this content
  /// provider.
  jni.JniString get writePermission => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_writePermission, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String writePermission
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Optional permission required for read/write access this content
  /// provider.
  set writePermission(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_writePermission, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ProviderInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/pm/ProviderInfo;)V");

  /// from: public void <init>(android.content.pm.ProviderInfo orig)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ProviderInfo.ctor4(ProviderInfo orig)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor4, [orig.reference]).object);

  static final _id_dump = jniAccessors.getMethodIDOf(
      _classRef, "dump", "(Landroid/util/Printer;Ljava/lang/String;)V");

  /// from: public void dump(android.util.Printer pw, java.lang.String prefix)
  void dump(printer_.Printer pw, jni.JniString prefix) =>
      jniAccessors.callMethodWithArgs(reference, _id_dump, jni.JniType.voidType,
          [pw.reference, prefix.reference]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int parcelableFlags)
  void writeToParcel(parcel_.Parcel out, int parcelableFlags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, parcelableFlags]).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
