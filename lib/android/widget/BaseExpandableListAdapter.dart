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

import "../database/DataSetObserver.dart" as datasetobserver_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.BaseExpandableListAdapter
///
/// Base class for a ExpandableListAdapter used to provide data and Views
/// from some data to an expandable list view.
///
/// Adapters inheriting this class should verify that the base implementations of
/// \#getCombinedChildId(long, long) and \#getCombinedGroupId(long)
/// are correct in generating unique IDs from the group/children IDs.
///
///@see SimpleExpandableListAdapter
///@see SimpleCursorTreeAdapter
class BaseExpandableListAdapter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/BaseExpandableListAdapter");
  BaseExpandableListAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  BaseExpandableListAdapter()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_registerDataSetObserver = jniAccessors.getMethodIDOf(
      _classRef,
      "registerDataSetObserver",
      "(Landroid/database/DataSetObserver;)V");

  /// from: public void registerDataSetObserver(android.database.DataSetObserver observer)
  void registerDataSetObserver(datasetobserver_.DataSetObserver observer) =>
      jniAccessors.callMethodWithArgs(reference, _id_registerDataSetObserver,
          jni.JniType.voidType, [observer.reference]).check();

  static final _id_unregisterDataSetObserver = jniAccessors.getMethodIDOf(
      _classRef,
      "unregisterDataSetObserver",
      "(Landroid/database/DataSetObserver;)V");

  /// from: public void unregisterDataSetObserver(android.database.DataSetObserver observer)
  void unregisterDataSetObserver(datasetobserver_.DataSetObserver observer) =>
      jniAccessors.callMethodWithArgs(reference, _id_unregisterDataSetObserver,
          jni.JniType.voidType, [observer.reference]).check();

  static final _id_notifyDataSetInvalidated =
      jniAccessors.getMethodIDOf(_classRef, "notifyDataSetInvalidated", "()V");

  /// from: public void notifyDataSetInvalidated()
  ///
  /// @see DataSetObservable\#notifyInvalidated()
  void notifyDataSetInvalidated() => jniAccessors.callMethodWithArgs(reference,
      _id_notifyDataSetInvalidated, jni.JniType.voidType, []).check();

  static final _id_notifyDataSetChanged =
      jniAccessors.getMethodIDOf(_classRef, "notifyDataSetChanged", "()V");

  /// from: public void notifyDataSetChanged()
  ///
  /// @see DataSetObservable\#notifyChanged()
  void notifyDataSetChanged() => jniAccessors.callMethodWithArgs(
      reference, _id_notifyDataSetChanged, jni.JniType.voidType, []).check();

  static final _id_areAllItemsEnabled =
      jniAccessors.getMethodIDOf(_classRef, "areAllItemsEnabled", "()Z");

  /// from: public boolean areAllItemsEnabled()
  bool areAllItemsEnabled() => jniAccessors.callMethodWithArgs(
      reference, _id_areAllItemsEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_onGroupCollapsed =
      jniAccessors.getMethodIDOf(_classRef, "onGroupCollapsed", "(I)V");

  /// from: public void onGroupCollapsed(int groupPosition)
  void onGroupCollapsed(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onGroupCollapsed,
      jni.JniType.voidType,
      [groupPosition]).check();

  static final _id_onGroupExpanded =
      jniAccessors.getMethodIDOf(_classRef, "onGroupExpanded", "(I)V");

  /// from: public void onGroupExpanded(int groupPosition)
  void onGroupExpanded(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onGroupExpanded,
      jni.JniType.voidType,
      [groupPosition]).check();

  static final _id_getCombinedChildId =
      jniAccessors.getMethodIDOf(_classRef, "getCombinedChildId", "(JJ)J");

  /// from: public long getCombinedChildId(long groupId, long childId)
  ///
  /// Override this method if you foresee a clash in IDs based on this scheme:
  ///
  /// Base implementation returns a long:
  /// <li> bit 0: Whether this ID points to a child (unset) or group (set), so for this method
  ///             this bit will be 1.
  /// <li> bit 1-31: Lower 31 bits of the groupId
  /// <li> bit 32-63: Lower 32 bits of the childId.
  ///
  /// {@inheritDoc}
  int getCombinedChildId(int groupId, int childId) =>
      jniAccessors.callMethodWithArgs(reference, _id_getCombinedChildId,
          jni.JniType.longType, [groupId, childId]).long;

  static final _id_getCombinedGroupId =
      jniAccessors.getMethodIDOf(_classRef, "getCombinedGroupId", "(J)J");

  /// from: public long getCombinedGroupId(long groupId)
  ///
  /// Override this method if you foresee a clash in IDs based on this scheme:
  ///
  /// Base implementation returns a long:
  /// <li> bit 0: Whether this ID points to a child (unset) or group (set), so for this method
  ///             this bit will be 0.
  /// <li> bit 1-31: Lower 31 bits of the groupId
  /// <li> bit 32-63: Lower 32 bits of the childId.
  ///
  /// {@inheritDoc}
  int getCombinedGroupId(int groupId) => jniAccessors.callMethodWithArgs(
      reference, _id_getCombinedGroupId, jni.JniType.longType, [groupId]).long;

  static final _id_isEmpty =
      jniAccessors.getMethodIDOf(_classRef, "isEmpty", "()Z");

  /// from: public boolean isEmpty()
  ///
  /// {@inheritDoc}
  bool isEmpty() => jniAccessors.callMethodWithArgs(
      reference, _id_isEmpty, jni.JniType.booleanType, []).boolean;

  static final _id_getChildType =
      jniAccessors.getMethodIDOf(_classRef, "getChildType", "(II)I");

  /// from: public int getChildType(int groupPosition, int childPosition)
  ///
  /// {@inheritDoc}
  ///@return 0 for any group or child position, since only one child type count is declared.
  int getChildType(int groupPosition, int childPosition) =>
      jniAccessors.callMethodWithArgs(reference, _id_getChildType,
          jni.JniType.intType, [groupPosition, childPosition]).integer;

  static final _id_getChildTypeCount =
      jniAccessors.getMethodIDOf(_classRef, "getChildTypeCount", "()I");

  /// from: public int getChildTypeCount()
  ///
  /// {@inheritDoc}
  ///@return 1 as a default value in BaseExpandableListAdapter.
  int getChildTypeCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getChildTypeCount, jni.JniType.intType, []).integer;

  static final _id_getGroupType =
      jniAccessors.getMethodIDOf(_classRef, "getGroupType", "(I)I");

  /// from: public int getGroupType(int groupPosition)
  ///
  /// {@inheritDoc}
  ///@return 0 for any groupPosition, since only one group type count is declared.
  int getGroupType(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getGroupType,
      jni.JniType.intType,
      [groupPosition]).integer;

  static final _id_getGroupTypeCount =
      jniAccessors.getMethodIDOf(_classRef, "getGroupTypeCount", "()I");

  /// from: public int getGroupTypeCount()
  ///
  /// {@inheritDoc}
  ///@return 1 as a default value in BaseExpandableListAdapter.
  int getGroupTypeCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getGroupTypeCount, jni.JniType.intType, []).integer;
}
