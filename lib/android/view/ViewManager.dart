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

import "View.dart" as view_;

import "ViewGroup.dart" as viewgroup_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.ViewManager
///
/// Interface to let you add and remove child views to an Activity. To get an instance
/// of this class, call android.content.Context\#getSystemService(java.lang.String) Context.getSystemService().
class ViewManager extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/view/ViewManager");
  ViewManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_addView = jniAccessors.getMethodIDOf(_classRef, "addView",
      "(Landroid/view/View;Landroid/view/ViewGroup\$LayoutParams;)V");

  /// from: public abstract void addView(android.view.View view, android.view.ViewGroup.LayoutParams params)
  ///
  /// Assign the passed LayoutParams to the passed View and add the view to the window.
  /// Throws android.view.WindowManager.BadTokenException for certain programming
  /// errors, such as adding a second view to a window without removing the first view.
  /// Throws android.view.WindowManager.InvalidDisplayException if the window is on a
  /// secondary Display and the specified display can't be found
  /// (see android.app.Presentation).
  ///@param view The view to be added to this window.
  ///@param params The LayoutParams to assign to view.
  void addView(view_.View view, viewgroup_.ViewGroup_LayoutParams params) =>
      jniAccessors.callMethodWithArgs(reference, _id_addView,
          jni.JniType.voidType, [view.reference, params.reference]).check();

  static final _id_updateViewLayout = jniAccessors.getMethodIDOf(
      _classRef,
      "updateViewLayout",
      "(Landroid/view/View;Landroid/view/ViewGroup\$LayoutParams;)V");

  /// from: public abstract void updateViewLayout(android.view.View view, android.view.ViewGroup.LayoutParams params)
  void updateViewLayout(
          view_.View view, viewgroup_.ViewGroup_LayoutParams params) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateViewLayout,
          jni.JniType.voidType, [view.reference, params.reference]).check();

  static final _id_removeView = jniAccessors.getMethodIDOf(
      _classRef, "removeView", "(Landroid/view/View;)V");

  /// from: public abstract void removeView(android.view.View view)
  void removeView(view_.View view) => jniAccessors.callMethodWithArgs(reference,
      _id_removeView, jni.JniType.voidType, [view.reference]).check();
}
