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

import "../database/Cursor.dart" as cursor_;

import "../os/Handler.dart" as handler_;

import "ContentValues.dart" as contentvalues_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.ContentQueryMap
///
/// Caches the contents of a cursor into a Map of String->ContentValues and optionally
/// keeps the cache fresh by registering for updates on the content backing the cursor. The column of
/// the database that is to be used as the key of the map is user-configurable, and the
/// ContentValues contains all columns other than the one that is designated the key.
///
/// The cursor data is accessed by row key and column name via getValue().
class ContentQueryMap extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/ContentQueryMap");
  ContentQueryMap.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V");

  /// from: public void <init>(android.database.Cursor cursor, java.lang.String columnNameOfKey, boolean keepUpdated, android.os.Handler handlerForUpdateNotifications)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a ContentQueryMap that caches the content backing the cursor
  ///@param cursor the cursor whose contents should be cached
  ///@param columnNameOfKey the column that is to be used as the key of the values map
  ///@param keepUpdated true if the cursor's ContentProvider should be monitored for changes and
  /// the map updated when changes do occur
  ///@param handlerForUpdateNotifications the Handler that should be used to receive
  ///  notifications of changes (if requested). Normally you pass null here, but if
  ///  you know that the thread that is creating this isn't a thread that can receive
  ///  messages then you can create your own handler and use that here.
  ContentQueryMap(cursor_.Cursor cursor, jni.JniString columnNameOfKey,
      bool keepUpdated, handler_.Handler handlerForUpdateNotifications)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          cursor.reference,
          columnNameOfKey.reference,
          keepUpdated,
          handlerForUpdateNotifications.reference
        ]).object);

  static final _id_setKeepUpdated =
      jniAccessors.getMethodIDOf(_classRef, "setKeepUpdated", "(Z)V");

  /// from: public void setKeepUpdated(boolean keepUpdated)
  ///
  /// Change whether or not the ContentQueryMap will register with the cursor's ContentProvider
  /// for change notifications. If you use a ContentQueryMap in an activity you should call this
  /// with false in onPause(), which means you need to call it with true in onResume()
  /// if want it to be kept updated.
  ///@param keepUpdated if true the ContentQueryMap should be registered with the cursor's
  /// ContentProvider, false otherwise
  void setKeepUpdated(bool keepUpdated) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setKeepUpdated,
      jni.JniType.voidType,
      [keepUpdated]).check();

  static final _id_getValues = jniAccessors.getMethodIDOf(_classRef,
      "getValues", "(Ljava/lang/String;)Landroid/content/ContentValues;");

  /// from: synchronized public android.content.ContentValues getValues(java.lang.String rowName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Access the ContentValues for the row specified by rowName
  ///@param rowName which row to read
  ///@return the ContentValues for the row, or null if the row wasn't present in the cursor
  contentvalues_.ContentValues getValues(jni.JniString rowName) =>
      contentvalues_.ContentValues.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getValues,
          jni.JniType.objectType,
          [rowName.reference]).object);

  static final _id_requery =
      jniAccessors.getMethodIDOf(_classRef, "requery", "()V");

  /// from: public void requery()
  ///
  /// Requeries the cursor and reads the contents into the cache
  void requery() => jniAccessors.callMethodWithArgs(
      reference, _id_requery, jni.JniType.voidType, []).check();

  static final _id_getRows =
      jniAccessors.getMethodIDOf(_classRef, "getRows", "()Ljava/util/Map;");

  /// from: synchronized public java.util.Map<java.lang.String,android.content.ContentValues> getRows()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getRows() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getRows, jni.JniType.objectType, []).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: synchronized public void close()
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();
}