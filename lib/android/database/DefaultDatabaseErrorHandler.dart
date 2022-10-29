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

import "sqlite/SQLiteDatabase.dart" as sqlitedatabase_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.DefaultDatabaseErrorHandler
///
/// Default class used to define the action to take when database corruption is reported
/// by sqlite.
///
/// An application can specify an implementation of DatabaseErrorHandler on the
/// following:
/// <ul>
///   <li>SQLiteDatabase\#openOrCreateDatabase(String,
///      android.database.sqlite.SQLiteDatabase.CursorFactory, DatabaseErrorHandler)</li>
///   <li>SQLiteDatabase\#openDatabase(String,
///      android.database.sqlite.SQLiteDatabase.CursorFactory, int, DatabaseErrorHandler)</li>
/// </ul>
/// The specified DatabaseErrorHandler is used to handle database corruption errors, if they
/// occur.
///
/// If null is specified for the DatabaseErrorHandler param in the above calls, this class is used
/// as the default DatabaseErrorHandler.
class DefaultDatabaseErrorHandler extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/database/DefaultDatabaseErrorHandler");
  DefaultDatabaseErrorHandler.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  DefaultDatabaseErrorHandler()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onCorruption = jniAccessors.getMethodIDOf(
      _classRef, "onCorruption", "(Landroid/database/sqlite/SQLiteDatabase;)V");

  /// from: public void onCorruption(android.database.sqlite.SQLiteDatabase dbObj)
  ///
  /// defines the default method to be invoked when database corruption is detected.
  ///@param dbObj the SQLiteDatabase object representing the database on which corruption
  /// is detected.
  void onCorruption(sqlitedatabase_.SQLiteDatabase dbObj) =>
      jniAccessors.callMethodWithArgs(reference, _id_onCorruption,
          jni.JniType.voidType, [dbObj.reference]).check();
}
