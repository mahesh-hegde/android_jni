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

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "ListAdapter.dart" as listadapter_;

import "../graphics/drawable/Drawable.dart" as drawable_;

import "../view/View.dart" as view_;

import "AdapterView.dart" as adapterview_;

import "PopupWindow.dart" as popupwindow_;

import "ListView.dart" as listview_;

import "../view/KeyEvent.dart" as keyevent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.ListPopupWindow
///
/// A ListPopupWindow anchors itself to a host view and displays a
/// list of choices.
///
/// ListPopupWindow contains a number of tricky behaviors surrounding
/// positioning, scrolling parents to fit the dropdown, interacting
/// sanely with the IME if present, and others.
///@see android.widget.AutoCompleteTextView
///@see android.widget.Spinner
class ListPopupWindow extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/ListPopupWindow");
  ListPopupWindow.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int INPUT_METHOD_FROM_FOCUSABLE
  ///
  /// Mode for \#setInputMethodMode(int): the requirements for the
  /// input method should be based on the focusability of the popup.  That is
  /// if it is focusable than it needs to work with the input method, else
  /// it doesn't.
  static const INPUT_METHOD_FROM_FOCUSABLE = 0;

  /// from: static public final int INPUT_METHOD_NEEDED
  ///
  /// Mode for \#setInputMethodMode(int): this popup always needs to
  /// work with an input method, regardless of whether it is focusable.  This
  /// means that it will always be displayed so that the user can also operate
  /// the input method while it is shown.
  static const INPUT_METHOD_NEEDED = 1;

  /// from: static public final int INPUT_METHOD_NOT_NEEDED
  ///
  /// Mode for \#setInputMethodMode(int): this popup never needs to
  /// work with an input method, regardless of whether it is focusable.  This
  /// means that it will always be displayed to use as much space on the
  /// screen as needed, regardless of whether this covers the input method.
  static const INPUT_METHOD_NOT_NEEDED = 2;

  /// from: static public final int MATCH_PARENT
  ///
  /// Alias for ViewGroup.LayoutParams\#MATCH_PARENT.
  /// If used to specify a popup width, the popup will match the width of the anchor view.
  /// If used to specify a popup height, the popup will fill available space.
  static const MATCH_PARENT = -1;

  /// from: static public final int POSITION_PROMPT_ABOVE
  ///
  /// The provided prompt view should appear above list content.
  ///@see \#setPromptPosition(int)
  ///@see \#getPromptPosition()
  ///@see \#setPromptView(View)
  static const POSITION_PROMPT_ABOVE = 0;

  /// from: static public final int POSITION_PROMPT_BELOW
  ///
  /// The provided prompt view should appear below list content.
  ///@see \#setPromptPosition(int)
  ///@see \#getPromptPosition()
  ///@see \#setPromptView(View)
  static const POSITION_PROMPT_BELOW = 1;

  /// from: static public final int WRAP_CONTENT
  ///
  /// Alias for ViewGroup.LayoutParams\#WRAP_CONTENT.
  /// If used to specify a popup width, the popup will use the width of its content.
  static const WRAP_CONTENT = -2;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new, empty popup window capable of displaying items from a ListAdapter.
  /// Backgrounds should be set using \#setBackgroundDrawable(Drawable).
  ///@param context Context used for contained views.
  ///
  /// This value must never be {@code null}.
  ListPopupWindow(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new, empty popup window capable of displaying items from a ListAdapter.
  /// Backgrounds should be set using \#setBackgroundDrawable(Drawable).
  ///@param context Context used for contained views.
  /// This value must never be {@code null}.
  ///@param attrs Attributes from inflating parent views used to style the popup.
  ///
  /// This value may be {@code null}.
  ListPopupWindow.ctor1(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new, empty popup window capable of displaying items from a ListAdapter.
  /// Backgrounds should be set using \#setBackgroundDrawable(Drawable).
  ///@param context Context used for contained views.
  /// This value must never be {@code null}.
  ///@param attrs Attributes from inflating parent views used to style the popup.
  /// This value may be {@code null}.
  ///@param defStyleAttr Default style attribute to use for popup content.
  ListPopupWindow.ctor2(context_.Context context,
      attributeset_.AttributeSet attrs, int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new, empty popup window capable of displaying items from a ListAdapter.
  /// Backgrounds should be set using \#setBackgroundDrawable(Drawable).
  ///@param context Context used for contained views.
  /// This value must never be {@code null}.
  ///@param attrs Attributes from inflating parent views used to style the popup.
  /// This value may be {@code null}.
  ///@param defStyleAttr Style attribute to read for default styling of popup content.
  ///@param defStyleRes Style resource ID to use for default styling of popup content.
  ListPopupWindow.ctor3(context_.Context context,
      attributeset_.AttributeSet attrs, int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_setAdapter = jniAccessors.getMethodIDOf(
      _classRef, "setAdapter", "(Landroid/widget/ListAdapter;)V");

  /// from: public void setAdapter(android.widget.ListAdapter adapter)
  ///
  /// Sets the adapter that provides the data and the views to represent the data
  /// in this popup window.
  ///@param adapter The adapter to use to create this window's content.
  ///
  /// This value may be {@code null}.
  void setAdapter(listadapter_.ListAdapter adapter) =>
      jniAccessors.callMethodWithArgs(reference, _id_setAdapter,
          jni.JniType.voidType, [adapter.reference]).check();

  static final _id_setPromptPosition =
      jniAccessors.getMethodIDOf(_classRef, "setPromptPosition", "(I)V");

  /// from: public void setPromptPosition(int position)
  ///
  /// Set where the optional prompt view should appear. The default is
  /// \#POSITION_PROMPT_ABOVE.
  ///@param position A position constant declaring where the prompt should be displayed.
  ///@see \#POSITION_PROMPT_ABOVE
  ///@see \#POSITION_PROMPT_BELOW
  void setPromptPosition(int position) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setPromptPosition,
      jni.JniType.voidType,
      [position]).check();

  static final _id_getPromptPosition =
      jniAccessors.getMethodIDOf(_classRef, "getPromptPosition", "()I");

  /// from: public int getPromptPosition()
  ///
  /// @return Where the optional prompt view should appear.
  ///@see \#POSITION_PROMPT_ABOVE
  ///@see \#POSITION_PROMPT_BELOW
  int getPromptPosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getPromptPosition, jni.JniType.intType, []).integer;

  static final _id_setModal =
      jniAccessors.getMethodIDOf(_classRef, "setModal", "(Z)V");

  /// from: public void setModal(boolean modal)
  ///
  /// Set whether this window should be modal when shown.
  ///
  /// If a popup window is modal, it will receive all touch and key input.
  /// If the user touches outside the popup window's content area the popup window
  /// will be dismissed.
  ///@param modal {@code true} if the popup window should be modal, {@code false} otherwise.
  void setModal(bool modal) => jniAccessors.callMethodWithArgs(
      reference, _id_setModal, jni.JniType.voidType, [modal]).check();

  static final _id_isModal =
      jniAccessors.getMethodIDOf(_classRef, "isModal", "()Z");

  /// from: public boolean isModal()
  ///
  /// Returns whether the popup window will be modal when shown.
  ///@return {@code true} if the popup window will be modal, {@code false} otherwise.
  bool isModal() => jniAccessors.callMethodWithArgs(
      reference, _id_isModal, jni.JniType.booleanType, []).boolean;

  static final _id_setSoftInputMode =
      jniAccessors.getMethodIDOf(_classRef, "setSoftInputMode", "(I)V");

  /// from: public void setSoftInputMode(int mode)
  ///
  /// Sets the operating mode for the soft input area.
  ///@param mode The desired mode, see
  ///        android.view.WindowManager.LayoutParams\#softInputMode
  ///        for the full list
  ///@see android.view.WindowManager.LayoutParams\#softInputMode
  ///@see \#getSoftInputMode()
  void setSoftInputMode(int mode) => jniAccessors.callMethodWithArgs(
      reference, _id_setSoftInputMode, jni.JniType.voidType, [mode]).check();

  static final _id_getSoftInputMode =
      jniAccessors.getMethodIDOf(_classRef, "getSoftInputMode", "()I");

  /// from: public int getSoftInputMode()
  ///
  /// Returns the current value in \#setSoftInputMode(int).
  ///@see \#setSoftInputMode(int)
  ///@see android.view.WindowManager.LayoutParams\#softInputMode
  int getSoftInputMode() => jniAccessors.callMethodWithArgs(
      reference, _id_getSoftInputMode, jni.JniType.intType, []).integer;

  static final _id_setListSelector = jniAccessors.getMethodIDOf(
      _classRef, "setListSelector", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setListSelector(android.graphics.drawable.Drawable selector)
  ///
  /// Sets a drawable to use as the list item selector.
  ///@param selector List selector drawable to use in the popup.
  void setListSelector(drawable_.Drawable selector) =>
      jniAccessors.callMethodWithArgs(reference, _id_setListSelector,
          jni.JniType.voidType, [selector.reference]).check();

  static final _id_getBackground = jniAccessors.getMethodIDOf(
      _classRef, "getBackground", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getBackground()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The background drawable for the popup window.
  ///
  /// This value may be {@code null}.
  drawable_.Drawable getBackground() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getBackground, jni.JniType.objectType, []).object);

  static final _id_setBackgroundDrawable = jniAccessors.getMethodIDOf(_classRef,
      "setBackgroundDrawable", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setBackgroundDrawable(android.graphics.drawable.Drawable d)
  ///
  /// Sets a drawable to be the background for the popup window.
  ///@param d A drawable to set as the background.
  ///
  /// This value may be {@code null}.
  void setBackgroundDrawable(drawable_.Drawable d) =>
      jniAccessors.callMethodWithArgs(reference, _id_setBackgroundDrawable,
          jni.JniType.voidType, [d.reference]).check();

  static final _id_setAnimationStyle =
      jniAccessors.getMethodIDOf(_classRef, "setAnimationStyle", "(I)V");

  /// from: public void setAnimationStyle(int animationStyle)
  ///
  /// Set an animation style to use when the popup window is shown or dismissed.
  ///@param animationStyle Animation style to use.
  void setAnimationStyle(int animationStyle) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setAnimationStyle,
      jni.JniType.voidType,
      [animationStyle]).check();

  static final _id_getAnimationStyle =
      jniAccessors.getMethodIDOf(_classRef, "getAnimationStyle", "()I");

  /// from: public int getAnimationStyle()
  ///
  /// Returns the animation style that will be used when the popup window is
  /// shown or dismissed.
  ///@return Animation style that will be used.
  int getAnimationStyle() => jniAccessors.callMethodWithArgs(
      reference, _id_getAnimationStyle, jni.JniType.intType, []).integer;

  static final _id_getAnchorView = jniAccessors.getMethodIDOf(
      _classRef, "getAnchorView", "()Landroid/view/View;");

  /// from: public android.view.View getAnchorView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the view that will be used to anchor this popup.
  ///@return The popup's anchor view
  ///
  /// This value may be {@code null}.
  view_.View getAnchorView() =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAnchorView, jni.JniType.objectType, []).object);

  static final _id_setAnchorView = jniAccessors.getMethodIDOf(
      _classRef, "setAnchorView", "(Landroid/view/View;)V");

  /// from: public void setAnchorView(android.view.View anchor)
  ///
  /// Sets the popup's anchor view. This popup will always be positioned relative to
  /// the anchor view when shown.
  ///@param anchor The view to use as an anchor.
  ///
  /// This value may be {@code null}.
  void setAnchorView(view_.View anchor) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setAnchorView,
      jni.JniType.voidType,
      [anchor.reference]).check();

  static final _id_getHorizontalOffset =
      jniAccessors.getMethodIDOf(_classRef, "getHorizontalOffset", "()I");

  /// from: public int getHorizontalOffset()
  ///
  /// @return The horizontal offset of the popup from its anchor in pixels.
  int getHorizontalOffset() => jniAccessors.callMethodWithArgs(
      reference, _id_getHorizontalOffset, jni.JniType.intType, []).integer;

  static final _id_setHorizontalOffset =
      jniAccessors.getMethodIDOf(_classRef, "setHorizontalOffset", "(I)V");

  /// from: public void setHorizontalOffset(int offset)
  ///
  /// Set the horizontal offset of this popup from its anchor view in pixels.
  ///@param offset The horizontal offset of the popup from its anchor.
  void setHorizontalOffset(int offset) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setHorizontalOffset,
      jni.JniType.voidType,
      [offset]).check();

  static final _id_getVerticalOffset =
      jniAccessors.getMethodIDOf(_classRef, "getVerticalOffset", "()I");

  /// from: public int getVerticalOffset()
  ///
  /// @return The vertical offset of the popup from its anchor in pixels.
  int getVerticalOffset() => jniAccessors.callMethodWithArgs(
      reference, _id_getVerticalOffset, jni.JniType.intType, []).integer;

  static final _id_setVerticalOffset =
      jniAccessors.getMethodIDOf(_classRef, "setVerticalOffset", "(I)V");

  /// from: public void setVerticalOffset(int offset)
  ///
  /// Set the vertical offset of this popup from its anchor view in pixels.
  ///@param offset The vertical offset of the popup from its anchor.
  void setVerticalOffset(int offset) => jniAccessors.callMethodWithArgs(
      reference, _id_setVerticalOffset, jni.JniType.voidType, [offset]).check();

  static final _id_setDropDownGravity =
      jniAccessors.getMethodIDOf(_classRef, "setDropDownGravity", "(I)V");

  /// from: public void setDropDownGravity(int gravity)
  ///
  /// Set the gravity of the dropdown list. This is commonly used to
  /// set gravity to START or END for alignment with the anchor.
  ///@param gravity Gravity value to use
  void setDropDownGravity(int gravity) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setDropDownGravity,
      jni.JniType.voidType,
      [gravity]).check();

  static final _id_getWidth =
      jniAccessors.getMethodIDOf(_classRef, "getWidth", "()I");

  /// from: public int getWidth()
  ///
  /// @return The width of the popup window in pixels.
  int getWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getWidth, jni.JniType.intType, []).integer;

  static final _id_setWidth =
      jniAccessors.getMethodIDOf(_classRef, "setWidth", "(I)V");

  /// from: public void setWidth(int width)
  ///
  /// Sets the width of the popup window in pixels. Can also be \#MATCH_PARENT
  /// or \#WRAP_CONTENT.
  ///@param width Width of the popup window.
  void setWidth(int width) => jniAccessors.callMethodWithArgs(
      reference, _id_setWidth, jni.JniType.voidType, [width]).check();

  static final _id_setContentWidth =
      jniAccessors.getMethodIDOf(_classRef, "setContentWidth", "(I)V");

  /// from: public void setContentWidth(int width)
  ///
  /// Sets the width of the popup window by the size of its content. The final width may be
  /// larger to accommodate styled window dressing.
  ///@param width Desired width of content in pixels.
  void setContentWidth(int width) => jniAccessors.callMethodWithArgs(
      reference, _id_setContentWidth, jni.JniType.voidType, [width]).check();

  static final _id_getHeight =
      jniAccessors.getMethodIDOf(_classRef, "getHeight", "()I");

  /// from: public int getHeight()
  ///
  /// @return The height of the popup window in pixels.
  int getHeight() => jniAccessors.callMethodWithArgs(
      reference, _id_getHeight, jni.JniType.intType, []).integer;

  static final _id_setHeight =
      jniAccessors.getMethodIDOf(_classRef, "setHeight", "(I)V");

  /// from: public void setHeight(int height)
  ///
  /// Sets the height of the popup window in pixels. Can also be \#MATCH_PARENT.
  ///@param height Height of the popup window must be a positive value,
  ///               \#MATCH_PARENT, or \#WRAP_CONTENT.
  ///@throws IllegalArgumentException if height is set to negative value
  void setHeight(int height) => jniAccessors.callMethodWithArgs(
      reference, _id_setHeight, jni.JniType.voidType, [height]).check();

  static final _id_setWindowLayoutType =
      jniAccessors.getMethodIDOf(_classRef, "setWindowLayoutType", "(I)V");

  /// from: public void setWindowLayoutType(int layoutType)
  ///
  /// Set the layout type for this popup window.
  ///
  /// See WindowManager.LayoutParams\#type for possible values.
  ///@param layoutType Layout type for this window.
  ///@see WindowManager.LayoutParams\#type
  void setWindowLayoutType(int layoutType) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setWindowLayoutType,
      jni.JniType.voidType,
      [layoutType]).check();

  static final _id_setOnItemClickListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnItemClickListener",
      "(Landroid/widget/AdapterView\$OnItemClickListener;)V");

  /// from: public void setOnItemClickListener(android.widget.AdapterView.OnItemClickListener clickListener)
  ///
  /// Sets a listener to receive events when a list item is clicked.
  ///@param clickListener Listener to register
  ///
  /// This value may be {@code null}.
  ///@see ListView\#setOnItemClickListener(android.widget.AdapterView.OnItemClickListener)
  void setOnItemClickListener(
          adapterview_.AdapterView_OnItemClickListener clickListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnItemClickListener,
          jni.JniType.voidType, [clickListener.reference]).check();

  static final _id_setOnItemSelectedListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnItemSelectedListener",
      "(Landroid/widget/AdapterView\$OnItemSelectedListener;)V");

  /// from: public void setOnItemSelectedListener(android.widget.AdapterView.OnItemSelectedListener selectedListener)
  ///
  /// Sets a listener to receive events when a list item is selected.
  ///@param selectedListener Listener to register.
  ///
  /// This value may be {@code null}.
  ///@see ListView\#setOnItemSelectedListener(OnItemSelectedListener)
  void setOnItemSelectedListener(
          adapterview_.AdapterView_OnItemSelectedListener selectedListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnItemSelectedListener,
          jni.JniType.voidType, [selectedListener.reference]).check();

  static final _id_setPromptView = jniAccessors.getMethodIDOf(
      _classRef, "setPromptView", "(Landroid/view/View;)V");

  /// from: public void setPromptView(android.view.View prompt)
  ///
  /// Set a view to act as a user prompt for this popup window. Where the prompt view will appear
  /// is controlled by \#setPromptPosition(int).
  ///@param prompt View to use as an informational prompt.
  ///
  /// This value may be {@code null}.
  void setPromptView(view_.View prompt) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setPromptView,
      jni.JniType.voidType,
      [prompt.reference]).check();

  static final _id_postShow =
      jniAccessors.getMethodIDOf(_classRef, "postShow", "()V");

  /// from: public void postShow()
  ///
  /// Post a \#show() call to the UI thread.
  void postShow() => jniAccessors.callMethodWithArgs(
      reference, _id_postShow, jni.JniType.voidType, []).check();

  static final _id_show0 = jniAccessors.getMethodIDOf(_classRef, "show", "()V");

  /// from: public void show()
  ///
  /// Show the popup list. If the list is already showing, this method
  /// will recalculate the popup's size and position.
  void show0() => jniAccessors.callMethodWithArgs(
      reference, _id_show0, jni.JniType.voidType, []).check();

  static final _id_dismiss =
      jniAccessors.getMethodIDOf(_classRef, "dismiss", "()V");

  /// from: public void dismiss()
  ///
  /// Dismiss the popup window.
  void dismiss() => jniAccessors.callMethodWithArgs(
      reference, _id_dismiss, jni.JniType.voidType, []).check();

  static final _id_setOnDismissListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnDismissListener",
      "(Landroid/widget/PopupWindow\$OnDismissListener;)V");

  /// from: public void setOnDismissListener(android.widget.PopupWindow.OnDismissListener listener)
  ///
  /// Set a listener to receive a callback when the popup is dismissed.
  ///@param listener Listener that will be notified when the popup is dismissed.
  ///
  /// This value may be {@code null}.
  void setOnDismissListener(
          popupwindow_.PopupWindow_OnDismissListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnDismissListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_setInputMethodMode =
      jniAccessors.getMethodIDOf(_classRef, "setInputMethodMode", "(I)V");

  /// from: public void setInputMethodMode(int mode)
  ///
  /// Control how the popup operates with an input method: one of
  /// \#INPUT_METHOD_FROM_FOCUSABLE, \#INPUT_METHOD_NEEDED,
  /// or \#INPUT_METHOD_NOT_NEEDED.
  ///
  /// If the popup is showing, calling this method will take effect only
  /// the next time the popup is shown or through a manual call to the \#show()
  /// method.
  ///
  ///@see \#getInputMethodMode()
  ///@see \#show()
  void setInputMethodMode(int mode) => jniAccessors.callMethodWithArgs(
      reference, _id_setInputMethodMode, jni.JniType.voidType, [mode]).check();

  static final _id_getInputMethodMode =
      jniAccessors.getMethodIDOf(_classRef, "getInputMethodMode", "()I");

  /// from: public int getInputMethodMode()
  ///
  /// Return the current value in \#setInputMethodMode(int).
  ///@see \#setInputMethodMode(int)
  int getInputMethodMode() => jniAccessors.callMethodWithArgs(
      reference, _id_getInputMethodMode, jni.JniType.intType, []).integer;

  static final _id_setSelection =
      jniAccessors.getMethodIDOf(_classRef, "setSelection", "(I)V");

  /// from: public void setSelection(int position)
  ///
  /// Set the selected position of the list.
  /// Only valid when \#isShowing() == {@code true}.
  ///@param position List position to set as selected.
  void setSelection(int position) => jniAccessors.callMethodWithArgs(
      reference, _id_setSelection, jni.JniType.voidType, [position]).check();

  static final _id_clearListSelection =
      jniAccessors.getMethodIDOf(_classRef, "clearListSelection", "()V");

  /// from: public void clearListSelection()
  ///
  /// Clear any current list selection.
  /// Only valid when \#isShowing() == {@code true}.
  void clearListSelection() => jniAccessors.callMethodWithArgs(
      reference, _id_clearListSelection, jni.JniType.voidType, []).check();

  static final _id_isShowing =
      jniAccessors.getMethodIDOf(_classRef, "isShowing", "()Z");

  /// from: public boolean isShowing()
  ///
  /// @return {@code true} if the popup is currently showing, {@code false} otherwise.
  bool isShowing() => jniAccessors.callMethodWithArgs(
      reference, _id_isShowing, jni.JniType.booleanType, []).boolean;

  static final _id_isInputMethodNotNeeded =
      jniAccessors.getMethodIDOf(_classRef, "isInputMethodNotNeeded", "()Z");

  /// from: public boolean isInputMethodNotNeeded()
  ///
  /// @return {@code true} if this popup is configured to assume the user does not need
  /// to interact with the IME while it is showing, {@code false} otherwise.
  bool isInputMethodNotNeeded() => jniAccessors.callMethodWithArgs(reference,
      _id_isInputMethodNotNeeded, jni.JniType.booleanType, []).boolean;

  static final _id_performItemClick =
      jniAccessors.getMethodIDOf(_classRef, "performItemClick", "(I)Z");

  /// from: public boolean performItemClick(int position)
  ///
  /// Perform an item click operation on the specified list adapter position.
  ///@param position Adapter position for performing the click
  ///@return true if the click action could be performed, false if not.
  ///         (e.g. if the popup was not showing, this method would return false.)
  bool performItemClick(int position) => jniAccessors.callMethodWithArgs(
      reference,
      _id_performItemClick,
      jni.JniType.booleanType,
      [position]).boolean;

  static final _id_getSelectedItem = jniAccessors.getMethodIDOf(
      _classRef, "getSelectedItem", "()Ljava/lang/Object;");

  /// from: public java.lang.Object getSelectedItem()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The currently selected item or null if the popup is not showing.
  jni.JniObject getSelectedItem() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSelectedItem, jni.JniType.objectType, []).object);

  static final _id_getSelectedItemPosition =
      jniAccessors.getMethodIDOf(_classRef, "getSelectedItemPosition", "()I");

  /// from: public int getSelectedItemPosition()
  ///
  /// @return The position of the currently selected item or ListView\#INVALID_POSITION
  /// if \#isShowing() == {@code false}.
  ///@see ListView\#getSelectedItemPosition()
  int getSelectedItemPosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getSelectedItemPosition, jni.JniType.intType, []).integer;

  static final _id_getSelectedItemId =
      jniAccessors.getMethodIDOf(_classRef, "getSelectedItemId", "()J");

  /// from: public long getSelectedItemId()
  ///
  /// @return The ID of the currently selected item or ListView\#INVALID_ROW_ID
  /// if \#isShowing() == {@code false}.
  ///@see ListView\#getSelectedItemId()
  int getSelectedItemId() => jniAccessors.callMethodWithArgs(
      reference, _id_getSelectedItemId, jni.JniType.longType, []).long;

  static final _id_getSelectedView = jniAccessors.getMethodIDOf(
      _classRef, "getSelectedView", "()Landroid/view/View;");

  /// from: public android.view.View getSelectedView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The View for the currently selected item or null if
  /// \#isShowing() == {@code false}.
  ///@see ListView\#getSelectedView()
  view_.View getSelectedView() =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSelectedView, jni.JniType.objectType, []).object);

  static final _id_getListView = jniAccessors.getMethodIDOf(
      _classRef, "getListView", "()Landroid/widget/ListView;");

  /// from: public android.widget.ListView getListView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The ListView displayed within the popup window.
  /// Only valid when \#isShowing() == {@code true}.
  ///
  /// This value may be {@code null}.
  listview_.ListView getListView() =>
      listview_.ListView.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getListView, jni.JniType.objectType, []).object);

  static final _id_onKeyDown = jniAccessors.getMethodIDOf(
      _classRef, "onKeyDown", "(ILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyDown(int keyCode, android.view.KeyEvent event)
  ///
  /// Filter key down events. By forwarding key down events to this function,
  /// views using non-modal ListPopupWindow can have it handle key selection of items.
  ///@param keyCode keyCode param passed to the host view's onKeyDown
  ///@param event event param passed to the host view's onKeyDown
  /// This value must never be {@code null}.
  ///@return true if the event was handled, false if it was ignored.
  ///@see \#setModal(boolean)
  ///@see \#onKeyUp(int, KeyEvent)
  bool onKeyDown(int keyCode, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onKeyDown,
          jni.JniType.booleanType, [keyCode, event.reference]).boolean;

  static final _id_onKeyUp = jniAccessors.getMethodIDOf(
      _classRef, "onKeyUp", "(ILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyUp(int keyCode, android.view.KeyEvent event)
  ///
  /// Filter key up events. By forwarding key up events to this function,
  /// views using non-modal ListPopupWindow can have it handle key selection of items.
  ///@param keyCode keyCode param passed to the host view's onKeyUp
  ///@param event event param passed to the host view's onKeyUp
  /// This value must never be {@code null}.
  ///@return true if the event was handled, false if it was ignored.
  ///@see \#setModal(boolean)
  ///@see \#onKeyDown(int, KeyEvent)
  bool onKeyUp(int keyCode, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onKeyUp,
          jni.JniType.booleanType, [keyCode, event.reference]).boolean;

  static final _id_onKeyPreIme = jniAccessors.getMethodIDOf(
      _classRef, "onKeyPreIme", "(ILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyPreIme(int keyCode, android.view.KeyEvent event)
  ///
  /// Filter pre-IME key events. By forwarding View\#onKeyPreIme(int, KeyEvent)
  /// events to this function, views using ListPopupWindow can have it dismiss the popup
  /// when the back key is pressed.
  ///@param keyCode keyCode param passed to the host view's onKeyPreIme
  ///@param event event param passed to the host view's onKeyPreIme
  /// This value must never be {@code null}.
  ///@return true if the event was handled, false if it was ignored.
  ///@see \#setModal(boolean)
  bool onKeyPreIme(int keyCode, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onKeyPreIme,
          jni.JniType.booleanType, [keyCode, event.reference]).boolean;

  static final _id_createDragToOpenListener = jniAccessors.getMethodIDOf(
      _classRef,
      "createDragToOpenListener",
      "(Landroid/view/View;)Landroid/view/View\$OnTouchListener;");

  /// from: public android.view.View.OnTouchListener createDragToOpenListener(android.view.View src)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an OnTouchListener that can be added to the source view
  /// to implement drag-to-open behavior. Generally, the source view should be
  /// the same view that was passed to \#setAnchorView.
  ///
  /// When the listener is set on a view, touching that view and dragging
  /// outside of its bounds will open the popup window. Lifting will select the
  /// currently touched list item.
  ///
  /// Example usage:
  /// <pre>
  /// ListPopupWindow myPopup = new ListPopupWindow(context);
  /// myPopup.setAnchor(myAnchor);
  /// OnTouchListener dragListener = myPopup.createDragToOpenListener(myAnchor);
  /// myAnchor.setOnTouchListener(dragListener);
  /// </pre>
  ///@param src the view on which the resulting listener will be set
  ///@return a touch listener that controls drag-to-open behavior
  view_.View_OnTouchListener createDragToOpenListener(view_.View src) =>
      view_.View_OnTouchListener.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_createDragToOpenListener,
          jni.JniType.objectType,
          [src.reference]).object);
}
