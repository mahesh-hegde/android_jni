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

import "ImageButton.dart" as imagebutton_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../view/MotionEvent.dart" as motionevent_;

import "../view/View.dart" as view_;

import "../view/KeyEvent.dart" as keyevent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.ZoomButton
///
/// This widget provides a simple utility for turning a continued long-press event
/// into a series of clicks at some set frequency. There is no actual 'zoom' functionality
/// handled by this widget directly. Instead, clients of this API should set up an
/// View\#setOnClickListener(OnClickListener) onClickListener to handle
/// zoom functionality. That click listener is called on a frequency
/// determined by \#setZoomSpeed(long) whenever the user long-presses
/// on the ZoomButton.
///@deprecated Use other means to handle this functionality. This widget is merely a
/// simple wrapper around a long-press handler.
class ZoomButton extends imagebutton_.ImageButton {
  static final _classRef = jniAccessors.getClassOf("android/widget/ZoomButton");
  ZoomButton.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ZoomButton(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ZoomButton.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ZoomButton.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ZoomButton.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_onTouchEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "onTouchEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onTouchEvent(android.view.MotionEvent event)
  bool onTouchEvent1(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTouchEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_setZoomSpeed =
      jniAccessors.getMethodIDOf(_classRef, "setZoomSpeed", "(J)V");

  /// from: public void setZoomSpeed(long speed)
  ///
  /// Sets the delay between calls to the widget's View\#setOnClickListener(OnClickListener) onClickListener.
  ///@param speed The delay between calls to the click listener, in milliseconds
  void setZoomSpeed(int speed) => jniAccessors.callMethodWithArgs(
      reference, _id_setZoomSpeed, jni.JniType.voidType, [speed]).check();

  static final _id_onLongClick = jniAccessors.getMethodIDOf(
      _classRef, "onLongClick", "(Landroid/view/View;)Z");

  /// from: public boolean onLongClick(android.view.View v)
  bool onLongClick(view_.View v) => jniAccessors.callMethodWithArgs(reference,
      _id_onLongClick, jni.JniType.booleanType, [v.reference]).boolean;

  static final _id_onKeyUp1 = jniAccessors.getMethodIDOf(
      _classRef, "onKeyUp", "(ILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyUp(int keyCode, android.view.KeyEvent event)
  bool onKeyUp1(int keyCode, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onKeyUp1,
          jni.JniType.booleanType, [keyCode, event.reference]).boolean;

  static final _id_setEnabled1 =
      jniAccessors.getMethodIDOf(_classRef, "setEnabled", "(Z)V");

  /// from: public void setEnabled(boolean enabled)
  void setEnabled1(bool enabled) => jniAccessors.callMethodWithArgs(
      reference, _id_setEnabled1, jni.JniType.voidType, [enabled]).check();

  static final _id_dispatchUnhandledMove1 = jniAccessors.getMethodIDOf(
      _classRef, "dispatchUnhandledMove", "(Landroid/view/View;I)Z");

  /// from: public boolean dispatchUnhandledMove(android.view.View focused, int direction)
  bool dispatchUnhandledMove1(view_.View focused, int direction) =>
      jniAccessors.callMethodWithArgs(reference, _id_dispatchUnhandledMove1,
          jni.JniType.booleanType, [focused.reference, direction]).boolean;

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);
}
