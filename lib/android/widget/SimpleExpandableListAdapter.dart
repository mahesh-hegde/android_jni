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

import "../content/Context.dart" as context_;

import "../view/View.dart" as view_;

import "../view/ViewGroup.dart" as viewgroup_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.SimpleExpandableListAdapter
///
/// An easy adapter to map static data to group and child views defined in an XML
/// file. You can separately specify the data backing the group as a List of
/// Maps. Each entry in the ArrayList corresponds to one group in the expandable
/// list. The Maps contain the data for each row. You also specify an XML file
/// that defines the views used to display a group, and a mapping from keys in
/// the Map to specific views. This process is similar for a child, except it is
/// one-level deeper so the data backing is specified as a List<List<Map>>,
/// where the first List corresponds to the group of the child, the second List
/// corresponds to the position of the child within the group, and finally the
/// Map holds the data for that particular child.
class SimpleExpandableListAdapter
    extends baseexpandablelistadapter_.BaseExpandableListAdapter {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/SimpleExpandableListAdapter");
  SimpleExpandableListAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V");

  /// from: public void <init>(android.content.Context context, java.util.List<? extends java.util.Map<java.lang.String,?>> groupData, int groupLayout, java.lang.String[] groupFrom, int[] groupTo, java.util.List<? extends java.util.List<? extends java.util.Map<java.lang.String,?>>> childData, int childLayout, java.lang.String[] childFrom, int[] childTo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor
  ///@param context The context where the ExpandableListView
  ///            associated with this SimpleExpandableListAdapter is
  ///            running
  ///@param groupData A List of Maps. Each entry in the List corresponds to
  ///            one group in the list. The Maps contain the data for each
  ///            group, and should include all the entries specified in
  ///            "groupFrom"
  ///@param groupFrom A list of keys that will be fetched from the Map
  ///            associated with each group.
  ///@param groupTo The group views that should display column in the
  ///            "groupFrom" parameter. These should all be TextViews. The
  ///            first N views in this list are given the values of the first N
  ///            columns in the groupFrom parameter.
  ///@param groupLayout resource identifier of a view layout that defines the
  ///            views for a group. The layout file should include at least
  ///            those named views defined in "groupTo"
  ///@param childData A List of List of Maps. Each entry in the outer List
  ///            corresponds to a group (index by group position), each entry
  ///            in the inner List corresponds to a child within the group
  ///            (index by child position), and the Map corresponds to the data
  ///            for a child (index by values in the childFrom array). The Map
  ///            contains the data for each child, and should include all the
  ///            entries specified in "childFrom"
  ///@param childFrom A list of keys that will be fetched from the Map
  ///            associated with each child.
  ///@param childTo The child views that should display column in the
  ///            "childFrom" parameter. These should all be TextViews. The
  ///            first N views in this list are given the values of the first N
  ///            columns in the childFrom parameter.
  ///@param childLayout resource identifier of a view layout that defines the
  ///            views for a child. The layout file should include at least
  ///            those named views defined in "childTo"
  SimpleExpandableListAdapter.ctor1(
      context_.Context context,
      jni.JniObject groupData,
      int groupLayout,
      jni.JniObject groupFrom,
      jni.JniObject groupTo,
      jni.JniObject childData,
      int childLayout,
      jni.JniObject childFrom,
      jni.JniObject childTo)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, [
          context.reference,
          groupData.reference,
          groupLayout,
          groupFrom.reference,
          groupTo.reference,
          childData.reference,
          childLayout,
          childFrom.reference,
          childTo.reference
        ]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Ljava/util/List;II[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V");

  /// from: public void <init>(android.content.Context context, java.util.List<? extends java.util.Map<java.lang.String,?>> groupData, int expandedGroupLayout, int collapsedGroupLayout, java.lang.String[] groupFrom, int[] groupTo, java.util.List<? extends java.util.List<? extends java.util.Map<java.lang.String,?>>> childData, int childLayout, java.lang.String[] childFrom, int[] childTo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor
  ///@param context The context where the ExpandableListView
  ///            associated with this SimpleExpandableListAdapter is
  ///            running
  ///@param groupData A List of Maps. Each entry in the List corresponds to
  ///            one group in the list. The Maps contain the data for each
  ///            group, and should include all the entries specified in
  ///            "groupFrom"
  ///@param groupFrom A list of keys that will be fetched from the Map
  ///            associated with each group.
  ///@param groupTo The group views that should display column in the
  ///            "groupFrom" parameter. These should all be TextViews. The
  ///            first N views in this list are given the values of the first N
  ///            columns in the groupFrom parameter.
  ///@param expandedGroupLayout resource identifier of a view layout that
  ///            defines the views for an expanded group. The layout file
  ///            should include at least those named views defined in "groupTo"
  ///@param collapsedGroupLayout resource identifier of a view layout that
  ///            defines the views for a collapsed group. The layout file
  ///            should include at least those named views defined in "groupTo"
  ///@param childData A List of List of Maps. Each entry in the outer List
  ///            corresponds to a group (index by group position), each entry
  ///            in the inner List corresponds to a child within the group
  ///            (index by child position), and the Map corresponds to the data
  ///            for a child (index by values in the childFrom array). The Map
  ///            contains the data for each child, and should include all the
  ///            entries specified in "childFrom"
  ///@param childFrom A list of keys that will be fetched from the Map
  ///            associated with each child.
  ///@param childTo The child views that should display column in the
  ///            "childFrom" parameter. These should all be TextViews. The
  ///            first N views in this list are given the values of the first N
  ///            columns in the childFrom parameter.
  ///@param childLayout resource identifier of a view layout that defines the
  ///            views for a child. The layout file should include at least
  ///            those named views defined in "childTo"
  SimpleExpandableListAdapter.ctor2(
      context_.Context context,
      jni.JniObject groupData,
      int expandedGroupLayout,
      int collapsedGroupLayout,
      jni.JniObject groupFrom,
      jni.JniObject groupTo,
      jni.JniObject childData,
      int childLayout,
      jni.JniObject childFrom,
      jni.JniObject childTo)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, [
          context.reference,
          groupData.reference,
          expandedGroupLayout,
          collapsedGroupLayout,
          groupFrom.reference,
          groupTo.reference,
          childData.reference,
          childLayout,
          childFrom.reference,
          childTo.reference
        ]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Ljava/util/List;II[Ljava/lang/String;[ILjava/util/List;II[Ljava/lang/String;[I)V");

  /// from: public void <init>(android.content.Context context, java.util.List<? extends java.util.Map<java.lang.String,?>> groupData, int expandedGroupLayout, int collapsedGroupLayout, java.lang.String[] groupFrom, int[] groupTo, java.util.List<? extends java.util.List<? extends java.util.Map<java.lang.String,?>>> childData, int childLayout, int lastChildLayout, java.lang.String[] childFrom, int[] childTo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor
  ///@param context The context where the ExpandableListView
  ///            associated with this SimpleExpandableListAdapter is
  ///            running
  ///@param groupData A List of Maps. Each entry in the List corresponds to
  ///            one group in the list. The Maps contain the data for each
  ///            group, and should include all the entries specified in
  ///            "groupFrom"
  ///@param groupFrom A list of keys that will be fetched from the Map
  ///            associated with each group.
  ///@param groupTo The group views that should display column in the
  ///            "groupFrom" parameter. These should all be TextViews. The
  ///            first N views in this list are given the values of the first N
  ///            columns in the groupFrom parameter.
  ///@param expandedGroupLayout resource identifier of a view layout that
  ///            defines the views for an expanded group. The layout file
  ///            should include at least those named views defined in "groupTo"
  ///@param collapsedGroupLayout resource identifier of a view layout that
  ///            defines the views for a collapsed group. The layout file
  ///            should include at least those named views defined in "groupTo"
  ///@param childData A List of List of Maps. Each entry in the outer List
  ///            corresponds to a group (index by group position), each entry
  ///            in the inner List corresponds to a child within the group
  ///            (index by child position), and the Map corresponds to the data
  ///            for a child (index by values in the childFrom array). The Map
  ///            contains the data for each child, and should include all the
  ///            entries specified in "childFrom"
  ///@param childFrom A list of keys that will be fetched from the Map
  ///            associated with each child.
  ///@param childTo The child views that should display column in the
  ///            "childFrom" parameter. These should all be TextViews. The
  ///            first N views in this list are given the values of the first N
  ///            columns in the childFrom parameter.
  ///@param childLayout resource identifier of a view layout that defines the
  ///            views for a child (unless it is the last child within a group,
  ///            in which case the lastChildLayout is used). The layout file
  ///            should include at least those named views defined in "childTo"
  ///@param lastChildLayout resource identifier of a view layout that defines
  ///            the views for the last child within each group. The layout
  ///            file should include at least those named views defined in
  ///            "childTo"
  SimpleExpandableListAdapter.ctor3(
      context_.Context context,
      jni.JniObject groupData,
      int expandedGroupLayout,
      int collapsedGroupLayout,
      jni.JniObject groupFrom,
      jni.JniObject groupTo,
      jni.JniObject childData,
      int childLayout,
      int lastChildLayout,
      jni.JniObject childFrom,
      jni.JniObject childTo)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          groupData.reference,
          expandedGroupLayout,
          collapsedGroupLayout,
          groupFrom.reference,
          groupTo.reference,
          childData.reference,
          childLayout,
          lastChildLayout,
          childFrom.reference,
          childTo.reference
        ]).object);

  static final _id_getChild = jniAccessors.getMethodIDOf(
      _classRef, "getChild", "(II)Ljava/lang/Object;");

  /// from: public java.lang.Object getChild(int groupPosition, int childPosition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getChild(int groupPosition, int childPosition) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
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

  static final _id_newChildView = jniAccessors.getMethodIDOf(_classRef,
      "newChildView", "(ZLandroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public android.view.View newChildView(boolean isLastChild, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Instantiates a new View for a child.
  ///@param isLastChild Whether the child is the last child within its group.
  ///@param parent The eventual parent of this new View.
  ///@return A new child View
  view_.View newChildView(bool isLastChild, viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_newChildView,
          jni.JniType.objectType,
          [isLastChild, parent.reference]).object);

  static final _id_getChildrenCount =
      jniAccessors.getMethodIDOf(_classRef, "getChildrenCount", "(I)I");

  /// from: public int getChildrenCount(int groupPosition)
  int getChildrenCount(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getChildrenCount,
      jni.JniType.intType,
      [groupPosition]).integer;

  static final _id_getGroup = jniAccessors.getMethodIDOf(
      _classRef, "getGroup", "(I)Ljava/lang/Object;");

  /// from: public java.lang.Object getGroup(int groupPosition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getGroup(int groupPosition) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
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

  static final _id_newGroupView = jniAccessors.getMethodIDOf(_classRef,
      "newGroupView", "(ZLandroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public android.view.View newGroupView(boolean isExpanded, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Instantiates a new View for a group.
  ///@param isExpanded Whether the group is currently expanded.
  ///@param parent The eventual parent of this new View.
  ///@return A new group View
  view_.View newGroupView(bool isExpanded, viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_newGroupView,
          jni.JniType.objectType,
          [isExpanded, parent.reference]).object);

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
}
