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

import "UnicodeMatcher.dart" as unicodematcher_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.SymbolTable
///
/// An interface that defines both lookup protocol and parsing of
/// symbolic names.
///
/// This interface is used by UnicodeSet to resolve $Variable style
/// references that appear in set patterns.  RBBI and Transliteration
/// both independently implement this interface.
///
/// A symbol table maintains two kinds of mappings.  The first is
/// between symbolic names and their values.  For example, if the
/// variable with the name "start" is set to the value "alpha"
/// (perhaps, though not necessarily, through an expression such as
/// "$start=alpha"), then the call lookup("start") will return the
/// char[] array ['a', 'l', 'p', 'h', 'a'].
///
/// The second kind of mapping is between character values and
/// UnicodeMatcher objects.  This is used by RuleBasedTransliterator,
/// which uses characters in the private use area to represent objects
/// such as UnicodeSets.  If U+E015 is mapped to the UnicodeSet [a-z],
/// then lookupMatcher(0xE015) will return the UnicodeSet [a-z].
///
/// Finally, a symbol table defines parsing behavior for symbolic
/// names.  All symbolic names start with the SYMBOL_REF character.
/// When a parser encounters this character, it calls parseReference()
/// with the position immediately following the SYMBOL_REF.  The symbol
/// table parses the name, if there is one, and returns it.
class SymbolTable extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/SymbolTable");
  SymbolTable.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_lookup =
      jniAccessors.getMethodIDOf(_classRef, "lookup", "(Ljava/lang/String;)[C");

  /// from: public abstract char[] lookup(java.lang.String s)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Lookup the characters associated with this string and return it.
  /// Return <tt>null</tt> if no such name exists.  The resultant
  /// array may have length zero.
  ///@param s the symbolic name to lookup
  ///@return a char array containing the name's value, or null if
  /// there is no mapping for s.
  jni.JniObject lookup(jni.JniString s) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_lookup, jni.JniType.objectType, [s.reference]).object);

  static final _id_lookupMatcher = jniAccessors.getMethodIDOf(
      _classRef, "lookupMatcher", "(I)Landroid/icu/text/UnicodeMatcher;");

  /// from: public abstract android.icu.text.UnicodeMatcher lookupMatcher(int ch)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Lookup the UnicodeMatcher associated with the given character, and
  /// return it.  Return <tt>null</tt> if not found.
  ///@param ch a 32-bit code point from 0 to 0x10FFFF inclusive.
  ///@return the UnicodeMatcher object represented by the given
  /// character, or null if there is no mapping for ch.
  unicodematcher_.UnicodeMatcher lookupMatcher(int ch) =>
      unicodematcher_.UnicodeMatcher.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_lookupMatcher, jni.JniType.objectType, [ch]).object);

  static final _id_parseReference = jniAccessors.getMethodIDOf(
      _classRef,
      "parseReference",
      "(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;");

  /// from: public abstract java.lang.String parseReference(java.lang.String text, java.text.ParsePosition pos, int limit)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Parse a symbol reference name from the given string, starting
  /// at the given position.  If no valid symbol reference name is
  /// found, return null and leave pos unchanged.  That is, if the
  /// character at pos cannot start a name, or if pos is at or after
  /// text.length(), then return null.  This indicates an isolated
  /// SYMBOL_REF character.
  ///@param text the text to parse for the name
  ///@param pos on entry, the index of the first character to parse.
  /// This is the character following the SYMBOL_REF character.  On
  /// exit, the index after the last parsed character.  If the parse
  /// failed, pos is unchanged on exit.
  ///@param limit the index after the last character to be parsed.
  ///@return the parsed name, or null if there is no valid symbolic
  /// name at the given position.
  jni.JniString parseReference(
          jni.JniString text, jni.JniObject pos, int limit) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_parseReference,
          jni.JniType.objectType,
          [text.reference, pos.reference, limit]).object);
}
