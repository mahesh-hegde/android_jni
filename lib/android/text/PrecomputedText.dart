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

import "../graphics/Rect.dart" as rect_;

import "TextPaint.dart" as textpaint_;

import "TextDirectionHeuristic.dart" as textdirectionheuristic_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.PrecomputedText
///
/// A text which has the character metrics data.
///
/// A text object that contains the character metrics data and can be used to improve the performance
/// of text layout operations. When a PrecomputedText is created with a given CharSequence,
/// it will measure the text metrics during the creation. This PrecomputedText instance can be set on
/// android.widget.TextView or StaticLayout. Since the text layout information will
/// be included in this instance, android.widget.TextView or StaticLayout will not
/// have to recalculate this information.
///
/// Note that the PrecomputedText created from different parameters of the target android.widget.TextView will be rejected internally and compute the text layout again with the
/// current android.widget.TextView parameters.
///
/// <pre>
/// An example usage is:
/// <code>
///  static void asyncSetText(TextView textView, final String longString, Executor bgExecutor) {
///      // construct precompute related parameters using the TextView that we will set the text on.
///      final PrecomputedText.Params params = textView.getTextMetricsParams();
///      final Reference textViewRef = new WeakReference<>(textView);
///      bgExecutor.submit(() -> {
///          TextView textView = textViewRef.get();
///          if (textView == null) return;
///          final PrecomputedText precomputedText = PrecomputedText.create(longString, params);
///          textView.post(() -> {
///              TextView textView = textViewRef.get();
///              if (textView == null) return;
///              textView.setText(precomputedText);
///          });
///      });
///  }
/// </code>
/// </pre>
///
/// Note that the PrecomputedText created from different parameters of the target
/// android.widget.TextView will be rejected.
///
/// Note that any android.text.NoCopySpan attached to the original text won't be passed to
/// PrecomputedText.
class PrecomputedText extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/PrecomputedText");
  PrecomputedText.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_create = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "create",
      "(Ljava/lang/CharSequence;Landroid/text/PrecomputedText\$Params;)Landroid/text/PrecomputedText;");

  /// from: static public android.text.PrecomputedText create(java.lang.CharSequence text, android.text.PrecomputedText.Params params)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new PrecomputedText which will pre-compute text measurement and glyph
  /// positioning information.
  ///
  /// This can be expensive, so computing this on a background thread before your text will be
  /// presented can save work on the UI thread.
  ///
  ///
  ///
  /// Note that any android.text.NoCopySpan attached to the text won't be passed to the
  /// created PrecomputedText.
  ///@param text the text to be measured
  /// This value must never be {@code null}.
  ///@param params parameters that define how text will be precomputed
  /// This value must never be {@code null}.
  ///@return A PrecomputedText
  static PrecomputedText create(
          jni.JniObject text, PrecomputedText_Params params) =>
      PrecomputedText.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_create,
          jni.JniType.objectType,
          [text.reference, params.reference]).object);

  static final _id_getParams = jniAccessors.getMethodIDOf(
      _classRef, "getParams", "()Landroid/text/PrecomputedText\$Params;");

  /// from: public android.text.PrecomputedText.Params getParams()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the layout parameters used to measure this text.
  ///@return This value will never be {@code null}.
  PrecomputedText_Params getParams() =>
      PrecomputedText_Params.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getParams, jni.JniType.objectType, []).object);

  static final _id_getParagraphCount =
      jniAccessors.getMethodIDOf(_classRef, "getParagraphCount", "()I");

  /// from: public int getParagraphCount()
  ///
  /// Returns the count of paragraphs.
  ///@return Value is 0 or greater
  int getParagraphCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getParagraphCount, jni.JniType.intType, []).integer;

  static final _id_getParagraphStart =
      jniAccessors.getMethodIDOf(_classRef, "getParagraphStart", "(I)I");

  /// from: public int getParagraphStart(int paraIndex)
  ///
  /// Returns the paragraph start offset of the text.
  ///@param paraIndex Value is 0 or greater
  ///@return Value is 0 or greater
  int getParagraphStart(int paraIndex) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getParagraphStart,
      jni.JniType.intType,
      [paraIndex]).integer;

  static final _id_getParagraphEnd =
      jniAccessors.getMethodIDOf(_classRef, "getParagraphEnd", "(I)I");

  /// from: public int getParagraphEnd(int paraIndex)
  ///
  /// Returns the paragraph end offset of the text.
  ///@param paraIndex Value is 0 or greater
  ///@return Value is 0 or greater
  int getParagraphEnd(int paraIndex) => jniAccessors.callMethodWithArgs(
      reference, _id_getParagraphEnd, jni.JniType.intType, [paraIndex]).integer;

  static final _id_getWidth =
      jniAccessors.getMethodIDOf(_classRef, "getWidth", "(II)F");

  /// from: public float getWidth(int start, int end)
  ///
  /// Returns text width for the given range.
  /// Both {@code start} and {@code end} offset need to be in the same paragraph, otherwise
  /// IllegalArgumentException will be thrown.
  ///@param start the inclusive start offset in the text
  /// Value is 0 or greater
  ///@param end the exclusive end offset in the text
  /// Value is 0 or greater
  ///@return the text width
  /// Value is 0 or greater
  ///@throws IllegalArgumentException if start and end offset are in the different paragraph.
  double getWidth(int start, int end) => jniAccessors.callMethodWithArgs(
      reference, _id_getWidth, jni.JniType.floatType, [start, end]).float;

  static final _id_getBounds = jniAccessors.getMethodIDOf(
      _classRef, "getBounds", "(IILandroid/graphics/Rect;)V");

  /// from: public void getBounds(int start, int end, android.graphics.Rect bounds)
  ///
  /// Retrieves the text bounding box for the given range.
  /// Both {@code start} and {@code end} offset need to be in the same paragraph, otherwise
  /// IllegalArgumentException will be thrown.
  ///@param start the inclusive start offset in the text
  /// Value is 0 or greater
  ///@param end the exclusive end offset in the text
  /// Value is 0 or greater
  ///@param bounds the output rectangle
  /// This value must never be {@code null}.
  ///@throws IllegalArgumentException if start and end offset are in the different paragraph.
  void getBounds(int start, int end, rect_.Rect bounds) =>
      jniAccessors.callMethodWithArgs(reference, _id_getBounds,
          jni.JniType.voidType, [start, end, bounds.reference]).check();

  static final _id_setSpan = jniAccessors.getMethodIDOf(
      _classRef, "setSpan", "(Ljava/lang/Object;III)V");

  /// from: public void setSpan(java.lang.Object what, int start, int end, int flags)
  ///
  /// @throws IllegalArgumentException if MetricAffectingSpan is specified.
  void setSpan(jni.JniObject what, int start, int end, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSpan,
          jni.JniType.voidType, [what.reference, start, end, flags]).check();

  static final _id_removeSpan = jniAccessors.getMethodIDOf(
      _classRef, "removeSpan", "(Ljava/lang/Object;)V");

  /// from: public void removeSpan(java.lang.Object what)
  ///
  /// @throws IllegalArgumentException if MetricAffectingSpan is specified.
  void removeSpan(jni.JniObject what) => jniAccessors.callMethodWithArgs(
      reference,
      _id_removeSpan,
      jni.JniType.voidType,
      [what.reference]).check();

  static final _id_getSpans = jniAccessors.getMethodIDOf(
      _classRef, "getSpans", "(IILjava/lang/Class;)[Ljava/lang/Object;");

  /// from: public T[] getSpans(int start, int end, java.lang.Class<T> type)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getSpans(int start, int end, jni.JniObject type) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getSpans,
          jni.JniType.objectType,
          [start, end, type.reference]).object);

  static final _id_getSpanStart = jniAccessors.getMethodIDOf(
      _classRef, "getSpanStart", "(Ljava/lang/Object;)I");

  /// from: public int getSpanStart(java.lang.Object tag)
  int getSpanStart(jni.JniObject tag) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getSpanStart,
      jni.JniType.intType,
      [tag.reference]).integer;

  static final _id_getSpanEnd = jniAccessors.getMethodIDOf(
      _classRef, "getSpanEnd", "(Ljava/lang/Object;)I");

  /// from: public int getSpanEnd(java.lang.Object tag)
  int getSpanEnd(jni.JniObject tag) => jniAccessors.callMethodWithArgs(
      reference, _id_getSpanEnd, jni.JniType.intType, [tag.reference]).integer;

  static final _id_getSpanFlags = jniAccessors.getMethodIDOf(
      _classRef, "getSpanFlags", "(Ljava/lang/Object;)I");

  /// from: public int getSpanFlags(java.lang.Object tag)
  int getSpanFlags(jni.JniObject tag) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getSpanFlags,
      jni.JniType.intType,
      [tag.reference]).integer;

  static final _id_nextSpanTransition = jniAccessors.getMethodIDOf(
      _classRef, "nextSpanTransition", "(IILjava/lang/Class;)I");

  /// from: public int nextSpanTransition(int start, int limit, java.lang.Class type)
  int nextSpanTransition(int start, int limit, jni.JniObject type) =>
      jniAccessors.callMethodWithArgs(reference, _id_nextSpanTransition,
          jni.JniType.intType, [start, limit, type.reference]).integer;

  static final _id_length =
      jniAccessors.getMethodIDOf(_classRef, "length", "()I");

  /// from: public int length()
  int length() => jniAccessors.callMethodWithArgs(
      reference, _id_length, jni.JniType.intType, []).integer;

  static final _id_charAt =
      jniAccessors.getMethodIDOf(_classRef, "charAt", "(I)C");

  /// from: public char charAt(int index)
  int charAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_charAt, jni.JniType.charType, [index]).char;

  static final _id_subSequence = jniAccessors.getMethodIDOf(
      _classRef, "subSequence", "(II)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence subSequence(int start, int end)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject subSequence(int start, int end) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_subSequence, jni.JniType.objectType, [start, end]).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.text.PrecomputedText$Params
///
/// The information required for building PrecomputedText.
///
/// Contains information required for precomputing text measurement metadata, so it can be done
/// in isolation of a android.widget.TextView or StaticLayout, when final layout
/// constraints are not known.
class PrecomputedText_Params extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/PrecomputedText\$Params");
  PrecomputedText_Params.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getTextPaint = jniAccessors.getMethodIDOf(
      _classRef, "getTextPaint", "()Landroid/text/TextPaint;");

  /// from: public android.text.TextPaint getTextPaint()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the TextPaint for this text.
  ///@return A TextPaint
  ///
  /// This value will never be {@code null}.
  textpaint_.TextPaint getTextPaint() =>
      textpaint_.TextPaint.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTextPaint, jni.JniType.objectType, []).object);

  static final _id_getTextDirection = jniAccessors.getMethodIDOf(
      _classRef, "getTextDirection", "()Landroid/text/TextDirectionHeuristic;");

  /// from: public android.text.TextDirectionHeuristic getTextDirection()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the TextDirectionHeuristic for this text.
  ///@return A TextDirectionHeuristic
  ///
  /// This value will never be {@code null}.
  textdirectionheuristic_.TextDirectionHeuristic getTextDirection() =>
      textdirectionheuristic_.TextDirectionHeuristic.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getTextDirection,
              jni.JniType.objectType, []).object);

  static final _id_getBreakStrategy =
      jniAccessors.getMethodIDOf(_classRef, "getBreakStrategy", "()I");

  /// from: public int getBreakStrategy()
  ///
  /// Returns the break strategy for this text.
  ///@return A line break strategy
  ///
  /// Value is android.text.Layout\#BREAK_STRATEGY_SIMPLE, android.text.Layout\#BREAK_STRATEGY_HIGH_QUALITY, or android.text.Layout\#BREAK_STRATEGY_BALANCED
  int getBreakStrategy() => jniAccessors.callMethodWithArgs(
      reference, _id_getBreakStrategy, jni.JniType.intType, []).integer;

  static final _id_getHyphenationFrequency =
      jniAccessors.getMethodIDOf(_classRef, "getHyphenationFrequency", "()I");

  /// from: public int getHyphenationFrequency()
  ///
  /// Returns the hyphenation frequency for this text.
  ///@return A hyphenation frequency
  ///
  /// Value is android.text.Layout\#HYPHENATION_FREQUENCY_NORMAL, android.text.Layout\#HYPHENATION_FREQUENCY_FULL, or android.text.Layout\#HYPHENATION_FREQUENCY_NONE
  int getHyphenationFrequency() => jniAccessors.callMethodWithArgs(
      reference, _id_getHyphenationFrequency, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  ///
  /// Check if the same text layout.
  ///@param o This value may be {@code null}.
  ///@return true if this and the given param result in the same text layout
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.text.PrecomputedText$Params$Builder
///
/// A builder for creating Params.
class PrecomputedText_Params_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/PrecomputedText\$Params\$Builder");
  PrecomputedText_Params_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/text/TextPaint;)V");

  /// from: public void <init>(android.text.TextPaint paint)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Builder constructor.
  ///@param paint the paint to be used for drawing
  ///
  /// This value must never be {@code null}.
  PrecomputedText_Params_Builder(textpaint_.TextPaint paint)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [paint.reference]).object);

  static final _id_setBreakStrategy = jniAccessors.getMethodIDOf(_classRef,
      "setBreakStrategy", "(I)Landroid/text/PrecomputedText\$Params\$Builder;");

  /// from: public android.text.PrecomputedText.Params.Builder setBreakStrategy(int strategy)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the line break strategy.
  ///
  /// The default value is Layout\#BREAK_STRATEGY_HIGH_QUALITY.
  ///@param strategy the break strategy
  /// Value is android.text.Layout\#BREAK_STRATEGY_SIMPLE, android.text.Layout\#BREAK_STRATEGY_HIGH_QUALITY, or android.text.Layout\#BREAK_STRATEGY_BALANCED
  ///@return this builder, useful for chaining
  ///@see StaticLayout.Builder\#setBreakStrategy
  ///@see android.widget.TextView\#setBreakStrategy
  PrecomputedText_Params_Builder setBreakStrategy(int strategy) =>
      PrecomputedText_Params_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setBreakStrategy,
          jni.JniType.objectType,
          [strategy]).object);

  static final _id_setHyphenationFrequency = jniAccessors.getMethodIDOf(
      _classRef,
      "setHyphenationFrequency",
      "(I)Landroid/text/PrecomputedText\$Params\$Builder;");

  /// from: public android.text.PrecomputedText.Params.Builder setHyphenationFrequency(int frequency)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the hyphenation frequency.
  ///
  /// The default value is Layout\#HYPHENATION_FREQUENCY_NORMAL.
  ///@param frequency the hyphenation frequency
  /// Value is android.text.Layout\#HYPHENATION_FREQUENCY_NORMAL, android.text.Layout\#HYPHENATION_FREQUENCY_FULL, or android.text.Layout\#HYPHENATION_FREQUENCY_NONE
  ///@return this builder, useful for chaining
  ///@see StaticLayout.Builder\#setHyphenationFrequency
  ///@see android.widget.TextView\#setHyphenationFrequency
  PrecomputedText_Params_Builder setHyphenationFrequency(int frequency) =>
      PrecomputedText_Params_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setHyphenationFrequency,
          jni.JniType.objectType,
          [frequency]).object);

  static final _id_setTextDirection = jniAccessors.getMethodIDOf(
      _classRef,
      "setTextDirection",
      "(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText\$Params\$Builder;");

  /// from: public android.text.PrecomputedText.Params.Builder setTextDirection(android.text.TextDirectionHeuristic textDir)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the text direction heuristic.
  ///
  /// The default value is TextDirectionHeuristics\#FIRSTSTRONG_LTR.
  ///@param textDir the text direction heuristic for resolving bidi behavior
  /// This value must never be {@code null}.
  ///@return this builder, useful for chaining
  ///@see StaticLayout.Builder\#setTextDirection
  PrecomputedText_Params_Builder setTextDirection(
          textdirectionheuristic_.TextDirectionHeuristic textDir) =>
      PrecomputedText_Params_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setTextDirection,
          jni.JniType.objectType,
          [textDir.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/text/PrecomputedText\$Params;");

  /// from: public android.text.PrecomputedText.Params build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build the Params.
  ///@return the layout parameter
  ///
  /// This value will never be {@code null}.
  PrecomputedText_Params build() =>
      PrecomputedText_Params.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}
