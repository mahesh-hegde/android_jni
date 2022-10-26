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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.util.Rfc822Tokenizer
///
/// This class works as a Tokenizer for MultiAutoCompleteTextView for
/// address list fields, and also provides a method for converting
/// a string of addresses (such as might be typed into such a field)
/// into a series of Rfc822Tokens.
class Rfc822Tokenizer extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/util/Rfc822Tokenizer");
  Rfc822Tokenizer.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Rfc822Tokenizer()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_tokenize = jniAccessors.getStaticMethodIDOf(_classRef,
      "tokenize", "(Ljava/lang/CharSequence;Ljava/util/Collection;)V");

  /// from: static public void tokenize(java.lang.CharSequence text, java.util.Collection<android.text.util.Rfc822Token> out)
  ///
  /// This constructor will try to take a string like
  /// "Foo Bar (something) &lt;foo\@google.com&gt;,
  /// blah\@google.com (something)"
  /// and convert it into one or more Rfc822Tokens, output into the supplied
  /// collection.
  ///
  /// It does *not* decode MIME encoded-words; charset conversion
  /// must already have taken place if necessary.
  /// It will try to be tolerant of broken syntax instead of
  /// returning an error.
  static void tokenize(jni.JniObject text, jni.JniObject out) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_tokenize,
          jni.JniType.voidType, [text.reference, out.reference]).check();

  static final _id_tokenize1 = jniAccessors.getStaticMethodIDOf(_classRef,
      "tokenize", "(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;");

  /// from: static public android.text.util.Rfc822Token[] tokenize(java.lang.CharSequence text)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This method will try to take a string like
  /// "Foo Bar (something) &lt;foo\@google.com&gt;,
  /// blah\@google.com (something)"
  /// and convert it into one or more Rfc822Tokens.
  /// It does *not* decode MIME encoded-words; charset conversion
  /// must already have taken place if necessary.
  /// It will try to be tolerant of broken syntax instead of
  /// returning an error.
  static jni.JniObject tokenize1(jni.JniObject text) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_tokenize1, jni.JniType.objectType, [text.reference]).object);

  static final _id_findTokenStart = jniAccessors.getMethodIDOf(
      _classRef, "findTokenStart", "(Ljava/lang/CharSequence;I)I");

  /// from: public int findTokenStart(java.lang.CharSequence text, int cursor)
  ///
  /// {@inheritDoc}
  int findTokenStart(jni.JniObject text, int cursor) =>
      jniAccessors.callMethodWithArgs(reference, _id_findTokenStart,
          jni.JniType.intType, [text.reference, cursor]).integer;

  static final _id_findTokenEnd = jniAccessors.getMethodIDOf(
      _classRef, "findTokenEnd", "(Ljava/lang/CharSequence;I)I");

  /// from: public int findTokenEnd(java.lang.CharSequence text, int cursor)
  ///
  /// {@inheritDoc}
  int findTokenEnd(jni.JniObject text, int cursor) =>
      jniAccessors.callMethodWithArgs(reference, _id_findTokenEnd,
          jni.JniType.intType, [text.reference, cursor]).integer;

  static final _id_terminateToken = jniAccessors.getMethodIDOf(_classRef,
      "terminateToken", "(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence terminateToken(java.lang.CharSequence text)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Terminates the specified address with a comma and space.
  /// This assumes that the specified text already has valid syntax.
  /// The Adapter subclass's convertToString() method must make that
  /// guarantee.
  jni.JniObject terminateToken(jni.JniObject text) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_terminateToken, jni.JniType.objectType, [text.reference]).object);
}