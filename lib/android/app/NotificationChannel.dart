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

import "../net/Uri.dart" as uri_;

import "../media/AudioAttributes.dart" as audioattributes_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.NotificationChannel
///
/// A representation of settings that apply to a collection of similarly themed notifications.
class NotificationChannel extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/NotificationChannel");
  NotificationChannel.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.NotificationChannel> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final java.lang.String DEFAULT_CHANNEL_ID
  ///
  /// The id of the default channel for an app. This id is reserved by the system. All
  /// notifications posted from apps targeting android.os.Build.VERSION_CODES\#N_MR1 or
  /// earlier without a notification channel specified are posted to this channel.
  static const DEFAULT_CHANNEL_ID = "miscellaneous";

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/CharSequence;I)V");

  /// from: public void <init>(java.lang.String id, java.lang.CharSequence name, int importance)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a notification channel.
  ///@param id The id of the channel. Must be unique per package. The value may be truncated if
  ///           it is too long.
  ///@param name The user visible name of the channel. You can rename this channel when the system
  ///             locale changes by listening for the Intent\#ACTION_LOCALE_CHANGED
  ///             broadcast. The recommended maximum length is 40 characters; the value may be
  ///             truncated if it is too long.
  ///@param importance The importance of the channel. This controls how interruptive notifications
  ///                   posted to this channel are.
  ///
  /// Value is android.app.NotificationManager\#IMPORTANCE_UNSPECIFIED, android.app.NotificationManager\#IMPORTANCE_NONE, android.app.NotificationManager\#IMPORTANCE_MIN, android.app.NotificationManager\#IMPORTANCE_LOW, android.app.NotificationManager\#IMPORTANCE_DEFAULT, or android.app.NotificationManager\#IMPORTANCE_HIGH
  NotificationChannel(jni.JniString id, jni.JniObject name, int importance)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [id.reference, name.reference, importance]).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_setName = jniAccessors.getMethodIDOf(
      _classRef, "setName", "(Ljava/lang/CharSequence;)V");

  /// from: public void setName(java.lang.CharSequence name)
  ///
  /// Sets the user visible name of this channel.
  ///
  /// The recommended maximum length is 40 characters; the value may be truncated if it is too
  /// long.
  void setName(jni.JniObject name) => jniAccessors.callMethodWithArgs(
      reference, _id_setName, jni.JniType.voidType, [name.reference]).check();

  static final _id_setDescription = jniAccessors.getMethodIDOf(
      _classRef, "setDescription", "(Ljava/lang/String;)V");

  /// from: public void setDescription(java.lang.String description)
  ///
  /// Sets the user visible description of this channel.
  ///
  /// The recommended maximum length is 300 characters; the value may be truncated if it is too
  /// long.
  void setDescription(jni.JniString description) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDescription,
          jni.JniType.voidType, [description.reference]).check();

  static final _id_setGroup = jniAccessors.getMethodIDOf(
      _classRef, "setGroup", "(Ljava/lang/String;)V");

  /// from: public void setGroup(java.lang.String groupId)
  ///
  /// Sets what group this channel belongs to.
  ///
  /// Group information is only used for presentation, not for behavior.
  ///
  /// Only modifiable before the channel is submitted to
  /// NotificationManager\#createNotificationChannel(NotificationChannel), unless the
  /// channel is not currently part of a group.
  ///@param groupId the id of a group created by
  /// NotificationManager\#createNotificationChannelGroup(NotificationChannelGroup).
  void setGroup(jni.JniString groupId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setGroup,
      jni.JniType.voidType,
      [groupId.reference]).check();

  static final _id_setShowBadge =
      jniAccessors.getMethodIDOf(_classRef, "setShowBadge", "(Z)V");

  /// from: public void setShowBadge(boolean showBadge)
  ///
  /// Sets whether notifications posted to this channel can appear as application icon badges
  /// in a Launcher.
  ///
  /// Only modifiable before the channel is submitted to
  /// NotificationManager\#createNotificationChannel(NotificationChannel).
  ///@param showBadge true if badges should be allowed to be shown.
  void setShowBadge(bool showBadge) => jniAccessors.callMethodWithArgs(
      reference, _id_setShowBadge, jni.JniType.voidType, [showBadge]).check();

  static final _id_setSound = jniAccessors.getMethodIDOf(_classRef, "setSound",
      "(Landroid/net/Uri;Landroid/media/AudioAttributes;)V");

  /// from: public void setSound(android.net.Uri sound, android.media.AudioAttributes audioAttributes)
  ///
  /// Sets the sound that should be played for notifications posted to this channel and its
  /// audio attributes. Notification channels with an \#getImportance() importance of at
  /// least NotificationManager\#IMPORTANCE_DEFAULT should have a sound.
  ///
  /// Only modifiable before the channel is submitted to
  /// NotificationManager\#createNotificationChannel(NotificationChannel).
  void setSound(
          uri_.Uri sound, audioattributes_.AudioAttributes audioAttributes) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setSound,
          jni.JniType.voidType,
          [sound.reference, audioAttributes.reference]).check();

  static final _id_enableLights =
      jniAccessors.getMethodIDOf(_classRef, "enableLights", "(Z)V");

  /// from: public void enableLights(boolean lights)
  ///
  /// Sets whether notifications posted to this channel should display notification lights,
  /// on devices that support that feature.
  ///
  /// Only modifiable before the channel is submitted to
  /// NotificationManager\#createNotificationChannel(NotificationChannel).
  void enableLights(bool lights) => jniAccessors.callMethodWithArgs(
      reference, _id_enableLights, jni.JniType.voidType, [lights]).check();

  static final _id_setLightColor =
      jniAccessors.getMethodIDOf(_classRef, "setLightColor", "(I)V");

  /// from: public void setLightColor(int argb)
  ///
  /// Sets the notification light color for notifications posted to this channel, if lights are
  /// \#enableLights(boolean) enabled on this channel and the device supports that feature.
  ///
  /// Only modifiable before the channel is submitted to
  /// NotificationManager\#createNotificationChannel(NotificationChannel).
  void setLightColor(int argb) => jniAccessors.callMethodWithArgs(
      reference, _id_setLightColor, jni.JniType.voidType, [argb]).check();

  static final _id_enableVibration =
      jniAccessors.getMethodIDOf(_classRef, "enableVibration", "(Z)V");

  /// from: public void enableVibration(boolean vibration)
  ///
  /// Sets whether notification posted to this channel should vibrate. The vibration pattern can
  /// be set with \#setVibrationPattern(long[]).
  ///
  /// Only modifiable before the channel is submitted to
  /// NotificationManager\#createNotificationChannel(NotificationChannel).
  void enableVibration(bool vibration) => jniAccessors.callMethodWithArgs(
      reference,
      _id_enableVibration,
      jni.JniType.voidType,
      [vibration]).check();

  static final _id_setVibrationPattern =
      jniAccessors.getMethodIDOf(_classRef, "setVibrationPattern", "([J)V");

  /// from: public void setVibrationPattern(long[] vibrationPattern)
  ///
  /// Sets the vibration pattern for notifications posted to this channel. If the provided
  /// pattern is valid (non-null, non-empty), will \#enableVibration(boolean) enable
  /// vibration} as well. Otherwise, vibration will be disabled.
  ///
  /// Only modifiable before the channel is submitted to
  /// NotificationManager\#createNotificationChannel(NotificationChannel).
  void setVibrationPattern(jni.JniObject vibrationPattern) =>
      jniAccessors.callMethodWithArgs(reference, _id_setVibrationPattern,
          jni.JniType.voidType, [vibrationPattern.reference]).check();

  static final _id_setImportance =
      jniAccessors.getMethodIDOf(_classRef, "setImportance", "(I)V");

  /// from: public void setImportance(int importance)
  ///
  /// Sets the level of interruption of this notification channel.
  ///
  /// Only modifiable before the channel is submitted to
  /// NotificationManager\#createNotificationChannel(NotificationChannel).
  ///@param importance the amount the user should be interrupted by
  ///            notifications from this channel.
  ///
  /// Value is android.app.NotificationManager\#IMPORTANCE_UNSPECIFIED, android.app.NotificationManager\#IMPORTANCE_NONE, android.app.NotificationManager\#IMPORTANCE_MIN, android.app.NotificationManager\#IMPORTANCE_LOW, android.app.NotificationManager\#IMPORTANCE_DEFAULT, or android.app.NotificationManager\#IMPORTANCE_HIGH
  void setImportance(int importance) => jniAccessors.callMethodWithArgs(
      reference, _id_setImportance, jni.JniType.voidType, [importance]).check();

  static final _id_setBypassDnd =
      jniAccessors.getMethodIDOf(_classRef, "setBypassDnd", "(Z)V");

  /// from: public void setBypassDnd(boolean bypassDnd)
  ///
  /// Sets whether or not notifications posted to this channel can interrupt the user in
  /// android.app.NotificationManager.Policy\#INTERRUPTION_FILTER_PRIORITY mode.
  ///
  /// Only modifiable by the system and notification ranker.
  void setBypassDnd(bool bypassDnd) => jniAccessors.callMethodWithArgs(
      reference, _id_setBypassDnd, jni.JniType.voidType, [bypassDnd]).check();

  static final _id_setLockscreenVisibility =
      jniAccessors.getMethodIDOf(_classRef, "setLockscreenVisibility", "(I)V");

  /// from: public void setLockscreenVisibility(int lockscreenVisibility)
  ///
  /// Sets whether notifications posted to this channel appear on the lockscreen or not, and if so,
  /// whether they appear in a redacted form. See e.g. Notification\#VISIBILITY_SECRET.
  ///
  /// Only modifiable by the system and notification ranker.
  void setLockscreenVisibility(int lockscreenVisibility) =>
      jniAccessors.callMethodWithArgs(reference, _id_setLockscreenVisibility,
          jni.JniType.voidType, [lockscreenVisibility]).check();

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()Ljava/lang/String;");

  /// from: public java.lang.String getId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the id of this channel.
  jni.JniString getId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getId, jni.JniType.objectType, []).object);

  static final _id_getName = jniAccessors.getMethodIDOf(
      _classRef, "getName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the user visible name of this channel.
  jni.JniObject getName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_getDescription = jniAccessors.getMethodIDOf(
      _classRef, "getDescription", "()Ljava/lang/String;");

  /// from: public java.lang.String getDescription()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the user visible description of this channel.
  jni.JniString getDescription() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDescription, jni.JniType.objectType, []).object);

  static final _id_getImportance =
      jniAccessors.getMethodIDOf(_classRef, "getImportance", "()I");

  /// from: public int getImportance()
  ///
  /// Returns the user specified importance e.g.&nbsp;NotificationManager\#IMPORTANCE_LOW for
  /// notifications posted to this channel. Note: This value might be >
  /// NotificationManager\#IMPORTANCE_NONE, but notifications posted to this channel will
  /// not be shown to the user if the parent NotificationChannelGroup or app is blocked.
  /// See NotificationChannelGroup\#isBlocked() and
  /// NotificationManager\#areNotificationsEnabled().
  int getImportance() => jniAccessors.callMethodWithArgs(
      reference, _id_getImportance, jni.JniType.intType, []).integer;

  static final _id_canBypassDnd =
      jniAccessors.getMethodIDOf(_classRef, "canBypassDnd", "()Z");

  /// from: public boolean canBypassDnd()
  ///
  /// Whether or not notifications posted to this channel can bypass the Do Not Disturb
  /// NotificationManager\#INTERRUPTION_FILTER_PRIORITY mode.
  bool canBypassDnd() => jniAccessors.callMethodWithArgs(
      reference, _id_canBypassDnd, jni.JniType.booleanType, []).boolean;

  static final _id_getSound =
      jniAccessors.getMethodIDOf(_classRef, "getSound", "()Landroid/net/Uri;");

  /// from: public android.net.Uri getSound()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the notification sound for this channel.
  uri_.Uri getSound() => uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getSound, jni.JniType.objectType, []).object);

  static final _id_getAudioAttributes = jniAccessors.getMethodIDOf(
      _classRef, "getAudioAttributes", "()Landroid/media/AudioAttributes;");

  /// from: public android.media.AudioAttributes getAudioAttributes()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the audio attributes for sound played by notifications posted to this channel.
  audioattributes_.AudioAttributes getAudioAttributes() =>
      audioattributes_.AudioAttributes.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getAudioAttributes,
          jni.JniType.objectType, []).object);

  static final _id_shouldShowLights =
      jniAccessors.getMethodIDOf(_classRef, "shouldShowLights", "()Z");

  /// from: public boolean shouldShowLights()
  ///
  /// Returns whether notifications posted to this channel trigger notification lights.
  bool shouldShowLights() => jniAccessors.callMethodWithArgs(
      reference, _id_shouldShowLights, jni.JniType.booleanType, []).boolean;

  static final _id_getLightColor =
      jniAccessors.getMethodIDOf(_classRef, "getLightColor", "()I");

  /// from: public int getLightColor()
  ///
  /// Returns the notification light color for notifications posted to this channel. Irrelevant
  /// unless \#shouldShowLights().
  int getLightColor() => jniAccessors.callMethodWithArgs(
      reference, _id_getLightColor, jni.JniType.intType, []).integer;

  static final _id_shouldVibrate =
      jniAccessors.getMethodIDOf(_classRef, "shouldVibrate", "()Z");

  /// from: public boolean shouldVibrate()
  ///
  /// Returns whether notifications posted to this channel always vibrate.
  bool shouldVibrate() => jniAccessors.callMethodWithArgs(
      reference, _id_shouldVibrate, jni.JniType.booleanType, []).boolean;

  static final _id_getVibrationPattern =
      jniAccessors.getMethodIDOf(_classRef, "getVibrationPattern", "()[J");

  /// from: public long[] getVibrationPattern()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the vibration pattern for notifications posted to this channel. Will be ignored if
  /// vibration is not enabled (\#shouldVibrate().
  jni.JniObject getVibrationPattern() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getVibrationPattern, jni.JniType.objectType, []).object);

  static final _id_getLockscreenVisibility =
      jniAccessors.getMethodIDOf(_classRef, "getLockscreenVisibility", "()I");

  /// from: public int getLockscreenVisibility()
  ///
  /// Returns whether or not notifications posted to this channel are shown on the lockscreen in
  /// full or redacted form.
  int getLockscreenVisibility() => jniAccessors.callMethodWithArgs(
      reference, _id_getLockscreenVisibility, jni.JniType.intType, []).integer;

  static final _id_canShowBadge =
      jniAccessors.getMethodIDOf(_classRef, "canShowBadge", "()Z");

  /// from: public boolean canShowBadge()
  ///
  /// Returns whether notifications posted to this channel can appear as badges in a Launcher
  /// application.
  ///
  /// Note that badging may be disabled for other reasons.
  bool canShowBadge() => jniAccessors.callMethodWithArgs(
      reference, _id_canShowBadge, jni.JniType.booleanType, []).boolean;

  static final _id_getGroup =
      jniAccessors.getMethodIDOf(_classRef, "getGroup", "()Ljava/lang/String;");

  /// from: public java.lang.String getGroup()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns what group this channel belongs to.
  ///
  /// This is used only for visually grouping channels in the UI.
  jni.JniString getGroup() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getGroup, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

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
}
