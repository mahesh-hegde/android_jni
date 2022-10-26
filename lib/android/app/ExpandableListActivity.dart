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

import "Activity.dart" as activity_;

import "../view/ContextMenu.dart" as contextmenu_;

import "../view/View.dart" as view_;

import "../widget/ExpandableListView.dart" as expandablelistview_;

import "../os/Bundle.dart" as bundle_;

import "../widget/ExpandableListAdapter.dart" as expandablelistadapter_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.ExpandableListActivity
///
/// An activity that displays an expandable list of items by binding to a data
/// source implementing the ExpandableListAdapter, and exposes event handlers
/// when the user selects an item.
///
/// ExpandableListActivity hosts a
/// android.widget.ExpandableListView ExpandableListView object that can
/// be bound to different data sources that provide a two-levels of data (the
/// top-level is group, and below each group are children). Binding, screen
/// layout, and row layout are discussed in the following sections.
///
/// <strong>Screen Layout</strong>
///
///
///
/// ExpandableListActivity has a default layout that consists of a single,
/// full-screen, centered expandable list. However, if you desire, you can
/// customize the screen layout by setting your own view layout with
/// setContentView() in onCreate(). To do this, your own view MUST contain an
/// ExpandableListView object with the id "@android:id/list" (or
/// android.R.id\#list if it's in code)
///
/// Optionally, your custom view can contain another view object of any type to
/// display when the list view is empty. This "empty list" notifier must have an
/// id "android:empty". Note that when an empty view is present, the expandable
/// list view will be hidden when there is no data to display.
///
/// The following code demonstrates an (ugly) custom screen layout. It has a list
/// with a green background, and an alternate red "no data" message.
///
///
///
/// <pre>
/// &lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
/// &lt;LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
///         android:orientation=&quot;vertical&quot;
///         android:layout_width=&quot;match_parent&quot;
///         android:layout_height=&quot;match_parent&quot;
///         android:paddingLeft=&quot;8dp&quot;
///         android:paddingRight=&quot;8dp&quot;&gt;
///
///     &lt;ExpandableListView android:id=&quot;@id/android:list&quot;
///               android:layout_width=&quot;match_parent&quot;
///               android:layout_height=&quot;match_parent&quot;
///               android:background=&quot;\#00FF00&quot;
///               android:layout_weight=&quot;1&quot;
///               android:drawSelectorOnTop=&quot;false&quot;/&gt;
///
///     &lt;TextView android:id=&quot;@id/android:empty&quot;
///               android:layout_width=&quot;match_parent&quot;
///               android:layout_height=&quot;match_parent&quot;
///               android:background=&quot;\#FF0000&quot;
///               android:text=&quot;No data&quot;/&gt;
/// &lt;/LinearLayout&gt;
/// </pre>
///
///
/// <strong>Row Layout</strong>
///
///
/// The ExpandableListAdapter set in the ExpandableListActivity
/// via \#setListAdapter(ExpandableListAdapter) provides the Views
/// for each row. This adapter has separate methods for providing the group
/// Views and child Views. There are a couple provided
/// ExpandableListAdapters that simplify use of adapters:
/// SimpleCursorTreeAdapter and SimpleExpandableListAdapter.
///
/// With these, you can specify the layout of individual rows for groups and
/// children in the list. These constructor takes a few parameters that specify
/// layout resources for groups and children. It also has additional parameters
/// that let you specify which data field to associate with which object in the
/// row layout resource. The SimpleCursorTreeAdapter fetches data from
/// Cursors and the SimpleExpandableListAdapter fetches data
/// from Lists of Maps.
///
///
///
/// Android provides some standard row layout resources. These are in the
/// android.R.layout class, and have names such as simple_list_item_1,
/// simple_list_item_2, and two_line_list_item. The following layout XML is the
/// source for the resource two_line_list_item, which displays two data
/// fields,one above the other, for each list row.
///
///
///
/// <pre>
/// &lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;
/// &lt;LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
///     android:layout_width=&quot;match_parent&quot;
///     android:layout_height=&quot;wrap_content&quot;
///     android:orientation=&quot;vertical&quot;&gt;
///
///     &lt;TextView android:id=&quot;@+id/text1&quot;
///         android:textSize=&quot;16sp&quot;
///         android:textStyle=&quot;bold&quot;
///         android:layout_width=&quot;match_parent&quot;
///         android:layout_height=&quot;wrap_content&quot;/&gt;
///
///     &lt;TextView android:id=&quot;@+id/text2&quot;
///         android:textSize=&quot;16sp&quot;
///         android:layout_width=&quot;match_parent&quot;
///         android:layout_height=&quot;wrap_content&quot;/&gt;
/// &lt;/LinearLayout&gt;
/// </pre>
///
///
/// You must identify the data bound to each TextView object in this layout. The
/// syntax for this is discussed in the next section.
///
///
///
/// <strong>Binding to Data</strong>
///
///
///
/// You bind the ExpandableListActivity's ExpandableListView object to data using
/// a class that implements the
/// android.widget.ExpandableListAdapter ExpandableListAdapter interface.
/// Android provides two standard list adapters:
/// android.widget.SimpleExpandableListAdapter SimpleExpandableListAdapter
/// for static data (Maps), and
/// android.widget.SimpleCursorTreeAdapter SimpleCursorTreeAdapter for
/// Cursor query results.
///
///
///@see \#setListAdapter
///@see android.widget.ExpandableListView
class ExpandableListActivity extends activity_.Activity {
  static final _classRef =
      jniAccessors.getClassOf("android/app/ExpandableListActivity");
  ExpandableListActivity.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ExpandableListActivity.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_onCreateContextMenu = jniAccessors.getMethodIDOf(
      _classRef,
      "onCreateContextMenu",
      "(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu\$ContextMenuInfo;)V");

  /// from: public void onCreateContextMenu(android.view.ContextMenu menu, android.view.View v, android.view.ContextMenu.ContextMenuInfo menuInfo)
  ///
  /// Override this to populate the context menu when an item is long pressed. menuInfo
  /// will contain an android.widget.ExpandableListView.ExpandableListContextMenuInfo
  /// whose packedPosition is a packed position
  /// that should be used with ExpandableListView\#getPackedPositionType(long) and
  /// the other similar methods.
  ///
  /// {@inheritDoc}
  void onCreateContextMenu(contextmenu_.ContextMenu menu, view_.View v,
          contextmenu_.ContextMenu_ContextMenuInfo menuInfo) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onCreateContextMenu,
          jni.JniType.voidType,
          [menu.reference, v.reference, menuInfo.reference]).check();

  static final _id_onChildClick = jniAccessors.getMethodIDOf(
      _classRef,
      "onChildClick",
      "(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z");

  /// from: public boolean onChildClick(android.widget.ExpandableListView parent, android.view.View v, int groupPosition, int childPosition, long id)
  ///
  /// Override this for receiving callbacks when a child has been clicked.
  ///
  /// {@inheritDoc}
  bool onChildClick(expandablelistview_.ExpandableListView parent, view_.View v,
          int groupPosition, int childPosition, int id) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onChildClick, jni.JniType.booleanType, [
        parent.reference,
        v.reference,
        groupPosition,
        childPosition,
        id
      ]).boolean;

  static final _id_onGroupCollapse =
      jniAccessors.getMethodIDOf(_classRef, "onGroupCollapse", "(I)V");

  /// from: public void onGroupCollapse(int groupPosition)
  ///
  /// Override this for receiving callbacks when a group has been collapsed.
  void onGroupCollapse(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onGroupCollapse,
      jni.JniType.voidType,
      [groupPosition]).check();

  static final _id_onGroupExpand =
      jniAccessors.getMethodIDOf(_classRef, "onGroupExpand", "(I)V");

  /// from: public void onGroupExpand(int groupPosition)
  ///
  /// Override this for receiving callbacks when a group has been expanded.
  void onGroupExpand(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onGroupExpand,
      jni.JniType.voidType,
      [groupPosition]).check();

  static final _id_onRestoreInstanceState = jniAccessors.getMethodIDOf(
      _classRef, "onRestoreInstanceState", "(Landroid/os/Bundle;)V");

  /// from: protected void onRestoreInstanceState(android.os.Bundle state)
  ///
  /// Ensures the expandable list view has been created before Activity restores all
  /// of the view states.
  ///@see Activity\#onRestoreInstanceState(Bundle)
  void onRestoreInstanceState(bundle_.Bundle state) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRestoreInstanceState,
          jni.JniType.voidType, [state.reference]).check();

  static final _id_onContentChanged =
      jniAccessors.getMethodIDOf(_classRef, "onContentChanged", "()V");

  /// from: public void onContentChanged()
  ///
  /// Updates the screen state (current list and other views) when the
  /// content changes.
  ///@see Activity\#onContentChanged()
  void onContentChanged() => jniAccessors.callMethodWithArgs(
      reference, _id_onContentChanged, jni.JniType.voidType, []).check();

  static final _id_setListAdapter = jniAccessors.getMethodIDOf(
      _classRef, "setListAdapter", "(Landroid/widget/ExpandableListAdapter;)V");

  /// from: public void setListAdapter(android.widget.ExpandableListAdapter adapter)
  ///
  /// Provide the adapter for the expandable list.
  void setListAdapter(expandablelistadapter_.ExpandableListAdapter adapter) =>
      jniAccessors.callMethodWithArgs(reference, _id_setListAdapter,
          jni.JniType.voidType, [adapter.reference]).check();

  static final _id_getExpandableListView = jniAccessors.getMethodIDOf(_classRef,
      "getExpandableListView", "()Landroid/widget/ExpandableListView;");

  /// from: public android.widget.ExpandableListView getExpandableListView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the activity's expandable list view widget.  This can be used to get the selection,
  /// set the selection, and many other useful functions.
  ///@see ExpandableListView
  expandablelistview_.ExpandableListView getExpandableListView() =>
      expandablelistview_.ExpandableListView.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getExpandableListView,
              jni.JniType.objectType, []).object);

  static final _id_getExpandableListAdapter = jniAccessors.getMethodIDOf(
      _classRef,
      "getExpandableListAdapter",
      "()Landroid/widget/ExpandableListAdapter;");

  /// from: public android.widget.ExpandableListAdapter getExpandableListAdapter()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the ExpandableListAdapter associated with this activity's
  /// ExpandableListView.
  expandablelistadapter_.ExpandableListAdapter getExpandableListAdapter() =>
      expandablelistadapter_.ExpandableListAdapter.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getExpandableListAdapter,
              jni.JniType.objectType, []).object);

  static final _id_getSelectedId =
      jniAccessors.getMethodIDOf(_classRef, "getSelectedId", "()J");

  /// from: public long getSelectedId()
  ///
  /// Gets the ID of the currently selected group or child.
  ///@return The ID of the currently selected group or child.
  int getSelectedId() => jniAccessors.callMethodWithArgs(
      reference, _id_getSelectedId, jni.JniType.longType, []).long;

  static final _id_getSelectedPosition =
      jniAccessors.getMethodIDOf(_classRef, "getSelectedPosition", "()J");

  /// from: public long getSelectedPosition()
  ///
  /// Gets the position (in packed position representation) of the currently
  /// selected group or child. Use
  /// ExpandableListView\#getPackedPositionType,
  /// ExpandableListView\#getPackedPositionGroup, and
  /// ExpandableListView\#getPackedPositionChild to unpack the returned
  /// packed position.
  ///@return A packed position representation containing the currently
  ///         selected group or child's position and type.
  int getSelectedPosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getSelectedPosition, jni.JniType.longType, []).long;

  static final _id_setSelectedChild =
      jniAccessors.getMethodIDOf(_classRef, "setSelectedChild", "(IIZ)Z");

  /// from: public boolean setSelectedChild(int groupPosition, int childPosition, boolean shouldExpandGroup)
  ///
  /// Sets the selection to the specified child. If the child is in a collapsed
  /// group, the group will only be expanded and child subsequently selected if
  /// shouldExpandGroup is set to true, otherwise the method will return false.
  ///@param groupPosition The position of the group that contains the child.
  ///@param childPosition The position of the child within the group.
  ///@param shouldExpandGroup Whether the child's group should be expanded if
  ///            it is collapsed.
  ///@return Whether the selection was successfully set on the child.
  bool setSelectedChild(
          int groupPosition, int childPosition, bool shouldExpandGroup) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setSelectedChild,
          jni.JniType.booleanType,
          [groupPosition, childPosition, shouldExpandGroup]).boolean;

  static final _id_setSelectedGroup =
      jniAccessors.getMethodIDOf(_classRef, "setSelectedGroup", "(I)V");

  /// from: public void setSelectedGroup(int groupPosition)
  ///
  /// Sets the selection to the specified group.
  ///@param groupPosition The position of the group that should be selected.
  void setSelectedGroup(int groupPosition) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setSelectedGroup,
      jni.JniType.voidType,
      [groupPosition]).check();
}
