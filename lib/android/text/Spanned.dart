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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.Spanned
///
/// This is the interface for text that has markup objects attached to
/// ranges of it.  Not all text classes have mutable markup or text;
/// see Spannable for mutable markup and Editable for
/// mutable text.
class Spanned extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/text/Spanned");
  Spanned.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int SPAN_COMPOSING
  ///
  /// This flag is set on spans that are being used to apply temporary
  /// styling information on the composing text of an input method, so that
  /// they can be found and removed when the composing text is being
  /// replaced.
  static const SPAN_COMPOSING = 256;

  /// from: static public final int SPAN_EXCLUSIVE_EXCLUSIVE
  ///
  /// Spans of type SPAN_EXCLUSIVE_EXCLUSIVE do not expand
  /// to include text inserted at either their starting or ending point.
  /// They can never have a length of 0 and are automatically removed
  /// from the buffer if all the text they cover is removed.
  static const SPAN_EXCLUSIVE_EXCLUSIVE = 33;

  /// from: static public final int SPAN_EXCLUSIVE_INCLUSIVE
  ///
  /// Non-0-length spans of type SPAN_EXCLUSIVE_INCLUSIVE expand
  /// to include text inserted at their ending point but not at their
  /// starting point.  When 0-length, they behave like points.
  static const SPAN_EXCLUSIVE_INCLUSIVE = 34;

  /// from: static public final int SPAN_INCLUSIVE_EXCLUSIVE
  ///
  /// Non-0-length spans of type SPAN_INCLUSIVE_EXCLUSIVE expand
  /// to include text inserted at their starting point but not at their
  /// ending point.  When 0-length, they behave like marks.
  static const SPAN_INCLUSIVE_EXCLUSIVE = 17;

  /// from: static public final int SPAN_INCLUSIVE_INCLUSIVE
  ///
  /// Spans of type SPAN_INCLUSIVE_INCLUSIVE expand
  /// to include text inserted at either their starting or ending point.
  static const SPAN_INCLUSIVE_INCLUSIVE = 18;

  /// from: static public final int SPAN_INTERMEDIATE
  ///
  /// This flag will be set for intermediate span changes, meaning there
  /// is guaranteed to be another change following it.  Typically it is
  /// used for Selection which automatically uses this with the first
  /// offset it sets when updating the selection.
  static const SPAN_INTERMEDIATE = 512;

  /// from: static public final int SPAN_MARK_MARK
  ///
  /// 0-length spans with type SPAN_MARK_MARK behave like text marks:
  /// they remain at their original offset when text is inserted
  /// at that offset. Conceptually, the text is added after the mark.
  static const SPAN_MARK_MARK = 17;

  /// from: static public final int SPAN_MARK_POINT
  ///
  /// SPAN_MARK_POINT is a synonym for \#SPAN_INCLUSIVE_INCLUSIVE.
  static const SPAN_MARK_POINT = 18;

  /// from: static public final int SPAN_PARAGRAPH
  ///
  /// SPAN_PARAGRAPH behaves like SPAN_INCLUSIVE_EXCLUSIVE
  /// (SPAN_MARK_MARK), except that if either end of the span is
  /// at the end of the buffer, that end behaves like _POINT
  /// instead (so SPAN_INCLUSIVE_INCLUSIVE if it starts in the
  /// middle and ends at the end, or SPAN_EXCLUSIVE_INCLUSIVE
  /// if it both starts and ends at the end).
  ///
  /// Its endpoints must be the start or end of the buffer or
  /// immediately after a \n character, and if the \n
  /// that anchors it is deleted, the endpoint is pulled to the
  /// next \n that follows in the buffer (or to the end of
  /// the buffer). If a span with SPAN_PARAGRAPH flag is pasted
  /// into another text and the paragraph boundary constraint
  /// is not satisfied, the span is discarded.
  static const SPAN_PARAGRAPH = 51;

  /// from: static public final int SPAN_POINT_MARK
  ///
  /// SPAN_POINT_MARK is a synonym for \#SPAN_EXCLUSIVE_EXCLUSIVE.
  static const SPAN_POINT_MARK = 33;

  /// from: static public final int SPAN_POINT_MARK_MASK
  ///
  /// Bitmask of bits that are relevent for controlling point/mark behavior
  /// of spans.
  ///
  /// MARK and POINT are conceptually located <i>between</i> two adjacent characters.
  /// A MARK is "attached" to the character before, while a POINT will stick to the character
  /// after. The insertion cursor is conceptually located between the MARK and the POINT.
  ///
  /// As a result, inserting a new character between a MARK and a POINT will leave the MARK
  /// unchanged, while the POINT will be shifted, now located after the inserted character and
  /// still glued to the same character after it.
  ///
  /// Depending on whether the insertion happens at the beginning or the end of a span, the span
  /// will hence be expanded to <i>include</i> the new character (when the span is using a MARK at
  /// its beginning or a POINT at its end) or it will be <i>excluded</i>.
  ///
  /// Note that <i>before</i> and <i>after</i> here refer to offsets in the String, which are
  /// independent from the visual representation of the text (left-to-right or right-to-left).
  static const SPAN_POINT_MARK_MASK = 51;

  /// from: static public final int SPAN_POINT_POINT
  ///
  /// 0-length spans with type SPAN_POINT_POINT behave like cursors:
  /// they are pushed forward by the length of the insertion when text
  /// is inserted at their offset.
  /// The text is conceptually inserted before the point.
  static const SPAN_POINT_POINT = 34;

  /// from: static public final int SPAN_PRIORITY
  ///
  /// The bits specified by the SPAN_PRIORITY bitmap determine the order
  /// of change notifications -- higher numbers go first.  You probably
  /// don't need to set this; it is used so that when text changes, the
  /// text layout gets the chance to update itself before any other
  /// callbacks can inquire about the layout of the text.
  static const SPAN_PRIORITY = 16711680;

  /// from: static public final int SPAN_PRIORITY_SHIFT
  ///
  /// The bits numbered just above SPAN_PRIORITY_SHIFT determine the order
  /// of change notifications -- higher numbers go first.  You probably
  /// don't need to set this; it is used so that when text changes, the
  /// text layout gets the chance to update itself before any other
  /// callbacks can inquire about the layout of the text.
  static const SPAN_PRIORITY_SHIFT = 16;

  /// from: static public final int SPAN_USER
  ///
  /// The bits specified by the SPAN_USER bitfield are available
  /// for callers to use to store scalar data associated with their
  /// span object.
  static const SPAN_USER = -16777216;

  /// from: static public final int SPAN_USER_SHIFT
  ///
  /// The bits numbered SPAN_USER_SHIFT and above are available
  /// for callers to use to store scalar data associated with their
  /// span object.
  static const SPAN_USER_SHIFT = 24;

  static final _id_getSpans = jniAccessors.getMethodIDOf(
      _classRef, "getSpans", "(IILjava/lang/Class;)[Ljava/lang/Object;");

  /// from: public abstract T[] getSpans(int start, int end, java.lang.Class<T> type)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return an array of the markup objects attached to the specified
  /// slice of this CharSequence and whose type is the specified type
  /// or a subclass of it.  Specify Object.class for the type if you
  /// want all the objects regardless of type.
  jni.JniObject getSpans(int start, int end, jni.JniObject type) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getSpans,
          jni.JniType.objectType,
          [start, end, type.reference]).object);

  static final _id_getSpanStart = jniAccessors.getMethodIDOf(
      _classRef, "getSpanStart", "(Ljava/lang/Object;)I");

  /// from: public abstract int getSpanStart(java.lang.Object tag)
  ///
  /// Return the beginning of the range of text to which the specified
  /// markup object is attached, or -1 if the object is not attached.
  int getSpanStart(jni.JniObject tag) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getSpanStart,
      jni.JniType.intType,
      [tag.reference]).integer;

  static final _id_getSpanEnd = jniAccessors.getMethodIDOf(
      _classRef, "getSpanEnd", "(Ljava/lang/Object;)I");

  /// from: public abstract int getSpanEnd(java.lang.Object tag)
  ///
  /// Return the end of the range of text to which the specified
  /// markup object is attached, or -1 if the object is not attached.
  int getSpanEnd(jni.JniObject tag) => jniAccessors.callMethodWithArgs(
      reference, _id_getSpanEnd, jni.JniType.intType, [tag.reference]).integer;

  static final _id_getSpanFlags = jniAccessors.getMethodIDOf(
      _classRef, "getSpanFlags", "(Ljava/lang/Object;)I");

  /// from: public abstract int getSpanFlags(java.lang.Object tag)
  ///
  /// Return the flags that were specified when Spannable\#setSpan was
  /// used to attach the specified markup object, or 0 if the specified
  /// object has not been attached.
  int getSpanFlags(jni.JniObject tag) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getSpanFlags,
      jni.JniType.intType,
      [tag.reference]).integer;

  static final _id_nextSpanTransition = jniAccessors.getMethodIDOf(
      _classRef, "nextSpanTransition", "(IILjava/lang/Class;)I");

  /// from: public abstract int nextSpanTransition(int start, int limit, java.lang.Class type)
  ///
  /// Return the first offset greater than <code>start</code> where a markup
  /// object of class <code>type</code> begins or ends, or <code>limit</code>
  /// if there are no starts or ends greater than <code>start</code> but less
  /// than <code>limit</code>. Specify <code>null</code> or Object.class for
  /// the type if you want every transition regardless of type.
  int nextSpanTransition(int start, int limit, jni.JniObject type) =>
      jniAccessors.callMethodWithArgs(reference, _id_nextSpanTransition,
          jni.JniType.intType, [start, limit, type.reference]).integer;
}