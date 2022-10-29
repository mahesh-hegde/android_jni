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

import "BaseKeyListener.dart" as basekeylistener_;

import "TextKeyListener.dart" as textkeylistener_;

import "../../view/View.dart" as view_;

import "../Editable.dart" as editable_;

import "../../view/KeyEvent.dart" as keyevent_;

import "../Spannable.dart" as spannable_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.method.MultiTapKeyListener
///
/// This is the standard key listener for alphabetic input on 12-key
/// keyboards.  You should generally not need to instantiate this yourself;
/// TextKeyListener will do it for you.
///
///
/// As for all implementations of KeyListener, this class is only concerned
/// with hardware keyboards.  Software input methods have no obligation to trigger
/// the methods in this class.
class MultiTapKeyListener extends basekeylistener_.BaseKeyListener {
  static final _classRef =
      jniAccessors.getClassOf("android/text/method/MultiTapKeyListener");
  MultiTapKeyListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/text/method/TextKeyListener\$Capitalize;Z)V");

  /// from: public void <init>(android.text.method.TextKeyListener.Capitalize cap, boolean autotext)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MultiTapKeyListener.ctor1(
      textkeylistener_.TextKeyListener_Capitalize cap, bool autotext)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [cap.reference, autotext]).object);

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(ZLandroid/text/method/TextKeyListener\$Capitalize;)Landroid/text/method/MultiTapKeyListener;");

  /// from: static public android.text.method.MultiTapKeyListener getInstance(boolean autotext, android.text.method.TextKeyListener.Capitalize cap)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a new or existing instance with the specified capitalization
  /// and correction properties.
  static MultiTapKeyListener getInstance(
          bool autotext, textkeylistener_.TextKeyListener_Capitalize cap) =>
      MultiTapKeyListener.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance,
          jni.JniType.objectType,
          [autotext, cap.reference]).object);

  static final _id_getInputType =
      jniAccessors.getMethodIDOf(_classRef, "getInputType", "()I");

  /// from: public int getInputType()
  int getInputType() => jniAccessors.callMethodWithArgs(
      reference, _id_getInputType, jni.JniType.intType, []).integer;

  static final _id_onKeyDown = jniAccessors.getMethodIDOf(
      _classRef,
      "onKeyDown",
      "(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyDown(android.view.View view, android.text.Editable content, int keyCode, android.view.KeyEvent event)
  bool onKeyDown(view_.View view, editable_.Editable content, int keyCode,
          keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onKeyDown, jni.JniType.booleanType, [
        view.reference,
        content.reference,
        keyCode,
        event.reference
      ]).boolean;

  static final _id_onSpanChanged = jniAccessors.getMethodIDOf(_classRef,
      "onSpanChanged", "(Landroid/text/Spannable;Ljava/lang/Object;IIII)V");

  /// from: public void onSpanChanged(android.text.Spannable buf, java.lang.Object what, int s, int e, int start, int stop)
  void onSpanChanged(spannable_.Spannable buf, jni.JniObject what, int s, int e,
          int start, int stop) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onSpanChanged,
          jni.JniType.voidType,
          [buf.reference, what.reference, s, e, start, stop]).check();

  static final _id_onSpanAdded = jniAccessors.getMethodIDOf(_classRef,
      "onSpanAdded", "(Landroid/text/Spannable;Ljava/lang/Object;II)V");

  /// from: public void onSpanAdded(android.text.Spannable s, java.lang.Object what, int start, int end)
  void onSpanAdded(
          spannable_.Spannable s, jni.JniObject what, int start, int end) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onSpanAdded,
          jni.JniType.voidType,
          [s.reference, what.reference, start, end]).check();

  static final _id_onSpanRemoved = jniAccessors.getMethodIDOf(_classRef,
      "onSpanRemoved", "(Landroid/text/Spannable;Ljava/lang/Object;II)V");

  /// from: public void onSpanRemoved(android.text.Spannable s, java.lang.Object what, int start, int end)
  void onSpanRemoved(
          spannable_.Spannable s, jni.JniObject what, int start, int end) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onSpanRemoved,
          jni.JniType.voidType,
          [s.reference, what.reference, start, end]).check();
}
