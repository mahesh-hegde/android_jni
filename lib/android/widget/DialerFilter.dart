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

import "RelativeLayout.dart" as relativelayout_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../graphics/Rect.dart" as rect_;

import "../view/KeyEvent.dart" as keyevent_;

import "../text/TextWatcher.dart" as textwatcher_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.DialerFilter
///
/// This widget is a layout that contains several specifically-named child views that
/// handle keyboard entry interpreted as standard phone dialpad digits.
///@deprecated Use a custom view or layout to handle this functionality instead
class DialerFilter extends relativelayout_.RelativeLayout {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/DialerFilter");
  DialerFilter.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int DIGITS_AND_LETTERS
  ///
  /// This mode has both lines
  static const DIGITS_AND_LETTERS = 1;

  /// from: static public final int DIGITS_AND_LETTERS_NO_DIGITS
  ///
  /// This mode is when after starting in \#DIGITS_AND_LETTERS mode the filter
  ///  has removed all possibility of the digits matching, leaving only the letters line
  static const DIGITS_AND_LETTERS_NO_DIGITS = 2;

  /// from: static public final int DIGITS_AND_LETTERS_NO_LETTERS
  ///
  /// This mode is when after starting in \#DIGITS_AND_LETTERS mode the filter
  ///  has removed all possibility of the letters matching, leaving only the digits line
  static const DIGITS_AND_LETTERS_NO_LETTERS = 3;

  /// from: static public final int DIGITS_ONLY
  ///
  /// This mode has only the digits line
  static const DIGITS_ONLY = 4;

  /// from: static public final int LETTERS_ONLY
  ///
  /// This mode has only the letters line
  static const LETTERS_ONLY = 5;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DialerFilter(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DialerFilter.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_onFinishInflate1 =
      jniAccessors.getMethodIDOf(_classRef, "onFinishInflate", "()V");

  /// from: protected void onFinishInflate()
  void onFinishInflate1() => jniAccessors.callMethodWithArgs(
      reference, _id_onFinishInflate1, jni.JniType.voidType, []).check();

  static final _id_onFocusChanged1 = jniAccessors.getMethodIDOf(
      _classRef, "onFocusChanged", "(ZILandroid/graphics/Rect;)V");

  /// from: protected void onFocusChanged(boolean focused, int direction, android.graphics.Rect previouslyFocusedRect)
  ///
  /// Only show the icon view when focused, if there is one.
  void onFocusChanged1(
          bool focused, int direction, rect_.Rect previouslyFocusedRect) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onFocusChanged1,
          jni.JniType.voidType,
          [focused, direction, previouslyFocusedRect.reference]).check();

  static final _id_isQwertyKeyboard =
      jniAccessors.getMethodIDOf(_classRef, "isQwertyKeyboard", "()Z");

  /// from: public boolean isQwertyKeyboard()
  bool isQwertyKeyboard() => jniAccessors.callMethodWithArgs(
      reference, _id_isQwertyKeyboard, jni.JniType.booleanType, []).boolean;

  static final _id_onKeyDown1 = jniAccessors.getMethodIDOf(
      _classRef, "onKeyDown", "(ILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyDown(int keyCode, android.view.KeyEvent event)
  bool onKeyDown1(int keyCode, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onKeyDown1,
          jni.JniType.booleanType, [keyCode, event.reference]).boolean;

  static final _id_onKeyUp1 = jniAccessors.getMethodIDOf(
      _classRef, "onKeyUp", "(ILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyUp(int keyCode, android.view.KeyEvent event)
  bool onKeyUp1(int keyCode, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onKeyUp1,
          jni.JniType.booleanType, [keyCode, event.reference]).boolean;

  static final _id_getMode =
      jniAccessors.getMethodIDOf(_classRef, "getMode", "()I");

  /// from: public int getMode()
  int getMode() => jniAccessors.callMethodWithArgs(
      reference, _id_getMode, jni.JniType.intType, []).integer;

  static final _id_setMode =
      jniAccessors.getMethodIDOf(_classRef, "setMode", "(I)V");

  /// from: public void setMode(int newMode)
  ///
  /// Change the mode of the widget.
  ///@param newMode The mode to switch to.
  void setMode(int newMode) => jniAccessors.callMethodWithArgs(
      reference, _id_setMode, jni.JniType.voidType, [newMode]).check();

  static final _id_getLetters = jniAccessors.getMethodIDOf(
      _classRef, "getLetters", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLetters()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getLetters() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLetters, jni.JniType.objectType, []).object);

  static final _id_getDigits = jniAccessors.getMethodIDOf(
      _classRef, "getDigits", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getDigits()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getDigits() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDigits, jni.JniType.objectType, []).object);

  static final _id_getFilterText = jniAccessors.getMethodIDOf(
      _classRef, "getFilterText", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getFilterText()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getFilterText() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFilterText, jni.JniType.objectType, []).object);

  static final _id_append =
      jniAccessors.getMethodIDOf(_classRef, "append", "(Ljava/lang/String;)V");

  /// from: public void append(java.lang.String text)
  void append(jni.JniString text) => jniAccessors.callMethodWithArgs(
      reference, _id_append, jni.JniType.voidType, [text.reference]).check();

  static final _id_clearText =
      jniAccessors.getMethodIDOf(_classRef, "clearText", "()V");

  /// from: public void clearText()
  ///
  /// Clears both the digits and the filter text.
  void clearText() => jniAccessors.callMethodWithArgs(
      reference, _id_clearText, jni.JniType.voidType, []).check();

  static final _id_setLettersWatcher = jniAccessors.getMethodIDOf(
      _classRef, "setLettersWatcher", "(Landroid/text/TextWatcher;)V");

  /// from: public void setLettersWatcher(android.text.TextWatcher watcher)
  void setLettersWatcher(textwatcher_.TextWatcher watcher) =>
      jniAccessors.callMethodWithArgs(reference, _id_setLettersWatcher,
          jni.JniType.voidType, [watcher.reference]).check();

  static final _id_setDigitsWatcher = jniAccessors.getMethodIDOf(
      _classRef, "setDigitsWatcher", "(Landroid/text/TextWatcher;)V");

  /// from: public void setDigitsWatcher(android.text.TextWatcher watcher)
  void setDigitsWatcher(textwatcher_.TextWatcher watcher) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDigitsWatcher,
          jni.JniType.voidType, [watcher.reference]).check();

  static final _id_setFilterWatcher = jniAccessors.getMethodIDOf(
      _classRef, "setFilterWatcher", "(Landroid/text/TextWatcher;)V");

  /// from: public void setFilterWatcher(android.text.TextWatcher watcher)
  void setFilterWatcher(textwatcher_.TextWatcher watcher) =>
      jniAccessors.callMethodWithArgs(reference, _id_setFilterWatcher,
          jni.JniType.voidType, [watcher.reference]).check();

  static final _id_removeFilterWatcher = jniAccessors.getMethodIDOf(
      _classRef, "removeFilterWatcher", "(Landroid/text/TextWatcher;)V");

  /// from: public void removeFilterWatcher(android.text.TextWatcher watcher)
  void removeFilterWatcher(textwatcher_.TextWatcher watcher) =>
      jniAccessors.callMethodWithArgs(reference, _id_removeFilterWatcher,
          jni.JniType.voidType, [watcher.reference]).check();

  static final _id_onModeChange =
      jniAccessors.getMethodIDOf(_classRef, "onModeChange", "(II)V");

  /// from: protected void onModeChange(int oldMode, int newMode)
  ///
  /// Called right after the mode changes to give subclasses the option to
  /// restyle, etc.
  void onModeChange(int oldMode, int newMode) =>
      jniAccessors.callMethodWithArgs(reference, _id_onModeChange,
          jni.JniType.voidType, [oldMode, newMode]).check();
}
