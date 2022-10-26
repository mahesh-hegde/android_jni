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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.format.Time
///
/// An alternative to the java.util.Calendar and
/// java.util.GregorianCalendar classes. An instance of the Time class represents
/// a moment in time, specified with second precision. It is modelled after
/// struct tm. This class is not thread-safe and does not consider leap seconds.
///
/// This class has a number of issues and it is recommended that
/// java.util.GregorianCalendar is used instead.
///
/// Known issues:
/// <ul>
///     <li>For historical reasons when performing time calculations all arithmetic currently takes
///     place using 32-bit integers. This limits the reliable time range representable from 1902
///     until 2037.See the wikipedia article on the
///     <a href="http://en.wikipedia.org/wiki/Year_2038_problem">Year 2038 problem</a> for details.
///     Do not rely on this behavior; it may change in the future.
///     </li>
///     <li>Calling \#switchTimezone(String) on a date that cannot exist, such as a wall time
///     that was skipped due to a DST transition, will result in a date in 1969 (i.e. -1, or 1 second
///     before 1st Jan 1970 UTC).</li>
///     <li>Much of the formatting / parsing assumes ASCII text and is therefore not suitable for
///     use with non-ASCII scripts.</li>
///     <li>No support for pseudo-zones like "GMT-07:00".</li>
/// </ul>
///@deprecated Use java.util.GregorianCalendar instead.
class Time extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/text/format/Time");
  Time.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int EPOCH_JULIAN_DAY
  ///
  /// The Julian day of the epoch, that is, January 1, 1970 on the Gregorian
  /// calendar.
  static const EPOCH_JULIAN_DAY = 2440588;

  /// from: static public final int FRIDAY
  static const FRIDAY = 5;

  /// from: static public final int HOUR
  static const HOUR = 3;

  /// from: static public final int MINUTE
  static const MINUTE = 2;

  /// from: static public final int MONDAY
  static const MONDAY = 1;

  /// from: static public final int MONDAY_BEFORE_JULIAN_EPOCH
  ///
  /// The Julian day of the Monday in the week of the epoch, December 29, 1969
  /// on the Gregorian calendar.
  static const MONDAY_BEFORE_JULIAN_EPOCH = 2440585;

  /// from: static public final int MONTH
  static const MONTH = 5;

  /// from: static public final int MONTH_DAY
  static const MONTH_DAY = 4;

  /// from: static public final int SATURDAY
  static const SATURDAY = 6;

  /// from: static public final int SECOND
  static const SECOND = 1;

  /// from: static public final int SUNDAY
  static const SUNDAY = 0;

  /// from: static public final int THURSDAY
  static const THURSDAY = 4;

  /// from: static public final java.lang.String TIMEZONE_UTC
  static const TIMEZONE_UTC = "UTC";

  /// from: static public final int TUESDAY
  static const TUESDAY = 2;

  /// from: static public final int WEDNESDAY
  static const WEDNESDAY = 3;

  /// from: static public final int WEEK_DAY
  static const WEEK_DAY = 7;

  /// from: static public final int WEEK_NUM
  static const WEEK_NUM = 9;

  /// from: static public final int YEAR
  static const YEAR = 6;

  /// from: static public final int YEAR_DAY
  static const YEAR_DAY = 8;

  static final _id_allDay = jniAccessors.getFieldIDOf(_classRef, "allDay", "Z");

  /// from: public boolean allDay
  ///
  /// True if this is an allDay event. The hour, minute, second fields are
  /// all zero, and the date is displayed the same in all time zones.
  bool get allDay => jniAccessors
      .getField(reference, _id_allDay, jni.JniType.booleanType)
      .boolean;

  /// from: public boolean allDay
  ///
  /// True if this is an allDay event. The hour, minute, second fields are
  /// all zero, and the date is displayed the same in all time zones.
  set allDay(bool value) =>
      jniEnv.SetBooleanField(reference, _id_allDay, value ? 1 : 0);

  static final _id_gmtoff = jniAccessors.getFieldIDOf(_classRef, "gmtoff", "J");

  /// from: public long gmtoff
  ///
  /// Offset in seconds from UTC including any DST offset.
  int get gmtoff =>
      jniAccessors.getField(reference, _id_gmtoff, jni.JniType.longType).long;

  /// from: public long gmtoff
  ///
  /// Offset in seconds from UTC including any DST offset.
  set gmtoff(int value) => jniEnv.SetLongField(reference, _id_gmtoff, value);

  static final _id_hour = jniAccessors.getFieldIDOf(_classRef, "hour", "I");

  /// from: public int hour
  ///
  /// Hour of day [0-23]
  int get hour =>
      jniAccessors.getField(reference, _id_hour, jni.JniType.intType).integer;

  /// from: public int hour
  ///
  /// Hour of day [0-23]
  set hour(int value) => jniEnv.SetIntField(reference, _id_hour, value);

  static final _id_isDst = jniAccessors.getFieldIDOf(_classRef, "isDst", "I");

  /// from: public int isDst
  ///
  /// This time is in daylight savings time. One of:
  /// <ul>
  /// <li>__positive__ - in dst</li>
  /// <li>__0__ - not in dst</li>
  /// <li>__negative__ - unknown</li>
  /// </ul>
  int get isDst =>
      jniAccessors.getField(reference, _id_isDst, jni.JniType.intType).integer;

  /// from: public int isDst
  ///
  /// This time is in daylight savings time. One of:
  /// <ul>
  /// <li>__positive__ - in dst</li>
  /// <li>__0__ - not in dst</li>
  /// <li>__negative__ - unknown</li>
  /// </ul>
  set isDst(int value) => jniEnv.SetIntField(reference, _id_isDst, value);

  static final _id_minute = jniAccessors.getFieldIDOf(_classRef, "minute", "I");

  /// from: public int minute
  ///
  /// Minute [0-59]
  int get minute =>
      jniAccessors.getField(reference, _id_minute, jni.JniType.intType).integer;

  /// from: public int minute
  ///
  /// Minute [0-59]
  set minute(int value) => jniEnv.SetIntField(reference, _id_minute, value);

  static final _id_month = jniAccessors.getFieldIDOf(_classRef, "month", "I");

  /// from: public int month
  ///
  /// Month [0-11]
  int get month =>
      jniAccessors.getField(reference, _id_month, jni.JniType.intType).integer;

  /// from: public int month
  ///
  /// Month [0-11]
  set month(int value) => jniEnv.SetIntField(reference, _id_month, value);

  static final _id_monthDay =
      jniAccessors.getFieldIDOf(_classRef, "monthDay", "I");

  /// from: public int monthDay
  ///
  /// Day of month [1-31]
  int get monthDay => jniAccessors
      .getField(reference, _id_monthDay, jni.JniType.intType)
      .integer;

  /// from: public int monthDay
  ///
  /// Day of month [1-31]
  set monthDay(int value) => jniEnv.SetIntField(reference, _id_monthDay, value);

  static final _id_second = jniAccessors.getFieldIDOf(_classRef, "second", "I");

  /// from: public int second
  ///
  /// Seconds [0-61] (2 leap seconds allowed)
  int get second =>
      jniAccessors.getField(reference, _id_second, jni.JniType.intType).integer;

  /// from: public int second
  ///
  /// Seconds [0-61] (2 leap seconds allowed)
  set second(int value) => jniEnv.SetIntField(reference, _id_second, value);

  static final _id_timezone =
      jniAccessors.getFieldIDOf(_classRef, "timezone", "Ljava/lang/String;");

  /// from: public java.lang.String timezone
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The timezone for this Time.  Should not be null.
  jni.JniString get timezone => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_timezone, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String timezone
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The timezone for this Time.  Should not be null.
  set timezone(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_timezone, value.reference);

  static final _id_weekDay =
      jniAccessors.getFieldIDOf(_classRef, "weekDay", "I");

  /// from: public int weekDay
  ///
  /// Day of week [0-6]
  int get weekDay => jniAccessors
      .getField(reference, _id_weekDay, jni.JniType.intType)
      .integer;

  /// from: public int weekDay
  ///
  /// Day of week [0-6]
  set weekDay(int value) => jniEnv.SetIntField(reference, _id_weekDay, value);

  static final _id_year = jniAccessors.getFieldIDOf(_classRef, "year", "I");

  /// from: public int year
  ///
  /// Year. For example, 1970.
  int get year =>
      jniAccessors.getField(reference, _id_year, jni.JniType.intType).integer;

  /// from: public int year
  ///
  /// Year. For example, 1970.
  set year(int value) => jniEnv.SetIntField(reference, _id_year, value);

  static final _id_yearDay =
      jniAccessors.getFieldIDOf(_classRef, "yearDay", "I");

  /// from: public int yearDay
  ///
  /// Day of year [0-365]
  int get yearDay => jniAccessors
      .getField(reference, _id_yearDay, jni.JniType.intType)
      .integer;

  /// from: public int yearDay
  ///
  /// Day of year [0-365]
  set yearDay(int value) => jniEnv.SetIntField(reference, _id_yearDay, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String timezoneId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct a Time object in the timezone named by the string
  /// argument "timezone". The time is initialized to Jan 1, 1970.
  ///@param timezoneId string containing the timezone to use.
  ///@see TimeZone
  Time(jni.JniString timezoneId)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [timezoneId.reference]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct a Time object in the default timezone. The time is initialized to
  /// Jan 1, 1970.
  Time.ctor1()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, []).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/text/format/Time;)V");

  /// from: public void <init>(android.text.format.Time other)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// A copy constructor.  Construct a Time object by copying the given
  /// Time object.  No normalization occurs.
  ///@param other
  Time.ctor2(Time other)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [other.reference]).object);

  static final _id_normalize =
      jniAccessors.getMethodIDOf(_classRef, "normalize", "(Z)J");

  /// from: public long normalize(boolean ignoreDst)
  ///
  /// Ensures the values in each field are in range. For example if the
  /// current value of this calendar is March 32, normalize() will convert it
  /// to April 1. It also fills in weekDay, yearDay, isDst and gmtoff.
  ///
  ///
  /// If "ignoreDst" is true, then this method sets the "isDst" field to -1
  /// (the "unknown" value) before normalizing.  It then computes the
  /// time in milliseconds and sets the correct value for "isDst" if the
  /// fields resolve to a valid date / time.
  ///
  ///
  /// See \#toMillis(boolean) for more information about when to
  /// use <tt>true</tt> or <tt>false</tt> for "ignoreDst" and when {@code -1}
  /// might be returned.
  ///@return the UTC milliseconds since the epoch, or {@code -1}
  int normalize(bool ignoreDst) => jniAccessors.callMethodWithArgs(
      reference, _id_normalize, jni.JniType.longType, [ignoreDst]).long;

  static final _id_switchTimezone = jniAccessors.getMethodIDOf(
      _classRef, "switchTimezone", "(Ljava/lang/String;)V");

  /// from: public void switchTimezone(java.lang.String timezone)
  ///
  /// Convert this time object so the time represented remains the same, but is
  /// instead located in a different timezone. This method automatically calls
  /// normalize() in some cases.
  ///
  /// This method can return incorrect results if the date / time cannot be normalized.
  void switchTimezone(jni.JniString timezone) =>
      jniAccessors.callMethodWithArgs(reference, _id_switchTimezone,
          jni.JniType.voidType, [timezone.reference]).check();

  static final _id_getActualMaximum =
      jniAccessors.getMethodIDOf(_classRef, "getActualMaximum", "(I)I");

  /// from: public int getActualMaximum(int field)
  ///
  /// Return the maximum possible value for the given field given the value of
  /// the other fields. Requires that it be normalized for MONTH_DAY and
  /// YEAR_DAY.
  ///@param field one of the constants for HOUR, MINUTE, SECOND, etc.
  ///@return the maximum value for the field.
  int getActualMaximum(int field) => jniAccessors.callMethodWithArgs(
      reference, _id_getActualMaximum, jni.JniType.intType, [field]).integer;

  static final _id_clear =
      jniAccessors.getMethodIDOf(_classRef, "clear", "(Ljava/lang/String;)V");

  /// from: public void clear(java.lang.String timezoneId)
  ///
  /// Clears all values, setting the timezone to the given timezone. Sets isDst
  /// to a negative value to mean "unknown".
  ///@param timezoneId the timezone to use.
  void clear(jni.JniString timezoneId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_clear,
      jni.JniType.voidType,
      [timezoneId.reference]).check();

  static final _id_compare = jniAccessors.getStaticMethodIDOf(_classRef,
      "compare", "(Landroid/text/format/Time;Landroid/text/format/Time;)I");

  /// from: static public int compare(android.text.format.Time a, android.text.format.Time b)
  ///
  /// Compare two {@code Time} objects and return a negative number if {@code
  /// a} is less than {@code b}, a positive number if {@code a} is greater than
  /// {@code b}, or 0 if they are equal.
  ///
  ///
  /// This method can return an incorrect answer when the date / time fields of
  /// either {@code Time} have been set to a local time that contradicts the
  /// available timezone information.
  ///@param a first {@code Time} instance to compare
  ///@param b second {@code Time} instance to compare
  ///@throws NullPointerException if either argument is {@code null}
  ///@throws IllegalArgumentException if \#allDay is true but {@code
  ///             hour}, {@code minute}, and {@code second} are not 0.
  ///@return a negative result if {@code a} is earlier, a positive result if
  ///         {@code b} is earlier, or 0 if they are equal.
  static int compare(Time a, Time b) => jniAccessors.callStaticMethodWithArgs(
      _classRef,
      _id_compare,
      jni.JniType.intType,
      [a.reference, b.reference]).integer;

  static final _id_format = jniAccessors.getMethodIDOf(
      _classRef, "format", "(Ljava/lang/String;)Ljava/lang/String;");

  /// from: public java.lang.String format(java.lang.String format)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Print the current value given the format string provided. See man
  /// strftime for what means what. The final string must be less than 256
  /// characters.
  ///@param format a string containing the desired format.
  ///@return a String containing the current time expressed in the current locale.
  jni.JniString format(jni.JniString format) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_format, jni.JniType.objectType, [format.reference]).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the current time in YYYYMMDDTHHMMSS&lt;tz&gt; format
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_parse =
      jniAccessors.getMethodIDOf(_classRef, "parse", "(Ljava/lang/String;)Z");

  /// from: public boolean parse(java.lang.String s)
  ///
  /// Parses a date-time string in either the RFC 2445 format or an abbreviated
  /// format that does not include the "time" field.  For example, all of the
  /// following strings are valid:
  ///
  /// <ul>
  ///   <li>"20081013T160000Z"</li>
  ///   <li>"20081013T160000"</li>
  ///   <li>"20081013"</li>
  /// </ul>
  ///
  /// Returns whether or not the time is in UTC (ends with Z).  If the string
  /// ends with "Z" then the timezone is set to UTC.  If the date-time string
  /// included only a date and no time field, then the <code>allDay</code>
  /// field of this Time class is set to true and the <code>hour</code>,
  /// <code>minute</code>, and <code>second</code> fields are set to zero;
  /// otherwise (a time field was included in the date-time string)
  /// <code>allDay</code> is set to false. The fields <code>weekDay</code>,
  /// <code>yearDay</code>, and <code>gmtoff</code> are always set to zero,
  /// and the field <code>isDst</code> is set to -1 (unknown).  To set those
  /// fields, call \#normalize(boolean) after parsing.
  ///
  /// To parse a date-time string and convert it to UTC milliseconds, do
  /// something like this:
  ///
  /// <pre>
  ///   Time time = new Time();
  ///   String date = "20081013T160000Z";
  ///   time.parse(date);
  ///   long millis = time.normalize(false);
  /// </pre>
  ///@param s the string to parse
  ///@return true if the resulting time value is in UTC time
  ///@throws android.util.TimeFormatException if s cannot be parsed.
  bool parse(jni.JniString s) => jniAccessors.callMethodWithArgs(
      reference, _id_parse, jni.JniType.booleanType, [s.reference]).boolean;

  static final _id_parse3339 = jniAccessors.getMethodIDOf(
      _classRef, "parse3339", "(Ljava/lang/String;)Z");

  /// from: public boolean parse3339(java.lang.String s)
  ///
  /// Parse a time in RFC 3339 format.  This method also parses simple dates
  /// (that is, strings that contain no time or time offset).  For example,
  /// all of the following strings are valid:
  ///
  /// <ul>
  ///   <li>"2008-10-13T16:00:00.000Z"</li>
  ///   <li>"2008-10-13T16:00:00.000+07:00"</li>
  ///   <li>"2008-10-13T16:00:00.000-07:00"</li>
  ///   <li>"2008-10-13"</li>
  /// </ul>
  ///
  ///
  /// If the string contains a time and time offset, then the time offset will
  /// be used to convert the time value to UTC.
  ///
  ///
  ///
  ///
  /// If the given string contains just a date (with no time field), then
  /// the \#allDay field is set to true and the \#hour,
  /// \#minute, and  \#second fields are set to zero.
  ///
  ///
  ///
  ///
  /// Returns true if the resulting time value is in UTC time.
  ///
  ///
  ///@param s the string to parse
  ///@return true if the resulting time value is in UTC time
  ///@throws android.util.TimeFormatException if s cannot be parsed.
  bool parse3339(jni.JniString s) => jniAccessors.callMethodWithArgs(
      reference, _id_parse3339, jni.JniType.booleanType, [s.reference]).boolean;

  static final _id_getCurrentTimezone = jniAccessors.getStaticMethodIDOf(
      _classRef, "getCurrentTimezone", "()Ljava/lang/String;");

  /// from: static public java.lang.String getCurrentTimezone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the timezone string that is currently set for the device.
  static jni.JniString getCurrentTimezone() =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getCurrentTimezone, jni.JniType.objectType, []).object);

  static final _id_setToNow =
      jniAccessors.getMethodIDOf(_classRef, "setToNow", "()V");

  /// from: public void setToNow()
  ///
  /// Sets the time of the given Time object to the current time.
  void setToNow() => jniAccessors.callMethodWithArgs(
      reference, _id_setToNow, jni.JniType.voidType, []).check();

  static final _id_toMillis =
      jniAccessors.getMethodIDOf(_classRef, "toMillis", "(Z)J");

  /// from: public long toMillis(boolean ignoreDst)
  ///
  /// Converts this time to milliseconds. Suitable for interacting with the
  /// standard java libraries. The time is in UTC milliseconds since the epoch.
  /// This does an implicit normalization to compute the milliseconds but does
  /// _not_ change any of the fields in this Time object.  If you want
  /// to normalize the fields in this Time object and also get the milliseconds
  /// then use \#normalize(boolean).
  ///
  ///
  /// If "ignoreDst" is false, then this method uses the current setting of the
  /// "isDst" field and will adjust the returned time if the "isDst" field is
  /// wrong for the given time.  See the sample code below for an example of
  /// this.
  ///
  ///
  /// If "ignoreDst" is true, then this method ignores the current setting of
  /// the "isDst" field in this Time object and will instead figure out the
  /// correct value of "isDst" (as best it can) from the fields in this
  /// Time object.  The only case where this method cannot figure out the
  /// correct value of the "isDst" field is when the time is inherently
  /// ambiguous because it falls in the hour that is repeated when switching
  /// from Daylight-Saving Time to Standard Time.
  ///
  ///
  /// Here is an example where <tt>toMillis(true)</tt> adjusts the time,
  /// assuming that DST changes at 2am on Sunday, Nov 4, 2007.
  ///
  /// <pre>
  /// Time time = new Time();
  /// time.set(4, 10, 2007);  // set the date to Nov 4, 2007, 12am
  /// time.normalize(false);       // this sets isDst = 1
  /// time.monthDay += 1;     // changes the date to Nov 5, 2007, 12am
  /// millis = time.toMillis(false);   // millis is Nov 4, 2007, 11pm
  /// millis = time.toMillis(true);    // millis is Nov 5, 2007, 12am
  /// </pre>
  ///
  ///
  /// To avoid this problem, use <tt>toMillis(true)</tt>
  /// after adding or subtracting days or explicitly setting the "monthDay"
  /// field.  On the other hand, if you are adding
  /// or subtracting hours or minutes, then you should use
  /// <tt>toMillis(false)</tt>.
  ///
  ///
  /// You should also use <tt>toMillis(false)</tt> if you want
  /// to read back the same milliseconds that you set with \#set(long)
  /// or \#set(Time) or after parsing a date string.
  ///
  ///
  /// This method can return {@code -1} when the date / time fields have been
  /// set to a local time that conflicts with available timezone information.
  /// For example, when daylight savings transitions cause an hour to be
  /// skipped: times within that hour will return {@code -1} if isDst =
  /// {@code -1}.
  int toMillis(bool ignoreDst) => jniAccessors.callMethodWithArgs(
      reference, _id_toMillis, jni.JniType.longType, [ignoreDst]).long;

  static final _id_set0 = jniAccessors.getMethodIDOf(_classRef, "set", "(J)V");

  /// from: public void set(long millis)
  ///
  /// Sets the fields in this Time object given the UTC milliseconds.  After
  /// this method returns, all the fields are normalized.
  /// This also sets the "isDst" field to the correct value.
  ///@param millis the time in UTC milliseconds since the epoch.
  void set0(int millis) => jniAccessors.callMethodWithArgs(
      reference, _id_set0, jni.JniType.voidType, [millis]).check();

  static final _id_format2445 = jniAccessors.getMethodIDOf(
      _classRef, "format2445", "()Ljava/lang/String;");

  /// from: public java.lang.String format2445()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Format according to RFC 2445 DATE-TIME type.
  ///
  /// The same as format("%Y%m%dT%H%M%S"), or format("%Y%m%dT%H%M%SZ") for a Time with a
  /// timezone set to "UTC".
  jni.JniString format2445() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_format2445, jni.JniType.objectType, []).object);

  static final _id_set1 = jniAccessors.getMethodIDOf(
      _classRef, "set", "(Landroid/text/format/Time;)V");

  /// from: public void set(android.text.format.Time that)
  ///
  /// Copy the value of that to this Time object. No normalization happens.
  void set1(Time that) => jniAccessors.callMethodWithArgs(
      reference, _id_set1, jni.JniType.voidType, [that.reference]).check();

  static final _id_set2 =
      jniAccessors.getMethodIDOf(_classRef, "set", "(IIIIII)V");

  /// from: public void set(int second, int minute, int hour, int monthDay, int month, int year)
  ///
  /// Sets the fields. Sets weekDay, yearDay and gmtoff to 0, and isDst to -1.
  /// Call \#normalize(boolean) if you need those.
  void set2(int second, int minute, int hour, int monthDay, int month,
          int year) =>
      jniAccessors.callMethodWithArgs(reference, _id_set2, jni.JniType.voidType,
          [second, minute, hour, monthDay, month, year]).check();

  static final _id_set3 =
      jniAccessors.getMethodIDOf(_classRef, "set", "(III)V");

  /// from: public void set(int monthDay, int month, int year)
  ///
  /// Sets the date from the given fields.  Also sets allDay to true.
  /// Sets weekDay, yearDay and gmtoff to 0, and isDst to -1.
  /// Call \#normalize(boolean) if you need those.
  ///@param monthDay the day of the month (in the range [1,31])
  ///@param month the zero-based month number (in the range [0,11])
  ///@param year the year
  void set3(int monthDay, int month, int year) =>
      jniAccessors.callMethodWithArgs(reference, _id_set3, jni.JniType.voidType,
          [monthDay, month, year]).check();

  static final _id_before = jniAccessors.getMethodIDOf(
      _classRef, "before", "(Landroid/text/format/Time;)Z");

  /// from: public boolean before(android.text.format.Time that)
  ///
  /// Returns true if the time represented by this Time object occurs before
  /// the given time.
  ///
  ///
  /// Equivalent to {@code Time.compare(this, that) < 0}. See
  /// \#compare(Time, Time) for details.
  ///@param that a given Time object to compare against
  ///@return true if this time is less than the given time
  bool before(Time that) => jniAccessors.callMethodWithArgs(
      reference, _id_before, jni.JniType.booleanType, [that.reference]).boolean;

  static final _id_after = jniAccessors.getMethodIDOf(
      _classRef, "after", "(Landroid/text/format/Time;)Z");

  /// from: public boolean after(android.text.format.Time that)
  ///
  /// Returns true if the time represented by this Time object occurs after
  /// the given time.
  ///
  ///
  /// Equivalent to {@code Time.compare(this, that) > 0}. See
  /// \#compare(Time, Time) for details.
  ///@param that a given Time object to compare against
  ///@return true if this time is greater than the given time
  bool after(Time that) => jniAccessors.callMethodWithArgs(
      reference, _id_after, jni.JniType.booleanType, [that.reference]).boolean;

  static final _id_getWeekNumber =
      jniAccessors.getMethodIDOf(_classRef, "getWeekNumber", "()I");

  /// from: public int getWeekNumber()
  ///
  /// Computes the week number according to ISO 8601.  The current Time
  /// object must already be normalized because this method uses the
  /// yearDay and weekDay fields.
  ///
  ///
  /// In IS0 8601, weeks start on Monday.
  /// The first week of the year (week 1) is defined by ISO 8601 as the
  /// first week with four or more of its days in the starting year.
  /// Or equivalently, the week containing January 4.  Or equivalently,
  /// the week with the year's first Thursday in it.
  ///
  ///
  ///
  ///
  /// The week number can be calculated by counting Thursdays.  Week N
  /// contains the Nth Thursday of the year.
  ///
  ///
  ///@return the ISO week number.
  int getWeekNumber() => jniAccessors.callMethodWithArgs(
      reference, _id_getWeekNumber, jni.JniType.intType, []).integer;

  static final _id_format3339 = jniAccessors.getMethodIDOf(
      _classRef, "format3339", "(Z)Ljava/lang/String;");

  /// from: public java.lang.String format3339(boolean allDay)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a string in the RFC 3339 format.
  ///
  /// If allDay is true, expresses the time as Y-M-D
  ///
  ///
  /// Otherwise, if the timezone is UTC, expresses the time as Y-M-D-T-H-M-S UTC
  ///
  ///
  /// Otherwise the time is expressed the time as Y-M-D-T-H-M-S +- GMT
  ///
  ///@return string in the RFC 3339 format.
  jni.JniString format3339(bool allDay) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_format3339, jni.JniType.objectType, [allDay]).object);

  static final _id_isEpoch = jniAccessors.getStaticMethodIDOf(
      _classRef, "isEpoch", "(Landroid/text/format/Time;)Z");

  /// from: static public boolean isEpoch(android.text.format.Time time)
  ///
  /// Returns true if the day of the given time is the epoch on the Julian Calendar
  /// (January 1, 1970 on the Gregorian calendar).
  ///
  ///
  /// This method can return an incorrect answer when the date / time fields have
  /// been set to a local time that contradicts the available timezone information.
  ///@param time the time to test
  ///@return true if epoch.
  static bool isEpoch(Time time) => jniAccessors.callStaticMethodWithArgs(
      _classRef,
      _id_isEpoch,
      jni.JniType.booleanType,
      [time.reference]).boolean;

  static final _id_getJulianDay =
      jniAccessors.getStaticMethodIDOf(_classRef, "getJulianDay", "(JJ)I");

  /// from: static public int getJulianDay(long millis, long gmtoff)
  ///
  /// Computes the Julian day number for a point in time in a particular
  /// timezone. The Julian day for a given date is the same for every
  /// timezone. For example, the Julian day for July 1, 2008 is 2454649.
  ///
  /// Callers must pass the time in UTC millisecond (as can be returned
  /// by \#toMillis(boolean) or \#normalize(boolean))
  /// and the offset from UTC of the timezone in seconds (as might be in
  /// \#gmtoff).
  ///
  /// The Julian day is useful for testing if two events occur on the
  /// same calendar date and for determining the relative time of an event
  /// from the present ("yesterday", "3 days ago", etc.).
  ///@param millis the time in UTC milliseconds
  ///@param gmtoff the offset from UTC in seconds
  ///@return the Julian day
  static int getJulianDay(int millis, int gmtoff) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getJulianDay,
          jni.JniType.intType, [millis, gmtoff]).integer;

  static final _id_setJulianDay =
      jniAccessors.getMethodIDOf(_classRef, "setJulianDay", "(I)J");

  /// from: public long setJulianDay(int julianDay)
  ///
  /// Sets the time from the given Julian day number, which must be based on
  /// the same timezone that is set in this Time object.  The "gmtoff" field
  /// need not be initialized because the given Julian day may have a different
  /// GMT offset than whatever is currently stored in this Time object anyway.
  /// After this method returns all the fields will be normalized and the time
  /// will be set to 12am at the beginning of the given Julian day.
  ///
  ///
  ///
  ///
  /// The only exception to this is if 12am does not exist for that day because
  /// of daylight saving time.  For example, Cairo, Eqypt moves time ahead one
  /// hour at 12am on April 25, 2008 and there are a few other places that
  /// also change daylight saving time at 12am.  In those cases, the time
  /// will be set to 1am.
  ///
  ///
  ///@param julianDay the Julian day in the timezone for this Time object
  ///@return the UTC milliseconds for the beginning of the Julian day
  int setJulianDay(int julianDay) => jniAccessors.callMethodWithArgs(
      reference, _id_setJulianDay, jni.JniType.longType, [julianDay]).long;

  static final _id_getWeeksSinceEpochFromJulianDay =
      jniAccessors.getStaticMethodIDOf(
          _classRef, "getWeeksSinceEpochFromJulianDay", "(II)I");

  /// from: static public int getWeeksSinceEpochFromJulianDay(int julianDay, int firstDayOfWeek)
  ///
  /// Returns the week since \#EPOCH_JULIAN_DAY (Jan 1, 1970) adjusted
  /// for first day of week. This takes a julian day and the week start day and
  /// calculates which week since \#EPOCH_JULIAN_DAY that day occurs in,
  /// starting at 0. *Do not* use this to compute the ISO week number for the
  /// year.
  ///@param julianDay The julian day to calculate the week number for
  ///@param firstDayOfWeek Which week day is the first day of the week, see
  ///            \#SUNDAY
  ///@return Weeks since the epoch
  static int getWeeksSinceEpochFromJulianDay(
          int julianDay, int firstDayOfWeek) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getWeeksSinceEpochFromJulianDay,
          jni.JniType.intType,
          [julianDay, firstDayOfWeek]).integer;

  static final _id_getJulianMondayFromWeeksSinceEpoch =
      jniAccessors.getStaticMethodIDOf(
          _classRef, "getJulianMondayFromWeeksSinceEpoch", "(I)I");

  /// from: static public int getJulianMondayFromWeeksSinceEpoch(int week)
  ///
  /// Takes a number of weeks since the epoch and calculates the Julian day of
  /// the Monday for that week. This assumes that the week containing the
  /// \#EPOCH_JULIAN_DAY is considered week 0. It returns the Julian day
  /// for the Monday week weeks after the Monday of the week containing the
  /// epoch.
  ///@param week Number of weeks since the epoch
  ///@return The julian day for the Monday of the given week since the epoch
  static int getJulianMondayFromWeeksSinceEpoch(int week) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getJulianMondayFromWeeksSinceEpoch,
          jni.JniType.intType,
          [week]).integer;
}