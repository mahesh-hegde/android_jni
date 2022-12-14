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

import "ViewAnimator.dart" as viewanimator_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../view/View.dart" as view_;

import "../view/ViewGroup.dart" as viewgroup_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.ViewSwitcher
///
/// ViewAnimator that switches between two views, and has a factory
/// from which these views are created.  You can either use the factory to
/// create the views, or add them yourself.  A ViewSwitcher can only have two
/// child views, of which only one is shown at a time.
class ViewSwitcher extends viewanimator_.ViewAnimator {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/ViewSwitcher");
  ViewSwitcher.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new empty ViewSwitcher.
  ///@param context the application's environment
  ViewSwitcher(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new empty ViewSwitcher for the given context and with the
  /// specified set attributes.
  ///@param context the application environment
  ///@param attrs a collection of attributes
  ViewSwitcher.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_addView5 = jniAccessors.getMethodIDOf(_classRef, "addView",
      "(Landroid/view/View;ILandroid/view/ViewGroup\$LayoutParams;)V");

  /// from: public void addView(android.view.View child, int index, android.view.ViewGroup.LayoutParams params)
  ///
  /// {@inheritDoc}
  ///@throws IllegalStateException if this switcher already contains two children
  void addView5(view_.View child, int index,
          viewgroup_.ViewGroup_LayoutParams params) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addView5,
          jni.JniType.voidType,
          [child.reference, index, params.reference]).check();

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);

  static final _id_getNextView = jniAccessors.getMethodIDOf(
      _classRef, "getNextView", "()Landroid/view/View;");

  /// from: public android.view.View getNextView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the next view to be displayed.
  ///@return the view that will be displayed after the next views flip.
  view_.View getNextView() =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getNextView, jni.JniType.objectType, []).object);

  static final _id_setFactory = jniAccessors.getMethodIDOf(
      _classRef, "setFactory", "(Landroid/widget/ViewSwitcher\$ViewFactory;)V");

  /// from: public void setFactory(android.widget.ViewSwitcher.ViewFactory factory)
  ///
  /// Sets the factory used to create the two views between which the
  /// ViewSwitcher will flip. Instead of using a factory, you can call
  /// \#addView(android.view.View, int, android.view.ViewGroup.LayoutParams)
  /// twice.
  ///@param factory the view factory used to generate the switcher's content
  void setFactory(ViewSwitcher_ViewFactory factory0) =>
      jniAccessors.callMethodWithArgs(reference, _id_setFactory,
          jni.JniType.voidType, [factory0.reference]).check();

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, "reset", "()V");

  /// from: public void reset()
  ///
  /// Reset the ViewSwitcher to hide all of the existing views and to make it
  /// think that the first time animation has not yet played.
  void reset() => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniType.voidType, []).check();
}

/// from: android.widget.ViewSwitcher$ViewFactory
///
/// Creates views in a ViewSwitcher.
class ViewSwitcher_ViewFactory extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/ViewSwitcher\$ViewFactory");
  ViewSwitcher_ViewFactory.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_makeView = jniAccessors.getMethodIDOf(
      _classRef, "makeView", "()Landroid/view/View;");

  /// from: public abstract android.view.View makeView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new android.view.View to be added in a
  /// android.widget.ViewSwitcher.
  ///@return a android.view.View
  view_.View makeView() => view_.View.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_makeView, jni.JniType.objectType, []).object);
}
