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

/// from: android.database.DatabaseErrorHandler
///
/// An interface to let apps define an action to take when database corruption is detected.
class DatabaseErrorHandler extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/database/DatabaseErrorHandler");
  DatabaseErrorHandler.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onCorruption = jniAccessors.getMethodIDOf(
      _classRef, "onCorruption", "(Landroid/database/sqlite/SQLiteDatabase;)V");

  /// from: public abstract void onCorruption(android.database.sqlite.SQLiteDatabase dbObj)
  ///
  /// The method invoked when database corruption is detected.
  ///@param dbObj the SQLiteDatabase object representing the database on which corruption
  /// is detected.
  void onCorruption(sqlitedatabase_.SQLiteDatabase dbObj) =>
      jniAccessors.callMethodWithArgs(reference, _id_onCorruption,
          jni.JniType.voidType, [dbObj.reference]).check();
}
