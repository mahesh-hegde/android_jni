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

import "UFormat.dart" as uformat_;

import "../util/ULocale.dart" as ulocale_;

import "PluralRules.dart" as pluralrules_;

import "NumberFormat.dart" as numberformat_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.PluralFormat
///
/// <code>PluralFormat</code> supports the creation of internationalized
/// messages with plural inflection. It is based on <i>plural
/// selection</i>, i.e. the caller specifies messages for each
/// plural case that can appear in the user's language and the
/// <code>PluralFormat</code> selects the appropriate message based on
/// the number.
///
/// <h3>The Problem of Plural Forms in Internationalized Messages</h3>
///
/// Different languages have different ways to inflect
/// plurals. Creating internationalized messages that include plural
/// forms is only feasible when the framework is able to handle plural
/// forms of <i>all</i> languages correctly. <code>ChoiceFormat</code>
/// doesn't handle this well, because it attaches a number interval to
/// each message and selects the message whose interval contains a
/// given number. This can only handle a finite number of
/// intervals. But in some languages, like Polish, one plural case
/// applies to infinitely many intervals (e.g., the paucal case applies to
/// numbers ending with 2, 3, or 4 except those ending with 12, 13, or
/// 14). Thus <code>ChoiceFormat</code> is not adequate.
///
/// <code>PluralFormat</code> deals with this by breaking the problem
/// into two parts:
/// <ul>
/// <li>It uses <code>PluralRules</code> that can define more complex
///     conditions for a plural case than just a single interval. These plural
///     rules define both what plural cases exist in a language, and to
///     which numbers these cases apply.
/// <li>It provides predefined plural rules for many languages. Thus, the programmer
///     need not worry about the plural cases of a language and
///     does not have to define the plural cases; they can simply
///     use the predefined keywords. The whole plural formatting of messages can
///     be done using localized patterns from resource bundles. For predefined plural
///     rules, see the CLDR <i>Language Plural Rules</i> page at
///    http://unicode.org/repos/cldr-tmp/trunk/diff/supplemental/language_plural_rules.html
/// </ul>
///
/// <h4>Usage of <code>PluralFormat</code></h4>
/// Note: Typically, plural formatting is done via <code>MessageFormat</code>
/// with a <code>plural</code> argument type,
/// rather than using a stand-alone <code>PluralFormat</code>.
///
/// This discussion assumes that you use <code>PluralFormat</code> with
/// a predefined set of plural rules. You can create one using one of
/// the constructors that takes a <code>ULocale</code> object. To
/// specify the message pattern, you can either pass it to the
/// constructor or set it explicitly using the
/// <code>applyPattern()</code> method. The <code>format()</code>
/// method takes a number object and selects the message of the
/// matching plural case. This message will be returned.
///
/// <h5>Patterns and Their Interpretation</h5>
///
/// The pattern text defines the message output for each plural case of the
/// specified locale. Syntax:
/// <blockquote><pre>
/// pluralStyle = [offsetValue] (selector '{' message '}')+
/// offsetValue = "offset:" number
/// selector = explicitValue | keyword
/// explicitValue = '=' number  // adjacent, no white space in between
/// keyword = [^[[:Pattern_Syntax:][:Pattern_White_Space:]]]+
/// message: see MessageFormat
/// </pre></blockquote>
/// Pattern_White_Space between syntax elements is ignored, except
/// between the {curly braces} and their sub-message,
/// and between the '=' and the number of an explicitValue.
///
/// There are 6 predefined case keywords in CLDR/ICU - 'zero', 'one', 'two', 'few', 'many' and
/// 'other'. You always have to define a message text for the default plural case
/// "<code>other</code>" which is contained in every rule set.
/// If you do not specify a message text for a particular plural case, the
/// message text of the plural case "<code>other</code>" gets assigned to this
/// plural case.
///
/// When formatting, the input number is first matched against the explicitValue clauses.
/// If there is no exact-number match, then a keyword is selected by calling
/// the <code>PluralRules</code> with the input number _minus the offset_.
/// (The offset defaults to 0 if it is omitted from the pattern string.)
/// If there is no clause with that keyword, then the "other" clauses is returned.
///
/// An unquoted pound sign (<code>\#</code>) in the selected sub-message
/// itself (i.e., outside of arguments nested in the sub-message)
/// is replaced by the input number minus the offset.
/// The number-minus-offset value is formatted using a
/// <code>NumberFormat</code> for the <code>PluralFormat</code>'s locale. If you
/// need special number formatting, you have to use a <code>MessageFormat</code>
/// and explicitly specify a <code>NumberFormat</code> argument.
/// <strong>Note:</strong> That argument is formatting without subtracting the offset!
/// If you need a custom format and have a non-zero offset, then you need to pass the
/// number-minus-offset value as a separate parameter.
///
/// For a usage example, see the MessageFormat class documentation.
///
/// <h4>Defining Custom Plural Rules</h4>
/// If you need to use <code>PluralFormat</code> with custom rules, you can
/// create a <code>PluralRules</code> object and pass it to
/// <code>PluralFormat</code>'s constructor. If you also specify a locale in this
/// constructor, this locale will be used to format the number in the message
/// texts.
///
/// For more information about <code>PluralRules</code>, see
/// PluralRules.
///@author tschumann (Tim Schumann)
class PluralFormat extends uformat_.UFormat {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/PluralFormat");
  PluralFormat.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new cardinal-number <code>PluralFormat</code> for the default <code>FORMAT</code> locale.
  /// This locale will be used to get the set of plural rules and for standard
  /// number formatting.
  ///@see Category\#FORMAT
  PluralFormat()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/util/ULocale;)V");

  /// from: public void <init>(android.icu.util.ULocale ulocale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new cardinal-number <code>PluralFormat</code> for a given locale.
  ///@param ulocale the <code>PluralFormat</code> will be configured with
  ///        rules for this locale. This locale will also be used for standard
  ///        number formatting.
  PluralFormat.ctor1(ulocale_.ULocale ulocale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [ulocale.reference]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/Locale;)V");

  /// from: public void <init>(java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new cardinal-number <code>PluralFormat</code> for a given
  /// java.util.Locale.
  ///@param locale the <code>PluralFormat</code> will be configured with
  ///        rules for this locale. This locale will also be used for standard
  ///        number formatting.
  PluralFormat.ctor2(jni.JniObject locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [locale.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/text/PluralRules;)V");

  /// from: public void <init>(android.icu.text.PluralRules rules)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new cardinal-number <code>PluralFormat</code> for a given set of rules.
  /// The standard number formatting will be done using the default <code>FORMAT</code> locale.
  ///@param rules defines the behavior of the <code>PluralFormat</code>
  ///        object.
  ///@see Category\#FORMAT
  PluralFormat.ctor3(pluralrules_.PluralRules rules)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [rules.reference]).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;)V");

  /// from: public void <init>(android.icu.util.ULocale ulocale, android.icu.text.PluralRules rules)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new cardinal-number <code>PluralFormat</code> for a given set of rules.
  /// The standard number formatting will be done using the given locale.
  ///@param ulocale the default number formatting will be done using this
  ///        locale.
  ///@param rules defines the behavior of the <code>PluralFormat</code>
  ///        object.
  PluralFormat.ctor4(ulocale_.ULocale ulocale, pluralrules_.PluralRules rules)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [ulocale.reference, rules.reference]).object);

  static final _id_ctor5 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/util/Locale;Landroid/icu/text/PluralRules;)V");

  /// from: public void <init>(java.util.Locale locale, android.icu.text.PluralRules rules)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new cardinal-number <code>PluralFormat</code> for a given set of rules.
  /// The standard number formatting will be done using the given locale.
  ///@param locale the default number formatting will be done using this
  ///        locale.
  ///@param rules defines the behavior of the <code>PluralFormat</code>
  ///        object.
  PluralFormat.ctor5(jni.JniObject locale, pluralrules_.PluralRules rules)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor5, [locale.reference, rules.reference]).object);

  static final _id_ctor6 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules\$PluralType;)V");

  /// from: public void <init>(android.icu.util.ULocale ulocale, android.icu.text.PluralRules.PluralType type)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new <code>PluralFormat</code> for the plural type.
  /// The standard number formatting will be done using the given locale.
  ///@param ulocale the default number formatting will be done using this
  ///        locale.
  ///@param type The plural type (e.g., cardinal or ordinal).
  PluralFormat.ctor6(
      ulocale_.ULocale ulocale, pluralrules_.PluralRules_PluralType type)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor6, [ulocale.reference, type.reference]).object);

  static final _id_ctor7 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/util/Locale;Landroid/icu/text/PluralRules\$PluralType;)V");

  /// from: public void <init>(java.util.Locale locale, android.icu.text.PluralRules.PluralType type)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new <code>PluralFormat</code> for the plural type.
  /// The standard number formatting will be done using the given java.util.Locale.
  ///@param locale the default number formatting will be done using this
  ///        locale.
  ///@param type The plural type (e.g., cardinal or ordinal).
  PluralFormat.ctor7(
      jni.JniObject locale, pluralrules_.PluralRules_PluralType type)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor7, [locale.reference, type.reference]).object);

  static final _id_ctor8 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String pattern)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new cardinal-number <code>PluralFormat</code> for a given pattern string.
  /// The default <code>FORMAT</code> locale will be used to get the set of plural rules and for
  /// standard number formatting.
  ///@param pattern the pattern for this <code>PluralFormat</code>.
  ///@throws IllegalArgumentException if the pattern is invalid.
  ///@see Category\#FORMAT
  PluralFormat.ctor8(jni.JniString pattern)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor8, [pattern.reference]).object);

  static final _id_ctor9 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/util/ULocale;Ljava/lang/String;)V");

  /// from: public void <init>(android.icu.util.ULocale ulocale, java.lang.String pattern)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new cardinal-number <code>PluralFormat</code> for a given pattern string and
  /// locale.
  /// The locale will be used to get the set of plural rules and for
  /// standard number formatting.
  /// Example code:{@sample external/icu/android_icu4j/src/samples/java/android/icu/samples/text/pluralformat/PluralFormatSample.java PluralFormatExample}
  ///@param ulocale the <code>PluralFormat</code> will be configured with
  ///        rules for this locale. This locale will also be used for standard
  ///        number formatting.
  ///@param pattern the pattern for this <code>PluralFormat</code>.
  ///@throws IllegalArgumentException if the pattern is invalid.
  PluralFormat.ctor9(ulocale_.ULocale ulocale, jni.JniString pattern)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor9,
            [ulocale.reference, pattern.reference]).object);

  static final _id_ctor10 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/icu/text/PluralRules;Ljava/lang/String;)V");

  /// from: public void <init>(android.icu.text.PluralRules rules, java.lang.String pattern)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new cardinal-number <code>PluralFormat</code> for a given set of rules and a
  /// pattern.
  /// The standard number formatting will be done using the default <code>FORMAT</code> locale.
  ///@param rules defines the behavior of the <code>PluralFormat</code>
  ///        object.
  ///@param pattern the pattern for this <code>PluralFormat</code>.
  ///@throws IllegalArgumentException if the pattern is invalid.
  ///@see Category\#FORMAT
  PluralFormat.ctor10(pluralrules_.PluralRules rules, jni.JniString pattern)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor10,
            [rules.reference, pattern.reference]).object);

  static final _id_ctor11 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;Ljava/lang/String;)V");

  /// from: public void <init>(android.icu.util.ULocale ulocale, android.icu.text.PluralRules rules, java.lang.String pattern)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new cardinal-number <code>PluralFormat</code> for a given set of rules, a
  /// pattern and a locale.
  ///@param ulocale the <code>PluralFormat</code> will be configured with
  ///        rules for this locale. This locale will also be used for standard
  ///        number formatting.
  ///@param rules defines the behavior of the <code>PluralFormat</code>
  ///        object.
  ///@param pattern the pattern for this <code>PluralFormat</code>.
  ///@throws IllegalArgumentException if the pattern is invalid.
  PluralFormat.ctor11(ulocale_.ULocale ulocale, pluralrules_.PluralRules rules,
      jni.JniString pattern)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor11,
            [ulocale.reference, rules.reference, pattern.reference]).object);

  static final _id_ctor12 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules\$PluralType;Ljava/lang/String;)V");

  /// from: public void <init>(android.icu.util.ULocale ulocale, android.icu.text.PluralRules.PluralType type, java.lang.String pattern)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new <code>PluralFormat</code> for a plural type, a
  /// pattern and a locale.
  ///@param ulocale the <code>PluralFormat</code> will be configured with
  ///        rules for this locale. This locale will also be used for standard
  ///        number formatting.
  ///@param type The plural type (e.g., cardinal or ordinal).
  ///@param pattern the pattern for this <code>PluralFormat</code>.
  ///@throws IllegalArgumentException if the pattern is invalid.
  PluralFormat.ctor12(ulocale_.ULocale ulocale,
      pluralrules_.PluralRules_PluralType type, jni.JniString pattern)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor12,
            [ulocale.reference, type.reference, pattern.reference]).object);

  static final _id_applyPattern = jniAccessors.getMethodIDOf(
      _classRef, "applyPattern", "(Ljava/lang/String;)V");

  /// from: public void applyPattern(java.lang.String pattern)
  ///
  /// Sets the pattern used by this plural format.
  /// The method parses the pattern and creates a map of format strings
  /// for the plural rules.
  /// Patterns and their interpretation are specified in the class description.
  ///@param pattern the pattern for this plural format.
  ///@throws IllegalArgumentException if the pattern is invalid.
  void applyPattern(jni.JniString pattern) => jniAccessors.callMethodWithArgs(
      reference,
      _id_applyPattern,
      jni.JniType.voidType,
      [pattern.reference]).check();

  static final _id_toPattern = jniAccessors.getMethodIDOf(
      _classRef, "toPattern", "()Ljava/lang/String;");

  /// from: public java.lang.String toPattern()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the pattern for this PluralFormat.
  ///@return the pattern string
  jni.JniString toPattern() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toPattern, jni.JniType.objectType, []).object);

  static final _id_format =
      jniAccessors.getMethodIDOf(_classRef, "format", "(D)Ljava/lang/String;");

  /// from: public final java.lang.String format(double number)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Formats a plural message for a given number.
  ///@param number a number for which the plural message should be formatted.
  ///        If no pattern has been applied to this
  ///        <code>PluralFormat</code> object yet, the formatted number will
  ///        be returned.
  ///@return the string containing the formatted plural message.
  jni.JniString format(double number) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_format, jni.JniType.objectType, [number]).object);

  static final _id_format1 = jniAccessors.getMethodIDOf(_classRef, "format",
      "(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;");

  /// from: public java.lang.StringBuffer format(java.lang.Object number, java.lang.StringBuffer toAppendTo, java.text.FieldPosition pos)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Formats a plural message for a given number and appends the formatted
  /// message to the given <code>StringBuffer</code>.
  ///@param number a number object (instance of <code>Number</code> for which
  ///        the plural message should be formatted. If no pattern has been
  ///        applied to this <code>PluralFormat</code> object yet, the
  ///        formatted number will be returned.
  ///        Note: If this object is not an instance of <code>Number</code>,
  ///              the <code>toAppendTo</code> will not be modified.
  ///@param toAppendTo the formatted message will be appended to this
  ///        <code>StringBuffer</code>.
  ///@param pos will be ignored by this method.
  ///@return the string buffer passed in as toAppendTo, with formatted text
  ///         appended.
  ///@throws IllegalArgumentException if number is not an instance of Number
  jni.JniObject format1(
          jni.JniObject number, jni.JniObject toAppendTo, jni.JniObject pos) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_format1,
          jni.JniType.objectType,
          [number.reference, toAppendTo.reference, pos.reference]).object);

  static final _id_parse = jniAccessors.getMethodIDOf(_classRef, "parse",
      "(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;");

  /// from: public java.lang.Number parse(java.lang.String text, java.text.ParsePosition parsePosition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This method is not yet supported by <code>PluralFormat</code>.
  ///@param text the string to be parsed.
  ///@param parsePosition defines the position where parsing is to begin,
  /// and upon return, the position where parsing left off.  If the position
  /// has not changed upon return, then parsing failed.
  ///@return nothing because this method is not yet implemented.
  ///@throws UnsupportedOperationException will always be thrown by this method.
  jni.JniObject parse(jni.JniString text, jni.JniObject parsePosition) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_parse,
          jni.JniType.objectType,
          [text.reference, parsePosition.reference]).object);

  static final _id_parseObject = jniAccessors.getMethodIDOf(
      _classRef,
      "parseObject",
      "(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;");

  /// from: public java.lang.Object parseObject(java.lang.String source, java.text.ParsePosition pos)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This method is not yet supported by <code>PluralFormat</code>.
  ///@param source the string to be parsed.
  ///@param pos defines the position where parsing is to begin,
  /// and upon return, the position where parsing left off.  If the position
  /// has not changed upon return, then parsing failed.
  ///@return nothing because this method is not yet implemented.
  ///@throws UnsupportedOperationException will always be thrown by this method.
  jni.JniObject parseObject(jni.JniString source, jni.JniObject pos) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_parseObject,
          jni.JniType.objectType,
          [source.reference, pos.reference]).object);

  static final _id_setNumberFormat = jniAccessors.getMethodIDOf(
      _classRef, "setNumberFormat", "(Landroid/icu/text/NumberFormat;)V");

  /// from: public void setNumberFormat(android.icu.text.NumberFormat format)
  ///
  /// Sets the number format used by this formatter.  You only need to
  /// call this if you want a different number format than the default
  /// formatter for the locale.
  ///@param format the number format to use.
  void setNumberFormat(numberformat_.NumberFormat format) =>
      jniAccessors.callMethodWithArgs(reference, _id_setNumberFormat,
          jni.JniType.voidType, [format.reference]).check();

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object rhs)
  ///
  /// {@inheritDoc}
  bool equals1(jni.JniObject rhs) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [rhs.reference]).boolean;

  static final _id_equals2 = jniAccessors.getMethodIDOf(
      _classRef, "equals", "(Landroid/icu/text/PluralFormat;)Z");

  /// from: public boolean equals(android.icu.text.PluralFormat rhs)
  ///
  /// Returns true if this equals the provided PluralFormat.
  ///@param rhs the PluralFormat to compare against
  ///@return true if this equals rhs
  bool equals2(PluralFormat rhs) => jniAccessors.callMethodWithArgs(
      reference, _id_equals2, jni.JniType.booleanType, [rhs.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// {@inheritDoc}
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
