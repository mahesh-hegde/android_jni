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

import "../../view/View.dart" as view_;

import "../Editable.dart" as editable_;

import "../../view/KeyEvent.dart" as keyevent_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.method.KeyListener
///
/// Interface for converting text key events into edit operations on an
/// Editable class.  Note that for most cases this interface has been
/// superceded by general soft input methods as defined by
/// android.view.inputmethod.InputMethod; it should only be used
/// for cases where an application has its own on-screen keypad and also wants
/// to process hard keyboard events to match it.
///
///
/// Key presses on soft input methods are not required to trigger the methods
/// in this listener, and are in fact discouraged to do so.  The default
/// android keyboard will not trigger these for any key to any application
/// targetting Jelly Bean or later, and will only deliver it for some
/// key presses to applications targetting Ice Cream Sandwich or earlier.
class KeyListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/method/KeyListener");
  KeyListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getInputType =
      jniAccessors.getMethodIDOf(_classRef, "getInputType", "()I");

  /// from: public abstract int getInputType()
  ///
  /// Return the type of text that this key listener is manipulating,
  /// as per android.text.InputType.  This is used to
  /// determine the mode of the soft keyboard that is shown for the editor.
  ///
  /// If you return
  /// android.text.InputType\#TYPE_NULL
  /// then _no_ soft keyboard will provided.  In other words, you
  /// must be providing your own key pad for on-screen input and the key
  /// listener will be used to handle input from a hard keyboard.
  ///
  /// If you
  /// return any other value, a soft input method will be created when the
  /// user puts focus in the editor, which will provide a keypad and also
  /// consume hard key events.  This means that the key listener will generally
  /// not be used, instead the soft input method will take care of managing
  /// key input as per the content type returned here.
  int getInputType() => jniAccessors.callMethodWithArgs(
      reference, _id_getInputType, jni.JniType.intType, []).integer;

  static final _id_onKeyDown = jniAccessors.getMethodIDOf(
      _classRef,
      "onKeyDown",
      "(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z");

  /// from: public abstract boolean onKeyDown(android.view.View view, android.text.Editable text, int keyCode, android.view.KeyEvent event)
  ///
  /// If the key listener wants to handle this key, return true,
  /// otherwise return false and the caller (i.e.&nbsp;the widget host)
  /// will handle the key.
  bool onKeyDown(view_.View view, editable_.Editable text, int keyCode,
          keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onKeyDown,
          jni.JniType.booleanType,
          [view.reference, text.reference, keyCode, event.reference]).boolean;

  static final _id_onKeyUp = jniAccessors.getMethodIDOf(_classRef, "onKeyUp",
      "(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z");

  /// from: public abstract boolean onKeyUp(android.view.View view, android.text.Editable text, int keyCode, android.view.KeyEvent event)
  ///
  /// If the key listener wants to handle this key release, return true,
  /// otherwise return false and the caller (i.e.&nbsp;the widget host)
  /// will handle the key.
  bool onKeyUp(view_.View view, editable_.Editable text, int keyCode,
          keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onKeyUp,
          jni.JniType.booleanType,
          [view.reference, text.reference, keyCode, event.reference]).boolean;

  static final _id_onKeyOther = jniAccessors.getMethodIDOf(
      _classRef,
      "onKeyOther",
      "(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z");

  /// from: public abstract boolean onKeyOther(android.view.View view, android.text.Editable text, android.view.KeyEvent event)
  ///
  /// If the key listener wants to other kinds of key events, return true,
  /// otherwise return false and the caller (i.e.&nbsp;the widget host)
  /// will handle the key.
  bool onKeyOther(
          view_.View view, editable_.Editable text, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onKeyOther,
          jni.JniType.booleanType,
          [view.reference, text.reference, event.reference]).boolean;

  static final _id_clearMetaKeyState = jniAccessors.getMethodIDOf(_classRef,
      "clearMetaKeyState", "(Landroid/view/View;Landroid/text/Editable;I)V");

  /// from: public abstract void clearMetaKeyState(android.view.View view, android.text.Editable content, int states)
  ///
  /// Remove the given shift states from the edited text.
  void clearMetaKeyState(
          view_.View view, editable_.Editable content, int states) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_clearMetaKeyState,
          jni.JniType.voidType,
          [view.reference, content.reference, states]).check();
}
