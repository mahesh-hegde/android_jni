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

/// from: android.database.sqlite.SQLiteDatabaseLockedException
///
/// Thrown if  the database engine was unable to acquire the
/// database locks it needs to do its job.  If the statement is a [COMMIT]
/// or occurs outside of an explicit transaction, then you can retry the
/// statement.  If the statement is not a [COMMIT] and occurs within a
/// explicit transaction then you should rollback the transaction before
/// continuing.
class SQLiteDatabaseLockedException extends sqliteexception_.SQLiteException {
  static final _classRef = jniAccessors
      .getClassOf("android/database/sqlite/SQLiteDatabaseLockedException");
  SQLiteDatabaseLockedException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SQLiteDatabaseLockedException()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String error)
  /// The returned object must be deleted after use, by calling the `delete` method.
  SQLiteDatabaseLockedException.ctor1(jni.JniString error)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [error.reference]).object);
}
