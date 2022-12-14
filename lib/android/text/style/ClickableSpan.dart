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

import "CharacterStyle.dart" as characterstyle_;

import "../../view/View.dart" as view_;

import "../TextPaint.dart" as textpaint_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.ClickableSpan
///
/// If an object of this type is attached to the text of a TextView
/// with a movement method of LinkMovementMethod, the affected spans of
/// text can be selected. If selected and clicked, the \#onClick method will
/// be called.
///
/// The text with a <code>ClickableSpan</code> attached will be underlined and the link color will be
/// used as a text color. The default link color is the theme's accent color or
/// <code>android:textColorLink</code> if this attribute is defined in the theme.
/// For example, considering that we have a <code>CustomClickableSpan</code> that extends
/// <code>ClickableSpan</code>, it can be used like this:
/// <pre>{@code SpannableString string = new SpannableString("Text with clickable text");
///string.setSpan(new CustomClickableSpan(), 10, 19, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);}</pre>
/// <img src="{@docRoot}reference/android/images/text/style/clickablespan.png"/>
/// <figcaption>Text with <code>ClickableSpan</code>.</figcaption>
class ClickableSpan extends characterstyle_.CharacterStyle {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/ClickableSpan");
  ClickableSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ClickableSpan()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onClick = jniAccessors.getMethodIDOf(
      _classRef, "onClick", "(Landroid/view/View;)V");

  /// from: public abstract void onClick(android.view.View widget)
  ///
  /// Performs the click action associated with this span.
  ///@param widget This value must never be {@code null}.
  void onClick(view_.View widget) => jniAccessors.callMethodWithArgs(
      reference, _id_onClick, jni.JniType.voidType, [widget.reference]).check();

  static final _id_updateDrawState = jniAccessors.getMethodIDOf(
      _classRef, "updateDrawState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateDrawState(android.text.TextPaint ds)
  ///
  /// Makes the text underlined and in the link color.
  ///@param ds This value must never be {@code null}.
  void updateDrawState(textpaint_.TextPaint ds) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateDrawState,
          jni.JniType.voidType, [ds.reference]).check();
}
