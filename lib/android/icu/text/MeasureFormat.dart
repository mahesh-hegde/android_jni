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

import "NumberFormat.dart" as numberformat_;

import "../util/Measure.dart" as measure_;

import "../util/MeasureUnit.dart" as measureunit_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.MeasureFormat
///
/// A formatter for Measure objects.
///
/// To format a Measure object, first create a formatter
/// object using a MeasureFormat factory method.  Then use that
/// object's format or formatMeasures methods.
///
/// Here is sample code:
/// <pre>
///      MeasureFormat fmtFr = MeasureFormat.getInstance(
///              ULocale.FRENCH, FormatWidth.SHORT);
///      Measure measure = new Measure(23, MeasureUnit.CELSIUS);
///
///      // Output: 23 °C
///      System.out.println(fmtFr.format(measure));
///
///      Measure measureF = new Measure(70, MeasureUnit.FAHRENHEIT);
///
///      // Output: 70 °F
///      System.out.println(fmtFr.format(measureF));
///
///      MeasureFormat fmtFrFull = MeasureFormat.getInstance(
///              ULocale.FRENCH, FormatWidth.WIDE);
///      // Output: 70 pieds et 5,3 pouces
///      System.out.println(fmtFrFull.formatMeasures(
///              new Measure(70, MeasureUnit.FOOT),
///              new Measure(5.3, MeasureUnit.INCH)));
///
///      // Output: 1 pied et 1 pouce
///      System.out.println(fmtFrFull.formatMeasures(
///              new Measure(1, MeasureUnit.FOOT),
///              new Measure(1, MeasureUnit.INCH)));
///
///      MeasureFormat fmtFrNarrow = MeasureFormat.getInstance(
///               ULocale.FRENCH, FormatWidth.NARROW);
///      // Output: 1\u2032 1\u2033
///      System.out.println(fmtFrNarrow.formatMeasures(
///              new Measure(1, MeasureUnit.FOOT),
///              new Measure(1, MeasureUnit.INCH)));
///
///
///      MeasureFormat fmtEn = MeasureFormat.getInstance(ULocale.ENGLISH, FormatWidth.WIDE);
///
///      // Output: 1 inch, 2 feet
///      fmtEn.formatMeasures(
///              new Measure(1, MeasureUnit.INCH),
///              new Measure(2, MeasureUnit.FOOT));
/// </pre>
///
/// This class does not do conversions from one unit to another. It simply formats
/// whatever units it is given
///
/// This class is immutable and thread-safe so long as its deprecated subclass,
/// TimeUnitFormat, is never used. TimeUnitFormat is not thread-safe, and is
/// mutable. Although this class has existing subclasses, this class does not support new
/// sub-classes.
///@see android.icu.text.UFormat
///@author Alan Liu
class MeasureFormat extends uformat_.UFormat {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/MeasureFormat");
  MeasureFormat.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat\$FormatWidth;)Landroid/icu/text/MeasureFormat;");

  /// from: static public android.icu.text.MeasureFormat getInstance(android.icu.util.ULocale locale, android.icu.text.MeasureFormat.FormatWidth formatWidth)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a format from the locale, formatWidth, and format.
  ///@param locale the locale.
  ///@param formatWidth hints how long formatted strings should be.
  ///@return The new MeasureFormat object.
  static MeasureFormat getInstance(
          ulocale_.ULocale locale, MeasureFormat_FormatWidth formatWidth) =>
      MeasureFormat.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance,
          jni.JniType.objectType,
          [locale.reference, formatWidth.reference]).object);

  static final _id_getInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Ljava/util/Locale;Landroid/icu/text/MeasureFormat\$FormatWidth;)Landroid/icu/text/MeasureFormat;");

  /// from: static public android.icu.text.MeasureFormat getInstance(java.util.Locale locale, android.icu.text.MeasureFormat.FormatWidth formatWidth)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a format from the java.util.Locale and formatWidth.
  ///@param locale the java.util.Locale.
  ///@param formatWidth hints how long formatted strings should be.
  ///@return The new MeasureFormat object.
  static MeasureFormat getInstance1(
          jni.JniObject locale, MeasureFormat_FormatWidth formatWidth) =>
      MeasureFormat.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance1,
          jni.JniType.objectType,
          [locale.reference, formatWidth.reference]).object);

  static final _id_getInstance2 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat\$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;");

  /// from: static public android.icu.text.MeasureFormat getInstance(android.icu.util.ULocale locale, android.icu.text.MeasureFormat.FormatWidth formatWidth, android.icu.text.NumberFormat format)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a format from the locale, formatWidth, and format.
  ///@param locale the locale.
  ///@param formatWidth hints how long formatted strings should be.
  ///@param format This is defensively copied.
  ///@return The new MeasureFormat object.
  static MeasureFormat getInstance2(
          ulocale_.ULocale locale,
          MeasureFormat_FormatWidth formatWidth,
          numberformat_.NumberFormat format) =>
      MeasureFormat.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance2,
          jni.JniType.objectType,
          [locale.reference, formatWidth.reference, format.reference]).object);

  static final _id_getInstance3 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Ljava/util/Locale;Landroid/icu/text/MeasureFormat\$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;");

  /// from: static public android.icu.text.MeasureFormat getInstance(java.util.Locale locale, android.icu.text.MeasureFormat.FormatWidth formatWidth, android.icu.text.NumberFormat format)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a format from the java.util.Locale, formatWidth, and format.
  ///@param locale the java.util.Locale.
  ///@param formatWidth hints how long formatted strings should be.
  ///@param format This is defensively copied.
  ///@return The new MeasureFormat object.
  static MeasureFormat getInstance3(
          jni.JniObject locale,
          MeasureFormat_FormatWidth formatWidth,
          numberformat_.NumberFormat format) =>
      MeasureFormat.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance3,
          jni.JniType.objectType,
          [locale.reference, formatWidth.reference, format.reference]).object);

  static final _id_format = jniAccessors.getMethodIDOf(_classRef, "format",
      "(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;");

  /// from: public java.lang.StringBuffer format(java.lang.Object obj, java.lang.StringBuffer toAppendTo, java.text.FieldPosition pos)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Able to format Collection&lt;? extends Measure&gt;, Measure[], and Measure
  /// by delegating to formatMeasures.
  /// If the pos argument identifies a NumberFormat field,
  /// then its indices are set to the beginning and end of the first such field
  /// encountered. MeasureFormat itself does not supply any fields.
  ///
  /// Calling a
  /// <code>formatMeasures</code> method is preferred over calling
  /// this method as they give better performance.
  ///@param obj must be a Collection&lt;? extends Measure&gt;, Measure[], or Measure object.
  ///@param toAppendTo Formatted string appended here.
  ///@param pos Identifies a field in the formatted text.
  ///@see java.text.Format\#format(java.lang.Object, java.lang.StringBuffer, java.text.FieldPosition)
  jni.JniObject format(
          jni.JniObject obj, jni.JniObject toAppendTo, jni.JniObject pos) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_format,
          jni.JniType.objectType,
          [obj.reference, toAppendTo.reference, pos.reference]).object);

  static final _id_parseObject = jniAccessors.getMethodIDOf(
      _classRef,
      "parseObject",
      "(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;");

  /// from: public android.icu.util.Measure parseObject(java.lang.String source, java.text.ParsePosition pos)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Parses text from a string to produce a <code>Measure</code>.
  ///@see java.text.Format\#parseObject(java.lang.String, java.text.ParsePosition)
  ///@throws UnsupportedOperationException Not supported.
  ///@hide draft / provisional / internal are hidden on Android
  measure_.Measure parseObject(jni.JniString source, jni.JniObject pos) =>
      measure_.Measure.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_parseObject,
          jni.JniType.objectType,
          [source.reference, pos.reference]).object);

  static final _id_formatMeasures = jniAccessors.getMethodIDOf(_classRef,
      "formatMeasures", "([Landroid/icu/util/Measure;)Ljava/lang/String;");

  /// from: public final java.lang.String formatMeasures(android.icu.util.Measure[] measures)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Format a sequence of measures. Uses the ListFormatter unit lists.
  /// So, for example, one could format \u201c3 feet, 2 inches\u201d.
  /// Zero values are formatted (eg, \u201c3 feet, 0 inches\u201d). It is the caller\u2019s
  /// responsibility to have the appropriate values in appropriate order,
  /// and using the appropriate Number values. Typically the units should be
  /// in descending order, with all but the last Measure having integer values
  /// (eg, not \u201c3.2 feet, 2 inches\u201d).
  ///@param measures a sequence of one or more measures.
  ///@return the formatted string.
  jni.JniString formatMeasures(jni.JniObject measures) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_formatMeasures,
          jni.JniType.objectType,
          [measures.reference]).object);

  static final _id_formatMeasurePerUnit = jniAccessors.getMethodIDOf(
      _classRef,
      "formatMeasurePerUnit",
      "(Landroid/icu/util/Measure;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;");

  /// from: public java.lang.StringBuilder formatMeasurePerUnit(android.icu.util.Measure measure, android.icu.util.MeasureUnit perUnit, java.lang.StringBuilder appendTo, java.text.FieldPosition pos)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Formats a single measure per unit.
  ///
  /// An example of such a formatted string is "3.5 meters per second."
  ///@param measure the measure object. In above example, 3.5 meters.
  ///@param perUnit the per unit. In above example, it is MeasureUnit.SECOND
  ///@param appendTo formatted string appended here.
  ///@param pos The field position.
  ///@return appendTo.
  jni.JniObject formatMeasurePerUnit(
          measure_.Measure measure,
          measureunit_.MeasureUnit perUnit,
          jni.JniObject appendTo,
          jni.JniObject pos) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_formatMeasurePerUnit, jni.JniType.objectType, [
        measure.reference,
        perUnit.reference,
        appendTo.reference,
        pos.reference
      ]).object);

  static final _id_formatMeasures1 = jniAccessors.getMethodIDOf(
      _classRef,
      "formatMeasures",
      "(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;");

  /// from: public java.lang.StringBuilder formatMeasures(java.lang.StringBuilder appendTo, java.text.FieldPosition fieldPosition, android.icu.util.Measure[] measures)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Formats a sequence of measures.
  ///
  /// If the fieldPosition argument identifies a NumberFormat field,
  /// then its indices are set to the beginning and end of the first such field
  /// encountered. MeasureFormat itself does not supply any fields.
  ///@param appendTo the formatted string appended here.
  ///@param fieldPosition Identifies a field in the formatted text.
  ///@param measures the measures to format.
  ///@return appendTo.
  ///@see MeasureFormat\#formatMeasures(Measure...)
  jni.JniObject formatMeasures1(jni.JniObject appendTo,
          jni.JniObject fieldPosition, jni.JniObject measures) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_formatMeasures1, jni.JniType.objectType, [
        appendTo.reference,
        fieldPosition.reference,
        measures.reference
      ]).object);

  static final _id_getUnitDisplayName = jniAccessors.getMethodIDOf(
      _classRef,
      "getUnitDisplayName",
      "(Landroid/icu/util/MeasureUnit;)Ljava/lang/String;");

  /// from: public java.lang.String getUnitDisplayName(android.icu.util.MeasureUnit unit)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the display name of the specified MeasureUnit corresponding to the current
  /// locale and format width.
  ///@param unit The unit for which to get a display name.
  ///@return The display name in the locale and width specified in
  ///          MeasureFormat\#getInstance, or null if there is no display name available
  ///          for the specified unit.
  jni.JniString getUnitDisplayName(measureunit_.MeasureUnit unit) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getUnitDisplayName,
          jni.JniType.objectType,
          [unit.reference]).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public final boolean equals(java.lang.Object other)
  ///
  /// Two MeasureFormats, a and b, are equal if and only if they have the same formatWidth,
  /// locale, and equal number formats.
  bool equals1(jni.JniObject other) => jniAccessors.callMethodWithArgs(
      reference,
      _id_equals1,
      jni.JniType.booleanType,
      [other.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public final int hashCode()
  ///
  /// {@inheritDoc}
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_getWidth = jniAccessors.getMethodIDOf(
      _classRef, "getWidth", "()Landroid/icu/text/MeasureFormat\$FormatWidth;");

  /// from: public android.icu.text.MeasureFormat.FormatWidth getWidth()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the format width this instance is using.
  MeasureFormat_FormatWidth getWidth() =>
      MeasureFormat_FormatWidth.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getWidth, jni.JniType.objectType, []).object);

  static final _id_getLocale = jniAccessors.getMethodIDOf(
      _classRef, "getLocale", "()Landroid/icu/util/ULocale;");

  /// from: public final android.icu.util.ULocale getLocale()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the locale of this instance.
  ulocale_.ULocale getLocale() =>
      ulocale_.ULocale.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocale, jni.JniType.objectType, []).object);

  static final _id_getNumberFormat = jniAccessors.getMethodIDOf(
      _classRef, "getNumberFormat", "()Landroid/icu/text/NumberFormat;");

  /// from: public android.icu.text.NumberFormat getNumberFormat()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get a copy of the number format.
  numberformat_.NumberFormat getNumberFormat() =>
      numberformat_.NumberFormat.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getNumberFormat, jni.JniType.objectType, []).object);

  static final _id_getCurrencyFormat = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getCurrencyFormat",
      "(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;");

  /// from: static public android.icu.text.MeasureFormat getCurrencyFormat(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a formatter for CurrencyAmount objects in the given
  /// locale.
  ///@param locale desired locale
  ///@return a formatter object
  static MeasureFormat getCurrencyFormat(ulocale_.ULocale locale) =>
      MeasureFormat.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getCurrencyFormat,
          jni.JniType.objectType,
          [locale.reference]).object);

  static final _id_getCurrencyFormat1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getCurrencyFormat",
      "(Ljava/util/Locale;)Landroid/icu/text/MeasureFormat;");

  /// from: static public android.icu.text.MeasureFormat getCurrencyFormat(java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a formatter for CurrencyAmount objects in the given
  /// java.util.Locale.
  ///@param locale desired java.util.Locale
  ///@return a formatter object
  static MeasureFormat getCurrencyFormat1(jni.JniObject locale) =>
      MeasureFormat.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getCurrencyFormat1,
          jni.JniType.objectType,
          [locale.reference]).object);

  static final _id_getCurrencyFormat2 = jniAccessors.getStaticMethodIDOf(
      _classRef, "getCurrencyFormat", "()Landroid/icu/text/MeasureFormat;");

  /// from: static public android.icu.text.MeasureFormat getCurrencyFormat()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a formatter for CurrencyAmount objects in the default
  /// <code>FORMAT</code> locale.
  ///@return a formatter object
  ///@see Category\#FORMAT
  static MeasureFormat getCurrencyFormat2() =>
      MeasureFormat.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getCurrencyFormat2, jni.JniType.objectType, []).object);
}

/// from: android.icu.text.MeasureFormat$FormatWidth
///
/// Formatting width enum.
class MeasureFormat_FormatWidth extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/MeasureFormat\$FormatWidth");
  MeasureFormat_FormatWidth.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/icu/text/MeasureFormat\$FormatWidth;");

  /// from: static public android.icu.text.MeasureFormat.FormatWidth[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "valueOf",
      "(Ljava/lang/String;)Landroid/icu/text/MeasureFormat\$FormatWidth;");

  /// from: static public android.icu.text.MeasureFormat.FormatWidth valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static MeasureFormat_FormatWidth valueOf(jni.JniString name) =>
      MeasureFormat_FormatWidth.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_valueOf,
          jni.JniType.objectType,
          [name.reference]).object);
}
