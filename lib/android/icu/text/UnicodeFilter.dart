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
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.UnicodeFilter
///
/// <code>UnicodeFilter</code> defines a protocol for selecting a
/// subset of the full range (U+0000 to U+FFFF) of Unicode characters.
class UnicodeFilter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/UnicodeFilter");
  UnicodeFilter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_contains =
      jniAccessors.getMethodIDOf(_classRef, "contains", "(I)Z");

  /// from: public abstract boolean contains(int c)
  ///
  /// Returns <tt>true</tt> for characters that are in the selected
  /// subset.  In other words, if a character is __to be
  /// filtered__, then <tt>contains()</tt> returns
  /// __<tt>false</tt>__.
  bool contains(int c) => jniAccessors.callMethodWithArgs(
      reference, _id_contains, jni.JniType.booleanType, [c]).boolean;

  static final _id_matches = jniAccessors.getMethodIDOf(
      _classRef, "matches", "(Landroid/icu/text/Replaceable;[IIZ)I");

  /// from: public int matches(android.icu.text.Replaceable text, int[] offset, int limit, boolean incremental)
  ///
  /// Default implementation of UnicodeMatcher::matches() for Unicode
  /// filters.  Matches a single 16-bit code unit at offset.
  int matches(replaceable_.Replaceable text, jni.JniObject offset, int limit,
          bool incremental) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_matches,
          jni.JniType.intType,
          [text.reference, offset.reference, limit, incremental]).integer;
}
