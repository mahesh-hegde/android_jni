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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.ClipboardManager
///
/// @deprecated Old text-only interface to the clipboard.  See
/// android.content.ClipboardManager for the modern API.
class ClipboardManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/ClipboardManager");
  ClipboardManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ClipboardManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getText = jniAccessors.getMethodIDOf(
      _classRef, "getText", "()Ljava/lang/CharSequence;");

  /// from: public abstract java.lang.CharSequence getText()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the text on the clipboard.  It will eventually be possible
  /// to store types other than text too, in which case this will return
  /// null if the type cannot be coerced to text.
  jni.JniObject getText() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getText, jni.JniType.objectType, []).object);

  static final _id_setText = jniAccessors.getMethodIDOf(
      _classRef, "setText", "(Ljava/lang/CharSequence;)V");

  /// from: public abstract void setText(java.lang.CharSequence text)
  ///
  /// Sets the contents of the clipboard to the specified text.
  void setText(jni.JniObject text) => jniAccessors.callMethodWithArgs(
      reference, _id_setText, jni.JniType.voidType, [text.reference]).check();

  static final _id_hasText =
      jniAccessors.getMethodIDOf(_classRef, "hasText", "()Z");

  /// from: public abstract boolean hasText()
  ///
  /// Returns true if the clipboard contains text; false otherwise.
  bool hasText() => jniAccessors.callMethodWithArgs(
      reference, _id_hasText, jni.JniType.booleanType, []).boolean;
}