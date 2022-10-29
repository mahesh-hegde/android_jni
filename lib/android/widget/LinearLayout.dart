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

import "../view/ViewGroup.dart" as viewgroup_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../graphics/drawable/Drawable.dart" as drawable_;

import "../graphics/Canvas.dart" as canvas_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.LinearLayout
///
/// A layout that arranges other views either horizontally in a single column
/// or vertically in a single row.
///
/// The following snippet shows how to include a linear layout in your layout XML file:
///
///
/// <pre>&lt;LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
///   android:layout_width="match_parent"
///   android:layout_height="match_parent"
///   android:paddingLeft="16dp"
///   android:paddingRight="16dp"
///   android:orientation="horizontal"
///   android:gravity="center"&gt;
///
///   &lt;!-- Include other widget or layout tags here. These are considered
///           "child views" or "children" of the linear layout --&gt;
///
/// &lt;/LinearLayout&gt;</pre>
///
/// Set android.R.styleable\#LinearLayout_orientation android:orientation to specify
/// whether child views are displayed in a row or column.
///
///
/// To control how linear layout aligns all the views it contains, set a value for
/// android.R.styleable\#LinearLayout_gravity android:gravity.  For example, the
/// snippet above sets android:gravity to "center".  The value you set affects
/// both horizontal and vertical alignment of all child views within the single row or column.
///
///
/// You can set
/// android.R.styleable\#LinearLayout_Layout_layout_weight android:layout_weight
/// on individual child views to specify how linear layout divides remaining space amongst
/// the views it contains. See the
/// <a href="https://developer.android.com/guide/topics/ui/layout/linear.html">Linear Layout</a>
/// guide for an example.
///
///
/// See
/// android.widget.LinearLayout.LayoutParams LinearLayout.LayoutParams
/// to learn about other attributes you can set on a child view to affect its
/// position and size in the containing linear layout.
///
///@attr ref android.R.styleable\#LinearLayout_baselineAligned
///@attr ref android.R.styleable\#LinearLayout_baselineAlignedChildIndex
///@attr ref android.R.styleable\#LinearLayout_gravity
///@attr ref android.R.styleable\#LinearLayout_measureWithLargestChild
///@attr ref android.R.styleable\#LinearLayout_orientation
///@attr ref android.R.styleable\#LinearLayout_weightSum
class LinearLayout extends viewgroup_.ViewGroup {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/LinearLayout");
  LinearLayout.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int HORIZONTAL
  static const HORIZONTAL = 0;

  /// from: static public final int SHOW_DIVIDER_BEGINNING
  ///
  /// Show a divider at the beginning of the group.
  static const SHOW_DIVIDER_BEGINNING = 1;

  /// from: static public final int SHOW_DIVIDER_END
  ///
  /// Show a divider at the end of the group.
  static const SHOW_DIVIDER_END = 4;

  /// from: static public final int SHOW_DIVIDER_MIDDLE
  ///
  /// Show dividers between each item in the group.
  static const SHOW_DIVIDER_MIDDLE = 2;

  /// from: static public final int SHOW_DIVIDER_NONE
  ///
  /// Don't show any dividers.
  static const SHOW_DIVIDER_NONE = 0;

  /// from: static public final int VERTICAL
  static const VERTICAL = 1;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  LinearLayout(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param attrs This value may be {@code null}.
  LinearLayout.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param attrs This value may be {@code null}.
  LinearLayout.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  LinearLayout.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_setShowDividers =
      jniAccessors.getMethodIDOf(_classRef, "setShowDividers", "(I)V");

  /// from: public void setShowDividers(int showDividers)
  ///
  /// Set how dividers should be shown between items in this layout
  ///@param showDividers One or more of \#SHOW_DIVIDER_BEGINNING,
  ///                     \#SHOW_DIVIDER_MIDDLE, or \#SHOW_DIVIDER_END
  ///                     to show dividers, or \#SHOW_DIVIDER_NONE to show no dividers.
  ///
  /// Value is either <code>0</code> or a combination of android.widget.LinearLayout\#SHOW_DIVIDER_NONE, android.widget.LinearLayout\#SHOW_DIVIDER_BEGINNING, android.widget.LinearLayout\#SHOW_DIVIDER_MIDDLE, and android.widget.LinearLayout\#SHOW_DIVIDER_END
  void setShowDividers(int showDividers) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setShowDividers,
      jni.JniType.voidType,
      [showDividers]).check();

  static final _id_shouldDelayChildPressedState = jniAccessors.getMethodIDOf(
      _classRef, "shouldDelayChildPressedState", "()Z");

  /// from: public boolean shouldDelayChildPressedState()
  bool shouldDelayChildPressedState() => jniAccessors.callMethodWithArgs(
      reference,
      _id_shouldDelayChildPressedState,
      jni.JniType.booleanType, []).boolean;

  static final _id_getShowDividers =
      jniAccessors.getMethodIDOf(_classRef, "getShowDividers", "()I");

  /// from: public int getShowDividers()
  ///
  /// @return A flag set indicating how dividers should be shown around items.
  /// Value is either <code>0</code> or a combination of android.widget.LinearLayout\#SHOW_DIVIDER_NONE, android.widget.LinearLayout\#SHOW_DIVIDER_BEGINNING, android.widget.LinearLayout\#SHOW_DIVIDER_MIDDLE, and android.widget.LinearLayout\#SHOW_DIVIDER_END
  ///@see \#setShowDividers(int)
  int getShowDividers() => jniAccessors.callMethodWithArgs(
      reference, _id_getShowDividers, jni.JniType.intType, []).integer;

  static final _id_getDividerDrawable = jniAccessors.getMethodIDOf(_classRef,
      "getDividerDrawable", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getDividerDrawable()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the divider Drawable that will divide each item.
  ///@see \#setDividerDrawable(Drawable)
  ///@attr ref android.R.styleable\#LinearLayout_divider
  drawable_.Drawable getDividerDrawable() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getDividerDrawable, jni.JniType.objectType, []).object);

  static final _id_setDividerDrawable = jniAccessors.getMethodIDOf(_classRef,
      "setDividerDrawable", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setDividerDrawable(android.graphics.drawable.Drawable divider)
  ///
  /// Set a drawable to be used as a divider between items.
  ///@param divider Drawable that will divide each item.
  ///@see \#setShowDividers(int)
  ///@attr ref android.R.styleable\#LinearLayout_divider
  void setDividerDrawable(drawable_.Drawable divider) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDividerDrawable,
          jni.JniType.voidType, [divider.reference]).check();

  static final _id_setDividerPadding =
      jniAccessors.getMethodIDOf(_classRef, "setDividerPadding", "(I)V");

  /// from: public void setDividerPadding(int padding)
  ///
  /// Set padding displayed on both ends of dividers. For a vertical layout, the padding is applied
  /// to left and right end of dividers. For a horizontal layout, the padding is applied to top and
  /// bottom end of dividers.
  ///@param padding Padding value in pixels that will be applied to each end
  ///@see \#setShowDividers(int)
  ///@see \#setDividerDrawable(Drawable)
  ///@see \#getDividerPadding()
  void setDividerPadding(int padding) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setDividerPadding,
      jni.JniType.voidType,
      [padding]).check();

  static final _id_getDividerPadding =
      jniAccessors.getMethodIDOf(_classRef, "getDividerPadding", "()I");

  /// from: public int getDividerPadding()
  ///
  /// Get the padding size used to inset dividers in pixels
  ///@see \#setShowDividers(int)
  ///@see \#setDividerDrawable(Drawable)
  ///@see \#setDividerPadding(int)
  int getDividerPadding() => jniAccessors.callMethodWithArgs(
      reference, _id_getDividerPadding, jni.JniType.intType, []).integer;

  static final _id_onDraw1 = jniAccessors.getMethodIDOf(
      _classRef, "onDraw", "(Landroid/graphics/Canvas;)V");

  /// from: protected void onDraw(android.graphics.Canvas canvas)
  void onDraw1(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference, _id_onDraw1, jni.JniType.voidType, [canvas.reference]).check();

  static final _id_isBaselineAligned =
      jniAccessors.getMethodIDOf(_classRef, "isBaselineAligned", "()Z");

  /// from: public boolean isBaselineAligned()
  ///
  /// Indicates whether widgets contained within this layout are aligned
  /// on their baseline or not.
  ///
  ///@return true when widgets are baseline-aligned, false otherwise
  bool isBaselineAligned() => jniAccessors.callMethodWithArgs(
      reference, _id_isBaselineAligned, jni.JniType.booleanType, []).boolean;

  static final _id_setBaselineAligned =
      jniAccessors.getMethodIDOf(_classRef, "setBaselineAligned", "(Z)V");

  /// from: public void setBaselineAligned(boolean baselineAligned)
  ///
  /// Defines whether widgets contained in this layout are
  /// baseline-aligned or not.
  ///
  ///@param baselineAligned true to align widgets on their baseline,
  ///         false otherwise
  ///@attr ref android.R.styleable\#LinearLayout_baselineAligned
  void setBaselineAligned(bool baselineAligned) =>
      jniAccessors.callMethodWithArgs(reference, _id_setBaselineAligned,
          jni.JniType.voidType, [baselineAligned]).check();

  static final _id_isMeasureWithLargestChildEnabled = jniAccessors
      .getMethodIDOf(_classRef, "isMeasureWithLargestChildEnabled", "()Z");

  /// from: public boolean isMeasureWithLargestChildEnabled()
  ///
  /// When true, all children with a weight will be considered having
  /// the minimum size of the largest child. If false, all children are
  /// measured normally.
  ///@return True to measure children with a weight using the minimum
  ///         size of the largest child, false otherwise.
  ///@attr ref android.R.styleable\#LinearLayout_measureWithLargestChild
  bool isMeasureWithLargestChildEnabled() => jniAccessors.callMethodWithArgs(
      reference,
      _id_isMeasureWithLargestChildEnabled,
      jni.JniType.booleanType, []).boolean;

  static final _id_setMeasureWithLargestChildEnabled = jniAccessors
      .getMethodIDOf(_classRef, "setMeasureWithLargestChildEnabled", "(Z)V");

  /// from: public void setMeasureWithLargestChildEnabled(boolean enabled)
  ///
  /// When set to true, all children with a weight will be considered having
  /// the minimum size of the largest child. If false, all children are
  /// measured normally.
  ///
  /// Disabled by default.
  ///@param enabled True to measure children with a weight using the
  ///        minimum size of the largest child, false otherwise.
  ///@attr ref android.R.styleable\#LinearLayout_measureWithLargestChild
  void setMeasureWithLargestChildEnabled(bool enabled) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setMeasureWithLargestChildEnabled,
          jni.JniType.voidType,
          [enabled]).check();

  static final _id_getBaseline1 =
      jniAccessors.getMethodIDOf(_classRef, "getBaseline", "()I");

  /// from: public int getBaseline()
  int getBaseline1() => jniAccessors.callMethodWithArgs(
      reference, _id_getBaseline1, jni.JniType.intType, []).integer;

  static final _id_getBaselineAlignedChildIndex = jniAccessors.getMethodIDOf(
      _classRef, "getBaselineAlignedChildIndex", "()I");

  /// from: public int getBaselineAlignedChildIndex()
  ///
  /// @return The index of the child that will be used if this layout is
  ///   part of a larger layout that is baseline aligned, or -1 if none has
  ///   been set.
  int getBaselineAlignedChildIndex() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getBaselineAlignedChildIndex,
      jni.JniType.intType, []).integer;

  static final _id_setBaselineAlignedChildIndex = jniAccessors.getMethodIDOf(
      _classRef, "setBaselineAlignedChildIndex", "(I)V");

  /// from: public void setBaselineAlignedChildIndex(int i)
  ///
  /// @param i The index of the child that will be used if this layout is
  ///          part of a larger layout that is baseline aligned.
  ///@attr ref android.R.styleable\#LinearLayout_baselineAlignedChildIndex
  void setBaselineAlignedChildIndex(int i) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setBaselineAlignedChildIndex,
      jni.JniType.voidType,
      [i]).check();

  static final _id_getWeightSum =
      jniAccessors.getMethodIDOf(_classRef, "getWeightSum", "()F");

  /// from: public float getWeightSum()
  ///
  /// Returns the desired weights sum.
  ///@return A number greater than 0.0f if the weight sum is defined, or
  ///         a number lower than or equals to 0.0f if not weight sum is
  ///         to be used.
  double getWeightSum() => jniAccessors.callMethodWithArgs(
      reference, _id_getWeightSum, jni.JniType.floatType, []).float;

  static final _id_setWeightSum =
      jniAccessors.getMethodIDOf(_classRef, "setWeightSum", "(F)V");

  /// from: public void setWeightSum(float weightSum)
  ///
  /// Defines the desired weights sum. If unspecified the weights sum is computed
  /// at layout time by adding the layout_weight of each child.
  ///
  /// This can be used for instance to give a single child 50% of the total
  /// available space by giving it a layout_weight of 0.5 and setting the
  /// weightSum to 1.0.
  ///@param weightSum a number greater than 0.0f, or a number lower than or equals
  ///        to 0.0f if the weight sum should be computed from the children's
  ///        layout_weight
  void setWeightSum(double weightSum) => jniAccessors.callMethodWithArgs(
      reference, _id_setWeightSum, jni.JniType.voidType, [weightSum]).check();

  static final _id_onMeasure1 =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure1(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure1,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_onLayout =
      jniAccessors.getMethodIDOf(_classRef, "onLayout", "(ZIIII)V");

  /// from: protected void onLayout(boolean changed, int l, int t, int r, int b)
  void onLayout(bool changed, int l, int t, int r, int b) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLayout,
          jni.JniType.voidType, [changed, l, t, r, b]).check();

  static final _id_onRtlPropertiesChanged1 =
      jniAccessors.getMethodIDOf(_classRef, "onRtlPropertiesChanged", "(I)V");

  /// from: public void onRtlPropertiesChanged(int layoutDirection)
  ///
  /// @param layoutDirection Value is android.view.View\#LAYOUT_DIRECTION_LTR, or android.view.View\#LAYOUT_DIRECTION_RTL
  void onRtlPropertiesChanged1(int layoutDirection) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRtlPropertiesChanged1,
          jni.JniType.voidType, [layoutDirection]).check();

  static final _id_setOrientation =
      jniAccessors.getMethodIDOf(_classRef, "setOrientation", "(I)V");

  /// from: public void setOrientation(int orientation)
  ///
  /// Should the layout be a column or a row.
  ///@param orientation Pass \#HORIZONTAL or \#VERTICAL. Default
  /// value is \#HORIZONTAL.
  ///
  /// Value is android.widget.LinearLayout\#HORIZONTAL, or android.widget.LinearLayout\#VERTICAL
  ///@attr ref android.R.styleable\#LinearLayout_orientation
  void setOrientation(int orientation) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setOrientation,
      jni.JniType.voidType,
      [orientation]).check();

  static final _id_getOrientation =
      jniAccessors.getMethodIDOf(_classRef, "getOrientation", "()I");

  /// from: public int getOrientation()
  ///
  /// Returns the current orientation.
  ///@return either \#HORIZONTAL or \#VERTICAL
  ///
  /// Value is android.widget.LinearLayout\#HORIZONTAL, or android.widget.LinearLayout\#VERTICAL
  int getOrientation() => jniAccessors.callMethodWithArgs(
      reference, _id_getOrientation, jni.JniType.intType, []).integer;

  static final _id_setGravity =
      jniAccessors.getMethodIDOf(_classRef, "setGravity", "(I)V");

  /// from: public void setGravity(int gravity)
  ///
  /// Describes how the child views are positioned. Defaults to GRAVITY_TOP. If
  /// this layout has a VERTICAL orientation, this controls where all the child
  /// views are placed if there is extra vertical space. If this layout has a
  /// HORIZONTAL orientation, this controls the alignment of the children.
  ///@param gravity See android.view.Gravity
  ///@attr ref android.R.styleable\#LinearLayout_gravity
  void setGravity(int gravity) => jniAccessors.callMethodWithArgs(
      reference, _id_setGravity, jni.JniType.voidType, [gravity]).check();

  static final _id_getGravity =
      jniAccessors.getMethodIDOf(_classRef, "getGravity", "()I");

  /// from: public int getGravity()
  ///
  /// Returns the current gravity. See android.view.Gravity
  ///@return the current gravity.
  ///@see \#setGravity
  int getGravity() => jniAccessors.callMethodWithArgs(
      reference, _id_getGravity, jni.JniType.intType, []).integer;

  static final _id_setHorizontalGravity =
      jniAccessors.getMethodIDOf(_classRef, "setHorizontalGravity", "(I)V");

  /// from: public void setHorizontalGravity(int horizontalGravity)
  void setHorizontalGravity(int horizontalGravity) =>
      jniAccessors.callMethodWithArgs(reference, _id_setHorizontalGravity,
          jni.JniType.voidType, [horizontalGravity]).check();

  static final _id_setVerticalGravity =
      jniAccessors.getMethodIDOf(_classRef, "setVerticalGravity", "(I)V");

  /// from: public void setVerticalGravity(int verticalGravity)
  void setVerticalGravity(int verticalGravity) =>
      jniAccessors.callMethodWithArgs(reference, _id_setVerticalGravity,
          jni.JniType.voidType, [verticalGravity]).check();

  static final _id_generateLayoutParams2 = jniAccessors.getMethodIDOf(
      _classRef,
      "generateLayoutParams",
      "(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout\$LayoutParams;");

  /// from: public android.widget.LinearLayout.LayoutParams generateLayoutParams(android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  LinearLayout_LayoutParams generateLayoutParams2(
          attributeset_.AttributeSet attrs) =>
      LinearLayout_LayoutParams.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_generateLayoutParams2,
          jni.JniType.objectType,
          [attrs.reference]).object);

  static final _id_generateDefaultLayoutParams1 = jniAccessors.getMethodIDOf(
      _classRef,
      "generateDefaultLayoutParams",
      "()Landroid/widget/LinearLayout\$LayoutParams;");

  /// from: protected android.widget.LinearLayout.LayoutParams generateDefaultLayoutParams()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a set of layout parameters with a width of
  /// android.view.ViewGroup.LayoutParams\#MATCH_PARENT
  /// and a height of android.view.ViewGroup.LayoutParams\#WRAP_CONTENT
  /// when the layout's orientation is \#VERTICAL. When the orientation is
  /// \#HORIZONTAL, the width is set to LayoutParams\#WRAP_CONTENT
  /// and the height to LayoutParams\#WRAP_CONTENT.
  LinearLayout_LayoutParams generateDefaultLayoutParams1() =>
      LinearLayout_LayoutParams.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_generateDefaultLayoutParams1,
          jni.JniType.objectType, []).object);

  static final _id_generateLayoutParams3 = jniAccessors.getMethodIDOf(
      _classRef,
      "generateLayoutParams",
      "(Landroid/view/ViewGroup\$LayoutParams;)Landroid/widget/LinearLayout\$LayoutParams;");

  /// from: protected android.widget.LinearLayout.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams lp)
  /// The returned object must be deleted after use, by calling the `delete` method.
  LinearLayout_LayoutParams generateLayoutParams3(
          viewgroup_.ViewGroup_LayoutParams lp) =>
      LinearLayout_LayoutParams.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_generateLayoutParams3,
          jni.JniType.objectType,
          [lp.reference]).object);

  static final _id_checkLayoutParams = jniAccessors.getMethodIDOf(_classRef,
      "checkLayoutParams", "(Landroid/view/ViewGroup\$LayoutParams;)Z");

  /// from: protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams p)
  bool checkLayoutParams(viewgroup_.ViewGroup_LayoutParams p) =>
      jniAccessors.callMethodWithArgs(reference, _id_checkLayoutParams,
          jni.JniType.booleanType, [p.reference]).boolean;

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);
}

/// from: android.widget.LinearLayout$LayoutParams
///
/// Per-child layout information associated with ViewLinearLayout.
///@attr ref android.R.styleable\#LinearLayout_Layout_layout_weight
///@attr ref android.R.styleable\#LinearLayout_Layout_layout_gravity
class LinearLayout_LayoutParams
    extends viewgroup_.ViewGroup_MarginLayoutParams {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/LinearLayout\$LayoutParams");
  LinearLayout_LayoutParams.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_gravity =
      jniAccessors.getFieldIDOf(_classRef, "gravity", "I");

  /// from: public int gravity
  ///
  /// Gravity for the view associated with these LayoutParams.
  ///@see android.view.Gravity
  int get gravity => jniAccessors
      .getField(reference, _id_gravity, jni.JniType.intType)
      .integer;

  /// from: public int gravity
  ///
  /// Gravity for the view associated with these LayoutParams.
  ///@see android.view.Gravity
  set gravity(int value) => jniEnv.SetIntField(reference, _id_gravity, value);

  static final _id_weight = jniAccessors.getFieldIDOf(_classRef, "weight", "F");

  /// from: public float weight
  ///
  /// Indicates how much of the extra space in the LinearLayout will be
  /// allocated to the view associated with these LayoutParams. Specify
  /// 0 if the view should not be stretched. Otherwise the extra pixels
  /// will be pro-rated among all views whose weight is greater than 0.
  double get weight =>
      jniAccessors.getField(reference, _id_weight, jni.JniType.floatType).float;

  /// from: public float weight
  ///
  /// Indicates how much of the extra space in the LinearLayout will be
  /// allocated to the view associated with these LayoutParams. Specify
  /// 0 if the view should not be stretched. Otherwise the extra pixels
  /// will be pro-rated among all views whose weight is greater than 0.
  set weight(double value) =>
      jniEnv.SetFloatField(reference, _id_weight, value);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context c, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  LinearLayout_LayoutParams(
      context_.Context c, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [c.reference, attrs.reference]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int width, int height)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  LinearLayout_LayoutParams.ctor1(int width, int height)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [width, height]).object);

  static final _id_ctor4 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(IIF)V");

  /// from: public void <init>(int width, int height, float weight)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new set of layout parameters with the specified width, height
  /// and weight.
  ///@param width the width, either \#MATCH_PARENT,
  ///        \#WRAP_CONTENT or a fixed size in pixels
  ///@param height the height, either \#MATCH_PARENT,
  ///        \#WRAP_CONTENT or a fixed size in pixels
  ///@param weight the weight
  LinearLayout_LayoutParams.ctor4(int width, int height, double weight)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [width, height, weight]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/ViewGroup\$LayoutParams;)V");

  /// from: public void <init>(android.view.ViewGroup.LayoutParams p)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  LinearLayout_LayoutParams.ctor2(viewgroup_.ViewGroup_LayoutParams p)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [p.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/ViewGroup\$MarginLayoutParams;)V");

  /// from: public void <init>(android.view.ViewGroup.MarginLayoutParams source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  LinearLayout_LayoutParams.ctor3(
      viewgroup_.ViewGroup_MarginLayoutParams source)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [source.reference]).object);

  static final _id_ctor5 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/widget/LinearLayout\$LayoutParams;)V");

  /// from: public void <init>(android.widget.LinearLayout.LayoutParams source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Copy constructor. Clones the width, height, margin values, weight,
  /// and gravity of the source.
  ///@param source The layout params to copy from.
  LinearLayout_LayoutParams.ctor5(LinearLayout_LayoutParams source)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor5, [source.reference]).object);

  static final _id_debug = jniAccessors.getMethodIDOf(
      _classRef, "debug", "(Ljava/lang/String;)Ljava/lang/String;");

  /// from: public java.lang.String debug(java.lang.String output)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString debug(jni.JniString output) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_debug, jni.JniType.objectType, [output.reference]).object);
}
