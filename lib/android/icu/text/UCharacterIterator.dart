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

/// from: android.icu.text.UCharacterIterator
///
/// Abstract class that defines an API for iteration on text objects.This is an interface for forward and backward
/// iteration and random access into a text object. Forward iteration is done with post-increment and backward iteration
/// is done with pre-decrement semantics, while the <code>java.text.CharacterIterator</code> interface methods provided
/// forward iteration with "pre-increment" and backward iteration with pre-decrement semantics. This API is more
/// efficient for forward iteration over code points. The other major difference is that this API can do both code unit
/// and code point iteration, <code>java.text.CharacterIterator</code> can only iterate over code units and is limited to
/// BMP (0 - 0xFFFF)
///@author Ram
class UCharacterIterator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/UCharacterIterator");
  UCharacterIterator.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int DONE
  ///
  /// Indicator that we have reached the ends of the UTF16 text.
  static const DONE = -1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: protected void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Protected default constructor for the subclasses
  UCharacterIterator()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Landroid/icu/text/Replaceable;)Landroid/icu/text/UCharacterIterator;");

  /// from: static public final android.icu.text.UCharacterIterator getInstance(android.icu.text.Replaceable source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a <code>UCharacterIterator</code> object given a <code>Replaceable</code> object.
  ///@param source a valid source as a <code>Replaceable</code> object
  ///@return UCharacterIterator object
  ///@exception IllegalArgumentException if the argument is null
  static UCharacterIterator getInstance(replaceable_.Replaceable source) =>
      UCharacterIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance,
          jni.JniType.objectType,
          [source.reference]).object);

  static final _id_getInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;");

  /// from: static public final android.icu.text.UCharacterIterator getInstance(java.lang.String source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a <code>UCharacterIterator</code> object given a source string.
  ///@param source a string
  ///@return UCharacterIterator object
  ///@exception IllegalArgumentException if the argument is null
  static UCharacterIterator getInstance1(jni.JniString source) =>
      UCharacterIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance1,
          jni.JniType.objectType,
          [source.reference]).object);

  static final _id_getInstance2 = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "([C)Landroid/icu/text/UCharacterIterator;");

  /// from: static public final android.icu.text.UCharacterIterator getInstance(char[] source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a <code>UCharacterIterator</code> object given a source character array.
  ///@param source an array of UTF-16 code units
  ///@return UCharacterIterator object
  ///@exception IllegalArgumentException if the argument is null
  static UCharacterIterator getInstance2(jni.JniObject source) =>
      UCharacterIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance2,
          jni.JniType.objectType,
          [source.reference]).object);

  static final _id_getInstance3 = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "([CII)Landroid/icu/text/UCharacterIterator;");

  /// from: static public final android.icu.text.UCharacterIterator getInstance(char[] source, int start, int limit)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a <code>UCharacterIterator</code> object given a source character array.
  ///@param source an array of UTF-16 code units
  ///@return UCharacterIterator object
  ///@exception IllegalArgumentException if the argument is null
  static UCharacterIterator getInstance3(
          jni.JniObject source, int start, int limit) =>
      UCharacterIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance3,
          jni.JniType.objectType,
          [source.reference, start, limit]).object);

  static final _id_getInstance4 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;");

  /// from: static public final android.icu.text.UCharacterIterator getInstance(java.lang.StringBuffer source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a <code>UCharacterIterator</code> object given a source StringBuffer.
  ///@param source an string buffer of UTF-16 code units
  ///@return UCharacterIterator object
  ///@exception IllegalArgumentException if the argument is null
  static UCharacterIterator getInstance4(jni.JniObject source) =>
      UCharacterIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance4,
          jni.JniType.objectType,
          [source.reference]).object);

  static final _id_getInstance5 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;");

  /// from: static public final android.icu.text.UCharacterIterator getInstance(java.text.CharacterIterator source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a <code>UCharacterIterator</code> object given a CharacterIterator.
  ///@param source a valid CharacterIterator object.
  ///@return UCharacterIterator object
  ///@exception IllegalArgumentException if the argument is null
  static UCharacterIterator getInstance5(jni.JniObject source) =>
      UCharacterIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance5,
          jni.JniType.objectType,
          [source.reference]).object);

  static final _id_getCharacterIterator = jniAccessors.getMethodIDOf(
      _classRef, "getCharacterIterator", "()Ljava/text/CharacterIterator;");

  /// from: public java.text.CharacterIterator getCharacterIterator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a <code>java.text.CharacterIterator</code> object for the underlying text of this iterator. The returned
  /// iterator is independent of this iterator.
  ///@return java.text.CharacterIterator object
  jni.JniObject getCharacterIterator() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getCharacterIterator, jni.JniType.objectType, []).object);

  static final _id_current =
      jniAccessors.getMethodIDOf(_classRef, "current", "()I");

  /// from: public abstract int current()
  ///
  /// Returns the code unit at the current index. If index is out of range, returns DONE. Index is not changed.
  ///@return current code unit
  int current() => jniAccessors.callMethodWithArgs(
      reference, _id_current, jni.JniType.intType, []).integer;

  static final _id_currentCodePoint =
      jniAccessors.getMethodIDOf(_classRef, "currentCodePoint", "()I");

  /// from: public int currentCodePoint()
  ///
  /// Returns the codepoint at the current index. If the current index is invalid, DONE is returned. If the current
  /// index points to a lead surrogate, and there is a following trail surrogate, then the code point is returned.
  /// Otherwise, the code unit at index is returned. Index is not changed.
  ///@return current codepoint
  int currentCodePoint() => jniAccessors.callMethodWithArgs(
      reference, _id_currentCodePoint, jni.JniType.intType, []).integer;

  static final _id_getLength =
      jniAccessors.getMethodIDOf(_classRef, "getLength", "()I");

  /// from: public abstract int getLength()
  ///
  /// Returns the length of the text
  ///@return length of the text
  int getLength() => jniAccessors.callMethodWithArgs(
      reference, _id_getLength, jni.JniType.intType, []).integer;

  static final _id_getIndex =
      jniAccessors.getMethodIDOf(_classRef, "getIndex", "()I");

  /// from: public abstract int getIndex()
  ///
  /// Gets the current index in text.
  ///@return current index in text.
  int getIndex() => jniAccessors.callMethodWithArgs(
      reference, _id_getIndex, jni.JniType.intType, []).integer;

  static final _id_next = jniAccessors.getMethodIDOf(_classRef, "next", "()I");

  /// from: public abstract int next()
  ///
  /// Returns the UTF16 code unit at index, and increments to the next code unit (post-increment semantics). If index
  /// is out of range, DONE is returned, and the iterator is reset to the limit of the text.
  ///@return the next UTF16 code unit, or DONE if the index is at the limit of the text.
  int next() => jniAccessors
      .callMethodWithArgs(reference, _id_next, jni.JniType.intType, []).integer;

  static final _id_nextCodePoint =
      jniAccessors.getMethodIDOf(_classRef, "nextCodePoint", "()I");

  /// from: public int nextCodePoint()
  ///
  /// Returns the code point at index, and increments to the next code point (post-increment semantics). If index does
  /// not point to a valid surrogate pair, the behavior is the same as <code>next()</code>. Otherwise the iterator is
  /// incremented past the surrogate pair, and the code point represented by the pair is returned.
  ///@return the next codepoint in text, or DONE if the index is at the limit of the text.
  int nextCodePoint() => jniAccessors.callMethodWithArgs(
      reference, _id_nextCodePoint, jni.JniType.intType, []).integer;

  static final _id_previous =
      jniAccessors.getMethodIDOf(_classRef, "previous", "()I");

  /// from: public abstract int previous()
  ///
  /// Decrement to the position of the previous code unit in the text, and return it (pre-decrement semantics). If the
  /// resulting index is less than 0, the index is reset to 0 and DONE is returned.
  ///@return the previous code unit in the text, or DONE if the new index is before the start of the text.
  int previous() => jniAccessors.callMethodWithArgs(
      reference, _id_previous, jni.JniType.intType, []).integer;

  static final _id_previousCodePoint =
      jniAccessors.getMethodIDOf(_classRef, "previousCodePoint", "()I");

  /// from: public int previousCodePoint()
  ///
  /// Retreat to the start of the previous code point in the text, and return it (pre-decrement semantics). If the
  /// index is not preceeded by a valid surrogate pair, the behavior is the same as <code>previous()</code>. Otherwise
  /// the iterator is decremented to the start of the surrogate pair, and the code point represented by the pair is
  /// returned.
  ///@return the previous code point in the text, or DONE if the new index is before the start of the text.
  int previousCodePoint() => jniAccessors.callMethodWithArgs(
      reference, _id_previousCodePoint, jni.JniType.intType, []).integer;

  static final _id_setIndex =
      jniAccessors.getMethodIDOf(_classRef, "setIndex", "(I)V");

  /// from: public abstract void setIndex(int index)
  ///
  /// Sets the index to the specified index in the text.
  ///@param index the index within the text.
  ///@exception IndexOutOfBoundsException is thrown if an invalid index is supplied
  void setIndex(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_setIndex, jni.JniType.voidType, [index]).check();

  static final _id_setToLimit =
      jniAccessors.getMethodIDOf(_classRef, "setToLimit", "()V");

  /// from: public void setToLimit()
  ///
  /// Sets the current index to the limit.
  void setToLimit() => jniAccessors.callMethodWithArgs(
      reference, _id_setToLimit, jni.JniType.voidType, []).check();

  static final _id_setToStart =
      jniAccessors.getMethodIDOf(_classRef, "setToStart", "()V");

  /// from: public void setToStart()
  ///
  /// Sets the current index to the start.
  void setToStart() => jniAccessors.callMethodWithArgs(
      reference, _id_setToStart, jni.JniType.voidType, []).check();

  static final _id_getText =
      jniAccessors.getMethodIDOf(_classRef, "getText", "([CI)I");

  /// from: public abstract int getText(char[] fillIn, int offset)
  ///
  /// Fills the buffer with the underlying text storage of the iterator If the buffer capacity is not enough a
  /// exception is thrown. The capacity of the fill in buffer should at least be equal to length of text in the
  /// iterator obtained by calling <code>getLength()</code>). __Usage:__
  ///
  /// <pre>
  ///         UChacterIterator iter = new UCharacterIterator.getInstance(text);
  ///         char[] buf = new char[iter.getLength()];
  ///         iter.getText(buf);
  ///
  ///         OR
  ///         char[] buf= new char[1];
  ///         int len = 0;
  ///         for(;;){
  ///             try{
  ///                 len = iter.getText(buf);
  ///                 break;
  ///             }catch(IndexOutOfBoundsException e){
  ///                 buf = new char[iter.getLength()];
  ///             }
  ///         }
  /// </pre>
  ///@param fillIn an array of chars to fill with the underlying UTF-16 code units.
  ///@param offset the position within the array to start putting the data.
  ///@return the number of code units added to fillIn, as a convenience
  ///@exception IndexOutOfBoundsException exception if there is not enough room after offset in the array, or if offset &lt; 0.
  int getText(jni.JniObject fillIn, int offset) =>
      jniAccessors.callMethodWithArgs(reference, _id_getText,
          jni.JniType.intType, [fillIn.reference, offset]).integer;

  static final _id_getText1 =
      jniAccessors.getMethodIDOf(_classRef, "getText", "([C)I");

  /// from: public final int getText(char[] fillIn)
  ///
  /// Convenience override for <code>getText(char[], int)</code> that provides an offset of 0.
  ///@param fillIn an array of chars to fill with the underlying UTF-16 code units.
  ///@return the number of code units added to fillIn, as a convenience
  ///@exception IndexOutOfBoundsException exception if there is not enough room in the array.
  int getText1(jni.JniObject fillIn) => jniAccessors.callMethodWithArgs(
      reference, _id_getText1, jni.JniType.intType, [fillIn.reference]).integer;

  static final _id_getText2 =
      jniAccessors.getMethodIDOf(_classRef, "getText", "()Ljava/lang/String;");

  /// from: public java.lang.String getText()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Convenience method for returning the underlying text storage as as string
  ///@return the underlying text storage in the iterator as a string
  jni.JniString getText2() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getText2, jni.JniType.objectType, []).object);

  static final _id_moveIndex =
      jniAccessors.getMethodIDOf(_classRef, "moveIndex", "(I)I");

  /// from: public int moveIndex(int delta)
  ///
  /// Moves the current position by the number of code units specified, either forward or backward depending on the
  /// sign of delta (positive or negative respectively). If the resulting index would be less than zero, the index is
  /// set to zero, and if the resulting index would be greater than limit, the index is set to limit.
  ///@param delta the number of code units to move the current index.
  ///@return the new index.
  ///@exception IndexOutOfBoundsException is thrown if an invalid index is supplied
  int moveIndex(int delta) => jniAccessors.callMethodWithArgs(
      reference, _id_moveIndex, jni.JniType.intType, [delta]).integer;

  static final _id_moveCodePointIndex =
      jniAccessors.getMethodIDOf(_classRef, "moveCodePointIndex", "(I)I");

  /// from: public int moveCodePointIndex(int delta)
  ///
  /// Moves the current position by the number of code points specified, either forward or backward depending on the
  /// sign of delta (positive or negative respectively). If the current index is at a trail surrogate then the first
  /// adjustment is by code unit, and the remaining adjustments are by code points. If the resulting index would be
  /// less than zero, the index is set to zero, and if the resulting index would be greater than limit, the index is
  /// set to limit.
  ///@param delta the number of code units to move the current index.
  ///@return the new index
  ///@exception IndexOutOfBoundsException is thrown if an invalid delta is supplied
  int moveCodePointIndex(int delta) => jniAccessors.callMethodWithArgs(
      reference, _id_moveCodePointIndex, jni.JniType.intType, [delta]).integer;

  static final _id_clone =
      jniAccessors.getMethodIDOf(_classRef, "clone", "()Ljava/lang/Object;");

  /// from: public java.lang.Object clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a copy of this iterator, independent from other iterators. If it is not possible to clone the iterator,
  /// returns null.
  ///@return copy of this iterator
  jni.JniObject clone() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_clone, jni.JniType.objectType, []).object);
}
