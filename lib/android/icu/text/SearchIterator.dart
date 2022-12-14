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

import "BreakIterator.dart" as breakiterator_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.SearchIterator
///
/// <tt>SearchIterator</tt> is an abstract base class that provides
/// methods to search for a pattern within a text string. Instances of
/// <tt>SearchIterator</tt> maintain a current position and scan over the
/// target text, returning the indices the pattern is matched and the length
/// of each match.
///
/// <tt>SearchIterator</tt> defines a protocol for text searching.
/// Subclasses provide concrete implementations of various search algorithms.
/// For example, <tt>StringSearch</tt> implements language-sensitive pattern
/// matching based on the comparison rules defined in a
/// <tt>RuleBasedCollator</tt> object.
///
/// Other options for searching include using a BreakIterator to restrict
/// the points at which matches are detected.
///
/// <tt>SearchIterator</tt> provides an API that is similar to that of
/// other text iteration classes such as <tt>BreakIterator</tt>. Using
/// this class, it is easy to scan through text looking for all occurrences of
/// a given pattern. The following example uses a <tt>StringSearch</tt>
/// object to find all instances of "fox" in the target string. Any other
/// subclass of <tt>SearchIterator</tt> can be used in an identical
/// manner.
/// <pre><code>
/// String target = "The quick brown fox jumped over the lazy fox";
/// String pattern = "fox";
/// SearchIterator iter = new StringSearch(pattern, target);
/// for (int pos = iter.first(); pos != SearchIterator.DONE;
///         pos = iter.next()) {
///     System.out.println("Found match at " + pos +
///             ", length is " + iter.getMatchLength());
/// }
/// </code></pre>
///@author Laura Werner, synwee
///@see BreakIterator
///@see RuleBasedCollator
class SearchIterator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/SearchIterator");
  SearchIterator.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int DONE
  ///
  /// DONE is returned by previous() and next() after all valid matches have
  /// been returned, and by first() and last() if there are no matches at all.
  ///@see \#previous
  ///@see \#next
  static const DONE = -1;

  static final _id_breakIterator = jniAccessors.getFieldIDOf(
      _classRef, "breakIterator", "Landroid/icu/text/BreakIterator;");

  /// from: protected android.icu.text.BreakIterator breakIterator
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The BreakIterator to define the boundaries of a logical match.
  /// This value can be a null.
  /// See class documentation for more information.
  ///@see \#setBreakIterator(BreakIterator)
  ///@see \#getBreakIterator
  ///@see BreakIterator
  breakiterator_.BreakIterator get breakIterator =>
      breakiterator_.BreakIterator.fromRef(jniAccessors
          .getField(reference, _id_breakIterator, jni.JniType.objectType)
          .object);

  /// from: protected android.icu.text.BreakIterator breakIterator
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The BreakIterator to define the boundaries of a logical match.
  /// This value can be a null.
  /// See class documentation for more information.
  ///@see \#setBreakIterator(BreakIterator)
  ///@see \#getBreakIterator
  ///@see BreakIterator
  set breakIterator(breakiterator_.BreakIterator value) =>
      jniEnv.SetObjectField(reference, _id_breakIterator, value.reference);

  static final _id_matchLength =
      jniAccessors.getFieldIDOf(_classRef, "matchLength", "I");

  /// from: protected int matchLength
  ///
  /// Length of the most current match in target text.
  /// Value 0 is the default value.
  ///@see \#setMatchLength
  ///@see \#getMatchLength
  int get matchLength => jniAccessors
      .getField(reference, _id_matchLength, jni.JniType.intType)
      .integer;

  /// from: protected int matchLength
  ///
  /// Length of the most current match in target text.
  /// Value 0 is the default value.
  ///@see \#setMatchLength
  ///@see \#getMatchLength
  set matchLength(int value) =>
      jniEnv.SetIntField(reference, _id_matchLength, value);

  static final _id_targetText = jniAccessors.getFieldIDOf(
      _classRef, "targetText", "Ljava/text/CharacterIterator;");

  /// from: protected java.text.CharacterIterator targetText
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Target text for searching.
  ///@see \#setTarget(CharacterIterator)
  ///@see \#getTarget
  jni.JniObject get targetText => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_targetText, jni.JniType.objectType)
      .object);

  /// from: protected java.text.CharacterIterator targetText
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Target text for searching.
  ///@see \#setTarget(CharacterIterator)
  ///@see \#getTarget
  set targetText(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_targetText, value.reference);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/text/CharacterIterator;Landroid/icu/text/BreakIterator;)V");

  /// from: protected void <init>(java.text.CharacterIterator target, android.icu.text.BreakIterator breaker)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Protected constructor for use by subclasses.
  /// Initializes the iterator with the argument target text for searching
  /// and sets the BreakIterator.
  /// See class documentation for more details on the use of the target text
  /// and BreakIterator.
  ///@param target The target text to be searched.
  ///@param breaker A BreakIterator that is used to determine the
  ///                boundaries of a logical match. This argument can be null.
  ///@exception IllegalArgumentException thrown when argument target is null,
  ///            or of length 0
  ///@see BreakIterator
  SearchIterator(jni.JniObject target, breakiterator_.BreakIterator breaker)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [target.reference, breaker.reference]).object);

  static final _id_setIndex =
      jniAccessors.getMethodIDOf(_classRef, "setIndex", "(I)V");

  /// from: public void setIndex(int position)
  ///
  ///
  /// Sets the position in the target text at which the next search will start.
  /// This method clears any previous match.
  ///
  ///
  ///@param position position from which to start the next search
  ///@exception IndexOutOfBoundsException thrown if argument position is out
  ///            of the target text range.
  ///@see \#getIndex
  void setIndex(int position) => jniAccessors.callMethodWithArgs(
      reference, _id_setIndex, jni.JniType.voidType, [position]).check();

  static final _id_setOverlapping =
      jniAccessors.getMethodIDOf(_classRef, "setOverlapping", "(Z)V");

  /// from: public void setOverlapping(boolean allowOverlap)
  ///
  /// Determines whether overlapping matches are returned. See the class
  /// documentation for more information about overlapping matches.
  ///
  /// The default setting of this property is false
  ///@param allowOverlap flag indicator if overlapping matches are allowed
  ///@see \#isOverlapping
  void setOverlapping(bool allowOverlap) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setOverlapping,
      jni.JniType.voidType,
      [allowOverlap]).check();

  static final _id_setBreakIterator = jniAccessors.getMethodIDOf(
      _classRef, "setBreakIterator", "(Landroid/icu/text/BreakIterator;)V");

  /// from: public void setBreakIterator(android.icu.text.BreakIterator breakiter)
  ///
  /// Set the BreakIterator that will be used to restrict the points
  /// at which matches are detected.
  ///@param breakiter A BreakIterator that will be used to restrict the
  ///                points at which matches are detected. If a match is
  ///                found, but the match's start or end index is not a
  ///                boundary as determined by the BreakIterator,
  ///                the match will be rejected and another will be searched
  ///                for. If this parameter is <tt>null</tt>, no break
  ///                detection is attempted.
  ///@see BreakIterator
  void setBreakIterator(breakiterator_.BreakIterator breakiter) =>
      jniAccessors.callMethodWithArgs(reference, _id_setBreakIterator,
          jni.JniType.voidType, [breakiter.reference]).check();

  static final _id_setTarget = jniAccessors.getMethodIDOf(
      _classRef, "setTarget", "(Ljava/text/CharacterIterator;)V");

  /// from: public void setTarget(java.text.CharacterIterator text)
  ///
  /// Set the target text to be searched. Text iteration will then begin at
  /// the start of the text string. This method is useful if you want to
  /// reuse an iterator to search within a different body of text.
  ///@param text new text iterator to look for match,
  ///@exception IllegalArgumentException thrown when text is null or has
  ///               0 length
  ///@see \#getTarget
  void setTarget(jni.JniObject text) => jniAccessors.callMethodWithArgs(
      reference, _id_setTarget, jni.JniType.voidType, [text.reference]).check();

  static final _id_getMatchStart =
      jniAccessors.getMethodIDOf(_classRef, "getMatchStart", "()I");

  /// from: public int getMatchStart()
  ///
  /// Returns the index to the match in the text string that was searched.
  /// This call returns a valid result only after a successful call to
  /// \#first, \#next, \#previous, or \#last.
  /// Just after construction, or after a searching method returns
  /// \#DONE, this method will return \#DONE.
  ///
  /// Use \#getMatchLength to get the matched string length.
  ///@return index of a substring within the text string that is being
  ///         searched.
  ///@see \#first
  ///@see \#next
  ///@see \#previous
  ///@see \#last
  int getMatchStart() => jniAccessors.callMethodWithArgs(
      reference, _id_getMatchStart, jni.JniType.intType, []).integer;

  static final _id_getIndex =
      jniAccessors.getMethodIDOf(_classRef, "getIndex", "()I");

  /// from: public abstract int getIndex()
  ///
  /// Return the current index in the text being searched.
  /// If the iteration has gone past the end of the text
  /// (or past the beginning for a backwards search), \#DONE
  /// is returned.
  ///@return current index in the text being searched.
  int getIndex() => jniAccessors.callMethodWithArgs(
      reference, _id_getIndex, jni.JniType.intType, []).integer;

  static final _id_getMatchLength =
      jniAccessors.getMethodIDOf(_classRef, "getMatchLength", "()I");

  /// from: public int getMatchLength()
  ///
  /// Returns the length of text in the string which matches the search
  /// pattern. This call returns a valid result only after a successful call
  /// to \#first, \#next, \#previous, or \#last.
  /// Just after construction, or after a searching method returns
  /// \#DONE, this method will return 0.
  ///@return The length of the match in the target text, or 0 if there
  ///         is no match currently.
  ///@see \#first
  ///@see \#next
  ///@see \#previous
  ///@see \#last
  int getMatchLength() => jniAccessors.callMethodWithArgs(
      reference, _id_getMatchLength, jni.JniType.intType, []).integer;

  static final _id_getBreakIterator = jniAccessors.getMethodIDOf(
      _classRef, "getBreakIterator", "()Landroid/icu/text/BreakIterator;");

  /// from: public android.icu.text.BreakIterator getBreakIterator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the BreakIterator that is used to restrict the indexes at which
  /// matches are detected. This will be the same object that was passed to
  /// the constructor or to \#setBreakIterator.
  /// If the BreakIterator has not been set, <tt>null</tt> will be returned.
  /// See \#setBreakIterator for more information.
  ///@return the BreakIterator set to restrict logic matches
  ///@see \#setBreakIterator
  ///@see BreakIterator
  breakiterator_.BreakIterator getBreakIterator() =>
      breakiterator_.BreakIterator.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getBreakIterator, jni.JniType.objectType, []).object);

  static final _id_getTarget = jniAccessors.getMethodIDOf(
      _classRef, "getTarget", "()Ljava/text/CharacterIterator;");

  /// from: public java.text.CharacterIterator getTarget()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the string text to be searched.
  ///@return text string to be searched.
  jni.JniObject getTarget() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTarget, jni.JniType.objectType, []).object);

  static final _id_getMatchedText = jniAccessors.getMethodIDOf(
      _classRef, "getMatchedText", "()Ljava/lang/String;");

  /// from: public java.lang.String getMatchedText()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the text that was matched by the most recent call to
  /// \#first, \#next, \#previous, or \#last.
  /// If the iterator is not pointing at a valid match (e.g. just after
  /// construction or after \#DONE has been returned,
  /// returns an empty string.
  ///@return the substring in the target test of the most recent match,
  ///          or null if there is no match currently.
  ///@see \#first
  ///@see \#next
  ///@see \#previous
  ///@see \#last
  jni.JniString getMatchedText() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMatchedText, jni.JniType.objectType, []).object);

  static final _id_next = jniAccessors.getMethodIDOf(_classRef, "next", "()I");

  /// from: public int next()
  ///
  /// Returns the index of the next point at which the text matches the
  /// search pattern, starting from the current position
  /// The iterator is adjusted so that its current index (as returned by
  /// \#getIndex) is the match position if one was found.
  /// If a match is not found, \#DONE will be returned and
  /// the iterator will be adjusted to a position after the end of the text
  /// string.
  ///@return The index of the next match after the current position,
  ///          or \#DONE if there are no more matches.
  ///@see \#getIndex
  int next() => jniAccessors
      .callMethodWithArgs(reference, _id_next, jni.JniType.intType, []).integer;

  static final _id_previous =
      jniAccessors.getMethodIDOf(_classRef, "previous", "()I");

  /// from: public int previous()
  ///
  /// Returns the index of the previous point at which the string text
  /// matches the search pattern, starting at the current position.
  /// The iterator is adjusted so that its current index (as returned by
  /// \#getIndex) is the match position if one was found.
  /// If a match is not found, \#DONE will be returned and
  /// the iterator will be adjusted to the index \#DONE.
  ///@return The index of the previous match before the current position,
  ///          or \#DONE if there are no more matches.
  ///@see \#getIndex
  int previous() => jniAccessors.callMethodWithArgs(
      reference, _id_previous, jni.JniType.intType, []).integer;

  static final _id_isOverlapping =
      jniAccessors.getMethodIDOf(_classRef, "isOverlapping", "()Z");

  /// from: public boolean isOverlapping()
  ///
  /// Return true if the overlapping property has been set.
  /// See \#setOverlapping(boolean) for more information.
  ///@see \#setOverlapping
  ///@return true if the overlapping property has been set, false otherwise
  bool isOverlapping() => jniAccessors.callMethodWithArgs(
      reference, _id_isOverlapping, jni.JniType.booleanType, []).boolean;

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, "reset", "()V");

  /// from: public void reset()
  ///
  /// Resets the iteration.
  /// Search will begin at the start of the text string if a forward
  /// iteration is initiated before a backwards iteration. Otherwise if a
  /// backwards iteration is initiated before a forwards iteration, the
  /// search will begin at the end of the text string.
  void reset() => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniType.voidType, []).check();

  static final _id_first =
      jniAccessors.getMethodIDOf(_classRef, "first", "()I");

  /// from: public final int first()
  ///
  /// Returns the first index at which the string text matches the search
  /// pattern. The iterator is adjusted so that its current index (as
  /// returned by \#getIndex()) is the match position if one
  ///
  /// was found.
  /// If a match is not found, \#DONE will be returned and
  /// the iterator will be adjusted to the index \#DONE.
  ///@return The character index of the first match, or
  ///         \#DONE if there are no matches.
  ///@see \#getIndex
  int first() => jniAccessors.callMethodWithArgs(
      reference, _id_first, jni.JniType.intType, []).integer;

  static final _id_following =
      jniAccessors.getMethodIDOf(_classRef, "following", "(I)I");

  /// from: public final int following(int position)
  ///
  /// Returns the first index equal or greater than <tt>position</tt> at which the
  /// string text matches the search pattern. The iterator is adjusted so
  /// that its current index (as returned by \#getIndex()) is the
  /// match position if one was found.
  /// If a match is not found, \#DONE will be returned and the
  /// iterator will be adjusted to the index \#DONE.
  ///@param position where search if to start from.
  ///@return The character index of the first match following
  ///         <tt>position</tt>, or \#DONE if there are no matches.
  ///@throws IndexOutOfBoundsException If position is less than or greater
  ///      than the text range for searching.
  ///@see \#getIndex
  int following(int position) => jniAccessors.callMethodWithArgs(
      reference, _id_following, jni.JniType.intType, [position]).integer;

  static final _id_last = jniAccessors.getMethodIDOf(_classRef, "last", "()I");

  /// from: public final int last()
  ///
  /// Returns the last index in the target text at which it matches the
  /// search pattern. The iterator is adjusted so that its current index
  /// (as returned by \#getIndex) is the match position if one was
  /// found.
  /// If a match is not found, \#DONE will be returned and
  /// the iterator will be adjusted to the index \#DONE.
  ///@return The index of the first match, or \#DONE if
  ///         there are no matches.
  ///@see \#getIndex
  int last() => jniAccessors
      .callMethodWithArgs(reference, _id_last, jni.JniType.intType, []).integer;

  static final _id_preceding =
      jniAccessors.getMethodIDOf(_classRef, "preceding", "(I)I");

  /// from: public final int preceding(int position)
  ///
  /// Returns the first index less than <tt>position</tt> at which the string
  /// text matches the search pattern. The iterator is adjusted so that its
  /// current index (as returned by \#getIndex) is the match
  /// position if one was found. If a match is not found,
  /// \#DONE will be returned and the iterator will be
  /// adjusted to the index \#DONE
  ///
  /// When the overlapping option (\#isOverlapping) is off, the last index of the
  /// result match is always less than <tt>position</tt>.
  /// When the overlapping option is on, the result match may span across
  /// <tt>position</tt>.
  ///@param position where search is to start from.
  ///@return The character index of the first match preceding
  ///         <tt>position</tt>, or \#DONE if there are
  ///         no matches.
  ///@throws IndexOutOfBoundsException If position is less than or greater than
  ///                                   the text range for searching
  ///@see \#getIndex
  int preceding(int position) => jniAccessors.callMethodWithArgs(
      reference, _id_preceding, jni.JniType.intType, [position]).integer;

  static final _id_setMatchLength =
      jniAccessors.getMethodIDOf(_classRef, "setMatchLength", "(I)V");

  /// from: protected void setMatchLength(int length)
  ///
  /// Sets the length of the most recent match in the target text.
  /// Subclasses' handleNext() and handlePrevious() methods should call this
  /// after they find a match in the target text.
  ///@param length new length to set
  ///@see \#handleNext
  ///@see \#handlePrevious
  void setMatchLength(int length) => jniAccessors.callMethodWithArgs(
      reference, _id_setMatchLength, jni.JniType.voidType, [length]).check();

  static final _id_handleNext =
      jniAccessors.getMethodIDOf(_classRef, "handleNext", "(I)I");

  /// from: protected abstract int handleNext(int start)
  ///
  /// Abstract method which subclasses override to provide the mechanism
  /// for finding the next match in the target text. This allows different
  /// subclasses to provide different search algorithms.
  ///
  /// If a match is found, the implementation should return the index at
  /// which the match starts and should call
  /// \#setMatchLength with the number of characters
  /// in the target text that make up the match. If no match is found, the
  /// method should return \#DONE.
  ///@param start The index in the target text at which the search
  ///              should start.
  ///@return index at which the match starts, else if match is not found
  ///         \#DONE is returned
  ///@see \#setMatchLength
  int handleNext(int start) => jniAccessors.callMethodWithArgs(
      reference, _id_handleNext, jni.JniType.intType, [start]).integer;

  static final _id_handlePrevious =
      jniAccessors.getMethodIDOf(_classRef, "handlePrevious", "(I)I");

  /// from: protected abstract int handlePrevious(int startAt)
  ///
  /// Abstract method which subclasses override to provide the mechanism for
  /// finding the previous match in the target text. This allows different
  /// subclasses to provide different search algorithms.
  ///
  /// If a match is found, the implementation should return the index at
  /// which the match starts and should call
  /// \#setMatchLength with the number of characters
  /// in the target text that make up the match. If no match is found, the
  /// method should return \#DONE.
  ///@param startAt The index in the target text at which the search
  ///                  should start.
  ///@return index at which the match starts, else if match is not found
  ///         \#DONE is returned
  ///@see \#setMatchLength
  int handlePrevious(int startAt) => jniAccessors.callMethodWithArgs(
      reference, _id_handlePrevious, jni.JniType.intType, [startAt]).integer;

  static final _id_setElementComparisonType = jniAccessors.getMethodIDOf(
      _classRef,
      "setElementComparisonType",
      "(Landroid/icu/text/SearchIterator\$ElementComparisonType;)V");

  /// from: public void setElementComparisonType(android.icu.text.SearchIterator.ElementComparisonType type)
  ///
  /// Sets the collation element comparison type.
  ///
  /// The default comparison type is ElementComparisonType\#STANDARD_ELEMENT_COMPARISON.
  ///@see ElementComparisonType
  ///@see \#getElementComparisonType()
  void setElementComparisonType(SearchIterator_ElementComparisonType type) =>
      jniAccessors.callMethodWithArgs(reference, _id_setElementComparisonType,
          jni.JniType.voidType, [type.reference]).check();

  static final _id_getElementComparisonType = jniAccessors.getMethodIDOf(
      _classRef,
      "getElementComparisonType",
      "()Landroid/icu/text/SearchIterator\$ElementComparisonType;");

  /// from: public android.icu.text.SearchIterator.ElementComparisonType getElementComparisonType()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the collation element comparison type.
  ///@see ElementComparisonType
  ///@see \#setElementComparisonType(ElementComparisonType)
  SearchIterator_ElementComparisonType getElementComparisonType() =>
      SearchIterator_ElementComparisonType.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getElementComparisonType,
              jni.JniType.objectType, []).object);
}

/// from: android.icu.text.SearchIterator$ElementComparisonType
///
/// Option to control how collation elements are compared.
/// The default value will be \#STANDARD_ELEMENT_COMPARISON.
///
/// PATTERN_BASE_WEIGHT_IS_WILDCARD supports "asymmetric search" as described in
/// <a href="http://www.unicode.org/reports/tr10/\#Asymmetric_Search">
/// UTS \#10 Unicode Collation Algorithm</a>, while ANY_BASE_WEIGHT_IS_WILDCARD
/// supports a related option in which "unmarked" characters in either the
/// pattern or the searched text are treated as wildcards that match marked or
/// unmarked versions of the same character.
///@see \#setElementComparisonType(ElementComparisonType)
///@see \#getElementComparisonType()
class SearchIterator_ElementComparisonType extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/icu/text/SearchIterator\$ElementComparisonType");
  SearchIterator_ElementComparisonType.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(_classRef,
      "values", "()[Landroid/icu/text/SearchIterator\$ElementComparisonType;");

  /// from: static public android.icu.text.SearchIterator.ElementComparisonType[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "valueOf",
      "(Ljava/lang/String;)Landroid/icu/text/SearchIterator\$ElementComparisonType;");

  /// from: static public android.icu.text.SearchIterator.ElementComparisonType valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static SearchIterator_ElementComparisonType valueOf(jni.JniString name) =>
      SearchIterator_ElementComparisonType.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_valueOf,
              jni.JniType.objectType, [name.reference]).object);
}
