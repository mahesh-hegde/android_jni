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

import "SQLiteException.dart" as sqliteexception_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.sqlite.SQLiteDoneException
///
/// An exception that indicates that the SQLite program is done.
/// Thrown when an operation that expects a row (such as SQLiteStatement\#simpleQueryForString or SQLiteStatement\#simpleQueryForLong) does not get one.
class SQLiteDoneException extends sqliteexception_.SQLiteException {
  static final _classRef =
      jniAccessors.getClassOf("android/database/sqlite/SQLiteDoneException");
  SQLiteDoneException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SQLiteDoneException()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String error)
  /// The returned object must be deleted after use, by calling the `delete` method.
  SQLiteDoneException.ctor1(jni.JniString error)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [error.reference]).object);
}
