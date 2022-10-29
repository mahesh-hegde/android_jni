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

import "FrameLayout.dart" as framelayout_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../view/View.dart" as view_;

import "../view/ViewGroup.dart" as viewgroup_;

import "../view/KeyEvent.dart" as keyevent_;

import "../view/MotionEvent.dart" as motionevent_;

import "../graphics/Rect.dart" as rect_;

import "../graphics/Canvas.dart" as canvas_;

import "../os/Parcelable.dart" as parcelable_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.ScrollView
///
/// A view group that allows the view hierarchy placed within it to be scrolled.
/// Scroll view may have only one direct child placed within it.
/// To add multiple views within the scroll view, make
/// the direct child you add a view group, for example LinearLayout, and
/// place additional views within that LinearLayout.
///
/// Scroll view supports vertical scrolling only. For horizontal scrolling,
/// use HorizontalScrollView instead.
///
///
/// Never add a android.support.v7.widget.RecyclerView or ListView to
/// a scroll view. Doing so results in poor user interface performance and a poor user
/// experience.
///
///
/// <p class="note">
/// For vertical scrolling, consider android.support.v4.widget.NestedScrollView
/// instead of scroll view which offers greater user interface flexibility and
/// support for the material design scrolling patterns.
///
///
/// To learn more about material design patterns for handling scrolling, see
/// <a href="https://material.io/guidelines/patterns/scrolling-techniques.html\#">
/// Scrolling techniques</a>.
///
///@attr ref android.R.styleable\#ScrollView_fillViewport
class ScrollView extends framelayout_.FrameLayout {
  static final _classRef = jniAccessors.getClassOf("android/widget/ScrollView");
  ScrollView.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ScrollView(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ScrollView.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ScrollView.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ScrollView.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_shouldDelayChildPressedState = jniAccessors.getMethodIDOf(
      _classRef, "shouldDelayChildPressedState", "()Z");

  /// from: public boolean shouldDelayChildPressedState()
  bool shouldDelayChildPressedState() => jniAccessors.callMethodWithArgs(
      reference,
      _id_shouldDelayChildPressedState,
      jni.JniType.booleanType, []).boolean;

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

  static final _id_getMaxScrollAmount =
      jniAccessors.getMethodIDOf(_classRef, "getMaxScrollAmount", "()I");

  /// from: public int getMaxScrollAmount()
  ///
  /// @return The maximum amount this scroll view will scroll in response to
  ///   an arrow event.
  int getMaxScrollAmount() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxScrollAmount, jni.JniType.intType, []).integer;

  static final _id_addView5 = jniAccessors.getMethodIDOf(
      _classRef, "addView", "(Landroid/view/View;)V");

  /// from: public void addView(android.view.View child)
  void addView5(view_.View child) => jniAccessors.callMethodWithArgs(
      reference, _id_addView5, jni.JniType.voidType, [child.reference]).check();

  static final _id_addView6 = jniAccessors.getMethodIDOf(
      _classRef, "addView", "(Landroid/view/View;I)V");

  /// from: public void addView(android.view.View child, int index)
  void addView6(view_.View child, int index) => jniAccessors.callMethodWithArgs(
      reference,
      _id_addView6,
      jni.JniType.voidType,
      [child.reference, index]).check();

  static final _id_addView7 = jniAccessors.getMethodIDOf(_classRef, "addView",
      "(Landroid/view/View;Landroid/view/ViewGroup\$LayoutParams;)V");

  /// from: public void addView(android.view.View child, android.view.ViewGroup.LayoutParams params)
  void addView7(view_.View child, viewgroup_.ViewGroup_LayoutParams params) =>
      jniAccessors.callMethodWithArgs(reference, _id_addView7,
          jni.JniType.voidType, [child.reference, params.reference]).check();

  static final _id_addView8 = jniAccessors.getMethodIDOf(_classRef, "addView",
      "(Landroid/view/View;ILandroid/view/ViewGroup\$LayoutParams;)V");

  /// from: public void addView(android.view.View child, int index, android.view.ViewGroup.LayoutParams params)
  void addView8(view_.View child, int index,
          viewgroup_.ViewGroup_LayoutParams params) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addView8,
          jni.JniType.voidType,
          [child.reference, index, params.reference]).check();

  static final _id_isFillViewport =
      jniAccessors.getMethodIDOf(_classRef, "isFillViewport", "()Z");

  /// from: public boolean isFillViewport()
  ///
  /// Indicates whether this ScrollView's content is stretched to fill the viewport.
  ///@return True if the content fills the viewport, false otherwise.
  ///@attr ref android.R.styleable\#ScrollView_fillViewport
  bool isFillViewport() => jniAccessors.callMethodWithArgs(
      reference, _id_isFillViewport, jni.JniType.booleanType, []).boolean;

  static final _id_setFillViewport =
      jniAccessors.getMethodIDOf(_classRef, "setFillViewport", "(Z)V");

  /// from: public void setFillViewport(boolean fillViewport)
  ///
  /// Indicates this ScrollView whether it should stretch its content height to fill
  /// the viewport or not.
  ///@param fillViewport True to stretch the content's height to the viewport's
  ///        boundaries, false otherwise.
  ///@attr ref android.R.styleable\#ScrollView_fillViewport
  void setFillViewport(bool fillViewport) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setFillViewport,
      jni.JniType.voidType,
      [fillViewport]).check();

  static final _id_isSmoothScrollingEnabled =
      jniAccessors.getMethodIDOf(_classRef, "isSmoothScrollingEnabled", "()Z");

  /// from: public boolean isSmoothScrollingEnabled()
  ///
  /// @return Whether arrow scrolling will animate its transition.
  bool isSmoothScrollingEnabled() => jniAccessors.callMethodWithArgs(reference,
      _id_isSmoothScrollingEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_setSmoothScrollingEnabled = jniAccessors.getMethodIDOf(
      _classRef, "setSmoothScrollingEnabled", "(Z)V");

  /// from: public void setSmoothScrollingEnabled(boolean smoothScrollingEnabled)
  ///
  /// Set whether arrow scrolling will animate its transition.
  ///@param smoothScrollingEnabled whether arrow scrolling will animate its transition
  void setSmoothScrollingEnabled(bool smoothScrollingEnabled) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSmoothScrollingEnabled,
          jni.JniType.voidType, [smoothScrollingEnabled]).check();

  static final _id_onMeasure1 =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure1(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure1,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_dispatchKeyEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "dispatchKeyEvent", "(Landroid/view/KeyEvent;)Z");

  /// from: public boolean dispatchKeyEvent(android.view.KeyEvent event)
  bool dispatchKeyEvent1(keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_dispatchKeyEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_executeKeyEvent = jniAccessors.getMethodIDOf(
      _classRef, "executeKeyEvent", "(Landroid/view/KeyEvent;)Z");

  /// from: public boolean executeKeyEvent(android.view.KeyEvent event)
  ///
  /// You can call this function yourself to have the scroll view perform
  /// scrolling from a key event, just as if the event had been dispatched to
  /// it by the view hierarchy.
  ///@param event The key event to execute.
  ///@return Return true if the event was handled, else false.
  bool executeKeyEvent(keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_executeKeyEvent,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_requestDisallowInterceptTouchEvent1 = jniAccessors
      .getMethodIDOf(_classRef, "requestDisallowInterceptTouchEvent", "(Z)V");

  /// from: public void requestDisallowInterceptTouchEvent(boolean disallowIntercept)
  void requestDisallowInterceptTouchEvent1(bool disallowIntercept) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_requestDisallowInterceptTouchEvent1,
          jni.JniType.voidType,
          [disallowIntercept]).check();

  static final _id_onInterceptTouchEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onInterceptTouchEvent(android.view.MotionEvent ev)
  bool onInterceptTouchEvent1(motionevent_.MotionEvent ev) =>
      jniAccessors.callMethodWithArgs(reference, _id_onInterceptTouchEvent1,
          jni.JniType.booleanType, [ev.reference]).boolean;

  static final _id_onTouchEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "onTouchEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onTouchEvent(android.view.MotionEvent ev)
  bool onTouchEvent1(motionevent_.MotionEvent ev) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTouchEvent1,
          jni.JniType.booleanType, [ev.reference]).boolean;

  static final _id_onGenericMotionEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "onGenericMotionEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onGenericMotionEvent(android.view.MotionEvent event)
  bool onGenericMotionEvent1(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onGenericMotionEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_onOverScrolled1 =
      jniAccessors.getMethodIDOf(_classRef, "onOverScrolled", "(IIZZ)V");

  /// from: protected void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY)
  void onOverScrolled1(
          int scrollX, int scrollY, bool clampedX, bool clampedY) =>
      jniAccessors.callMethodWithArgs(reference, _id_onOverScrolled1,
          jni.JniType.voidType, [scrollX, scrollY, clampedX, clampedY]).check();

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);

  static final _id_pageScroll =
      jniAccessors.getMethodIDOf(_classRef, "pageScroll", "(I)Z");

  /// from: public boolean pageScroll(int direction)
  ///
  /// Handles scrolling in response to a "page up/down" shortcut press. This
  /// method will scroll the view by one page up or down and give the focus
  /// to the topmost/bottommost component in the new visible area. If no
  /// component is a good candidate for focus, this scrollview reclaims the
  /// focus.
  ///
  ///@param direction the scroll direction: android.view.View\#FOCUS_UP
  ///                  to go one page up or
  ///                  android.view.View\#FOCUS_DOWN to go one page down
  ///@return true if the key event is consumed by this method, false otherwise
  bool pageScroll(int direction) => jniAccessors.callMethodWithArgs(
      reference, _id_pageScroll, jni.JniType.booleanType, [direction]).boolean;

  static final _id_fullScroll =
      jniAccessors.getMethodIDOf(_classRef, "fullScroll", "(I)Z");

  /// from: public boolean fullScroll(int direction)
  ///
  /// Handles scrolling in response to a "home/end" shortcut press. This
  /// method will scroll the view to the top or bottom and give the focus
  /// to the topmost/bottommost component in the new visible area. If no
  /// component is a good candidate for focus, this scrollview reclaims the
  /// focus.
  ///
  ///@param direction the scroll direction: android.view.View\#FOCUS_UP
  ///                  to go the top of the view or
  ///                  android.view.View\#FOCUS_DOWN to go the bottom
  ///@return true if the key event is consumed by this method, false otherwise
  bool fullScroll(int direction) => jniAccessors.callMethodWithArgs(
      reference, _id_fullScroll, jni.JniType.booleanType, [direction]).boolean;

  static final _id_arrowScroll =
      jniAccessors.getMethodIDOf(_classRef, "arrowScroll", "(I)Z");

  /// from: public boolean arrowScroll(int direction)
  ///
  /// Handle scrolling in response to an up or down arrow click.
  ///@param direction The direction corresponding to the arrow key that was
  ///                  pressed
  ///@return True if we consumed the event, false otherwise
  bool arrowScroll(int direction) => jniAccessors.callMethodWithArgs(
      reference, _id_arrowScroll, jni.JniType.booleanType, [direction]).boolean;

  static final _id_smoothScrollBy =
      jniAccessors.getMethodIDOf(_classRef, "smoothScrollBy", "(II)V");

  /// from: public final void smoothScrollBy(int dx, int dy)
  ///
  /// Like View\#scrollBy, but scroll smoothly instead of immediately.
  ///@param dx the number of pixels to scroll by on the X axis
  ///@param dy the number of pixels to scroll by on the Y axis
  void smoothScrollBy(int dx, int dy) => jniAccessors.callMethodWithArgs(
      reference, _id_smoothScrollBy, jni.JniType.voidType, [dx, dy]).check();

  static final _id_smoothScrollTo =
      jniAccessors.getMethodIDOf(_classRef, "smoothScrollTo", "(II)V");

  /// from: public final void smoothScrollTo(int x, int y)
  ///
  /// Like \#scrollTo, but scroll smoothly instead of immediately.
  ///@param x the position where to scroll on the X axis
  ///@param y the position where to scroll on the Y axis
  void smoothScrollTo(int x, int y) => jniAccessors.callMethodWithArgs(
      reference, _id_smoothScrollTo, jni.JniType.voidType, [x, y]).check();

  static final _id_computeVerticalScrollRange1 = jniAccessors.getMethodIDOf(
      _classRef, "computeVerticalScrollRange", "()I");

  /// from: protected int computeVerticalScrollRange()
  ///
  /// The scroll range of a scroll view is the overall height of all of its
  /// children.
  ///
  int computeVerticalScrollRange1() => jniAccessors.callMethodWithArgs(
      reference,
      _id_computeVerticalScrollRange1,
      jni.JniType.intType, []).integer;

  static final _id_computeVerticalScrollOffset1 = jniAccessors.getMethodIDOf(
      _classRef, "computeVerticalScrollOffset", "()I");

  /// from: protected int computeVerticalScrollOffset()
  int computeVerticalScrollOffset1() => jniAccessors.callMethodWithArgs(
      reference,
      _id_computeVerticalScrollOffset1,
      jni.JniType.intType, []).integer;

  static final _id_measureChild1 = jniAccessors.getMethodIDOf(
      _classRef, "measureChild", "(Landroid/view/View;II)V");

  /// from: protected void measureChild(android.view.View child, int parentWidthMeasureSpec, int parentHeightMeasureSpec)
  void measureChild1(view_.View child, int parentWidthMeasureSpec,
          int parentHeightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_measureChild1, jni.JniType.voidType, [
        child.reference,
        parentWidthMeasureSpec,
        parentHeightMeasureSpec
      ]).check();

  static final _id_measureChildWithMargins1 = jniAccessors.getMethodIDOf(
      _classRef, "measureChildWithMargins", "(Landroid/view/View;IIII)V");

  /// from: protected void measureChildWithMargins(android.view.View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed)
  void measureChildWithMargins1(view_.View child, int parentWidthMeasureSpec,
          int widthUsed, int parentHeightMeasureSpec, int heightUsed) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_measureChildWithMargins1, jni.JniType.voidType, [
        child.reference,
        parentWidthMeasureSpec,
        widthUsed,
        parentHeightMeasureSpec,
        heightUsed
      ]).check();

  static final _id_computeScroll1 =
      jniAccessors.getMethodIDOf(_classRef, "computeScroll", "()V");

  /// from: public void computeScroll()
  void computeScroll1() => jniAccessors.callMethodWithArgs(
      reference, _id_computeScroll1, jni.JniType.voidType, []).check();

  static final _id_computeScrollDeltaToGetChildRectOnScreen =
      jniAccessors.getMethodIDOf(
          _classRef,
          "computeScrollDeltaToGetChildRectOnScreen",
          "(Landroid/graphics/Rect;)I");

  /// from: protected int computeScrollDeltaToGetChildRectOnScreen(android.graphics.Rect rect)
  ///
  /// Compute the amount to scroll in the Y direction in order to get
  /// a rectangle completely on the screen (or, if taller than the screen,
  /// at least the first screen size chunk of it).
  ///@param rect The rect.
  ///@return The scroll delta.
  int computeScrollDeltaToGetChildRectOnScreen(rect_.Rect rect) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_computeScrollDeltaToGetChildRectOnScreen,
          jni.JniType.intType,
          [rect.reference]).integer;

  static final _id_requestChildFocus1 = jniAccessors.getMethodIDOf(_classRef,
      "requestChildFocus", "(Landroid/view/View;Landroid/view/View;)V");

  /// from: public void requestChildFocus(android.view.View child, android.view.View focused)
  void requestChildFocus1(view_.View child, view_.View focused) =>
      jniAccessors.callMethodWithArgs(reference, _id_requestChildFocus1,
          jni.JniType.voidType, [child.reference, focused.reference]).check();

  static final _id_onRequestFocusInDescendants1 = jniAccessors.getMethodIDOf(
      _classRef, "onRequestFocusInDescendants", "(ILandroid/graphics/Rect;)Z");

  /// from: protected boolean onRequestFocusInDescendants(int direction, android.graphics.Rect previouslyFocusedRect)
  ///
  /// When looking for focus in children of a scroll view, need to be a little
  /// more careful not to give focus to something that is scrolled off screen.
  ///
  /// This is more expensive than the default android.view.ViewGroup
  /// implementation, otherwise this behavior might have been made the default.
  bool onRequestFocusInDescendants1(
          int direction, rect_.Rect previouslyFocusedRect) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onRequestFocusInDescendants1,
          jni.JniType.booleanType,
          [direction, previouslyFocusedRect.reference]).boolean;

  static final _id_requestChildRectangleOnScreen1 = jniAccessors.getMethodIDOf(
      _classRef,
      "requestChildRectangleOnScreen",
      "(Landroid/view/View;Landroid/graphics/Rect;Z)Z");

  /// from: public boolean requestChildRectangleOnScreen(android.view.View child, android.graphics.Rect rectangle, boolean immediate)
  bool requestChildRectangleOnScreen1(
          view_.View child, rect_.Rect rectangle, bool immediate) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_requestChildRectangleOnScreen1,
          jni.JniType.booleanType,
          [child.reference, rectangle.reference, immediate]).boolean;

  static final _id_requestLayout1 =
      jniAccessors.getMethodIDOf(_classRef, "requestLayout", "()V");

  /// from: public void requestLayout()
  void requestLayout1() => jniAccessors.callMethodWithArgs(
      reference, _id_requestLayout1, jni.JniType.voidType, []).check();

  static final _id_onDetachedFromWindow1 =
      jniAccessors.getMethodIDOf(_classRef, "onDetachedFromWindow", "()V");

  /// from: protected void onDetachedFromWindow()
  void onDetachedFromWindow1() => jniAccessors.callMethodWithArgs(
      reference, _id_onDetachedFromWindow1, jni.JniType.voidType, []).check();

  static final _id_onLayout =
      jniAccessors.getMethodIDOf(_classRef, "onLayout", "(ZIIII)V");

  /// from: protected void onLayout(boolean changed, int l, int t, int r, int b)
  void onLayout(bool changed, int l, int t, int r, int b) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLayout,
          jni.JniType.voidType, [changed, l, t, r, b]).check();

  static final _id_onSizeChanged1 =
      jniAccessors.getMethodIDOf(_classRef, "onSizeChanged", "(IIII)V");

  /// from: protected void onSizeChanged(int w, int h, int oldw, int oldh)
  void onSizeChanged1(int w, int h, int oldw, int oldh) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSizeChanged1,
          jni.JniType.voidType, [w, h, oldw, oldh]).check();

  static final _id_fling =
      jniAccessors.getMethodIDOf(_classRef, "fling", "(I)V");

  /// from: public void fling(int velocityY)
  ///
  /// Fling the scroll view
  ///@param velocityY The initial velocity in the Y direction. Positive
  ///                  numbers mean that the finger/cursor is moving down the screen,
  ///                  which means we want to scroll towards the top.
  void fling(int velocityY) => jniAccessors.callMethodWithArgs(
      reference, _id_fling, jni.JniType.voidType, [velocityY]).check();

  static final _id_scrollTo1 =
      jniAccessors.getMethodIDOf(_classRef, "scrollTo", "(II)V");

  /// from: public void scrollTo(int x, int y)
  ///
  /// {@inheritDoc}
  ///
  /// This version also clamps the scrolling to the bounds of our child.
  void scrollTo1(int x, int y) => jniAccessors.callMethodWithArgs(
      reference, _id_scrollTo1, jni.JniType.voidType, [x, y]).check();

  static final _id_setOverScrollMode1 =
      jniAccessors.getMethodIDOf(_classRef, "setOverScrollMode", "(I)V");

  /// from: public void setOverScrollMode(int mode)
  void setOverScrollMode1(int mode) => jniAccessors.callMethodWithArgs(
      reference, _id_setOverScrollMode1, jni.JniType.voidType, [mode]).check();

  static final _id_onStartNestedScroll1 = jniAccessors.getMethodIDOf(_classRef,
      "onStartNestedScroll", "(Landroid/view/View;Landroid/view/View;I)Z");

  /// from: public boolean onStartNestedScroll(android.view.View child, android.view.View target, int nestedScrollAxes)
  bool onStartNestedScroll1(
          view_.View child, view_.View target, int nestedScrollAxes) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onStartNestedScroll1,
          jni.JniType.booleanType,
          [child.reference, target.reference, nestedScrollAxes]).boolean;

  static final _id_onNestedScrollAccepted1 = jniAccessors.getMethodIDOf(
      _classRef,
      "onNestedScrollAccepted",
      "(Landroid/view/View;Landroid/view/View;I)V");

  /// from: public void onNestedScrollAccepted(android.view.View child, android.view.View target, int axes)
  void onNestedScrollAccepted1(view_.View child, view_.View target, int axes) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onNestedScrollAccepted1,
          jni.JniType.voidType,
          [child.reference, target.reference, axes]).check();

  static final _id_onStopNestedScroll1 = jniAccessors.getMethodIDOf(
      _classRef, "onStopNestedScroll", "(Landroid/view/View;)V");

  /// from: public void onStopNestedScroll(android.view.View target)
  ///
  /// @inheritDoc
  void onStopNestedScroll1(view_.View target) =>
      jniAccessors.callMethodWithArgs(reference, _id_onStopNestedScroll1,
          jni.JniType.voidType, [target.reference]).check();

  static final _id_onNestedScroll1 = jniAccessors.getMethodIDOf(
      _classRef, "onNestedScroll", "(Landroid/view/View;IIII)V");

  /// from: public void onNestedScroll(android.view.View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed)
  void onNestedScroll1(view_.View target, int dxConsumed, int dyConsumed,
          int dxUnconsumed, int dyUnconsumed) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onNestedScroll1, jni.JniType.voidType, [
        target.reference,
        dxConsumed,
        dyConsumed,
        dxUnconsumed,
        dyUnconsumed
      ]).check();

  static final _id_onNestedFling1 = jniAccessors.getMethodIDOf(
      _classRef, "onNestedFling", "(Landroid/view/View;FFZ)Z");

  /// from: public boolean onNestedFling(android.view.View target, float velocityX, float velocityY, boolean consumed)
  ///
  /// @inheritDoc
  bool onNestedFling1(view_.View target, double velocityX, double velocityY,
          bool consumed) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onNestedFling1,
          jni.JniType.booleanType,
          [target.reference, velocityX, velocityY, consumed]).boolean;

  static final _id_draw1 = jniAccessors.getMethodIDOf(
      _classRef, "draw", "(Landroid/graphics/Canvas;)V");

  /// from: public void draw(android.graphics.Canvas canvas)
  void draw1(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference, _id_draw1, jni.JniType.voidType, [canvas.reference]).check();

  static final _id_onRestoreInstanceState1 = jniAccessors.getMethodIDOf(
      _classRef, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V");

  /// from: protected void onRestoreInstanceState(android.os.Parcelable state)
  void onRestoreInstanceState1(parcelable_.Parcelable state) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRestoreInstanceState1,
          jni.JniType.voidType, [state.reference]).check();

  static final _id_onSaveInstanceState1 = jniAccessors.getMethodIDOf(
      _classRef, "onSaveInstanceState", "()Landroid/os/Parcelable;");

  /// from: protected android.os.Parcelable onSaveInstanceState()
  /// The returned object must be deleted after use, by calling the `delete` method.
  parcelable_.Parcelable onSaveInstanceState1() =>
      parcelable_.Parcelable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onSaveInstanceState1, jni.JniType.objectType, []).object);
}
