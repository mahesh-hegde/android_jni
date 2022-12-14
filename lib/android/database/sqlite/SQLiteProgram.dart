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

import "SQLiteClosable.dart" as sqliteclosable_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.sqlite.SQLiteProgram
///
/// A base class for compiled SQLite programs.
///
/// This class is not thread-safe.
///
///
class SQLiteProgram extends sqliteclosable_.SQLiteClosable {
  static final _classRef =
      jniAccessors.getClassOf("android/database/sqlite/SQLiteProgram");
  SQLiteProgram.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getUniqueId =
      jniAccessors.getMethodIDOf(_classRef, "getUniqueId", "()I");

  /// from: public final int getUniqueId()
  ///
  /// Unimplemented.
  ///@deprecated This method is deprecated and must not be used.
  int getUniqueId() => jniAccessors.callMethodWithArgs(
      reference, _id_getUniqueId, jni.JniType.intType, []).integer;

  static final _id_bindNull =
      jniAccessors.getMethodIDOf(_classRef, "bindNull", "(I)V");

  /// from: public void bindNull(int index)
  ///
  /// Bind a NULL value to this statement. The value remains bound until
  /// \#clearBindings is called.
  ///@param index The 1-based index to the parameter to bind null to
  void bindNull(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_bindNull, jni.JniType.voidType, [index]).check();

  static final _id_bindLong =
      jniAccessors.getMethodIDOf(_classRef, "bindLong", "(IJ)V");

  /// from: public void bindLong(int index, long value)
  ///
  /// Bind a long value to this statement. The value remains bound until
  /// \#clearBindings is called.
  ///addToBindArgs
  ///@param index The 1-based index to the parameter to bind
  ///@param value The value to bind
  void bindLong(int index, int value) => jniAccessors.callMethodWithArgs(
      reference, _id_bindLong, jni.JniType.voidType, [index, value]).check();

  static final _id_bindDouble =
      jniAccessors.getMethodIDOf(_classRef, "bindDouble", "(ID)V");

  /// from: public void bindDouble(int index, double value)
  ///
  /// Bind a double value to this statement. The value remains bound until
  /// \#clearBindings is called.
  ///@param index The 1-based index to the parameter to bind
  ///@param value The value to bind
  void bindDouble(int index, double value) => jniAccessors.callMethodWithArgs(
      reference, _id_bindDouble, jni.JniType.voidType, [index, value]).check();

  static final _id_bindString = jniAccessors.getMethodIDOf(
      _classRef, "bindString", "(ILjava/lang/String;)V");

  /// from: public void bindString(int index, java.lang.String value)
  ///
  /// Bind a String value to this statement. The value remains bound until
  /// \#clearBindings is called.
  ///@param index The 1-based index to the parameter to bind
  ///@param value The value to bind, must not be null
  void bindString(int index, jni.JniString value) =>
      jniAccessors.callMethodWithArgs(reference, _id_bindString,
          jni.JniType.voidType, [index, value.reference]).check();

  static final _id_bindBlob =
      jniAccessors.getMethodIDOf(_classRef, "bindBlob", "(I[B)V");

  /// from: public void bindBlob(int index, byte[] value)
  ///
  /// Bind a byte array value to this statement. The value remains bound until
  /// \#clearBindings is called.
  ///@param index The 1-based index to the parameter to bind
  ///@param value The value to bind, must not be null
  void bindBlob(int index, jni.JniObject value) =>
      jniAccessors.callMethodWithArgs(reference, _id_bindBlob,
          jni.JniType.voidType, [index, value.reference]).check();

  static final _id_clearBindings =
      jniAccessors.getMethodIDOf(_classRef, "clearBindings", "()V");

  /// from: public void clearBindings()
  ///
  /// Clears all existing bindings. Unset bindings are treated as NULL.
  void clearBindings() => jniAccessors.callMethodWithArgs(
      reference, _id_clearBindings, jni.JniType.voidType, []).check();

  static final _id_bindAllArgsAsStrings = jniAccessors.getMethodIDOf(
      _classRef, "bindAllArgsAsStrings", "([Ljava/lang/String;)V");

  /// from: public void bindAllArgsAsStrings(java.lang.String[] bindArgs)
  ///
  /// Given an array of String bindArgs, this method binds all of them in one single call.
  ///@param bindArgs the String array of bind args, none of which must be null.
  void bindAllArgsAsStrings(jni.JniObject bindArgs) =>
      jniAccessors.callMethodWithArgs(reference, _id_bindAllArgsAsStrings,
          jni.JniType.voidType, [bindArgs.reference]).check();

  static final _id_onAllReferencesReleased =
      jniAccessors.getMethodIDOf(_classRef, "onAllReferencesReleased", "()V");

  /// from: protected void onAllReferencesReleased()
  void onAllReferencesReleased() => jniAccessors.callMethodWithArgs(
      reference, _id_onAllReferencesReleased, jni.JniType.voidType, []).check();
}
