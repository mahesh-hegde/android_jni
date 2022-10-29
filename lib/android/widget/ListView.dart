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

import "AbsListView.dart" as abslistview_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../view/View.dart" as view_;

import "ListAdapter.dart" as listadapter_;

import "../content/Intent.dart" as intent_;

import "../graphics/Rect.dart" as rect_;

import "../view/KeyEvent.dart" as keyevent_;

import "../graphics/Canvas.dart" as canvas_;

import "../graphics/drawable/Drawable.dart" as drawable_;

import "../view/accessibility/AccessibilityNodeInfo.dart"
    as accessibilitynodeinfo_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.ListView
///
/// Displays a vertically-scrollable collection of views, where each view is positioned
/// immediatelybelow the previous view in the list.  For a more modern, flexible, and performant
/// approach to displaying lists, use android.support.v7.widget.RecyclerView.
///
///
/// To display a list, you can include a list view in your layout XML file:
///
///
/// <pre>&lt;ListView
///      android:id="@+id/list_view"
///      android:layout_width="match_parent"
///      android:layout_height="match_parent" /&gt;</pre>
///
/// A list view is an <a href="{@docRoot}guide/topics/ui/declaring-layout.html\#AdapterViews">
/// adapter view</a> that does not know the details, such as type and contents, of the views it
/// contains. Instead list view requests views on demand from a ListAdapter as needed,
/// such as to display new views as the user scrolls up or down.
///
///
/// In order to display items in the list, call \#setAdapter(ListAdapter adapter)
/// to associate an adapter with the list.  For a simple example, see the discussion of filling an
/// adapter view with text in the
/// <a href="{@docRoot}guide/topics/ui/declaring-layout.html\#FillingTheLayout">
/// Layouts</a> guide.
///
///
/// To display a more custom view for each item in your dataset, implement a ListAdapter.
/// For example, extend BaseAdapter and create and configure the view for each data item in
/// {@code getView(...)}:
///
///
///  <pre>private class MyAdapter extends BaseAdapter {
///
///      // override other abstract methods here
///
///      &\#64;Override
///      public View getView(int position, View convertView, ViewGroup container) {
///          if (convertView == null) {
///              convertView = getLayoutInflater().inflate(R.layout.list_item, container, false);
///          }
///
///          ((TextView) convertView.findViewById(android.R.id.text1))
///                  .setText(getItem(position));
///          return convertView;
///      }
///  }</pre>
///
/// <p class="note">ListView attempts to reuse view objects in order to improve performance and
/// avoid a lag in response to user scrolls.  To take advantage of this feature, check if the
/// {@code convertView} provided to {@code getView(...)} is null before creating or inflating a new
/// view object.  See
/// <a href="{@docRoot}training/improving-layouts/smooth-scrolling.html">
/// Making ListView Scrolling Smooth</a> for more ways to ensure a smooth user experience.
///
///
/// For a more complete example of creating a custom adapter, see the
/// <a href="{@docRoot}samples/CustomChoiceList/index.html">
///     Custom Choice List</a> sample app.
///
///
/// To specify an action when a user clicks or taps on a single list item, see
/// <a href="{@docRoot}guide/topics/ui/declaring-layout.html\#HandlingUserSelections">
///     Handling click events</a>.
///
///
/// To learn how to populate a list view with a CursorAdapter, see the discussion of filling an
/// adapter view with text in the
/// <a href="{@docRoot}guide/topics/ui/declaring-layout.html\#FillingTheLayout">
/// Layouts</a> guide.
/// See <a href="{@docRoot}guide/topics/ui/layout/listview.html">
///     Using a Loader</a>
/// to learn how to avoid blocking the main thread when using a cursor.
///
///
/// <p class="note">Note, many examples use android.app.ListActivity ListActivity
/// or android.app.ListFragment ListFragment
/// to display a list view. Instead, favor the more flexible approach when writing your own app:
/// use a more generic Activity subclass or Fragment subclass and add a list view to the layout
/// or view hierarchy directly.  This approach gives you more direct control of the
/// list view and adapter.
///
///@attr ref android.R.styleable\#ListView_entries
///@attr ref android.R.styleable\#ListView_divider
///@attr ref android.R.styleable\#ListView_dividerHeight
///@attr ref android.R.styleable\#ListView_headerDividersEnabled
///@attr ref android.R.styleable\#ListView_footerDividersEnabled
class ListView extends abslistview_.AbsListView {
  static final _classRef = jniAccessors.getClassOf("android/widget/ListView");
  ListView.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ListView(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ListView.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ListView.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ListView.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_getMaxScrollAmount =
      jniAccessors.getMethodIDOf(_classRef, "getMaxScrollAmount", "()I");

  /// from: public int getMaxScrollAmount()
  ///
  /// @return The maximum amount a list view will scroll in response to
  ///   an arrow event.
  int getMaxScrollAmount() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxScrollAmount, jni.JniType.intType, []).integer;

  static final _id_addHeaderView = jniAccessors.getMethodIDOf(
      _classRef, "addHeaderView", "(Landroid/view/View;Ljava/lang/Object;Z)V");

  /// from: public void addHeaderView(android.view.View v, java.lang.Object data, boolean isSelectable)
  ///
  /// Add a fixed view to appear at the top of the list. If this method is
  /// called more than once, the views will appear in the order they were
  /// added. Views added using this call can take focus if they want.
  ///
  /// Note: When first introduced, this method could only be called before
  /// setting the adapter with \#setAdapter(ListAdapter). Starting with
  /// android.os.Build.VERSION_CODES\#KITKAT, this method may be
  /// called at any time. If the ListView's adapter does not extend
  /// HeaderViewListAdapter, it will be wrapped with a supporting
  /// instance of WrapperListAdapter.
  ///@param v The view to add.
  ///@param data Data to associate with this view
  ///@param isSelectable whether the item is selectable
  void addHeaderView(view_.View v, jni.JniObject data, bool isSelectable) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addHeaderView,
          jni.JniType.voidType,
          [v.reference, data.reference, isSelectable]).check();

  static final _id_addHeaderView1 = jniAccessors.getMethodIDOf(
      _classRef, "addHeaderView", "(Landroid/view/View;)V");

  /// from: public void addHeaderView(android.view.View v)
  ///
  /// Add a fixed view to appear at the top of the list. If addHeaderView is
  /// called more than once, the views will appear in the order they were
  /// added. Views added using this call can take focus if they want.
  ///
  /// Note: When first introduced, this method could only be called before
  /// setting the adapter with \#setAdapter(ListAdapter). Starting with
  /// android.os.Build.VERSION_CODES\#KITKAT, this method may be
  /// called at any time. If the ListView's adapter does not extend
  /// HeaderViewListAdapter, it will be wrapped with a supporting
  /// instance of WrapperListAdapter.
  ///@param v The view to add.
  void addHeaderView1(view_.View v) => jniAccessors.callMethodWithArgs(
      reference,
      _id_addHeaderView1,
      jni.JniType.voidType,
      [v.reference]).check();

  static final _id_getHeaderViewsCount =
      jniAccessors.getMethodIDOf(_classRef, "getHeaderViewsCount", "()I");

  /// from: public int getHeaderViewsCount()
  int getHeaderViewsCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getHeaderViewsCount, jni.JniType.intType, []).integer;

  static final _id_removeHeaderView = jniAccessors.getMethodIDOf(
      _classRef, "removeHeaderView", "(Landroid/view/View;)Z");

  /// from: public boolean removeHeaderView(android.view.View v)
  ///
  /// Removes a previously-added header view.
  ///@param v The view to remove
  ///@return true if the view was removed, false if the view was not a header
  ///         view
  bool removeHeaderView(view_.View v) => jniAccessors.callMethodWithArgs(
      reference,
      _id_removeHeaderView,
      jni.JniType.booleanType,
      [v.reference]).boolean;

  static final _id_addFooterView = jniAccessors.getMethodIDOf(
      _classRef, "addFooterView", "(Landroid/view/View;Ljava/lang/Object;Z)V");

  /// from: public void addFooterView(android.view.View v, java.lang.Object data, boolean isSelectable)
  ///
  /// Add a fixed view to appear at the bottom of the list. If addFooterView is
  /// called more than once, the views will appear in the order they were
  /// added. Views added using this call can take focus if they want.
  ///
  /// Note: When first introduced, this method could only be called before
  /// setting the adapter with \#setAdapter(ListAdapter). Starting with
  /// android.os.Build.VERSION_CODES\#KITKAT, this method may be
  /// called at any time. If the ListView's adapter does not extend
  /// HeaderViewListAdapter, it will be wrapped with a supporting
  /// instance of WrapperListAdapter.
  ///@param v The view to add.
  ///@param data Data to associate with this view
  ///@param isSelectable true if the footer view can be selected
  void addFooterView(view_.View v, jni.JniObject data, bool isSelectable) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addFooterView,
          jni.JniType.voidType,
          [v.reference, data.reference, isSelectable]).check();

  static final _id_addFooterView1 = jniAccessors.getMethodIDOf(
      _classRef, "addFooterView", "(Landroid/view/View;)V");

  /// from: public void addFooterView(android.view.View v)
  ///
  /// Add a fixed view to appear at the bottom of the list. If addFooterView is
  /// called more than once, the views will appear in the order they were
  /// added. Views added using this call can take focus if they want.
  ///
  /// Note: When first introduced, this method could only be called before
  /// setting the adapter with \#setAdapter(ListAdapter). Starting with
  /// android.os.Build.VERSION_CODES\#KITKAT, this method may be
  /// called at any time. If the ListView's adapter does not extend
  /// HeaderViewListAdapter, it will be wrapped with a supporting
  /// instance of WrapperListAdapter.
  ///@param v The view to add.
  void addFooterView1(view_.View v) => jniAccessors.callMethodWithArgs(
      reference,
      _id_addFooterView1,
      jni.JniType.voidType,
      [v.reference]).check();

  static final _id_getFooterViewsCount =
      jniAccessors.getMethodIDOf(_classRef, "getFooterViewsCount", "()I");

  /// from: public int getFooterViewsCount()
  int getFooterViewsCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getFooterViewsCount, jni.JniType.intType, []).integer;

  static final _id_removeFooterView = jniAccessors.getMethodIDOf(
      _classRef, "removeFooterView", "(Landroid/view/View;)Z");

  /// from: public boolean removeFooterView(android.view.View v)
  ///
  /// Removes a previously-added footer view.
  ///@param v The view to remove
  ///@return true if the view was removed, false if the view was not a footer view
  bool removeFooterView(view_.View v) => jniAccessors.callMethodWithArgs(
      reference,
      _id_removeFooterView,
      jni.JniType.booleanType,
      [v.reference]).boolean;

  static final _id_getAdapter1 = jniAccessors.getMethodIDOf(
      _classRef, "getAdapter", "()Landroid/widget/ListAdapter;");

  /// from: public android.widget.ListAdapter getAdapter()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the adapter currently in use in this ListView. The returned adapter
  /// might not be the same adapter passed to \#setAdapter(ListAdapter) but
  /// might be a WrapperListAdapter.
  ///@return The adapter currently used to display data in this ListView.
  ///@see \#setAdapter(ListAdapter)
  listadapter_.ListAdapter getAdapter1() =>
      listadapter_.ListAdapter.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAdapter1, jni.JniType.objectType, []).object);

  static final _id_setRemoteViewsAdapter = jniAccessors.getMethodIDOf(
      _classRef, "setRemoteViewsAdapter", "(Landroid/content/Intent;)V");

  /// from: public void setRemoteViewsAdapter(android.content.Intent intent)
  ///
  /// Sets up this AbsListView to use a remote views adapter which connects to a RemoteViewsService
  /// through the specified intent.
  ///@param intent the intent used to identify the RemoteViewsService for the adapter to connect to.
  void setRemoteViewsAdapter(intent_.Intent intent) =>
      jniAccessors.callMethodWithArgs(reference, _id_setRemoteViewsAdapter,
          jni.JniType.voidType, [intent.reference]).check();

  static final _id_setAdapter1 = jniAccessors.getMethodIDOf(
      _classRef, "setAdapter", "(Landroid/widget/ListAdapter;)V");

  /// from: public void setAdapter(android.widget.ListAdapter adapter)
  ///
  /// Sets the data behind this ListView.
  ///
  /// The adapter passed to this method may be wrapped by a WrapperListAdapter,
  /// depending on the ListView features currently in use. For instance, adding
  /// headers and/or footers will cause the adapter to be wrapped.
  ///@param adapter The ListAdapter which is responsible for maintaining the
  ///        data backing this list and for producing a view to represent an
  ///        item in that data set.
  ///@see \#getAdapter()
  void setAdapter1(listadapter_.ListAdapter adapter) =>
      jniAccessors.callMethodWithArgs(reference, _id_setAdapter1,
          jni.JniType.voidType, [adapter.reference]).check();

  static final _id_requestChildRectangleOnScreen1 = jniAccessors.getMethodIDOf(
      _classRef,
      "requestChildRectangleOnScreen",
      "(Landroid/view/View;Landroid/graphics/Rect;Z)Z");

  /// from: public boolean requestChildRectangleOnScreen(android.view.View child, android.graphics.Rect rect, boolean immediate)
  bool requestChildRectangleOnScreen1(
          view_.View child, rect_.Rect rect, bool immediate) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_requestChildRectangleOnScreen1,
          jni.JniType.booleanType,
          [child.reference, rect.reference, immediate]).boolean;

  static final _id_smoothScrollToPosition =
      jniAccessors.getMethodIDOf(_classRef, "smoothScrollToPosition", "(I)V");

  /// from: public void smoothScrollToPosition(int position)
  ///
  /// Smoothly scroll to the specified adapter position. The view will
  /// scroll such that the indicated position is displayed.
  ///@param position Scroll to this adapter position.
  void smoothScrollToPosition(int position) => jniAccessors.callMethodWithArgs(
      reference,
      _id_smoothScrollToPosition,
      jni.JniType.voidType,
      [position]).check();

  static final _id_smoothScrollByOffset =
      jniAccessors.getMethodIDOf(_classRef, "smoothScrollByOffset", "(I)V");

  /// from: public void smoothScrollByOffset(int offset)
  ///
  /// Smoothly scroll to the specified adapter position offset. The view will
  /// scroll such that the indicated position is displayed.
  ///@param offset The amount to offset from the adapter position to scroll to.
  void smoothScrollByOffset(int offset) => jniAccessors.callMethodWithArgs(
      reference,
      _id_smoothScrollByOffset,
      jni.JniType.voidType,
      [offset]).check();

  static final _id_onDetachedFromWindow =
      jniAccessors.getMethodIDOf(_classRef, "onDetachedFromWindow", "()V");

  /// from: protected void onDetachedFromWindow()
  void onDetachedFromWindow() => jniAccessors.callMethodWithArgs(
      reference, _id_onDetachedFromWindow, jni.JniType.voidType, []).check();

  static final _id_onSizeChanged1 =
      jniAccessors.getMethodIDOf(_classRef, "onSizeChanged", "(IIII)V");

  /// from: protected void onSizeChanged(int w, int h, int oldw, int oldh)
  void onSizeChanged1(int w, int h, int oldw, int oldh) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSizeChanged1,
          jni.JniType.voidType, [w, h, oldw, oldh]).check();

  static final _id_onMeasure1 =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure1(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure1,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_layoutChildren =
      jniAccessors.getMethodIDOf(_classRef, "layoutChildren", "()V");

  /// from: protected void layoutChildren()
  void layoutChildren() => jniAccessors.callMethodWithArgs(
      reference, _id_layoutChildren, jni.JniType.voidType, []).check();

  static final _id_canAnimate1 =
      jniAccessors.getMethodIDOf(_classRef, "canAnimate", "()Z");

  /// from: protected boolean canAnimate()
  bool canAnimate1() => jniAccessors.callMethodWithArgs(
      reference, _id_canAnimate1, jni.JniType.booleanType, []).boolean;

  static final _id_setSelection1 =
      jniAccessors.getMethodIDOf(_classRef, "setSelection", "(I)V");

  /// from: public void setSelection(int position)
  ///
  /// Sets the currently selected item. If in touch mode, the item will not be selected
  /// but it will still be positioned appropriately. If the specified selection position
  /// is less than 0, then the item at position 0 will be selected.
  ///@param position Index (starting at 0) of the data item to be selected.
  void setSelection1(int position) => jniAccessors.callMethodWithArgs(
      reference, _id_setSelection1, jni.JniType.voidType, [position]).check();

  static final _id_setSelectionAfterHeaderView = jniAccessors.getMethodIDOf(
      _classRef, "setSelectionAfterHeaderView", "()V");

  /// from: public void setSelectionAfterHeaderView()
  ///
  /// setSelectionAfterHeaderView set the selection to be the first list item
  /// after the header views.
  void setSelectionAfterHeaderView() => jniAccessors.callMethodWithArgs(
      reference,
      _id_setSelectionAfterHeaderView,
      jni.JniType.voidType, []).check();

  static final _id_dispatchKeyEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "dispatchKeyEvent", "(Landroid/view/KeyEvent;)Z");

  /// from: public boolean dispatchKeyEvent(android.view.KeyEvent event)
  bool dispatchKeyEvent1(keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_dispatchKeyEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_onKeyDown1 = jniAccessors.getMethodIDOf(
      _classRef, "onKeyDown", "(ILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyDown(int keyCode, android.view.KeyEvent event)
  bool onKeyDown1(int keyCode, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onKeyDown1,
          jni.JniType.booleanType, [keyCode, event.reference]).boolean;

  static final _id_onKeyMultiple1 = jniAccessors.getMethodIDOf(
      _classRef, "onKeyMultiple", "(IILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyMultiple(int keyCode, int repeatCount, android.view.KeyEvent event)
  bool onKeyMultiple1(int keyCode, int repeatCount, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onKeyMultiple1,
          jni.JniType.booleanType,
          [keyCode, repeatCount, event.reference]).boolean;

  static final _id_onKeyUp1 = jniAccessors.getMethodIDOf(
      _classRef, "onKeyUp", "(ILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyUp(int keyCode, android.view.KeyEvent event)
  bool onKeyUp1(int keyCode, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onKeyUp1,
          jni.JniType.booleanType, [keyCode, event.reference]).boolean;

  static final _id_setItemsCanFocus =
      jniAccessors.getMethodIDOf(_classRef, "setItemsCanFocus", "(Z)V");

  /// from: public void setItemsCanFocus(boolean itemsCanFocus)
  ///
  /// Indicates that the views created by the ListAdapter can contain focusable
  /// items.
  ///@param itemsCanFocus true if items can get focus, false otherwise
  void setItemsCanFocus(bool itemsCanFocus) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setItemsCanFocus,
      jni.JniType.voidType,
      [itemsCanFocus]).check();

  static final _id_getItemsCanFocus =
      jniAccessors.getMethodIDOf(_classRef, "getItemsCanFocus", "()Z");

  /// from: public boolean getItemsCanFocus()
  ///
  /// @return Whether the views created by the ListAdapter can contain focusable
  /// items.
  bool getItemsCanFocus() => jniAccessors.callMethodWithArgs(
      reference, _id_getItemsCanFocus, jni.JniType.booleanType, []).boolean;

  static final _id_isOpaque1 =
      jniAccessors.getMethodIDOf(_classRef, "isOpaque", "()Z");

  /// from: public boolean isOpaque()
  bool isOpaque1() => jniAccessors.callMethodWithArgs(
      reference, _id_isOpaque1, jni.JniType.booleanType, []).boolean;

  static final _id_setCacheColorHint =
      jniAccessors.getMethodIDOf(_classRef, "setCacheColorHint", "(I)V");

  /// from: public void setCacheColorHint(int color)
  void setCacheColorHint(int color) => jniAccessors.callMethodWithArgs(
      reference, _id_setCacheColorHint, jni.JniType.voidType, [color]).check();

  static final _id_dispatchDraw1 = jniAccessors.getMethodIDOf(
      _classRef, "dispatchDraw", "(Landroid/graphics/Canvas;)V");

  /// from: protected void dispatchDraw(android.graphics.Canvas canvas)
  void dispatchDraw1(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference,
      _id_dispatchDraw1,
      jni.JniType.voidType,
      [canvas.reference]).check();

  static final _id_drawChild1 = jniAccessors.getMethodIDOf(_classRef,
      "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z");

  /// from: protected boolean drawChild(android.graphics.Canvas canvas, android.view.View child, long drawingTime)
  bool drawChild1(canvas_.Canvas canvas, view_.View child, int drawingTime) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_drawChild1,
          jni.JniType.booleanType,
          [canvas.reference, child.reference, drawingTime]).boolean;

  static final _id_getDivider = jniAccessors.getMethodIDOf(
      _classRef, "getDivider", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getDivider()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the drawable that will be drawn between each item in the list.
  ///@return the current drawable drawn between list elements
  /// This value may be {@code null}.
  ///@attr ref R.styleable\#ListView_divider
  drawable_.Drawable getDivider() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDivider, jni.JniType.objectType, []).object);

  static final _id_setDivider = jniAccessors.getMethodIDOf(
      _classRef, "setDivider", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setDivider(android.graphics.drawable.Drawable divider)
  ///
  /// Sets the drawable that will be drawn between each item in the list.
  ///
  /// <strong>Note:</strong> If the drawable does not have an intrinsic
  /// height, you should also call \#setDividerHeight(int).
  ///@param divider the drawable to use
  /// This value may be {@code null}.
  ///@attr ref R.styleable\#ListView_divider
  void setDivider(drawable_.Drawable divider) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDivider,
          jni.JniType.voidType, [divider.reference]).check();

  static final _id_getDividerHeight =
      jniAccessors.getMethodIDOf(_classRef, "getDividerHeight", "()I");

  /// from: public int getDividerHeight()
  ///
  /// @return Returns the height of the divider that will be drawn between each item in the list.
  int getDividerHeight() => jniAccessors.callMethodWithArgs(
      reference, _id_getDividerHeight, jni.JniType.intType, []).integer;

  static final _id_setDividerHeight =
      jniAccessors.getMethodIDOf(_classRef, "setDividerHeight", "(I)V");

  /// from: public void setDividerHeight(int height)
  ///
  /// Sets the height of the divider that will be drawn between each item in the list. Calling
  /// this will override the intrinsic height as set by \#setDivider(Drawable)
  ///@param height The new height of the divider in pixels.
  void setDividerHeight(int height) => jniAccessors.callMethodWithArgs(
      reference, _id_setDividerHeight, jni.JniType.voidType, [height]).check();

  static final _id_setHeaderDividersEnabled =
      jniAccessors.getMethodIDOf(_classRef, "setHeaderDividersEnabled", "(Z)V");

  /// from: public void setHeaderDividersEnabled(boolean headerDividersEnabled)
  ///
  /// Enables or disables the drawing of the divider for header views.
  ///@param headerDividersEnabled True to draw the headers, false otherwise.
  ///@see \#setFooterDividersEnabled(boolean)
  ///@see \#areHeaderDividersEnabled()
  ///@see \#addHeaderView(android.view.View)
  void setHeaderDividersEnabled(bool headerDividersEnabled) =>
      jniAccessors.callMethodWithArgs(reference, _id_setHeaderDividersEnabled,
          jni.JniType.voidType, [headerDividersEnabled]).check();

  static final _id_areHeaderDividersEnabled =
      jniAccessors.getMethodIDOf(_classRef, "areHeaderDividersEnabled", "()Z");

  /// from: public boolean areHeaderDividersEnabled()
  ///
  /// @return Whether the drawing of the divider for header views is enabled
  ///@see \#setHeaderDividersEnabled(boolean)
  bool areHeaderDividersEnabled() => jniAccessors.callMethodWithArgs(reference,
      _id_areHeaderDividersEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_setFooterDividersEnabled =
      jniAccessors.getMethodIDOf(_classRef, "setFooterDividersEnabled", "(Z)V");

  /// from: public void setFooterDividersEnabled(boolean footerDividersEnabled)
  ///
  /// Enables or disables the drawing of the divider for footer views.
  ///@param footerDividersEnabled True to draw the footers, false otherwise.
  ///@see \#setHeaderDividersEnabled(boolean)
  ///@see \#areFooterDividersEnabled()
  ///@see \#addFooterView(android.view.View)
  void setFooterDividersEnabled(bool footerDividersEnabled) =>
      jniAccessors.callMethodWithArgs(reference, _id_setFooterDividersEnabled,
          jni.JniType.voidType, [footerDividersEnabled]).check();

  static final _id_areFooterDividersEnabled =
      jniAccessors.getMethodIDOf(_classRef, "areFooterDividersEnabled", "()Z");

  /// from: public boolean areFooterDividersEnabled()
  ///
  /// @return Whether the drawing of the divider for footer views is enabled
  ///@see \#setFooterDividersEnabled(boolean)
  bool areFooterDividersEnabled() => jniAccessors.callMethodWithArgs(reference,
      _id_areFooterDividersEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_setOverscrollHeader = jniAccessors.getMethodIDOf(_classRef,
      "setOverscrollHeader", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setOverscrollHeader(android.graphics.drawable.Drawable header)
  ///
  /// Sets the drawable that will be drawn above all other list content.
  /// This area can become visible when the user overscrolls the list.
  ///@param header The drawable to use
  void setOverscrollHeader(drawable_.Drawable header) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOverscrollHeader,
          jni.JniType.voidType, [header.reference]).check();

  static final _id_getOverscrollHeader = jniAccessors.getMethodIDOf(_classRef,
      "getOverscrollHeader", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getOverscrollHeader()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The drawable that will be drawn above all other list content
  drawable_.Drawable getOverscrollHeader() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getOverscrollHeader, jni.JniType.objectType, []).object);

  static final _id_setOverscrollFooter = jniAccessors.getMethodIDOf(_classRef,
      "setOverscrollFooter", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setOverscrollFooter(android.graphics.drawable.Drawable footer)
  ///
  /// Sets the drawable that will be drawn below all other list content.
  /// This area can become visible when the user overscrolls the list,
  /// or when the list's content does not fully fill the container area.
  ///@param footer The drawable to use
  void setOverscrollFooter(drawable_.Drawable footer) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOverscrollFooter,
          jni.JniType.voidType, [footer.reference]).check();

  static final _id_getOverscrollFooter = jniAccessors.getMethodIDOf(_classRef,
      "getOverscrollFooter", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getOverscrollFooter()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The drawable that will be drawn below all other list content
  drawable_.Drawable getOverscrollFooter() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getOverscrollFooter, jni.JniType.objectType, []).object);

  static final _id_onFocusChanged1 = jniAccessors.getMethodIDOf(
      _classRef, "onFocusChanged", "(ZILandroid/graphics/Rect;)V");

  /// from: protected void onFocusChanged(boolean gainFocus, int direction, android.graphics.Rect previouslyFocusedRect)
  void onFocusChanged1(
          bool gainFocus, int direction, rect_.Rect previouslyFocusedRect) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onFocusChanged1,
          jni.JniType.voidType,
          [gainFocus, direction, previouslyFocusedRect.reference]).check();

  static final _id_onFinishInflate1 =
      jniAccessors.getMethodIDOf(_classRef, "onFinishInflate", "()V");

  /// from: protected void onFinishInflate()
  void onFinishInflate1() => jniAccessors.callMethodWithArgs(
      reference, _id_onFinishInflate1, jni.JniType.voidType, []).check();

  static final _id_getCheckItemIds =
      jniAccessors.getMethodIDOf(_classRef, "getCheckItemIds", "()[J");

  /// from: public long[] getCheckItemIds()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the set of checked items ids. The result is only valid if the
  /// choice mode has not been set to \#CHOICE_MODE_NONE.
  ///@return A new array which contains the id of each checked item in the
  ///         list.
  ///@deprecated Use \#getCheckedItemIds() instead.
  jni.JniObject getCheckItemIds() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCheckItemIds, jni.JniType.objectType, []).object);

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);

  static final _id_onInitializeAccessibilityNodeInfoForItem =
      jniAccessors.getMethodIDOf(
          _classRef,
          "onInitializeAccessibilityNodeInfoForItem",
          "(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V");

  /// from: public void onInitializeAccessibilityNodeInfoForItem(android.view.View view, int position, android.view.accessibility.AccessibilityNodeInfo info)
  void onInitializeAccessibilityNodeInfoForItem(view_.View view, int position,
          accessibilitynodeinfo_.AccessibilityNodeInfo info) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onInitializeAccessibilityNodeInfoForItem,
          jni.JniType.voidType,
          [view.reference, position, info.reference]).check();
}

/// from: android.widget.ListView$FixedViewInfo
///
/// A class that represents a fixed view in a list, for example a header at the top
/// or a footer at the bottom.
class ListView_FixedViewInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/ListView\$FixedViewInfo");
  ListView_FixedViewInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_data =
      jniAccessors.getFieldIDOf(_classRef, "data", "Ljava/lang/Object;");

  /// from: public java.lang.Object data
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The data backing the view. This is returned from ListAdapter\#getItem(int).
  jni.JniObject get data => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_data, jni.JniType.objectType)
      .object);

  /// from: public java.lang.Object data
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The data backing the view. This is returned from ListAdapter\#getItem(int).
  set data(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_data, value.reference);

  static final _id_isSelectable =
      jniAccessors.getFieldIDOf(_classRef, "isSelectable", "Z");

  /// from: public boolean isSelectable
  ///
  /// <code>true</code> if the fixed view should be selectable in the list
  bool get isSelectable => jniAccessors
      .getField(reference, _id_isSelectable, jni.JniType.booleanType)
      .boolean;

  /// from: public boolean isSelectable
  ///
  /// <code>true</code> if the fixed view should be selectable in the list
  set isSelectable(bool value) =>
      jniEnv.SetBooleanField(reference, _id_isSelectable, value ? 1 : 0);

  static final _id_view =
      jniAccessors.getFieldIDOf(_classRef, "view", "Landroid/view/View;");

  /// from: public android.view.View view
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The view to add to the list
  view_.View get view => view_.View.fromRef(jniAccessors
      .getField(reference, _id_view, jni.JniType.objectType)
      .object);

  /// from: public android.view.View view
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The view to add to the list
  set view(view_.View value) =>
      jniEnv.SetObjectField(reference, _id_view, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ListView_FixedViewInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}
