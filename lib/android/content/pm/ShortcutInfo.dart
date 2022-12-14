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

import "../ComponentName.dart" as componentname_;

import "../Intent.dart" as intent_;

import "../../os/PersistableBundle.dart" as persistablebundle_;

import "../../os/UserHandle.dart" as userhandle_;

import "../../os/Parcel.dart" as parcel_;

import "../Context.dart" as context_;

import "../../graphics/drawable/Icon.dart" as icon_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.pm.ShortcutInfo
///
/// Represents a shortcut that can be published via ShortcutManager.
///@see ShortcutManager
class ShortcutInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/pm/ShortcutInfo");
  ShortcutInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.pm.ShortcutInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int DISABLED_REASON_APP_CHANGED
  ///
  /// Shortcut has been disabled due to changes to the publisher app. (e.g. a manifest shortcut
  /// no longer exists.)
  static const DISABLED_REASON_APP_CHANGED = 2;

  /// from: static public final int DISABLED_REASON_BACKUP_NOT_SUPPORTED
  ///
  /// Shortcut has not been restored because the publisher app does not support backup and restore.
  static const DISABLED_REASON_BACKUP_NOT_SUPPORTED = 101;

  /// from: static public final int DISABLED_REASON_BY_APP
  ///
  /// Shortcut has been disabled by the publisher app with the
  /// ShortcutManager\#disableShortcuts(List) API.
  static const DISABLED_REASON_BY_APP = 1;

  /// from: static public final int DISABLED_REASON_NOT_DISABLED
  ///
  /// Shortcut is not disabled.
  static const DISABLED_REASON_NOT_DISABLED = 0;

  /// from: static public final int DISABLED_REASON_OTHER_RESTORE_ISSUE
  ///
  /// Shortcut has not been restored for unknown reason.
  static const DISABLED_REASON_OTHER_RESTORE_ISSUE = 103;

  /// from: static public final int DISABLED_REASON_SIGNATURE_MISMATCH
  ///
  /// Shortcut has not been restored because the publisher app's signature has changed.
  static const DISABLED_REASON_SIGNATURE_MISMATCH = 102;

  /// from: static public final int DISABLED_REASON_UNKNOWN
  ///
  /// Shortcut is disabled for an unknown reason.
  static const DISABLED_REASON_UNKNOWN = 3;

  /// from: static public final int DISABLED_REASON_VERSION_LOWER
  ///
  /// Shortcut has been restored from the previous device, but the publisher app on the current
  /// device is of a lower version. The shortcut will not be usable until the app is upgraded to
  /// the same version or higher.
  static const DISABLED_REASON_VERSION_LOWER = 100;

  /// from: static public final java.lang.String SHORTCUT_CATEGORY_CONVERSATION
  ///
  /// Shortcut category for messaging related actions, such as chat.
  static const SHORTCUT_CATEGORY_CONVERSATION = "android.shortcut.conversation";

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()Ljava/lang/String;");

  /// from: public java.lang.String getId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the ID of a shortcut.
  ///
  /// Shortcut IDs are unique within each publisher app and must be stable across
  /// devices so that shortcuts will still be valid when restored on a different device.
  /// See ShortcutManager for details.
  ///@return This value will never be {@code null}.
  jni.JniString getId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getId, jni.JniType.objectType, []).object);

  static final _id_getPackage = jniAccessors.getMethodIDOf(
      _classRef, "getPackage", "()Ljava/lang/String;");

  /// from: public java.lang.String getPackage()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the package name of the publisher app.
  ///@return This value will never be {@code null}.
  jni.JniString getPackage() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPackage, jni.JniType.objectType, []).object);

  static final _id_getActivity = jniAccessors.getMethodIDOf(
      _classRef, "getActivity", "()Landroid/content/ComponentName;");

  /// from: public android.content.ComponentName getActivity()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the target activity.
  ///
  /// This has nothing to do with the activity that this shortcut will launch.
  /// Launcher apps should show the launcher icon for the returned activity alongside
  /// this shortcut.
  ///@see Builder\#setActivity
  ///@return This value may be {@code null}.
  componentname_.ComponentName getActivity() =>
      componentname_.ComponentName.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getActivity, jni.JniType.objectType, []).object);

  static final _id_getShortLabel = jniAccessors.getMethodIDOf(
      _classRef, "getShortLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getShortLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the short description of a shortcut.
  ///@see Builder\#setShortLabel(CharSequence)
  ///@return This value may be {@code null}.
  jni.JniObject getShortLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getShortLabel, jni.JniType.objectType, []).object);

  static final _id_getLongLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLongLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLongLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the long description of a shortcut.
  ///@see Builder\#setLongLabel(CharSequence)
  ///@return This value may be {@code null}.
  jni.JniObject getLongLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLongLabel, jni.JniType.objectType, []).object);

  static final _id_getDisabledMessage = jniAccessors.getMethodIDOf(
      _classRef, "getDisabledMessage", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getDisabledMessage()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the message that should be shown when the user attempts to start a shortcut
  /// that is disabled.
  ///@see Builder\#setDisabledMessage(CharSequence)
  ///@return This value may be {@code null}.
  jni.JniObject getDisabledMessage() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getDisabledMessage, jni.JniType.objectType, []).object);

  static final _id_getDisabledReason =
      jniAccessors.getMethodIDOf(_classRef, "getDisabledReason", "()I");

  /// from: public int getDisabledReason()
  ///
  /// Returns why a shortcut has been disabled.
  ///@return Value is android.content.pm.ShortcutInfo\#DISABLED_REASON_NOT_DISABLED, android.content.pm.ShortcutInfo\#DISABLED_REASON_BY_APP, android.content.pm.ShortcutInfo\#DISABLED_REASON_APP_CHANGED, android.content.pm.ShortcutInfo\#DISABLED_REASON_UNKNOWN, android.content.pm.ShortcutInfo\#DISABLED_REASON_VERSION_LOWER, android.content.pm.ShortcutInfo\#DISABLED_REASON_BACKUP_NOT_SUPPORTED, android.content.pm.ShortcutInfo\#DISABLED_REASON_SIGNATURE_MISMATCH, or android.content.pm.ShortcutInfo\#DISABLED_REASON_OTHER_RESTORE_ISSUE
  int getDisabledReason() => jniAccessors.callMethodWithArgs(
      reference, _id_getDisabledReason, jni.JniType.intType, []).integer;

  static final _id_getCategories = jniAccessors.getMethodIDOf(
      _classRef, "getCategories", "()Ljava/util/Set;");

  /// from: public java.util.Set<java.lang.String> getCategories()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the shortcut's categories.
  ///@see Builder\#setCategories(Set)
  ///@return This value may be {@code null}.
  jni.JniObject getCategories() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCategories, jni.JniType.objectType, []).object);

  static final _id_getIntent = jniAccessors.getMethodIDOf(
      _classRef, "getIntent", "()Landroid/content/Intent;");

  /// from: public android.content.Intent getIntent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the intent that is executed when the user selects this shortcut.
  /// If setIntents() was used, then return the last intent in the array.
  ///
  /// Launcher apps __cannot__ see the intent.  If a ShortcutInfo is
  /// obtained via LauncherApps, then this method will always return null.
  /// Launchers can only start a shortcut intent with LauncherApps\#startShortcut.
  ///@see Builder\#setIntent(Intent)
  intent_.Intent getIntent() =>
      intent_.Intent.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getIntent, jni.JniType.objectType, []).object);

  static final _id_getIntents = jniAccessors.getMethodIDOf(
      _classRef, "getIntents", "()[Landroid/content/Intent;");

  /// from: public android.content.Intent[] getIntents()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the intent set with Builder\#setIntents(Intent[]).
  ///
  /// Launcher apps __cannot__ see the intents.  If a ShortcutInfo is
  /// obtained via LauncherApps, then this method will always return null.
  /// Launchers can only start a shortcut intent with LauncherApps\#startShortcut.
  ///@see Builder\#setIntents(Intent[])
  jni.JniObject getIntents() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getIntents, jni.JniType.objectType, []).object);

  static final _id_getRank =
      jniAccessors.getMethodIDOf(_classRef, "getRank", "()I");

  /// from: public int getRank()
  ///
  /// "Rank" of a shortcut, which is a non-negative, sequential value that's unique for each
  /// \#getActivity for each of the two types of shortcuts (static and dynamic).
  ///
  /// Because static shortcuts and dynamic shortcuts have overlapping ranks,
  /// when a launcher app shows shortcuts for an activity, it should first show
  /// the static shortcuts, followed by the dynamic shortcuts.  Within each of those categories,
  /// shortcuts should be sorted by rank in ascending order.
  ///
  /// _Floating shortcuts_, or shortcuts that are neither static nor dynamic, will all
  /// have rank 0, because they aren't sorted.
  ///
  /// See the ShortcutManager's class javadoc for details.
  ///@see Builder\#setRank(int)
  int getRank() => jniAccessors.callMethodWithArgs(
      reference, _id_getRank, jni.JniType.intType, []).integer;

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/PersistableBundle;");

  /// from: public android.os.PersistableBundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Extras that the app can set for any purpose.
  ///@see Builder\#setExtras(PersistableBundle)
  ///@return This value may be {@code null}.
  persistablebundle_.PersistableBundle getExtras() =>
      persistablebundle_.PersistableBundle.fromRef(jniAccessors
          .callMethodWithArgs(
              reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_getUserHandle = jniAccessors.getMethodIDOf(
      _classRef, "getUserHandle", "()Landroid/os/UserHandle;");

  /// from: public android.os.UserHandle getUserHandle()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// UserHandle on which the publisher created this shortcut.
  userhandle_.UserHandle getUserHandle() =>
      userhandle_.UserHandle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUserHandle, jni.JniType.objectType, []).object);

  static final _id_getLastChangedTimestamp =
      jniAccessors.getMethodIDOf(_classRef, "getLastChangedTimestamp", "()J");

  /// from: public long getLastChangedTimestamp()
  ///
  /// Last time when any of the fields was updated.
  int getLastChangedTimestamp() => jniAccessors.callMethodWithArgs(
      reference, _id_getLastChangedTimestamp, jni.JniType.longType, []).long;

  static final _id_isDynamic =
      jniAccessors.getMethodIDOf(_classRef, "isDynamic", "()Z");

  /// from: public boolean isDynamic()
  ///
  /// Return whether a shortcut is dynamic.
  bool isDynamic() => jniAccessors.callMethodWithArgs(
      reference, _id_isDynamic, jni.JniType.booleanType, []).boolean;

  static final _id_isPinned =
      jniAccessors.getMethodIDOf(_classRef, "isPinned", "()Z");

  /// from: public boolean isPinned()
  ///
  /// Return whether a shortcut is pinned.
  bool isPinned() => jniAccessors.callMethodWithArgs(
      reference, _id_isPinned, jni.JniType.booleanType, []).boolean;

  static final _id_isDeclaredInManifest =
      jniAccessors.getMethodIDOf(_classRef, "isDeclaredInManifest", "()Z");

  /// from: public boolean isDeclaredInManifest()
  ///
  /// Return whether a shortcut is static; that is, whether a shortcut is
  /// published from AndroidManifest.xml.  If {@code true}, the shortcut is
  /// also \#isImmutable().
  ///
  /// When an app is upgraded and a shortcut is no longer published from AndroidManifest.xml,
  /// this will be set to {@code false}.  If the shortcut is not pinned, then it'll disappear.
  /// However, if it's pinned, it will still be visible, \#isEnabled() will be
  /// {@code false} and \#isImmutable() will be {@code true}.
  bool isDeclaredInManifest() => jniAccessors.callMethodWithArgs(
      reference, _id_isDeclaredInManifest, jni.JniType.booleanType, []).boolean;

  static final _id_isImmutable =
      jniAccessors.getMethodIDOf(_classRef, "isImmutable", "()Z");

  /// from: public boolean isImmutable()
  ///
  /// Return if a shortcut is immutable, in which case it cannot be modified with any of
  /// ShortcutManager APIs.
  ///
  /// All static shortcuts are immutable.  When a static shortcut is pinned and is then
  /// disabled because it doesn't appear in AndroidManifest.xml for a newer version of the
  /// app, \#isDeclaredInManifest() returns {@code false}, but the shortcut
  /// is still immutable.
  ///
  /// All shortcuts originally published via the ShortcutManager APIs
  /// are all mutable.
  bool isImmutable() => jniAccessors.callMethodWithArgs(
      reference, _id_isImmutable, jni.JniType.booleanType, []).boolean;

  static final _id_isEnabled =
      jniAccessors.getMethodIDOf(_classRef, "isEnabled", "()Z");

  /// from: public boolean isEnabled()
  ///
  /// Returns {@code false} if a shortcut is disabled with
  /// ShortcutManager\#disableShortcuts.
  bool isEnabled() => jniAccessors.callMethodWithArgs(
      reference, _id_isEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_hasKeyFieldsOnly =
      jniAccessors.getMethodIDOf(_classRef, "hasKeyFieldsOnly", "()Z");

  /// from: public boolean hasKeyFieldsOnly()
  ///
  /// Return whether a shortcut only contains "key" information only or not.  If true, only the
  /// following fields are available.
  /// <ul>
  ///     <li>\#getId()
  ///     <li>\#getPackage()
  ///     <li>\#getActivity()
  ///     <li>\#getLastChangedTimestamp()
  ///     <li>\#isDynamic()
  ///     <li>\#isPinned()
  ///     <li>\#isDeclaredInManifest()
  ///     <li>\#isImmutable()
  ///     <li>\#isEnabled()
  ///     <li>\#getUserHandle()
  /// </ul>
  ///
  /// For performance reasons, shortcuts passed to
  /// LauncherApps.Callback\#onShortcutsChanged(String, List, UserHandle) as well as those
  /// returned from LauncherApps\#getShortcuts(ShortcutQuery, UserHandle)
  /// while using the ShortcutQuery\#FLAG_GET_KEY_FIELDS_ONLY option contain only key
  /// information.
  bool hasKeyFieldsOnly() => jniAccessors.callMethodWithArgs(
      reference, _id_hasKeyFieldsOnly, jni.JniType.booleanType, []).boolean;

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

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a string representation, intended for logging.  Some fields will be retracted.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.content.pm.ShortcutInfo$Builder
///
/// Builder class for ShortcutInfo objects.
///@see ShortcutManager
class ShortcutInfo_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/pm/ShortcutInfo\$Builder");
  ShortcutInfo_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;Ljava/lang/String;)V");

  /// from: public void <init>(android.content.Context context, java.lang.String id)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor.
  ///@param context Client context.
  ///@param id ID of the shortcut.
  ShortcutInfo_Builder(context_.Context context, jni.JniString id)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference, id.reference]).object);

  static final _id_setActivity = jniAccessors.getMethodIDOf(
      _classRef,
      "setActivity",
      "(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo\$Builder;");

  /// from: public android.content.pm.ShortcutInfo.Builder setActivity(android.content.ComponentName activity)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the target activity.  A shortcut will be shown along with this activity's icon
  /// on the launcher.
  ///
  /// When selecting a target activity, keep the following in mind:
  /// <ul>
  /// <li>All dynamic shortcuts must have a target activity.  When a shortcut with no target
  /// activity is published using
  /// ShortcutManager\#addDynamicShortcuts(List) or
  /// ShortcutManager\#setDynamicShortcuts(List),
  /// the first main activity defined in the app's <code>AndroidManifest.xml</code>
  /// file is used.
  ///
  /// <li>Only "main" activities&mdash;ones that define the Intent\#ACTION_MAIN
  /// and Intent\#CATEGORY_LAUNCHER intent filters&mdash;can be target
  /// activities.
  ///
  /// <li>By default, the first main activity defined in the app's manifest is
  /// the target activity.
  ///
  /// <li>A target activity must belong to the publisher app.
  /// </ul>
  ///@see ShortcutInfo\#getActivity()
  ///@param activity This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  ShortcutInfo_Builder setActivity(componentname_.ComponentName activity) =>
      ShortcutInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setActivity,
          jni.JniType.objectType,
          [activity.reference]).object);

  static final _id_setIcon = jniAccessors.getMethodIDOf(_classRef, "setIcon",
      "(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo\$Builder;");

  /// from: public android.content.pm.ShortcutInfo.Builder setIcon(android.graphics.drawable.Icon icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets an icon of a shortcut.
  ///
  /// Icons are not available on ShortcutInfo instances
  /// returned by ShortcutManager or LauncherApps.  The default launcher
  /// app can use LauncherApps\#getShortcutIconDrawable(ShortcutInfo, int)
  /// or LauncherApps\#getShortcutBadgedIconDrawable(ShortcutInfo, int) to fetch
  /// shortcut icons.
  ///
  /// Tints set with Icon\#setTint or Icon\#setTintList are not supported
  /// and will be ignored.
  ///
  /// Only icons created with Icon\#createWithBitmap(Bitmap),
  /// Icon\#createWithAdaptiveBitmap(Bitmap)
  /// and Icon\#createWithResource are supported.
  /// Other types, such as URI-based icons, are not supported.
  ///@see LauncherApps\#getShortcutIconDrawable(ShortcutInfo, int)
  ///@see LauncherApps\#getShortcutBadgedIconDrawable(ShortcutInfo, int)
  ///@return This value will never be {@code null}.
  ShortcutInfo_Builder setIcon(icon_.Icon icon) =>
      ShortcutInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setIcon, jni.JniType.objectType, [icon.reference]).object);

  static final _id_setShortLabel = jniAccessors.getMethodIDOf(
      _classRef,
      "setShortLabel",
      "(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo\$Builder;");

  /// from: public android.content.pm.ShortcutInfo.Builder setShortLabel(java.lang.CharSequence shortLabel)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the short title of a shortcut.
  ///
  /// This is a mandatory field when publishing a new shortcut with
  /// ShortcutManager\#addDynamicShortcuts(List) or
  /// ShortcutManager\#setDynamicShortcuts(List).
  ///
  /// This field is intended to be a concise description of a shortcut.
  ///
  /// The recommended maximum length is 10 characters.
  ///@see ShortcutInfo\#getShortLabel()
  ///@param shortLabel This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  ShortcutInfo_Builder setShortLabel(jni.JniObject shortLabel) =>
      ShortcutInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setShortLabel,
          jni.JniType.objectType,
          [shortLabel.reference]).object);

  static final _id_setLongLabel = jniAccessors.getMethodIDOf(
      _classRef,
      "setLongLabel",
      "(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo\$Builder;");

  /// from: public android.content.pm.ShortcutInfo.Builder setLongLabel(java.lang.CharSequence longLabel)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the text of a shortcut.
  ///
  /// This field is intended to be more descriptive than the shortcut title.  The launcher
  /// shows this instead of the short title when it has enough space.
  ///
  /// The recommend maximum length is 25 characters.
  ///@see ShortcutInfo\#getLongLabel()
  ///@param longLabel This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  ShortcutInfo_Builder setLongLabel(jni.JniObject longLabel) =>
      ShortcutInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setLongLabel,
          jni.JniType.objectType,
          [longLabel.reference]).object);

  static final _id_setDisabledMessage = jniAccessors.getMethodIDOf(
      _classRef,
      "setDisabledMessage",
      "(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo\$Builder;");

  /// from: public android.content.pm.ShortcutInfo.Builder setDisabledMessage(java.lang.CharSequence disabledMessage)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the message that should be shown when the user attempts to start a shortcut that
  /// is disabled.
  ///@see ShortcutInfo\#getDisabledMessage()
  ///@param disabledMessage This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  ShortcutInfo_Builder setDisabledMessage(jni.JniObject disabledMessage) =>
      ShortcutInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setDisabledMessage,
          jni.JniType.objectType,
          [disabledMessage.reference]).object);

  static final _id_setCategories = jniAccessors.getMethodIDOf(
      _classRef,
      "setCategories",
      "(Ljava/util/Set;)Landroid/content/pm/ShortcutInfo\$Builder;");

  /// from: public android.content.pm.ShortcutInfo.Builder setCategories(java.util.Set<java.lang.String> categories)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets categories for a shortcut.  Launcher apps may use this information to
  /// categorize shortcuts.
  ///@see \#SHORTCUT_CATEGORY_CONVERSATION
  ///@see ShortcutInfo\#getCategories()
  ///@return This value will never be {@code null}.
  ShortcutInfo_Builder setCategories(jni.JniObject categories) =>
      ShortcutInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setCategories,
          jni.JniType.objectType,
          [categories.reference]).object);

  static final _id_setIntent = jniAccessors.getMethodIDOf(
      _classRef,
      "setIntent",
      "(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo\$Builder;");

  /// from: public android.content.pm.ShortcutInfo.Builder setIntent(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the intent of a shortcut.  Alternatively, \#setIntents(Intent[]) can be used
  /// to launch an activity with other activities in the back stack.
  ///
  /// This is a mandatory field when publishing a new shortcut with
  /// ShortcutManager\#addDynamicShortcuts(List) or
  /// ShortcutManager\#setDynamicShortcuts(List).
  ///
  /// A shortcut can launch any intent that the publisher app has permission to
  /// launch.  For example, a shortcut can launch an unexported activity within the publisher
  /// app.  A shortcut intent doesn't have to point at the target activity.
  ///
  /// The given {@code intent} can contain extras, but these extras must contain values
  /// of primitive types in order for the system to persist these values.
  ///@see ShortcutInfo\#getIntent()
  ///@see \#setIntents(Intent[])
  ///@param intent This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  ShortcutInfo_Builder setIntent(intent_.Intent intent) =>
      ShortcutInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setIntent, jni.JniType.objectType, [intent.reference]).object);

  static final _id_setIntents = jniAccessors.getMethodIDOf(
      _classRef,
      "setIntents",
      "([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo\$Builder;");

  /// from: public android.content.pm.ShortcutInfo.Builder setIntents(android.content.Intent[] intents)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets multiple intents instead of a single intent, in order to launch an activity with
  /// other activities in back stack.  Use TaskStackBuilder to build intents. The
  /// last element in the list represents the only intent that doesn't place an activity on
  /// the back stack.
  /// See the ShortcutManager javadoc for details.
  ///@see Builder\#setIntent(Intent)
  ///@see ShortcutInfo\#getIntents()
  ///@see Context\#startActivities(Intent[])
  ///@see TaskStackBuilder
  ///@param intents This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  ShortcutInfo_Builder setIntents(jni.JniObject intents) =>
      ShortcutInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setIntents, jni.JniType.objectType, [intents.reference]).object);

  static final _id_setRank = jniAccessors.getMethodIDOf(
      _classRef, "setRank", "(I)Landroid/content/pm/ShortcutInfo\$Builder;");

  /// from: public android.content.pm.ShortcutInfo.Builder setRank(int rank)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// "Rank" of a shortcut, which is a non-negative value that's used by the launcher app
  /// to sort shortcuts.
  ///
  /// See ShortcutInfo\#getRank() for details.
  ///@return This value will never be {@code null}.
  ShortcutInfo_Builder setRank(int rank) =>
      ShortcutInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setRank, jni.JniType.objectType, [rank]).object);

  static final _id_setExtras = jniAccessors.getMethodIDOf(
      _classRef,
      "setExtras",
      "(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo\$Builder;");

  /// from: public android.content.pm.ShortcutInfo.Builder setExtras(android.os.PersistableBundle extras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Extras that the app can set for any purpose.
  ///
  /// Apps can store arbitrary shortcut metadata in extras and retrieve the
  /// metadata later using ShortcutInfo\#getExtras().
  ///@param extras This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  ShortcutInfo_Builder setExtras(persistablebundle_.PersistableBundle extras) =>
      ShortcutInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setExtras, jni.JniType.objectType, [extras.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/content/pm/ShortcutInfo;");

  /// from: public android.content.pm.ShortcutInfo build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a ShortcutInfo instance.
  ///@return This value will never be {@code null}.
  ShortcutInfo build() => ShortcutInfo.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_build, jni.JniType.objectType, []).object);
}
