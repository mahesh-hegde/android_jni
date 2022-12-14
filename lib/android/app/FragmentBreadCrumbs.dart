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

import "Activity.dart" as activity_;

import "../view/View.dart" as view_;

import "FragmentManager.dart" as fragmentmanager_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.FragmentBreadCrumbs
///
/// Helper class for showing "bread crumbs" representing the fragment
/// stack in an activity.  This is intended to be used with
/// ActionBar\#setCustomView(View) ActionBar.setCustomView(View) to place the bread crumbs in
/// the action bar.
///
/// The default style for this view is
/// android.R.style\#Widget_FragmentBreadCrumbs.
///@deprecated This widget is no longer supported.
class FragmentBreadCrumbs extends viewgroup_.ViewGroup {
  static final _classRef =
      jniAccessors.getClassOf("android/app/FragmentBreadCrumbs");
  FragmentBreadCrumbs.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  FragmentBreadCrumbs(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  FragmentBreadCrumbs.ctor1(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  FragmentBreadCrumbs.ctor2(context_.Context context,
      attributeset_.AttributeSet attrs, int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_setActivity = jniAccessors.getMethodIDOf(
      _classRef, "setActivity", "(Landroid/app/Activity;)V");

  /// from: public void setActivity(android.app.Activity a)
  ///
  /// Attach the bread crumbs to their activity.  This must be called once
  /// when creating the bread crumbs.
  void setActivity(activity_.Activity a) => jniAccessors.callMethodWithArgs(
      reference, _id_setActivity, jni.JniType.voidType, [a.reference]).check();

  static final _id_setMaxVisible =
      jniAccessors.getMethodIDOf(_classRef, "setMaxVisible", "(I)V");

  /// from: public void setMaxVisible(int visibleCrumbs)
  ///
  /// The maximum number of breadcrumbs to show. Older fragment headers will be hidden from view.
  ///@param visibleCrumbs the number of visible breadcrumbs. This should be greater than zero.
  void setMaxVisible(int visibleCrumbs) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setMaxVisible,
      jni.JniType.voidType,
      [visibleCrumbs]).check();

  static final _id_setParentTitle = jniAccessors.getMethodIDOf(
      _classRef,
      "setParentTitle",
      "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View\$OnClickListener;)V");

  /// from: public void setParentTitle(java.lang.CharSequence title, java.lang.CharSequence shortTitle, android.view.View.OnClickListener listener)
  ///
  /// Inserts an optional parent entry at the first position in the breadcrumbs. Selecting this
  /// entry will result in a call to the specified listener's
  /// android.view.View.OnClickListener\#onClick(View)
  /// method.
  ///@param title the title for the parent entry
  ///@param shortTitle the short title for the parent entry
  ///@param listener the android.view.View.OnClickListener to be called when clicked.
  /// A null will result in no action being taken when the parent entry is clicked.
  void setParentTitle(jni.JniObject title, jni.JniObject shortTitle,
          view_.View_OnClickListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setParentTitle,
          jni.JniType.voidType,
          [title.reference, shortTitle.reference, listener.reference]).check();

  static final _id_setOnBreadCrumbClickListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnBreadCrumbClickListener",
      "(Landroid/app/FragmentBreadCrumbs\$OnBreadCrumbClickListener;)V");

  /// from: public void setOnBreadCrumbClickListener(android.app.FragmentBreadCrumbs.OnBreadCrumbClickListener listener)
  ///
  /// Sets a listener for clicks on the bread crumbs.  This will be called before
  /// the default click action is performed.
  ///@param listener The new listener to set.  Replaces any existing listener.
  void setOnBreadCrumbClickListener(
          FragmentBreadCrumbs_OnBreadCrumbClickListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setOnBreadCrumbClickListener,
          jni.JniType.voidType,
          [listener.reference]).check();

  static final _id_setTitle = jniAccessors.getMethodIDOf(_classRef, "setTitle",
      "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V");

  /// from: public void setTitle(java.lang.CharSequence title, java.lang.CharSequence shortTitle)
  ///
  /// Set a custom title for the bread crumbs.  This will be the first entry
  /// shown at the left, representing the root of the bread crumbs.  If the
  /// title is null, it will not be shown.
  void setTitle(jni.JniObject title, jni.JniObject shortTitle) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setTitle,
          jni.JniType.voidType,
          [title.reference, shortTitle.reference]).check();

  static final _id_onLayout =
      jniAccessors.getMethodIDOf(_classRef, "onLayout", "(ZIIII)V");

  /// from: protected void onLayout(boolean changed, int l, int t, int r, int b)
  void onLayout(bool changed, int l, int t, int r, int b) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLayout,
          jni.JniType.voidType, [changed, l, t, r, b]).check();

  static final _id_onMeasure1 =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure1(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure1,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_onBackStackChanged =
      jniAccessors.getMethodIDOf(_classRef, "onBackStackChanged", "()V");

  /// from: public void onBackStackChanged()
  void onBackStackChanged() => jniAccessors.callMethodWithArgs(
      reference, _id_onBackStackChanged, jni.JniType.voidType, []).check();
}

/// from: android.app.FragmentBreadCrumbs$OnBreadCrumbClickListener
///
/// Interface to intercept clicks on the bread crumbs.
///@deprecated This widget is no longer supported.
class FragmentBreadCrumbs_OnBreadCrumbClickListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/app/FragmentBreadCrumbs\$OnBreadCrumbClickListener");
  FragmentBreadCrumbs_OnBreadCrumbClickListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onBreadCrumbClick = jniAccessors.getMethodIDOf(_classRef,
      "onBreadCrumbClick", "(Landroid/app/FragmentManager\$BackStackEntry;I)Z");

  /// from: public abstract boolean onBreadCrumbClick(android.app.FragmentManager.BackStackEntry backStack, int flags)
  ///
  /// Called when a bread crumb is clicked.
  ///@param backStack The BackStackEntry whose bread crumb was clicked.
  /// May be null, if this bread crumb is for the root of the back stack.
  ///@param flags Additional information about the entry.  Currently
  /// always 0.
  ///@return Return true to consume this click.  Return to false to allow
  /// the default action (popping back stack to this entry) to occur.
  bool onBreadCrumbClick(
          fragmentmanager_.FragmentManager_BackStackEntry backStack,
          int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_onBreadCrumbClick,
          jni.JniType.booleanType, [backStack.reference, flags]).boolean;
}
