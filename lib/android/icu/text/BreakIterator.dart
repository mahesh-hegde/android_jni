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

import "../util/ULocale.dart" as ulocale_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.BreakIterator
///
/// <strong>[icu enhancement]</strong> ICU's replacement for java.text.BreakIterator.&nbsp;Methods, fields, and other functionality specific to ICU are labeled '<strong>[icu]</strong>'.
///
/// A class that locates boundaries in text.  This class defines a protocol for
/// objects that break up a piece of natural-language text according to a set
/// of criteria.  Instances or subclasses of BreakIterator can be provided, for
/// example, to break a piece of text into words, sentences, or logical characters
/// according to the conventions of some language or group of languages.
///
/// We provide five built-in types of BreakIterator:
/// <ul><li>getTitleInstance() returns a BreakIterator that locates boundaries
/// between title breaks.
/// <li>getSentenceInstance() returns a BreakIterator that locates boundaries
/// between sentences.  This is useful for triple-click selection, for example.
/// <li>getWordInstance() returns a BreakIterator that locates boundaries between
/// words.  This is useful for double-click selection or "find whole words" searches.
/// This type of BreakIterator makes sure there is a boundary position at the
/// beginning and end of each legal word.  (Numbers count as words, too.)  Whitespace
/// and punctuation are kept separate from real words.
/// <li>getLineInstance() returns a BreakIterator that locates positions where it is
/// legal for a text editor to wrap lines.  This is similar to word breaking, but
/// not the same: punctuation and whitespace are generally kept with words (you don't
/// want a line to start with whitespace, for example), and some special characters
/// can force a position to be considered a line-break position or prevent a position
/// from being a line-break position.
/// <li>getCharacterInstance() returns a BreakIterator that locates boundaries between
/// logical characters.  Because of the structure of the Unicode encoding, a logical
/// character may be stored internally as more than one Unicode code point.  (A with an
/// umlaut may be stored as an a followed by a separate combining umlaut character,
/// for example, but the user still thinks of it as one character.)  This iterator allows
/// various processes (especially text editors) to treat as characters the units of text
/// that a user would think of as characters, rather than the units of text that the
/// computer sees as "characters".</ul>
/// The text boundary positions are found according to the rules
/// described in Unicode Standard Annex \#29, Text Boundaries, and
/// Unicode Standard Annex \#14, Line Breaking Properties.  These
/// are available at http://www.unicode.org/reports/tr14/ and
/// http://www.unicode.org/reports/tr29/.
///
/// BreakIterator's interface follows an "iterator" model (hence the name), meaning it
/// has a concept of a "current position" and methods like first(), last(), next(),
/// and previous() that update the current position.  All BreakIterators uphold the
/// following invariants:
/// <ul><li>The beginning and end of the text are always treated as boundary positions.
/// <li>The current position of the iterator is always a boundary position (random-
/// access methods move the iterator to the nearest boundary position before or
/// after the specified position, not _to_ the specified position).
/// <li>DONE is used as a flag to indicate when iteration has stopped.  DONE is only
/// returned when the current position is the end of the text and the user calls next(),
/// or when the current position is the beginning of the text and the user calls
/// previous().
/// <li>Break positions are numbered by the positions of the characters that follow
/// them.  Thus, under normal circumstances, the position before the first character
/// is 0, the position after the first character is 1, and the position after the
/// last character is 1 plus the length of the string.
/// <li>The client can change the position of an iterator, or the text it analyzes,
/// at will, but cannot change the behavior.  If the user wants different behavior, he
/// must instantiate a new iterator.</ul>
///
/// BreakIterator accesses the text it analyzes through a CharacterIterator, which makes
/// it possible to use BreakIterator to analyze text in any text-storage vehicle that
/// provides a CharacterIterator interface. When BreakIterator.setText(CharacterIterator) or
/// getText() was called, the CharacterIterator must not be modified, or else the BreakIterator
/// behavior is undefined. In particular, call BreakIterator.setText(),
/// not CharacterIterator.setText().
///
/// __Note:__  Some types of BreakIterator can take a long time to create, and
/// instances of BreakIterator are not currently cached by the system.  For
/// optimal performance, keep instances of BreakIterator around as long as makes
/// sense.  For example, when word-wrapping a document, don't create and destroy a
/// new BreakIterator for each line.  Create one break iterator for the whole document
/// (or whatever stretch of text you're wrapping) and use it to do the whole job of
/// wrapping the text.
///
/// <P>
/// <strong>Examples</strong>:<P>
/// Creating and using text boundaries
/// <blockquote>
/// <pre>
/// public static void main(String args[]) {
///      if (args.length == 1) {
///          String stringToExamine = args[0];
///          //print each word in order
///          BreakIterator boundary = BreakIterator.getWordInstance();
///          boundary.setText(stringToExamine);
///          printEachForward(boundary, stringToExamine);
///          //print each sentence in reverse order
///          boundary = BreakIterator.getSentenceInstance(Locale.US);
///          boundary.setText(stringToExamine);
///          printEachBackward(boundary, stringToExamine);
///          printFirst(boundary, stringToExamine);
///          printLast(boundary, stringToExamine);
///      }
/// }
/// </pre>
/// </blockquote>
///
/// Print each element in order
/// <blockquote>
/// <pre>
/// public static void printEachForward(BreakIterator boundary, String source) {
///     int start = boundary.first();
///     for (int end = boundary.next();
///          end != BreakIterator.DONE;
///          start = end, end = boundary.next()) {
///          System.out.println(source.substring(start,end));
///     }
/// }
/// </pre>
/// </blockquote>
///
/// Print each element in reverse order
/// <blockquote>
/// <pre>
/// public static void printEachBackward(BreakIterator boundary, String source) {
///     int end = boundary.last();
///     for (int start = boundary.previous();
///          start != BreakIterator.DONE;
///          end = start, start = boundary.previous()) {
///         System.out.println(source.substring(start,end));
///     }
/// }
/// </pre>
/// </blockquote>
///
/// Print first element
/// <blockquote>
/// <pre>
/// public static void printFirst(BreakIterator boundary, String source) {
///     int start = boundary.first();
///     int end = boundary.next();
///     System.out.println(source.substring(start,end));
/// }
/// </pre>
/// </blockquote>
///
/// Print last element
/// <blockquote>
/// <pre>
/// public static void printLast(BreakIterator boundary, String source) {
///     int end = boundary.last();
///     int start = boundary.previous();
///     System.out.println(source.substring(start,end));
/// }
/// </pre>
/// </blockquote>
///
/// Print the element at a specified position
/// <blockquote>
/// <pre>
/// public static void printAt(BreakIterator boundary, int pos, String source) {
///     int end = boundary.following(pos);
///     int start = boundary.previous();
///     System.out.println(source.substring(start,end));
/// }
/// </pre>
/// </blockquote>
///
/// Find the next word
/// <blockquote>
/// <pre>
/// public static int nextWordStartAfter(int pos, String text) {
///     BreakIterator wb = BreakIterator.getWordInstance();
///     wb.setText(text);
///     int wordStart = wb.following(pos);
///     for (;;) {
///         int wordLimit = wb.next();
///         if (wordLimit == BreakIterator.DONE) {
///             return BreakIterator.DONE;
///         }
///         int wordStatus = wb.getRuleStatus();
///         if (wordStatus != BreakIterator.WORD_NONE) {
///             return wordStart;
///         }
///         wordStart = wordLimit;
///      }
/// }
/// </pre>
/// The iterator returned by \#getWordInstance is unique in that
/// the break positions it returns don't represent both the start and end of the
/// thing being iterated over.  That is, a sentence-break iterator returns breaks
/// that each represent the end of one sentence and the beginning of the next.
/// With the word-break iterator, the characters between two boundaries might be a
/// word, or they might be the punctuation or whitespace between two words.  The
/// above code uses \#getRuleStatus to identify and ignore boundaries associated
/// with punctuation or other non-word characters.
/// </blockquote>
///@see CharacterIterator
class BreakIterator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/BreakIterator");
  BreakIterator.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int DONE
  ///
  /// DONE is returned by previous() and next() after all valid
  /// boundaries have been returned.
  static const DONE = -1;

  /// from: static public final int KIND_CHARACTER
  ///
  /// <strong>[icu]</strong>
  static const KIND_CHARACTER = 0;

  /// from: static public final int KIND_LINE
  ///
  /// <strong>[icu]</strong>
  static const KIND_LINE = 2;

  /// from: static public final int KIND_SENTENCE
  ///
  /// <strong>[icu]</strong>
  static const KIND_SENTENCE = 3;

  /// from: static public final int KIND_TITLE
  ///
  /// <strong>[icu]</strong>
  static const KIND_TITLE = 4;

  /// from: static public final int KIND_WORD
  ///
  /// <strong>[icu]</strong>
  static const KIND_WORD = 1;

  /// from: static public final int WORD_IDEO
  ///
  /// Tag value for words containing ideographic characters, lower limit
  static const WORD_IDEO = 400;

  /// from: static public final int WORD_IDEO_LIMIT
  ///
  /// Tag value for words containing ideographic characters, upper limit
  static const WORD_IDEO_LIMIT = 500;

  /// from: static public final int WORD_KANA
  ///
  /// Tag value for words containing kana characters, lower limit
  static const WORD_KANA = 300;

  /// from: static public final int WORD_KANA_LIMIT
  ///
  /// Tag value for words containing kana characters, upper limit
  static const WORD_KANA_LIMIT = 400;

  /// from: static public final int WORD_LETTER
  ///
  /// Tag value for words that contain letters, excluding
  /// hiragana, katakana or ideographic characters, lower limit.
  static const WORD_LETTER = 200;

  /// from: static public final int WORD_LETTER_LIMIT
  ///
  /// Tag value for words containing letters, upper limit
  static const WORD_LETTER_LIMIT = 300;

  /// from: static public final int WORD_NONE
  ///
  /// Tag value for "words" that do not fit into any of other categories.
  /// Includes spaces and most punctuation.
  static const WORD_NONE = 0;

  /// from: static public final int WORD_NONE_LIMIT
  ///
  /// Upper bound for tags for uncategorized words.
  static const WORD_NONE_LIMIT = 100;

  /// from: static public final int WORD_NUMBER
  ///
  /// Tag value for words that appear to be numbers, lower limit.
  static const WORD_NUMBER = 100;

  /// from: static public final int WORD_NUMBER_LIMIT
  ///
  /// Tag value for words that appear to be numbers, upper limit.
  static const WORD_NUMBER_LIMIT = 200;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: protected void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Default constructor.  There is no state that is carried by this abstract
  /// base class.
  BreakIterator()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_clone =
      jniAccessors.getMethodIDOf(_classRef, "clone", "()Ljava/lang/Object;");

  /// from: public java.lang.Object clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Clone method.  Creates another BreakIterator with the same behavior and
  /// current state as this one.
  ///@return The clone.
  jni.JniObject clone() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_clone, jni.JniType.objectType, []).object);

  static final _id_first =
      jniAccessors.getMethodIDOf(_classRef, "first", "()I");

  /// from: public abstract int first()
  ///
  /// Set the iterator to the first boundary position.  This is always the beginning
  /// index of the text this iterator iterates over.  For example, if
  /// the iterator iterates over a whole string, this function will
  /// always return 0.
  ///@return The character offset of the beginning of the stretch of text
  /// being broken.
  int first() => jniAccessors.callMethodWithArgs(
      reference, _id_first, jni.JniType.intType, []).integer;

  static final _id_last = jniAccessors.getMethodIDOf(_classRef, "last", "()I");

  /// from: public abstract int last()
  ///
  /// Set the iterator to the last boundary position.  This is always the "past-the-end"
  /// index of the text this iterator iterates over.  For example, if the
  /// iterator iterates over a whole string (call it "text"), this function
  /// will always return text.length().
  ///@return The character offset of the end of the stretch of text
  /// being broken.
  int last() => jniAccessors
      .callMethodWithArgs(reference, _id_last, jni.JniType.intType, []).integer;

  static final _id_next = jniAccessors.getMethodIDOf(_classRef, "next", "(I)I");

  /// from: public abstract int next(int n)
  ///
  /// Move the iterator by the specified number of steps in the text.
  /// A positive number moves the iterator forward; a negative number
  /// moves the iterator backwards. If this causes the iterator
  /// to move off either end of the text, this function returns DONE;
  /// otherwise, this function returns the position of the appropriate
  /// boundary.  Calling this function is equivalent to calling next() or
  /// previous() n times.
  ///@param n The number of boundaries to advance over (if positive, moves
  /// forward; if negative, moves backwards).
  ///@return The position of the boundary n boundaries from the current
  /// iteration position, or DONE if moving n boundaries causes the iterator
  /// to advance off either end of the text.
  int next(int n) => jniAccessors.callMethodWithArgs(
      reference, _id_next, jni.JniType.intType, [n]).integer;

  static final _id_next1 = jniAccessors.getMethodIDOf(_classRef, "next", "()I");

  /// from: public abstract int next()
  ///
  /// Advances the iterator forward one boundary.  The current iteration
  /// position is updated to point to the next boundary position after the
  /// current position, and this is also the value that is returned.  If
  /// the current position is equal to the value returned by last(), or to
  /// DONE, this function returns DONE and sets the current position to
  /// DONE.
  ///@return The position of the first boundary position following the
  /// iteration position.
  int next1() => jniAccessors.callMethodWithArgs(
      reference, _id_next1, jni.JniType.intType, []).integer;

  static final _id_previous =
      jniAccessors.getMethodIDOf(_classRef, "previous", "()I");

  /// from: public abstract int previous()
  ///
  /// Move the iterator backward one boundary.  The current iteration
  /// position is updated to point to the last boundary position before
  /// the current position, and this is also the value that is returned.  If
  /// the current position is equal to the value returned by first(), or to
  /// DONE, this function returns DONE and sets the current position to
  /// DONE.
  ///@return The position of the last boundary position preceding the
  /// iteration position.
  int previous() => jniAccessors.callMethodWithArgs(
      reference, _id_previous, jni.JniType.intType, []).integer;

  static final _id_following =
      jniAccessors.getMethodIDOf(_classRef, "following", "(I)I");

  /// from: public abstract int following(int offset)
  ///
  /// Sets the iterator's current iteration position to be the first
  /// boundary position following the specified position.  (Whether the
  /// specified position is itself a boundary position or not doesn't
  /// matter-- this function always moves the iteration position to the
  /// first boundary after the specified position.)  If the specified
  /// position is the past-the-end position, returns DONE.
  ///@param offset The character position to start searching from.
  ///@return The position of the first boundary position following
  /// "offset" (whether or not "offset" itself is a boundary position),
  /// or DONE if "offset" is the past-the-end offset.
  int following(int offset) => jniAccessors.callMethodWithArgs(
      reference, _id_following, jni.JniType.intType, [offset]).integer;

  static final _id_preceding =
      jniAccessors.getMethodIDOf(_classRef, "preceding", "(I)I");

  /// from: public int preceding(int offset)
  ///
  /// Sets the iterator's current iteration position to be the last
  /// boundary position preceding the specified position.  (Whether the
  /// specified position is itself a boundary position or not doesn't
  /// matter-- this function always moves the iteration position to the
  /// last boundary before the specified position.)  If the specified
  /// position is the starting position, returns DONE.
  ///@param offset The character position to start searching from.
  ///@return The position of the last boundary position preceding
  /// "offset" (whether of not "offset" itself is a boundary position),
  /// or DONE if "offset" is the starting offset of the iterator.
  int preceding(int offset) => jniAccessors.callMethodWithArgs(
      reference, _id_preceding, jni.JniType.intType, [offset]).integer;

  static final _id_isBoundary =
      jniAccessors.getMethodIDOf(_classRef, "isBoundary", "(I)Z");

  /// from: public boolean isBoundary(int offset)
  ///
  /// Return true if the specified position is a boundary position.  If the
  /// function returns true, the current iteration position is set to the
  /// specified position; if the function returns false, the current
  /// iteration position is set as though following() had been called.
  ///@param offset the offset to check.
  ///@return True if "offset" is a boundary position.
  bool isBoundary(int offset) => jniAccessors.callMethodWithArgs(
      reference, _id_isBoundary, jni.JniType.booleanType, [offset]).boolean;

  static final _id_current =
      jniAccessors.getMethodIDOf(_classRef, "current", "()I");

  /// from: public abstract int current()
  ///
  /// Return the iterator's current position.
  ///@return The iterator's current position.
  int current() => jniAccessors.callMethodWithArgs(
      reference, _id_current, jni.JniType.intType, []).integer;

  static final _id_getRuleStatus =
      jniAccessors.getMethodIDOf(_classRef, "getRuleStatus", "()I");

  /// from: public int getRuleStatus()
  ///
  /// For RuleBasedBreakIterators, return the status tag from the
  /// break rule that determined the most recently
  /// returned break position.
  ///
  /// For break iterator types that do not support a rule status,
  /// a default value of 0 is returned.
  ///
  ///@return The status from the break rule that determined the most recently
  ///         returned break position.
  int getRuleStatus() => jniAccessors.callMethodWithArgs(
      reference, _id_getRuleStatus, jni.JniType.intType, []).integer;

  static final _id_getRuleStatusVec =
      jniAccessors.getMethodIDOf(_classRef, "getRuleStatusVec", "([I)I");

  /// from: public int getRuleStatusVec(int[] fillInArray)
  ///
  /// For RuleBasedBreakIterators, get the status (tag) values from the break rule(s)
  /// that determined the most recently returned break position.
  ///
  /// For break iterator types that do not support rule status,
  /// no values are returned.
  ///
  /// If the size  of the output array is insufficient to hold the data,
  ///  the output will be truncated to the available length.  No exception
  ///  will be thrown.
  ///@param fillInArray an array to be filled in with the status values.
  ///@return The number of rule status values from rules that determined
  ///                  the most recent boundary returned by the break iterator.
  ///                  In the event that the array is too small, the return value
  ///                  is the total number of status values that were available,
  ///                  not the reduced number that were actually returned.
  int getRuleStatusVec(jni.JniObject fillInArray) =>
      jniAccessors.callMethodWithArgs(reference, _id_getRuleStatusVec,
          jni.JniType.intType, [fillInArray.reference]).integer;

  static final _id_getText = jniAccessors.getMethodIDOf(
      _classRef, "getText", "()Ljava/text/CharacterIterator;");

  /// from: public abstract java.text.CharacterIterator getText()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a CharacterIterator over the text being analyzed.
  /// For at least some subclasses of BreakIterator, this is a reference
  /// to the __actual iterator being used__ by the BreakIterator,
  /// and therefore, this function's return value should be treated as
  /// <tt>const</tt>.  No guarantees are made about the current position
  /// of this iterator when it is returned.  If you need to move that
  /// position to examine the text, clone this function's return value first.
  ///@return A CharacterIterator over the text being analyzed.
  jni.JniObject getText() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getText, jni.JniType.objectType, []).object);

  static final _id_setText =
      jniAccessors.getMethodIDOf(_classRef, "setText", "(Ljava/lang/String;)V");

  /// from: public void setText(java.lang.String newText)
  ///
  /// Sets the iterator to analyze a new piece of text.  The new
  /// piece of text is passed in as a String, and the current
  /// iteration position is reset to the beginning of the string.
  /// (The old text is dropped.)
  ///@param newText A String containing the text to analyze with
  /// this BreakIterator.
  void setText(jni.JniString newText) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setText,
      jni.JniType.voidType,
      [newText.reference]).check();

  static final _id_setText1 = jniAccessors.getMethodIDOf(
      _classRef, "setText", "(Ljava/text/CharacterIterator;)V");

  /// from: public abstract void setText(java.text.CharacterIterator newText)
  ///
  /// Sets the iterator to analyze a new piece of text.  The
  /// BreakIterator is passed a CharacterIterator through which
  /// it will access the text itself.  The current iteration
  /// position is reset to the CharacterIterator's start index.
  /// (The old iterator is dropped.)
  ///@param newText A CharacterIterator referring to the text
  /// to analyze with this BreakIterator (the iterator's current
  /// position is ignored, but its other state is significant).
  void setText1(jni.JniObject newText) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setText1,
      jni.JniType.voidType,
      [newText.reference]).check();

  static final _id_getWordInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getWordInstance", "()Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getWordInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a new instance of BreakIterator that locates word boundaries.
  /// This function assumes that the text being analyzed is in the default
  /// locale's language.
  ///@return An instance of BreakIterator that locates word boundaries.
  static BreakIterator getWordInstance() =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getWordInstance, jni.JniType.objectType, []).object);

  static final _id_getWordInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getWordInstance",
      "(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getWordInstance(java.util.Locale where)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a new instance of BreakIterator that locates word boundaries.
  ///@param where A locale specifying the language of the text to be
  /// analyzed.
  ///@return An instance of BreakIterator that locates word boundaries.
  ///@throws NullPointerException if <code>where</code> is null.
  static BreakIterator getWordInstance1(jni.JniObject where) =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getWordInstance1,
          jni.JniType.objectType,
          [where.reference]).object);

  static final _id_getWordInstance2 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getWordInstance",
      "(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getWordInstance(android.icu.util.ULocale where)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Returns a new instance of BreakIterator that locates word boundaries.
  ///@param where A locale specifying the language of the text to be
  /// analyzed.
  ///@return An instance of BreakIterator that locates word boundaries.
  ///@throws NullPointerException if <code>where</code> is null.
  static BreakIterator getWordInstance2(ulocale_.ULocale where) =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getWordInstance2,
          jni.JniType.objectType,
          [where.reference]).object);

  static final _id_getLineInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getLineInstance", "()Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getLineInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a new instance of BreakIterator that locates legal line-
  /// wrapping positions.  This function assumes the text being broken
  /// is in the default locale's language.
  ///@return A new instance of BreakIterator that locates legal
  /// line-wrapping positions.
  static BreakIterator getLineInstance() =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getLineInstance, jni.JniType.objectType, []).object);

  static final _id_getLineInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getLineInstance",
      "(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getLineInstance(java.util.Locale where)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a new instance of BreakIterator that locates legal line-
  /// wrapping positions.
  ///@param where A Locale specifying the language of the text being broken.
  ///@return A new instance of BreakIterator that locates legal
  /// line-wrapping positions.
  ///@throws NullPointerException if <code>where</code> is null.
  static BreakIterator getLineInstance1(jni.JniObject where) =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getLineInstance1,
          jni.JniType.objectType,
          [where.reference]).object);

  static final _id_getLineInstance2 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getLineInstance",
      "(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getLineInstance(android.icu.util.ULocale where)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Returns a new instance of BreakIterator that locates legal line-
  /// wrapping positions.
  ///@param where A Locale specifying the language of the text being broken.
  ///@return A new instance of BreakIterator that locates legal
  /// line-wrapping positions.
  ///@throws NullPointerException if <code>where</code> is null.
  static BreakIterator getLineInstance2(ulocale_.ULocale where) =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getLineInstance2,
          jni.JniType.objectType,
          [where.reference]).object);

  static final _id_getCharacterInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getCharacterInstance", "()Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getCharacterInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a new instance of BreakIterator that locates logical-character
  /// boundaries.  This function assumes that the text being analyzed is
  /// in the default locale's language.
  ///@return A new instance of BreakIterator that locates logical-character
  /// boundaries.
  static BreakIterator getCharacterInstance() =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getCharacterInstance, jni.JniType.objectType, []).object);

  static final _id_getCharacterInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getCharacterInstance",
      "(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getCharacterInstance(java.util.Locale where)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a new instance of BreakIterator that locates logical-character
  /// boundaries.
  ///@param where A Locale specifying the language of the text being analyzed.
  ///@return A new instance of BreakIterator that locates logical-character
  /// boundaries.
  ///@throws NullPointerException if <code>where</code> is null.
  static BreakIterator getCharacterInstance1(jni.JniObject where) =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getCharacterInstance1,
          jni.JniType.objectType,
          [where.reference]).object);

  static final _id_getCharacterInstance2 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getCharacterInstance",
      "(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getCharacterInstance(android.icu.util.ULocale where)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Returns a new instance of BreakIterator that locates logical-character
  /// boundaries.
  ///@param where A Locale specifying the language of the text being analyzed.
  ///@return A new instance of BreakIterator that locates logical-character
  /// boundaries.
  ///@throws NullPointerException if <code>where</code> is null.
  static BreakIterator getCharacterInstance2(ulocale_.ULocale where) =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getCharacterInstance2,
          jni.JniType.objectType,
          [where.reference]).object);

  static final _id_getSentenceInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getSentenceInstance", "()Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getSentenceInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a new instance of BreakIterator that locates sentence boundaries.
  /// This function assumes the text being analyzed is in the default locale's
  /// language.
  ///@return A new instance of BreakIterator that locates sentence boundaries.
  static BreakIterator getSentenceInstance() =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getSentenceInstance, jni.JniType.objectType, []).object);

  static final _id_getSentenceInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getSentenceInstance",
      "(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getSentenceInstance(java.util.Locale where)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a new instance of BreakIterator that locates sentence boundaries.
  ///@param where A Locale specifying the language of the text being analyzed.
  ///@return A new instance of BreakIterator that locates sentence boundaries.
  ///@throws NullPointerException if <code>where</code> is null.
  static BreakIterator getSentenceInstance1(jni.JniObject where) =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getSentenceInstance1,
          jni.JniType.objectType,
          [where.reference]).object);

  static final _id_getSentenceInstance2 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getSentenceInstance",
      "(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getSentenceInstance(android.icu.util.ULocale where)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Returns a new instance of BreakIterator that locates sentence boundaries.
  ///@param where A Locale specifying the language of the text being analyzed.
  ///@return A new instance of BreakIterator that locates sentence boundaries.
  ///@throws NullPointerException if <code>where</code> is null.
  static BreakIterator getSentenceInstance2(ulocale_.ULocale where) =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getSentenceInstance2,
          jni.JniType.objectType,
          [where.reference]).object);

  static final _id_getTitleInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getTitleInstance", "()Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getTitleInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Returns a new instance of BreakIterator that locates title boundaries.
  /// This function assumes the text being analyzed is in the default locale's
  /// language. The iterator returned locates title boundaries as described for
  /// Unicode 3.2 only. For Unicode 4.0 and above title boundary iteration,
  /// please use a word boundary iterator. \#getWordInstance
  ///@return A new instance of BreakIterator that locates title boundaries.
  static BreakIterator getTitleInstance() =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getTitleInstance, jni.JniType.objectType, []).object);

  static final _id_getTitleInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getTitleInstance",
      "(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getTitleInstance(java.util.Locale where)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Returns a new instance of BreakIterator that locates title boundaries.
  /// The iterator returned locates title boundaries as described for
  /// Unicode 3.2 only. For Unicode 4.0 and above title boundary iteration,
  /// please use Word Boundary iterator.\#getWordInstance
  ///@param where A Locale specifying the language of the text being analyzed.
  ///@return A new instance of BreakIterator that locates title boundaries.
  ///@throws NullPointerException if <code>where</code> is null.
  static BreakIterator getTitleInstance1(jni.JniObject where) =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getTitleInstance1,
          jni.JniType.objectType,
          [where.reference]).object);

  static final _id_getTitleInstance2 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getTitleInstance",
      "(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;");

  /// from: static public android.icu.text.BreakIterator getTitleInstance(android.icu.util.ULocale where)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Returns a new instance of BreakIterator that locates title boundaries.
  /// The iterator returned locates title boundaries as described for
  /// Unicode 3.2 only. For Unicode 4.0 and above title boundary iteration,
  /// please use Word Boundary iterator.\#getWordInstance
  ///@param where A Locale specifying the language of the text being analyzed.
  ///@return A new instance of BreakIterator that locates title boundaries.
  ///@throws NullPointerException if <code>where</code> is null.
  static BreakIterator getTitleInstance2(ulocale_.ULocale where) =>
      BreakIterator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getTitleInstance2,
          jni.JniType.objectType,
          [where.reference]).object);

  static final _id_getAvailableLocales = jniAccessors.getStaticMethodIDOf(
      _classRef, "getAvailableLocales", "()[Ljava/util/Locale;");

  /// from: synchronized static public java.util.Locale[] getAvailableLocales()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a list of locales for which BreakIterators can be used.
  ///@return An array of Locales.  All of the locales in the array can
  /// be used when creating a BreakIterator.
  static jni.JniObject getAvailableLocales() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getAvailableLocales, jni.JniType.objectType, []).object);
}