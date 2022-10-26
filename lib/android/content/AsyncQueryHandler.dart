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

import "../os/Handler.dart" as handler_;

import "ContentResolver.dart" as contentresolver_;

import "../os/Looper.dart" as looper_;

import "../net/Uri.dart" as uri_;

import "ContentValues.dart" as contentvalues_;

import "../database/Cursor.dart" as cursor_;

import "../os/Message.dart" as message_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.AsyncQueryHandler
///
/// A helper class to help make handling asynchronous ContentResolver
/// queries easier.
class AsyncQueryHandler extends handler_.Handler {
  static final _classRef =
      jniAccessors.getClassOf("android/content/AsyncQueryHandler");
  AsyncQueryHandler.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/ContentResolver;)V");

  /// from: public void <init>(android.content.ContentResolver cr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AsyncQueryHandler.ctor4(contentresolver_.ContentResolver cr)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor4, [cr.reference]).object);

  static final _id_createHandler = jniAccessors.getMethodIDOf(
      _classRef, "createHandler", "(Landroid/os/Looper;)Landroid/os/Handler;");

  /// from: protected android.os.Handler createHandler(android.os.Looper looper)
  /// The returned object must be deleted after use, by calling the `delete` method.
  handler_.Handler createHandler(looper_.Looper looper) =>
      handler_.Handler.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_createHandler,
          jni.JniType.objectType,
          [looper.reference]).object);

  static final _id_startQuery = jniAccessors.getMethodIDOf(
      _classRef,
      "startQuery",
      "(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void startQuery(int token, java.lang.Object cookie, android.net.Uri uri, java.lang.String[] projection, java.lang.String selection, java.lang.String[] selectionArgs, java.lang.String orderBy)
  ///
  /// This method begins an asynchronous query. When the query is done
  /// \#onQueryComplete is called.
  ///@param token A token passed into \#onQueryComplete to identify
  ///  the query.
  ///@param cookie An object that gets passed into \#onQueryComplete
  ///@param uri The URI, using the content:// scheme, for the content to
  ///         retrieve.
  ///@param projection A list of which columns to return. Passing null will
  ///         return all columns, which is discouraged to prevent reading data
  ///         from storage that isn't going to be used.
  ///@param selection A filter declaring which rows to return, formatted as an
  ///         SQL WHERE clause (excluding the WHERE itself). Passing null will
  ///         return all rows for the given URI.
  ///@param selectionArgs You may include ?s in selection, which will be
  ///         replaced by the values from selectionArgs, in the order that they
  ///         appear in the selection. The values will be bound as Strings.
  ///@param orderBy How to order the rows, formatted as an SQL ORDER BY
  ///         clause (excluding the ORDER BY itself). Passing null will use the
  ///         default sort order, which may be unordered.
  void startQuery(
          int token,
          jni.JniObject cookie,
          uri_.Uri uri,
          jni.JniObject projection,
          jni.JniString selection,
          jni.JniObject selectionArgs,
          jni.JniString orderBy) =>
      jniAccessors
          .callMethodWithArgs(reference, _id_startQuery, jni.JniType.voidType, [
        token,
        cookie.reference,
        uri.reference,
        projection.reference,
        selection.reference,
        selectionArgs.reference,
        orderBy.reference
      ]).check();

  static final _id_cancelOperation =
      jniAccessors.getMethodIDOf(_classRef, "cancelOperation", "(I)V");

  /// from: public final void cancelOperation(int token)
  ///
  /// Attempts to cancel operation that has not already started. Note that
  /// there is no guarantee that the operation will be canceled. They still may
  /// result in a call to on[Query/Insert/Update/Delete]Complete after this
  /// call has completed.
  ///@param token The token representing the operation to be canceled.
  ///  If multiple operations have the same token they will all be canceled.
  void cancelOperation(int token) => jniAccessors.callMethodWithArgs(
      reference, _id_cancelOperation, jni.JniType.voidType, [token]).check();

  static final _id_startInsert = jniAccessors.getMethodIDOf(
      _classRef,
      "startInsert",
      "(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V");

  /// from: public final void startInsert(int token, java.lang.Object cookie, android.net.Uri uri, android.content.ContentValues initialValues)
  ///
  /// This method begins an asynchronous insert. When the insert operation is
  /// done \#onInsertComplete is called.
  ///@param token A token passed into \#onInsertComplete to identify
  ///  the insert operation.
  ///@param cookie An object that gets passed into \#onInsertComplete
  ///@param uri the Uri passed to the insert operation.
  ///@param initialValues the ContentValues parameter passed to the insert operation.
  void startInsert(int token, jni.JniObject cookie, uri_.Uri uri,
          contentvalues_.ContentValues initialValues) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startInsert, jni.JniType.voidType, [
        token,
        cookie.reference,
        uri.reference,
        initialValues.reference
      ]).check();

  static final _id_startUpdate = jniAccessors.getMethodIDOf(
      _classRef,
      "startUpdate",
      "(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V");

  /// from: public final void startUpdate(int token, java.lang.Object cookie, android.net.Uri uri, android.content.ContentValues values, java.lang.String selection, java.lang.String[] selectionArgs)
  ///
  /// This method begins an asynchronous update. When the update operation is
  /// done \#onUpdateComplete is called.
  ///@param token A token passed into \#onUpdateComplete to identify
  ///  the update operation.
  ///@param cookie An object that gets passed into \#onUpdateComplete
  ///@param uri the Uri passed to the update operation.
  ///@param values the ContentValues parameter passed to the update operation.
  void startUpdate(
          int token,
          jni.JniObject cookie,
          uri_.Uri uri,
          contentvalues_.ContentValues values,
          jni.JniString selection,
          jni.JniObject selectionArgs) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startUpdate, jni.JniType.voidType, [
        token,
        cookie.reference,
        uri.reference,
        values.reference,
        selection.reference,
        selectionArgs.reference
      ]).check();

  static final _id_startDelete = jniAccessors.getMethodIDOf(
      _classRef,
      "startDelete",
      "(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V");

  /// from: public final void startDelete(int token, java.lang.Object cookie, android.net.Uri uri, java.lang.String selection, java.lang.String[] selectionArgs)
  ///
  /// This method begins an asynchronous delete. When the delete operation is
  /// done \#onDeleteComplete is called.
  ///@param token A token passed into \#onDeleteComplete to identify
  ///  the delete operation.
  ///@param cookie An object that gets passed into \#onDeleteComplete
  ///@param uri the Uri passed to the delete operation.
  ///@param selection the where clause.
  void startDelete(int token, jni.JniObject cookie, uri_.Uri uri,
          jni.JniString selection, jni.JniObject selectionArgs) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startDelete, jni.JniType.voidType, [
        token,
        cookie.reference,
        uri.reference,
        selection.reference,
        selectionArgs.reference
      ]).check();

  static final _id_onQueryComplete = jniAccessors.getMethodIDOf(_classRef,
      "onQueryComplete", "(ILjava/lang/Object;Landroid/database/Cursor;)V");

  /// from: protected void onQueryComplete(int token, java.lang.Object cookie, android.database.Cursor cursor)
  ///
  /// Called when an asynchronous query is completed.
  ///@param token the token to identify the query, passed in from
  ///            \#startQuery.
  ///@param cookie the cookie object passed in from \#startQuery.
  ///@param cursor The cursor holding the results from the query.
  void onQueryComplete(
          int token, jni.JniObject cookie, cursor_.Cursor cursor) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onQueryComplete,
          jni.JniType.voidType,
          [token, cookie.reference, cursor.reference]).check();

  static final _id_onInsertComplete = jniAccessors.getMethodIDOf(
      _classRef, "onInsertComplete", "(ILjava/lang/Object;Landroid/net/Uri;)V");

  /// from: protected void onInsertComplete(int token, java.lang.Object cookie, android.net.Uri uri)
  ///
  /// Called when an asynchronous insert is completed.
  ///@param token the token to identify the query, passed in from
  ///        \#startInsert.
  ///@param cookie the cookie object that's passed in from
  ///        \#startInsert.
  ///@param uri the uri returned from the insert operation.
  void onInsertComplete(int token, jni.JniObject cookie, uri_.Uri uri) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onInsertComplete,
          jni.JniType.voidType,
          [token, cookie.reference, uri.reference]).check();

  static final _id_onUpdateComplete = jniAccessors.getMethodIDOf(
      _classRef, "onUpdateComplete", "(ILjava/lang/Object;I)V");

  /// from: protected void onUpdateComplete(int token, java.lang.Object cookie, int result)
  ///
  /// Called when an asynchronous update is completed.
  ///@param token the token to identify the query, passed in from
  ///        \#startUpdate.
  ///@param cookie the cookie object that's passed in from
  ///        \#startUpdate.
  ///@param result the result returned from the update operation
  void onUpdateComplete(int token, jni.JniObject cookie, int result) =>
      jniAccessors.callMethodWithArgs(reference, _id_onUpdateComplete,
          jni.JniType.voidType, [token, cookie.reference, result]).check();

  static final _id_onDeleteComplete = jniAccessors.getMethodIDOf(
      _classRef, "onDeleteComplete", "(ILjava/lang/Object;I)V");

  /// from: protected void onDeleteComplete(int token, java.lang.Object cookie, int result)
  ///
  /// Called when an asynchronous delete is completed.
  ///@param token the token to identify the query, passed in from
  ///        \#startDelete.
  ///@param cookie the cookie object that's passed in from
  ///        \#startDelete.
  ///@param result the result returned from the delete operation
  void onDeleteComplete(int token, jni.JniObject cookie, int result) =>
      jniAccessors.callMethodWithArgs(reference, _id_onDeleteComplete,
          jni.JniType.voidType, [token, cookie.reference, result]).check();

  static final _id_handleMessage = jniAccessors.getMethodIDOf(
      _classRef, "handleMessage", "(Landroid/os/Message;)V");

  /// from: public void handleMessage(android.os.Message msg)
  void handleMessage(message_.Message msg) => jniAccessors.callMethodWithArgs(
      reference,
      _id_handleMessage,
      jni.JniType.voidType,
      [msg.reference]).check();
}

/// from: android.content.AsyncQueryHandler$WorkerHandler
class AsyncQueryHandler_WorkerHandler extends handler_.Handler {
  static final _classRef = jniAccessors
      .getClassOf("android/content/AsyncQueryHandler\$WorkerHandler");
  AsyncQueryHandler_WorkerHandler.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Looper;)V");

  /// from: public void <init>(android.os.Looper looper)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AsyncQueryHandler_WorkerHandler.ctor2(looper_.Looper looper)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [looper.reference]).object);

  static final _id_handleMessage = jniAccessors.getMethodIDOf(
      _classRef, "handleMessage", "(Landroid/os/Message;)V");

  /// from: public void handleMessage(android.os.Message msg)
  void handleMessage(message_.Message msg) => jniAccessors.callMethodWithArgs(
      reference,
      _id_handleMessage,
      jni.JniType.voidType,
      [msg.reference]).check();
}

/// from: android.content.AsyncQueryHandler$WorkerArgs
class AsyncQueryHandler_WorkerArgs extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/AsyncQueryHandler\$WorkerArgs");
  AsyncQueryHandler_WorkerArgs.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_cookie =
      jniAccessors.getFieldIDOf(_classRef, "cookie", "Ljava/lang/Object;");

  /// from: public java.lang.Object cookie
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject get cookie => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_cookie, jni.JniType.objectType)
      .object);

  /// from: public java.lang.Object cookie
  /// The returned object must be deleted after use, by calling the `delete` method.
  set cookie(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_cookie, value.reference);

  static final _id_handler =
      jniAccessors.getFieldIDOf(_classRef, "handler", "Landroid/os/Handler;");

  /// from: public android.os.Handler handler
  /// The returned object must be deleted after use, by calling the `delete` method.
  handler_.Handler get handler => handler_.Handler.fromRef(jniAccessors
      .getField(reference, _id_handler, jni.JniType.objectType)
      .object);

  /// from: public android.os.Handler handler
  /// The returned object must be deleted after use, by calling the `delete` method.
  set handler(handler_.Handler value) =>
      jniEnv.SetObjectField(reference, _id_handler, value.reference);

  static final _id_orderBy =
      jniAccessors.getFieldIDOf(_classRef, "orderBy", "Ljava/lang/String;");

  /// from: public java.lang.String orderBy
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString get orderBy => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_orderBy, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String orderBy
  /// The returned object must be deleted after use, by calling the `delete` method.
  set orderBy(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_orderBy, value.reference);

  static final _id_projection =
      jniAccessors.getFieldIDOf(_classRef, "projection", "[Ljava/lang/String;");

  /// from: public java.lang.String[] projection
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject get projection => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_projection, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String[] projection
  /// The returned object must be deleted after use, by calling the `delete` method.
  set projection(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_projection, value.reference);

  static final _id_result =
      jniAccessors.getFieldIDOf(_classRef, "result", "Ljava/lang/Object;");

  /// from: public java.lang.Object result
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject get result => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_result, jni.JniType.objectType)
      .object);

  /// from: public java.lang.Object result
  /// The returned object must be deleted after use, by calling the `delete` method.
  set result(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_result, value.reference);

  static final _id_selection =
      jniAccessors.getFieldIDOf(_classRef, "selection", "Ljava/lang/String;");

  /// from: public java.lang.String selection
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString get selection => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_selection, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String selection
  /// The returned object must be deleted after use, by calling the `delete` method.
  set selection(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_selection, value.reference);

  static final _id_selectionArgs = jniAccessors.getFieldIDOf(
      _classRef, "selectionArgs", "[Ljava/lang/String;");

  /// from: public java.lang.String[] selectionArgs
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject get selectionArgs => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_selectionArgs, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String[] selectionArgs
  /// The returned object must be deleted after use, by calling the `delete` method.
  set selectionArgs(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_selectionArgs, value.reference);

  static final _id_uri =
      jniAccessors.getFieldIDOf(_classRef, "uri", "Landroid/net/Uri;");

  /// from: public android.net.Uri uri
  /// The returned object must be deleted after use, by calling the `delete` method.
  uri_.Uri get uri => uri_.Uri.fromRef(
      jniAccessors.getField(reference, _id_uri, jni.JniType.objectType).object);

  /// from: public android.net.Uri uri
  /// The returned object must be deleted after use, by calling the `delete` method.
  set uri(uri_.Uri value) =>
      jniEnv.SetObjectField(reference, _id_uri, value.reference);

  static final _id_values = jniAccessors.getFieldIDOf(
      _classRef, "values", "Landroid/content/ContentValues;");

  /// from: public android.content.ContentValues values
  /// The returned object must be deleted after use, by calling the `delete` method.
  contentvalues_.ContentValues get values =>
      contentvalues_.ContentValues.fromRef(jniAccessors
          .getField(reference, _id_values, jni.JniType.objectType)
          .object);

  /// from: public android.content.ContentValues values
  /// The returned object must be deleted after use, by calling the `delete` method.
  set values(contentvalues_.ContentValues value) =>
      jniEnv.SetObjectField(reference, _id_values, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: protected void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AsyncQueryHandler_WorkerArgs()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}
