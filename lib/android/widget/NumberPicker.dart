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

import "LinearLayout.dart" as linearlayout_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../view/MotionEvent.dart" as motionevent_;

import "../view/KeyEvent.dart" as keyevent_;

import "../graphics/Canvas.dart" as canvas_;

import "../view/accessibility/AccessibilityNodeProvider.dart"
    as accessibilitynodeprovider_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.NumberPicker
///
/// A widget that enables the user to select a number from a predefined range.
/// There are two flavors of this widget and which one is presented to the user
/// depends on the current theme.
/// <ul>
/// <li>
/// If the current theme is derived from android.R.style\#Theme the widget
/// presents the current value as an editable input field with an increment button
/// above and a decrement button below. Long pressing the buttons allows for a quick
/// change of the current value. Tapping on the input field allows to type in
/// a desired value.
/// </li>
/// <li>
/// If the current theme is derived from android.R.style\#Theme_Holo or
/// android.R.style\#Theme_Holo_Light the widget presents the current
/// value as an editable input field with a lesser value above and a greater
/// value below. Tapping on the lesser or greater value selects it by animating
/// the number axis up or down to make the chosen value current. Flinging up
/// or down allows for multiple increments or decrements of the current value.
/// Long pressing on the lesser and greater values also allows for a quick change
/// of the current value. Tapping on the current value allows to type in a
/// desired value.
/// </li>
/// </ul>
///
/// For an example of using this widget, see android.widget.TimePicker.
///
///
class NumberPicker extends linearlayout_.LinearLayout {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/NumberPicker");
  NumberPicker.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new number picker.
  ///@param context The application environment.
  NumberPicker(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new number picker.
  ///@param context The application environment.
  ///@param attrs A collection of attributes.
  NumberPicker.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new number picker
  ///@param context the application environment.
  ///@param attrs a collection of attributes.
  ///@param defStyleAttr An attribute in the current theme that contains a
  ///        reference to a style resource that supplies default values for
  ///        the view. Can be 0 to not look for defaults.
  NumberPicker.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new number picker
  ///@param context the application environment.
  ///@param attrs a collection of attributes.
  ///@param defStyleAttr An attribute in the current theme that contains a
  ///        reference to a style resource that supplies default values for
  ///        the view. Can be 0 to not look for defaults.
  ///@param defStyleRes A resource identifier of a style resource that
  ///        supplies default values for the view, used only if
  ///        defStyleAttr is 0 or can not be found in the theme. Can be 0
  ///        to not look for defaults.
  NumberPicker.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_onLayout =
      jniAccessors.getMethodIDOf(_classRef, "onLayout", "(ZIIII)V");

  /// from: protected void onLayout(boolean changed, int left, int top, int right, int bottom)
  void onLayout(bool changed, int left, int top, int right, int bottom) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLayout,
          jni.JniType.voidType, [changed, left, top, right, bottom]).check();

  static final _id_onMeasure1 =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure1(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure1,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_onInterceptTouchEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onInterceptTouchEvent(android.view.MotionEvent event)
  bool onInterceptTouchEvent1(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onInterceptTouchEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_onTouchEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "onTouchEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onTouchEvent(android.view.MotionEvent event)
  bool onTouchEvent1(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTouchEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_dispatchTouchEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean dispatchTouchEvent(android.view.MotionEvent event)
  bool dispatchTouchEvent1(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_dispatchTouchEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_dispatchKeyEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "dispatchKeyEvent", "(Landroid/view/KeyEvent;)Z");

  /// from: public boolean dispatchKeyEvent(android.view.KeyEvent event)
  bool dispatchKeyEvent1(keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_dispatchKeyEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_dispatchTrackballEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "dispatchTrackballEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean dispatchTrackballEvent(android.view.MotionEvent event)
  bool dispatchTrackballEvent1(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_dispatchTrackballEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_dispatchHoverEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "dispatchHoverEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: protected boolean dispatchHoverEvent(android.view.MotionEvent event)
  bool dispatchHoverEvent1(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_dispatchHoverEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_computeScroll1 =
      jniAccessors.getMethodIDOf(_classRef, "computeScroll", "()V");

  /// from: public void computeScroll()
  void computeScroll1() => jniAccessors.callMethodWithArgs(
      reference, _id_computeScroll1, jni.JniType.voidType, []).check();

  static final _id_setEnabled1 =
      jniAccessors.getMethodIDOf(_classRef, "setEnabled", "(Z)V");

  /// from: public void setEnabled(boolean enabled)
  void setEnabled1(bool enabled) => jniAccessors.callMethodWithArgs(
      reference, _id_setEnabled1, jni.JniType.voidType, [enabled]).check();

  static final _id_scrollBy1 =
      jniAccessors.getMethodIDOf(_classRef, "scrollBy", "(II)V");

  /// from: public void scrollBy(int x, int y)
  void scrollBy1(int x, int y) => jniAccessors.callMethodWithArgs(
      reference, _id_scrollBy1, jni.JniType.voidType, [x, y]).check();

  static final _id_computeVerticalScrollOffset1 = jniAccessors.getMethodIDOf(
      _classRef, "computeVerticalScrollOffset", "()I");

  /// from: protected int computeVerticalScrollOffset()
  int computeVerticalScrollOffset1() => jniAccessors.callMethodWithArgs(
      reference,
      _id_computeVerticalScrollOffset1,
      jni.JniType.intType, []).integer;

  static final _id_computeVerticalScrollRange1 = jniAccessors.getMethodIDOf(
      _classRef, "computeVerticalScrollRange", "()I");

  /// from: protected int computeVerticalScrollRange()
  int computeVerticalScrollRange1() => jniAccessors.callMethodWithArgs(
      reference,
      _id_computeVerticalScrollRange1,
      jni.JniType.intType, []).integer;

  static final _id_computeVerticalScrollExtent1 = jniAccessors.getMethodIDOf(
      _classRef, "computeVerticalScrollExtent", "()I");

  /// from: protected int computeVerticalScrollExtent()
  int computeVerticalScrollExtent1() => jniAccessors.callMethodWithArgs(
      reference,
      _id_computeVerticalScrollExtent1,
      jni.JniType.intType, []).integer;

  static final _id_getSolidColor1 =
      jniAccessors.getMethodIDOf(_classRef, "getSolidColor", "()I");

  /// from: public int getSolidColor()
  int getSolidColor1() => jniAccessors.callMethodWithArgs(
      reference, _id_getSolidColor1, jni.JniType.intType, []).integer;

  static final _id_setOnValueChangedListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnValueChangedListener",
      "(Landroid/widget/NumberPicker\$OnValueChangeListener;)V");

  /// from: public void setOnValueChangedListener(android.widget.NumberPicker.OnValueChangeListener onValueChangedListener)
  ///
  /// Sets the listener to be notified on change of the current value.
  ///@param onValueChangedListener The listener.
  void setOnValueChangedListener(
          NumberPicker_OnValueChangeListener onValueChangedListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnValueChangedListener,
          jni.JniType.voidType, [onValueChangedListener.reference]).check();

  static final _id_setOnScrollListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnScrollListener",
      "(Landroid/widget/NumberPicker\$OnScrollListener;)V");

  /// from: public void setOnScrollListener(android.widget.NumberPicker.OnScrollListener onScrollListener)
  ///
  /// Set listener to be notified for scroll state changes.
  ///@param onScrollListener The listener.
  void setOnScrollListener(NumberPicker_OnScrollListener onScrollListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnScrollListener,
          jni.JniType.voidType, [onScrollListener.reference]).check();

  static final _id_setFormatter = jniAccessors.getMethodIDOf(
      _classRef, "setFormatter", "(Landroid/widget/NumberPicker\$Formatter;)V");

  /// from: public void setFormatter(android.widget.NumberPicker.Formatter formatter)
  ///
  /// Set the formatter to be used for formatting the current value.
  ///
  /// Note: If you have provided alternative values for the values this
  /// formatter is never invoked.
  ///
  ///
  ///@param formatter The formatter object. If formatter is <code>null</code>,
  ///            String\#valueOf(int) will be used.
  ///@see \#setDisplayedValues(String[])
  void setFormatter(NumberPicker_Formatter formatter) =>
      jniAccessors.callMethodWithArgs(reference, _id_setFormatter,
          jni.JniType.voidType, [formatter.reference]).check();

  static final _id_setValue =
      jniAccessors.getMethodIDOf(_classRef, "setValue", "(I)V");

  /// from: public void setValue(int value)
  ///
  /// Set the current value for the number picker.
  ///
  /// If the argument is less than the NumberPicker\#getMinValue() and
  /// NumberPicker\#getWrapSelectorWheel() is <code>false</code> the
  /// current value is set to the NumberPicker\#getMinValue() value.
  ///
  ///
  ///
  /// If the argument is less than the NumberPicker\#getMinValue() and
  /// NumberPicker\#getWrapSelectorWheel() is <code>true</code> the
  /// current value is set to the NumberPicker\#getMaxValue() value.
  ///
  ///
  ///
  /// If the argument is less than the NumberPicker\#getMaxValue() and
  /// NumberPicker\#getWrapSelectorWheel() is <code>false</code> the
  /// current value is set to the NumberPicker\#getMaxValue() value.
  ///
  ///
  ///
  /// If the argument is less than the NumberPicker\#getMaxValue() and
  /// NumberPicker\#getWrapSelectorWheel() is <code>true</code> the
  /// current value is set to the NumberPicker\#getMinValue() value.
  ///
  ///
  ///@param value The current value.
  ///@see \#setWrapSelectorWheel(boolean)
  ///@see \#setMinValue(int)
  ///@see \#setMaxValue(int)
  void setValue(int value) => jniAccessors.callMethodWithArgs(
      reference, _id_setValue, jni.JniType.voidType, [value]).check();

  static final _id_performClick1 =
      jniAccessors.getMethodIDOf(_classRef, "performClick", "()Z");

  /// from: public boolean performClick()
  bool performClick1() => jniAccessors.callMethodWithArgs(
      reference, _id_performClick1, jni.JniType.booleanType, []).boolean;

  static final _id_performLongClick2 =
      jniAccessors.getMethodIDOf(_classRef, "performLongClick", "()Z");

  /// from: public boolean performLongClick()
  bool performLongClick2() => jniAccessors.callMethodWithArgs(
      reference, _id_performLongClick2, jni.JniType.booleanType, []).boolean;

  static final _id_getWrapSelectorWheel =
      jniAccessors.getMethodIDOf(_classRef, "getWrapSelectorWheel", "()Z");

  /// from: public boolean getWrapSelectorWheel()
  ///
  /// Gets whether the selector wheel wraps when reaching the min/max value.
  ///@return True if the selector wheel wraps.
  ///@see \#getMinValue()
  ///@see \#getMaxValue()
  bool getWrapSelectorWheel() => jniAccessors.callMethodWithArgs(
      reference, _id_getWrapSelectorWheel, jni.JniType.booleanType, []).boolean;

  static final _id_setWrapSelectorWheel =
      jniAccessors.getMethodIDOf(_classRef, "setWrapSelectorWheel", "(Z)V");

  /// from: public void setWrapSelectorWheel(boolean wrapSelectorWheel)
  ///
  /// Sets whether the selector wheel shown during flinging/scrolling should
  /// wrap around the NumberPicker\#getMinValue() and
  /// NumberPicker\#getMaxValue() values.
  ///
  /// By default if the range (max - min) is more than the number of items shown
  /// on the selector wheel the selector wheel wrapping is enabled.
  ///
  ///
  ///
  /// <strong>Note:</strong> If the number of items, i.e. the range (
  /// \#getMaxValue() - \#getMinValue()) is less than
  /// the number of items shown on the selector wheel, the selector wheel will
  /// not wrap. Hence, in such a case calling this method is a NOP.
  ///
  ///
  ///@param wrapSelectorWheel Whether to wrap.
  void setWrapSelectorWheel(bool wrapSelectorWheel) =>
      jniAccessors.callMethodWithArgs(reference, _id_setWrapSelectorWheel,
          jni.JniType.voidType, [wrapSelectorWheel]).check();

  static final _id_setOnLongPressUpdateInterval = jniAccessors.getMethodIDOf(
      _classRef, "setOnLongPressUpdateInterval", "(J)V");

  /// from: public void setOnLongPressUpdateInterval(long intervalMillis)
  ///
  /// Sets the speed at which the numbers be incremented and decremented when
  /// the up and down buttons are long pressed respectively.
  ///
  /// The default value is 300 ms.
  ///
  ///
  ///@param intervalMillis The speed (in milliseconds) at which the numbers
  ///            will be incremented and decremented.
  void setOnLongPressUpdateInterval(int intervalMillis) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setOnLongPressUpdateInterval,
          jni.JniType.voidType,
          [intervalMillis]).check();

  static final _id_getValue =
      jniAccessors.getMethodIDOf(_classRef, "getValue", "()I");

  /// from: public int getValue()
  ///
  /// Returns the value of the picker.
  ///@return The value.
  int getValue() => jniAccessors.callMethodWithArgs(
      reference, _id_getValue, jni.JniType.intType, []).integer;

  static final _id_getMinValue =
      jniAccessors.getMethodIDOf(_classRef, "getMinValue", "()I");

  /// from: public int getMinValue()
  ///
  /// Returns the min value of the picker.
  ///@return The min value
  int getMinValue() => jniAccessors.callMethodWithArgs(
      reference, _id_getMinValue, jni.JniType.intType, []).integer;

  static final _id_setMinValue =
      jniAccessors.getMethodIDOf(_classRef, "setMinValue", "(I)V");

  /// from: public void setMinValue(int minValue)
  ///
  /// Sets the min value of the picker.
  ///@param minValue The min value inclusive.
  ///
  /// <strong>Note:</strong> The length of the displayed values array
  /// set via \#setDisplayedValues(String[]) must be equal to the
  /// range of selectable numbers which is equal to
  /// \#getMaxValue() - \#getMinValue() + 1.
  void setMinValue(int minValue) => jniAccessors.callMethodWithArgs(
      reference, _id_setMinValue, jni.JniType.voidType, [minValue]).check();

  static final _id_getMaxValue =
      jniAccessors.getMethodIDOf(_classRef, "getMaxValue", "()I");

  /// from: public int getMaxValue()
  ///
  /// Returns the max value of the picker.
  ///@return The max value.
  int getMaxValue() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxValue, jni.JniType.intType, []).integer;

  static final _id_setMaxValue =
      jniAccessors.getMethodIDOf(_classRef, "setMaxValue", "(I)V");

  /// from: public void setMaxValue(int maxValue)
  ///
  /// Sets the max value of the picker.
  ///@param maxValue The max value inclusive.
  ///
  /// <strong>Note:</strong> The length of the displayed values array
  /// set via \#setDisplayedValues(String[]) must be equal to the
  /// range of selectable numbers which is equal to
  /// \#getMaxValue() - \#getMinValue() + 1.
  void setMaxValue(int maxValue) => jniAccessors.callMethodWithArgs(
      reference, _id_setMaxValue, jni.JniType.voidType, [maxValue]).check();

  static final _id_getDisplayedValues = jniAccessors.getMethodIDOf(
      _classRef, "getDisplayedValues", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getDisplayedValues()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the values to be displayed instead of string values.
  ///@return The displayed values.
  jni.JniObject getDisplayedValues() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getDisplayedValues, jni.JniType.objectType, []).object);

  static final _id_setDisplayedValues = jniAccessors.getMethodIDOf(
      _classRef, "setDisplayedValues", "([Ljava/lang/String;)V");

  /// from: public void setDisplayedValues(java.lang.String[] displayedValues)
  ///
  /// Sets the values to be displayed.
  ///@param displayedValues The displayed values.
  ///
  /// <strong>Note:</strong> The length of the displayed values array
  /// must be equal to the range of selectable numbers which is equal to
  /// \#getMaxValue() - \#getMinValue() + 1.
  void setDisplayedValues(jni.JniObject displayedValues) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDisplayedValues,
          jni.JniType.voidType, [displayedValues.reference]).check();

  static final _id_getTopFadingEdgeStrength1 =
      jniAccessors.getMethodIDOf(_classRef, "getTopFadingEdgeStrength", "()F");

  /// from: protected float getTopFadingEdgeStrength()
  double getTopFadingEdgeStrength1() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getTopFadingEdgeStrength1,
      jni.JniType.floatType, []).float;

  static final _id_getBottomFadingEdgeStrength1 = jniAccessors.getMethodIDOf(
      _classRef, "getBottomFadingEdgeStrength", "()F");

  /// from: protected float getBottomFadingEdgeStrength()
  double getBottomFadingEdgeStrength1() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getBottomFadingEdgeStrength1,
      jni.JniType.floatType, []).float;

  static final _id_onDetachedFromWindow1 =
      jniAccessors.getMethodIDOf(_classRef, "onDetachedFromWindow", "()V");

  /// from: protected void onDetachedFromWindow()
  void onDetachedFromWindow1() => jniAccessors.callMethodWithArgs(
      reference, _id_onDetachedFromWindow1, jni.JniType.voidType, []).check();

  static final _id_drawableStateChanged1 =
      jniAccessors.getMethodIDOf(_classRef, "drawableStateChanged", "()V");

  /// from: protected void drawableStateChanged()
  ///
  /// If you override this method you _must_ call through to the
  ///            superclass implementation.
  void drawableStateChanged1() => jniAccessors.callMethodWithArgs(
      reference, _id_drawableStateChanged1, jni.JniType.voidType, []).check();

  static final _id_jumpDrawablesToCurrentState1 = jniAccessors.getMethodIDOf(
      _classRef, "jumpDrawablesToCurrentState", "()V");

  /// from: public void jumpDrawablesToCurrentState()
  ///
  /// If you override this method you _must_ call through to the
  ///            superclass implementation.
  void jumpDrawablesToCurrentState1() => jniAccessors.callMethodWithArgs(
      reference,
      _id_jumpDrawablesToCurrentState1,
      jni.JniType.voidType, []).check();

  static final _id_onDraw1 = jniAccessors.getMethodIDOf(
      _classRef, "onDraw", "(Landroid/graphics/Canvas;)V");

  /// from: protected void onDraw(android.graphics.Canvas canvas)
  void onDraw1(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference, _id_onDraw1, jni.JniType.voidType, [canvas.reference]).check();

  static final _id_getAccessibilityNodeProvider1 = jniAccessors.getMethodIDOf(
      _classRef,
      "getAccessibilityNodeProvider",
      "()Landroid/view/accessibility/AccessibilityNodeProvider;");

  /// from: public android.view.accessibility.AccessibilityNodeProvider getAccessibilityNodeProvider()
  /// The returned object must be deleted after use, by calling the `delete` method.
  accessibilitynodeprovider_.AccessibilityNodeProvider
      getAccessibilityNodeProvider1() =>
          accessibilitynodeprovider_.AccessibilityNodeProvider.fromRef(
              jniAccessors.callMethodWithArgs(
                  reference,
                  _id_getAccessibilityNodeProvider1,
                  jni.JniType.objectType, []).object);
}

/// from: android.widget.NumberPicker$OnValueChangeListener
///
/// Interface to listen for changes of the current value.
class NumberPicker_OnValueChangeListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/NumberPicker\$OnValueChangeListener");
  NumberPicker_OnValueChangeListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onValueChange = jniAccessors.getMethodIDOf(
      _classRef, "onValueChange", "(Landroid/widget/NumberPicker;II)V");

  /// from: public abstract void onValueChange(android.widget.NumberPicker picker, int oldVal, int newVal)
  ///
  /// Called upon a change of the current value.
  ///@param picker The NumberPicker associated with this listener.
  ///@param oldVal The previous value.
  ///@param newVal The new value.
  void onValueChange(NumberPicker picker, int oldVal, int newVal) =>
      jniAccessors.callMethodWithArgs(reference, _id_onValueChange,
          jni.JniType.voidType, [picker.reference, oldVal, newVal]).check();
}

/// from: android.widget.NumberPicker$OnScrollListener
///
/// Interface to listen for the picker scroll state.
class NumberPicker_OnScrollListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/NumberPicker\$OnScrollListener");
  NumberPicker_OnScrollListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int SCROLL_STATE_FLING
  ///
  /// The user had previously been scrolling using touch and performed a fling.
  static const SCROLL_STATE_FLING = 2;

  /// from: static public final int SCROLL_STATE_IDLE
  ///
  /// The view is not scrolling.
  static const SCROLL_STATE_IDLE = 0;

  /// from: static public final int SCROLL_STATE_TOUCH_SCROLL
  ///
  /// The user is scrolling using touch, and his finger is still on the screen.
  static const SCROLL_STATE_TOUCH_SCROLL = 1;

  static final _id_onScrollStateChange = jniAccessors.getMethodIDOf(
      _classRef, "onScrollStateChange", "(Landroid/widget/NumberPicker;I)V");

  /// from: public abstract void onScrollStateChange(android.widget.NumberPicker view, int scrollState)
  ///
  /// Callback invoked while the number picker scroll state has changed.
  ///@param view The view whose scroll state is being reported.
  ///@param scrollState The current scroll state. One of
  ///            \#SCROLL_STATE_IDLE,
  ///            \#SCROLL_STATE_TOUCH_SCROLL or
  ///            \#SCROLL_STATE_IDLE.
  ///
  /// Value is android.widget.NumberPicker.OnScrollListener\#SCROLL_STATE_IDLE, android.widget.NumberPicker.OnScrollListener\#SCROLL_STATE_TOUCH_SCROLL, or android.widget.NumberPicker.OnScrollListener\#SCROLL_STATE_FLING
  void onScrollStateChange(NumberPicker view, int scrollState) =>
      jniAccessors.callMethodWithArgs(reference, _id_onScrollStateChange,
          jni.JniType.voidType, [view.reference, scrollState]).check();
}

/// from: android.widget.NumberPicker$Formatter
///
/// Interface used to format current value into a string for presentation.
class NumberPicker_Formatter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/NumberPicker\$Formatter");
  NumberPicker_Formatter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_format =
      jniAccessors.getMethodIDOf(_classRef, "format", "(I)Ljava/lang/String;");

  /// from: public abstract java.lang.String format(int value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Formats a string representation of the current value.
  ///@param value The currently selected value.
  ///@return A formatted string representation.
  jni.JniString format(int value) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_format, jni.JniType.objectType, [value]).object);
}
