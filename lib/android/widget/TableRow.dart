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

import "LinearLayout.dart" as linearlayout_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../view/ViewGroup.dart" as viewgroup_;

import "../view/View.dart" as view_;

import "../content/res/TypedArray.dart" as typedarray_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.TableRow
///
/// A layout that arranges its children horizontally. A TableRow should
/// always be used as a child of a android.widget.TableLayout. If a
/// TableRow's parent is not a TableLayout, the TableRow will behave as
/// an horizontal android.widget.LinearLayout.
///
///
/// The children of a TableRow do not need to specify the
/// <code>layout_width</code> and <code>layout_height</code> attributes in the
/// XML file. TableRow always enforces those values to be respectively
/// android.widget.TableLayout.LayoutParams\#MATCH_PARENT and
/// android.widget.TableLayout.LayoutParams\#WRAP_CONTENT.
///
///
///
/// Also see TableRow.LayoutParams android.widget.TableRow.LayoutParams
/// for layout attributes
///
class TableRow extends linearlayout_.LinearLayout {
  static final _classRef = jniAccessors.getClassOf("android/widget/TableRow");
  TableRow.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new TableRow for the given context.
  ///
  ///@param context the application environment
  TableRow(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new TableRow for the given context and with the
  /// specified set attributes.
  ///
  ///@param context the application environment
  ///@param attrs a collection of attributes
  TableRow.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_setOnHierarchyChangeListener1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnHierarchyChangeListener",
      "(Landroid/view/ViewGroup\$OnHierarchyChangeListener;)V");

  /// from: public void setOnHierarchyChangeListener(android.view.ViewGroup.OnHierarchyChangeListener listener)
  ///
  /// {@inheritDoc}
  void setOnHierarchyChangeListener1(
          viewgroup_.ViewGroup_OnHierarchyChangeListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setOnHierarchyChangeListener1,
          jni.JniType.voidType,
          [listener.reference]).check();

  static final _id_onMeasure1 =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  ///
  /// {@inheritDoc}
  void onMeasure1(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure1,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_onLayout =
      jniAccessors.getMethodIDOf(_classRef, "onLayout", "(ZIIII)V");

  /// from: protected void onLayout(boolean changed, int l, int t, int r, int b)
  ///
  /// {@inheritDoc}
  void onLayout(bool changed, int l, int t, int r, int b) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLayout,
          jni.JniType.voidType, [changed, l, t, r, b]).check();

  static final _id_getVirtualChildAt = jniAccessors.getMethodIDOf(
      _classRef, "getVirtualChildAt", "(I)Landroid/view/View;");

  /// from: public android.view.View getVirtualChildAt(int i)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  view_.View getVirtualChildAt(int i) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getVirtualChildAt, jni.JniType.objectType, [i]).object);

  static final _id_getVirtualChildCount =
      jniAccessors.getMethodIDOf(_classRef, "getVirtualChildCount", "()I");

  /// from: public int getVirtualChildCount()
  ///
  /// {@inheritDoc}
  int getVirtualChildCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getVirtualChildCount, jni.JniType.intType, []).integer;

  static final _id_generateLayoutParams4 = jniAccessors.getMethodIDOf(
      _classRef,
      "generateLayoutParams",
      "(Landroid/util/AttributeSet;)Landroid/widget/TableRow\$LayoutParams;");

  /// from: public android.widget.TableRow.LayoutParams generateLayoutParams(android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  TableRow_LayoutParams generateLayoutParams4(
          attributeset_.AttributeSet attrs) =>
      TableRow_LayoutParams.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_generateLayoutParams4,
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
  /// android.view.ViewGroup.LayoutParams\#MATCH_PARENT,
  /// a height of android.view.ViewGroup.LayoutParams\#WRAP_CONTENT and no spanning.
  linearlayout_.LinearLayout_LayoutParams generateDefaultLayoutParams1() =>
      linearlayout_.LinearLayout_LayoutParams.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_generateDefaultLayoutParams1,
              jni.JniType.objectType, []).object);

  static final _id_checkLayoutParams = jniAccessors.getMethodIDOf(_classRef,
      "checkLayoutParams", "(Landroid/view/ViewGroup\$LayoutParams;)Z");

  /// from: protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams p)
  ///
  /// {@inheritDoc}
  bool checkLayoutParams(viewgroup_.ViewGroup_LayoutParams p) =>
      jniAccessors.callMethodWithArgs(reference, _id_checkLayoutParams,
          jni.JniType.booleanType, [p.reference]).boolean;

  static final _id_generateLayoutParams3 = jniAccessors.getMethodIDOf(
      _classRef,
      "generateLayoutParams",
      "(Landroid/view/ViewGroup\$LayoutParams;)Landroid/widget/LinearLayout\$LayoutParams;");

  /// from: protected android.widget.LinearLayout.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams p)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  linearlayout_.LinearLayout_LayoutParams generateLayoutParams3(
          viewgroup_.ViewGroup_LayoutParams p) =>
      linearlayout_.LinearLayout_LayoutParams.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_generateLayoutParams3,
              jni.JniType.objectType, [p.reference]).object);

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);
}

/// from: android.widget.TableRow$LayoutParams
///
/// Set of layout parameters used in table rows.
///
///@see android.widget.TableLayout.LayoutParams
///@attr ref android.R.styleable\#TableRow_Cell_layout_column
///@attr ref android.R.styleable\#TableRow_Cell_layout_span
class TableRow_LayoutParams extends linearlayout_.LinearLayout_LayoutParams {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/TableRow\$LayoutParams");
  TableRow_LayoutParams.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_column = jniAccessors.getFieldIDOf(_classRef, "column", "I");

  /// from: public int column
  ///
  /// The column index of the cell represented by the widget.
  ///
  int get column =>
      jniAccessors.getField(reference, _id_column, jni.JniType.intType).integer;

  /// from: public int column
  ///
  /// The column index of the cell represented by the widget.
  ///
  set column(int value) => jniEnv.SetIntField(reference, _id_column, value);

  static final _id_span = jniAccessors.getFieldIDOf(_classRef, "span", "I");

  /// from: public int span
  ///
  /// The number of columns the widgets spans over.
  ///
  int get span =>
      jniAccessors.getField(reference, _id_span, jni.JniType.intType).integer;

  /// from: public int span
  ///
  /// The number of columns the widgets spans over.
  ///
  set span(int value) => jniEnv.SetIntField(reference, _id_span, value);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context c, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  TableRow_LayoutParams(context_.Context c, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [c.reference, attrs.reference]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int w, int h)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the child width and the child height.
  ///
  ///@param w the desired width
  ///@param h the desired height
  TableRow_LayoutParams.ctor1(int w, int h)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [w, h]).object);

  static final _id_ctor4 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(IIF)V");

  /// from: public void <init>(int w, int h, float initWeight)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the child width, height and weight.
  ///
  ///@param w the desired width
  ///@param h the desired height
  ///@param initWeight the desired weight
  TableRow_LayoutParams.ctor4(int w, int h, double initWeight)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [w, h, initWeight]).object);

  static final _id_ctor6 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the child width to android.view.ViewGroup.LayoutParams
  /// and the child height to
  /// android.view.ViewGroup.LayoutParams\#WRAP_CONTENT.
  ///
  TableRow_LayoutParams.ctor6()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor6, []).object);

  static final _id_ctor7 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int column)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Puts the view in the specified column.
  ///
  ///
  /// Sets the child width to android.view.ViewGroup.LayoutParams\#MATCH_PARENT
  /// and the child height to
  /// android.view.ViewGroup.LayoutParams\#WRAP_CONTENT.
  ///
  ///@param column the column index for the view
  TableRow_LayoutParams.ctor7(int column)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor7, [column]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/ViewGroup\$LayoutParams;)V");

  /// from: public void <init>(android.view.ViewGroup.LayoutParams p)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  TableRow_LayoutParams.ctor2(viewgroup_.ViewGroup_LayoutParams p)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [p.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/ViewGroup\$MarginLayoutParams;)V");

  /// from: public void <init>(android.view.ViewGroup.MarginLayoutParams source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  TableRow_LayoutParams.ctor3(viewgroup_.ViewGroup_MarginLayoutParams source)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [source.reference]).object);

  static final _id_setBaseAttributes1 = jniAccessors.getMethodIDOf(
      _classRef, "setBaseAttributes", "(Landroid/content/res/TypedArray;II)V");

  /// from: protected void setBaseAttributes(android.content.res.TypedArray a, int widthAttr, int heightAttr)
  void setBaseAttributes1(
          typedarray_.TypedArray a, int widthAttr, int heightAttr) =>
      jniAccessors.callMethodWithArgs(reference, _id_setBaseAttributes1,
          jni.JniType.voidType, [a.reference, widthAttr, heightAttr]).check();
}
