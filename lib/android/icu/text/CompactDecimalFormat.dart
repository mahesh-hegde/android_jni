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

import "DecimalFormat.dart" as decimalformat_;

import "../util/ULocale.dart" as ulocale_;

import "../util/CurrencyAmount.dart" as currencyamount_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.CompactDecimalFormat
///
/// The CompactDecimalFormat produces abbreviated numbers, suitable for display in environments will
/// limited real estate. For example, 'Hits: 1.2B' instead of 'Hits: 1,200,000,000'. The format will
/// be appropriate for the given language, such as "1,2 Mrd." for German.
///
/// For numbers under 1000 trillion (under 10^15, such as 123,456,789,012,345), the result will be
/// short for supported languages. However, the result may sometimes exceed 7 characters, such as
/// when there are combining marks or thin characters. In such cases, the visual width in fonts
/// should still be short.
///
/// By default, there are 2 significant digits. After creation, if more than three significant
/// digits are set (with setMaximumSignificantDigits), or if a fixed number of digits are set (with
/// setMaximumIntegerDigits or setMaximumFractionDigits), then result may be wider.
///
/// The "short" style is also capable of formatting currency amounts, such as "$1.2M" instead of
/// "$1,200,000.00" (English) or "5,3 Mio. \u20ac" instead of "5.300.000,00 \u20ac" (German). Localized data
/// concerning longer formats is not available yet in the Unicode CLDR. Because of this, attempting
/// to format a currency amount using the "long" style will produce an UnsupportedOperationException.
///
/// At this time, negative numbers and parsing are not supported, and will produce an
/// UnsupportedOperationException. Resetting the pattern prefixes or suffixes is not supported; the
/// method calls are ignored.
///
/// Note that important methods, like setting the number of decimals, will be moved up from
/// DecimalFormat to NumberFormat.
///@author markdavis
class CompactDecimalFormat extends decimalformat_.DecimalFormat {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/CompactDecimalFormat");
  CompactDecimalFormat.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat\$CompactStyle;)V");

  /// from: void <init>(android.icu.util.ULocale locale, android.icu.text.CompactDecimalFormat.CompactStyle style)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The public mechanism is CompactDecimalFormat.getInstance().
  ///@param locale the desired locale
  ///@param style the compact style
  CompactDecimalFormat.ctor4(
      ulocale_.ULocale locale, CompactDecimalFormat_CompactStyle style)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [locale.reference, style.reference]).object);

  static final _id_getInstance6 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat\$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;");

  /// from: static public android.icu.text.CompactDecimalFormat getInstance(android.icu.util.ULocale locale, android.icu.text.CompactDecimalFormat.CompactStyle style)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a CompactDecimalFormat appropriate for a locale. The result may be affected by the
  /// number system in the locale, such as ar-u-nu-latn.
  ///@param locale the desired locale
  ///@param style the compact style
  static CompactDecimalFormat getInstance6(
          ulocale_.ULocale locale, CompactDecimalFormat_CompactStyle style) =>
      CompactDecimalFormat.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance6,
          jni.JniType.objectType,
          [locale.reference, style.reference]).object);

  static final _id_getInstance7 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Ljava/util/Locale;Landroid/icu/text/CompactDecimalFormat\$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;");

  /// from: static public android.icu.text.CompactDecimalFormat getInstance(java.util.Locale locale, android.icu.text.CompactDecimalFormat.CompactStyle style)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a CompactDecimalFormat appropriate for a locale. The result may be affected by the
  /// number system in the locale, such as ar-u-nu-latn.
  ///@param locale the desired locale
  ///@param style the compact style
  static CompactDecimalFormat getInstance7(
          jni.JniObject locale, CompactDecimalFormat_CompactStyle style) =>
      CompactDecimalFormat.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance7,
          jni.JniType.objectType,
          [locale.reference, style.reference]).object);

  static final _id_parse = jniAccessors.getMethodIDOf(_classRef, "parse",
      "(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;");

  /// from: public java.lang.Number parse(java.lang.String text, java.text.ParsePosition parsePosition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Parsing is currently unsupported, and throws an UnsupportedOperationException.
  jni.JniObject parse(jni.JniString text, jni.JniObject parsePosition) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_parse,
          jni.JniType.objectType,
          [text.reference, parsePosition.reference]).object);

  static final _id_parseCurrency = jniAccessors.getMethodIDOf(
      _classRef,
      "parseCurrency",
      "(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;");

  /// from: public android.icu.util.CurrencyAmount parseCurrency(java.lang.CharSequence text, java.text.ParsePosition parsePosition)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Parsing is currently unsupported, and throws an UnsupportedOperationException.
  currencyamount_.CurrencyAmount parseCurrency(
          jni.JniObject text, jni.JniObject parsePosition) =>
      currencyamount_.CurrencyAmount.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_parseCurrency,
          jni.JniType.objectType,
          [text.reference, parsePosition.reference]).object);
}

/// from: android.icu.text.CompactDecimalFormat$CompactStyle
///
/// Style parameter for CompactDecimalFormat.
class CompactDecimalFormat_CompactStyle extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/icu/text/CompactDecimalFormat\$CompactStyle");
  CompactDecimalFormat_CompactStyle.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(_classRef,
      "values", "()[Landroid/icu/text/CompactDecimalFormat\$CompactStyle;");

  /// from: static public android.icu.text.CompactDecimalFormat.CompactStyle[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "valueOf",
      "(Ljava/lang/String;)Landroid/icu/text/CompactDecimalFormat\$CompactStyle;");

  /// from: static public android.icu.text.CompactDecimalFormat.CompactStyle valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static CompactDecimalFormat_CompactStyle valueOf(jni.JniString name) =>
      CompactDecimalFormat_CompactStyle.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_valueOf,
              jni.JniType.objectType, [name.reference]).object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: private void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  CompactDecimalFormat_CompactStyle()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}
