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

import "BaseExpandableListAdapter.dart" as baseexpandablelistadapter_;

import "../database/Cursor.dart" as cursor_;

import "../content/Context.dart" as context_;

import "../view/View.dart" as view_;

import "../view/ViewGroup.dart" as viewgroup_;

import "Filter.dart" as filter_;

import "FilterQueryProvider.dart" as filterqueryprovider_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.CursorTreeAdapter
///
/// An adapter that exposes data from a series of Cursors to an
/// ExpandableListView widget. The top-level Cursor (that is
/// given in the constructor) exposes the groups, while subsequent Cursors
/// returned from \#getChildrenCursor(Cursor) expose children within a
/// particular group. The Cursors must include a column named "_id" or this class
/// will not work.
class CursorTreeAdapter
    extends baseexpandablelistadapter_.BaseExpandableListAdapter {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/CursorTreeAdapter");
  CursorTreeAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/database/Cursor;Landroid/content/Context;)V");

  /// from: public void <init>(android.database.Cursor cursor, android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor. The adapter will call Cursor\#requery() on the cursor whenever
  /// it changes so that the most recent data is always displayed.
  ///@param cursor The cursor from which to get the data for the groups.
  CursorTreeAdapter.ctor1(cursor_.Cursor cursor, context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [cursor.reference, context.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/database/Cursor;Landroid/content/Context;Z)V");

  /// from: public void <init>(android.database.Cursor cursor, android.content.Context context, boolean autoRequery)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor.
  ///@param cursor The cursor from which to get the data for the groups.
  ///@param context The context
  ///@param autoRequery If true the adapter will call Cursor\#requery()
  ///        on the cursor whenever it changes so the most recent data is
  ///        always displayed.
  CursorTreeAdapter.ctor2(
      cursor_.Cursor cursor, context_.Context context, bool autoRequery)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [cursor.reference, context.reference, autoRequery]).object);

  static final _id_getChildrenCursor = jniAccessors.getMethodIDOf(
      _classRef,
      "getChildrenCursor",
      "(Landroid/database/Cursor;)Landroid/database/Cursor;");

  /// from: protected abstract android.database.Cursor getChildrenCursor(android.database.Cursor groupCursor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the Cursor for the children at the given group. Subclasses must
  /// implement this method to return the children data for a particular group.
  ///
  /// If you want to asynchronously query a provider to prevent blocking the
  /// UI, it is possible to return null and at a later time call
  /// \#setChildrenCursor(int, Cursor).
  ///
  /// It is your responsibility to manage this Cursor through the Activity
  /// lifecycle. It is a good idea to use Activity\#managedQuery which
  /// will handle this for you. In some situations, the adapter will deactivate
  /// the Cursor on its own, but this will not always be the case, so please
  /// ensure the Cursor is properly managed.
  ///@param groupCursor The cursor pointing to the group whose children cursor
  ///            should be returned
  ///@return The cursor for the children of a particular group, or null.
  cursor_.Cursor getChildrenCursor(cursor_.Cursor groupCursor) =>
      cursor_.Cursor.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getChildrenCursor,
          jni.JniType.objectType,
          [groupCursor.reference]).object);

  static final _id_setGroupCursor = jniAccessors.getMethodIDOf(
      _classRef, "setGroupCursor", "(Landroid/database/Cursor;)V");

  /// from: public void setGroupCursor(android.database.Cursor cursor)
  ///
  /// Sets the group Cursor.
  ///@param cursor The Cursor to set for the group. If there is an existing cursor
  /// it will be closed.
  void setGroupCursor(cursor_.Cursor cursor) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setGroupCursor,
      jni.JniType.voidType,
      [cursor.reference]).check();

  static final _id_setChildrenCursor = jniAccessors.getMethodIDOf(
      _classRef, "setChildrenCursor", "(ILandroid/database/Cursor;)V");

  /// from: public void setChildrenCursor(int groupPosition, android.database.Cursor childrenCursor)
  ///
  /// Sets the children Cursor for a particular group. If there is an existing cursor
  /// it will be closed.
  ///
  /// This is useful when asynchronously querying to prevent blocking the UI.
  ///@param groupPosition The group whose children are being set via this Cursor.
  ///@param childrenCursor The Cursor that contains the children of the group.
  void setChildrenCursor(int groupPosition, cursor_.Cursor childrenCursor) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setChildrenCursor,
          jni.JniType.voidType,
          [groupPosition, childrenCursor.reference]).check();

  static final _id_getChild = jniAccessors.getMethodIDOf(
      _classRef, "getChild", "(II)Landroid/database/Cursor;");

  /// from: public android.database.Cursor getChild(int groupPosition, int childPosition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  cursor_.Cursor getChild(int groupPosition, int childPosition) =>
      cursor_.Cursor.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getChild,
          jni.JniType.objectType,
          [groupPosition, childPosition]).object);

  static final _id_getChildId =
      jniAccessors.getMethodIDOf(_classRef, "getChildId", "(II)J");

  /// from: public long getChildId(int groupPosition, int childPosition)
  int getChildId(int groupPosition, int childPosition) =>
      jniAccessors.callMethodWithArgs(reference, _id_getChildId,
          jni.JniType.longType, [groupPosition, childPosition]).long;

  static final _id_getChildrenCount =
      jniAccessors.getMethodIDOf(_classRef, "getChildrenCount", "(I)I");

  /// from: public int getChildrenCount(int groupPosition)
  int getChildrenCount(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getChildrenCount,
      jni.JniType.intType,
      [groupPosition]).integer;

  static final _id_getGroup = jniAccessors.getMethodIDOf(
      _classRef, "getGroup", "(I)Landroid/database/Cursor;");

  /// from: public android.database.Cursor getGroup(int groupPosition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  cursor_.Cursor getGroup(int groupPosition) =>
      cursor_.Cursor.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getGroup, jni.JniType.objectType, [groupPosition]).object);

  static final _id_getGroupCount =
      jniAccessors.getMethodIDOf(_classRef, "getGroupCount", "()I");

  /// from: public int getGroupCount()
  int getGroupCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getGroupCount, jni.JniType.intType, []).integer;

  static final _id_getGroupId =
      jniAccessors.getMethodIDOf(_classRef, "getGroupId", "(I)J");

  /// from: public long getGroupId(int groupPosition)
  int getGroupId(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference, _id_getGroupId, jni.JniType.longType, [groupPosition]).long;

  static final _id_getGroupView = jniAccessors.getMethodIDOf(
      _classRef,
      "getGroupView",
      "(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public android.view.View getGroupView(int groupPosition, boolean isExpanded, android.view.View convertView, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  view_.View getGroupView(int groupPosition, bool isExpanded,
          view_.View convertView, viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getGroupView, jni.JniType.objectType, [
        groupPosition,
        isExpanded,
        convertView.reference,
        parent.reference
      ]).object);

  static final _id_newGroupView = jniAccessors.getMethodIDOf(
      _classRef,
      "newGroupView",
      "(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;");

  /// from: protected abstract android.view.View newGroupView(android.content.Context context, android.database.Cursor cursor, boolean isExpanded, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Makes a new group view to hold the group data pointed to by cursor.
  ///@param context Interface to application's global information
  ///@param cursor The group cursor from which to get the data. The cursor is
  ///            already moved to the correct position.
  ///@param isExpanded Whether the group is expanded.
  ///@param parent The parent to which the new view is attached to
  ///@return The newly created view.
  view_.View newGroupView(context_.Context context, cursor_.Cursor cursor,
          bool isExpanded, viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_newGroupView, jni.JniType.objectType, [
        context.reference,
        cursor.reference,
        isExpanded,
        parent.reference
      ]).object);

  static final _id_bindGroupView = jniAccessors.getMethodIDOf(
      _classRef,
      "bindGroupView",
      "(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V");

  /// from: protected abstract void bindGroupView(android.view.View view, android.content.Context context, android.database.Cursor cursor, boolean isExpanded)
  ///
  /// Bind an existing view to the group data pointed to by cursor.
  ///@param view Existing view, returned earlier by newGroupView.
  ///@param context Interface to application's global information
  ///@param cursor The cursor from which to get the data. The cursor is
  ///            already moved to the correct position.
  ///@param isExpanded Whether the group is expanded.
  void bindGroupView(view_.View view, context_.Context context,
          cursor_.Cursor cursor, bool isExpanded) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_bindGroupView, jni.JniType.voidType, [
        view.reference,
        context.reference,
        cursor.reference,
        isExpanded
      ]).check();

  static final _id_getChildView = jniAccessors.getMethodIDOf(
      _classRef,
      "getChildView",
      "(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public android.view.View getChildView(int groupPosition, int childPosition, boolean isLastChild, android.view.View convertView, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  view_.View getChildView(
          int groupPosition,
          int childPosition,
          bool isLastChild,
          view_.View convertView,
          viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getChildView, jni.JniType.objectType, [
        groupPosition,
        childPosition,
        isLastChild,
        convertView.reference,
        parent.reference
      ]).object);

  static final _id_newChildView = jniAccessors.getMethodIDOf(
      _classRef,
      "newChildView",
      "(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;");

  /// from: protected abstract android.view.View newChildView(android.content.Context context, android.database.Cursor cursor, boolean isLastChild, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Makes a new child view to hold the data pointed to by cursor.
  ///@param context Interface to application's global information
  ///@param cursor The cursor from which to get the data. The cursor is
  ///            already moved to the correct position.
  ///@param isLastChild Whether the child is the last child within its group.
  ///@param parent The parent to which the new view is attached to
  ///@return the newly created view.
  view_.View newChildView(context_.Context context, cursor_.Cursor cursor,
          bool isLastChild, viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_newChildView, jni.JniType.objectType, [
        context.reference,
        cursor.reference,
        isLastChild,
        parent.reference
      ]).object);

  static final _id_bindChildView = jniAccessors.getMethodIDOf(
      _classRef,
      "bindChildView",
      "(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V");

  /// from: protected abstract void bindChildView(android.view.View view, android.content.Context context, android.database.Cursor cursor, boolean isLastChild)
  ///
  /// Bind an existing view to the child data pointed to by cursor
  ///@param view Existing view, returned earlier by newChildView
  ///@param context Interface to application's global information
  ///@param cursor The cursor from which to get the data. The cursor is
  ///            already moved to the correct position.
  ///@param isLastChild Whether the child is the last child within its group.
  void bindChildView(view_.View view, context_.Context context,
          cursor_.Cursor cursor, bool isLastChild) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_bindChildView, jni.JniType.voidType, [
        view.reference,
        context.reference,
        cursor.reference,
        isLastChild
      ]).check();

  static final _id_isChildSelectable =
      jniAccessors.getMethodIDOf(_classRef, "isChildSelectable", "(II)Z");

  /// from: public boolean isChildSelectable(int groupPosition, int childPosition)
  bool isChildSelectable(int groupPosition, int childPosition) =>
      jniAccessors.callMethodWithArgs(reference, _id_isChildSelectable,
          jni.JniType.booleanType, [groupPosition, childPosition]).boolean;

  static final _id_hasStableIds =
      jniAccessors.getMethodIDOf(_classRef, "hasStableIds", "()Z");

  /// from: public boolean hasStableIds()
  bool hasStableIds() => jniAccessors.callMethodWithArgs(
      reference, _id_hasStableIds, jni.JniType.booleanType, []).boolean;

  static final _id_notifyDataSetChanged =
      jniAccessors.getMethodIDOf(_classRef, "notifyDataSetChanged", "()V");

  /// from: public void notifyDataSetChanged()
  void notifyDataSetChanged() => jniAccessors.callMethodWithArgs(
      reference, _id_notifyDataSetChanged, jni.JniType.voidType, []).check();

  static final _id_notifyDataSetChanged1 =
      jniAccessors.getMethodIDOf(_classRef, "notifyDataSetChanged", "(Z)V");

  /// from: public void notifyDataSetChanged(boolean releaseCursors)
  ///
  /// Notifies a data set change, but with the option of not releasing any
  /// cached cursors.
  ///@param releaseCursors Whether to release and deactivate any cached
  ///            cursors.
  void notifyDataSetChanged1(bool releaseCursors) =>
      jniAccessors.callMethodWithArgs(reference, _id_notifyDataSetChanged1,
          jni.JniType.voidType, [releaseCursors]).check();

  static final _id_notifyDataSetInvalidated =
      jniAccessors.getMethodIDOf(_classRef, "notifyDataSetInvalidated", "()V");

  /// from: public void notifyDataSetInvalidated()
  void notifyDataSetInvalidated() => jniAccessors.callMethodWithArgs(reference,
      _id_notifyDataSetInvalidated, jni.JniType.voidType, []).check();

  static final _id_onGroupCollapsed =
      jniAccessors.getMethodIDOf(_classRef, "onGroupCollapsed", "(I)V");

  /// from: public void onGroupCollapsed(int groupPosition)
  void onGroupCollapsed(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onGroupCollapsed,
      jni.JniType.voidType,
      [groupPosition]).check();

  static final _id_convertToString = jniAccessors.getMethodIDOf(_classRef,
      "convertToString", "(Landroid/database/Cursor;)Ljava/lang/String;");

  /// from: public java.lang.String convertToString(android.database.Cursor cursor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @see CursorAdapter\#convertToString(Cursor)
  jni.JniString convertToString(cursor_.Cursor cursor) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
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
  /// @see CursorAdapter\#runQueryOnBackgroundThread(CharSequence)
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
  /// @see CursorAdapter\#getFilterQueryProvider()
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
  /// @see CursorAdapter\#setFilterQueryProvider(FilterQueryProvider)
  void setFilterQueryProvider(
          filterqueryprovider_.FilterQueryProvider filterQueryProvider) =>
      jniAccessors.callMethodWithArgs(reference, _id_setFilterQueryProvider,
          jni.JniType.voidType, [filterQueryProvider.reference]).check();

  static final _id_changeCursor = jniAccessors.getMethodIDOf(
      _classRef, "changeCursor", "(Landroid/database/Cursor;)V");

  /// from: public void changeCursor(android.database.Cursor cursor)
  ///
  /// @see CursorAdapter\#changeCursor(Cursor)
  void changeCursor(cursor_.Cursor cursor) => jniAccessors.callMethodWithArgs(
      reference,
      _id_changeCursor,
      jni.JniType.voidType,
      [cursor.reference]).check();

  static final _id_getCursor = jniAccessors.getMethodIDOf(
      _classRef, "getCursor", "()Landroid/database/Cursor;");

  /// from: public android.database.Cursor getCursor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @see CursorAdapter\#getCursor()
  cursor_.Cursor getCursor() =>
      cursor_.Cursor.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCursor, jni.JniType.objectType, []).object);
}
