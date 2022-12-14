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

import "BaseAdapter.dart" as baseadapter_;

import "../content/Context.dart" as context_;

import "../database/Cursor.dart" as cursor_;

import "../content/res/Resources.dart" as resources_;

import "../view/View.dart" as view_;

import "../view/ViewGroup.dart" as viewgroup_;

import "Filter.dart" as filter_;

import "FilterQueryProvider.dart" as filterqueryprovider_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.CursorAdapter
///
/// Adapter that exposes data from a android.database.Cursor Cursor to a
/// android.widget.ListView ListView widget.
///
/// The Cursor must include a column named "_id" or this class will not work.
/// Additionally, using android.database.MergeCursor with this class will
/// not work if the merged Cursors have overlapping values in their "_id"
/// columns.
class CursorAdapter extends baseadapter_.BaseAdapter {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/CursorAdapter");
  CursorAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int FLAG_AUTO_REQUERY
  ///
  /// If set the adapter will call requery() on the cursor whenever a content change
  /// notification is delivered. Implies \#FLAG_REGISTER_CONTENT_OBSERVER.
  ///@deprecated This option is discouraged, as it results in Cursor queries
  /// being performed on the application's UI thread and thus can cause poor
  /// responsiveness or even Application Not Responding errors.  As an alternative,
  /// use android.app.LoaderManager with a android.content.CursorLoader.
  static const FLAG_AUTO_REQUERY = 1;

  /// from: static public final int FLAG_REGISTER_CONTENT_OBSERVER
  ///
  /// If set the adapter will register a content observer on the cursor and will call
  /// \#onContentChanged() when a notification comes in.  Be careful when
  /// using this flag: you will need to unset the current Cursor from the adapter
  /// to avoid leaks due to its registered observers.  This flag is not needed
  /// when using a CursorAdapter with a
  /// android.content.CursorLoader.
  static const FLAG_REGISTER_CONTENT_OBSERVER = 2;

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/database/Cursor;)V");

  /// from: public void <init>(android.content.Context context, android.database.Cursor c)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor that always enables auto-requery.
  ///@deprecated This option is discouraged, as it results in Cursor queries
  /// being performed on the application's UI thread and thus can cause poor
  /// responsiveness or even Application Not Responding errors.  As an alternative,
  /// use android.app.LoaderManager with a android.content.CursorLoader.
  ///@param c The cursor from which to get the data.
  ///@param context The context
  CursorAdapter.ctor1(context_.Context context, cursor_.Cursor c)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, c.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/database/Cursor;Z)V");

  /// from: public void <init>(android.content.Context context, android.database.Cursor c, boolean autoRequery)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor that allows control over auto-requery.  It is recommended
  /// you not use this, but instead \#CursorAdapter(Context, Cursor, int).
  /// When using this constructor, \#FLAG_REGISTER_CONTENT_OBSERVER
  /// will always be set.
  ///@param c The cursor from which to get the data.
  ///@param context The context
  ///@param autoRequery If true the adapter will call requery() on the
  ///                    cursor whenever it changes so the most recent
  ///                    data is always displayed.  Using true here is discouraged.
  CursorAdapter.ctor2(
      context_.Context context, cursor_.Cursor c, bool autoRequery)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, c.reference, autoRequery]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/database/Cursor;I)V");

  /// from: public void <init>(android.content.Context context, android.database.Cursor c, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Recommended constructor.
  ///@param c The cursor from which to get the data.
  ///@param context The context
  ///@param flags Flags used to determine the behavior of the adapter; may
  /// be any combination of \#FLAG_AUTO_REQUERY and
  /// \#FLAG_REGISTER_CONTENT_OBSERVER.
  CursorAdapter.ctor3(context_.Context context, cursor_.Cursor c, int flags)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3,
            [context.reference, c.reference, flags]).object);

  static final _id_init = jniAccessors.getMethodIDOf(_classRef, "init",
      "(Landroid/content/Context;Landroid/database/Cursor;Z)V");

  /// from: protected void init(android.content.Context context, android.database.Cursor c, boolean autoRequery)
  ///
  /// @deprecated Don't use this, use the normal constructor.  This will
  /// be removed in the future.
  void init(context_.Context context, cursor_.Cursor c, bool autoRequery) =>
      jniAccessors.callMethodWithArgs(reference, _id_init, jni.JniType.voidType,
          [context.reference, c.reference, autoRequery]).check();

  static final _id_setDropDownViewTheme = jniAccessors.getMethodIDOf(_classRef,
      "setDropDownViewTheme", "(Landroid/content/res/Resources\$Theme;)V");

  /// from: public void setDropDownViewTheme(android.content.res.Resources.Theme theme)
  ///
  /// Sets the Resources.Theme against which drop-down views are
  /// inflated.
  ///
  /// By default, drop-down views are inflated against the theme of the
  /// Context passed to the adapter's constructor.
  ///@param theme the theme against which to inflate drop-down views or
  ///              {@code null} to use the theme from the adapter's context
  ///@see \#newDropDownView(Context, Cursor, ViewGroup)
  void setDropDownViewTheme(resources_.Resources_Theme theme) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDropDownViewTheme,
          jni.JniType.voidType, [theme.reference]).check();

  static final _id_getDropDownViewTheme = jniAccessors.getMethodIDOf(_classRef,
      "getDropDownViewTheme", "()Landroid/content/res/Resources\$Theme;");

  /// from: public android.content.res.Resources.Theme getDropDownViewTheme()
  /// The returned object must be deleted after use, by calling the `delete` method.
  resources_.Resources_Theme getDropDownViewTheme() =>
      resources_.Resources_Theme.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDropDownViewTheme,
          jni.JniType.objectType, []).object);

  static final _id_getCursor = jniAccessors.getMethodIDOf(
      _classRef, "getCursor", "()Landroid/database/Cursor;");

  /// from: public android.database.Cursor getCursor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the cursor.
  ///@return the cursor.
  cursor_.Cursor getCursor() =>
      cursor_.Cursor.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCursor, jni.JniType.objectType, []).object);

  static final _id_getCount =
      jniAccessors.getMethodIDOf(_classRef, "getCount", "()I");

  /// from: public int getCount()
  ///
  /// @see android.widget.ListAdapter\#getCount()
  int getCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getCount, jni.JniType.intType, []).integer;

  static final _id_getItem =
      jniAccessors.getMethodIDOf(_classRef, "getItem", "(I)Ljava/lang/Object;");

  /// from: public java.lang.Object getItem(int position)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @see android.widget.ListAdapter\#getItem(int)
  jni.JniObject getItem(int position) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getItem, jni.JniType.objectType, [position]).object);

  static final _id_getItemId =
      jniAccessors.getMethodIDOf(_classRef, "getItemId", "(I)J");

  /// from: public long getItemId(int position)
  ///
  /// @see android.widget.ListAdapter\#getItemId(int)
  int getItemId(int position) => jniAccessors.callMethodWithArgs(
      reference, _id_getItemId, jni.JniType.longType, [position]).long;

  static final _id_hasStableIds =
      jniAccessors.getMethodIDOf(_classRef, "hasStableIds", "()Z");

  /// from: public boolean hasStableIds()
  bool hasStableIds() => jniAccessors.callMethodWithArgs(
      reference, _id_hasStableIds, jni.JniType.booleanType, []).boolean;

  static final _id_getView = jniAccessors.getMethodIDOf(_classRef, "getView",
      "(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public android.view.View getView(int position, android.view.View convertView, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @see android.widget.ListAdapter\#getView(int, View, ViewGroup)
  view_.View getView(
          int position, view_.View convertView, viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getView,
          jni.JniType.objectType,
          [position, convertView.reference, parent.reference]).object);

  static final _id_getDropDownView = jniAccessors.getMethodIDOf(
      _classRef,
      "getDropDownView",
      "(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public android.view.View getDropDownView(int position, android.view.View convertView, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  view_.View getDropDownView(
          int position, view_.View convertView, viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDropDownView,
          jni.JniType.objectType,
          [position, convertView.reference, parent.reference]).object);

  static final _id_newView = jniAccessors.getMethodIDOf(_classRef, "newView",
      "(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public abstract android.view.View newView(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Makes a new view to hold the data pointed to by cursor.
  ///@param context Interface to application's global information
  ///@param cursor The cursor from which to get the data. The cursor is already
  /// moved to the correct position.
  ///@param parent The parent to which the new view is attached to
  ///@return the newly created view.
  view_.View newView(context_.Context context, cursor_.Cursor cursor,
          viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_newView,
          jni.JniType.objectType,
          [context.reference, cursor.reference, parent.reference]).object);

  static final _id_newDropDownView = jniAccessors.getMethodIDOf(
      _classRef,
      "newDropDownView",
      "(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public android.view.View newDropDownView(android.content.Context context, android.database.Cursor cursor, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Makes a new drop down view to hold the data pointed to by cursor.
  ///@param context Interface to application's global information
  ///@param cursor The cursor from which to get the data. The cursor is already
  /// moved to the correct position.
  ///@param parent The parent to which the new view is attached to
  ///@return the newly created view.
  view_.View newDropDownView(context_.Context context, cursor_.Cursor cursor,
          viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_newDropDownView,
          jni.JniType.objectType,
          [context.reference, cursor.reference, parent.reference]).object);

  static final _id_bindView = jniAccessors.getMethodIDOf(_classRef, "bindView",
      "(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V");

  /// from: public abstract void bindView(android.view.View view, android.content.Context context, android.database.Cursor cursor)
  ///
  /// Bind an existing view to the data pointed to by cursor
  ///@param view Existing view, returned earlier by newView
  ///@param context Interface to application's global information
  ///@param cursor The cursor from which to get the data. The cursor is already
  /// moved to the correct position.
  void bindView(
          view_.View view, context_.Context context, cursor_.Cursor cursor) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_bindView,
          jni.JniType.voidType,
          [view.reference, context.reference, cursor.reference]).check();

  static final _id_changeCursor = jniAccessors.getMethodIDOf(
      _classRef, "changeCursor", "(Landroid/database/Cursor;)V");

  /// from: public void changeCursor(android.database.Cursor cursor)
  ///
  /// Change the underlying cursor to a new cursor. If there is an existing cursor it will be
  /// closed.
  ///@param cursor The new cursor to be used
  void changeCursor(cursor_.Cursor cursor) => jniAccessors.callMethodWithArgs(
      reference,
      _id_changeCursor,
      jni.JniType.voidType,
      [cursor.reference]).check();

  static final _id_swapCursor = jniAccessors.getMethodIDOf(_classRef,
      "swapCursor", "(Landroid/database/Cursor;)Landroid/database/Cursor;");

  /// from: public android.database.Cursor swapCursor(android.database.Cursor newCursor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Swap in a new Cursor, returning the old Cursor.  Unlike
  /// \#changeCursor(Cursor), the returned old Cursor is _not_
  /// closed.
  ///@param newCursor The new cursor to be used.
  ///@return Returns the previously set Cursor, or null if there wasa not one.
  /// If the given new Cursor is the same instance is the previously set
  /// Cursor, null is also returned.
  cursor_.Cursor swapCursor(cursor_.Cursor newCursor) =>
      cursor_.Cursor.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_swapCursor,
          jni.JniType.objectType,
          [newCursor.reference]).object);

  static final _id_convertToString = jniAccessors.getMethodIDOf(_classRef,
      "convertToString", "(Landroid/database/Cursor;)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence convertToString(android.database.Cursor cursor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Converts the cursor into a CharSequence. Subclasses should override this
  /// method to convert their results. The default implementation returns an
  /// empty String for null values or the default String representation of
  /// the value.
  ///
  ///@param cursor the cursor to convert to a CharSequence
  ///@return a CharSequence representing the value
  jni.JniObject convertToString(cursor_.Cursor cursor) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_convertToString,
          jni.JniType.objectType,
          [cursor.reference]).object);

  static final _id_runQueryOnBackgroundThread = jniAccessors.getMethodIDOf(
      _classRef,
      "runQueryOnBackgroundThread",
      "(Ljava/lang/CharSequence;)Landroid/database/Cursor;");

  /// from: public android.database.Cursor runQueryOnBackgroundThread(java.lang.CharSequence constraint)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Runs a query with the specified constraint. This query is requested
  /// by the filter attached to this adapter.
  ///
  /// The query is provided by a
  /// android.widget.FilterQueryProvider.
  /// If no provider is specified, the current cursor is not filtered and returned.
  ///
  /// After this method returns the resulting cursor is passed to \#changeCursor(Cursor)
  /// and the previous cursor is closed.
  ///
  /// This method is always executed on a background thread, not on the
  /// application's main thread (or UI thread.)
  ///
  /// Contract: when constraint is null or empty, the original results,
  /// prior to any filtering, must be returned.
  ///
  /// This method may take several seconds to complete, so it should
  ///  *            only be called from a worker thread.
  ///@param constraint the constraint with which the query must be filtered
  ///@return a Cursor representing the results of the new query
  ///@see \#getFilter()
  ///@see \#getFilterQueryProvider()
  ///@see \#setFilterQueryProvider(android.widget.FilterQueryProvider)
  cursor_.Cursor runQueryOnBackgroundThread(jni.JniObject constraint) =>
      cursor_.Cursor.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_runQueryOnBackgroundThread,
          jni.JniType.objectType,
          [constraint.reference]).object);

  static final _id_getFilter = jniAccessors.getMethodIDOf(
      _classRef, "getFilter", "()Landroid/widget/Filter;");

  /// from: public android.widget.Filter getFilter()
  /// The returned object must be deleted after use, by calling the `delete` method.
  filter_.Filter getFilter() =>
      filter_.Filter.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFilter, jni.JniType.objectType, []).object);

  static final _id_getFilterQueryProvider = jniAccessors.getMethodIDOf(
      _classRef,
      "getFilterQueryProvider",
      "()Landroid/widget/FilterQueryProvider;");

  /// from: public android.widget.FilterQueryProvider getFilterQueryProvider()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the query filter provider used for filtering. When the
  /// provider is null, no filtering occurs.
  ///@return the current filter query provider or null if it does not exist
  ///@see \#setFilterQueryProvider(android.widget.FilterQueryProvider)
  ///@see \#runQueryOnBackgroundThread(CharSequence)
  filterqueryprovider_.FilterQueryProvider getFilterQueryProvider() =>
      filterqueryprovider_.FilterQueryProvider.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getFilterQueryProvider,
              jni.JniType.objectType, []).object);

  static final _id_setFilterQueryProvider = jniAccessors.getMethodIDOf(
      _classRef,
      "setFilterQueryProvider",
      "(Landroid/widget/FilterQueryProvider;)V");

  /// from: public void setFilterQueryProvider(android.widget.FilterQueryProvider filterQueryProvider)
  ///
  /// Sets the query filter provider used to filter the current Cursor.
  /// The provider's
  /// android.widget.FilterQueryProvider\#runQuery(CharSequence)
  /// method is invoked when filtering is requested by a client of
  /// this adapter.
  ///@param filterQueryProvider the filter query provider or null to remove it
  ///@see \#getFilterQueryProvider()
  ///@see \#runQueryOnBackgroundThread(CharSequence)
  void setFilterQueryProvider(
          filterqueryprovider_.FilterQueryProvider filterQueryProvider) =>
      jniAccessors.callMethodWithArgs(reference, _id_setFilterQueryProvider,
          jni.JniType.voidType, [filterQueryProvider.reference]).check();

  static final _id_onContentChanged =
      jniAccessors.getMethodIDOf(_classRef, "onContentChanged", "()V");

  /// from: protected void onContentChanged()
  ///
  /// Called when the ContentObserver on the cursor receives a change notification.
  /// The default implementation provides the auto-requery logic, but may be overridden by
  /// sub classes.
  ///@see ContentObserver\#onChange(boolean)
  void onContentChanged() => jniAccessors.callMethodWithArgs(
      reference, _id_onContentChanged, jni.JniType.voidType, []).check();
}
