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

import "../Cursor.dart" as cursor_;

import "SQLiteDatabase.dart" as sqlitedatabase_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.sqlite.SQLiteCursorDriver
///
/// A driver for SQLiteCursors that is used to create them and gets notified
/// by the cursors it creates on significant events in their lifetimes.
class SQLiteCursorDriver extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/database/sqlite/SQLiteCursorDriver");
  SQLiteCursorDriver.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_query = jniAccessors.getMethodIDOf(_classRef, "query",
      "(Landroid/database/sqlite/SQLiteDatabase\$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;");

  /// from: public abstract android.database.Cursor query(android.database.sqlite.SQLiteDatabase.CursorFactory factory, java.lang.String[] bindArgs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Executes the query returning a Cursor over the result set.
  ///@param factory The CursorFactory to use when creating the Cursors, or
  ///         null if standard SQLiteCursors should be returned.
  ///@return a Cursor over the result set
  cursor_.Cursor query(sqlitedatabase_.SQLiteDatabase_CursorFactory factory0,
          jni.JniObject bindArgs) =>
      cursor_.Cursor.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_query,
          jni.JniType.objectType,
          [factory0.reference, bindArgs.reference]).object);

  static final _id_cursorDeactivated =
      jniAccessors.getMethodIDOf(_classRef, "cursorDeactivated", "()V");

  /// from: public abstract void cursorDeactivated()
  ///
  /// Called by a SQLiteCursor when it is released.
  void cursorDeactivated() => jniAccessors.callMethodWithArgs(
      reference, _id_cursorDeactivated, jni.JniType.voidType, []).check();

  static final _id_cursorRequeried = jniAccessors.getMethodIDOf(
      _classRef, "cursorRequeried", "(Landroid/database/Cursor;)V");

  /// from: public abstract void cursorRequeried(android.database.Cursor cursor)
  ///
  /// Called by a SQLiteCursor when it is requeried.
  void cursorRequeried(cursor_.Cursor cursor) =>
      jniAccessors.callMethodWithArgs(reference, _id_cursorRequeried,
          jni.JniType.voidType, [cursor.reference]).check();

  static final _id_cursorClosed =
      jniAccessors.getMethodIDOf(_classRef, "cursorClosed", "()V");

  /// from: public abstract void cursorClosed()
  ///
  /// Called by a SQLiteCursor when it it closed to destroy this object as well.
  void cursorClosed() => jniAccessors.callMethodWithArgs(
      reference, _id_cursorClosed, jni.JniType.voidType, []).check();

  static final _id_setBindArguments = jniAccessors.getMethodIDOf(
      _classRef, "setBindArguments", "([Ljava/lang/String;)V");

  /// from: public abstract void setBindArguments(java.lang.String[] bindArgs)
  ///
  /// Set new bind arguments. These will take effect in cursorRequeried().
  ///@param bindArgs the new arguments
  void setBindArguments(jni.JniObject bindArgs) =>
      jniAccessors.callMethodWithArgs(reference, _id_setBindArguments,
          jni.JniType.voidType, [bindArgs.reference]).check();
}
