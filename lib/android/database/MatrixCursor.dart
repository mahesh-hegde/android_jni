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

import "AbstractCursor.dart" as abstractcursor_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.MatrixCursor
///
/// A mutable cursor implementation backed by an array of {@code Object}s. Use
/// \#newRow() to add rows. Automatically expands internal capacity
/// as needed.
class MatrixCursor extends abstractcursor_.AbstractCursor {
  static final _classRef =
      jniAccessors.getClassOf("android/database/MatrixCursor");
  MatrixCursor.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "([Ljava/lang/String;I)V");

  /// from: public void <init>(java.lang.String[] columnNames, int initialCapacity)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new cursor with the given initial capacity.
  ///@param columnNames names of the columns, the ordering of which
  ///  determines column ordering elsewhere in this cursor
  ///@param initialCapacity in rows
  MatrixCursor.ctor1(jni.JniObject columnNames, int initialCapacity)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [columnNames.reference, initialCapacity]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "([Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String[] columnNames)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new cursor.
  ///@param columnNames names of the columns, the ordering of which
  ///  determines column ordering elsewhere in this cursor
  MatrixCursor.ctor2(jni.JniObject columnNames)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [columnNames.reference]).object);

  static final _id_newRow = jniAccessors.getMethodIDOf(
      _classRef, "newRow", "()Landroid/database/MatrixCursor\$RowBuilder;");

  /// from: public android.database.MatrixCursor.RowBuilder newRow()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds a new row to the end and returns a builder for that row. Not safe
  /// for concurrent use.
  ///@return builder which can be used to set the column values for the new
  ///  row
  MatrixCursor_RowBuilder newRow() =>
      MatrixCursor_RowBuilder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_newRow, jni.JniType.objectType, []).object);

  static final _id_addRow =
      jniAccessors.getMethodIDOf(_classRef, "addRow", "([Ljava/lang/Object;)V");

  /// from: public void addRow(java.lang.Object[] columnValues)
  ///
  /// Adds a new row to the end with the given column values. Not safe
  /// for concurrent use.
  ///@throws IllegalArgumentException if {@code columnValues.length !=
  ///  columnNames.length}
  ///@param columnValues in the same order as the the column names specified
  ///  at cursor construction time
  void addRow(jni.JniObject columnValues) => jniAccessors.callMethodWithArgs(
      reference,
      _id_addRow,
      jni.JniType.voidType,
      [columnValues.reference]).check();

  static final _id_addRow1 = jniAccessors.getMethodIDOf(
      _classRef, "addRow", "(Ljava/lang/Iterable;)V");

  /// from: public void addRow(java.lang.Iterable<?> columnValues)
  ///
  /// Adds a new row to the end with the given column values. Not safe
  /// for concurrent use.
  ///@throws IllegalArgumentException if {@code columnValues.size() !=
  ///  columnNames.length}
  ///@param columnValues in the same order as the the column names specified
  ///  at cursor construction time
  void addRow1(jni.JniObject columnValues) => jniAccessors.callMethodWithArgs(
      reference,
      _id_addRow1,
      jni.JniType.voidType,
      [columnValues.reference]).check();

  static final _id_getCount =
      jniAccessors.getMethodIDOf(_classRef, "getCount", "()I");

  /// from: public int getCount()
  int getCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getCount, jni.JniType.intType, []).integer;

  static final _id_getColumnNames = jniAccessors.getMethodIDOf(
      _classRef, "getColumnNames", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getColumnNames()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getColumnNames() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getColumnNames, jni.JniType.objectType, []).object);

  static final _id_getString = jniAccessors.getMethodIDOf(
      _classRef, "getString", "(I)Ljava/lang/String;");

  /// from: public java.lang.String getString(int column)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString getString(int column) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getString, jni.JniType.objectType, [column]).object);

  static final _id_getShort =
      jniAccessors.getMethodIDOf(_classRef, "getShort", "(I)S");

  /// from: public short getShort(int column)
  int getShort(int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getShort, jni.JniType.shortType, [column]).short;

  static final _id_getInt =
      jniAccessors.getMethodIDOf(_classRef, "getInt", "(I)I");

  /// from: public int getInt(int column)
  int getInt(int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getInt, jni.JniType.intType, [column]).integer;

  static final _id_getLong =
      jniAccessors.getMethodIDOf(_classRef, "getLong", "(I)J");

  /// from: public long getLong(int column)
  int getLong(int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getLong, jni.JniType.longType, [column]).long;

  static final _id_getFloat =
      jniAccessors.getMethodIDOf(_classRef, "getFloat", "(I)F");

  /// from: public float getFloat(int column)
  double getFloat(int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getFloat, jni.JniType.floatType, [column]).float;

  static final _id_getDouble =
      jniAccessors.getMethodIDOf(_classRef, "getDouble", "(I)D");

  /// from: public double getDouble(int column)
  double getDouble(int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getDouble, jni.JniType.doubleType, [column]).doubleFloat;

  static final _id_getBlob =
      jniAccessors.getMethodIDOf(_classRef, "getBlob", "(I)[B");

  /// from: public byte[] getBlob(int column)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getBlob(int column) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getBlob, jni.JniType.objectType, [column]).object);

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "(I)I");

  /// from: public int getType(int column)
  int getType(int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getType, jni.JniType.intType, [column]).integer;

  static final _id_isNull1 =
      jniAccessors.getMethodIDOf(_classRef, "isNull", "(I)Z");

  /// from: public boolean isNull(int column)
  bool isNull1(int column) => jniAccessors.callMethodWithArgs(
      reference, _id_isNull1, jni.JniType.booleanType, [column]).boolean;
}

/// from: android.database.MatrixCursor$RowBuilder
///
/// Builds a row of values using either of these approaches:
/// <ul>
/// <li>Values can be added with explicit column ordering using
/// \#add(Object), which starts from the left-most column and adds one
/// column value at a time. This follows the same ordering as the column
/// names specified at cursor construction time.
/// <li>Column and value pairs can be offered for possible inclusion using
/// \#add(String, Object). If the cursor includes the given column,
/// the value will be set for that column, otherwise the value is ignored.
/// This approach is useful when matching data to a custom projection.
/// </ul>
/// Undefined values are left as {@code null}.
class MatrixCursor_RowBuilder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/database/MatrixCursor\$RowBuilder");
  MatrixCursor_RowBuilder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: void <init>(int row)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MatrixCursor_RowBuilder(int row)
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [row]).object);

  static final _id_add = jniAccessors.getMethodIDOf(_classRef, "add",
      "(Ljava/lang/Object;)Landroid/database/MatrixCursor\$RowBuilder;");

  /// from: public android.database.MatrixCursor.RowBuilder add(java.lang.Object columnValue)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the next column value in this row.
  ///@throws CursorIndexOutOfBoundsException if you try to add too many
  ///  values
  ///@return this builder to support chaining
  MatrixCursor_RowBuilder add(jni.JniObject columnValue) =>
      MatrixCursor_RowBuilder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_add, jni.JniType.objectType, [columnValue.reference]).object);

  static final _id_add1 = jniAccessors.getMethodIDOf(_classRef, "add",
      "(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor\$RowBuilder;");

  /// from: public android.database.MatrixCursor.RowBuilder add(java.lang.String columnName, java.lang.Object value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Offer value for possible inclusion if this cursor defines the given
  /// column. Columns not defined by the cursor are silently ignored.
  ///@return this builder to support chaining
  MatrixCursor_RowBuilder add1(jni.JniString columnName, jni.JniObject value) =>
      MatrixCursor_RowBuilder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_add1,
          jni.JniType.objectType,
          [columnName.reference, value.reference]).object);
}
