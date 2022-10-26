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

import "../view/ViewGroup.dart" as viewgroup_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../view/View.dart" as view_;

import "../util/SparseArray.dart" as sparsearray_;

import "../view/ViewStructure.dart" as viewstructure_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.AdapterView
///
/// An AdapterView is a view whose children are determined by an Adapter.
///
///
/// See ListView, GridView, Spinner and
///      Gallery for commonly used subclasses of AdapterView.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about using AdapterView, read the
/// <a href="{@docRoot}guide/topics/ui/binding.html">Binding to Data with AdapterView</a>
/// developer guide.
///</div>
class AdapterView extends viewgroup_.ViewGroup {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/AdapterView");
  AdapterView.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int INVALID_POSITION
  ///
  /// Represents an invalid position. All valid positions are in the range 0 to 1 less than the
  /// number of items in the current adapter.
  static const INVALID_POSITION = -1;

  /// from: static public final long INVALID_ROW_ID
  ///
  /// Represents an empty or invalid row id
  static const INVALID_ROW_ID = -9223372036854775808;

  /// from: static public final int ITEM_VIEW_TYPE_HEADER_OR_FOOTER
  ///
  /// The item view type returned by Adapter\#getItemViewType(int) when
  /// the item is a header or footer.
  static const ITEM_VIEW_TYPE_HEADER_OR_FOOTER = -2;

  /// from: static public final int ITEM_VIEW_TYPE_IGNORE
  ///
  /// The item view type returned by Adapter\#getItemViewType(int) when
  /// the adapter does not want the item's view recycled.
  static const ITEM_VIEW_TYPE_IGNORE = -1;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AdapterView(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AdapterView.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AdapterView.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AdapterView.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_setOnItemClickListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnItemClickListener",
      "(Landroid/widget/AdapterView\$OnItemClickListener;)V");

  /// from: public void setOnItemClickListener(android.widget.AdapterView.OnItemClickListener listener)
  ///
  /// Register a callback to be invoked when an item in this AdapterView has
  /// been clicked.
  ///@param listener The callback that will be invoked.
  ///
  /// This value may be {@code null}.
  void setOnItemClickListener(AdapterView_OnItemClickListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnItemClickListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_getOnItemClickListener = jniAccessors.getMethodIDOf(
      _classRef,
      "getOnItemClickListener",
      "()Landroid/widget/AdapterView\$OnItemClickListener;");

  /// from: public final android.widget.AdapterView.OnItemClickListener getOnItemClickListener()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The callback to be invoked with an item in this AdapterView has
  ///         been clicked, or null if no callback has been set.
  AdapterView_OnItemClickListener getOnItemClickListener() =>
      AdapterView_OnItemClickListener.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getOnItemClickListener,
          jni.JniType.objectType, []).object);

  static final _id_performItemClick = jniAccessors.getMethodIDOf(
      _classRef, "performItemClick", "(Landroid/view/View;IJ)Z");

  /// from: public boolean performItemClick(android.view.View view, int position, long id)
  ///
  /// Call the OnItemClickListener, if it is defined. Performs all normal
  /// actions associated with clicking: reporting accessibility event, playing
  /// a sound, etc.
  ///@param view The view within the AdapterView that was clicked.
  ///@param position The position of the view in the adapter.
  ///@param id The row id of the item that was clicked.
  ///@return True if there was an assigned OnItemClickListener that was
  ///         called, false otherwise is returned.
  bool performItemClick(view_.View view, int position, int id) =>
      jniAccessors.callMethodWithArgs(reference, _id_performItemClick,
          jni.JniType.booleanType, [view.reference, position, id]).boolean;

  static final _id_setOnItemLongClickListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnItemLongClickListener",
      "(Landroid/widget/AdapterView\$OnItemLongClickListener;)V");

  /// from: public void setOnItemLongClickListener(android.widget.AdapterView.OnItemLongClickListener listener)
  ///
  /// Register a callback to be invoked when an item in this AdapterView has
  /// been clicked and held
  ///@param listener The callback that will run
  void setOnItemLongClickListener(
          AdapterView_OnItemLongClickListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnItemLongClickListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_getOnItemLongClickListener = jniAccessors.getMethodIDOf(
      _classRef,
      "getOnItemLongClickListener",
      "()Landroid/widget/AdapterView\$OnItemLongClickListener;");

  /// from: public final android.widget.AdapterView.OnItemLongClickListener getOnItemLongClickListener()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The callback to be invoked with an item in this AdapterView has
  ///         been clicked and held, or null if no callback has been set.
  AdapterView_OnItemLongClickListener getOnItemLongClickListener() =>
      AdapterView_OnItemLongClickListener.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getOnItemLongClickListener,
              jni.JniType.objectType, []).object);

  static final _id_setOnItemSelectedListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnItemSelectedListener",
      "(Landroid/widget/AdapterView\$OnItemSelectedListener;)V");

  /// from: public void setOnItemSelectedListener(android.widget.AdapterView.OnItemSelectedListener listener)
  ///
  /// Register a callback to be invoked when an item in this AdapterView has
  /// been selected.
  ///@param listener The callback that will run
  ///
  /// This value may be {@code null}.
  void setOnItemSelectedListener(AdapterView_OnItemSelectedListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnItemSelectedListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_getOnItemSelectedListener = jniAccessors.getMethodIDOf(
      _classRef,
      "getOnItemSelectedListener",
      "()Landroid/widget/AdapterView\$OnItemSelectedListener;");

  /// from: public final android.widget.AdapterView.OnItemSelectedListener getOnItemSelectedListener()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return This value may be {@code null}.
  AdapterView_OnItemSelectedListener getOnItemSelectedListener() =>
      AdapterView_OnItemSelectedListener.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getOnItemSelectedListener,
              jni.JniType.objectType, []).object);

  static final _id_addView = jniAccessors.getMethodIDOf(
      _classRef, "addView", "(Landroid/view/View;)V");

  /// from: public void addView(android.view.View child)
  ///
  /// This method is not supported and throws an UnsupportedOperationException when called.
  ///@param child Ignored.
  ///@throws UnsupportedOperationException Every time this method is invoked.
  void addView(view_.View child) => jniAccessors.callMethodWithArgs(
      reference, _id_addView, jni.JniType.voidType, [child.reference]).check();

  static final _id_addView1 = jniAccessors.getMethodIDOf(
      _classRef, "addView", "(Landroid/view/View;I)V");

  /// from: public void addView(android.view.View child, int index)
  ///
  /// This method is not supported and throws an UnsupportedOperationException when called.
  ///@param child Ignored.
  ///@param index Ignored.
  ///@throws UnsupportedOperationException Every time this method is invoked.
  void addView1(view_.View child, int index) => jniAccessors.callMethodWithArgs(
      reference,
      _id_addView1,
      jni.JniType.voidType,
      [child.reference, index]).check();

  static final _id_addView3 = jniAccessors.getMethodIDOf(_classRef, "addView",
      "(Landroid/view/View;Landroid/view/ViewGroup\$LayoutParams;)V");

  /// from: public void addView(android.view.View child, android.view.ViewGroup.LayoutParams params)
  ///
  /// This method is not supported and throws an UnsupportedOperationException when called.
  ///@param child Ignored.
  ///@param params Ignored.
  ///@throws UnsupportedOperationException Every time this method is invoked.
  void addView3(view_.View child, viewgroup_.ViewGroup_LayoutParams params) =>
      jniAccessors.callMethodWithArgs(reference, _id_addView3,
          jni.JniType.voidType, [child.reference, params.reference]).check();

  static final _id_addView4 = jniAccessors.getMethodIDOf(_classRef, "addView",
      "(Landroid/view/View;ILandroid/view/ViewGroup\$LayoutParams;)V");

  /// from: public void addView(android.view.View child, int index, android.view.ViewGroup.LayoutParams params)
  ///
  /// This method is not supported and throws an UnsupportedOperationException when called.
  ///@param child Ignored.
  ///@param index Ignored.
  ///@param params Ignored.
  ///@throws UnsupportedOperationException Every time this method is invoked.
  void addView4(view_.View child, int index,
          viewgroup_.ViewGroup_LayoutParams params) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addView4,
          jni.JniType.voidType,
          [child.reference, index, params.reference]).check();

  static final _id_removeView = jniAccessors.getMethodIDOf(
      _classRef, "removeView", "(Landroid/view/View;)V");

  /// from: public void removeView(android.view.View child)
  ///
  /// This method is not supported and throws an UnsupportedOperationException when called.
  ///@param child Ignored.
  ///@throws UnsupportedOperationException Every time this method is invoked.
  void removeView(view_.View child) => jniAccessors.callMethodWithArgs(
      reference,
      _id_removeView,
      jni.JniType.voidType,
      [child.reference]).check();

  static final _id_removeViewAt =
      jniAccessors.getMethodIDOf(_classRef, "removeViewAt", "(I)V");

  /// from: public void removeViewAt(int index)
  ///
  /// This method is not supported and throws an UnsupportedOperationException when called.
  ///@param index Ignored.
  ///@throws UnsupportedOperationException Every time this method is invoked.
  void removeViewAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_removeViewAt, jni.JniType.voidType, [index]).check();

  static final _id_removeAllViews =
      jniAccessors.getMethodIDOf(_classRef, "removeAllViews", "()V");

  /// from: public void removeAllViews()
  ///
  /// This method is not supported and throws an UnsupportedOperationException when called.
  ///@throws UnsupportedOperationException Every time this method is invoked.
  void removeAllViews() => jniAccessors.callMethodWithArgs(
      reference, _id_removeAllViews, jni.JniType.voidType, []).check();

  static final _id_onLayout =
      jniAccessors.getMethodIDOf(_classRef, "onLayout", "(ZIIII)V");

  /// from: protected void onLayout(boolean changed, int left, int top, int right, int bottom)
  void onLayout(bool changed, int left, int top, int right, int bottom) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLayout,
          jni.JniType.voidType, [changed, left, top, right, bottom]).check();

  static final _id_getSelectedItemPosition =
      jniAccessors.getMethodIDOf(_classRef, "getSelectedItemPosition", "()I");

  /// from: public int getSelectedItemPosition()
  ///
  /// Return the position of the currently selected item within the adapter's data set
  ///@return int Position (starting at 0), or \#INVALID_POSITION if there is nothing selected.
  int getSelectedItemPosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getSelectedItemPosition, jni.JniType.intType, []).integer;

  static final _id_getSelectedItemId =
      jniAccessors.getMethodIDOf(_classRef, "getSelectedItemId", "()J");

  /// from: public long getSelectedItemId()
  ///
  /// @return The id corresponding to the currently selected item, or \#INVALID_ROW_ID
  /// if nothing is selected.
  int getSelectedItemId() => jniAccessors.callMethodWithArgs(
      reference, _id_getSelectedItemId, jni.JniType.longType, []).long;

  static final _id_getSelectedView = jniAccessors.getMethodIDOf(
      _classRef, "getSelectedView", "()Landroid/view/View;");

  /// from: public abstract android.view.View getSelectedView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The view corresponding to the currently selected item, or null
  /// if nothing is selected
  view_.View getSelectedView() =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSelectedView, jni.JniType.objectType, []).object);

  static final _id_getSelectedItem = jniAccessors.getMethodIDOf(
      _classRef, "getSelectedItem", "()Ljava/lang/Object;");

  /// from: public java.lang.Object getSelectedItem()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The data corresponding to the currently selected item, or
  /// null if there is nothing selected.
  jni.JniObject getSelectedItem() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSelectedItem, jni.JniType.objectType, []).object);

  static final _id_getCount =
      jniAccessors.getMethodIDOf(_classRef, "getCount", "()I");

  /// from: public int getCount()
  ///
  /// @return The number of items owned by the Adapter associated with this
  ///         AdapterView. (This is the number of data items, which may be
  ///         larger than the number of visible views.)
  int getCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getCount, jni.JniType.intType, []).integer;

  static final _id_getPositionForView = jniAccessors.getMethodIDOf(
      _classRef, "getPositionForView", "(Landroid/view/View;)I");

  /// from: public int getPositionForView(android.view.View view)
  ///
  /// Returns the position within the adapter's data set for the view, where
  /// view is a an adapter item or a descendant of an adapter item.
  ///
  /// <strong>Note:</strong> The result of this method only reflects the
  /// position of the data bound to <var>view</var> during the most recent
  /// layout pass. If the adapter's data set has changed without a subsequent
  /// layout pass, the position returned by this method may not match the
  /// current position of the data within the adapter.
  ///@param view an adapter item, or a descendant of an adapter item. This
  ///             must be visible in this AdapterView at the time of the call.
  ///@return the position within the adapter's data set of the view, or
  ///         \#INVALID_POSITION if the view does not correspond to a
  ///         list item (or it is not currently visible)
  int getPositionForView(view_.View view) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getPositionForView,
      jni.JniType.intType,
      [view.reference]).integer;

  static final _id_getFirstVisiblePosition =
      jniAccessors.getMethodIDOf(_classRef, "getFirstVisiblePosition", "()I");

  /// from: public int getFirstVisiblePosition()
  ///
  /// Returns the position within the adapter's data set for the first item
  /// displayed on screen.
  ///@return The position within the adapter's data set
  int getFirstVisiblePosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getFirstVisiblePosition, jni.JniType.intType, []).integer;

  static final _id_getLastVisiblePosition =
      jniAccessors.getMethodIDOf(_classRef, "getLastVisiblePosition", "()I");

  /// from: public int getLastVisiblePosition()
  ///
  /// Returns the position within the adapter's data set for the last item
  /// displayed on screen.
  ///@return The position within the adapter's data set
  int getLastVisiblePosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getLastVisiblePosition, jni.JniType.intType, []).integer;

  static final _id_setSelection =
      jniAccessors.getMethodIDOf(_classRef, "setSelection", "(I)V");

  /// from: public abstract void setSelection(int position)
  ///
  /// Sets the currently selected item. To support accessibility subclasses that
  /// override this method must invoke the overriden super method first.
  ///@param position Index (starting at 0) of the data item to be selected.
  void setSelection(int position) => jniAccessors.callMethodWithArgs(
      reference, _id_setSelection, jni.JniType.voidType, [position]).check();

  static final _id_setEmptyView = jniAccessors.getMethodIDOf(
      _classRef, "setEmptyView", "(Landroid/view/View;)V");

  /// from: public void setEmptyView(android.view.View emptyView)
  ///
  /// Sets the view to show if the adapter is empty
  void setEmptyView(view_.View emptyView) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setEmptyView,
      jni.JniType.voidType,
      [emptyView.reference]).check();

  static final _id_getEmptyView = jniAccessors.getMethodIDOf(
      _classRef, "getEmptyView", "()Landroid/view/View;");

  /// from: public android.view.View getEmptyView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// When the current adapter is empty, the AdapterView can display a special view
  /// called the empty view. The empty view is used to provide feedback to the user
  /// that no data is available in this AdapterView.
  ///@return The view to show if the adapter is empty.
  view_.View getEmptyView() =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEmptyView, jni.JniType.objectType, []).object);

  static final _id_setFocusable2 =
      jniAccessors.getMethodIDOf(_classRef, "setFocusable", "(I)V");

  /// from: public void setFocusable(int focusable)
  ///
  /// @param focusable Value is android.view.View\#NOT_FOCUSABLE, android.view.View\#FOCUSABLE, or android.view.View\#FOCUSABLE_AUTO
  void setFocusable2(int focusable) => jniAccessors.callMethodWithArgs(
      reference, _id_setFocusable2, jni.JniType.voidType, [focusable]).check();

  static final _id_setFocusableInTouchMode1 =
      jniAccessors.getMethodIDOf(_classRef, "setFocusableInTouchMode", "(Z)V");

  /// from: public void setFocusableInTouchMode(boolean focusable)
  void setFocusableInTouchMode1(bool focusable) =>
      jniAccessors.callMethodWithArgs(reference, _id_setFocusableInTouchMode1,
          jni.JniType.voidType, [focusable]).check();

  static final _id_getItemAtPosition = jniAccessors.getMethodIDOf(
      _classRef, "getItemAtPosition", "(I)Ljava/lang/Object;");

  /// from: public java.lang.Object getItemAtPosition(int position)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the data associated with the specified position in the list.
  ///@param position Which data to get
  ///@return The data associated with the specified position in the list
  jni.JniObject getItemAtPosition(int position) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getItemAtPosition, jni.JniType.objectType, [position]).object);

  static final _id_getItemIdAtPosition =
      jniAccessors.getMethodIDOf(_classRef, "getItemIdAtPosition", "(I)J");

  /// from: public long getItemIdAtPosition(int position)
  int getItemIdAtPosition(int position) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getItemIdAtPosition,
      jni.JniType.longType,
      [position]).long;

  static final _id_setOnClickListener1 = jniAccessors.getMethodIDOf(_classRef,
      "setOnClickListener", "(Landroid/view/View\$OnClickListener;)V");

  /// from: public void setOnClickListener(android.view.View.OnClickListener l)
  void setOnClickListener1(view_.View_OnClickListener l) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnClickListener1,
          jni.JniType.voidType, [l.reference]).check();

  static final _id_dispatchSaveInstanceState = jniAccessors.getMethodIDOf(
      _classRef, "dispatchSaveInstanceState", "(Landroid/util/SparseArray;)V");

  /// from: protected void dispatchSaveInstanceState(android.util.SparseArray<android.os.Parcelable> container)
  ///
  /// Override to prevent freezing of any views created by the adapter.
  void dispatchSaveInstanceState(sparsearray_.SparseArray container) =>
      jniAccessors.callMethodWithArgs(reference, _id_dispatchSaveInstanceState,
          jni.JniType.voidType, [container.reference]).check();

  static final _id_dispatchRestoreInstanceState = jniAccessors.getMethodIDOf(
      _classRef,
      "dispatchRestoreInstanceState",
      "(Landroid/util/SparseArray;)V");

  /// from: protected void dispatchRestoreInstanceState(android.util.SparseArray<android.os.Parcelable> container)
  ///
  /// Override to prevent thawing of any views created by the adapter.
  void dispatchRestoreInstanceState(sparsearray_.SparseArray container) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_dispatchRestoreInstanceState,
          jni.JniType.voidType,
          [container.reference]).check();

  static final _id_onDetachedFromWindow =
      jniAccessors.getMethodIDOf(_classRef, "onDetachedFromWindow", "()V");

  /// from: protected void onDetachedFromWindow()
  void onDetachedFromWindow() => jniAccessors.callMethodWithArgs(
      reference, _id_onDetachedFromWindow, jni.JniType.voidType, []).check();

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);

  static final _id_canAnimate =
      jniAccessors.getMethodIDOf(_classRef, "canAnimate", "()Z");

  /// from: protected boolean canAnimate()
  bool canAnimate() => jniAccessors.callMethodWithArgs(
      reference, _id_canAnimate, jni.JniType.booleanType, []).boolean;

  static final _id_onProvideAutofillStructure1 = jniAccessors.getMethodIDOf(
      _classRef,
      "onProvideAutofillStructure",
      "(Landroid/view/ViewStructure;I)V");

  /// from: public void onProvideAutofillStructure(android.view.ViewStructure structure, int flags)
  ///
  /// {@inheritDoc}
  ///
  /// It also sets the autofill options in the structure; when overridden, it should set it as
  /// well, either explicitly by calling ViewStructure\#setAutofillOptions(CharSequence[])
  /// or implicitly by calling {@code super.onProvideAutofillStructure(structure, flags)}.
  void onProvideAutofillStructure1(
          viewstructure_.ViewStructure structure, int flags) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onProvideAutofillStructure1,
          jni.JniType.voidType,
          [structure.reference, flags]).check();
}

/// from: android.widget.AdapterView$OnItemSelectedListener
///
/// Interface definition for a callback to be invoked when
/// an item in this view has been selected.
class AdapterView_OnItemSelectedListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/AdapterView\$OnItemSelectedListener");
  AdapterView_OnItemSelectedListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onItemSelected = jniAccessors.getMethodIDOf(_classRef,
      "onItemSelected", "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V");

  /// from: public abstract void onItemSelected(android.widget.AdapterView<?> parent, android.view.View view, int position, long id)
  ///
  /// Callback method to be invoked when an item in this view has been
  /// selected. This callback is invoked only when the newly selected
  /// position is different from the previously selected position or if
  /// there was no selected item.
  ///
  ///
  /// Implementers can call getItemAtPosition(position) if they need to access the
  /// data associated with the selected item.
  ///@param parent The AdapterView where the selection happened
  ///@param view The view within the AdapterView that was clicked
  ///@param position The position of the view in the adapter
  ///@param id The row id of the item that is selected
  void onItemSelected(
          AdapterView parent, view_.View view, int position, int id) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onItemSelected,
          jni.JniType.voidType,
          [parent.reference, view.reference, position, id]).check();

  static final _id_onNothingSelected = jniAccessors.getMethodIDOf(
      _classRef, "onNothingSelected", "(Landroid/widget/AdapterView;)V");

  /// from: public abstract void onNothingSelected(android.widget.AdapterView<?> parent)
  ///
  /// Callback method to be invoked when the selection disappears from this
  /// view. The selection can disappear for instance when touch is activated
  /// or when the adapter becomes empty.
  ///@param parent The AdapterView that now contains no selected item.
  void onNothingSelected(AdapterView parent) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onNothingSelected,
      jni.JniType.voidType,
      [parent.reference]).check();
}

/// from: android.widget.AdapterView$OnItemLongClickListener
///
/// Interface definition for a callback to be invoked when an item in this
/// view has been clicked and held.
class AdapterView_OnItemLongClickListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/AdapterView\$OnItemLongClickListener");
  AdapterView_OnItemLongClickListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onItemLongClick = jniAccessors.getMethodIDOf(
      _classRef,
      "onItemLongClick",
      "(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z");

  /// from: public abstract boolean onItemLongClick(android.widget.AdapterView<?> parent, android.view.View view, int position, long id)
  ///
  /// Callback method to be invoked when an item in this view has been
  /// clicked and held.
  ///
  /// Implementers can call getItemAtPosition(position) if they need to access
  /// the data associated with the selected item.
  ///@param parent The AbsListView where the click happened
  ///@param view The view within the AbsListView that was clicked
  ///@param position The position of the view in the list
  ///@param id The row id of the item that was clicked
  ///@return true if the callback consumed the long click, false otherwise
  bool onItemLongClick(
          AdapterView parent, view_.View view, int position, int id) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onItemLongClick,
          jni.JniType.booleanType,
          [parent.reference, view.reference, position, id]).boolean;
}

/// from: android.widget.AdapterView$OnItemClickListener
///
/// Interface definition for a callback to be invoked when an item in this
/// AdapterView has been clicked.
class AdapterView_OnItemClickListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/AdapterView\$OnItemClickListener");
  AdapterView_OnItemClickListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onItemClick = jniAccessors.getMethodIDOf(_classRef,
      "onItemClick", "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V");

  /// from: public abstract void onItemClick(android.widget.AdapterView<?> parent, android.view.View view, int position, long id)
  ///
  /// Callback method to be invoked when an item in this AdapterView has
  /// been clicked.
  ///
  /// Implementers can call getItemAtPosition(position) if they need
  /// to access the data associated with the selected item.
  ///@param parent The AdapterView where the click happened.
  ///@param view The view within the AdapterView that was clicked (this
  ///            will be a view provided by the adapter)
  ///@param position The position of the view in the adapter.
  ///@param id The row id of the item that was clicked.
  void onItemClick(AdapterView parent, view_.View view, int position, int id) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onItemClick,
          jni.JniType.voidType,
          [parent.reference, view.reference, position, id]).check();
}

/// from: android.widget.AdapterView$AdapterContextMenuInfo
///
/// Extra menu information provided to the
/// android.view.View.OnCreateContextMenuListener\#onCreateContextMenu(ContextMenu, View, ContextMenuInfo)
/// callback when a context menu is brought up for this AdapterView.
class AdapterView_AdapterContextMenuInfo extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/AdapterView\$AdapterContextMenuInfo");
  AdapterView_AdapterContextMenuInfo.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_id = jniAccessors.getFieldIDOf(_classRef, "id", "J");

  /// from: public long id
  ///
  /// The row id of the item for which the context menu is being displayed.
  int get id =>
      jniAccessors.getField(reference, _id_id, jni.JniType.longType).long;

  /// from: public long id
  ///
  /// The row id of the item for which the context menu is being displayed.
  set id(int value) => jniEnv.SetLongField(reference, _id_id, value);

  static final _id_position =
      jniAccessors.getFieldIDOf(_classRef, "position", "I");

  /// from: public int position
  ///
  /// The position in the adapter for which the context menu is being
  /// displayed.
  int get position => jniAccessors
      .getField(reference, _id_position, jni.JniType.intType)
      .integer;

  /// from: public int position
  ///
  /// The position in the adapter for which the context menu is being
  /// displayed.
  set position(int value) => jniEnv.SetIntField(reference, _id_position, value);

  static final _id_targetView =
      jniAccessors.getFieldIDOf(_classRef, "targetView", "Landroid/view/View;");

  /// from: public android.view.View targetView
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The child view for which the context menu is being displayed. This
  /// will be one of the children of this AdapterView.
  view_.View get targetView => view_.View.fromRef(jniAccessors
      .getField(reference, _id_targetView, jni.JniType.objectType)
      .object);

  /// from: public android.view.View targetView
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The child view for which the context menu is being displayed. This
  /// will be one of the children of this AdapterView.
  set targetView(view_.View value) =>
      jniEnv.SetObjectField(reference, _id_targetView, value.reference);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/View;IJ)V");

  /// from: public void <init>(android.view.View targetView, int position, long id)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AdapterView_AdapterContextMenuInfo(
      view_.View targetView, int position, int id)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [targetView.reference, position, id]).object);
}
