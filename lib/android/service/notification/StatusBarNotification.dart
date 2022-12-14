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

import "../../app/Notification.dart" as notification_;

import "../../os/UserHandle.dart" as userhandle_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.notification.StatusBarNotification
///
/// Class encapsulating a Notification. Sent by the NotificationManagerService to clients including
/// the status bar and any android.service.notification.NotificationListenerServices.
class StatusBarNotification extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/service/notification/StatusBarNotification");
  StatusBarNotification.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.service.notification.StatusBarNotification> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V");

  /// from: public void <init>(java.lang.String pkg, java.lang.String opPkg, int id, java.lang.String tag, int uid, int initialPid, int score, android.app.Notification notification, android.os.UserHandle user, long postTime)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Non-system apps should not need to create StatusBarNotifications.
  StatusBarNotification(
      jni.JniString pkg,
      jni.JniString opPkg,
      int id,
      jni.JniString tag,
      int uid,
      int initialPid,
      int score,
      notification_.Notification notification,
      userhandle_.UserHandle user,
      int postTime)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          pkg.reference,
          opPkg.reference,
          id,
          tag.reference,
          uid,
          initialPid,
          score,
          notification.reference,
          user.reference,
          postTime
        ]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  StatusBarNotification.ctor1(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [in0.reference]).object);

  static final _id_isGroup =
      jniAccessors.getMethodIDOf(_classRef, "isGroup", "()Z");

  /// from: public boolean isGroup()
  ///
  /// Returns true if this notification is part of a group.
  bool isGroup() => jniAccessors.callMethodWithArgs(
      reference, _id_isGroup, jni.JniType.booleanType, []).boolean;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_clone = jniAccessors.getMethodIDOf(_classRef, "clone",
      "()Landroid/service/notification/StatusBarNotification;");

  /// from: public android.service.notification.StatusBarNotification clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  StatusBarNotification clone() =>
      StatusBarNotification.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_clone, jni.JniType.objectType, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_isOngoing =
      jniAccessors.getMethodIDOf(_classRef, "isOngoing", "()Z");

  /// from: public boolean isOngoing()
  ///
  /// Convenience method to check the notification's flags for
  /// Notification\#FLAG_ONGOING_EVENT.
  bool isOngoing() => jniAccessors.callMethodWithArgs(
      reference, _id_isOngoing, jni.JniType.booleanType, []).boolean;

  static final _id_isClearable =
      jniAccessors.getMethodIDOf(_classRef, "isClearable", "()Z");

  /// from: public boolean isClearable()
  ///
  /// Convenience method to check the notification's flags for
  /// either Notification\#FLAG_ONGOING_EVENT or
  /// Notification\#FLAG_NO_CLEAR.
  bool isClearable() => jniAccessors.callMethodWithArgs(
      reference, _id_isClearable, jni.JniType.booleanType, []).boolean;

  static final _id_getUserId =
      jniAccessors.getMethodIDOf(_classRef, "getUserId", "()I");

  /// from: public int getUserId()
  ///
  /// Returns a userid for whom this notification is intended.
  ///@deprecated Use \#getUser() instead.
  int getUserId() => jniAccessors.callMethodWithArgs(
      reference, _id_getUserId, jni.JniType.intType, []).integer;

  static final _id_getPackageName = jniAccessors.getMethodIDOf(
      _classRef, "getPackageName", "()Ljava/lang/String;");

  /// from: public java.lang.String getPackageName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The package of the app that posted the notification.
  jni.JniString getPackageName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPackageName, jni.JniType.objectType, []).object);

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()I");

  /// from: public int getId()
  ///
  /// The id supplied to android.app.NotificationManager\#notify(int,Notification).
  int getId() => jniAccessors.callMethodWithArgs(
      reference, _id_getId, jni.JniType.intType, []).integer;

  static final _id_getTag =
      jniAccessors.getMethodIDOf(_classRef, "getTag", "()Ljava/lang/String;");

  /// from: public java.lang.String getTag()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The tag supplied to android.app.NotificationManager\#notify(int,Notification),
  /// or null if no tag was specified.
  jni.JniString getTag() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTag, jni.JniType.objectType, []).object);

  static final _id_getNotification = jniAccessors.getMethodIDOf(
      _classRef, "getNotification", "()Landroid/app/Notification;");

  /// from: public android.app.Notification getNotification()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The android.app.Notification supplied to
  /// android.app.NotificationManager\#notify(int,Notification).
  notification_.Notification getNotification() =>
      notification_.Notification.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getNotification, jni.JniType.objectType, []).object);

  static final _id_getUser = jniAccessors.getMethodIDOf(
      _classRef, "getUser", "()Landroid/os/UserHandle;");

  /// from: public android.os.UserHandle getUser()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The android.os.UserHandle for whom this notification is intended.
  userhandle_.UserHandle getUser() =>
      userhandle_.UserHandle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUser, jni.JniType.objectType, []).object);

  static final _id_getPostTime =
      jniAccessors.getMethodIDOf(_classRef, "getPostTime", "()J");

  /// from: public long getPostTime()
  ///
  /// The time (in System\#currentTimeMillis time) the notification was posted,
  /// which may be different than android.app.Notification\#when.
  int getPostTime() => jniAccessors.callMethodWithArgs(
      reference, _id_getPostTime, jni.JniType.longType, []).long;

  static final _id_getKey =
      jniAccessors.getMethodIDOf(_classRef, "getKey", "()Ljava/lang/String;");

  /// from: public java.lang.String getKey()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// A unique instance key for this notification record.
  jni.JniString getKey() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getKey, jni.JniType.objectType, []).object);

  static final _id_getGroupKey = jniAccessors.getMethodIDOf(
      _classRef, "getGroupKey", "()Ljava/lang/String;");

  /// from: public java.lang.String getGroupKey()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// A key that indicates the group with which this message ranks.
  jni.JniString getGroupKey() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getGroupKey, jni.JniType.objectType, []).object);

  static final _id_setOverrideGroupKey = jniAccessors.getMethodIDOf(
      _classRef, "setOverrideGroupKey", "(Ljava/lang/String;)V");

  /// from: public void setOverrideGroupKey(java.lang.String overrideGroupKey)
  ///
  /// Sets the override group key.
  void setOverrideGroupKey(jni.JniString overrideGroupKey) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOverrideGroupKey,
          jni.JniType.voidType, [overrideGroupKey.reference]).check();

  static final _id_getOverrideGroupKey = jniAccessors.getMethodIDOf(
      _classRef, "getOverrideGroupKey", "()Ljava/lang/String;");

  /// from: public java.lang.String getOverrideGroupKey()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the override group key.
  jni.JniString getOverrideGroupKey() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getOverrideGroupKey, jni.JniType.objectType, []).object);
}
