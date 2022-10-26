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

import "../content/Context.dart" as context_;

import "PreferenceDataStore.dart" as preferencedatastore_;

import "PreferenceScreen.dart" as preferencescreen_;

import "../content/SharedPreferences.dart" as sharedpreferences_;

import "Preference.dart" as preference_;

import "../content/Intent.dart" as intent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.preference.PreferenceManager
///
/// Used to help create Preference hierarchies
/// from activities or XML.
///
/// In most cases, clients should use
/// PreferenceActivity\#addPreferencesFromIntent or
/// PreferenceActivity\#addPreferencesFromResource(int).
///@see PreferenceActivity
class PreferenceManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/preference/PreferenceManager");
  PreferenceManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String KEY_HAS_SET_DEFAULT_VALUES
  static const KEY_HAS_SET_DEFAULT_VALUES = "_has_set_default_values";

  /// from: static public final java.lang.String METADATA_KEY_PREFERENCES
  ///
  /// The Activity meta-data key for its XML preference hierarchy.
  static const METADATA_KEY_PREFERENCES = "android.preference";

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This constructor should ONLY be used when getting default values from
  /// an XML preference hierarchy.
  ///
  /// The PreferenceManager\#PreferenceManager(Activity)
  /// should be used ANY time a preference will be displayed, since some preference
  /// types need an Activity for managed queries.
  PreferenceManager(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_setPreferenceDataStore = jniAccessors.getMethodIDOf(
      _classRef,
      "setPreferenceDataStore",
      "(Landroid/preference/PreferenceDataStore;)V");

  /// from: public void setPreferenceDataStore(android.preference.PreferenceDataStore dataStore)
  ///
  /// Sets a PreferenceDataStore to be used by all Preferences associated with this manager
  /// that don't have a custom PreferenceDataStore assigned via
  /// Preference\#setPreferenceDataStore(PreferenceDataStore). Also if the data store is
  /// set, the child preferences won't use android.content.SharedPreferences as long as
  /// they are assigned to this manager.
  ///@param dataStore The PreferenceDataStore to be used by this manager.
  ///@see Preference\#setPreferenceDataStore(PreferenceDataStore)
  void setPreferenceDataStore(
          preferencedatastore_.PreferenceDataStore dataStore) =>
      jniAccessors.callMethodWithArgs(reference, _id_setPreferenceDataStore,
          jni.JniType.voidType, [dataStore.reference]).check();

  static final _id_getPreferenceDataStore = jniAccessors.getMethodIDOf(
      _classRef,
      "getPreferenceDataStore",
      "()Landroid/preference/PreferenceDataStore;");

  /// from: public android.preference.PreferenceDataStore getPreferenceDataStore()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the PreferenceDataStore associated with this manager or {@code null} if
  /// the default android.content.SharedPreferences are used instead.
  ///@return The PreferenceDataStore associated with this manager or {@code null} if none.
  ///@see \#setPreferenceDataStore(PreferenceDataStore)
  preferencedatastore_.PreferenceDataStore getPreferenceDataStore() =>
      preferencedatastore_.PreferenceDataStore.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getPreferenceDataStore,
              jni.JniType.objectType, []).object);

  static final _id_createPreferenceScreen = jniAccessors.getMethodIDOf(
      _classRef,
      "createPreferenceScreen",
      "(Landroid/content/Context;)Landroid/preference/PreferenceScreen;");

  /// from: public android.preference.PreferenceScreen createPreferenceScreen(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  preferencescreen_.PreferenceScreen createPreferenceScreen(
          context_.Context context) =>
      preferencescreen_.PreferenceScreen.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_createPreferenceScreen,
              jni.JniType.objectType, [context.reference]).object);

  static final _id_getSharedPreferencesName = jniAccessors.getMethodIDOf(
      _classRef, "getSharedPreferencesName", "()Ljava/lang/String;");

  /// from: public java.lang.String getSharedPreferencesName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the current name of the SharedPreferences file that preferences managed by
  /// this will use.
  ///@return The name that can be passed to Context\#getSharedPreferences(String, int).
  ///@see Context\#getSharedPreferences(String, int)
  jni.JniString getSharedPreferencesName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getSharedPreferencesName, jni.JniType.objectType, []).object);

  static final _id_setSharedPreferencesName = jniAccessors.getMethodIDOf(
      _classRef, "setSharedPreferencesName", "(Ljava/lang/String;)V");

  /// from: public void setSharedPreferencesName(java.lang.String sharedPreferencesName)
  ///
  /// Sets the name of the SharedPreferences file that preferences managed by this
  /// will use.
  ///
  /// If custom PreferenceDataStore is set, this won't override its usage.
  ///@param sharedPreferencesName The name of the SharedPreferences file.
  ///@see Context\#getSharedPreferences(String, int)
  ///@see \#setPreferenceDataStore(PreferenceDataStore)
  void setSharedPreferencesName(jni.JniString sharedPreferencesName) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSharedPreferencesName,
          jni.JniType.voidType, [sharedPreferencesName.reference]).check();

  static final _id_getSharedPreferencesMode =
      jniAccessors.getMethodIDOf(_classRef, "getSharedPreferencesMode", "()I");

  /// from: public int getSharedPreferencesMode()
  ///
  /// Returns the current mode of the SharedPreferences file that preferences managed by
  /// this will use.
  ///@return The mode that can be passed to Context\#getSharedPreferences(String, int).
  ///@see Context\#getSharedPreferences(String, int)
  int getSharedPreferencesMode() => jniAccessors.callMethodWithArgs(
      reference, _id_getSharedPreferencesMode, jni.JniType.intType, []).integer;

  static final _id_setSharedPreferencesMode =
      jniAccessors.getMethodIDOf(_classRef, "setSharedPreferencesMode", "(I)V");

  /// from: public void setSharedPreferencesMode(int sharedPreferencesMode)
  ///
  /// Sets the mode of the SharedPreferences file that preferences managed by this
  /// will use.
  ///@param sharedPreferencesMode The mode of the SharedPreferences file.
  ///@see Context\#getSharedPreferences(String, int)
  void setSharedPreferencesMode(int sharedPreferencesMode) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSharedPreferencesMode,
          jni.JniType.voidType, [sharedPreferencesMode]).check();

  static final _id_setStorageDefault =
      jniAccessors.getMethodIDOf(_classRef, "setStorageDefault", "()V");

  /// from: public void setStorageDefault()
  ///
  /// Sets the storage location used internally by this class to be the default
  /// provided by the hosting Context.
  void setStorageDefault() => jniAccessors.callMethodWithArgs(
      reference, _id_setStorageDefault, jni.JniType.voidType, []).check();

  static final _id_setStorageDeviceProtected =
      jniAccessors.getMethodIDOf(_classRef, "setStorageDeviceProtected", "()V");

  /// from: public void setStorageDeviceProtected()
  ///
  /// Explicitly set the storage location used internally by this class to be
  /// device-protected storage.
  ///
  /// On devices with direct boot, data stored in this location is encrypted
  /// with a key tied to the physical device, and it can be accessed
  /// immediately after the device has booted successfully, both
  /// _before and after_ the user has authenticated with their
  /// credentials (such as a lock pattern or PIN).
  ///
  /// Because device-protected data is available without user authentication,
  /// you should carefully limit the data you store using this Context. For
  /// example, storing sensitive authentication tokens or passwords in the
  /// device-protected area is strongly discouraged.
  ///@see Context\#createDeviceProtectedStorageContext()
  void setStorageDeviceProtected() => jniAccessors.callMethodWithArgs(reference,
      _id_setStorageDeviceProtected, jni.JniType.voidType, []).check();

  static final _id_isStorageDefault =
      jniAccessors.getMethodIDOf(_classRef, "isStorageDefault", "()Z");

  /// from: public boolean isStorageDefault()
  ///
  /// Indicates if the storage location used internally by this class is the
  /// default provided by the hosting Context.
  ///@see \#setStorageDefault()
  ///@see \#setStorageDeviceProtected()
  bool isStorageDefault() => jniAccessors.callMethodWithArgs(
      reference, _id_isStorageDefault, jni.JniType.booleanType, []).boolean;

  static final _id_isStorageDeviceProtected =
      jniAccessors.getMethodIDOf(_classRef, "isStorageDeviceProtected", "()Z");

  /// from: public boolean isStorageDeviceProtected()
  ///
  /// Indicates if the storage location used internally by this class is backed
  /// by device-protected storage.
  ///@see \#setStorageDefault()
  ///@see \#setStorageDeviceProtected()
  bool isStorageDeviceProtected() => jniAccessors.callMethodWithArgs(reference,
      _id_isStorageDeviceProtected, jni.JniType.booleanType, []).boolean;

  static final _id_getSharedPreferences = jniAccessors.getMethodIDOf(_classRef,
      "getSharedPreferences", "()Landroid/content/SharedPreferences;");

  /// from: public android.content.SharedPreferences getSharedPreferences()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets a SharedPreferences instance that preferences managed by this will use.
  ///@return a SharedPreferences instance pointing to the file that contains the values of
  ///         preferences that are managed by this PreferenceManager. If a
  ///         PreferenceDataStore has been set, this method returns {@code null}.
  sharedpreferences_.SharedPreferences getSharedPreferences() =>
      sharedpreferences_.SharedPreferences.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getSharedPreferences,
              jni.JniType.objectType, []).object);

  static final _id_getDefaultSharedPreferences =
      jniAccessors.getStaticMethodIDOf(_classRef, "getDefaultSharedPreferences",
          "(Landroid/content/Context;)Landroid/content/SharedPreferences;");

  /// from: static public android.content.SharedPreferences getDefaultSharedPreferences(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets a SharedPreferences instance that points to the default file that is used by
  /// the preference framework in the given context.
  ///@param context The context of the preferences whose values are wanted.
  ///@return A SharedPreferences instance that can be used to retrieve and listen
  ///         to values of the preferences.
  static sharedpreferences_.SharedPreferences getDefaultSharedPreferences(
          context_.Context context) =>
      sharedpreferences_.SharedPreferences.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_getDefaultSharedPreferences,
              jni.JniType.objectType, [context.reference]).object);

  static final _id_getDefaultSharedPreferencesName =
      jniAccessors.getStaticMethodIDOf(
          _classRef,
          "getDefaultSharedPreferencesName",
          "(Landroid/content/Context;)Ljava/lang/String;");

  /// from: static public java.lang.String getDefaultSharedPreferencesName(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the name used for storing default shared preferences.
  ///@see \#getDefaultSharedPreferences(Context)
  ///@see Context\#getSharedPreferencesPath(String)
  static jni.JniString getDefaultSharedPreferencesName(
          context_.Context context) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getDefaultSharedPreferencesName,
          jni.JniType.objectType,
          [context.reference]).object);

  static final _id_findPreference = jniAccessors.getMethodIDOf(
      _classRef,
      "findPreference",
      "(Ljava/lang/CharSequence;)Landroid/preference/Preference;");

  /// from: public android.preference.Preference findPreference(java.lang.CharSequence key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Finds a Preference based on its key.
  ///@param key the key of the preference to retrieve
  ///@return the Preference with the key, or {@code null}
  ///@see PreferenceGroup\#findPreference(CharSequence)
  preference_.Preference findPreference(jni.JniObject key) =>
      preference_.Preference.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_findPreference, jni.JniType.objectType, [key.reference]).object);

  static final _id_setDefaultValues = jniAccessors.getStaticMethodIDOf(
      _classRef, "setDefaultValues", "(Landroid/content/Context;IZ)V");

  /// from: static public void setDefaultValues(android.content.Context context, int resId, boolean readAgain)
  ///
  /// Sets the default values from an XML preference file by reading the values defined
  /// by each Preference item's {@code android:defaultValue} attribute. This should
  /// be called by the application's main activity.
  ///
  ///@param context The context of the shared preferences.
  ///@param resId The resource ID of the preference XML file.
  ///@param readAgain Whether to re-read the default values.
  /// If false, this method sets the default values only if this
  /// method has never been called in the past (or if the
  /// \#KEY_HAS_SET_DEFAULT_VALUES in the default value shared
  /// preferences file is false). To attempt to set the default values again
  /// bypassing this check, set {@code readAgain} to true.
  ///            <p class="note">
  ///            Note: this will NOT reset preferences back to their default
  ///            values. For that functionality, use
  ///            PreferenceManager\#getDefaultSharedPreferences(Context)
  ///            and clear it followed by a call to this method with this
  ///            parameter set to true.
  static void setDefaultValues(
          context_.Context context, int resId, bool readAgain) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_setDefaultValues,
          jni.JniType.voidType, [context.reference, resId, readAgain]).check();

  static final _id_setDefaultValues1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "setDefaultValues",
      "(Landroid/content/Context;Ljava/lang/String;IIZ)V");

  /// from: static public void setDefaultValues(android.content.Context context, java.lang.String sharedPreferencesName, int sharedPreferencesMode, int resId, boolean readAgain)
  ///
  /// Similar to \#setDefaultValues(Context, int, boolean) but allows
  /// the client to provide the filename and mode of the shared preferences
  /// file.
  ///@param context The context of the shared preferences.
  ///@param sharedPreferencesName A custom name for the shared preferences file.
  ///@param sharedPreferencesMode The file creation mode for the shared preferences file, such
  /// as android.content.Context\#MODE_PRIVATE or android.content.Context\#MODE_PRIVATE
  ///@param resId The resource ID of the preference XML file.
  ///@param readAgain Whether to re-read the default values.
  /// If false, this method will set the default values only if this
  /// method has never been called in the past (or if the
  /// \#KEY_HAS_SET_DEFAULT_VALUES in the default value shared
  /// preferences file is false). To attempt to set the default values again
  /// bypassing this check, set {@code readAgain} to true.
  ///            <p class="note">
  ///            Note: this will NOT reset preferences back to their default
  ///            values. For that functionality, use
  ///            PreferenceManager\#getDefaultSharedPreferences(Context)
  ///            and clear it followed by a call to this method with this
  ///            parameter set to true.
  ///@see \#setDefaultValues(Context, int, boolean)
  ///@see \#setSharedPreferencesName(String)
  ///@see \#setSharedPreferencesMode(int)
  static void setDefaultValues1(
          context_.Context context,
          jni.JniString sharedPreferencesName,
          int sharedPreferencesMode,
          int resId,
          bool readAgain) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_setDefaultValues1, jni.JniType.voidType, [
        context.reference,
        sharedPreferencesName.reference,
        sharedPreferencesMode,
        resId,
        readAgain
      ]).check();
}

/// from: android.preference.PreferenceManager$OnActivityStopListener
///
/// Interface definition for a class that will be called when the container's activity
/// is stopped.
class PreferenceManager_OnActivityStopListener extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/preference/PreferenceManager\$OnActivityStopListener");
  PreferenceManager_OnActivityStopListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onActivityStop =
      jniAccessors.getMethodIDOf(_classRef, "onActivityStop", "()V");

  /// from: public abstract void onActivityStop()
  ///
  /// See Activity's onStop.
  void onActivityStop() => jniAccessors.callMethodWithArgs(
      reference, _id_onActivityStop, jni.JniType.voidType, []).check();
}

/// from: android.preference.PreferenceManager$OnActivityResultListener
///
/// Interface definition for a class that will be called when the container's activity
/// receives an activity result.
class PreferenceManager_OnActivityResultListener extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/preference/PreferenceManager\$OnActivityResultListener");
  PreferenceManager_OnActivityResultListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onActivityResult = jniAccessors.getMethodIDOf(
      _classRef, "onActivityResult", "(IILandroid/content/Intent;)Z");

  /// from: public abstract boolean onActivityResult(int requestCode, int resultCode, android.content.Intent data)
  ///
  /// See Activity's onActivityResult.
  ///@return Whether the request code was handled (in which case
  ///         subsequent listeners will not be called.
  bool onActivityResult(int requestCode, int resultCode, intent_.Intent data) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onActivityResult,
          jni.JniType.booleanType,
          [requestCode, resultCode, data.reference]).boolean;
}

/// from: android.preference.PreferenceManager$OnActivityDestroyListener
///
/// Interface definition for a class that will be called when the container's activity
/// is destroyed.
class PreferenceManager_OnActivityDestroyListener extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/preference/PreferenceManager\$OnActivityDestroyListener");
  PreferenceManager_OnActivityDestroyListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onActivityDestroy =
      jniAccessors.getMethodIDOf(_classRef, "onActivityDestroy", "()V");

  /// from: public abstract void onActivityDestroy()
  ///
  /// See Activity's onDestroy.
  void onActivityDestroy() => jniAccessors.callMethodWithArgs(
      reference, _id_onActivityDestroy, jni.JniType.voidType, []).check();
}