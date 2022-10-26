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

/// from: android.icu.text.Replaceable
///
/// <code>Replaceable</code> is an interface representing a
/// string of characters that supports the replacement of a range of
/// itself with a new string of characters.  It is used by APIs that
/// change a piece of text while retaining metadata.  Metadata is data
/// other than the Unicode characters returned by char32At().  One
/// example of metadata is style attributes; another is an edit
/// history, marking each character with an author and revision number.
///
/// An implicit aspect of the <code>Replaceable</code> API is that
/// during a replace operation, new characters take on the metadata of
/// the old characters.  For example, if the string "the __bold__
/// font" has range (4, 8) replaced with "strong", then it becomes "the
/// __strong__ font".
///
/// <code>Replaceable</code> specifies ranges using a start
/// offset and a limit offset.  The range of characters thus specified
/// includes the characters at offset start..limit-1.  That is, the
/// start offset is inclusive, and the limit offset is exclusive.
///
/// <code>Replaceable</code> also includes API to access characters
/// in the string: <code>length()</code>, <code>charAt()</code>,
/// <code>char32At()</code>, and <code>extractBetween()</code>.
///
/// For a subclass to support metadata, typical behavior of
/// <code>replace()</code> is the following:
/// <ul>
///   <li>Set the metadata of the new text to the metadata of the first
///   character replaced</li>
///   <li>If no characters are replaced, use the metadata of the
///   previous character</li>
///   <li>If there is no previous character (i.e. start == 0), use the
///   following character</li>
///   <li>If there is no following character (i.e. the replaceable was
///   empty), use default metadata<br>
///   <li>If the code point U+FFFF is seen, it should be interpreted as
///   a special marker having no metadata<li>
///   </li>
/// </ul>
/// If this is not the behavior, the subclass should document any differences.
///@author Alan Liu
class Replaceable extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/Replaceable");
  Replaceable.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_length =
      jniAccessors.getMethodIDOf(_classRef, "length", "()I");

  /// from: public abstract int length()
  ///
  /// Returns the number of 16-bit code units in the text.
  ///@return number of 16-bit code units in text
  int length() => jniAccessors.callMethodWithArgs(
      reference, _id_length, jni.JniType.intType, []).integer;

  static final _id_charAt =
      jniAccessors.getMethodIDOf(_classRef, "charAt", "(I)C");

  /// from: public abstract char charAt(int offset)
  ///
  /// Returns the 16-bit code unit at the given offset into the text.
  ///@param offset an integer between 0 and <code>length()</code>-1
  /// inclusive
  ///@return 16-bit code unit of text at given offset
  int charAt(int offset) => jniAccessors.callMethodWithArgs(
      reference, _id_charAt, jni.JniType.charType, [offset]).char;

  static final _id_char32At =
      jniAccessors.getMethodIDOf(_classRef, "char32At", "(I)I");

  /// from: public abstract int char32At(int offset)
  ///
  /// Returns the 32-bit code point at the given 16-bit offset into
  /// the text.  This assumes the text is stored as 16-bit code units
  /// with surrogate pairs intermixed.  If the offset of a leading or
  /// trailing code unit of a surrogate pair is given, return the
  /// code point of the surrogate pair.
  ///
  /// Most subclasses can return
  /// <code>android.icu.text.UTF16.charAt(this, offset)</code>.
  ///@param offset an integer between 0 and <code>length()</code>-1
  /// inclusive
  ///@return 32-bit code point of text at given offset
  int char32At(int offset) => jniAccessors.callMethodWithArgs(
      reference, _id_char32At, jni.JniType.intType, [offset]).integer;

  static final _id_getChars =
      jniAccessors.getMethodIDOf(_classRef, "getChars", "(II[CI)V");

  /// from: public abstract void getChars(int srcStart, int srcLimit, char[] dst, int dstStart)
  ///
  /// Copies characters from this object into the destination
  /// character array.  The first character to be copied is at index
  /// <code>srcStart</code>; the last character to be copied is at
  /// index <code>srcLimit-1</code> (thus the total number of
  /// characters to be copied is <code>srcLimit-srcStart</code>). The
  /// characters are copied into the subarray of <code>dst</code>
  /// starting at index <code>dstStart</code> and ending at index
  /// <code>dstStart + (srcLimit-srcStart) - 1</code>.
  ///@param srcStart the beginning index to copy, inclusive; <code>0
  /// &lt;= start &lt;= limit</code>.
  ///@param srcLimit the ending index to copy, exclusive;
  /// <code>start &lt;= limit &lt;= length()</code>.
  ///@param dst the destination array.
  ///@param dstStart the start offset in the destination array.
  void getChars(int srcStart, int srcLimit, jni.JniObject dst, int dstStart) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_getChars,
          jni.JniType.voidType,
          [srcStart, srcLimit, dst.reference, dstStart]).check();

  static final _id_replace = jniAccessors.getMethodIDOf(
      _classRef, "replace", "(IILjava/lang/String;)V");

  /// from: public abstract void replace(int start, int limit, java.lang.String text)
  ///
  /// Replaces a substring of this object with the given text.
  ///
  /// Subclasses must ensure that if the text between start and
  /// limit is equal to the replacement text, that replace has no
  /// effect. That is, any metadata
  /// should be unaffected. In addition, subclasses are encouraged to
  /// check for initial and trailing identical characters, and make a
  /// smaller replacement if possible. This will preserve as much
  /// metadata as possible.
  ///@param start the beginning index, inclusive; <code>0 &lt;= start
  /// &lt;= limit</code>.
  ///@param limit the ending index, exclusive; <code>start &lt;= limit
  /// &lt;= length()</code>.
  ///@param text the text to replace characters <code>start</code>
  /// to <code>limit - 1</code>
  void replace(int start, int limit, jni.JniString text) =>
      jniAccessors.callMethodWithArgs(reference, _id_replace,
          jni.JniType.voidType, [start, limit, text.reference]).check();

  static final _id_replace1 =
      jniAccessors.getMethodIDOf(_classRef, "replace", "(II[CII)V");

  /// from: public abstract void replace(int start, int limit, char[] chars, int charsStart, int charsLen)
  ///
  /// Replaces a substring of this object with the given text.
  ///
  /// Subclasses must ensure that if the text between start and
  /// limit is equal to the replacement text, that replace has no
  /// effect. That is, any metadata
  /// should be unaffected. In addition, subclasses are encouraged to
  /// check for initial and trailing identical characters, and make a
  /// smaller replacement if possible. This will preserve as much
  /// metadata as possible.
  ///@param start the beginning index, inclusive; <code>0 &lt;= start
  /// &lt;= limit</code>.
  ///@param limit the ending index, exclusive; <code>start &lt;= limit
  /// &lt;= length()</code>.
  ///@param chars the text to replace characters <code>start</code>
  /// to <code>limit - 1</code>
  ///@param charsStart the beginning index into <code>chars</code>,
  /// inclusive; <code>0 &lt;= start &lt;= limit</code>.
  ///@param charsLen the number of characters of <code>chars</code>.
  void replace1(int start, int limit, jni.JniObject chars, int charsStart,
          int charsLen) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_replace1,
          jni.JniType.voidType,
          [start, limit, chars.reference, charsStart, charsLen]).check();

  static final _id_copy =
      jniAccessors.getMethodIDOf(_classRef, "copy", "(III)V");

  /// from: public abstract void copy(int start, int limit, int dest)
  ///
  /// Copies a substring of this object, retaining metadata.
  /// This method is used to duplicate or reorder substrings.
  /// The destination index must not overlap the source range.
  /// If <code>hasMetaData()</code> returns false, subclasses
  /// may use the naive implementation:
  ///
  /// <pre> char[] text = new char[limit - start];
  /// getChars(start, limit, text, 0);
  /// replace(dest, dest, text, 0, limit - start);</pre>
  ///@param start the beginning index, inclusive; <code>0 &lt;= start &lt;=
  /// limit</code>.
  ///@param limit the ending index, exclusive; <code>start &lt;= limit &lt;=
  /// length()</code>.
  ///@param dest the destination index.  The characters from
  /// <code>start..limit-1</code> will be copied to <code>dest</code>.
  /// Implementations of this method may assume that <code>dest &lt;= start ||
  /// dest &gt;= limit</code>.
  void copy(int start, int limit, int dest) => jniAccessors.callMethodWithArgs(
      reference, _id_copy, jni.JniType.voidType, [start, limit, dest]).check();

  static final _id_hasMetaData =
      jniAccessors.getMethodIDOf(_classRef, "hasMetaData", "()Z");

  /// from: public abstract boolean hasMetaData()
  ///
  /// R
  /// Returns true if this object contains metadata.  If a
  /// Replaceable object has metadata, calls to the Replaceable API
  /// must be made so as to preserve metadata.  If it does not, calls
  /// to the Replaceable API may be optimized to improve performance.
  ///@return true if this object contains metadata
  bool hasMetaData() => jniAccessors.callMethodWithArgs(
      reference, _id_hasMetaData, jni.JniType.booleanType, []).boolean;
}