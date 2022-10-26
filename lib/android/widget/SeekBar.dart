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

import "AbsSeekBar.dart" as absseekbar_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.SeekBar
///
/// A SeekBar is an extension of ProgressBar that adds a draggable thumb. The user can touch
/// the thumb and drag left or right to set the current progress level or use the arrow keys.
/// Placing focusable widgets to the left or right of a SeekBar is discouraged.
///
/// Clients of the SeekBar can attach a SeekBar.OnSeekBarChangeListener to
/// be notified of the user's actions.
///@attr ref android.R.styleable\#SeekBar_thumb
class SeekBar extends absseekbar_.AbsSeekBar {
  static final _classRef = jniAccessors.getClassOf("android/widget/SeekBar");
  SeekBar.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  SeekBar(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  SeekBar.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  SeekBar.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  SeekBar.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_setOnSeekBarChangeListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnSeekBarChangeListener",
      "(Landroid/widget/SeekBar\$OnSeekBarChangeListener;)V");

  /// from: public void setOnSeekBarChangeListener(android.widget.SeekBar.OnSeekBarChangeListener l)
  ///
  /// Sets a listener to receive notifications of changes to the SeekBar's progress level. Also
  /// provides notifications of when the user starts and stops a touch gesture within the SeekBar.
  ///@param l The seek bar notification listener
  ///@see SeekBar.OnSeekBarChangeListener
  void setOnSeekBarChangeListener(SeekBar_OnSeekBarChangeListener l) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnSeekBarChangeListener,
          jni.JniType.voidType, [l.reference]).check();

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);
}

/// from: android.widget.SeekBar$OnSeekBarChangeListener
///
/// A callback that notifies clients when the progress level has been
/// changed. This includes changes that were initiated by the user through a
/// touch gesture or arrow key/trackball as well as changes that were initiated
/// programmatically.
class SeekBar_OnSeekBarChangeListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/SeekBar\$OnSeekBarChangeListener");
  SeekBar_OnSeekBarChangeListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onProgressChanged = jniAccessors.getMethodIDOf(
      _classRef, "onProgressChanged", "(Landroid/widget/SeekBar;IZ)V");

  /// from: public abstract void onProgressChanged(android.widget.SeekBar seekBar, int progress, boolean fromUser)
  ///
  /// Notification that the progress level has changed. Clients can use the fromUser parameter
  /// to distinguish user-initiated changes from those that occurred programmatically.
  ///@param seekBar The SeekBar whose progress has changed
  ///@param progress The current progress level. This will be in the range min..max where min
  ///                 and max were set by ProgressBar\#setMin(int) and
  ///                 ProgressBar\#setMax(int), respectively. (The default values for
  ///                 min is 0 and max is 100.)
  ///@param fromUser True if the progress change was initiated by the user.
  void onProgressChanged(SeekBar seekBar, int progress, bool fromUser) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onProgressChanged,
          jni.JniType.voidType,
          [seekBar.reference, progress, fromUser]).check();

  static final _id_onStartTrackingTouch = jniAccessors.getMethodIDOf(
      _classRef, "onStartTrackingTouch", "(Landroid/widget/SeekBar;)V");

  /// from: public abstract void onStartTrackingTouch(android.widget.SeekBar seekBar)
  ///
  /// Notification that the user has started a touch gesture. Clients may want to use this
  /// to disable advancing the seekbar.
  ///@param seekBar The SeekBar in which the touch gesture began
  void onStartTrackingTouch(SeekBar seekBar) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onStartTrackingTouch,
      jni.JniType.voidType,
      [seekBar.reference]).check();

  static final _id_onStopTrackingTouch = jniAccessors.getMethodIDOf(
      _classRef, "onStopTrackingTouch", "(Landroid/widget/SeekBar;)V");

  /// from: public abstract void onStopTrackingTouch(android.widget.SeekBar seekBar)
  ///
  /// Notification that the user has finished a touch gesture. Clients may want to use this
  /// to re-enable advancing the seekbar.
  ///@param seekBar The SeekBar in which the touch gesture began
  void onStopTrackingTouch(SeekBar seekBar) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onStopTrackingTouch,
      jni.JniType.voidType,
      [seekBar.reference]).check();
}
