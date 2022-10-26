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

import "GregorianCalendar.dart" as gregoriancalendar_;

import "TimeZone.dart" as timezone_;

import "ULocale.dart" as ulocale_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.util.JapaneseCalendar
///
/// <code>JapaneseCalendar</code> is a subclass of <code>GregorianCalendar</code>
/// that numbers years and eras based on the reigns of the Japanese emperors.
/// The Japanese calendar is identical to the Gregorian calendar in all respects
/// except for the year and era.  The ascension of each  emperor to the throne
/// begins a new era, and the years of that era are numbered starting with the
/// year of ascension as year 1.
///
/// Note that in the year of an imperial ascension, there are two possible sets
/// of year and era values: that for the old era and for the new.  For example, a
/// new era began on January 7, 1989 AD.  Strictly speaking, the first six days
/// of that year were in the Showa era, e.g. "January 6, 64 Showa", while the rest
/// of the year was in the Heisei era, e.g. "January 7, 1 Heisei".  This class
/// handles this distinction correctly when computing dates.  However, in lenient
/// mode either form of date is acceptable as input.
///
/// In modern times, eras have started on January 8, 1868 AD, Gregorian (Meiji),
/// July 30, 1912 (Taisho), December 25, 1926 (Showa), and January 7, 1989 (Heisei).  Constants
/// for these eras, suitable for use in the <code>ERA</code> field, are provided
/// in this class.  Note that the _number_ used for each era is more or
/// less arbitrary.  Currently, the era starting in 1053 AD is era \#0; however this
/// may change in the future as we add more historical data.  Use the predefined
/// constants rather than using actual, absolute numbers.
///
/// This class should not be subclassed.
///
///
/// JapaneseCalendar usually should be instantiated using
/// android.icu.util.Calendar\#getInstance(ULocale) passing in a <code>ULocale</code>
/// with the tag <code>"@calendar=japanese"</code>.
///
///@see android.icu.util.GregorianCalendar
///@see android.icu.util.Calendar
///@author Laura Werner
///@author Alan Liu
class JapaneseCalendar extends gregoriancalendar_.GregorianCalendar {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/util/JapaneseCalendar");
  JapaneseCalendar.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CURRENT_ERA =
      jniAccessors.getStaticFieldIDOf(_classRef, "CURRENT_ERA", "I");

  /// from: static public final int CURRENT_ERA
  ///
  ///
  static int get CURRENT_ERA => jniAccessors
      .getStaticField(_classRef, _id_CURRENT_ERA, jni.JniType.intType)
      .integer;

  static final _id_HEISEI =
      jniAccessors.getStaticFieldIDOf(_classRef, "HEISEI", "I");

  /// from: static public final int HEISEI
  ///
  /// Constant for the era starting on Jan. 7, 1989 AD.
  static int get HEISEI => jniAccessors
      .getStaticField(_classRef, _id_HEISEI, jni.JniType.intType)
      .integer;

  static final _id_MEIJI =
      jniAccessors.getStaticFieldIDOf(_classRef, "MEIJI", "I");

  /// from: static public final int MEIJI
  ///
  /// Constant for the era starting on Sept. 8, 1868 AD.
  static int get MEIJI => jniAccessors
      .getStaticField(_classRef, _id_MEIJI, jni.JniType.intType)
      .integer;

  static final _id_SHOWA =
      jniAccessors.getStaticFieldIDOf(_classRef, "SHOWA", "I");

  /// from: static public final int SHOWA
  ///
  /// Constant for the era starting on Dec. 25, 1926 AD.
  static int get SHOWA => jniAccessors
      .getStaticField(_classRef, _id_SHOWA, jni.JniType.intType)
      .integer;

  static final _id_TAISHO =
      jniAccessors.getStaticFieldIDOf(_classRef, "TAISHO", "I");

  /// from: static public final int TAISHO
  ///
  /// Constant for the era starting on July 30, 1912 AD.
  static int get TAISHO => jniAccessors
      .getStaticField(_classRef, _id_TAISHO, jni.JniType.intType)
      .integer;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a default <code>JapaneseCalendar</code> using the current time
  /// in the default time zone with the default locale.
  JapaneseCalendar()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/util/TimeZone;)V");

  /// from: public void <init>(android.icu.util.TimeZone zone)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>JapaneseCalendar</code> based on the current time
  /// in the given time zone with the default locale.
  ///@param zone the given time zone.
  JapaneseCalendar.ctor3(timezone_.TimeZone zone)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [zone.reference]).object);

  static final _id_ctor4 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/Locale;)V");

  /// from: public void <init>(java.util.Locale aLocale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>JapaneseCalendar</code> based on the current time
  /// in the default time zone with the given locale.
  ///@param aLocale the given locale.
  JapaneseCalendar.ctor4(jni.JniObject aLocale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [aLocale.reference]).object);

  static final _id_ctor5 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/util/ULocale;)V");

  /// from: public void <init>(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>JapaneseCalendar</code> based on the current time
  /// in the default time zone with the given locale.
  ///@param locale the given ulocale.
  JapaneseCalendar.ctor5(ulocale_.ULocale locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor5, [locale.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V");

  /// from: public void <init>(android.icu.util.TimeZone zone, java.util.Locale aLocale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>JapaneseCalendar</code> based on the current time
  /// in the given time zone with the given locale.
  ///@param zone the given time zone.
  ///@param aLocale the given locale.
  JapaneseCalendar.ctor1(timezone_.TimeZone zone, jni.JniObject aLocale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [zone.reference, aLocale.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V");

  /// from: public void <init>(android.icu.util.TimeZone zone, android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>JapaneseCalendar</code> based on the current time
  /// in the given time zone with the given locale.
  ///@param zone the given time zone.
  ///@param locale the given ulocale.
  JapaneseCalendar.ctor2(timezone_.TimeZone zone, ulocale_.ULocale locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [zone.reference, locale.reference]).object);

  static final _id_ctor9 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/Date;)V");

  /// from: public void <init>(java.util.Date date)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>JapaneseCalendar</code> with the given date set
  /// in the default time zone with the default locale.
  ///@param date The date to which the new calendar is set.
  JapaneseCalendar.ctor9(jni.JniObject date)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor9, [date.reference]).object);

  static final _id_ctor10 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(IIII)V");

  /// from: public void <init>(int era, int year, int month, int date)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>JapaneseCalendar</code> with the given date set
  /// in the default time zone with the default locale.
  ///@param era The imperial era used to set the calendar's \#ERA ERA field.
  ///                  Eras are numbered starting with the Tenki era, which
  ///                  began in 1053 AD Gregorian, as era zero.  Recent
  ///                  eras can be specified using the constants
  ///                  \#MEIJI (which started in 1868 AD),
  ///                  \#TAISHO (1912 AD),
  ///                  \#SHOWA (1926 AD), and
  ///                  \#HEISEI (1989 AD).
  ///@param year The value used to set the calendar's \#YEAR YEAR field,
  ///                  in terms of the era.
  ///@param month The value used to set the calendar's \#MONTH MONTH field.
  ///                  The value is 0-based. e.g., 0 for January.
  ///@param date The value used to set the calendar's DATE field.
  JapaneseCalendar.ctor10(int era, int year, int month, int date)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor10, [era, year, month, date]).object);

  static final _id_ctor6 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(III)V");

  /// from: public void <init>(int year, int month, int date)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>JapaneseCalendar</code> with the given date set
  /// in the default time zone with the default locale.
  ///@param year The value used to set the calendar's \#YEAR YEAR field,
  ///                  in the era Heisei, the most current at the time this
  ///                  class was last updated.
  ///@param month The value used to set the calendar's \#MONTH MONTH field.
  ///                  The value is 0-based. e.g., 0 for January.
  ///@param date The value used to set the calendar's \#DATE DATE field.
  JapaneseCalendar.ctor6(int year, int month, int date)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor6, [year, month, date]).object);

  static final _id_ctor8 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(IIIIII)V");

  /// from: public void <init>(int year, int month, int date, int hour, int minute, int second)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>JapaneseCalendar</code> with the given date
  /// and time set for the default time zone with the default locale.
  ///@param year The value used to set the calendar's \#YEAR YEAR time field,
  ///                  in the era Heisei, the most current at the time of this
  ///                  writing.
  ///@param month The value used to set the calendar's \#MONTH MONTH time field.
  ///                  The value is 0-based. e.g., 0 for January.
  ///@param date The value used to set the calendar's \#DATE DATE time field.
  ///@param hour The value used to set the calendar's \#HOUR_OF_DAY HOUR_OF_DAY time field.
  ///@param minute The value used to set the calendar's \#MINUTE MINUTE time field.
  ///@param second The value used to set the calendar's \#SECOND SECOND time field.
  JapaneseCalendar.ctor8(
      int year, int month, int date, int hour, int minute, int second)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor8,
            [year, month, date, hour, minute, second]).object);

  static final _id_handleGetExtendedYear =
      jniAccessors.getMethodIDOf(_classRef, "handleGetExtendedYear", "()I");

  /// from: protected int handleGetExtendedYear()
  ///
  ///
  int handleGetExtendedYear() => jniAccessors.callMethodWithArgs(
      reference, _id_handleGetExtendedYear, jni.JniType.intType, []).integer;

  static final _id_handleComputeFields =
      jniAccessors.getMethodIDOf(_classRef, "handleComputeFields", "(I)V");

  /// from: protected void handleComputeFields(int julianDay)
  ///
  ///
  void handleComputeFields(int julianDay) => jniAccessors.callMethodWithArgs(
      reference,
      _id_handleComputeFields,
      jni.JniType.voidType,
      [julianDay]).check();

  static final _id_handleGetLimit =
      jniAccessors.getMethodIDOf(_classRef, "handleGetLimit", "(II)I");

  /// from: protected int handleGetLimit(int field, int limitType)
  ///
  /// Override GregorianCalendar.  We should really handle YEAR_WOY and
  /// EXTENDED_YEAR here too to implement the 1..5000000 range, but it's
  /// not critical.
  int handleGetLimit(int field, int limitType) =>
      jniAccessors.callMethodWithArgs(reference, _id_handleGetLimit,
          jni.JniType.intType, [field, limitType]).integer;

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "()Ljava/lang/String;");

  /// from: public java.lang.String getType()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  jni.JniString getType() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getType, jni.JniType.objectType, []).object);

  static final _id_getActualMaximum =
      jniAccessors.getMethodIDOf(_classRef, "getActualMaximum", "(I)I");

  /// from: public int getActualMaximum(int field)
  ///
  /// {@inheritDoc}
  int getActualMaximum(int field) => jniAccessors.callMethodWithArgs(
      reference, _id_getActualMaximum, jni.JniType.intType, [field]).integer;
}