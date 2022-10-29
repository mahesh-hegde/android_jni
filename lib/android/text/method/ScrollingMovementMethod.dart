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

import "BaseMovementMethod.dart" as basemovementmethod_;

import "../../widget/TextView.dart" as textview_;

import "../Spannable.dart" as spannable_;

import "../../view/MotionEvent.dart" as motionevent_;

import "MovementMethod.dart" as movementmethod_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.method.ScrollingMovementMethod
///
/// A movement method that interprets movement keys by scrolling the text buffer.
class ScrollingMovementMethod extends basemovementmethod_.BaseMovementMethod {
  static final _classRef =
      jniAccessors.getClassOf("android/text/method/ScrollingMovementMethod");
  ScrollingMovementMethod.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ScrollingMovementMethod()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_left = jniAccessors.getMethodIDOf(_classRef, "left",
      "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean left(android.widget.TextView widget, android.text.Spannable buffer)
  bool left(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_left,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_right = jniAccessors.getMethodIDOf(_classRef, "right",
      "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean right(android.widget.TextView widget, android.text.Spannable buffer)
  bool right(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_right,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_up = jniAccessors.getMethodIDOf(
      _classRef, "up", "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean up(android.widget.TextView widget, android.text.Spannable buffer)
  bool up(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_up,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_down = jniAccessors.getMethodIDOf(_classRef, "down",
      "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean down(android.widget.TextView widget, android.text.Spannable buffer)
  bool down(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_down,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_pageUp = jniAccessors.getMethodIDOf(_classRef, "pageUp",
      "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean pageUp(android.widget.TextView widget, android.text.Spannable buffer)
  bool pageUp(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_pageUp,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_pageDown = jniAccessors.getMethodIDOf(_classRef, "pageDown",
      "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean pageDown(android.widget.TextView widget, android.text.Spannable buffer)
  bool pageDown(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_pageDown,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_top = jniAccessors.getMethodIDOf(
      _classRef, "top", "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean top(android.widget.TextView widget, android.text.Spannable buffer)
  bool top(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_top,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_bottom = jniAccessors.getMethodIDOf(_classRef, "bottom",
      "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean bottom(android.widget.TextView widget, android.text.Spannable buffer)
  bool bottom(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_bottom,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_lineStart = jniAccessors.getMethodIDOf(_classRef,
      "lineStart", "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean lineStart(android.widget.TextView widget, android.text.Spannable buffer)
  bool lineStart(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_lineStart,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_lineEnd = jniAccessors.getMethodIDOf(_classRef, "lineEnd",
      "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean lineEnd(android.widget.TextView widget, android.text.Spannable buffer)
  bool lineEnd(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_lineEnd,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_home = jniAccessors.getMethodIDOf(_classRef, "home",
      "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean home(android.widget.TextView widget, android.text.Spannable buffer)
  bool home(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_home,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_end = jniAccessors.getMethodIDOf(
      _classRef, "end", "(Landroid/widget/TextView;Landroid/text/Spannable;)Z");

  /// from: protected boolean end(android.widget.TextView widget, android.text.Spannable buffer)
  bool end(textview_.TextView widget, spannable_.Spannable buffer) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_end,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference]).boolean;

  static final _id_onTouchEvent = jniAccessors.getMethodIDOf(
      _classRef,
      "onTouchEvent",
      "(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z");

  /// from: public boolean onTouchEvent(android.widget.TextView widget, android.text.Spannable buffer, android.view.MotionEvent event)
  bool onTouchEvent(textview_.TextView widget, spannable_.Spannable buffer,
          motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onTouchEvent,
          jni.JniType.booleanType,
          [widget.reference, buffer.reference, event.reference]).boolean;

  static final _id_onTakeFocus = jniAccessors.getMethodIDOf(_classRef,
      "onTakeFocus", "(Landroid/widget/TextView;Landroid/text/Spannable;I)V");

  /// from: public void onTakeFocus(android.widget.TextView widget, android.text.Spannable text, int dir)
  void onTakeFocus(
          textview_.TextView widget, spannable_.Spannable text, int dir) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onTakeFocus,
          jni.JniType.voidType,
          [widget.reference, text.reference, dir]).check();

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "()Landroid/text/method/MovementMethod;");

  /// from: static public android.text.method.MovementMethod getInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static movementmethod_.MovementMethod getInstance() =>
      movementmethod_.MovementMethod.fromRef(jniAccessors
          .callStaticMethodWithArgs(
              _classRef, _id_getInstance, jni.JniType.objectType, []).object);
}
