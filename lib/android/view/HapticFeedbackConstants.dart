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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.HapticFeedbackConstants
///
/// Constants to be used to perform haptic feedback effects via
/// View\#performHapticFeedback(int)
class HapticFeedbackConstants extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/HapticFeedbackConstants");
  HapticFeedbackConstants.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int CLOCK_TICK
  ///
  /// The user has pressed either an hour or minute tick of a Clock.
  static const CLOCK_TICK = 4;

  /// from: static public final int CONTEXT_CLICK
  ///
  /// The user has performed a context click on an object.
  static const CONTEXT_CLICK = 6;

  /// from: static public final int FLAG_IGNORE_GLOBAL_SETTING
  ///
  /// Flag for View\#performHapticFeedback(int, int) View.performHapticFeedback(int, int): Ignore the global setting
  /// for whether to perform haptic feedback, do it always.
  static const FLAG_IGNORE_GLOBAL_SETTING = 2;

  /// from: static public final int FLAG_IGNORE_VIEW_SETTING
  ///
  /// Flag for View\#performHapticFeedback(int, int) View.performHapticFeedback(int, int): Ignore the setting in the
  /// view for whether to perform haptic feedback, do it always.
  static const FLAG_IGNORE_VIEW_SETTING = 1;

  /// from: static public final int KEYBOARD_PRESS
  ///
  /// The user has pressed a virtual or software keyboard key.
  static const KEYBOARD_PRESS = 3;

  /// from: static public final int KEYBOARD_RELEASE
  ///
  /// The user has released a virtual keyboard key.
  static const KEYBOARD_RELEASE = 7;

  /// from: static public final int KEYBOARD_TAP
  ///
  /// The user has pressed a soft keyboard key.
  static const KEYBOARD_TAP = 3;

  /// from: static public final int LONG_PRESS
  ///
  /// The user has performed a long press on an object that is resulting
  /// in an action being performed.
  static const LONG_PRESS = 0;

  /// from: static public final int TEXT_HANDLE_MOVE
  ///
  /// The user has performed a selection/insertion handle move on text field.
  static const TEXT_HANDLE_MOVE = 9;

  /// from: static public final int VIRTUAL_KEY
  ///
  /// The user has pressed on a virtual on-screen key.
  static const VIRTUAL_KEY = 1;

  /// from: static public final int VIRTUAL_KEY_RELEASE
  ///
  /// The user has released a virtual key.
  static const VIRTUAL_KEY_RELEASE = 8;
}
