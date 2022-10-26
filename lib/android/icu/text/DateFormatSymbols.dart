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

import "../util/Calendar.dart" as calendar_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.DateFormatSymbols
///
/// <strong>[icu enhancement]</strong> ICU's replacement for java.text.DateFormatSymbols.&nbsp;Methods, fields, and other functionality specific to ICU are labeled '<strong>[icu]</strong>'.
///
/// <code>DateFormatSymbols</code> is a public class for encapsulating
/// localizable date-time formatting data, such as the names of the
/// months, the names of the days of the week, and the time zone data.
/// <code>DateFormat</code> and <code>SimpleDateFormat</code> both use
/// <code>DateFormatSymbols</code> to encapsulate this information.
///
/// Typically you shouldn't use <code>DateFormatSymbols</code> directly.
/// Rather, you are encouraged to create a date-time formatter with the
/// <code>DateFormat</code> class's factory methods: <code>getTimeInstance</code>,
/// <code>getDateInstance</code>, or <code>getDateTimeInstance</code>.
/// These methods automatically create a <code>DateFormatSymbols</code> for
/// the formatter so that you don't have to. After the
/// formatter is created, you may modify its format pattern using the
/// <code>setPattern</code> method. For more information about
/// creating formatters using <code>DateFormat</code>'s factory methods,
/// see DateFormat.
///
/// If you decide to create a date-time formatter with a specific
/// format pattern for a specific locale, you can do so with:
/// <blockquote>
/// <pre>
/// new SimpleDateFormat(aPattern, new DateFormatSymbols(aLocale)).
/// </pre>
/// </blockquote>
///
/// <code>DateFormatSymbols</code> objects are clonable. When you obtain
/// a <code>DateFormatSymbols</code> object, feel free to modify the
/// date-time formatting data. For instance, you can replace the localized
/// date-time format pattern characters with the ones that you feel easy
/// to remember. Or you can change the representative cities
/// to your favorite ones.
///
/// New <code>DateFormatSymbols</code> subclasses may be added to support
/// <code>SimpleDateFormat</code> for date-time formatting for additional locales.
///@see DateFormat
///@see SimpleDateFormat
///@see android.icu.util.SimpleTimeZone
///@author Chen-Lieh Huang
class DateFormatSymbols extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/DateFormatSymbols");
  DateFormatSymbols.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ABBREVIATED
  ///
  /// <strong>[icu]</strong> Constant for width.
  static const ABBREVIATED = 0;

  /// from: static public final int FORMAT
  ///
  /// <strong>[icu]</strong> Constant for context.
  static const FORMAT = 0;

  /// from: static public final int NARROW
  ///
  /// <strong>[icu]</strong> Constant for width.
  static const NARROW = 2;

  /// from: static public final int SHORT
  ///
  /// <strong>[icu]</strong> Constant for width; only supported for weekdays.
  static const SHORT = 3;

  /// from: static public final int STANDALONE
  ///
  /// <strong>[icu]</strong> Constant for context.
  static const STANDALONE = 1;

  /// from: static public final int WIDE
  ///
  /// <strong>[icu]</strong> Constant for width.
  static const WIDE = 1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a DateFormatSymbols object by loading format data from
  /// resources for the default <code>FORMAT</code> locale.
  ///@throws java.util.MissingResourceException if the resources for the default locale
  ///          cannot be found or cannot be loaded.
  ///@see Category\#FORMAT
  DateFormatSymbols()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/Locale;)V");

  /// from: public void <init>(java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a DateFormatSymbols object by loading format data from
  /// resources for the given locale.
  ///@throws java.util.MissingResourceException if the resources for the specified
  ///          locale cannot be found or cannot be loaded.
  DateFormatSymbols.ctor1(jni.JniObject locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [locale.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/util/ULocale;)V");

  /// from: public void <init>(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Constructs a DateFormatSymbols object by loading format data from
  /// resources for the given ulocale.
  ///@throws java.util.MissingResourceException if the resources for the specified
  ///          locale cannot be found or cannot be loaded.
  DateFormatSymbols.ctor2(ulocale_.ULocale locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [locale.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/util/Calendar;Ljava/util/Locale;)V");

  /// from: public void <init>(android.icu.util.Calendar cal, java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the DateFormatSymbols object that should be used to format a
  /// calendar system's dates in the given locale.
  ///@param cal The calendar system whose date format symbols are desired.
  ///@param locale The locale whose symbols are desired.
  ///@see DateFormatSymbols\#DateFormatSymbols(java.util.Locale)
  DateFormatSymbols.ctor3(calendar_.Calendar cal, jni.JniObject locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [cal.reference, locale.reference]).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V");

  /// from: public void <init>(android.icu.util.Calendar cal, android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the DateFormatSymbols object that should be used to format a
  /// calendar system's dates in the given locale.
  ///@param cal The calendar system whose date format symbols are desired.
  ///@param locale The ulocale whose symbols are desired.
  ///@see DateFormatSymbols\#DateFormatSymbols(java.util.Locale)
  DateFormatSymbols.ctor4(calendar_.Calendar cal, ulocale_.ULocale locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [cal.reference, locale.reference]).object);

  static final _id_ctor5 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/Class;Ljava/util/Locale;)V");

  /// from: public void <init>(java.lang.Class<? extends android.icu.util.Calendar> calendarClass, java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Variant of DateFormatSymbols(Calendar, Locale) that takes the Calendar class
  /// instead of a Calendar instance.
  ///@see \#DateFormatSymbols(Calendar, Locale)
  DateFormatSymbols.ctor5(jni.JniObject calendarClass, jni.JniObject locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor5,
            [calendarClass.reference, locale.reference]).object);

  static final _id_ctor6 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/Class;Landroid/icu/util/ULocale;)V");

  /// from: public void <init>(java.lang.Class<? extends android.icu.util.Calendar> calendarClass, android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Variant of DateFormatSymbols(Calendar, ULocale) that takes the Calendar class
  /// instead of a Calendar instance.
  ///@see \#DateFormatSymbols(Calendar, Locale)
  DateFormatSymbols.ctor6(jni.JniObject calendarClass, ulocale_.ULocale locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor6,
            [calendarClass.reference, locale.reference]).object);

  static final _id_ctor7 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/util/ResourceBundle;Ljava/util/Locale;)V");

  /// from: public void <init>(java.util.ResourceBundle bundle, java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Fetches a custom calendar's DateFormatSymbols out of the given resource
  /// bundle.  Symbols that are not overridden are inherited from the
  /// default DateFormatSymbols for the locale.
  ///@see DateFormatSymbols\#DateFormatSymbols(java.util.Locale)
  DateFormatSymbols.ctor7(jni.JniObject bundle, jni.JniObject locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor7, [bundle.reference, locale.reference]).object);

  static final _id_ctor8 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/util/ResourceBundle;Landroid/icu/util/ULocale;)V");

  /// from: public void <init>(java.util.ResourceBundle bundle, android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Fetches a custom calendar's DateFormatSymbols out of the given resource
  /// bundle.  Symbols that are not overridden are inherited from the
  /// default DateFormatSymbols for the locale.
  ///@see DateFormatSymbols\#DateFormatSymbols(java.util.Locale)
  DateFormatSymbols.ctor8(jni.JniObject bundle, ulocale_.ULocale locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor8, [bundle.reference, locale.reference]).object);

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "()Landroid/icu/text/DateFormatSymbols;");

  /// from: static public android.icu.text.DateFormatSymbols getInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a DateFormatSymbols instance for the default locale.
  ///
  /// <strong>[icu] Note:</strong> Unlike <code>java.text.DateFormatSymbols\#getInstance</code>,
  /// this method simply returns <code>new android.icu.text.DateFormatSymbols()</code>.
  /// ICU does not support <code>DateFormatSymbolsProvider</code> introduced in Java 6
  /// or its equivalent implementation for now.
  ///@return A DateFormatSymbols instance.
  static DateFormatSymbols getInstance() =>
      DateFormatSymbols.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getInstance, jni.JniType.objectType, []).object);

  static final _id_getInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;");

  /// from: static public android.icu.text.DateFormatSymbols getInstance(java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a DateFormatSymbols instance for the given locale.
  ///
  /// <strong>[icu] Note:</strong> Unlike <code>java.text.DateFormatSymbols\#getInstance</code>,
  /// this method simply returns <code>new android.icu.text.DateFormatSymbols(locale)</code>.
  /// ICU does not support <code>DateFormatSymbolsProvider</code> introduced in Java 6
  /// or its equivalent implementation for now.
  ///@param locale the locale.
  ///@return A DateFormatSymbols instance.
  static DateFormatSymbols getInstance1(jni.JniObject locale) =>
      DateFormatSymbols.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getInstance1, jni.JniType.objectType, [locale.reference]).object);

  static final _id_getInstance2 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols;");

  /// from: static public android.icu.text.DateFormatSymbols getInstance(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Returns a DateFormatSymbols instance for the given locale.
  ///
  /// <strong>[icu] Note:</strong> Unlike <code>java.text.DateFormatSymbols\#getInstance</code>,
  /// this method simply returns <code>new android.icu.text.DateFormatSymbols(locale)</code>.
  /// ICU does not support <code>DateFormatSymbolsProvider</code> introduced in Java 6
  /// or its equivalent implementation for now.
  ///@param locale the locale.
  ///@return A DateFormatSymbols instance.
  static DateFormatSymbols getInstance2(ulocale_.ULocale locale) =>
      DateFormatSymbols.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getInstance2, jni.JniType.objectType, [locale.reference]).object);

  static final _id_getAvailableLocales = jniAccessors.getStaticMethodIDOf(
      _classRef, "getAvailableLocales", "()[Ljava/util/Locale;");

  /// from: static public java.util.Locale[] getAvailableLocales()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an array of all locales for which the <code>getInstance</code> methods of
  /// this class can return localized instances.
  ///
  /// <strong>[icu] Note:</strong> Unlike <code>java.text.DateFormatSymbols\#getAvailableLocales</code>,
  /// this method simply returns the array of <code>Locale</code>s available in this
  /// class.  ICU does not support <code>DateFormatSymbolsProvider</code> introduced in
  /// Java 6 or its equivalent implementation for now.
  ///@return An array of <code>Locale</code>s for which localized
  /// <code>DateFormatSymbols</code> instances are available.
  static jni.JniObject getAvailableLocales() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getAvailableLocales, jni.JniType.objectType, []).object);

  static final _id_getEras =
      jniAccessors.getMethodIDOf(_classRef, "getEras", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getEras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns era strings. For example: "AD" and "BC".
  ///@return the era strings.
  jni.JniObject getEras() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEras, jni.JniType.objectType, []).object);

  static final _id_setEras = jniAccessors.getMethodIDOf(
      _classRef, "setEras", "([Ljava/lang/String;)V");

  /// from: public void setEras(java.lang.String[] newEras)
  ///
  /// Sets era strings. For example: "AD" and "BC".
  ///@param newEras the new era strings.
  void setEras(jni.JniObject newEras) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setEras,
      jni.JniType.voidType,
      [newEras.reference]).check();

  static final _id_getEraNames = jniAccessors.getMethodIDOf(
      _classRef, "getEraNames", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getEraNames()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Returns era name strings. For example: "Anno Domini" and "Before Christ".
  ///@return the era strings.
  jni.JniObject getEraNames() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEraNames, jni.JniType.objectType, []).object);

  static final _id_setEraNames = jniAccessors.getMethodIDOf(
      _classRef, "setEraNames", "([Ljava/lang/String;)V");

  /// from: public void setEraNames(java.lang.String[] newEraNames)
  ///
  /// <strong>[icu]</strong> Sets era name strings. For example: "Anno Domini" and "Before Christ".
  ///@param newEraNames the new era strings.
  void setEraNames(jni.JniObject newEraNames) =>
      jniAccessors.callMethodWithArgs(reference, _id_setEraNames,
          jni.JniType.voidType, [newEraNames.reference]).check();

  static final _id_getMonths = jniAccessors.getMethodIDOf(
      _classRef, "getMonths", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getMonths()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns month strings. For example: "January", "February", etc.
  ///@return the month strings.
  jni.JniObject getMonths() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMonths, jni.JniType.objectType, []).object);

  static final _id_getMonths1 = jniAccessors.getMethodIDOf(
      _classRef, "getMonths", "(II)[Ljava/lang/String;");

  /// from: public java.lang.String[] getMonths(int context, int width)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns month strings. For example: "January", "February", etc.
  ///@param context The month context, FORMAT or STANDALONE.
  ///@param width The width or the returned month string,
  ///                   either WIDE, ABBREVIATED, or NARROW.
  ///@return the month strings.
  jni.JniObject getMonths1(int context, int width) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getMonths1, jni.JniType.objectType, [context, width]).object);

  static final _id_setMonths = jniAccessors.getMethodIDOf(
      _classRef, "setMonths", "([Ljava/lang/String;)V");

  /// from: public void setMonths(java.lang.String[] newMonths)
  ///
  /// Sets month strings. For example: "January", "February", etc.
  ///@param newMonths the new month strings.
  void setMonths(jni.JniObject newMonths) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setMonths,
      jni.JniType.voidType,
      [newMonths.reference]).check();

  static final _id_setMonths1 = jniAccessors.getMethodIDOf(
      _classRef, "setMonths", "([Ljava/lang/String;II)V");

  /// from: public void setMonths(java.lang.String[] newMonths, int context, int width)
  ///
  /// Sets month strings. For example: "January", "February", etc.
  ///@param newMonths the new month strings.
  ///@param context The formatting context, FORMAT or STANDALONE.
  ///@param width The width of the month string,
  ///                   either WIDE, ABBREVIATED, or NARROW.
  void setMonths1(jni.JniObject newMonths, int context, int width) =>
      jniAccessors.callMethodWithArgs(reference, _id_setMonths1,
          jni.JniType.voidType, [newMonths.reference, context, width]).check();

  static final _id_getShortMonths = jniAccessors.getMethodIDOf(
      _classRef, "getShortMonths", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getShortMonths()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns short month strings. For example: "Jan", "Feb", etc.
  ///@return the short month strings.
  jni.JniObject getShortMonths() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getShortMonths, jni.JniType.objectType, []).object);

  static final _id_setShortMonths = jniAccessors.getMethodIDOf(
      _classRef, "setShortMonths", "([Ljava/lang/String;)V");

  /// from: public void setShortMonths(java.lang.String[] newShortMonths)
  ///
  /// Sets short month strings. For example: "Jan", "Feb", etc.
  ///@param newShortMonths the new short month strings.
  void setShortMonths(jni.JniObject newShortMonths) =>
      jniAccessors.callMethodWithArgs(reference, _id_setShortMonths,
          jni.JniType.voidType, [newShortMonths.reference]).check();

  static final _id_getWeekdays = jniAccessors.getMethodIDOf(
      _classRef, "getWeekdays", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getWeekdays()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns wide weekday strings. For example: "Sunday", "Monday", etc.
  ///@return the weekday strings. Use <code>Calendar.SUNDAY</code>,
  /// <code>Calendar.MONDAY</code>, etc. to index the result array.
  jni.JniObject getWeekdays() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getWeekdays, jni.JniType.objectType, []).object);

  static final _id_getWeekdays1 = jniAccessors.getMethodIDOf(
      _classRef, "getWeekdays", "(II)[Ljava/lang/String;");

  /// from: public java.lang.String[] getWeekdays(int context, int width)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns weekday strings. For example: "Sunday", "Monday", etc.
  ///@return the weekday strings. Use <code>Calendar.SUNDAY</code>,
  /// <code>Calendar.MONDAY</code>, etc. to index the result array.
  ///@param context Formatting context, either FORMAT or STANDALONE.
  ///@param width Width of strings to be returned, either
  ///                   WIDE, ABBREVIATED, SHORT, or NARROW
  jni.JniObject getWeekdays1(int context, int width) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getWeekdays1, jni.JniType.objectType, [context, width]).object);

  static final _id_setWeekdays = jniAccessors.getMethodIDOf(
      _classRef, "setWeekdays", "([Ljava/lang/String;II)V");

  /// from: public void setWeekdays(java.lang.String[] newWeekdays, int context, int width)
  ///
  /// Sets weekday strings. For example: "Sunday", "Monday", etc.
  ///@param newWeekdays The new weekday strings.
  ///@param context The formatting context, FORMAT or STANDALONE.
  ///@param width The width of the strings,
  ///                    either WIDE, ABBREVIATED, SHORT, or NARROW.
  void setWeekdays(jni.JniObject newWeekdays, int context, int width) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setWeekdays,
          jni.JniType.voidType,
          [newWeekdays.reference, context, width]).check();

  static final _id_setWeekdays1 = jniAccessors.getMethodIDOf(
      _classRef, "setWeekdays", "([Ljava/lang/String;)V");

  /// from: public void setWeekdays(java.lang.String[] newWeekdays)
  ///
  /// Sets wide weekday strings. For example: "Sunday", "Monday", etc.
  ///@param newWeekdays the new weekday strings. The array should
  /// be indexed by <code>Calendar.SUNDAY</code>,
  /// <code>Calendar.MONDAY</code>, etc.
  void setWeekdays1(jni.JniObject newWeekdays) =>
      jniAccessors.callMethodWithArgs(reference, _id_setWeekdays1,
          jni.JniType.voidType, [newWeekdays.reference]).check();

  static final _id_getShortWeekdays = jniAccessors.getMethodIDOf(
      _classRef, "getShortWeekdays", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getShortWeekdays()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns abbreviated weekday strings; for example: "Sun", "Mon", etc.
  /// (Note: the method name is misleading; it does not get the CLDR-style
  /// "short" weekday strings, e.g. "Su", "Mo", etc.)
  ///@return the abbreviated weekday strings. Use <code>Calendar.SUNDAY</code>,
  /// <code>Calendar.MONDAY</code>, etc. to index the result array.
  jni.JniObject getShortWeekdays() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getShortWeekdays, jni.JniType.objectType, []).object);

  static final _id_setShortWeekdays = jniAccessors.getMethodIDOf(
      _classRef, "setShortWeekdays", "([Ljava/lang/String;)V");

  /// from: public void setShortWeekdays(java.lang.String[] newAbbrevWeekdays)
  ///
  /// Sets abbreviated weekday strings; for example: "Sun", "Mon", etc.
  /// (Note: the method name is misleading; it does not set the CLDR-style
  /// "short" weekday strings, e.g. "Su", "Mo", etc.)
  ///@param newAbbrevWeekdays the new abbreviated weekday strings. The array should
  /// be indexed by <code>Calendar.SUNDAY</code>,
  /// <code>Calendar.MONDAY</code>, etc.
  void setShortWeekdays(jni.JniObject newAbbrevWeekdays) =>
      jniAccessors.callMethodWithArgs(reference, _id_setShortWeekdays,
          jni.JniType.voidType, [newAbbrevWeekdays.reference]).check();

  static final _id_getQuarters = jniAccessors.getMethodIDOf(
      _classRef, "getQuarters", "(II)[Ljava/lang/String;");

  /// from: public java.lang.String[] getQuarters(int context, int width)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// <strong>[icu]</strong> Returns quarter strings. For example: "1st Quarter", "2nd Quarter", etc.
  ///@param context The quarter context, FORMAT or STANDALONE.
  ///@param width The width or the returned quarter string,
  ///                   either WIDE or ABBREVIATED. There are no NARROW quarters.
  ///@return the quarter strings.
  jni.JniObject getQuarters(int context, int width) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getQuarters, jni.JniType.objectType, [context, width]).object);

  static final _id_setQuarters = jniAccessors.getMethodIDOf(
      _classRef, "setQuarters", "([Ljava/lang/String;II)V");

  /// from: public void setQuarters(java.lang.String[] newQuarters, int context, int width)
  ///
  /// <strong>[icu]</strong> Sets quarter strings. For example: "1st Quarter", "2nd Quarter", etc.
  ///@param newQuarters the new quarter strings.
  ///@param context The formatting context, FORMAT or STANDALONE.
  ///@param width The width of the quarter string,
  ///                   either WIDE or ABBREVIATED. There are no NARROW quarters.
  void setQuarters(jni.JniObject newQuarters, int context, int width) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setQuarters,
          jni.JniType.voidType,
          [newQuarters.reference, context, width]).check();

  static final _id_getYearNames = jniAccessors.getMethodIDOf(
      _classRef, "getYearNames", "(II)[Ljava/lang/String;");

  /// from: public java.lang.String[] getYearNames(int context, int width)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns cyclic year name strings if the calendar has them,
  /// for example: "jia-zi", "yi-chou", etc.
  ///@param context The usage context: FORMAT, STANDALONE.
  ///@param width The requested name width: WIDE, ABBREVIATED, SHORT, NARROW.
  ///@return The year name strings, or null if they are not
  ///                  available for this calendar.
  jni.JniObject getYearNames(int context, int width) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getYearNames, jni.JniType.objectType, [context, width]).object);

  static final _id_setYearNames = jniAccessors.getMethodIDOf(
      _classRef, "setYearNames", "([Ljava/lang/String;II)V");

  /// from: public void setYearNames(java.lang.String[] yearNames, int context, int width)
  ///
  /// Sets cyclic year name strings, for example: "jia-zi", "yi-chou", etc.
  ///@param yearNames The new cyclic year name strings.
  ///@param context The usage context: FORMAT, STANDALONE (currently only FORMAT is supported).
  ///@param width The name width: WIDE, ABBREVIATED, NARROW (currently only ABBREVIATED is supported).
  void setYearNames(jni.JniObject yearNames, int context, int width) =>
      jniAccessors.callMethodWithArgs(reference, _id_setYearNames,
          jni.JniType.voidType, [yearNames.reference, context, width]).check();

  static final _id_getZodiacNames = jniAccessors.getMethodIDOf(
      _classRef, "getZodiacNames", "(II)[Ljava/lang/String;");

  /// from: public java.lang.String[] getZodiacNames(int context, int width)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns calendar zodiac name strings if the calendar has them,
  /// for example: "Rat", "Ox", "Tiger", etc.
  ///@param context The usage context: FORMAT, STANDALONE.
  ///@param width The requested name width: WIDE, ABBREVIATED, SHORT, NARROW.
  ///@return The zodiac name strings, or null if they are not
  ///                  available for this calendar.
  jni.JniObject getZodiacNames(int context, int width) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getZodiacNames, jni.JniType.objectType, [context, width]).object);

  static final _id_setZodiacNames = jniAccessors.getMethodIDOf(
      _classRef, "setZodiacNames", "([Ljava/lang/String;II)V");

  /// from: public void setZodiacNames(java.lang.String[] zodiacNames, int context, int width)
  ///
  /// Sets calendar zodiac name strings, for example: "Rat", "Ox", "Tiger", etc.
  ///@param zodiacNames The new zodiac name strings.
  ///@param context The usage context: FORMAT, STANDALONE (currently only FORMAT is supported).
  ///@param width The name width: WIDE, ABBREVIATED, NARROW (currently only ABBREVIATED is supported).
  void setZodiacNames(jni.JniObject zodiacNames, int context, int width) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setZodiacNames,
          jni.JniType.voidType,
          [zodiacNames.reference, context, width]).check();

  static final _id_getAmPmStrings = jniAccessors.getMethodIDOf(
      _classRef, "getAmPmStrings", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getAmPmStrings()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns am/pm strings. For example: "AM" and "PM".
  ///@return the weekday strings.
  jni.JniObject getAmPmStrings() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAmPmStrings, jni.JniType.objectType, []).object);

  static final _id_setAmPmStrings = jniAccessors.getMethodIDOf(
      _classRef, "setAmPmStrings", "([Ljava/lang/String;)V");

  /// from: public void setAmPmStrings(java.lang.String[] newAmpms)
  ///
  /// Sets am/pm strings. For example: "AM" and "PM".
  ///@param newAmpms the new ampm strings.
  void setAmPmStrings(jni.JniObject newAmpms) =>
      jniAccessors.callMethodWithArgs(reference, _id_setAmPmStrings,
          jni.JniType.voidType, [newAmpms.reference]).check();

  static final _id_getZoneStrings = jniAccessors.getMethodIDOf(
      _classRef, "getZoneStrings", "()[[Ljava/lang/String;");

  /// from: public java.lang.String[][] getZoneStrings()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns time zone strings.
  ///
  /// The array returned by this API is a two dimensional String array and
  /// each row contains at least following strings:
  /// <ul>
  /// <li>ZoneStrings[n][0] - System time zone ID
  /// <li>ZoneStrings[n][1] - Long standard time display name
  /// <li>ZoneStrings[n][2] - Short standard time display name
  /// <li>ZoneStrings[n][3] - Long daylight saving time display name
  /// <li>ZoneStrings[n][4] - Short daylight saving time display name
  /// </ul>
  /// When a localized display name is not available, the corresponding
  /// array element will be <code>null</code>.
  ///
  /// __Note__: ICU implements the time zone display name formatting algorithm
  /// specified by <a href="http://www.unicode.org/reports/tr35/">UTS\#35 Unicode
  /// Locale Data Markup Language(LDML)</a>. The algorithm supports historic
  /// display name changes and various different types of names not available in
  /// java.text.DateFormatSymbols\#getZoneStrings(). For accessing the full
  /// set of time zone string data used by ICU implementation, you should use
  /// TimeZoneNames APIs instead.
  ///@return the time zone strings.
  jni.JniObject getZoneStrings() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getZoneStrings, jni.JniType.objectType, []).object);

  static final _id_setZoneStrings = jniAccessors.getMethodIDOf(
      _classRef, "setZoneStrings", "([[Ljava/lang/String;)V");

  /// from: public void setZoneStrings(java.lang.String[][] newZoneStrings)
  ///
  /// Sets time zone strings.
  ///
  /// __Note__: SimpleDateFormat no longer uses the
  /// zone strings stored in a <code>DateFormatSymbols</code>.
  /// Therefore, the time zone strings set by this method have
  /// no effects in an instance of <code>SimpleDateFormat</code>
  /// for formatting time zones. If you want to customize time
  /// zone display names formatted by <code>SimpleDateFormat</code>,
  /// you should customize TimeZoneFormat and set the
  /// instance by SimpleDateFormat\#setTimeZoneFormat(TimeZoneFormat)
  /// instead.
  ///@param newZoneStrings the new time zone strings.
  void setZoneStrings(jni.JniObject newZoneStrings) =>
      jniAccessors.callMethodWithArgs(reference, _id_setZoneStrings,
          jni.JniType.voidType, [newZoneStrings.reference]).check();

  static final _id_getLocalPatternChars = jniAccessors.getMethodIDOf(
      _classRef, "getLocalPatternChars", "()Ljava/lang/String;");

  /// from: public java.lang.String getLocalPatternChars()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns localized date-time pattern characters. For example: 'u', 't', etc.
  ///
  /// Note: ICU no longer provides localized date-time pattern characters for a locale
  /// starting ICU 3.8.  This method returns the non-localized date-time pattern
  /// characters unless user defined localized data is set by setLocalPatternChars.
  ///@return the localized date-time pattern characters.
  jni.JniString getLocalPatternChars() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getLocalPatternChars, jni.JniType.objectType, []).object);

  static final _id_setLocalPatternChars = jniAccessors.getMethodIDOf(
      _classRef, "setLocalPatternChars", "(Ljava/lang/String;)V");

  /// from: public void setLocalPatternChars(java.lang.String newLocalPatternChars)
  ///
  /// Sets localized date-time pattern characters. For example: 'u', 't', etc.
  ///@param newLocalPatternChars the new localized date-time
  /// pattern characters.
  void setLocalPatternChars(jni.JniString newLocalPatternChars) =>
      jniAccessors.callMethodWithArgs(reference, _id_setLocalPatternChars,
          jni.JniType.voidType, [newLocalPatternChars.reference]).check();

  static final _id_clone =
      jniAccessors.getMethodIDOf(_classRef, "clone", "()Ljava/lang/Object;");

  /// from: public java.lang.Object clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Overrides clone.
  jni.JniObject clone() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_clone, jni.JniType.objectType, []).object);

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// Override hashCode.
  /// Generates a hash code for the DateFormatSymbols object.
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  ///
  /// Overrides equals.
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_initializeData = jniAccessors.getMethodIDOf(_classRef,
      "initializeData", "(Landroid/icu/util/ULocale;Ljava/lang/String;)V");

  /// from: protected void initializeData(android.icu.util.ULocale desiredLocale, java.lang.String type)
  ///
  /// Initializes format symbols for the locale and calendar type
  ///@param desiredLocale The locale whose symbols are desired.
  ///@param type The calendar type whose date format symbols are desired.
  void initializeData(ulocale_.ULocale desiredLocale, jni.JniString type) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_initializeData,
          jni.JniType.voidType,
          [desiredLocale.reference, type.reference]).check();
}
