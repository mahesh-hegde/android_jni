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

import "Activity.dart" as activity_;

import "../widget/ListView.dart" as listview_;

import "../view/View.dart" as view_;

import "../os/Bundle.dart" as bundle_;

import "../widget/ListAdapter.dart" as listadapter_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.ListActivity
///
/// An activity that displays a list of items by binding to a data source such as
/// an array or Cursor, and exposes event handlers when the user selects an item.
///
/// ListActivity hosts a android.widget.ListView ListView object that can
/// be bound to different data sources, typically either an array or a Cursor
/// holding query results. Binding, screen layout, and row layout are discussed
/// in the following sections.
///
/// <strong>Screen Layout</strong>
///
///
///
/// ListActivity has a default layout that consists of a single, full-screen list
/// in the center of the screen. However, if you desire, you can customize the
/// screen layout by setting your own view layout with setContentView() in
/// onCreate(). To do this, your own view MUST contain a ListView object with the
/// id "@android:id/list" (or android.R.id\#list if it's in code)
///
/// Optionally, your custom view can contain another view object of any type to
/// display when the list view is empty. This "empty list" notifier must have an
/// id "android:id/empty". Note that when an empty view is present, the list view
/// will be hidden when there is no data to display.
///
/// The following code demonstrates an (ugly) custom screen layout. It has a list
/// with a green background, and an alternate red "no data" message.
///
///
///
/// <pre>
/// &lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;
/// &lt;LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
///         android:orientation=&quot;vertical&quot;
///         android:layout_width=&quot;match_parent&quot;
///         android:layout_height=&quot;match_parent&quot;
///         android:paddingLeft=&quot;8dp&quot;
///         android:paddingRight=&quot;8dp&quot;&gt;
///
///     &lt;ListView android:id=&quot;@android:id/list&quot;
///               android:layout_width=&quot;match_parent&quot;
///               android:layout_height=&quot;match_parent&quot;
///               android:background=&quot;\#00FF00&quot;
///               android:layout_weight=&quot;1&quot;
///               android:drawSelectorOnTop=&quot;false&quot;/&gt;
///
///     &lt;TextView android:id=&quot;@android:id/empty&quot;
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
///
/// You can specify the layout of individual rows in the list. You do this by
/// specifying a layout resource in the ListAdapter object hosted by the activity
/// (the ListAdapter binds the ListView to the data; more on this later).
///
/// A ListAdapter constructor takes a parameter that specifies a layout resource
/// for each row. It also has two additional parameters that let you specify
/// which data field to associate with which object in the row layout resource.
/// These two parameters are typically parallel arrays.
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
/// You bind the ListActivity's ListView object to data using a class that
/// implements the android.widget.ListAdapter ListAdapter interface.
/// Android provides two standard list adapters:
/// android.widget.SimpleAdapter SimpleAdapter for static data (Maps),
/// and android.widget.SimpleCursorAdapter SimpleCursorAdapter for Cursor
/// query results.
///
///
///
/// The following code from a custom ListActivity demonstrates querying the
/// Contacts provider for all contacts, then binding the Name and Company fields
/// to a two line row layout in the activity's ListView.
///
///
///
/// <pre>
/// public class MyListAdapter extends ListActivity {
///
///     &\#064;Override
///     protected void onCreate(Bundle savedInstanceState){
///         super.onCreate(savedInstanceState);
///
///         // We'll define a custom screen layout here (the one shown above), but
///         // typically, you could just use the standard ListActivity layout.
///         setContentView(R.layout.custom_list_activity_view);
///
///         // Query for all people contacts using the android.provider.Contacts.People convenience class.
///         // Put a managed wrapper around the retrieved cursor so we don't have to worry about
///         // requerying or closing it as the activity changes state.
///         mCursor = this.getContentResolver().query(People.CONTENT_URI, null, null, null, null);
///         startManagingCursor(mCursor);
///
///         // Now create a new list adapter bound to the cursor.
///         // SimpleListAdapter is designed for binding to a Cursor.
///         ListAdapter adapter = new SimpleCursorAdapter(
///                 this, // Context.
///                 android.R.layout.two_line_list_item,  // Specify the row template to use (here, two columns bound to the two retrieved cursor
/// rows).
///                 mCursor,                                              // Pass in the cursor to bind to.
///                 new String[] {People.NAME, People.COMPANY},           // Array of cursor columns to bind to.
///                 new int[] {android.R.id.text1, android.R.id.text2});  // Parallel array of which template objects to bind to those columns.
///
///         // Bind to our new adapter.
///         setListAdapter(adapter);
///     }
/// }
/// </pre>
///@see \#setListAdapter
///@see android.widget.ListView
class ListActivity extends activity_.Activity {
  static final _classRef = jniAccessors.getClassOf("android/app/ListActivity");
  ListActivity.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ListActivity.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_onListItemClick = jniAccessors.getMethodIDOf(_classRef,
      "onListItemClick", "(Landroid/widget/ListView;Landroid/view/View;IJ)V");

  /// from: protected void onListItemClick(android.widget.ListView l, android.view.View v, int position, long id)
  ///
  /// This method will be called when an item in the list is selected.
  /// Subclasses should override. Subclasses can call
  /// getListView().getItemAtPosition(position) if they need to access the
  /// data associated with the selected item.
  ///@param l The ListView where the click happened
  ///@param v The view that was clicked within the ListView
  ///@param position The position of the view in the list
  ///@param id The row id of the item that was clicked
  void onListItemClick(
          listview_.ListView l, view_.View v, int position, int id) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onListItemClick,
          jni.JniType.voidType,
          [l.reference, v.reference, position, id]).check();

  static final _id_onRestoreInstanceState = jniAccessors.getMethodIDOf(
      _classRef, "onRestoreInstanceState", "(Landroid/os/Bundle;)V");

  /// from: protected void onRestoreInstanceState(android.os.Bundle state)
  ///
  /// Ensures the list view has been created before Activity restores all
  /// of the view states.
  ///@see Activity\#onRestoreInstanceState(Bundle)
  void onRestoreInstanceState(bundle_.Bundle state) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRestoreInstanceState,
          jni.JniType.voidType, [state.reference]).check();

  static final _id_onDestroy =
      jniAccessors.getMethodIDOf(_classRef, "onDestroy", "()V");

  /// from: protected void onDestroy()
  ///
  /// @see Activity\#onDestroy()
  void onDestroy() => jniAccessors.callMethodWithArgs(
      reference, _id_onDestroy, jni.JniType.voidType, []).check();

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
      _classRef, "setListAdapter", "(Landroid/widget/ListAdapter;)V");

  /// from: public void setListAdapter(android.widget.ListAdapter adapter)
  ///
  /// Provide the cursor for the list view.
  void setListAdapter(listadapter_.ListAdapter adapter) =>
      jniAccessors.callMethodWithArgs(reference, _id_setListAdapter,
          jni.JniType.voidType, [adapter.reference]).check();

  static final _id_setSelection =
      jniAccessors.getMethodIDOf(_classRef, "setSelection", "(I)V");

  /// from: public void setSelection(int position)
  ///
  /// Set the currently selected list item to the specified
  /// position with the adapter's data
  ///@param position
  void setSelection(int position) => jniAccessors.callMethodWithArgs(
      reference, _id_setSelection, jni.JniType.voidType, [position]).check();

  static final _id_getSelectedItemPosition =
      jniAccessors.getMethodIDOf(_classRef, "getSelectedItemPosition", "()I");

  /// from: public int getSelectedItemPosition()
  ///
  /// Get the position of the currently selected list item.
  int getSelectedItemPosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getSelectedItemPosition, jni.JniType.intType, []).integer;

  static final _id_getSelectedItemId =
      jniAccessors.getMethodIDOf(_classRef, "getSelectedItemId", "()J");

  /// from: public long getSelectedItemId()
  ///
  /// Get the cursor row ID of the currently selected list item.
  int getSelectedItemId() => jniAccessors.callMethodWithArgs(
      reference, _id_getSelectedItemId, jni.JniType.longType, []).long;

  static final _id_getListView = jniAccessors.getMethodIDOf(
      _classRef, "getListView", "()Landroid/widget/ListView;");

  /// from: public android.widget.ListView getListView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the activity's list view widget.
  listview_.ListView getListView() =>
      listview_.ListView.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getListView, jni.JniType.objectType, []).object);

  static final _id_getListAdapter = jniAccessors.getMethodIDOf(
      _classRef, "getListAdapter", "()Landroid/widget/ListAdapter;");

  /// from: public android.widget.ListAdapter getListAdapter()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the ListAdapter associated with this activity's ListView.
  listadapter_.ListAdapter getListAdapter() =>
      listadapter_.ListAdapter.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getListAdapter, jni.JniType.objectType, []).object);
}
