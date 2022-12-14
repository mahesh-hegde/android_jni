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

import "../TextPaint.dart" as textpaint_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.CharacterStyle
///
/// The classes that affect character-level text formatting extend this
/// class.  Most extend its subclass MetricAffectingSpan, but simple
/// ones may just implement UpdateAppearance.
class CharacterStyle extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/CharacterStyle");
  CharacterStyle.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  CharacterStyle()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_updateDrawState = jniAccessors.getMethodIDOf(
      _classRef, "updateDrawState", "(Landroid/text/TextPaint;)V");

  /// from: public abstract void updateDrawState(android.text.TextPaint tp)
  void updateDrawState(textpaint_.TextPaint tp) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateDrawState,
          jni.JniType.voidType, [tp.reference]).check();

  static final _id_wrap = jniAccessors.getStaticMethodIDOf(_classRef, "wrap",
      "(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;");

  /// from: static public android.text.style.CharacterStyle wrap(android.text.style.CharacterStyle cs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// A given CharacterStyle can only applied to a single region of a given
  /// Spanned.  If you need to attach the same CharacterStyle to multiple
  /// regions, you can use this method to wrap it with a new object that
  /// will have the same effect but be a distinct object so that it can
  /// also be attached without conflict.
  static CharacterStyle wrap(CharacterStyle cs) =>
      CharacterStyle.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_wrap, jni.JniType.objectType, [cs.reference]).object);

  static final _id_getUnderlying = jniAccessors.getMethodIDOf(
      _classRef, "getUnderlying", "()Landroid/text/style/CharacterStyle;");

  /// from: public android.text.style.CharacterStyle getUnderlying()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns "this" for most CharacterStyles, but for CharacterStyles
  /// that were generated by \#wrap, returns the underlying
  /// CharacterStyle.
  CharacterStyle getUnderlying() =>
      CharacterStyle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUnderlying, jni.JniType.objectType, []).object);
}
