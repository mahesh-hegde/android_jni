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

import "../../os/ParcelFileDescriptor.dart" as parcelfiledescriptor_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.sqlite.SQLiteStatement
///
/// Represents a statement that can be executed against a database.  The statement
/// cannot return multiple rows or columns, but single value (1 x 1) result sets
/// are supported.
///
/// This class is not thread-safe.
///
///
class SQLiteStatement extends sqliteprogram_.SQLiteProgram {
  static final _classRef =
      jniAccessors.getClassOf("android/database/sqlite/SQLiteStatement");
  SQLiteStatement.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_execute =
      jniAccessors.getMethodIDOf(_classRef, "execute", "()V");

  /// from: public void execute()
  ///
  /// Execute this SQL statement, if it is not a SELECT / INSERT / DELETE / UPDATE, for example
  /// CREATE / DROP table, view, trigger, index etc.
  ///@throws android.database.SQLException If the SQL string is invalid for
  ///         some reason
  void execute() => jniAccessors.callMethodWithArgs(
      reference, _id_execute, jni.JniType.voidType, []).check();

  static final _id_executeUpdateDelete =
      jniAccessors.getMethodIDOf(_classRef, "executeUpdateDelete", "()I");

  /// from: public int executeUpdateDelete()
  ///
  /// Execute this SQL statement, if the the number of rows affected by execution of this SQL
  /// statement is of any importance to the caller - for example, UPDATE / DELETE SQL statements.
  ///@return the number of rows affected by this SQL statement execution.
  ///@throws android.database.SQLException If the SQL string is invalid for
  ///         some reason
  int executeUpdateDelete() => jniAccessors.callMethodWithArgs(
      reference, _id_executeUpdateDelete, jni.JniType.intType, []).integer;

  static final _id_executeInsert =
      jniAccessors.getMethodIDOf(_classRef, "executeInsert", "()J");

  /// from: public long executeInsert()
  ///
  /// Execute this SQL statement and return the ID of the row inserted due to this call.
  /// The SQL statement should be an INSERT for this to be a useful call.
  ///@return the row ID of the last row inserted, if this insert is successful. -1 otherwise.
  ///@throws android.database.SQLException If the SQL string is invalid for
  ///         some reason
  int executeInsert() => jniAccessors.callMethodWithArgs(
      reference, _id_executeInsert, jni.JniType.longType, []).long;

  static final _id_simpleQueryForLong =
      jniAccessors.getMethodIDOf(_classRef, "simpleQueryForLong", "()J");

  /// from: public long simpleQueryForLong()
  ///
  /// Execute a statement that returns a 1 by 1 table with a numeric value.
  /// For example, SELECT COUNT(*) FROM table;
  ///@return The result of the query.
  ///@throws android.database.sqlite.SQLiteDoneException if the query returns zero rows
  int simpleQueryForLong() => jniAccessors.callMethodWithArgs(
      reference, _id_simpleQueryForLong, jni.JniType.longType, []).long;

  static final _id_simpleQueryForString = jniAccessors.getMethodIDOf(
      _classRef, "simpleQueryForString", "()Ljava/lang/String;");

  /// from: public java.lang.String simpleQueryForString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Execute a statement that returns a 1 by 1 table with a text value.
  /// For example, SELECT COUNT(*) FROM table;
  ///@return The result of the query.
  ///@throws android.database.sqlite.SQLiteDoneException if the query returns zero rows
  jni.JniString simpleQueryForString() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_simpleQueryForString, jni.JniType.objectType, []).object);

  static final _id_simpleQueryForBlobFileDescriptor =
      jniAccessors.getMethodIDOf(_classRef, "simpleQueryForBlobFileDescriptor",
          "()Landroid/os/ParcelFileDescriptor;");

  /// from: public android.os.ParcelFileDescriptor simpleQueryForBlobFileDescriptor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Executes a statement that returns a 1 by 1 table with a blob value.
  ///@return A read-only file descriptor for a copy of the blob value, or {@code null}
  ///         if the value is null or could not be read for some reason.
  ///@throws android.database.sqlite.SQLiteDoneException if the query returns zero rows
  parcelfiledescriptor_.ParcelFileDescriptor
      simpleQueryForBlobFileDescriptor() =>
          parcelfiledescriptor_.ParcelFileDescriptor.fromRef(jniAccessors
              .callMethodWithArgs(
                  reference,
                  _id_simpleQueryForBlobFileDescriptor,
                  jni.JniType.objectType, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
