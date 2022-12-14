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

/// from: android.text.TextDirectionHeuristic
///
/// Interface for objects that use a heuristic for guessing at the paragraph direction by examining text.
class TextDirectionHeuristic extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/TextDirectionHeuristic");
  TextDirectionHeuristic.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_isRtl =
      jniAccessors.getMethodIDOf(_classRef, "isRtl", "([CII)Z");

  /// from: public abstract boolean isRtl(char[] array, int start, int count)
  ///
  /// Guess if a chars array is in the RTL direction or not.
  ///@param array the char array.
  ///@param start start index, inclusive.
  ///@param count the length to check, must not be negative and not greater than
  ///          {@code array.length - start}.
  ///@return true if all chars in the range are to be considered in a RTL direction,
  ///          false otherwise.
  bool isRtl(jni.JniObject array, int start, int count) =>
      jniAccessors.callMethodWithArgs(reference, _id_isRtl,
          jni.JniType.booleanType, [array.reference, start, count]).boolean;

  static final _id_isRtl1 = jniAccessors.getMethodIDOf(
      _classRef, "isRtl", "(Ljava/lang/CharSequence;II)Z");

  /// from: public abstract boolean isRtl(java.lang.CharSequence cs, int start, int count)
  ///
  /// Guess if a {@code CharSequence} is in the RTL direction or not.
  ///@param cs the CharSequence.
  ///@param start start index, inclusive.
  ///@param count the length to check, must not be negative and not greater than
  ///            {@code CharSequence.length() - start}.
  ///@return true if all chars in the range are to be considered in a RTL direction,
  ///          false otherwise.
  bool isRtl1(jni.JniObject cs, int start, int count) =>
      jniAccessors.callMethodWithArgs(reference, _id_isRtl1,
          jni.JniType.booleanType, [cs.reference, start, count]).boolean;
}
