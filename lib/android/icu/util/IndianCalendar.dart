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

import "Calendar.dart" as calendar_;

import "TimeZone.dart" as timezone_;

import "ULocale.dart" as ulocale_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.util.IndianCalendar
///
/// <code>IndianCalendar</code> is a subclass of <code>GregorianCalendar</code>
/// that numbers years since the birth of the Buddha.  This is the civil calendar
/// which is accepted by government of India as Indian National Calendar.
/// The two calendars most widely used in India today are the Vikrama calendar
/// followed in North India and the Shalivahana or Saka calendar which is followed
/// in South India and Maharashtra.
///
/// A variant of the Shalivahana Calendar was reformed and standardized as the
/// Indian National calendar in 1957.
///
/// Some details of Indian National Calendar (to be implemented) :
/// The Months
/// Month          Length      Start date (Gregorian)
/// =================================================
/// 1 Chaitra      30/31          March 22*
/// 2 Vaisakha     31             April 21
/// 3 Jyaistha     31             May 22
/// 4 Asadha       31             June 22
/// 5 Sravana      31             July 23
/// 6 Bhadra       31             August 23
/// 7 Asvina       30             September 23
/// 8 Kartika      30             October 23
/// 9 Agrahayana   30             November 22
/// 10 Pausa       30             December 22
/// 11 Magha       30             January 21
/// 12 Phalguna    30             February 20
///
/// In leap years, Chaitra has 31 days and starts on March 21 instead.
/// The leap years of Gregorian calendar and Indian National Calendar are in synchornization.
/// So When its a leap year in Gregorian calendar then Chaitra has 31 days.
///
/// The Years
/// Years are counted in the Saka Era, which starts its year 0 in 78AD (by gregorian calendar).
/// So for eg. 9th June 2006 by Gregorian Calendar, is same as 19th of Jyaistha in 1928 of Saka
/// era by Indian National Calendar.
///
/// The Indian Calendar has only one allowable era: <code>Saka Era</code>.  If the
/// calendar is not in lenient mode (see <code>setLenient</code>), dates before
/// 1/1/1 Saka Era are rejected with an <code>IllegalArgumentException</code>.
///
/// This class should not be subclassed.
///
///
/// IndianCalendar usually should be instantiated using
/// android.icu.util.Calendar\#getInstance(ULocale) passing in a <code>ULocale</code>
/// with the tag <code>"@calendar=Indian"</code>.
///
///@see android.icu.util.Calendar
///@see android.icu.util.GregorianCalendar
class IndianCalendar extends calendar_.Calendar {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/util/IndianCalendar");
  IndianCalendar.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int AGRAHAYANA
  ///
  /// Constant for Agrahayana, the 9th month of the Indian year.
  static const AGRAHAYANA = 8;

  /// from: static public final int ASADHA
  ///
  /// Constant for Asadha, the 4th month of the Indian year.
  static const ASADHA = 3;

  /// from: static public final int ASVINA
  ///
  /// Constant for Asvina, the 7th month of the Indian year.
  static const ASVINA = 6;

  /// from: static public final int BHADRA
  ///
  /// Constant for Bhadra, the 6th month of the Indian year.
  static const BHADRA = 5;

  /// from: static public final int CHAITRA
  ///
  /// Constant for Chaitra, the 1st month of the Indian year.
  static const CHAITRA = 0;

  /// from: static public final int IE
  ///
  /// Constant for the Indian Era.  This is the only allowable <code>ERA</code>
  /// value for the Indian calendar.
  ///@see android.icu.util.Calendar\#ERA
  static const IE = 0;

  /// from: static public final int JYAISTHA
  ///
  /// Constant for Jyaistha, the 3rd month of the Indian year.
  static const JYAISTHA = 2;

  /// from: static public final int KARTIKA
  ///
  /// Constant for Kartika, the 8th month of the Indian year.
  static const KARTIKA = 7;

  /// from: static public final int MAGHA
  ///
  /// Constant for Magha, the 11th month of the Indian year.
  static const MAGHA = 10;

  /// from: static public final int PAUSA
  ///
  /// Constant for Pausa, the 10th month of the Indian year.
  static const PAUSA = 9;

  /// from: static public final int PHALGUNA
  ///
  /// Constant for Phalguna, the 12th month of the Indian year.
  static const PHALGUNA = 11;

  /// from: static public final int SRAVANA
  ///
  /// Constant for Sravana, the 5th month of the Indian year.
  static const SRAVANA = 4;

  /// from: static public final int VAISAKHA
  ///
  /// Constant for Vaisakha, the 2nd month of the Indian year.
  static const VAISAKHA = 1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>IndianCalendar</code> using the current time
  /// in the default time zone with the default <code>FORMAT</code> locale.
  ///@see Category\#FORMAT
  IndianCalendar()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/util/TimeZone;)V");

  /// from: public void <init>(android.icu.util.TimeZone zone)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>IndianCalendar</code> based on the current time
  /// in the given time zone with the default <code>FORMAT</code> locale.
  ///@param zone the given time zone.
  ///@see Category\#FORMAT
  IndianCalendar.ctor3(timezone_.TimeZone zone)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [zone.reference]).object);

  static final _id_ctor4 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/Locale;)V");

  /// from: public void <init>(java.util.Locale aLocale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>IndianCalendar</code> based on the current time
  /// in the default time zone with the given locale.
  ///@param aLocale the given locale.
  IndianCalendar.ctor4(jni.JniObject aLocale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [aLocale.reference]).object);

  static final _id_ctor5 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/util/ULocale;)V");

  /// from: public void <init>(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>IndianCalendar</code> based on the current time
  /// in the default time zone with the given locale.
  ///@param locale the given ulocale.
  IndianCalendar.ctor5(ulocale_.ULocale locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor5, [locale.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V");

  /// from: public void <init>(android.icu.util.TimeZone zone, java.util.Locale aLocale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>IndianCalendar</code> based on the current time
  /// in the given time zone with the given locale.
  ///@param zone the given time zone.
  ///@param aLocale the given locale.
  IndianCalendar.ctor1(timezone_.TimeZone zone, jni.JniObject aLocale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [zone.reference, aLocale.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V");

  /// from: public void <init>(android.icu.util.TimeZone zone, android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>IndianCalendar</code> based on the current time
  /// in the given time zone with the given locale.
  ///@param zone the given time zone.
  ///@param locale the given ulocale.
  IndianCalendar.ctor2(timezone_.TimeZone zone, ulocale_.ULocale locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [zone.reference, locale.reference]).object);

  static final _id_ctor6 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/Date;)V");

  /// from: public void <init>(java.util.Date date)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>IndianCalendar</code> with the given date set
  /// in the default time zone with the default <code>FORMAT</code> locale.
  ///@param date The date to which the new calendar is set.
  ///@see Category\#FORMAT
  IndianCalendar.ctor6(jni.JniObject date)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor6, [date.reference]).object);

  static final _id_ctor7 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(III)V");

  /// from: public void <init>(int year, int month, int date)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a <code>IndianCalendar</code> with the given date set
  /// in the default time zone with the default <code>FORMAT</code> locale.
  ///@param year The value used to set the calendar's \#YEAR YEAR time field.
  ///@param month The value used to set the calendar's \#MONTH MONTH time field.
  ///                  The value is 0-based. e.g., 0 for January.
  ///@param date The value used to set the calendar's \#DATE DATE time field.
  ///@see Category\#FORMAT
  IndianCalendar.ctor7(int year, int month, int date)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor7, [year, month, date]).object);

  static final _id_ctor8 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(IIIIII)V");

  /// from: public void <init>(int year, int month, int date, int hour, int minute, int second)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a IndianCalendar with the given date
  /// and time set for the default time zone with the default <code>FORMAT</code> locale.
  ///@param year The value used to set the calendar's \#YEAR YEAR time field.
  ///@param month The value used to set the calendar's \#MONTH MONTH time field.
  ///                  The value is 0-based. e.g., 0 for January.
  ///@param date The value used to set the calendar's \#DATE DATE time field.
  ///@param hour The value used to set the calendar's \#HOUR_OF_DAY HOUR_OF_DAY time field.
  ///@param minute The value used to set the calendar's \#MINUTE MINUTE time field.
  ///@param second The value used to set the calendar's \#SECOND SECOND time field.
  ///@see Category\#FORMAT
  IndianCalendar.ctor8(
      int year, int month, int date, int hour, int minute, int second)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor8,
            [year, month, date, hour, minute, second]).object);

  static final _id_handleGetExtendedYear =
      jniAccessors.getMethodIDOf(_classRef, "handleGetExtendedYear", "()I");

  /// from: protected int handleGetExtendedYear()
  ///
  /// {@inheritDoc}
  int handleGetExtendedYear() => jniAccessors.callMethodWithArgs(
      reference, _id_handleGetExtendedYear, jni.JniType.intType, []).integer;

  static final _id_handleGetYearLength =
      jniAccessors.getMethodIDOf(_classRef, "handleGetYearLength", "(I)I");

  /// from: protected int handleGetYearLength(int extendedYear)
  ///
  /// {@inheritDoc}
  int handleGetYearLength(int extendedYear) => jniAccessors.callMethodWithArgs(
      reference,
      _id_handleGetYearLength,
      jni.JniType.intType,
      [extendedYear]).integer;

  static final _id_handleGetMonthLength =
      jniAccessors.getMethodIDOf(_classRef, "handleGetMonthLength", "(II)I");

  /// from: protected int handleGetMonthLength(int extendedYear, int month)
  ///
  /// {@inheritDoc}
  int handleGetMonthLength(int extendedYear, int month) =>
      jniAccessors.callMethodWithArgs(reference, _id_handleGetMonthLength,
          jni.JniType.intType, [extendedYear, month]).integer;

  static final _id_handleComputeFields =
      jniAccessors.getMethodIDOf(_classRef, "handleComputeFields", "(I)V");

  /// from: protected void handleComputeFields(int julianDay)
  ///
  /// {@inheritDoc}
  void handleComputeFields(int julianDay) => jniAccessors.callMethodWithArgs(
      reference,
      _id_handleComputeFields,
      jni.JniType.voidType,
      [julianDay]).check();

  static final _id_handleGetLimit =
      jniAccessors.getMethodIDOf(_classRef, "handleGetLimit", "(II)I");

  /// from: protected int handleGetLimit(int field, int limitType)
  ///
  /// {@inheritDoc}
  int handleGetLimit(int field, int limitType) =>
      jniAccessors.callMethodWithArgs(reference, _id_handleGetLimit,
          jni.JniType.intType, [field, limitType]).integer;

  static final _id_handleComputeMonthStart = jniAccessors.getMethodIDOf(
      _classRef, "handleComputeMonthStart", "(IIZ)I");

  /// from: protected int handleComputeMonthStart(int year, int month, boolean useMonth)
  ///
  /// {@inheritDoc}
  int handleComputeMonthStart(int year, int month, bool useMonth) =>
      jniAccessors.callMethodWithArgs(reference, _id_handleComputeMonthStart,
          jni.JniType.intType, [year, month, useMonth]).integer;

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "()Ljava/lang/String;");

  /// from: public java.lang.String getType()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  jni.JniString getType() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getType, jni.JniType.objectType, []).object);
}
