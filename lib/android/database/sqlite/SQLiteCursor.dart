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

import "../AbstractWindowedCursor.dart" as abstractwindowedcursor_;

import "SQLiteDatabase.dart" as sqlitedatabase_;

import "SQLiteCursorDriver.dart" as sqlitecursordriver_;

import "SQLiteQuery.dart" as sqlitequery_;

import "../CursorWindow.dart" as cursorwindow_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.sqlite.SQLiteCursor
///
/// A Cursor implementation that exposes results from a query on a
/// SQLiteDatabase.
///
/// SQLiteCursor is not internally synchronized so code using a SQLiteCursor from multiple
/// threads should perform its own synchronization when using the SQLiteCursor.
class SQLiteCursor extends abstractwindowedcursor_.AbstractWindowedCursor {
  static final _classRef =
      jniAccessors.getClassOf("android/database/sqlite/SQLiteCursor");
  SQLiteCursor.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V");

  /// from: public void <init>(android.database.sqlite.SQLiteDatabase db, android.database.sqlite.SQLiteCursorDriver driver, java.lang.String editTable, android.database.sqlite.SQLiteQuery query)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Execute a query and provide access to its result set through a Cursor
  /// interface. For a query such as: {@code SELECT name, birth, phone FROM
  /// myTable WHERE ... LIMIT 1,20 ORDER BY...} the column names (name, birth,
  /// phone) would be in the projection argument and everything from
  /// {@code FROM} onward would be in the params argument.
  ///@param db a reference to a Database object that is already constructed
  ///     and opened. This param is not used any longer
  ///@param editTable the name of the table used for this query
  ///@param query the rest of the query terms
  ///     cursor is finalized
  ///@deprecated use \#SQLiteCursor(SQLiteCursorDriver, String, SQLiteQuery) instead
  SQLiteCursor.ctor1(
      sqlitedatabase_.SQLiteDatabase db,
      sqlitecursordriver_.SQLiteCursorDriver driver,
      jni.JniString editTable,
      sqlitequery_.SQLiteQuery query)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, [
          db.reference,
          driver.reference,
          editTable.reference,
          query.reference
        ]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V");

  /// from: public void <init>(android.database.sqlite.SQLiteCursorDriver driver, java.lang.String editTable, android.database.sqlite.SQLiteQuery query)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Execute a query and provide access to its result set through a Cursor
  /// interface. For a query such as: {@code SELECT name, birth, phone FROM
  /// myTable WHERE ... LIMIT 1,20 ORDER BY...} the column names (name, birth,
  /// phone) would be in the projection argument and everything from
  /// {@code FROM} onward would be in the params argument.
  ///@param editTable the name of the table used for this query
  ///@param query the SQLiteQuery object associated with this cursor object.
  SQLiteCursor.ctor2(sqlitecursordriver_.SQLiteCursorDriver driver,
      jni.JniString editTable, sqlitequery_.SQLiteQuery query)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [driver.reference, editTable.reference, query.reference]).object);

  static final _id_getDatabase = jniAccessors.getMethodIDOf(
      _classRef, "getDatabase", "()Landroid/database/sqlite/SQLiteDatabase;");

  /// from: public android.database.sqlite.SQLiteDatabase getDatabase()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the database that this cursor is associated with.
  ///@return the SQLiteDatabase that this cursor is associated with.
  sqlitedatabase_.SQLiteDatabase getDatabase() =>
      sqlitedatabase_.SQLiteDatabase.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDatabase, jni.JniType.objectType, []).object);

  static final _id_onMove1 =
      jniAccessors.getMethodIDOf(_classRef, "onMove", "(II)Z");

  /// from: public boolean onMove(int oldPosition, int newPosition)
  bool onMove1(int oldPosition, int newPosition) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMove1,
          jni.JniType.booleanType, [oldPosition, newPosition]).boolean;

  static final _id_getCount1 =
      jniAccessors.getMethodIDOf(_classRef, "getCount", "()I");

  /// from: public int getCount()
  int getCount1() => jniAccessors.callMethodWithArgs(
      reference, _id_getCount1, jni.JniType.intType, []).integer;

  static final _id_getColumnIndex1 = jniAccessors.getMethodIDOf(
      _classRef, "getColumnIndex", "(Ljava/lang/String;)I");

  /// from: public int getColumnIndex(java.lang.String columnName)
  int getColumnIndex1(jni.JniString columnName) =>
      jniAccessors.callMethodWithArgs(reference, _id_getColumnIndex1,
          jni.JniType.intType, [columnName.reference]).integer;

  static final _id_getColumnNames1 = jniAccessors.getMethodIDOf(
      _classRef, "getColumnNames", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getColumnNames()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getColumnNames1() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getColumnNames1, jni.JniType.objectType, []).object);

  static final _id_deactivate1 =
      jniAccessors.getMethodIDOf(_classRef, "deactivate", "()V");

  /// from: public void deactivate()
  void deactivate1() => jniAccessors.callMethodWithArgs(
      reference, _id_deactivate1, jni.JniType.voidType, []).check();

  static final _id_close1 =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  void close1() => jniAccessors.callMethodWithArgs(
      reference, _id_close1, jni.JniType.voidType, []).check();

  static final _id_requery1 =
      jniAccessors.getMethodIDOf(_classRef, "requery", "()Z");

  /// from: public boolean requery()
  bool requery1() => jniAccessors.callMethodWithArgs(
      reference, _id_requery1, jni.JniType.booleanType, []).boolean;

  static final _id_setWindow = jniAccessors.getMethodIDOf(
      _classRef, "setWindow", "(Landroid/database/CursorWindow;)V");

  /// from: public void setWindow(android.database.CursorWindow window)
  void setWindow(cursorwindow_.CursorWindow window) =>
      jniAccessors.callMethodWithArgs(reference, _id_setWindow,
          jni.JniType.voidType, [window.reference]).check();

  static final _id_setSelectionArguments = jniAccessors.getMethodIDOf(
      _classRef, "setSelectionArguments", "([Ljava/lang/String;)V");

  /// from: public void setSelectionArguments(java.lang.String[] selectionArgs)
  ///
  /// Changes the selection arguments. The new values take effect after a call to requery().
  void setSelectionArguments(jni.JniObject selectionArgs) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSelectionArguments,
          jni.JniType.voidType, [selectionArgs.reference]).check();

  static final _id_setFillWindowForwardOnly =
      jniAccessors.getMethodIDOf(_classRef, "setFillWindowForwardOnly", "(Z)V");

  /// from: public void setFillWindowForwardOnly(boolean fillWindowForwardOnly)
  ///
  /// Controls fetching of rows relative to requested position.
  ///
  /// Calling this method defines how rows will be loaded, but it doesn't affect rows that
  /// are already in the window. This setting is preserved if a new window is
  /// \#setWindow(CursorWindow) set
  ///@param fillWindowForwardOnly if true, rows will be fetched starting from requested position
  /// up to the window's capacity. Default value is false.
  void setFillWindowForwardOnly(bool fillWindowForwardOnly) =>
      jniAccessors.callMethodWithArgs(reference, _id_setFillWindowForwardOnly,
          jni.JniType.voidType, [fillWindowForwardOnly]).check();

  static final _id_finalize1 =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  ///
  /// Release the native resources, if they haven't been released yet.
  void finalize1() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize1, jni.JniType.voidType, []).check();
}