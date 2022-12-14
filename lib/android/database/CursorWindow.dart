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

import "sqlite/SQLiteClosable.dart" as sqliteclosable_;

import "../os/Parcelable.dart" as parcelable_;

import "CharArrayBuffer.dart" as chararraybuffer_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.CursorWindow
///
/// A buffer containing multiple cursor rows.
///
/// A CursorWindow is read-write when initially created and used locally.
/// When sent to a remote process (by writing it to a Parcel), the remote process
/// receives a read-only view of the cursor window.  Typically the cursor window
/// will be allocated by the producer, filled with data, and then sent to the
/// consumer for reading.
///
///
class CursorWindow extends sqliteclosable_.SQLiteClosable {
  static final _classRef =
      jniAccessors.getClassOf("android/database/CursorWindow");
  CursorWindow.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.database.CursorWindow> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new empty cursor window and gives it a name.
  ///
  /// The cursor initially has no rows or columns.  Call \#setNumColumns(int) to
  /// set the number of columns before adding any rows to the cursor.
  ///
  ///
  ///@param name The name of the cursor window, or null if none.
  CursorWindow.ctor1(jni.JniString name)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [name.reference]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;J)V");

  /// from: public void <init>(java.lang.String name, long windowSizeBytes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new empty cursor window and gives it a name.
  ///
  /// The cursor initially has no rows or columns.  Call \#setNumColumns(int) to
  /// set the number of columns before adding any rows to the cursor.
  ///
  ///
  ///@param name The name of the cursor window, or null if none.
  ///@param windowSizeBytes Size of cursor window in bytes.
  /// <strong>Note:</strong> Memory is dynamically allocated as data rows are added to the
  /// window. Depending on the amount of data stored, the actual amount of memory allocated can be
  /// lower than specified size, but cannot exceed it.
  ///
  /// Value is a non-negative number of bytes.
  CursorWindow.ctor2(jni.JniString name, int windowSizeBytes)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [name.reference, windowSizeBytes]).object);

  static final _id_ctor3 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Z)V");

  /// from: public void <init>(boolean localWindow)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new empty cursor window.
  ///
  /// The cursor initially has no rows or columns.  Call \#setNumColumns(int) to
  /// set the number of columns before adding any rows to the cursor.
  ///
  ///
  ///@param localWindow True if this window will be used in this process only,
  /// false if it might be sent to another processes.  This argument is ignored.
  ///@deprecated There is no longer a distinction between local and remote
  /// cursor windows.  Use the \#CursorWindow(String) constructor instead.
  CursorWindow.ctor3(bool localWindow)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [localWindow]).object);

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();

  static final _id_clear =
      jniAccessors.getMethodIDOf(_classRef, "clear", "()V");

  /// from: public void clear()
  ///
  /// Clears out the existing contents of the window, making it safe to reuse
  /// for new data.
  ///
  /// The start position (\#getStartPosition()), number of rows (\#getNumRows()),
  /// and number of columns in the cursor are all reset to zero.
  ///
  ///
  void clear() => jniAccessors.callMethodWithArgs(
      reference, _id_clear, jni.JniType.voidType, []).check();

  static final _id_getStartPosition =
      jniAccessors.getMethodIDOf(_classRef, "getStartPosition", "()I");

  /// from: public int getStartPosition()
  ///
  /// Gets the start position of this cursor window.
  ///
  /// The start position is the zero-based index of the first row that this window contains
  /// relative to the entire result set of the Cursor.
  ///
  ///
  ///@return The zero-based start position.
  int getStartPosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getStartPosition, jni.JniType.intType, []).integer;

  static final _id_setStartPosition =
      jniAccessors.getMethodIDOf(_classRef, "setStartPosition", "(I)V");

  /// from: public void setStartPosition(int pos)
  ///
  /// Sets the start position of this cursor window.
  ///
  /// The start position is the zero-based index of the first row that this window contains
  /// relative to the entire result set of the Cursor.
  ///
  ///
  ///@param pos The new zero-based start position.
  void setStartPosition(int pos) => jniAccessors.callMethodWithArgs(
      reference, _id_setStartPosition, jni.JniType.voidType, [pos]).check();

  static final _id_getNumRows =
      jniAccessors.getMethodIDOf(_classRef, "getNumRows", "()I");

  /// from: public int getNumRows()
  ///
  /// Gets the number of rows in this window.
  ///@return The number of rows in this cursor window.
  int getNumRows() => jniAccessors.callMethodWithArgs(
      reference, _id_getNumRows, jni.JniType.intType, []).integer;

  static final _id_setNumColumns =
      jniAccessors.getMethodIDOf(_classRef, "setNumColumns", "(I)Z");

  /// from: public boolean setNumColumns(int columnNum)
  ///
  /// Sets the number of columns in this window.
  ///
  /// This method must be called before any rows are added to the window, otherwise
  /// it will fail to set the number of columns if it differs from the current number
  /// of columns.
  ///
  ///
  ///@param columnNum The new number of columns.
  ///@return True if successful.
  bool setNumColumns(int columnNum) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setNumColumns,
      jni.JniType.booleanType,
      [columnNum]).boolean;

  static final _id_allocRow =
      jniAccessors.getMethodIDOf(_classRef, "allocRow", "()Z");

  /// from: public boolean allocRow()
  ///
  /// Allocates a new row at the end of this cursor window.
  ///@return True if successful, false if the cursor window is out of memory.
  bool allocRow() => jniAccessors.callMethodWithArgs(
      reference, _id_allocRow, jni.JniType.booleanType, []).boolean;

  static final _id_freeLastRow =
      jniAccessors.getMethodIDOf(_classRef, "freeLastRow", "()V");

  /// from: public void freeLastRow()
  ///
  /// Frees the last row in this cursor window.
  void freeLastRow() => jniAccessors.callMethodWithArgs(
      reference, _id_freeLastRow, jni.JniType.voidType, []).check();

  static final _id_isNull1 =
      jniAccessors.getMethodIDOf(_classRef, "isNull", "(II)Z");

  /// from: public boolean isNull(int row, int column)
  ///
  /// Returns true if the field at the specified row and column index
  /// has type Cursor\#FIELD_TYPE_NULL.
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return True if the field has type Cursor\#FIELD_TYPE_NULL.
  ///@deprecated Use \#getType(int, int) instead.
  bool isNull1(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_isNull1, jni.JniType.booleanType, [row, column]).boolean;

  static final _id_isBlob =
      jniAccessors.getMethodIDOf(_classRef, "isBlob", "(II)Z");

  /// from: public boolean isBlob(int row, int column)
  ///
  /// Returns true if the field at the specified row and column index
  /// has type Cursor\#FIELD_TYPE_BLOB or Cursor\#FIELD_TYPE_NULL.
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return True if the field has type Cursor\#FIELD_TYPE_BLOB or
  /// Cursor\#FIELD_TYPE_NULL.
  ///@deprecated Use \#getType(int, int) instead.
  bool isBlob(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_isBlob, jni.JniType.booleanType, [row, column]).boolean;

  static final _id_isLong =
      jniAccessors.getMethodIDOf(_classRef, "isLong", "(II)Z");

  /// from: public boolean isLong(int row, int column)
  ///
  /// Returns true if the field at the specified row and column index
  /// has type Cursor\#FIELD_TYPE_INTEGER.
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return True if the field has type Cursor\#FIELD_TYPE_INTEGER.
  ///@deprecated Use \#getType(int, int) instead.
  bool isLong(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_isLong, jni.JniType.booleanType, [row, column]).boolean;

  static final _id_isFloat =
      jniAccessors.getMethodIDOf(_classRef, "isFloat", "(II)Z");

  /// from: public boolean isFloat(int row, int column)
  ///
  /// Returns true if the field at the specified row and column index
  /// has type Cursor\#FIELD_TYPE_FLOAT.
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return True if the field has type Cursor\#FIELD_TYPE_FLOAT.
  ///@deprecated Use \#getType(int, int) instead.
  bool isFloat(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_isFloat, jni.JniType.booleanType, [row, column]).boolean;

  static final _id_isString =
      jniAccessors.getMethodIDOf(_classRef, "isString", "(II)Z");

  /// from: public boolean isString(int row, int column)
  ///
  /// Returns true if the field at the specified row and column index
  /// has type Cursor\#FIELD_TYPE_STRING or Cursor\#FIELD_TYPE_NULL.
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return True if the field has type Cursor\#FIELD_TYPE_STRING
  /// or Cursor\#FIELD_TYPE_NULL.
  ///@deprecated Use \#getType(int, int) instead.
  bool isString(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_isString, jni.JniType.booleanType, [row, column]).boolean;

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "(II)I");

  /// from: public int getType(int row, int column)
  ///
  /// Returns the type of the field at the specified row and column index.
  ///
  /// The returned field types are:
  /// <ul>
  /// <li>Cursor\#FIELD_TYPE_NULL</li>
  /// <li>Cursor\#FIELD_TYPE_INTEGER</li>
  /// <li>Cursor\#FIELD_TYPE_FLOAT</li>
  /// <li>Cursor\#FIELD_TYPE_STRING</li>
  /// <li>Cursor\#FIELD_TYPE_BLOB</li>
  /// </ul>
  ///
  ///
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return The field type.
  int getType(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getType, jni.JniType.intType, [row, column]).integer;

  static final _id_getBlob =
      jniAccessors.getMethodIDOf(_classRef, "getBlob", "(II)[B");

  /// from: public byte[] getBlob(int row, int column)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the value of the field at the specified row and column index as a byte array.
  ///
  /// The result is determined as follows:
  /// <ul>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_NULL, then the result
  /// is <code>null</code>.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_BLOB, then the result
  /// is the blob value.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_STRING, then the result
  /// is the array of bytes that make up the internal representation of the
  /// string value.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_INTEGER or
  /// Cursor\#FIELD_TYPE_FLOAT, then a SQLiteException is thrown.</li>
  /// </ul>
  ///
  ///
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return The value of the field as a byte array.
  jni.JniObject getBlob(int row, int column) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getBlob, jni.JniType.objectType, [row, column]).object);

  static final _id_getString = jniAccessors.getMethodIDOf(
      _classRef, "getString", "(II)Ljava/lang/String;");

  /// from: public java.lang.String getString(int row, int column)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the value of the field at the specified row and column index as a string.
  ///
  /// The result is determined as follows:
  /// <ul>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_NULL, then the result
  /// is <code>null</code>.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_STRING, then the result
  /// is the string value.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_INTEGER, then the result
  /// is a string representation of the integer in decimal, obtained by formatting the
  /// value with the <code>printf</code> family of functions using
  /// format specifier <code>%lld</code>.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_FLOAT, then the result
  /// is a string representation of the floating-point value in decimal, obtained by
  /// formatting the value with the <code>printf</code> family of functions using
  /// format specifier <code>%g</code>.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_BLOB, then a
  /// SQLiteException is thrown.</li>
  /// </ul>
  ///
  ///
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return The value of the field as a string.
  jni.JniString getString(int row, int column) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getString, jni.JniType.objectType, [row, column]).object);

  static final _id_copyStringToBuffer = jniAccessors.getMethodIDOf(_classRef,
      "copyStringToBuffer", "(IILandroid/database/CharArrayBuffer;)V");

  /// from: public void copyStringToBuffer(int row, int column, android.database.CharArrayBuffer buffer)
  ///
  /// Copies the text of the field at the specified row and column index into
  /// a CharArrayBuffer.
  ///
  /// The buffer is populated as follows:
  /// <ul>
  /// <li>If the buffer is too small for the value to be copied, then it is
  /// automatically resized.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_NULL, then the buffer
  /// is set to an empty string.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_STRING, then the buffer
  /// is set to the contents of the string.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_INTEGER, then the buffer
  /// is set to a string representation of the integer in decimal, obtained by formatting the
  /// value with the <code>printf</code> family of functions using
  /// format specifier <code>%lld</code>.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_FLOAT, then the buffer is
  /// set to a string representation of the floating-point value in decimal, obtained by
  /// formatting the value with the <code>printf</code> family of functions using
  /// format specifier <code>%g</code>.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_BLOB, then a
  /// SQLiteException is thrown.</li>
  /// </ul>
  ///
  ///
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@param buffer The CharArrayBuffer to hold the string.  It is automatically
  /// resized if the requested string is larger than the buffer's current capacity.
  void copyStringToBuffer(
          int row, int column, chararraybuffer_.CharArrayBuffer buffer) =>
      jniAccessors.callMethodWithArgs(reference, _id_copyStringToBuffer,
          jni.JniType.voidType, [row, column, buffer.reference]).check();

  static final _id_getLong =
      jniAccessors.getMethodIDOf(_classRef, "getLong", "(II)J");

  /// from: public long getLong(int row, int column)
  ///
  /// Gets the value of the field at the specified row and column index as a <code>long</code>.
  ///
  /// The result is determined as follows:
  /// <ul>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_NULL, then the result
  /// is <code>0L</code>.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_STRING, then the result
  /// is the value obtained by parsing the string value with <code>strtoll</code>.
  /// <li>If the field is of type Cursor\#FIELD_TYPE_INTEGER, then the result
  /// is the <code>long</code> value.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_FLOAT, then the result
  /// is the floating-point value converted to a <code>long</code>.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_BLOB, then a
  /// SQLiteException is thrown.</li>
  /// </ul>
  ///
  ///
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return The value of the field as a <code>long</code>.
  int getLong(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getLong, jni.JniType.longType, [row, column]).long;

  static final _id_getDouble =
      jniAccessors.getMethodIDOf(_classRef, "getDouble", "(II)D");

  /// from: public double getDouble(int row, int column)
  ///
  /// Gets the value of the field at the specified row and column index as a
  /// <code>double</code>.
  ///
  /// The result is determined as follows:
  /// <ul>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_NULL, then the result
  /// is <code>0.0</code>.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_STRING, then the result
  /// is the value obtained by parsing the string value with <code>strtod</code>.
  /// <li>If the field is of type Cursor\#FIELD_TYPE_INTEGER, then the result
  /// is the integer value converted to a <code>double</code>.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_FLOAT, then the result
  /// is the <code>double</code> value.</li>
  /// <li>If the field is of type Cursor\#FIELD_TYPE_BLOB, then a
  /// SQLiteException is thrown.</li>
  /// </ul>
  ///
  ///
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return The value of the field as a <code>double</code>.
  double getDouble(int row, int column) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getDouble,
      jni.JniType.doubleType,
      [row, column]).doubleFloat;

  static final _id_getShort =
      jniAccessors.getMethodIDOf(_classRef, "getShort", "(II)S");

  /// from: public short getShort(int row, int column)
  ///
  /// Gets the value of the field at the specified row and column index as a
  /// <code>short</code>.
  ///
  /// The result is determined by invoking \#getLong and converting the
  /// result to <code>short</code>.
  ///
  ///
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return The value of the field as a <code>short</code>.
  int getShort(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getShort, jni.JniType.shortType, [row, column]).short;

  static final _id_getInt =
      jniAccessors.getMethodIDOf(_classRef, "getInt", "(II)I");

  /// from: public int getInt(int row, int column)
  ///
  /// Gets the value of the field at the specified row and column index as an
  /// <code>int</code>.
  ///
  /// The result is determined by invoking \#getLong and converting the
  /// result to <code>int</code>.
  ///
  ///
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return The value of the field as an <code>int</code>.
  int getInt(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getInt, jni.JniType.intType, [row, column]).integer;

  static final _id_getFloat =
      jniAccessors.getMethodIDOf(_classRef, "getFloat", "(II)F");

  /// from: public float getFloat(int row, int column)
  ///
  /// Gets the value of the field at the specified row and column index as a
  /// <code>float</code>.
  ///
  /// The result is determined by invoking \#getDouble and converting the
  /// result to <code>float</code>.
  ///
  ///
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return The value of the field as an <code>float</code>.
  double getFloat(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getFloat, jni.JniType.floatType, [row, column]).float;

  static final _id_putBlob =
      jniAccessors.getMethodIDOf(_classRef, "putBlob", "([BII)Z");

  /// from: public boolean putBlob(byte[] value, int row, int column)
  ///
  /// Copies a byte array into the field at the specified row and column index.
  ///@param value The value to store.
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return True if successful.
  bool putBlob(jni.JniObject value, int row, int column) =>
      jniAccessors.callMethodWithArgs(reference, _id_putBlob,
          jni.JniType.booleanType, [value.reference, row, column]).boolean;

  static final _id_putString = jniAccessors.getMethodIDOf(
      _classRef, "putString", "(Ljava/lang/String;II)Z");

  /// from: public boolean putString(java.lang.String value, int row, int column)
  ///
  /// Copies a string into the field at the specified row and column index.
  ///@param value The value to store.
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return True if successful.
  bool putString(jni.JniString value, int row, int column) =>
      jniAccessors.callMethodWithArgs(reference, _id_putString,
          jni.JniType.booleanType, [value.reference, row, column]).boolean;

  static final _id_putLong =
      jniAccessors.getMethodIDOf(_classRef, "putLong", "(JII)Z");

  /// from: public boolean putLong(long value, int row, int column)
  ///
  /// Puts a long integer into the field at the specified row and column index.
  ///@param value The value to store.
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return True if successful.
  bool putLong(int value, int row, int column) =>
      jniAccessors.callMethodWithArgs(reference, _id_putLong,
          jni.JniType.booleanType, [value, row, column]).boolean;

  static final _id_putDouble =
      jniAccessors.getMethodIDOf(_classRef, "putDouble", "(DII)Z");

  /// from: public boolean putDouble(double value, int row, int column)
  ///
  /// Puts a double-precision floating point value into the field at the
  /// specified row and column index.
  ///@param value The value to store.
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return True if successful.
  bool putDouble(double value, int row, int column) =>
      jniAccessors.callMethodWithArgs(reference, _id_putDouble,
          jni.JniType.booleanType, [value, row, column]).boolean;

  static final _id_putNull =
      jniAccessors.getMethodIDOf(_classRef, "putNull", "(II)Z");

  /// from: public boolean putNull(int row, int column)
  ///
  /// Puts a null value into the field at the specified row and column index.
  ///@param row The zero-based row index.
  ///@param column The zero-based column index.
  ///@return True if successful.
  bool putNull(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_putNull, jni.JniType.booleanType, [row, column]).boolean;

  static final _id_newFromParcel = jniAccessors.getStaticMethodIDOf(_classRef,
      "newFromParcel", "(Landroid/os/Parcel;)Landroid/database/CursorWindow;");

  /// from: static public android.database.CursorWindow newFromParcel(android.os.Parcel p)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static CursorWindow newFromParcel(parcel_.Parcel p) =>
      CursorWindow.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_newFromParcel, jni.JniType.objectType, [p.reference]).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_onAllReferencesReleased =
      jniAccessors.getMethodIDOf(_classRef, "onAllReferencesReleased", "()V");

  /// from: protected void onAllReferencesReleased()
  void onAllReferencesReleased() => jniAccessors.callMethodWithArgs(
      reference, _id_onAllReferencesReleased, jni.JniType.voidType, []).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
