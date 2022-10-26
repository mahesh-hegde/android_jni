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

import "AbsSpinner.dart" as absspinner_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../content/res/Resources.dart" as resources_;

import "../graphics/drawable/Drawable.dart" as drawable_;

import "SpinnerAdapter.dart" as spinneradapter_;

import "AdapterView.dart" as adapterview_;

import "../view/MotionEvent.dart" as motionevent_;

import "../content/DialogInterface.dart" as dialoginterface_;

import "../os/Parcelable.dart" as parcelable_;

import "../view/PointerIcon.dart" as pointericon_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.Spinner
///
/// A view that displays one child at a time and lets the user pick among them.
/// The items in the Spinner come from the Adapter associated with
/// this view.
///
/// See the <a href="{@docRoot}guide/topics/ui/controls/spinner.html">Spinners</a> guide.
///
///@attr ref android.R.styleable\#Spinner_dropDownSelector
///@attr ref android.R.styleable\#Spinner_dropDownWidth
///@attr ref android.R.styleable\#Spinner_gravity
///@attr ref android.R.styleable\#Spinner_popupBackground
///@attr ref android.R.styleable\#Spinner_prompt
///@attr ref android.R.styleable\#Spinner_spinnerMode
///@attr ref android.R.styleable\#ListPopupWindow_dropDownVerticalOffset
///@attr ref android.R.styleable\#ListPopupWindow_dropDownHorizontalOffset
class Spinner extends absspinner_.AbsSpinner {
  static final _classRef = jniAccessors.getClassOf("android/widget/Spinner");
  Spinner.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int MODE_DIALOG
  ///
  /// Use a dialog window for selecting spinner options.
  static const MODE_DIALOG = 0;

  /// from: static public final int MODE_DROPDOWN
  ///
  /// Use a dropdown anchored to the Spinner for selecting spinner options.
  static const MODE_DROPDOWN = 1;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new spinner with the given context's theme.
  ///@param context The Context the view is running in, through which it can
  ///                access the current theme, resources, etc.
  Spinner(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;I)V");

  /// from: public void <init>(android.content.Context context, int mode)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new spinner with the given context's theme and the supplied
  /// mode of displaying choices. <code>mode</code> may be one of
  /// \#MODE_DIALOG or \#MODE_DROPDOWN.
  ///@param context The Context the view is running in, through which it can
  ///                access the current theme, resources, etc.
  ///@param mode Constant describing how the user will select choices from
  ///             the spinner.
  ///@see \#MODE_DIALOG
  ///@see \#MODE_DROPDOWN
  Spinner.ctor4(context_.Context context, int mode)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [context.reference, mode]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new spinner with the given context's theme and the supplied
  /// attribute set.
  ///@param context The Context the view is running in, through which it can
  ///                access the current theme, resources, etc.
  ///@param attrs The attributes of the XML tag that is inflating the view.
  Spinner.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new spinner with the given context's theme, the supplied
  /// attribute set, and default style attribute.
  ///@param context The Context the view is running in, through which it can
  ///                access the current theme, resources, etc.
  ///@param attrs The attributes of the XML tag that is inflating the view.
  ///@param defStyleAttr An attribute in the current theme that contains a
  ///                     reference to a style resource that supplies default
  ///                     values for the view. Can be 0 to not look for
  ///                     defaults.
  Spinner.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int mode)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new spinner with the given context's theme, the supplied
  /// attribute set, and default style attribute. <code>mode</code> may be one
  /// of \#MODE_DIALOG or \#MODE_DROPDOWN and determines how the
  /// user will select choices from the spinner.
  ///@param context The Context the view is running in, through which it can
  ///                access the current theme, resources, etc.
  ///@param attrs The attributes of the XML tag that is inflating the view.
  ///@param defStyleAttr An attribute in the current theme that contains a
  ///                     reference to a style resource that supplies default
  ///                     values for the view. Can be 0 to not look for defaults.
  ///@param mode Constant describing how the user will select choices from the
  ///             spinner.
  ///@see \#MODE_DIALOG
  ///@see \#MODE_DROPDOWN
  Spinner.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int mode)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3,
            [context.reference, attrs.reference, defStyleAttr, mode]).object);

  static final _id_ctor5 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;III)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes, int mode)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new spinner with the given context's theme, the supplied
  /// attribute set, and default styles. <code>mode</code> may be one of
  /// \#MODE_DIALOG or \#MODE_DROPDOWN and determines how the
  /// user will select choices from the spinner.
  ///@param context The Context the view is running in, through which it can
  ///                access the current theme, resources, etc.
  ///@param attrs The attributes of the XML tag that is inflating the view.
  ///@param defStyleAttr An attribute in the current theme that contains a
  ///                     reference to a style resource that supplies default
  ///                     values for the view. Can be 0 to not look for
  ///                     defaults.
  ///@param defStyleRes A resource identifier of a style resource that
  ///                    supplies default values for the view, used only if
  ///                    defStyleAttr is 0 or can not be found in the theme.
  ///                    Can be 0 to not look for defaults.
  ///@param mode Constant describing how the user will select choices from
  ///             the spinner.
  ///@see \#MODE_DIALOG
  ///@see \#MODE_DROPDOWN
  Spinner.ctor5(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes, int mode)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor5, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes,
          mode
        ]).object);

  static final _id_ctor6 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources\$Theme;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes, int mode, android.content.res.Resources.Theme popupTheme)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new spinner with the given context, the supplied attribute
  /// set, default styles, popup mode (one of \#MODE_DIALOG or
  /// \#MODE_DROPDOWN), and the theme against which the popup should be
  /// inflated.
  ///@param context The context against which the view is inflated, which
  ///                provides access to the current theme, resources, etc.
  ///@param attrs The attributes of the XML tag that is inflating the view.
  ///@param defStyleAttr An attribute in the current theme that contains a
  ///                     reference to a style resource that supplies default
  ///                     values for the view. Can be 0 to not look for
  ///                     defaults.
  ///@param defStyleRes A resource identifier of a style resource that
  ///                    supplies default values for the view, used only if
  ///                    defStyleAttr is 0 or can not be found in the theme.
  ///                    Can be 0 to not look for defaults.
  ///@param mode Constant describing how the user will select choices from
  ///             the spinner.
  ///@param popupTheme The theme against which the dialog or dropdown popup
  ///                   should be inflated. May be {@code null} to use the
  ///                   view theme. If set, this will override any value
  ///                   specified by
  ///                   android.R.styleable\#Spinner_popupTheme.
  ///@see \#MODE_DIALOG
  ///@see \#MODE_DROPDOWN
  Spinner.ctor6(
      context_.Context context,
      attributeset_.AttributeSet attrs,
      int defStyleAttr,
      int defStyleRes,
      int mode,
      resources_.Resources_Theme popupTheme)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor6, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes,
          mode,
          popupTheme.reference
        ]).object);

  static final _id_getPopupContext = jniAccessors.getMethodIDOf(
      _classRef, "getPopupContext", "()Landroid/content/Context;");

  /// from: public android.content.Context getPopupContext()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the context used to inflate the Spinner's popup or dialog window
  context_.Context getPopupContext() =>
      context_.Context.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPopupContext, jni.JniType.objectType, []).object);

  static final _id_setPopupBackgroundDrawable = jniAccessors.getMethodIDOf(
      _classRef,
      "setPopupBackgroundDrawable",
      "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setPopupBackgroundDrawable(android.graphics.drawable.Drawable background)
  ///
  /// Set the background drawable for the spinner's popup window of choices.
  /// Only valid in \#MODE_DROPDOWN; this method is a no-op in other modes.
  ///@param background Background drawable
  ///@attr ref android.R.styleable\#Spinner_popupBackground
  void setPopupBackgroundDrawable(drawable_.Drawable background) =>
      jniAccessors.callMethodWithArgs(reference, _id_setPopupBackgroundDrawable,
          jni.JniType.voidType, [background.reference]).check();

  static final _id_setPopupBackgroundResource = jniAccessors.getMethodIDOf(
      _classRef, "setPopupBackgroundResource", "(I)V");

  /// from: public void setPopupBackgroundResource(int resId)
  ///
  /// Set the background drawable for the spinner's popup window of choices.
  /// Only valid in \#MODE_DROPDOWN; this method is a no-op in other modes.
  ///@param resId Resource ID of a background drawable
  ///@attr ref android.R.styleable\#Spinner_popupBackground
  void setPopupBackgroundResource(int resId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setPopupBackgroundResource,
      jni.JniType.voidType,
      [resId]).check();

  static final _id_getPopupBackground = jniAccessors.getMethodIDOf(_classRef,
      "getPopupBackground", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getPopupBackground()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the background drawable for the spinner's popup window of choices.
  /// Only valid in \#MODE_DROPDOWN; other modes will return null.
  ///@return background Background drawable
  ///@attr ref android.R.styleable\#Spinner_popupBackground
  drawable_.Drawable getPopupBackground() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getPopupBackground, jni.JniType.objectType, []).object);

  static final _id_setDropDownVerticalOffset = jniAccessors.getMethodIDOf(
      _classRef, "setDropDownVerticalOffset", "(I)V");

  /// from: public void setDropDownVerticalOffset(int pixels)
  ///
  /// Set a vertical offset in pixels for the spinner's popup window of choices.
  /// Only valid in \#MODE_DROPDOWN; this method is a no-op in other modes.
  ///@param pixels Vertical offset in pixels
  ///@attr ref android.R.styleable\#ListPopupWindow_dropDownVerticalOffset
  void setDropDownVerticalOffset(int pixels) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setDropDownVerticalOffset,
      jni.JniType.voidType,
      [pixels]).check();

  static final _id_getDropDownVerticalOffset =
      jniAccessors.getMethodIDOf(_classRef, "getDropDownVerticalOffset", "()I");

  /// from: public int getDropDownVerticalOffset()
  ///
  /// Get the configured vertical offset in pixels for the spinner's popup window of choices.
  /// Only valid in \#MODE_DROPDOWN; other modes will return 0.
  ///@return Vertical offset in pixels
  ///@attr ref android.R.styleable\#ListPopupWindow_dropDownVerticalOffset
  int getDropDownVerticalOffset() => jniAccessors.callMethodWithArgs(reference,
      _id_getDropDownVerticalOffset, jni.JniType.intType, []).integer;

  static final _id_setDropDownHorizontalOffset = jniAccessors.getMethodIDOf(
      _classRef, "setDropDownHorizontalOffset", "(I)V");

  /// from: public void setDropDownHorizontalOffset(int pixels)
  ///
  /// Set a horizontal offset in pixels for the spinner's popup window of choices.
  /// Only valid in \#MODE_DROPDOWN; this method is a no-op in other modes.
  ///@param pixels Horizontal offset in pixels
  ///@attr ref android.R.styleable\#ListPopupWindow_dropDownHorizontalOffset
  void setDropDownHorizontalOffset(int pixels) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setDropDownHorizontalOffset,
          jni.JniType.voidType,
          [pixels]).check();

  static final _id_getDropDownHorizontalOffset = jniAccessors.getMethodIDOf(
      _classRef, "getDropDownHorizontalOffset", "()I");

  /// from: public int getDropDownHorizontalOffset()
  ///
  /// Get the configured horizontal offset in pixels for the spinner's popup window of choices.
  /// Only valid in \#MODE_DROPDOWN; other modes will return 0.
  ///@return Horizontal offset in pixels
  ///@attr ref android.R.styleable\#ListPopupWindow_dropDownHorizontalOffset
  int getDropDownHorizontalOffset() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getDropDownHorizontalOffset,
      jni.JniType.intType, []).integer;

  static final _id_setDropDownWidth =
      jniAccessors.getMethodIDOf(_classRef, "setDropDownWidth", "(I)V");

  /// from: public void setDropDownWidth(int pixels)
  ///
  /// Set the width of the spinner's popup window of choices in pixels. This value
  /// may also be set to android.view.ViewGroup.LayoutParams\#MATCH_PARENT
  /// to match the width of the Spinner itself, or
  /// android.view.ViewGroup.LayoutParams\#WRAP_CONTENT to wrap to the measured size
  /// of contained dropdown list items.
  ///
  /// Only valid in \#MODE_DROPDOWN; this method is a no-op in other modes.
  ///
  ///@param pixels Width in pixels, WRAP_CONTENT, or MATCH_PARENT
  ///@attr ref android.R.styleable\#Spinner_dropDownWidth
  void setDropDownWidth(int pixels) => jniAccessors.callMethodWithArgs(
      reference, _id_setDropDownWidth, jni.JniType.voidType, [pixels]).check();

  static final _id_getDropDownWidth =
      jniAccessors.getMethodIDOf(_classRef, "getDropDownWidth", "()I");

  /// from: public int getDropDownWidth()
  ///
  /// Get the configured width of the spinner's popup window of choices in pixels.
  /// The returned value may also be android.view.ViewGroup.LayoutParams\#MATCH_PARENT
  /// meaning the popup window will match the width of the Spinner itself, or
  /// android.view.ViewGroup.LayoutParams\#WRAP_CONTENT to wrap to the measured size
  /// of contained dropdown list items.
  ///@return Width in pixels, WRAP_CONTENT, or MATCH_PARENT
  ///@attr ref android.R.styleable\#Spinner_dropDownWidth
  int getDropDownWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getDropDownWidth, jni.JniType.intType, []).integer;

  static final _id_setEnabled1 =
      jniAccessors.getMethodIDOf(_classRef, "setEnabled", "(Z)V");

  /// from: public void setEnabled(boolean enabled)
  void setEnabled1(bool enabled) => jniAccessors.callMethodWithArgs(
      reference, _id_setEnabled1, jni.JniType.voidType, [enabled]).check();

  static final _id_setGravity =
      jniAccessors.getMethodIDOf(_classRef, "setGravity", "(I)V");

  /// from: public void setGravity(int gravity)
  ///
  /// Describes how the selected item view is positioned. Currently only the horizontal component
  /// is used. The default is determined by the current theme.
  ///@param gravity See android.view.Gravity
  ///@attr ref android.R.styleable\#Spinner_gravity
  void setGravity(int gravity) => jniAccessors.callMethodWithArgs(
      reference, _id_setGravity, jni.JniType.voidType, [gravity]).check();

  static final _id_getGravity =
      jniAccessors.getMethodIDOf(_classRef, "getGravity", "()I");

  /// from: public int getGravity()
  ///
  /// Describes how the selected item view is positioned. The default is determined by the
  /// current theme.
  ///@return A android.view.Gravity Gravity value
  int getGravity() => jniAccessors.callMethodWithArgs(
      reference, _id_getGravity, jni.JniType.intType, []).integer;

  static final _id_setAdapter1 = jniAccessors.getMethodIDOf(
      _classRef, "setAdapter", "(Landroid/widget/SpinnerAdapter;)V");

  /// from: public void setAdapter(android.widget.SpinnerAdapter adapter)
  ///
  /// Sets the SpinnerAdapter used to provide the data which backs
  /// this Spinner.
  ///
  /// If this Spinner has a popup theme set in XML via the
  /// android.R.styleable\#Spinner_popupTheme popupTheme attribute, the
  /// adapter should inflate drop-down views using the same theme. The easiest
  /// way to achieve this is by using \#getPopupContext() to obtain a
  /// layout inflater for use in
  /// SpinnerAdapter\#getDropDownView(int, View, ViewGroup).
  ///
  /// Spinner overrides Adapter\#getViewTypeCount() on the
  /// Adapter associated with this view. Calling
  /// Adapter\#getItemViewType(int) getItemViewType(int) on the object
  /// returned from \#getAdapter() will always return 0. Calling
  /// Adapter\#getViewTypeCount() getViewTypeCount() will always return
  /// 1. On API Build.VERSION_CODES\#LOLLIPOP and above, attempting to set an
  /// adapter with more than one view type will throw an
  /// IllegalArgumentException.
  ///@param adapter the adapter to set
  ///@see AbsSpinner\#setAdapter(SpinnerAdapter)
  ///@throws IllegalArgumentException if the adapter has more than one view
  ///         type
  void setAdapter1(spinneradapter_.SpinnerAdapter adapter) =>
      jniAccessors.callMethodWithArgs(reference, _id_setAdapter1,
          jni.JniType.voidType, [adapter.reference]).check();

  static final _id_getBaseline1 =
      jniAccessors.getMethodIDOf(_classRef, "getBaseline", "()I");

  /// from: public int getBaseline()
  int getBaseline1() => jniAccessors.callMethodWithArgs(
      reference, _id_getBaseline1, jni.JniType.intType, []).integer;

  static final _id_onDetachedFromWindow1 =
      jniAccessors.getMethodIDOf(_classRef, "onDetachedFromWindow", "()V");

  /// from: protected void onDetachedFromWindow()
  void onDetachedFromWindow1() => jniAccessors.callMethodWithArgs(
      reference, _id_onDetachedFromWindow1, jni.JniType.voidType, []).check();

  static final _id_setOnItemClickListener1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnItemClickListener",
      "(Landroid/widget/AdapterView\$OnItemClickListener;)V");

  /// from: public void setOnItemClickListener(android.widget.AdapterView.OnItemClickListener l)
  ///
  /// A spinner does not support item click events. Calling this method
  /// will raise an exception.
  ///
  /// Instead use AdapterView\#setOnItemSelectedListener.
  ///@param l this listener will be ignored
  void setOnItemClickListener1(
          adapterview_.AdapterView_OnItemClickListener l) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnItemClickListener1,
          jni.JniType.voidType, [l.reference]).check();

  static final _id_onTouchEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "onTouchEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onTouchEvent(android.view.MotionEvent event)
  bool onTouchEvent1(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTouchEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_onMeasure1 =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure1(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure1,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_onLayout1 =
      jniAccessors.getMethodIDOf(_classRef, "onLayout", "(ZIIII)V");

  /// from: protected void onLayout(boolean changed, int l, int t, int r, int b)
  ///
  /// @see android.view.View\#onLayout(boolean,int,int,int,int) Creates and positions all views
  void onLayout1(bool changed, int l, int t, int r, int b) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLayout1,
          jni.JniType.voidType, [changed, l, t, r, b]).check();

  static final _id_performClick1 =
      jniAccessors.getMethodIDOf(_classRef, "performClick", "()Z");

  /// from: public boolean performClick()
  bool performClick1() => jniAccessors.callMethodWithArgs(
      reference, _id_performClick1, jni.JniType.booleanType, []).boolean;

  static final _id_onClick = jniAccessors.getMethodIDOf(
      _classRef, "onClick", "(Landroid/content/DialogInterface;I)V");

  /// from: public void onClick(android.content.DialogInterface dialog, int which)
  void onClick(dialoginterface_.DialogInterface dialog, int which) =>
      jniAccessors.callMethodWithArgs(reference, _id_onClick,
          jni.JniType.voidType, [dialog.reference, which]).check();

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);

  static final _id_setPrompt = jniAccessors.getMethodIDOf(
      _classRef, "setPrompt", "(Ljava/lang/CharSequence;)V");

  /// from: public void setPrompt(java.lang.CharSequence prompt)
  ///
  /// Sets the prompt to display when the dialog is shown.
  ///@param prompt the prompt to set
  void setPrompt(jni.JniObject prompt) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setPrompt,
      jni.JniType.voidType,
      [prompt.reference]).check();

  static final _id_setPromptId =
      jniAccessors.getMethodIDOf(_classRef, "setPromptId", "(I)V");

  /// from: public void setPromptId(int promptId)
  ///
  /// Sets the prompt to display when the dialog is shown.
  ///@param promptId the resource ID of the prompt to display when the dialog is shown
  void setPromptId(int promptId) => jniAccessors.callMethodWithArgs(
      reference, _id_setPromptId, jni.JniType.voidType, [promptId]).check();

  static final _id_getPrompt = jniAccessors.getMethodIDOf(
      _classRef, "getPrompt", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getPrompt()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The prompt to display when the dialog is shown
  jni.JniObject getPrompt() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPrompt, jni.JniType.objectType, []).object);

  static final _id_onSaveInstanceState1 = jniAccessors.getMethodIDOf(
      _classRef, "onSaveInstanceState", "()Landroid/os/Parcelable;");

  /// from: public android.os.Parcelable onSaveInstanceState()
  /// The returned object must be deleted after use, by calling the `delete` method.
  parcelable_.Parcelable onSaveInstanceState1() =>
      parcelable_.Parcelable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onSaveInstanceState1, jni.JniType.objectType, []).object);

  static final _id_onRestoreInstanceState1 = jniAccessors.getMethodIDOf(
      _classRef, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V");

  /// from: public void onRestoreInstanceState(android.os.Parcelable state)
  void onRestoreInstanceState1(parcelable_.Parcelable state) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRestoreInstanceState1,
          jni.JniType.voidType, [state.reference]).check();

  static final _id_onResolvePointerIcon1 = jniAccessors.getMethodIDOf(
      _classRef,
      "onResolvePointerIcon",
      "(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;");

  /// from: public android.view.PointerIcon onResolvePointerIcon(android.view.MotionEvent event, int pointerIndex)
  /// The returned object must be deleted after use, by calling the `delete` method.
  pointericon_.PointerIcon onResolvePointerIcon1(
          motionevent_.MotionEvent event, int pointerIndex) =>
      pointericon_.PointerIcon.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_onResolvePointerIcon1,
          jni.JniType.objectType,
          [event.reference, pointerIndex]).object);
}
