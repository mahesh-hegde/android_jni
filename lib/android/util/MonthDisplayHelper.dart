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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.util.MonthDisplayHelper
///
/// Helps answer common questions that come up when displaying a month in a
/// 6 row calendar grid format.
///
/// Not thread safe.
class MonthDisplayHelper extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/util/MonthDisplayHelper");
  MonthDisplayHelper.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(III)V");

  /// from: public void <init>(int year, int month, int weekStartDay)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param year The year.
  ///@param month The month.
  ///@param weekStartDay What day of the week the week should start.
  MonthDisplayHelper(int year, int month, int weekStartDay)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [year, month, weekStartDay]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int year, int month)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MonthDisplayHelper.ctor1(int year, int month)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [year, month]).object);

  static final _id_getYear =
      jniAccessors.getMethodIDOf(_classRef, "getYear", "()I");

  /// from: public int getYear()
  int getYear() => jniAccessors.callMethodWithArgs(
      reference, _id_getYear, jni.JniType.intType, []).integer;

  static final _id_getMonth =
      jniAccessors.getMethodIDOf(_classRef, "getMonth", "()I");

  /// from: public int getMonth()
  int getMonth() => jniAccessors.callMethodWithArgs(
      reference, _id_getMonth, jni.JniType.intType, []).integer;

  static final _id_getWeekStartDay =
      jniAccessors.getMethodIDOf(_classRef, "getWeekStartDay", "()I");

  /// from: public int getWeekStartDay()
  int getWeekStartDay() => jniAccessors.callMethodWithArgs(
      reference, _id_getWeekStartDay, jni.JniType.intType, []).integer;

  static final _id_getFirstDayOfMonth =
      jniAccessors.getMethodIDOf(_classRef, "getFirstDayOfMonth", "()I");

  /// from: public int getFirstDayOfMonth()
  ///
  /// @return The first day of the month using a constants such as
  ///   java.util.Calendar\#SUNDAY.
  int getFirstDayOfMonth() => jniAccessors.callMethodWithArgs(
      reference, _id_getFirstDayOfMonth, jni.JniType.intType, []).integer;

  static final _id_getNumberOfDaysInMonth =
      jniAccessors.getMethodIDOf(_classRef, "getNumberOfDaysInMonth", "()I");

  /// from: public int getNumberOfDaysInMonth()
  ///
  /// @return The number of days in the month.
  int getNumberOfDaysInMonth() => jniAccessors.callMethodWithArgs(
      reference, _id_getNumberOfDaysInMonth, jni.JniType.intType, []).integer;

  static final _id_getOffset =
      jniAccessors.getMethodIDOf(_classRef, "getOffset", "()I");

  /// from: public int getOffset()
  ///
  /// @return The offset from displaying everything starting on the very first
  ///   box.  For example, if the calendar is set to display the first day of
  ///   the week as Sunday, and the month starts on a Wednesday, the offset is 3.
  int getOffset() => jniAccessors.callMethodWithArgs(
      reference, _id_getOffset, jni.JniType.intType, []).integer;

  static final _id_getDigitsForRow =
      jniAccessors.getMethodIDOf(_classRef, "getDigitsForRow", "(I)[I");

  /// from: public int[] getDigitsForRow(int row)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param row Which row (0-5).
  ///@return the digits of the month to display in one
  /// of the 6 rows of a calendar month display.
  jni.JniObject getDigitsForRow(int row) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getDigitsForRow, jni.JniType.objectType, [row]).object);

  static final _id_getDayAt =
      jniAccessors.getMethodIDOf(_classRef, "getDayAt", "(II)I");

  /// from: public int getDayAt(int row, int column)
  ///
  /// @param row The row, 0-5, starting from the top.
  ///@param column The column, 0-6, starting from the left.
  ///@return The day at a particular row, column
  int getDayAt(int row, int column) => jniAccessors.callMethodWithArgs(
      reference, _id_getDayAt, jni.JniType.intType, [row, column]).integer;

  static final _id_getRowOf =
      jniAccessors.getMethodIDOf(_classRef, "getRowOf", "(I)I");

  /// from: public int getRowOf(int day)
  ///
  /// @return Which row day is in.
  int getRowOf(int day) => jniAccessors.callMethodWithArgs(
      reference, _id_getRowOf, jni.JniType.intType, [day]).integer;

  static final _id_getColumnOf =
      jniAccessors.getMethodIDOf(_classRef, "getColumnOf", "(I)I");

  /// from: public int getColumnOf(int day)
  ///
  /// @return Which column day is in.
  int getColumnOf(int day) => jniAccessors.callMethodWithArgs(
      reference, _id_getColumnOf, jni.JniType.intType, [day]).integer;

  static final _id_previousMonth =
      jniAccessors.getMethodIDOf(_classRef, "previousMonth", "()V");

  /// from: public void previousMonth()
  ///
  /// Decrement the month.
  void previousMonth() => jniAccessors.callMethodWithArgs(
      reference, _id_previousMonth, jni.JniType.voidType, []).check();

  static final _id_nextMonth =
      jniAccessors.getMethodIDOf(_classRef, "nextMonth", "()V");

  /// from: public void nextMonth()
  ///
  /// Increment the month.
  void nextMonth() => jniAccessors.callMethodWithArgs(
      reference, _id_nextMonth, jni.JniType.voidType, []).check();

  static final _id_isWithinCurrentMonth =
      jniAccessors.getMethodIDOf(_classRef, "isWithinCurrentMonth", "(II)Z");

  /// from: public boolean isWithinCurrentMonth(int row, int column)
  ///
  /// @return Whether the row and column fall within the month.
  bool isWithinCurrentMonth(int row, int column) =>
      jniAccessors.callMethodWithArgs(reference, _id_isWithinCurrentMonth,
          jni.JniType.booleanType, [row, column]).boolean;
}
