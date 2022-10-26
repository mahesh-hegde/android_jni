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

import "UnicodeSet.dart" as unicodeset_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.UnicodeSetSpanner
///
/// A helper class used to count, replace, and trim CharSequences based on UnicodeSet matches.
/// An instance is immutable (and thus thread-safe) iff the source UnicodeSet is frozen.
/// __Note:__ The counting, deletion, and replacement depend on alternating a SpanCondition with
/// its inverse. That is, the code spans, then spans for the inverse, then spans, and so on.
/// For the inverse, the following mapping is used:
/// <ul>
/// <li>UnicodeSet.SpanCondition\#SIMPLE \u2192 UnicodeSet.SpanCondition\#NOT_CONTAINED</li>
/// <li>UnicodeSet.SpanCondition\#CONTAINED \u2192 UnicodeSet.SpanCondition\#NOT_CONTAINED</li>
/// <li>UnicodeSet.SpanCondition\#NOT_CONTAINED \u2192 UnicodeSet.SpanCondition\#SIMPLE</li>
/// </ul>
/// These are actually not complete inverses. However, the alternating works because there are no gaps.
/// For example, with [a{ab}{bc}], you get the following behavior when scanning forward:
///
/// <table border="1">
/// <tr><th>SIMPLE</th><td>xxx[ab]cyyy</td></tr>
/// <tr><th>CONTAINED</th><td>xxx[abc]yyy</td></tr>
/// <tr><th>NOT_CONTAINED</th><td>[xxx]ab[cyyy]</td></tr>
/// </table>
/// So here is what happens when you alternate:
///
/// <table border="1">
/// <tr><th>start</th><td>|xxxabcyyy</td></tr>
/// <tr><th>NOT_CONTAINED</th><td>xxx|abcyyy</td></tr>
/// <tr><th>CONTAINED</th><td>xxxabc|yyy</td></tr>
/// <tr><th>NOT_CONTAINED</th><td>xxxabcyyy|</td></tr>
/// </table>
/// The entire string is traversed.
class UnicodeSetSpanner extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/UnicodeSetSpanner");
  UnicodeSetSpanner.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/text/UnicodeSet;)V");

  /// from: public void <init>(android.icu.text.UnicodeSet source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a spanner from a UnicodeSet. For speed and safety, the UnicodeSet should be frozen. However, this class
  /// can be used with a non-frozen version to avoid the cost of freezing.
  ///@param source the original UnicodeSet
  UnicodeSetSpanner(unicodeset_.UnicodeSet source)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [source.reference]).object);

  static final _id_getUnicodeSet = jniAccessors.getMethodIDOf(
      _classRef, "getUnicodeSet", "()Landroid/icu/text/UnicodeSet;");

  /// from: public android.icu.text.UnicodeSet getUnicodeSet()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the UnicodeSet used for processing. It is frozen iff the original was.
  ///@return the construction set.
  unicodeset_.UnicodeSet getUnicodeSet() =>
      unicodeset_.UnicodeSet.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUnicodeSet, jni.JniType.objectType, []).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object other)
  ///
  /// {@inheritDoc}
  bool equals1(jni.JniObject other) => jniAccessors.callMethodWithArgs(
      reference,
      _id_equals1,
      jni.JniType.booleanType,
      [other.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// {@inheritDoc}
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_countIn = jniAccessors.getMethodIDOf(
      _classRef, "countIn", "(Ljava/lang/CharSequence;)I");

  /// from: public int countIn(java.lang.CharSequence sequence)
  ///
  /// Returns the number of matching characters found in a character sequence,
  /// counting by CountMethod.MIN_ELEMENTS using SpanCondition.SIMPLE.
  /// The code alternates spans; see the class doc for UnicodeSetSpanner for a note about boundary conditions.
  ///@param sequence the sequence to count characters in
  ///@return the count. Zero if there are none.
  int countIn(jni.JniObject sequence) => jniAccessors.callMethodWithArgs(
      reference,
      _id_countIn,
      jni.JniType.intType,
      [sequence.reference]).integer;

  static final _id_countIn1 = jniAccessors.getMethodIDOf(_classRef, "countIn",
      "(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner\$CountMethod;)I");

  /// from: public int countIn(java.lang.CharSequence sequence, android.icu.text.UnicodeSetSpanner.CountMethod countMethod)
  ///
  /// Returns the number of matching characters found in a character sequence, using SpanCondition.SIMPLE.
  /// The code alternates spans; see the class doc for UnicodeSetSpanner for a note about boundary conditions.
  ///@param sequence the sequence to count characters in
  ///@param countMethod whether to treat an entire span as a match, or individual elements as matches
  ///@return the count. Zero if there are none.
  int countIn1(
          jni.JniObject sequence, UnicodeSetSpanner_CountMethod countMethod) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_countIn1,
          jni.JniType.intType,
          [sequence.reference, countMethod.reference]).integer;

  static final _id_countIn2 = jniAccessors.getMethodIDOf(_classRef, "countIn",
      "(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner\$CountMethod;Landroid/icu/text/UnicodeSet\$SpanCondition;)I");

  /// from: public int countIn(java.lang.CharSequence sequence, android.icu.text.UnicodeSetSpanner.CountMethod countMethod, android.icu.text.UnicodeSet.SpanCondition spanCondition)
  ///
  /// Returns the number of matching characters found in a character sequence.
  /// The code alternates spans; see the class doc for UnicodeSetSpanner for a note about boundary conditions.
  ///@param sequence the sequence to count characters in
  ///@param countMethod whether to treat an entire span as a match, or individual elements as matches
  ///@param spanCondition the spanCondition to use. SIMPLE or CONTAINED means only count the elements in the span;
  ///            NOT_CONTAINED is the reverse.
  ///            <br>__WARNING: __ when a UnicodeSet contains strings, there may be unexpected behavior in edge cases.
  ///@return the count. Zero if there are none.
  int countIn2(
          jni.JniObject sequence,
          UnicodeSetSpanner_CountMethod countMethod,
          unicodeset_.UnicodeSet_SpanCondition spanCondition) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_countIn2, jni.JniType.intType, [
        sequence.reference,
        countMethod.reference,
        spanCondition.reference
      ]).integer;

  static final _id_deleteFrom = jniAccessors.getMethodIDOf(
      _classRef, "deleteFrom", "(Ljava/lang/CharSequence;)Ljava/lang/String;");

  /// from: public java.lang.String deleteFrom(java.lang.CharSequence sequence)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Delete all the matching spans in sequence, using SpanCondition.SIMPLE
  /// The code alternates spans; see the class doc for UnicodeSetSpanner for a note about boundary conditions.
  ///@param sequence charsequence to replace matching spans in.
  ///@return modified string.
  jni.JniString deleteFrom(jni.JniObject sequence) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_deleteFrom, jni.JniType.objectType, [sequence.reference]).object);

  static final _id_deleteFrom1 = jniAccessors.getMethodIDOf(
      _classRef,
      "deleteFrom",
      "(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSet\$SpanCondition;)Ljava/lang/String;");

  /// from: public java.lang.String deleteFrom(java.lang.CharSequence sequence, android.icu.text.UnicodeSet.SpanCondition spanCondition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Delete all matching spans in sequence, according to the spanCondition.
  /// The code alternates spans; see the class doc for UnicodeSetSpanner for a note about boundary conditions.
  ///@param sequence charsequence to replace matching spans in.
  ///@param spanCondition specify whether to modify the matching spans (CONTAINED or SIMPLE) or the non-matching (NOT_CONTAINED)
  ///@return modified string.
  jni.JniString deleteFrom1(jni.JniObject sequence,
          unicodeset_.UnicodeSet_SpanCondition spanCondition) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_deleteFrom1,
          jni.JniType.objectType,
          [sequence.reference, spanCondition.reference]).object);

  static final _id_replaceFrom = jniAccessors.getMethodIDOf(
      _classRef,
      "replaceFrom",
      "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;");

  /// from: public java.lang.String replaceFrom(java.lang.CharSequence sequence, java.lang.CharSequence replacement)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Replace all matching spans in sequence by the replacement,
  /// counting by CountMethod.MIN_ELEMENTS using SpanCondition.SIMPLE.
  /// The code alternates spans; see the class doc for UnicodeSetSpanner for a note about boundary conditions.
  ///@param sequence charsequence to replace matching spans in.
  ///@param replacement replacement sequence. To delete, use ""
  ///@return modified string.
  jni.JniString replaceFrom(
          jni.JniObject sequence, jni.JniObject replacement) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_replaceFrom,
          jni.JniType.objectType,
          [sequence.reference, replacement.reference]).object);

  static final _id_replaceFrom1 = jniAccessors.getMethodIDOf(
      _classRef,
      "replaceFrom",
      "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner\$CountMethod;)Ljava/lang/String;");

  /// from: public java.lang.String replaceFrom(java.lang.CharSequence sequence, java.lang.CharSequence replacement, android.icu.text.UnicodeSetSpanner.CountMethod countMethod)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Replace all matching spans in sequence by replacement, according to the CountMethod, using SpanCondition.SIMPLE.
  /// The code alternates spans; see the class doc for UnicodeSetSpanner for a note about boundary conditions.
  ///@param sequence charsequence to replace matching spans in.
  ///@param replacement replacement sequence. To delete, use ""
  ///@param countMethod whether to treat an entire span as a match, or individual elements as matches
  ///@return modified string.
  jni.JniString replaceFrom1(jni.JniObject sequence, jni.JniObject replacement,
          UnicodeSetSpanner_CountMethod countMethod) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_replaceFrom1, jni.JniType.objectType, [
        sequence.reference,
        replacement.reference,
        countMethod.reference
      ]).object);

  static final _id_replaceFrom2 = jniAccessors.getMethodIDOf(
      _classRef,
      "replaceFrom",
      "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner\$CountMethod;Landroid/icu/text/UnicodeSet\$SpanCondition;)Ljava/lang/String;");

  /// from: public java.lang.String replaceFrom(java.lang.CharSequence sequence, java.lang.CharSequence replacement, android.icu.text.UnicodeSetSpanner.CountMethod countMethod, android.icu.text.UnicodeSet.SpanCondition spanCondition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Replace all matching spans in sequence by replacement, according to the countMethod and spanCondition.
  /// The code alternates spans; see the class doc for UnicodeSetSpanner for a note about boundary conditions.
  ///@param sequence charsequence to replace matching spans in.
  ///@param replacement replacement sequence. To delete, use ""
  ///@param countMethod whether to treat an entire span as a match, or individual elements as matches
  ///@param spanCondition specify whether to modify the matching spans (CONTAINED or SIMPLE) or the non-matching
  ///            (NOT_CONTAINED)
  ///@return modified string.
  jni.JniString replaceFrom2(
          jni.JniObject sequence,
          jni.JniObject replacement,
          UnicodeSetSpanner_CountMethod countMethod,
          unicodeset_.UnicodeSet_SpanCondition spanCondition) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_replaceFrom2, jni.JniType.objectType, [
        sequence.reference,
        replacement.reference,
        countMethod.reference,
        spanCondition.reference
      ]).object);

  static final _id_trim = jniAccessors.getMethodIDOf(
      _classRef, "trim", "(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence trim(java.lang.CharSequence sequence)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a trimmed sequence (using CharSequence.subsequence()), that omits matching elements at the start and
  /// end of the string, using TrimOption.BOTH and SpanCondition.SIMPLE. For example:
  ///
  /// <pre>
  /// {@code
  ///
  ///   new UnicodeSet("[ab]").trim("abacatbab")}
  /// </pre>
  ///
  /// ... returns {@code "cat"}.
  ///@param sequence the sequence to trim
  ///@return a subsequence
  jni.JniObject trim(jni.JniObject sequence) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference, _id_trim,
          jni.JniType.objectType, [sequence.reference]).object);

  static final _id_trim1 = jniAccessors.getMethodIDOf(_classRef, "trim",
      "(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner\$TrimOption;)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence trim(java.lang.CharSequence sequence, android.icu.text.UnicodeSetSpanner.TrimOption trimOption)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a trimmed sequence (using CharSequence.subsequence()), that omits matching elements at the start or
  /// end of the string, using the trimOption and SpanCondition.SIMPLE. For example:
  ///
  /// <pre>
  /// {@code
  ///
  ///   new UnicodeSet("[ab]").trim("abacatbab", TrimOption.LEADING)}
  /// </pre>
  ///
  /// ... returns {@code "catbab"}.
  ///@param sequence the sequence to trim
  ///@param trimOption LEADING, TRAILING, or BOTH
  ///@return a subsequence
  jni.JniObject trim1(
          jni.JniObject sequence, UnicodeSetSpanner_TrimOption trimOption) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_trim1,
          jni.JniType.objectType,
          [sequence.reference, trimOption.reference]).object);

  static final _id_trim2 = jniAccessors.getMethodIDOf(_classRef, "trim",
      "(Ljava/lang/CharSequence;Landroid/icu/text/UnicodeSetSpanner\$TrimOption;Landroid/icu/text/UnicodeSet\$SpanCondition;)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence trim(java.lang.CharSequence sequence, android.icu.text.UnicodeSetSpanner.TrimOption trimOption, android.icu.text.UnicodeSet.SpanCondition spanCondition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a trimmed sequence (using CharSequence.subsequence()), that omits matching elements at the start or
  /// end of the string, depending on the trimOption and spanCondition. For example:
  ///
  /// <pre>
  /// {@code
  ///
  ///   new UnicodeSet("[ab]").trim("abacatbab", TrimOption.LEADING, SpanCondition.SIMPLE)}
  /// </pre>
  ///
  /// ... returns {@code "catbab"}.
  ///@param sequence the sequence to trim
  ///@param trimOption LEADING, TRAILING, or BOTH
  ///@param spanCondition SIMPLE, CONTAINED or NOT_CONTAINED
  ///@return a subsequence
  jni.JniObject trim2(
          jni.JniObject sequence,
          UnicodeSetSpanner_TrimOption trimOption,
          unicodeset_.UnicodeSet_SpanCondition spanCondition) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_trim2, jni.JniType.objectType, [
        sequence.reference,
        trimOption.reference,
        spanCondition.reference
      ]).object);
}

/// from: android.icu.text.UnicodeSetSpanner$TrimOption
///
/// Options for the trim() method
class UnicodeSetSpanner_TrimOption extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/UnicodeSetSpanner\$TrimOption");
  UnicodeSetSpanner_TrimOption.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(_classRef,
      "values", "()[Landroid/icu/text/UnicodeSetSpanner\$TrimOption;");

  /// from: static public android.icu.text.UnicodeSetSpanner.TrimOption[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "valueOf",
      "(Ljava/lang/String;)Landroid/icu/text/UnicodeSetSpanner\$TrimOption;");

  /// from: static public android.icu.text.UnicodeSetSpanner.TrimOption valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static UnicodeSetSpanner_TrimOption valueOf(jni.JniString name) =>
      UnicodeSetSpanner_TrimOption.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_valueOf,
              jni.JniType.objectType, [name.reference]).object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: private void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  UnicodeSetSpanner_TrimOption()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.icu.text.UnicodeSetSpanner$CountMethod
///
/// Options for replaceFrom and countIn to control how to treat each matched span.
/// It is similar to whether one is replacing [abc] by x, or [abc]* by x.
class UnicodeSetSpanner_CountMethod extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/icu/text/UnicodeSetSpanner\$CountMethod");
  UnicodeSetSpanner_CountMethod.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(_classRef,
      "values", "()[Landroid/icu/text/UnicodeSetSpanner\$CountMethod;");

  /// from: static public android.icu.text.UnicodeSetSpanner.CountMethod[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "valueOf",
      "(Ljava/lang/String;)Landroid/icu/text/UnicodeSetSpanner\$CountMethod;");

  /// from: static public android.icu.text.UnicodeSetSpanner.CountMethod valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static UnicodeSetSpanner_CountMethod valueOf(jni.JniString name) =>
      UnicodeSetSpanner_CountMethod.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_valueOf,
              jni.JniType.objectType, [name.reference]).object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: private void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  UnicodeSetSpanner_CountMethod()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}
