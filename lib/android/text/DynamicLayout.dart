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

import "Layout.dart" as layout_;

import "TextPaint.dart" as textpaint_;

import "TextUtils.dart" as textutils_;

import "TextDirectionHeuristic.dart" as textdirectionheuristic_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.DynamicLayout
///
/// DynamicLayout is a text layout that updates itself as the text is edited.
/// This is used by widgets to control text layout. You should not need
/// to use this class directly unless you are implementing your own widget
/// or custom display object, or need to call
/// android.graphics.Canvas\#drawText(java.lang.CharSequence, int, int, float, float, android.graphics.Paint) Canvas.drawText() directly.
///
class DynamicLayout extends layout_.Layout {
  static final _classRef =
      jniAccessors.getClassOf("android/text/DynamicLayout");
  DynamicLayout.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout\$Alignment;FFZ)V");

  /// from: public void <init>(java.lang.CharSequence base, android.text.TextPaint paint, int width, android.text.Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use Builder instead.
  ///@param base This value must never be {@code null}.
  ///@param paint This value must never be {@code null}.
  ///@param width Value is 0 or greater
  ///@param align This value must never be {@code null}.
  ///@param spacingmult Value is 0.0 or greater
  DynamicLayout.ctor1(
      jni.JniObject base,
      textpaint_.TextPaint paint,
      int width,
      layout_.Layout_Alignment align,
      double spacingmult,
      double spacingadd,
      bool includepad)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, [
          base.reference,
          paint.reference,
          width,
          align.reference,
          spacingmult,
          spacingadd,
          includepad
        ]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout\$Alignment;FFZ)V");

  /// from: public void <init>(java.lang.CharSequence base, java.lang.CharSequence display, android.text.TextPaint paint, int width, android.text.Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use Builder instead.
  ///@param base This value must never be {@code null}.
  ///@param display This value must never be {@code null}.
  ///@param paint This value must never be {@code null}.
  ///@param width Value is 0 or greater
  ///@param align This value must never be {@code null}.
  ///@param spacingmult Value is 0.0 or greater
  DynamicLayout.ctor2(
      jni.JniObject base,
      jni.JniObject display,
      textpaint_.TextPaint paint,
      int width,
      layout_.Layout_Alignment align,
      double spacingmult,
      double spacingadd,
      bool includepad)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, [
          base.reference,
          display.reference,
          paint.reference,
          width,
          align.reference,
          spacingmult,
          spacingadd,
          includepad
        ]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout\$Alignment;FFZLandroid/text/TextUtils\$TruncateAt;I)V");

  /// from: public void <init>(java.lang.CharSequence base, java.lang.CharSequence display, android.text.TextPaint paint, int width, android.text.Layout.Alignment align, float spacingmult, float spacingadd, boolean includepad, android.text.TextUtils.TruncateAt ellipsize, int ellipsizedWidth)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use Builder instead.
  ///@param base This value must never be {@code null}.
  ///@param display This value must never be {@code null}.
  ///@param paint This value must never be {@code null}.
  ///@param width Value is 0 or greater
  ///@param align This value must never be {@code null}.
  ///@param spacingmult Value is 0.0 or greater
  ///@param ellipsize This value may be {@code null}.
  ///@param ellipsizedWidth Value is 0 or greater
  DynamicLayout.ctor3(
      jni.JniObject base,
      jni.JniObject display,
      textpaint_.TextPaint paint,
      int width,
      layout_.Layout_Alignment align,
      double spacingmult,
      double spacingadd,
      bool includepad,
      textutils_.TextUtils_TruncateAt ellipsize,
      int ellipsizedWidth)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          base.reference,
          display.reference,
          paint.reference,
          width,
          align.reference,
          spacingmult,
          spacingadd,
          includepad,
          ellipsize.reference,
          ellipsizedWidth
        ]).object);

  static final _id_getLineCount =
      jniAccessors.getMethodIDOf(_classRef, "getLineCount", "()I");

  /// from: public int getLineCount()
  int getLineCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getLineCount, jni.JniType.intType, []).integer;

  static final _id_getLineTop =
      jniAccessors.getMethodIDOf(_classRef, "getLineTop", "(I)I");

  /// from: public int getLineTop(int line)
  int getLineTop(int line) => jniAccessors.callMethodWithArgs(
      reference, _id_getLineTop, jni.JniType.intType, [line]).integer;

  static final _id_getLineDescent =
      jniAccessors.getMethodIDOf(_classRef, "getLineDescent", "(I)I");

  /// from: public int getLineDescent(int line)
  int getLineDescent(int line) => jniAccessors.callMethodWithArgs(
      reference, _id_getLineDescent, jni.JniType.intType, [line]).integer;

  static final _id_getLineStart =
      jniAccessors.getMethodIDOf(_classRef, "getLineStart", "(I)I");

  /// from: public int getLineStart(int line)
  int getLineStart(int line) => jniAccessors.callMethodWithArgs(
      reference, _id_getLineStart, jni.JniType.intType, [line]).integer;

  static final _id_getLineContainsTab =
      jniAccessors.getMethodIDOf(_classRef, "getLineContainsTab", "(I)Z");

  /// from: public boolean getLineContainsTab(int line)
  bool getLineContainsTab(int line) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getLineContainsTab,
      jni.JniType.booleanType,
      [line]).boolean;

  static final _id_getParagraphDirection =
      jniAccessors.getMethodIDOf(_classRef, "getParagraphDirection", "(I)I");

  /// from: public int getParagraphDirection(int line)
  int getParagraphDirection(int line) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getParagraphDirection,
      jni.JniType.intType,
      [line]).integer;

  static final _id_getLineDirections = jniAccessors.getMethodIDOf(
      _classRef, "getLineDirections", "(I)Landroid/text/Layout\$Directions;");

  /// from: public final android.text.Layout.Directions getLineDirections(int line)
  /// The returned object must be deleted after use, by calling the `delete` method.
  layout_.Layout_Directions getLineDirections(int line) =>
      layout_.Layout_Directions.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getLineDirections,
          jni.JniType.objectType,
          [line]).object);

  static final _id_getTopPadding =
      jniAccessors.getMethodIDOf(_classRef, "getTopPadding", "()I");

  /// from: public int getTopPadding()
  int getTopPadding() => jniAccessors.callMethodWithArgs(
      reference, _id_getTopPadding, jni.JniType.intType, []).integer;

  static final _id_getBottomPadding =
      jniAccessors.getMethodIDOf(_classRef, "getBottomPadding", "()I");

  /// from: public int getBottomPadding()
  int getBottomPadding() => jniAccessors.callMethodWithArgs(
      reference, _id_getBottomPadding, jni.JniType.intType, []).integer;

  static final _id_getEllipsizedWidth =
      jniAccessors.getMethodIDOf(_classRef, "getEllipsizedWidth", "()I");

  /// from: public int getEllipsizedWidth()
  int getEllipsizedWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getEllipsizedWidth, jni.JniType.intType, []).integer;

  static final _id_getEllipsisStart =
      jniAccessors.getMethodIDOf(_classRef, "getEllipsisStart", "(I)I");

  /// from: public int getEllipsisStart(int line)
  int getEllipsisStart(int line) => jniAccessors.callMethodWithArgs(
      reference, _id_getEllipsisStart, jni.JniType.intType, [line]).integer;

  static final _id_getEllipsisCount =
      jniAccessors.getMethodIDOf(_classRef, "getEllipsisCount", "(I)I");

  /// from: public int getEllipsisCount(int line)
  int getEllipsisCount(int line) => jniAccessors.callMethodWithArgs(
      reference, _id_getEllipsisCount, jni.JniType.intType, [line]).integer;
}

/// from: android.text.DynamicLayout$Builder
///
/// Builder for dynamic layouts. The builder is the preferred pattern for constructing
/// DynamicLayout objects and should be preferred over the constructors, particularly to access
/// newer features. To build a dynamic layout, first call \#obtain with the required
/// arguments (base, paint, and width), then call setters for optional parameters, and finally
/// \#build to build the DynamicLayout object. Parameters not explicitly set will get
/// default values.
class DynamicLayout_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/DynamicLayout\$Builder");
  DynamicLayout_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_obtain = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "obtain",
      "(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout\$Builder;");

  /// from: static public android.text.DynamicLayout.Builder obtain(java.lang.CharSequence base, android.text.TextPaint paint, int width)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Obtain a builder for constructing DynamicLayout objects.
  ///@param base This value must never be {@code null}.
  ///@param paint This value must never be {@code null}.
  ///@param width Value is 0 or greater
  ///@return This value will never be {@code null}.
  static DynamicLayout_Builder obtain(
          jni.JniObject base, textpaint_.TextPaint paint, int width) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_obtain,
          jni.JniType.objectType,
          [base.reference, paint.reference, width]).object);

  static final _id_setDisplayText = jniAccessors.getMethodIDOf(
      _classRef,
      "setDisplayText",
      "(Ljava/lang/CharSequence;)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setDisplayText(java.lang.CharSequence display)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the transformed text (password transformation being the primary example of a
  /// transformation) that will be updated as the base text is changed. The default is the
  /// 'base' text passed to the builder's constructor.
  ///@param display the transformed text
  /// This value must never be {@code null}.
  ///@return this builder, useful for chaining
  ///
  /// This value will never be {@code null}.
  DynamicLayout_Builder setDisplayText(jni.JniObject display) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setDisplayText,
          jni.JniType.objectType,
          [display.reference]).object);

  static final _id_setAlignment = jniAccessors.getMethodIDOf(
      _classRef,
      "setAlignment",
      "(Landroid/text/Layout\$Alignment;)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setAlignment(android.text.Layout.Alignment alignment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the alignment. The default is Layout.Alignment\#ALIGN_NORMAL.
  ///@param alignment Alignment for the resulting DynamicLayout
  /// This value must never be {@code null}.
  ///@return this builder, useful for chaining
  ///
  /// This value will never be {@code null}.
  DynamicLayout_Builder setAlignment(layout_.Layout_Alignment alignment) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setAlignment,
          jni.JniType.objectType,
          [alignment.reference]).object);

  static final _id_setTextDirection = jniAccessors.getMethodIDOf(
      _classRef,
      "setTextDirection",
      "(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setTextDirection(android.text.TextDirectionHeuristic textDir)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the text direction heuristic. The text direction heuristic is used to resolve text
  /// direction per-paragraph based on the input text. The default is
  /// TextDirectionHeuristics\#FIRSTSTRONG_LTR.
  ///@param textDir text direction heuristic for resolving bidi behavior.
  /// This value must never be {@code null}.
  ///@return this builder, useful for chaining
  ///
  /// This value will never be {@code null}.
  DynamicLayout_Builder setTextDirection(
          textdirectionheuristic_.TextDirectionHeuristic textDir) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setTextDirection,
          jni.JniType.objectType,
          [textDir.reference]).object);

  static final _id_setLineSpacing = jniAccessors.getMethodIDOf(
      _classRef, "setLineSpacing", "(FF)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setLineSpacing(float spacingAdd, float spacingMult)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set line spacing parameters. Each line will have its line spacing multiplied by
  /// {@code spacingMult} and then increased by {@code spacingAdd}. The default is 0.0 for
  /// {@code spacingAdd} and 1.0 for {@code spacingMult}.
  ///@param spacingAdd the amount of line spacing addition
  ///@param spacingMult the line spacing multiplier
  /// Value is 0.0 or greater
  ///@return this builder, useful for chaining
  /// This value will never be {@code null}.
  ///@see android.widget.TextView\#setLineSpacing
  DynamicLayout_Builder setLineSpacing(double spacingAdd, double spacingMult) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setLineSpacing,
          jni.JniType.objectType,
          [spacingAdd, spacingMult]).object);

  static final _id_setIncludePad = jniAccessors.getMethodIDOf(
      _classRef, "setIncludePad", "(Z)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setIncludePad(boolean includePad)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set whether to include extra space beyond font ascent and descent (which is needed to
  /// avoid clipping in some languages, such as Arabic and Kannada). The default is
  /// {@code true}.
  ///@param includePad whether to include padding
  ///@return this builder, useful for chaining
  /// This value will never be {@code null}.
  ///@see android.widget.TextView\#setIncludeFontPadding
  DynamicLayout_Builder setIncludePad(bool includePad) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setIncludePad, jni.JniType.objectType, [includePad]).object);

  static final _id_setUseLineSpacingFromFallbacks = jniAccessors.getMethodIDOf(
      _classRef,
      "setUseLineSpacingFromFallbacks",
      "(Z)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setUseLineSpacingFromFallbacks(boolean useLineSpacingFromFallbacks)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set whether to respect the ascent and descent of the fallback fonts that are used in
  /// displaying the text (which is needed to avoid text from consecutive lines running into
  /// each other). If set, fallback fonts that end up getting used can increase the ascent
  /// and descent of the lines that they are used on.
  ///
  /// For backward compatibility reasons, the default is {@code false}, but setting this to
  /// true is strongly recommended. It is required to be true if text could be in languages
  /// like Burmese or Tibetan where text is typically much taller or deeper than Latin text.
  ///@param useLineSpacingFromFallbacks whether to expand linespacing based on fallback fonts
  ///@return this builder, useful for chaining
  ///
  /// This value will never be {@code null}.
  DynamicLayout_Builder setUseLineSpacingFromFallbacks(
          bool useLineSpacingFromFallbacks) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setUseLineSpacingFromFallbacks,
          jni.JniType.objectType,
          [useLineSpacingFromFallbacks]).object);

  static final _id_setEllipsizedWidth = jniAccessors.getMethodIDOf(_classRef,
      "setEllipsizedWidth", "(I)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setEllipsizedWidth(int ellipsizedWidth)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the width as used for ellipsizing purposes, if it differs from the normal layout
  /// width. The default is the {@code width} passed to \#obtain.
  ///@param ellipsizedWidth width used for ellipsizing, in pixels
  /// Value is 0 or greater
  ///@return this builder, useful for chaining
  /// This value will never be {@code null}.
  ///@see android.widget.TextView\#setEllipsize
  DynamicLayout_Builder setEllipsizedWidth(int ellipsizedWidth) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setEllipsizedWidth,
          jni.JniType.objectType,
          [ellipsizedWidth]).object);

  static final _id_setEllipsize = jniAccessors.getMethodIDOf(
      _classRef,
      "setEllipsize",
      "(Landroid/text/TextUtils\$TruncateAt;)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setEllipsize(android.text.TextUtils.TruncateAt ellipsize)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set ellipsizing on the layout. Causes words that are longer than the view is wide, or
  /// exceeding the number of lines (see \#setMaxLines) in the case of
  /// android.text.TextUtils.TruncateAt\#END or
  /// android.text.TextUtils.TruncateAt\#MARQUEE, to be ellipsized instead of broken.
  /// The default is {@code null}, indicating no ellipsis is to be applied.
  ///@param ellipsize type of ellipsis behavior
  /// This value may be {@code null}.
  ///@return this builder, useful for chaining
  ///@see android.widget.TextView\#setEllipsize
  DynamicLayout_Builder setEllipsize(
          textutils_.TextUtils_TruncateAt ellipsize) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setEllipsize,
          jni.JniType.objectType,
          [ellipsize.reference]).object);

  static final _id_setBreakStrategy = jniAccessors.getMethodIDOf(_classRef,
      "setBreakStrategy", "(I)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setBreakStrategy(int breakStrategy)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set break strategy, useful for selecting high quality or balanced paragraph layout
  /// options. The default is Layout\#BREAK_STRATEGY_SIMPLE.
  ///@param breakStrategy break strategy for paragraph layout
  /// Value is android.text.Layout\#BREAK_STRATEGY_SIMPLE, android.text.Layout\#BREAK_STRATEGY_HIGH_QUALITY, or android.text.Layout\#BREAK_STRATEGY_BALANCED
  ///@return this builder, useful for chaining
  /// This value will never be {@code null}.
  ///@see android.widget.TextView\#setBreakStrategy
  DynamicLayout_Builder setBreakStrategy(int breakStrategy) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setBreakStrategy,
          jni.JniType.objectType,
          [breakStrategy]).object);

  static final _id_setHyphenationFrequency = jniAccessors.getMethodIDOf(
      _classRef,
      "setHyphenationFrequency",
      "(I)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setHyphenationFrequency(int hyphenationFrequency)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set hyphenation frequency, to control the amount of automatic hyphenation used. The
  /// possible values are defined in Layout, by constants named with the pattern
  /// {@code HYPHENATION_FREQUENCY_*}. The default is
  /// Layout\#HYPHENATION_FREQUENCY_NONE.
  ///@param hyphenationFrequency hyphenation frequency for the paragraph
  /// Value is android.text.Layout\#HYPHENATION_FREQUENCY_NORMAL, android.text.Layout\#HYPHENATION_FREQUENCY_FULL, or android.text.Layout\#HYPHENATION_FREQUENCY_NONE
  ///@return this builder, useful for chaining
  /// This value will never be {@code null}.
  ///@see android.widget.TextView\#setHyphenationFrequency
  DynamicLayout_Builder setHyphenationFrequency(int hyphenationFrequency) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setHyphenationFrequency,
          jni.JniType.objectType,
          [hyphenationFrequency]).object);

  static final _id_setJustificationMode = jniAccessors.getMethodIDOf(_classRef,
      "setJustificationMode", "(I)Landroid/text/DynamicLayout\$Builder;");

  /// from: public android.text.DynamicLayout.Builder setJustificationMode(int justificationMode)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set paragraph justification mode. The default value is
  /// Layout\#JUSTIFICATION_MODE_NONE. If the last line is too short for justification,
  /// the last line will be displayed with the alignment set by \#setAlignment.
  ///@param justificationMode justification mode for the paragraph.
  /// Value is android.text.Layout\#JUSTIFICATION_MODE_NONE, or android.text.Layout\#JUSTIFICATION_MODE_INTER_WORD
  ///@return this builder, useful for chaining.
  ///
  /// This value will never be {@code null}.
  DynamicLayout_Builder setJustificationMode(int justificationMode) =>
      DynamicLayout_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setJustificationMode,
          jni.JniType.objectType,
          [justificationMode]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/text/DynamicLayout;");

  /// from: public android.text.DynamicLayout build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build the DynamicLayout after options have been set.
  ///
  /// Note: the builder object must not be reused in any way after calling this method.
  /// Setting parameters after calling this method, or calling it a second time on the same
  /// builder object, will likely lead to unexpected results.
  ///@return the newly constructed DynamicLayout object
  ///
  /// This value will never be {@code null}.
  DynamicLayout build() =>
      DynamicLayout.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}
