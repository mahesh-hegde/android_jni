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
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.FrameLayout
///
/// FrameLayout is designed to block out an area on the screen to display
/// a single item. Generally, FrameLayout should be used to hold a single child view, because it can
/// be difficult to organize child views in a way that's scalable to different screen sizes without
/// the children overlapping each other. You can, however, add multiple children to a FrameLayout
/// and control their position within the FrameLayout by assigning gravity to each child, using the
/// <a href="FrameLayout.LayoutParams.html\#attr_android:layout_gravity">{@code
/// android:layout_gravity}</a> attribute.
/// Child views are drawn in a stack, with the most recently added child on top.
/// The size of the FrameLayout is the size of its largest child (plus padding), visible
/// or not (if the FrameLayout's parent permits). Views that are android.view.View\#GONE are
/// used for sizing
/// only if \#setMeasureAllChildren(boolean) setConsiderGoneChildrenWhenMeasuring()
/// is set to true.
///@attr ref android.R.styleable\#FrameLayout_measureAllChildren
class FrameLayout extends viewgroup_.ViewGroup {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/FrameLayout");
  FrameLayout.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param context This value must never be {@code null}.
  FrameLayout(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param context This value must never be {@code null}.
  ///@param attrs This value may be {@code null}.
  FrameLayout.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param context This value must never be {@code null}.
  ///@param attrs This value may be {@code null}.
  FrameLayout.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param context This value must never be {@code null}.
  ///@param attrs This value may be {@code null}.
  FrameLayout.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_setForegroundGravity1 =
      jniAccessors.getMethodIDOf(_classRef, "setForegroundGravity", "(I)V");

  /// from: public void setForegroundGravity(int foregroundGravity)
  ///
  /// Describes how the foreground is positioned. Defaults to START and TOP.
  ///@param foregroundGravity See android.view.Gravity
  ///@see \#getForegroundGravity()
  ///@attr ref android.R.styleable\#View_foregroundGravity
  void setForegroundGravity1(int foregroundGravity) =>
      jniAccessors.callMethodWithArgs(reference, _id_setForegroundGravity1,
          jni.JniType.voidType, [foregroundGravity]).check();

  static final _id_generateDefaultLayoutParams1 = jniAccessors.getMethodIDOf(
      _classRef,
      "generateDefaultLayoutParams",
      "()Landroid/widget/FrameLayout\$LayoutParams;");

  /// from: protected android.widget.FrameLayout.LayoutParams generateDefaultLayoutParams()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a set of layout parameters with a width of
  /// android.view.ViewGroup.LayoutParams\#MATCH_PARENT,
  /// and a height of android.view.ViewGroup.LayoutParams\#MATCH_PARENT.
  FrameLayout_LayoutParams generateDefaultLayoutParams1() =>
      FrameLayout_LayoutParams.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_generateDefaultLayoutParams1,
          jni.JniType.objectType, []).object);

  static final _id_onMeasure1 =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure1(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure1,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_onLayout =
      jniAccessors.getMethodIDOf(_classRef, "onLayout", "(ZIIII)V");

  /// from: protected void onLayout(boolean changed, int left, int top, int right, int bottom)
  void onLayout(bool changed, int left, int top, int right, int bottom) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLayout,
          jni.JniType.voidType, [changed, left, top, right, bottom]).check();

  static final _id_setMeasureAllChildren =
      jniAccessors.getMethodIDOf(_classRef, "setMeasureAllChildren", "(Z)V");

  /// from: public void setMeasureAllChildren(boolean measureAll)
  ///
  /// Sets whether to consider all children, or just those in
  /// the VISIBLE or INVISIBLE state, when measuring. Defaults to false.
  ///@param measureAll true to consider children marked GONE, false otherwise.
  /// Default value is false.
  ///@attr ref android.R.styleable\#FrameLayout_measureAllChildren
  void setMeasureAllChildren(bool measureAll) =>
      jniAccessors.callMethodWithArgs(reference, _id_setMeasureAllChildren,
          jni.JniType.voidType, [measureAll]).check();

  static final _id_getConsiderGoneChildrenWhenMeasuring = jniAccessors
      .getMethodIDOf(_classRef, "getConsiderGoneChildrenWhenMeasuring", "()Z");

  /// from: public boolean getConsiderGoneChildrenWhenMeasuring()
  ///
  /// Determines whether all children, or just those in the VISIBLE or
  /// INVISIBLE state, are considered when measuring.
  ///@return Whether all children are considered when measuring.
  ///@deprecated This method is deprecated in favor of
  /// \#getMeasureAllChildren() getMeasureAllChildren(), which was
  /// renamed for consistency with
  /// \#setMeasureAllChildren(boolean) setMeasureAllChildren().
  bool getConsiderGoneChildrenWhenMeasuring() =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_getConsiderGoneChildrenWhenMeasuring,
          jni.JniType.booleanType, []).boolean;

  static final _id_getMeasureAllChildren =
      jniAccessors.getMethodIDOf(_classRef, "getMeasureAllChildren", "()Z");

  /// from: public boolean getMeasureAllChildren()
  ///
  /// Determines whether all children, or just those in the VISIBLE or
  /// INVISIBLE state, are considered when measuring.
  ///@return Whether all children are considered when measuring.
  bool getMeasureAllChildren() => jniAccessors.callMethodWithArgs(reference,
      _id_getMeasureAllChildren, jni.JniType.booleanType, []).boolean;

  static final _id_generateLayoutParams2 = jniAccessors.getMethodIDOf(
      _classRef,
      "generateLayoutParams",
      "(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout\$LayoutParams;");

  /// from: public android.widget.FrameLayout.LayoutParams generateLayoutParams(android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  FrameLayout_LayoutParams generateLayoutParams2(
          attributeset_.AttributeSet attrs) =>
      FrameLayout_LayoutParams.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_generateLayoutParams2,
          jni.JniType.objectType,
          [attrs.reference]).object);

  static final _id_shouldDelayChildPressedState = jniAccessors.getMethodIDOf(
      _classRef, "shouldDelayChildPressedState", "()Z");

  /// from: public boolean shouldDelayChildPressedState()
  bool shouldDelayChildPressedState() => jniAccessors.callMethodWithArgs(
      reference,
      _id_shouldDelayChildPressedState,
      jni.JniType.booleanType, []).boolean;

  static final _id_checkLayoutParams = jniAccessors.getMethodIDOf(_classRef,
      "checkLayoutParams", "(Landroid/view/ViewGroup\$LayoutParams;)Z");

  /// from: protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams p)
  bool checkLayoutParams(viewgroup_.ViewGroup_LayoutParams p) =>
      jniAccessors.callMethodWithArgs(reference, _id_checkLayoutParams,
          jni.JniType.booleanType, [p.reference]).boolean;

  static final _id_generateLayoutParams1 = jniAccessors.getMethodIDOf(
      _classRef,
      "generateLayoutParams",
      "(Landroid/view/ViewGroup\$LayoutParams;)Landroid/view/ViewGroup\$LayoutParams;");

  /// from: protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams lp)
  /// The returned object must be deleted after use, by calling the `delete` method.
  viewgroup_.ViewGroup_LayoutParams generateLayoutParams1(
          viewgroup_.ViewGroup_LayoutParams lp) =>
      viewgroup_.ViewGroup_LayoutParams.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_generateLayoutParams1,
          jni.JniType.objectType,
          [lp.reference]).object);

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);
}

/// from: android.widget.FrameLayout$LayoutParams
///
/// Per-child layout information for layouts that support margins.
/// See android.R.styleable\#FrameLayout_Layout FrameLayout Layout Attributes
/// for a list of all child view attributes that this class supports.
///@attr ref android.R.styleable\#FrameLayout_Layout_layout_gravity
class FrameLayout_LayoutParams extends viewgroup_.ViewGroup_MarginLayoutParams {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/FrameLayout\$LayoutParams");
  FrameLayout_LayoutParams.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int UNSPECIFIED_GRAVITY
  ///
  /// Value for \#gravity indicating that a gravity has not been
  /// explicitly specified.
  static const UNSPECIFIED_GRAVITY = -1;

  static final _id_gravity =
      jniAccessors.getFieldIDOf(_classRef, "gravity", "I");

  /// from: public int gravity
  ///
  /// The gravity to apply with the View to which these layout parameters
  /// are associated.
  ///
  /// The default value is \#UNSPECIFIED_GRAVITY, which is treated
  /// by FrameLayout as {@code Gravity.TOP | Gravity.START}.
  ///@see android.view.Gravity
  ///@attr ref android.R.styleable\#FrameLayout_Layout_layout_gravity
  int get gravity => jniAccessors
      .getField(reference, _id_gravity, jni.JniType.intType)
      .integer;

  /// from: public int gravity
  ///
  /// The gravity to apply with the View to which these layout parameters
  /// are associated.
  ///
  /// The default value is \#UNSPECIFIED_GRAVITY, which is treated
  /// by FrameLayout as {@code Gravity.TOP | Gravity.START}.
  ///@see android.view.Gravity
  ///@attr ref android.R.styleable\#FrameLayout_Layout_layout_gravity
  set gravity(int value) => jniEnv.SetIntField(reference, _id_gravity, value);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context c, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param c This value must never be {@code null}.
  ///@param attrs This value may be {@code null}.
  FrameLayout_LayoutParams(context_.Context c, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [c.reference, attrs.reference]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int width, int height)
  /// The returned object must be deleted after use, by calling the `delete` method.
  FrameLayout_LayoutParams.ctor1(int width, int height)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [width, height]).object);

  static final _id_ctor4 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(III)V");

  /// from: public void <init>(int width, int height, int gravity)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new set of layout parameters with the specified width, height
  /// and weight.
  ///@param width the width, either \#MATCH_PARENT,
  ///              \#WRAP_CONTENT or a fixed size in pixels
  ///@param height the height, either \#MATCH_PARENT,
  ///               \#WRAP_CONTENT or a fixed size in pixels
  ///@param gravity the gravity
  ///@see android.view.Gravity
  FrameLayout_LayoutParams.ctor4(int width, int height, int gravity)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [width, height, gravity]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/ViewGroup\$LayoutParams;)V");

  /// from: public void <init>(android.view.ViewGroup.LayoutParams source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param source This value must never be {@code null}.
  FrameLayout_LayoutParams.ctor2(viewgroup_.ViewGroup_LayoutParams source)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [source.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/ViewGroup\$MarginLayoutParams;)V");

  /// from: public void <init>(android.view.ViewGroup.MarginLayoutParams source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param source This value must never be {@code null}.
  FrameLayout_LayoutParams.ctor3(viewgroup_.ViewGroup_MarginLayoutParams source)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [source.reference]).object);

  static final _id_ctor5 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/widget/FrameLayout\$LayoutParams;)V");

  /// from: public void <init>(android.widget.FrameLayout.LayoutParams source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Copy constructor. Clones the width, height, margin values, and
  /// gravity of the source.
  ///@param source The layout params to copy from.
  ///
  /// This value must never be {@code null}.
  FrameLayout_LayoutParams.ctor5(FrameLayout_LayoutParams source)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor5, [source.reference]).object);
}
