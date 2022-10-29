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

/// from: android.text.AndroidCharacter
///
/// AndroidCharacter exposes some character properties that used to be not
/// easily accessed from java.lang.Character, but are now available in ICU.
///@deprecated Use various methods from android.icu.lang.UCharacter, instead.
class AndroidCharacter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/AndroidCharacter");
  AndroidCharacter.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int EAST_ASIAN_WIDTH_AMBIGUOUS
  static const EAST_ASIAN_WIDTH_AMBIGUOUS = 1;

  /// from: static public final int EAST_ASIAN_WIDTH_FULL_WIDTH
  static const EAST_ASIAN_WIDTH_FULL_WIDTH = 3;

  /// from: static public final int EAST_ASIAN_WIDTH_HALF_WIDTH
  static const EAST_ASIAN_WIDTH_HALF_WIDTH = 2;

  /// from: static public final int EAST_ASIAN_WIDTH_NARROW
  static const EAST_ASIAN_WIDTH_NARROW = 4;

  /// from: static public final int EAST_ASIAN_WIDTH_NEUTRAL
  static const EAST_ASIAN_WIDTH_NEUTRAL = 0;

  /// from: static public final int EAST_ASIAN_WIDTH_WIDE
  static const EAST_ASIAN_WIDTH_WIDE = 5;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AndroidCharacter()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getDirectionalities = jniAccessors.getStaticMethodIDOf(
      _classRef, "getDirectionalities", "([C[BI)V");

  /// from: static public native void getDirectionalities(char[] src, byte[] dest, int count)
  ///
  /// Fill in the first <code>count</code> bytes of <code>dest</code> with the
  /// directionalities from the first <code>count</code> chars of <code>src</code>.
  /// This is just like Character.getDirectionality() except it is a
  /// batch operation.
  static void getDirectionalities(
          jni.JniObject src, jni.JniObject dest, int count) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getDirectionalities,
          jni.JniType.voidType, [src.reference, dest.reference, count]).check();

  static final _id_getEastAsianWidth =
      jniAccessors.getStaticMethodIDOf(_classRef, "getEastAsianWidth", "(C)I");

  /// from: static public native int getEastAsianWidth(char input)
  ///
  /// Calculate the East Asian Width of a character according to
  /// <a href="http://unicode.org/reports/tr11/">Unicode TR\#11</a>. The return
  /// will be one of \#EAST_ASIAN_WIDTH_NEUTRAL,
  /// \#EAST_ASIAN_WIDTH_AMBIGUOUS, \#EAST_ASIAN_WIDTH_HALF_WIDTH,
  /// \#EAST_ASIAN_WIDTH_FULL_WIDTH, \#EAST_ASIAN_WIDTH_NARROW,
  /// or \#EAST_ASIAN_WIDTH_WIDE.
  ///@param input the character to measure
  ///@return the East Asian Width for input
  static int getEastAsianWidth(int input) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getEastAsianWidth,
          jni.JniType.intType, [input]).integer;

  static final _id_getEastAsianWidths = jniAccessors.getStaticMethodIDOf(
      _classRef, "getEastAsianWidths", "([CII[B)V");

  /// from: static public native void getEastAsianWidths(char[] src, int start, int count, byte[] dest)
  ///
  /// Fill the first <code>count</code> bytes of <code>dest</code> with the
  /// East Asian Width from <code>count</code> chars of <code>src</code>
  /// starting at <code>start</code>. East Asian Width is calculated based on
  /// <a href="http://unicode.org/reports/tr11/">Unicode TR\#11</a>. Each entry
  /// in <code>dest</code> will be one of \#EAST_ASIAN_WIDTH_NEUTRAL,
  /// \#EAST_ASIAN_WIDTH_AMBIGUOUS, \#EAST_ASIAN_WIDTH_HALF_WIDTH,
  /// \#EAST_ASIAN_WIDTH_FULL_WIDTH, \#EAST_ASIAN_WIDTH_NARROW,
  /// or \#EAST_ASIAN_WIDTH_WIDE.
  ///@param src character array of input to measure
  ///@param start first character in array to measure
  ///@param count maximum number of characters to measure
  ///@param dest byte array of results for each character in src
  static void getEastAsianWidths(
          jni.JniObject src, int start, int count, jni.JniObject dest) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getEastAsianWidths,
          jni.JniType.voidType,
          [src.reference, start, count, dest.reference]).check();

  static final _id_mirror =
      jniAccessors.getStaticMethodIDOf(_classRef, "mirror", "([CII)Z");

  /// from: static public native boolean mirror(char[] text, int start, int count)
  ///
  /// Replace the specified slice of <code>text</code> with the chars'
  /// right-to-left mirrors (if any), returning true if any
  /// replacements were made.
  ///@param text array of characters to apply mirror operation
  ///@param start first character in array to mirror
  ///@param count maximum number of characters to mirror
  ///@return true if replacements were made
  static bool mirror(jni.JniObject text, int start, int count) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_mirror,
          jni.JniType.booleanType, [text.reference, start, count]).boolean;

  static final _id_getMirror =
      jniAccessors.getStaticMethodIDOf(_classRef, "getMirror", "(C)C");

  /// from: static public native char getMirror(char ch)
  ///
  /// Return the right-to-left mirror (or the original char if none)
  /// of the specified char.
  static int getMirror(int ch) => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getMirror, jni.JniType.charType, [ch]).char;
}
