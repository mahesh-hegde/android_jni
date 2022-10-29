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

import "Replaceable.dart" as replaceable_;

import "UnicodeSet.dart" as unicodeset_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.UnicodeMatcher
///
/// <code>UnicodeMatcher</code> defines a protocol for objects that can
/// match a range of characters in a Replaceable string.
class UnicodeMatcher extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/UnicodeMatcher");
  UnicodeMatcher.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final char ETHER
  ///
  /// The character at index i, where i &lt; contextStart || i &gt;= contextLimit,
  /// is ETHER.  This allows explicit matching by rules and UnicodeSets
  /// of text outside the context.  In traditional terms, this allows anchoring
  /// at the start and/or end.
  static const ETHER = "￿";

  /// from: static public final int U_MATCH
  ///
  /// Constant returned by <code>matches()</code> indicating a
  /// complete match between the text and this matcher.  For an
  /// incremental variable-length match, this value is returned if
  /// the given text matches, and it is known that additional
  /// characters would not alter the extent of the match.
  static const U_MATCH = 2;

  /// from: static public final int U_MISMATCH
  ///
  /// Constant returned by <code>matches()</code> indicating a
  /// mismatch between the text and this matcher.  The text contains
  /// a character which does not match, or the text does not contain
  /// all desired characters for a non-incremental match.
  static const U_MISMATCH = 0;

  /// from: static public final int U_PARTIAL_MATCH
  ///
  /// Constant returned by <code>matches()</code> indicating a
  /// partial match between the text and this matcher.  This value is
  /// only returned for incremental match operations.  All characters
  /// of the text match, but more characters are required for a
  /// complete match.  Alternatively, for variable-length matchers,
  /// all characters of the text match, and if more characters were
  /// supplied at limit, they might also match.
  static const U_PARTIAL_MATCH = 1;

  static final _id_matches = jniAccessors.getMethodIDOf(
      _classRef, "matches", "(Landroid/icu/text/Replaceable;[IIZ)I");

  /// from: public abstract int matches(android.icu.text.Replaceable text, int[] offset, int limit, boolean incremental)
  ///
  /// Return a UMatchDegree value indicating the degree of match for
  /// the given text at the given offset.  Zero, one, or more
  /// characters may be matched.
  ///
  /// Matching in the forward direction is indicated by limit &gt;
  /// offset.  Characters from offset forwards to limit-1 will be
  /// considered for matching.
  ///
  /// Matching in the reverse direction is indicated by limit &lt;
  /// offset.  Characters from offset backwards to limit+1 will be
  /// considered for matching.
  ///
  /// If limit == offset then the only match possible is a zero
  /// character match (which subclasses may implement if desired).
  ///
  /// If U_MATCH is returned, then as a side effect, advance the
  /// offset parameter to the limit of the matched substring.  In the
  /// forward direction, this will be the index of the last matched
  /// character plus one.  In the reverse direction, this will be the
  /// index of the last matched character minus one.
  ///@param text the text to be matched
  ///@param offset on input, the index into text at which to begin
  /// matching.  On output, the limit of the matched text.  The
  /// number of matched characters is the output value of offset
  /// minus the input value.  Offset should always point to the
  /// HIGH SURROGATE (leading code unit) of a pair of surrogates,
  /// both on entry and upon return.
  ///@param limit the limit index of text to be matched.  Greater
  /// than offset for a forward direction match, less than offset for
  /// a backward direction match.  The last character to be
  /// considered for matching will be text.charAt(limit-1) in the
  /// forward direction or text.charAt(limit+1) in the backward
  /// direction.
  ///@param incremental if TRUE, then assume further characters may
  /// be inserted at limit and check for partial matching.  Otherwise
  /// assume the text as given is complete.
  ///@return a match degree value indicating a full match, a partial
  /// match, or a mismatch.  If incremental is FALSE then
  /// U_PARTIAL_MATCH should never be returned.
  int matches(replaceable_.Replaceable text, jni.JniObject offset, int limit,
          bool incremental) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_matches,
          jni.JniType.intType,
          [text.reference, offset.reference, limit, incremental]).integer;

  static final _id_toPattern = jniAccessors.getMethodIDOf(
      _classRef, "toPattern", "(Z)Ljava/lang/String;");

  /// from: public abstract java.lang.String toPattern(boolean escapeUnprintable)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a string representation of this matcher.  If the result of
  /// calling this function is passed to the appropriate parser, it
  /// will produce another matcher that is equal to this one.
  ///@param escapeUnprintable if TRUE then convert unprintable
  /// character to their hex escape representations, \\uxxxx or
  /// \\Uxxxxxxxx.  Unprintable characters are those other than
  /// U+000A, U+0020..U+007E.
  jni.JniString toPattern(bool escapeUnprintable) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_toPattern, jni.JniType.objectType, [escapeUnprintable]).object);

  static final _id_matchesIndexValue =
      jniAccessors.getMethodIDOf(_classRef, "matchesIndexValue", "(I)Z");

  /// from: public abstract boolean matchesIndexValue(int v)
  ///
  /// Returns TRUE if this matcher will match a character c, where c
  /// &amp; 0xFF == v, at offset, in the forward direction (with limit &gt;
  /// offset).  This is used by <tt>RuleBasedTransliterator</tt> for
  /// indexing.
  ///
  /// Note:  This API uses an int even though the value will be
  /// restricted to 8 bits in order to avoid complications with
  /// signedness (bytes convert to ints in the range -128..127).
  bool matchesIndexValue(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_matchesIndexValue, jni.JniType.booleanType, [v]).boolean;

  static final _id_addMatchSetTo = jniAccessors.getMethodIDOf(
      _classRef, "addMatchSetTo", "(Landroid/icu/text/UnicodeSet;)V");

  /// from: public abstract void addMatchSetTo(android.icu.text.UnicodeSet toUnionTo)
  ///
  /// Union the set of all characters that may be matched by this object
  /// into the given set.
  ///@param toUnionTo the set into which to union the source characters
  void addMatchSetTo(unicodeset_.UnicodeSet toUnionTo) =>
      jniAccessors.callMethodWithArgs(reference, _id_addMatchSetTo,
          jni.JniType.voidType, [toUnionTo.reference]).check();
}
