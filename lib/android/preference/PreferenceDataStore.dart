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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.preference.PreferenceDataStore
///
/// A data store interface to be implemented and provided to the Preferences framework. This can be
/// used to replace the default android.content.SharedPreferences, if needed.
///
/// In most cases you want to use android.content.SharedPreferences as it is automatically
/// backed up and migrated to new devices. However, providing custom data store to preferences can be
/// useful if your app stores its preferences in a local db, cloud or they are device specific like
/// "Developer settings". It might be also useful when you want to use the preferences UI but
/// the data are not supposed to be stored at all because they are valid per session only.
///
/// Once a put method is called it is full responsibility of the data store implementation to
/// safely store the given values. Time expensive operations need to be done in the background to
/// prevent from blocking the UI. You also need to have a plan on how to serialize the data in case
/// the activity holding this object gets destroyed.
///
/// By default, all "put" methods throw UnsupportedOperationException.
///@see Preference\#setPreferenceDataStore(PreferenceDataStore)
///@see PreferenceManager\#setPreferenceDataStore(PreferenceDataStore)
class PreferenceDataStore extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/preference/PreferenceDataStore");
  PreferenceDataStore.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_putString = jniAccessors.getMethodIDOf(
      _classRef, "putString", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: default public void putString(java.lang.String key, java.lang.String value)
  ///
  /// Set a String value to the data store.
  ///
  /// Once the value is set the data store is responsible for holding it.
  ///@param key The name of the preference to modify.
  ///@param value The new value for the preference.
  /// This value may be {@code null}.
  ///@see \#getString(String, String)
  void putString(jni.JniString key, jni.JniString value) =>
      jniAccessors.callMethodWithArgs(reference, _id_putString,
          jni.JniType.voidType, [key.reference, value.reference]).check();

  static final _id_putStringSet = jniAccessors.getMethodIDOf(
      _classRef, "putStringSet", "(Ljava/lang/String;Ljava/util/Set;)V");

  /// from: default public void putStringSet(java.lang.String key, java.util.Set<java.lang.String> values)
  ///
  /// Set a set of String value to the data store.
  ///
  /// Once the value is set the data store is responsible for holding it.
  ///@param key The name of the preference to modify.
  ///@param values The set of new values for the preference.
  /// This value may be {@code null}.
  ///@see \#getStringSet(String, Set)
  void putStringSet(jni.JniString key, jni.JniObject values) =>
      jniAccessors.callMethodWithArgs(reference, _id_putStringSet,
          jni.JniType.voidType, [key.reference, values.reference]).check();

  static final _id_putInt =
      jniAccessors.getMethodIDOf(_classRef, "putInt", "(Ljava/lang/String;I)V");

  /// from: default public void putInt(java.lang.String key, int value)
  ///
  /// Set an int value to the data store.
  ///
  /// Once the value is set the data store is responsible for holding it.
  ///@param key The name of the preference to modify.
  ///@param value The new value for the preference.
  ///@see \#getInt(String, int)
  void putInt(jni.JniString key, int value) => jniAccessors.callMethodWithArgs(
      reference,
      _id_putInt,
      jni.JniType.voidType,
      [key.reference, value]).check();

  static final _id_putLong = jniAccessors.getMethodIDOf(
      _classRef, "putLong", "(Ljava/lang/String;J)V");

  /// from: default public void putLong(java.lang.String key, long value)
  ///
  /// Set a long value to the data store.
  ///
  /// Once the value is set the data store is responsible for holding it.
  ///@param key The name of the preference to modify.
  ///@param value The new value for the preference.
  ///@see \#getLong(String, long)
  void putLong(jni.JniString key, int value) => jniAccessors.callMethodWithArgs(
      reference,
      _id_putLong,
      jni.JniType.voidType,
      [key.reference, value]).check();

  static final _id_putFloat = jniAccessors.getMethodIDOf(
      _classRef, "putFloat", "(Ljava/lang/String;F)V");

  /// from: default public void putFloat(java.lang.String key, float value)
  ///
  /// Set a float value to the data store.
  ///
  /// Once the value is set the data store is responsible for holding it.
  ///@param key The name of the preference to modify.
  ///@param value The new value for the preference.
  ///@see \#getFloat(String, float)
  void putFloat(jni.JniString key, double value) =>
      jniAccessors.callMethodWithArgs(reference, _id_putFloat,
          jni.JniType.voidType, [key.reference, value]).check();

  static final _id_putBoolean = jniAccessors.getMethodIDOf(
      _classRef, "putBoolean", "(Ljava/lang/String;Z)V");

  /// from: default public void putBoolean(java.lang.String key, boolean value)
  ///
  /// Set a boolean value to the data store.
  ///
  /// Once the value is set the data store is responsible for holding it.
  ///@param key The name of the preference to modify.
  ///@param value The new value for the preference.
  ///@see \#getBoolean(String, boolean)
  void putBoolean(jni.JniString key, bool value) =>
      jniAccessors.callMethodWithArgs(reference, _id_putBoolean,
          jni.JniType.voidType, [key.reference, value]).check();

  static final _id_getString = jniAccessors.getMethodIDOf(_classRef,
      "getString", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;");

  /// from: default public java.lang.String getString(java.lang.String key, java.lang.String defValue)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a String value from the data store.
  ///@param key The name of the preference to retrieve.
  ///@param defValue Value to return if this preference does not exist.
  /// This value may be {@code null}.
  ///@see \#putString(String, String)
  ///@return This value may be {@code null}.
  jni.JniString getString(jni.JniString key, jni.JniString defValue) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getString,
          jni.JniType.objectType,
          [key.reference, defValue.reference]).object);

  static final _id_getStringSet = jniAccessors.getMethodIDOf(_classRef,
      "getStringSet", "(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;");

  /// from: default public java.util.Set<java.lang.String> getStringSet(java.lang.String key, java.util.Set<java.lang.String> defValues)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a set of String values from the data store.
  ///@param key The name of the preference to retrieve.
  ///@param defValues Values to return if this preference does not exist.
  /// This value may be {@code null}.
  ///@see \#putStringSet(String, Set)
  ///@return This value may be {@code null}.
  jni.JniObject getStringSet(jni.JniString key, jni.JniObject defValues) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getStringSet,
          jni.JniType.objectType,
          [key.reference, defValues.reference]).object);

  static final _id_getInt =
      jniAccessors.getMethodIDOf(_classRef, "getInt", "(Ljava/lang/String;I)I");

  /// from: default public int getInt(java.lang.String key, int defValue)
  ///
  /// Retrieve an int value from the data store.
  ///@param key The name of the preference to retrieve.
  ///@param defValue Value to return if this preference does not exist.
  ///@see \#putInt(String, int)
  int getInt(jni.JniString key, int defValue) =>
      jniAccessors.callMethodWithArgs(reference, _id_getInt,
          jni.JniType.intType, [key.reference, defValue]).integer;

  static final _id_getLong = jniAccessors.getMethodIDOf(
      _classRef, "getLong", "(Ljava/lang/String;J)J");

  /// from: default public long getLong(java.lang.String key, long defValue)
  ///
  /// Retrieve a long value from the data store.
  ///@param key The name of the preference to retrieve.
  ///@param defValue Value to return if this preference does not exist.
  ///@see \#putLong(String, long)
  int getLong(jni.JniString key, int defValue) =>
      jniAccessors.callMethodWithArgs(reference, _id_getLong,
          jni.JniType.longType, [key.reference, defValue]).long;

  static final _id_getFloat = jniAccessors.getMethodIDOf(
      _classRef, "getFloat", "(Ljava/lang/String;F)F");

  /// from: default public float getFloat(java.lang.String key, float defValue)
  ///
  /// Retrieve a float value from the data store.
  ///@param key The name of the preference to retrieve.
  ///@param defValue Value to return if this preference does not exist.
  ///@see \#putFloat(String, float)
  double getFloat(jni.JniString key, double defValue) =>
      jniAccessors.callMethodWithArgs(reference, _id_getFloat,
          jni.JniType.floatType, [key.reference, defValue]).float;

  static final _id_getBoolean = jniAccessors.getMethodIDOf(
      _classRef, "getBoolean", "(Ljava/lang/String;Z)Z");

  /// from: default public boolean getBoolean(java.lang.String key, boolean defValue)
  ///
  /// Retrieve a boolean value from the data store.
  ///@param key The name of the preference to retrieve.
  ///@param defValue Value to return if this preference does not exist.
  ///@see \#getBoolean(String, boolean)
  bool getBoolean(jni.JniString key, bool defValue) =>
      jniAccessors.callMethodWithArgs(reference, _id_getBoolean,
          jni.JniType.booleanType, [key.reference, defValue]).boolean;
}
