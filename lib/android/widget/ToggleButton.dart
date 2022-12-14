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

import "CompoundButton.dart" as compoundbutton_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../graphics/drawable/Drawable.dart" as drawable_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.ToggleButton
///
/// Displays checked/unchecked states as a button
/// with a "light" indicator and by default accompanied with the text "ON" or "OFF".
///
/// See the <a href="{@docRoot}guide/topics/ui/controls/togglebutton.html">Toggle Buttons</a>
/// guide.
///
///@attr ref android.R.styleable\#ToggleButton_textOn
///@attr ref android.R.styleable\#ToggleButton_textOff
///@attr ref android.R.styleable\#ToggleButton_disabledAlpha
class ToggleButton extends compoundbutton_.CompoundButton {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/ToggleButton");
  ToggleButton.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ToggleButton.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ToggleButton.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ToggleButton.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ToggleButton(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_setChecked =
      jniAccessors.getMethodIDOf(_classRef, "setChecked", "(Z)V");

  /// from: public void setChecked(boolean checked)
  void setChecked(bool checked) => jniAccessors.callMethodWithArgs(
      reference, _id_setChecked, jni.JniType.voidType, [checked]).check();

  static final _id_getTextOn = jniAccessors.getMethodIDOf(
      _classRef, "getTextOn", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getTextOn()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the text for when the button is in the checked state.
  ///@return The text.
  jni.JniObject getTextOn() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTextOn, jni.JniType.objectType, []).object);

  static final _id_setTextOn = jniAccessors.getMethodIDOf(
      _classRef, "setTextOn", "(Ljava/lang/CharSequence;)V");

  /// from: public void setTextOn(java.lang.CharSequence textOn)
  ///
  /// Sets the text for when the button is in the checked state.
  ///@param textOn The text.
  void setTextOn(jni.JniObject textOn) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setTextOn,
      jni.JniType.voidType,
      [textOn.reference]).check();

  static final _id_getTextOff = jniAccessors.getMethodIDOf(
      _classRef, "getTextOff", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getTextOff()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the text for when the button is not in the checked state.
  ///@return The text.
  jni.JniObject getTextOff() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTextOff, jni.JniType.objectType, []).object);

  static final _id_setTextOff = jniAccessors.getMethodIDOf(
      _classRef, "setTextOff", "(Ljava/lang/CharSequence;)V");

  /// from: public void setTextOff(java.lang.CharSequence textOff)
  ///
  /// Sets the text for when the button is not in the checked state.
  ///@param textOff The text.
  void setTextOff(jni.JniObject textOff) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setTextOff,
      jni.JniType.voidType,
      [textOff.reference]).check();

  static final _id_onFinishInflate1 =
      jniAccessors.getMethodIDOf(_classRef, "onFinishInflate", "()V");

  /// from: protected void onFinishInflate()
  void onFinishInflate1() => jniAccessors.callMethodWithArgs(
      reference, _id_onFinishInflate1, jni.JniType.voidType, []).check();

  static final _id_setBackgroundDrawable1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setBackgroundDrawable",
      "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setBackgroundDrawable(android.graphics.drawable.Drawable d)
  void setBackgroundDrawable1(drawable_.Drawable d) =>
      jniAccessors.callMethodWithArgs(reference, _id_setBackgroundDrawable1,
          jni.JniType.voidType, [d.reference]).check();

  static final _id_drawableStateChanged1 =
      jniAccessors.getMethodIDOf(_classRef, "drawableStateChanged", "()V");

  /// from: protected void drawableStateChanged()
  void drawableStateChanged1() => jniAccessors.callMethodWithArgs(
      reference, _id_drawableStateChanged1, jni.JniType.voidType, []).check();

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);
}
