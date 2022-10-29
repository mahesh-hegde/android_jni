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

import "SQLiteProgram.dart" as sqliteprogram_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.sqlite.SQLiteQuery
///
/// Represents a query that reads the resulting rows into a SQLiteQuery.
/// This class is used by SQLiteCursor and isn't useful itself.
///
/// This class is not thread-safe.
///
///
class SQLiteQuery extends sqliteprogram_.SQLiteProgram {
  static final _classRef =
      jniAccessors.getClassOf("android/database/sqlite/SQLiteQuery");
  SQLiteQuery.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
