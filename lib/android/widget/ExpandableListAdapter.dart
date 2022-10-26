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

import "../database/DataSetObserver.dart" as datasetobserver_;

import "../view/View.dart" as view_;

import "../view/ViewGroup.dart" as viewgroup_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.ExpandableListAdapter
///
/// An adapter that links a ExpandableListView with the underlying
/// data. The implementation of this interface will provide access
/// to the data of the children (categorized by groups), and also instantiate
/// Views for children and groups.
class ExpandableListAdapter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/ExpandableListAdapter");
  ExpandableListAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_registerDataSetObserver = jniAccessors.getMethodIDOf(
      _classRef,
      "registerDataSetObserver",
      "(Landroid/database/DataSetObserver;)V");

  /// from: public abstract void registerDataSetObserver(android.database.DataSetObserver observer)
  ///
  /// @see Adapter\#registerDataSetObserver(DataSetObserver)
  void registerDataSetObserver(datasetobserver_.DataSetObserver observer) =>
      jniAccessors.callMethodWithArgs(reference, _id_registerDataSetObserver,
          jni.JniType.voidType, [observer.reference]).check();

  static final _id_unregisterDataSetObserver = jniAccessors.getMethodIDOf(
      _classRef,
      "unregisterDataSetObserver",
      "(Landroid/database/DataSetObserver;)V");

  /// from: public abstract void unregisterDataSetObserver(android.database.DataSetObserver observer)
  ///
  /// @see Adapter\#unregisterDataSetObserver(DataSetObserver)
  void unregisterDataSetObserver(datasetobserver_.DataSetObserver observer) =>
      jniAccessors.callMethodWithArgs(reference, _id_unregisterDataSetObserver,
          jni.JniType.voidType, [observer.reference]).check();

  static final _id_getGroupCount =
      jniAccessors.getMethodIDOf(_classRef, "getGroupCount", "()I");

  /// from: public abstract int getGroupCount()
  ///
  /// Gets the number of groups.
  ///@return the number of groups
  int getGroupCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getGroupCount, jni.JniType.intType, []).integer;

  static final _id_getChildrenCount =
      jniAccessors.getMethodIDOf(_classRef, "getChildrenCount", "(I)I");

  /// from: public abstract int getChildrenCount(int groupPosition)
  ///
  /// Gets the number of children in a specified group.
  ///@param groupPosition the position of the group for which the children
  ///            count should be returned
  ///@return the children count in the specified group
  int getChildrenCount(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getChildrenCount,
      jni.JniType.intType,
      [groupPosition]).integer;

  static final _id_getGroup = jniAccessors.getMethodIDOf(
      _classRef, "getGroup", "(I)Ljava/lang/Object;");

  /// from: public abstract java.lang.Object getGroup(int groupPosition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the data associated with the given group.
  ///@param groupPosition the position of the group
  ///@return the data child for the specified group
  jni.JniObject getGroup(int groupPosition) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getGroup, jni.JniType.objectType, [groupPosition]).object);

  static final _id_getChild = jniAccessors.getMethodIDOf(
      _classRef, "getChild", "(II)Ljava/lang/Object;");

  /// from: public abstract java.lang.Object getChild(int groupPosition, int childPosition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the data associated with the given child within the given group.
  ///@param groupPosition the position of the group that the child resides in
  ///@param childPosition the position of the child with respect to other
  ///            children in the group
  ///@return the data of the child
  jni.JniObject getChild(int groupPosition, int childPosition) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getChild,
          jni.JniType.objectType,
          [groupPosition, childPosition]).object);

  static final _id_getGroupId =
      jniAccessors.getMethodIDOf(_classRef, "getGroupId", "(I)J");

  /// from: public abstract long getGroupId(int groupPosition)
  ///
  /// Gets the ID for the group at the given position. This group ID must be
  /// unique across groups. The combined ID (see
  /// \#getCombinedGroupId(long)) must be unique across ALL items
  /// (groups and all children).
  ///@param groupPosition the position of the group for which the ID is wanted
  ///@return the ID associated with the group
  int getGroupId(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference, _id_getGroupId, jni.JniType.longType, [groupPosition]).long;

  static final _id_getChildId =
      jniAccessors.getMethodIDOf(_classRef, "getChildId", "(II)J");

  /// from: public abstract long getChildId(int groupPosition, int childPosition)
  ///
  /// Gets the ID for the given child within the given group. This ID must be
  /// unique across all children within the group. The combined ID (see
  /// \#getCombinedChildId(long, long)) must be unique across ALL items
  /// (groups and all children).
  ///@param groupPosition the position of the group that contains the child
  ///@param childPosition the position of the child within the group for which
  ///            the ID is wanted
  ///@return the ID associated with the child
  int getChildId(int groupPosition, int childPosition) =>
      jniAccessors.callMethodWithArgs(reference, _id_getChildId,
          jni.JniType.longType, [groupPosition, childPosition]).long;

  static final _id_hasStableIds =
      jniAccessors.getMethodIDOf(_classRef, "hasStableIds", "()Z");

  /// from: public abstract boolean hasStableIds()
  ///
  /// Indicates whether the child and group IDs are stable across changes to the
  /// underlying data.
  ///@return whether or not the same ID always refers to the same object
  ///@see Adapter\#hasStableIds()
  bool hasStableIds() => jniAccessors.callMethodWithArgs(
      reference, _id_hasStableIds, jni.JniType.booleanType, []).boolean;

  static final _id_getGroupView = jniAccessors.getMethodIDOf(
      _classRef,
      "getGroupView",
      "(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public abstract android.view.View getGroupView(int groupPosition, boolean isExpanded, android.view.View convertView, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets a View that displays the given group. This View is only for the
  /// group--the Views for the group's children will be fetched using
  /// \#getChildView(int, int, boolean, View, ViewGroup).
  ///@param groupPosition the position of the group for which the View is
  ///            returned
  ///@param isExpanded whether the group is expanded or collapsed
  ///@param convertView the old view to reuse, if possible. You should check
  ///            that this view is non-null and of an appropriate type before
  ///            using. If it is not possible to convert this view to display
  ///            the correct data, this method can create a new view. It is not
  ///            guaranteed that the convertView will have been previously
  ///            created by
  ///            \#getGroupView(int, boolean, View, ViewGroup).
  ///@param parent the parent that this view will eventually be attached to
  ///@return the View corresponding to the group at the specified position
  view_.View getGroupView(int groupPosition, bool isExpanded,
          view_.View convertView, viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getGroupView, jni.JniType.objectType, [
        groupPosition,
        isExpanded,
        convertView.reference,
        parent.reference
      ]).object);

  static final _id_getChildView = jniAccessors.getMethodIDOf(
      _classRef,
      "getChildView",
      "(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public abstract android.view.View getChildView(int groupPosition, int childPosition, boolean isLastChild, android.view.View convertView, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets a View that displays the data for the given child within the given
  /// group.
  ///@param groupPosition the position of the group that contains the child
  ///@param childPosition the position of the child (for which the View is
  ///            returned) within the group
  ///@param isLastChild Whether the child is the last child within the group
  ///@param convertView the old view to reuse, if possible. You should check
  ///            that this view is non-null and of an appropriate type before
  ///            using. If it is not possible to convert this view to display
  ///            the correct data, this method can create a new view. It is not
  ///            guaranteed that the convertView will have been previously
  ///            created by
  ///            \#getChildView(int, int, boolean, View, ViewGroup).
  ///@param parent the parent that this view will eventually be attached to
  ///@return the View corresponding to the child at the specified position
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

  static final _id_isChildSelectable =
      jniAccessors.getMethodIDOf(_classRef, "isChildSelectable", "(II)Z");

  /// from: public abstract boolean isChildSelectable(int groupPosition, int childPosition)
  ///
  /// Whether the child at the specified position is selectable.
  ///@param groupPosition the position of the group that contains the child
  ///@param childPosition the position of the child within the group
  ///@return whether the child is selectable.
  bool isChildSelectable(int groupPosition, int childPosition) =>
      jniAccessors.callMethodWithArgs(reference, _id_isChildSelectable,
          jni.JniType.booleanType, [groupPosition, childPosition]).boolean;

  static final _id_areAllItemsEnabled =
      jniAccessors.getMethodIDOf(_classRef, "areAllItemsEnabled", "()Z");

  /// from: public abstract boolean areAllItemsEnabled()
  ///
  /// @see ListAdapter\#areAllItemsEnabled()
  bool areAllItemsEnabled() => jniAccessors.callMethodWithArgs(
      reference, _id_areAllItemsEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_isEmpty =
      jniAccessors.getMethodIDOf(_classRef, "isEmpty", "()Z");

  /// from: public abstract boolean isEmpty()
  ///
  /// @see ListAdapter\#isEmpty()
  bool isEmpty() => jniAccessors.callMethodWithArgs(
      reference, _id_isEmpty, jni.JniType.booleanType, []).boolean;

  static final _id_onGroupExpanded =
      jniAccessors.getMethodIDOf(_classRef, "onGroupExpanded", "(I)V");

  /// from: public abstract void onGroupExpanded(int groupPosition)
  ///
  /// Called when a group is expanded.
  ///@param groupPosition The group being expanded.
  void onGroupExpanded(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onGroupExpanded,
      jni.JniType.voidType,
      [groupPosition]).check();

  static final _id_onGroupCollapsed =
      jniAccessors.getMethodIDOf(_classRef, "onGroupCollapsed", "(I)V");

  /// from: public abstract void onGroupCollapsed(int groupPosition)
  ///
  /// Called when a group is collapsed.
  ///@param groupPosition The group being collapsed.
  void onGroupCollapsed(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onGroupCollapsed,
      jni.JniType.voidType,
      [groupPosition]).check();

  static final _id_getCombinedChildId =
      jniAccessors.getMethodIDOf(_classRef, "getCombinedChildId", "(JJ)J");

  /// from: public abstract long getCombinedChildId(long groupId, long childId)
  ///
  /// Gets an ID for a child that is unique across any item (either group or
  /// child) that is in this list. Expandable lists require each item (group or
  /// child) to have a unique ID among all children and groups in the list.
  /// This method is responsible for returning that unique ID given a child's
  /// ID and its group's ID. Furthermore, if \#hasStableIds() is true, the
  /// returned ID must be stable as well.
  ///@param groupId The ID of the group that contains this child.
  ///@param childId The ID of the child.
  ///@return The unique (and possibly stable) ID of the child across all
  ///         groups and children in this list.
  int getCombinedChildId(int groupId, int childId) =>
      jniAccessors.callMethodWithArgs(reference, _id_getCombinedChildId,
          jni.JniType.longType, [groupId, childId]).long;

  static final _id_getCombinedGroupId =
      jniAccessors.getMethodIDOf(_classRef, "getCombinedGroupId", "(J)J");

  /// from: public abstract long getCombinedGroupId(long groupId)
  ///
  /// Gets an ID for a group that is unique across any item (either group or
  /// child) that is in this list. Expandable lists require each item (group or
  /// child) to have a unique ID among all children and groups in the list.
  /// This method is responsible for returning that unique ID given a group's
  /// ID. Furthermore, if \#hasStableIds() is true, the returned ID must be
  /// stable as well.
  ///@param groupId The ID of the group
  ///@return The unique (and possibly stable) ID of the group across all
  ///         groups and children in this list.
  int getCombinedGroupId(int groupId) => jniAccessors.callMethodWithArgs(
      reference, _id_getCombinedGroupId, jni.JniType.longType, [groupId]).long;
}
