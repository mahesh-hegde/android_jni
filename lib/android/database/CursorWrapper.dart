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

import "Cursor.dart" as cursor_;

import "../os/Bundle.dart" as bundle_;

import "CharArrayBuffer.dart" as chararraybuffer_;

import "ContentObserver.dart" as contentobserver_;

import "DataSetObserver.dart" as datasetobserver_;

import "../content/ContentResolver.dart" as contentresolver_;

import "../net/Uri.dart" as uri_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.CursorWrapper
///
/// Wrapper class for Cursor that delegates all calls to the actual cursor object.  The primary
/// use for this class is to extend a cursor while overriding only a subset of its methods.
class CursorWrapper extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/database/CursorWrapper");
  CursorWrapper.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/database/Cursor;)V");

  /// from: public void <init>(android.database.Cursor cursor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a cursor wrapper.
  ///@param cursor The underlying cursor to wrap.
  CursorWrapper(cursor_.Cursor cursor)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [cursor.reference]).object);

  static final _id_getWrappedCursor = jniAccessors.getMethodIDOf(
      _classRef, "getWrappedCursor", "()Landroid/database/Cursor;");

  /// from: public android.database.Cursor getWrappedCursor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the underlying cursor that is wrapped by this instance.
  ///@return The wrapped cursor.
  cursor_.Cursor getWrappedCursor() =>
      cursor_.Cursor.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getWrappedCursor, jni.JniType.objectType, []).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_isClosed =
      jniAccessors.getMethodIDOf(_classRef, "isClosed", "()Z");

  /// from: public boolean isClosed()
  bool isClosed() => jniAccessors.callMethodWithArgs(
      reference, _id_isClosed, jni.JniType.booleanType, []).boolean;

  static final _id_getCount =
      jniAccessors.getMethodIDOf(_classRef, "getCount", "()I");

  /// from: public int getCount()
  int getCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getCount, jni.JniType.intType, []).integer;

  static final _id_deactivate =
      jniAccessors.getMethodIDOf(_classRef, "deactivate", "()V");

  /// from: public void deactivate()
  void deactivate() => jniAccessors.callMethodWithArgs(
      reference, _id_deactivate, jni.JniType.voidType, []).check();

  static final _id_moveToFirst =
      jniAccessors.getMethodIDOf(_classRef, "moveToFirst", "()Z");

  /// from: public boolean moveToFirst()
  bool moveToFirst() => jniAccessors.callMethodWithArgs(
      reference, _id_moveToFirst, jni.JniType.booleanType, []).boolean;

  static final _id_getColumnCount =
      jniAccessors.getMethodIDOf(_classRef, "getColumnCount", "()I");

  /// from: public int getColumnCount()
  int getColumnCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getColumnCount, jni.JniType.intType, []).integer;

  static final _id_getColumnIndex = jniAccessors.getMethodIDOf(
      _classRef, "getColumnIndex", "(Ljava/lang/String;)I");

  /// from: public int getColumnIndex(java.lang.String columnName)
  int getColumnIndex(jni.JniString columnName) =>
      jniAccessors.callMethodWithArgs(reference, _id_getColumnIndex,
          jni.JniType.intType, [columnName.reference]).integer;

  static final _id_getColumnIndexOrThrow = jniAccessors.getMethodIDOf(
      _classRef, "getColumnIndexOrThrow", "(Ljava/lang/String;)I");

  /// from: public int getColumnIndexOrThrow(java.lang.String columnName)
  int getColumnIndexOrThrow(jni.JniString columnName) =>
      jniAccessors.callMethodWithArgs(reference, _id_getColumnIndexOrThrow,
          jni.JniType.intType, [columnName.reference]).integer;

  static final _id_getColumnName = jniAccessors.getMethodIDOf(
      _classRef, "getColumnName", "(I)Ljava/lang/String;");

  /// from: public java.lang.String getColumnName(int columnIndex)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString getColumnName(int columnIndex) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getColumnName, jni.JniType.objectType, [columnIndex]).object);

  static final _id_getColumnNames = jniAccessors.getMethodIDOf(
      _classRef, "getColumnNames", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getColumnNames()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getColumnNames() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getColumnNames, jni.JniType.objectType, []).object);

  static final _id_getDouble =
      jniAccessors.getMethodIDOf(_classRef, "getDouble", "(I)D");

  /// from: public double getDouble(int columnIndex)
  double getDouble(int columnIndex) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getDouble,
      jni.JniType.doubleType,
      [columnIndex]).doubleFloat;

  static final _id_setExtras = jniAccessors.getMethodIDOf(
      _classRef, "setExtras", "(Landroid/os/Bundle;)V");

  /// from: public void setExtras(android.os.Bundle extras)
  void setExtras(bundle_.Bundle extras) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setExtras,
      jni.JniType.voidType,
      [extras.reference]).check();

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  bundle_.Bundle getExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_getFloat =
      jniAccessors.getMethodIDOf(_classRef, "getFloat", "(I)F");

  /// from: public float getFloat(int columnIndex)
  double getFloat(int columnIndex) => jniAccessors.callMethodWithArgs(
      reference, _id_getFloat, jni.JniType.floatType, [columnIndex]).float;

  static final _id_getInt =
      jniAccessors.getMethodIDOf(_classRef, "getInt", "(I)I");

  /// from: public int getInt(int columnIndex)
  int getInt(int columnIndex) => jniAccessors.callMethodWithArgs(
      reference, _id_getInt, jni.JniType.intType, [columnIndex]).integer;

  static final _id_getLong =
      jniAccessors.getMethodIDOf(_classRef, "getLong", "(I)J");

  /// from: public long getLong(int columnIndex)
  int getLong(int columnIndex) => jniAccessors.callMethodWithArgs(
      reference, _id_getLong, jni.JniType.longType, [columnIndex]).long;

  static final _id_getShort =
      jniAccessors.getMethodIDOf(_classRef, "getShort", "(I)S");

  /// from: public short getShort(int columnIndex)
  int getShort(int columnIndex) => jniAccessors.callMethodWithArgs(
      reference, _id_getShort, jni.JniType.shortType, [columnIndex]).short;

  static final _id_getString = jniAccessors.getMethodIDOf(
      _classRef, "getString", "(I)Ljava/lang/String;");

  /// from: public java.lang.String getString(int columnIndex)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString getString(int columnIndex) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getString, jni.JniType.objectType, [columnIndex]).object);

  static final _id_copyStringToBuffer = jniAccessors.getMethodIDOf(_classRef,
      "copyStringToBuffer", "(ILandroid/database/CharArrayBuffer;)V");

  /// from: public void copyStringToBuffer(int columnIndex, android.database.CharArrayBuffer buffer)
  void copyStringToBuffer(
          int columnIndex, chararraybuffer_.CharArrayBuffer buffer) =>
      jniAccessors.callMethodWithArgs(reference, _id_copyStringToBuffer,
          jni.JniType.voidType, [columnIndex, buffer.reference]).check();

  static final _id_getBlob =
      jniAccessors.getMethodIDOf(_classRef, "getBlob", "(I)[B");

  /// from: public byte[] getBlob(int columnIndex)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getBlob(int columnIndex) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getBlob, jni.JniType.objectType, [columnIndex]).object);

  static final _id_getWantsAllOnMoveCalls =
      jniAccessors.getMethodIDOf(_classRef, "getWantsAllOnMoveCalls", "()Z");

  /// from: public boolean getWantsAllOnMoveCalls()
  bool getWantsAllOnMoveCalls() => jniAccessors.callMethodWithArgs(reference,
      _id_getWantsAllOnMoveCalls, jni.JniType.booleanType, []).boolean;

  static final _id_isAfterLast =
      jniAccessors.getMethodIDOf(_classRef, "isAfterLast", "()Z");

  /// from: public boolean isAfterLast()
  bool isAfterLast() => jniAccessors.callMethodWithArgs(
      reference, _id_isAfterLast, jni.JniType.booleanType, []).boolean;

  static final _id_isBeforeFirst =
      jniAccessors.getMethodIDOf(_classRef, "isBeforeFirst", "()Z");

  /// from: public boolean isBeforeFirst()
  bool isBeforeFirst() => jniAccessors.callMethodWithArgs(
      reference, _id_isBeforeFirst, jni.JniType.booleanType, []).boolean;

  static final _id_isFirst =
      jniAccessors.getMethodIDOf(_classRef, "isFirst", "()Z");

  /// from: public boolean isFirst()
  bool isFirst() => jniAccessors.callMethodWithArgs(
      reference, _id_isFirst, jni.JniType.booleanType, []).boolean;

  static final _id_isLast =
      jniAccessors.getMethodIDOf(_classRef, "isLast", "()Z");

  /// from: public boolean isLast()
  bool isLast() => jniAccessors.callMethodWithArgs(
      reference, _id_isLast, jni.JniType.booleanType, []).boolean;

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "(I)I");

  /// from: public int getType(int columnIndex)
  int getType(int columnIndex) => jniAccessors.callMethodWithArgs(
      reference, _id_getType, jni.JniType.intType, [columnIndex]).integer;

  static final _id_isNull1 =
      jniAccessors.getMethodIDOf(_classRef, "isNull", "(I)Z");

  /// from: public boolean isNull(int columnIndex)
  bool isNull1(int columnIndex) => jniAccessors.callMethodWithArgs(
      reference, _id_isNull1, jni.JniType.booleanType, [columnIndex]).boolean;

  static final _id_moveToLast =
      jniAccessors.getMethodIDOf(_classRef, "moveToLast", "()Z");

  /// from: public boolean moveToLast()
  bool moveToLast() => jniAccessors.callMethodWithArgs(
      reference, _id_moveToLast, jni.JniType.booleanType, []).boolean;

  static final _id_move = jniAccessors.getMethodIDOf(_classRef, "move", "(I)Z");

  /// from: public boolean move(int offset)
  bool move(int offset) => jniAccessors.callMethodWithArgs(
      reference, _id_move, jni.JniType.booleanType, [offset]).boolean;

  static final _id_moveToPosition =
      jniAccessors.getMethodIDOf(_classRef, "moveToPosition", "(I)Z");

  /// from: public boolean moveToPosition(int position)
  bool moveToPosition(int position) => jniAccessors.callMethodWithArgs(
      reference,
      _id_moveToPosition,
      jni.JniType.booleanType,
      [position]).boolean;

  static final _id_moveToNext =
      jniAccessors.getMethodIDOf(_classRef, "moveToNext", "()Z");

  /// from: public boolean moveToNext()
  bool moveToNext() => jniAccessors.callMethodWithArgs(
      reference, _id_moveToNext, jni.JniType.booleanType, []).boolean;

  static final _id_getPosition =
      jniAccessors.getMethodIDOf(_classRef, "getPosition", "()I");

  /// from: public int getPosition()
  int getPosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getPosition, jni.JniType.intType, []).integer;

  static final _id_moveToPrevious =
      jniAccessors.getMethodIDOf(_classRef, "moveToPrevious", "()Z");

  /// from: public boolean moveToPrevious()
  bool moveToPrevious() => jniAccessors.callMethodWithArgs(
      reference, _id_moveToPrevious, jni.JniType.booleanType, []).boolean;

  static final _id_registerContentObserver = jniAccessors.getMethodIDOf(
      _classRef,
      "registerContentObserver",
      "(Landroid/database/ContentObserver;)V");

  /// from: public void registerContentObserver(android.database.ContentObserver observer)
  void registerContentObserver(contentobserver_.ContentObserver observer) =>
      jniAccessors.callMethodWithArgs(reference, _id_registerContentObserver,
          jni.JniType.voidType, [observer.reference]).check();

  static final _id_registerDataSetObserver = jniAccessors.getMethodIDOf(
      _classRef,
      "registerDataSetObserver",
      "(Landroid/database/DataSetObserver;)V");

  /// from: public void registerDataSetObserver(android.database.DataSetObserver observer)
  void registerDataSetObserver(datasetobserver_.DataSetObserver observer) =>
      jniAccessors.callMethodWithArgs(reference, _id_registerDataSetObserver,
          jni.JniType.voidType, [observer.reference]).check();

  static final _id_requery =
      jniAccessors.getMethodIDOf(_classRef, "requery", "()Z");

  /// from: public boolean requery()
  bool requery() => jniAccessors.callMethodWithArgs(
      reference, _id_requery, jni.JniType.booleanType, []).boolean;

  static final _id_respond = jniAccessors.getMethodIDOf(
      _classRef, "respond", "(Landroid/os/Bundle;)Landroid/os/Bundle;");

  /// from: public android.os.Bundle respond(android.os.Bundle extras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  bundle_.Bundle respond(bundle_.Bundle extras) =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_respond, jni.JniType.objectType, [extras.reference]).object);

  static final _id_setNotificationUri = jniAccessors.getMethodIDOf(
      _classRef,
      "setNotificationUri",
      "(Landroid/content/ContentResolver;Landroid/net/Uri;)V");

  /// from: public void setNotificationUri(android.content.ContentResolver cr, android.net.Uri uri)
  void setNotificationUri(contentresolver_.ContentResolver cr, uri_.Uri uri) =>
      jniAccessors.callMethodWithArgs(reference, _id_setNotificationUri,
          jni.JniType.voidType, [cr.reference, uri.reference]).check();

  static final _id_getNotificationUri = jniAccessors.getMethodIDOf(
      _classRef, "getNotificationUri", "()Landroid/net/Uri;");

  /// from: public android.net.Uri getNotificationUri()
  /// The returned object must be deleted after use, by calling the `delete` method.
  uri_.Uri getNotificationUri() =>
      uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getNotificationUri, jni.JniType.objectType, []).object);

  static final _id_unregisterContentObserver = jniAccessors.getMethodIDOf(
      _classRef,
      "unregisterContentObserver",
      "(Landroid/database/ContentObserver;)V");

  /// from: public void unregisterContentObserver(android.database.ContentObserver observer)
  void unregisterContentObserver(contentobserver_.ContentObserver observer) =>
      jniAccessors.callMethodWithArgs(reference, _id_unregisterContentObserver,
          jni.JniType.voidType, [observer.reference]).check();

  static final _id_unregisterDataSetObserver = jniAccessors.getMethodIDOf(
      _classRef,
      "unregisterDataSetObserver",
      "(Landroid/database/DataSetObserver;)V");

  /// from: public void unregisterDataSetObserver(android.database.DataSetObserver observer)
  void unregisterDataSetObserver(datasetobserver_.DataSetObserver observer) =>
      jniAccessors.callMethodWithArgs(reference, _id_unregisterDataSetObserver,
          jni.JniType.voidType, [observer.reference]).check();
}
