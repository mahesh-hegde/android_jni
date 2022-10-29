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

import "../ComponentName.dart" as componentname_;

import "../../os/UserHandle.dart" as userhandle_;

import "../../graphics/drawable/Drawable.dart" as drawable_;

import "ApplicationInfo.dart" as applicationinfo_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.pm.LauncherActivityInfo
///
/// A representation of an activity that can belong to this user or a managed
/// profile associated with this user. It can be used to query the label, icon
/// and badged icon for the activity.
class LauncherActivityInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/pm/LauncherActivityInfo");
  LauncherActivityInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getComponentName = jniAccessors.getMethodIDOf(
      _classRef, "getComponentName", "()Landroid/content/ComponentName;");

  /// from: public android.content.ComponentName getComponentName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the component name of this activity.
  ///@return ComponentName of the activity
  componentname_.ComponentName getComponentName() =>
      componentname_.ComponentName.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getComponentName, jni.JniType.objectType, []).object);

  static final _id_getUser = jniAccessors.getMethodIDOf(
      _classRef, "getUser", "()Landroid/os/UserHandle;");

  /// from: public android.os.UserHandle getUser()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the user handle of the user profile that this activity belongs to. In order to
  /// persist the identity of the profile, do not store the UserHandle. Instead retrieve its
  /// serial number from UserManager. You can convert the serial number back to a UserHandle
  /// for later use.
  ///@see UserManager\#getSerialNumberForUser(UserHandle)
  ///@see UserManager\#getUserForSerialNumber(long)
  ///@return The UserHandle of the profile.
  userhandle_.UserHandle getUser() =>
      userhandle_.UserHandle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUser, jni.JniType.objectType, []).object);

  static final _id_getLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the label for the activity.
  ///@return The label for the activity.
  jni.JniObject getLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLabel, jni.JniType.objectType, []).object);

  static final _id_getIcon = jniAccessors.getMethodIDOf(
      _classRef, "getIcon", "(I)Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getIcon(int density)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the icon for this activity, without any badging for the profile.
  ///@param density The preferred density of the icon, zero for default density. Use
  /// density DPI values from DisplayMetrics.
  ///@see \#getBadgedIcon(int)
  ///@see DisplayMetrics
  ///@return The drawable associated with the activity.
  drawable_.Drawable getIcon(int density) =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getIcon, jni.JniType.objectType, [density]).object);

  static final _id_getApplicationInfo = jniAccessors.getMethodIDOf(_classRef,
      "getApplicationInfo", "()Landroid/content/pm/ApplicationInfo;");

  /// from: public android.content.pm.ApplicationInfo getApplicationInfo()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the application info for the appliction this activity belongs to.
  ///@return
  applicationinfo_.ApplicationInfo getApplicationInfo() =>
      applicationinfo_.ApplicationInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getApplicationInfo,
          jni.JniType.objectType, []).object);

  static final _id_getFirstInstallTime =
      jniAccessors.getMethodIDOf(_classRef, "getFirstInstallTime", "()J");

  /// from: public long getFirstInstallTime()
  ///
  /// Returns the time at which the package was first installed.
  ///@return The time of installation of the package, in milliseconds.
  int getFirstInstallTime() => jniAccessors.callMethodWithArgs(
      reference, _id_getFirstInstallTime, jni.JniType.longType, []).long;

  static final _id_getName =
      jniAccessors.getMethodIDOf(_classRef, "getName", "()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the name for the acitivty from  android:name in the manifest.
  ///@return the name from android:name for the acitivity.
  jni.JniString getName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_getBadgedIcon = jniAccessors.getMethodIDOf(
      _classRef, "getBadgedIcon", "(I)Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getBadgedIcon(int density)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the activity icon with badging appropriate for the profile.
  ///@param density Optional density for the icon, or 0 to use the default density. Use
  /// DisplayMetrics for DPI values.
  ///@see DisplayMetrics
  ///@return A badged icon for the activity.
  drawable_.Drawable getBadgedIcon(int density) =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getBadgedIcon, jni.JniType.objectType, [density]).object);
}
