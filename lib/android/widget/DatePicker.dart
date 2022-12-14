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

import "FrameLayout.dart" as framelayout_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../content/res/Configuration.dart" as configuration_;

import "CalendarView.dart" as calendarview_;

import "../util/SparseArray.dart" as sparsearray_;

import "../os/Parcelable.dart" as parcelable_;

import "../view/ViewStructure.dart" as viewstructure_;

import "../view/autofill/AutofillValue.dart" as autofillvalue_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.DatePicker
///
/// Provides a widget for selecting a date.
///
/// When the android.R.styleable\#DatePicker_datePickerMode attribute is
/// set to {@code spinner}, the date can be selected using year, month, and day
/// spinners or a CalendarView. The set of spinners and the calendar
/// view are automatically synchronized. The client can customize whether only
/// the spinners, or only the calendar view, or both to be displayed.
///
///
///
/// When the android.R.styleable\#DatePicker_datePickerMode attribute is
/// set to {@code calendar}, the month and day can be selected using a
/// calendar-style view while the year can be selected separately using a list.
///
///
///
/// See the <a href="{@docRoot}guide/topics/ui/controls/pickers.html">Pickers</a>
/// guide.
///
///
///
/// For a dialog using this view, see android.app.DatePickerDialog.
///
///
///@attr ref android.R.styleable\#DatePicker_startYear
///@attr ref android.R.styleable\#DatePicker_endYear
///@attr ref android.R.styleable\#DatePicker_maxDate
///@attr ref android.R.styleable\#DatePicker_minDate
///@attr ref android.R.styleable\#DatePicker_spinnersShown
///@attr ref android.R.styleable\#DatePicker_calendarViewShown
///@attr ref android.R.styleable\#DatePicker_dayOfWeekBackground
///@attr ref android.R.styleable\#DatePicker_dayOfWeekTextAppearance
///@attr ref android.R.styleable\#DatePicker_headerBackground
///@attr ref android.R.styleable\#DatePicker_headerMonthTextAppearance
///@attr ref android.R.styleable\#DatePicker_headerDayOfMonthTextAppearance
///@attr ref android.R.styleable\#DatePicker_headerYearTextAppearance
///@attr ref android.R.styleable\#DatePicker_yearListItemTextAppearance
///@attr ref android.R.styleable\#DatePicker_yearListSelectorColor
///@attr ref android.R.styleable\#DatePicker_calendarTextColor
///@attr ref android.R.styleable\#DatePicker_datePickerMode
class DatePicker extends framelayout_.FrameLayout {
  static final _classRef = jniAccessors.getClassOf("android/widget/DatePicker");
  DatePicker.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DatePicker(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DatePicker.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DatePicker.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DatePicker.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_init = jniAccessors.getMethodIDOf(_classRef, "init",
      "(IIILandroid/widget/DatePicker\$OnDateChangedListener;)V");

  /// from: public void init(int year, int monthOfYear, int dayOfMonth, android.widget.DatePicker.OnDateChangedListener onDateChangedListener)
  ///
  /// Initialize the state. If the provided values designate an inconsistent
  /// date the values are normalized before updating the spinners.
  ///@param year The initial year.
  ///@param monthOfYear The initial month <strong>starting from zero</strong>.
  ///@param dayOfMonth The initial day of the month.
  ///@param onDateChangedListener How user is notified date is changed by
  ///            user, can be null.
  void init(int year, int monthOfYear, int dayOfMonth,
          DatePicker_OnDateChangedListener onDateChangedListener) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_init, jni.JniType.voidType, [
        year,
        monthOfYear,
        dayOfMonth,
        onDateChangedListener.reference
      ]).check();

  static final _id_setOnDateChangedListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnDateChangedListener",
      "(Landroid/widget/DatePicker\$OnDateChangedListener;)V");

  /// from: public void setOnDateChangedListener(android.widget.DatePicker.OnDateChangedListener onDateChangedListener)
  ///
  /// Set the callback that indicates the date has been adjusted by the user.
  ///@param onDateChangedListener How user is notified date is changed by
  ///            user, can be null.
  void setOnDateChangedListener(
          DatePicker_OnDateChangedListener onDateChangedListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnDateChangedListener,
          jni.JniType.voidType, [onDateChangedListener.reference]).check();

  static final _id_updateDate =
      jniAccessors.getMethodIDOf(_classRef, "updateDate", "(III)V");

  /// from: public void updateDate(int year, int month, int dayOfMonth)
  ///
  /// Update the current date.
  ///@param year The year.
  ///@param month The month which is <strong>starting from zero</strong>.
  ///@param dayOfMonth The day of the month.
  void updateDate(int year, int month, int dayOfMonth) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateDate,
          jni.JniType.voidType, [year, month, dayOfMonth]).check();

  static final _id_getYear =
      jniAccessors.getMethodIDOf(_classRef, "getYear", "()I");

  /// from: public int getYear()
  ///
  /// @return The selected year.
  int getYear() => jniAccessors.callMethodWithArgs(
      reference, _id_getYear, jni.JniType.intType, []).integer;

  static final _id_getMonth =
      jniAccessors.getMethodIDOf(_classRef, "getMonth", "()I");

  /// from: public int getMonth()
  ///
  /// @return The selected month.
  int getMonth() => jniAccessors.callMethodWithArgs(
      reference, _id_getMonth, jni.JniType.intType, []).integer;

  static final _id_getDayOfMonth =
      jniAccessors.getMethodIDOf(_classRef, "getDayOfMonth", "()I");

  /// from: public int getDayOfMonth()
  ///
  /// @return The selected day of month.
  int getDayOfMonth() => jniAccessors.callMethodWithArgs(
      reference, _id_getDayOfMonth, jni.JniType.intType, []).integer;

  static final _id_getMinDate =
      jniAccessors.getMethodIDOf(_classRef, "getMinDate", "()J");

  /// from: public long getMinDate()
  ///
  /// Gets the minimal date supported by this DatePicker in
  /// milliseconds since January 1, 1970 00:00:00 in
  /// TimeZone\#getDefault() time zone.
  ///
  /// Note: The default minimal date is 01/01/1900.
  ///
  ///@return The minimal supported date.
  int getMinDate() => jniAccessors.callMethodWithArgs(
      reference, _id_getMinDate, jni.JniType.longType, []).long;

  static final _id_setMinDate =
      jniAccessors.getMethodIDOf(_classRef, "setMinDate", "(J)V");

  /// from: public void setMinDate(long minDate)
  ///
  /// Sets the minimal date supported by this NumberPicker in
  /// milliseconds since January 1, 1970 00:00:00 in
  /// TimeZone\#getDefault() time zone.
  ///@param minDate The minimal supported date.
  void setMinDate(int minDate) => jniAccessors.callMethodWithArgs(
      reference, _id_setMinDate, jni.JniType.voidType, [minDate]).check();

  static final _id_getMaxDate =
      jniAccessors.getMethodIDOf(_classRef, "getMaxDate", "()J");

  /// from: public long getMaxDate()
  ///
  /// Gets the maximal date supported by this DatePicker in
  /// milliseconds since January 1, 1970 00:00:00 in
  /// TimeZone\#getDefault() time zone.
  ///
  /// Note: The default maximal date is 12/31/2100.
  ///
  ///@return The maximal supported date.
  int getMaxDate() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxDate, jni.JniType.longType, []).long;

  static final _id_setMaxDate =
      jniAccessors.getMethodIDOf(_classRef, "setMaxDate", "(J)V");

  /// from: public void setMaxDate(long maxDate)
  ///
  /// Sets the maximal date supported by this DatePicker in
  /// milliseconds since January 1, 1970 00:00:00 in
  /// TimeZone\#getDefault() time zone.
  ///@param maxDate The maximal supported date.
  void setMaxDate(int maxDate) => jniAccessors.callMethodWithArgs(
      reference, _id_setMaxDate, jni.JniType.voidType, [maxDate]).check();

  static final _id_setEnabled1 =
      jniAccessors.getMethodIDOf(_classRef, "setEnabled", "(Z)V");

  /// from: public void setEnabled(boolean enabled)
  void setEnabled1(bool enabled) => jniAccessors.callMethodWithArgs(
      reference, _id_setEnabled1, jni.JniType.voidType, [enabled]).check();

  static final _id_isEnabled1 =
      jniAccessors.getMethodIDOf(_classRef, "isEnabled", "()Z");

  /// from: public boolean isEnabled()
  bool isEnabled1() => jniAccessors.callMethodWithArgs(
      reference, _id_isEnabled1, jni.JniType.booleanType, []).boolean;

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);

  static final _id_onConfigurationChanged1 = jniAccessors.getMethodIDOf(
      _classRef,
      "onConfigurationChanged",
      "(Landroid/content/res/Configuration;)V");

  /// from: protected void onConfigurationChanged(android.content.res.Configuration newConfig)
  void onConfigurationChanged1(configuration_.Configuration newConfig) =>
      jniAccessors.callMethodWithArgs(reference, _id_onConfigurationChanged1,
          jni.JniType.voidType, [newConfig.reference]).check();

  static final _id_setFirstDayOfWeek =
      jniAccessors.getMethodIDOf(_classRef, "setFirstDayOfWeek", "(I)V");

  /// from: public void setFirstDayOfWeek(int firstDayOfWeek)
  ///
  /// Sets the first day of week.
  ///@param firstDayOfWeek The first day of the week conforming to the
  ///            CalendarView APIs.
  ///@see Calendar\#SUNDAY
  ///@see Calendar\#MONDAY
  ///@see Calendar\#TUESDAY
  ///@see Calendar\#WEDNESDAY
  ///@see Calendar\#THURSDAY
  ///@see Calendar\#FRIDAY
  ///@see Calendar\#SATURDAY
  ///@attr ref android.R.styleable\#DatePicker_firstDayOfWeek
  void setFirstDayOfWeek(int firstDayOfWeek) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setFirstDayOfWeek,
      jni.JniType.voidType,
      [firstDayOfWeek]).check();

  static final _id_getFirstDayOfWeek =
      jniAccessors.getMethodIDOf(_classRef, "getFirstDayOfWeek", "()I");

  /// from: public int getFirstDayOfWeek()
  ///
  /// Gets the first day of week.
  ///@return The first day of the week conforming to the CalendarView
  ///         APIs.
  ///@see Calendar\#SUNDAY
  ///@see Calendar\#MONDAY
  ///@see Calendar\#TUESDAY
  ///@see Calendar\#WEDNESDAY
  ///@see Calendar\#THURSDAY
  ///@see Calendar\#FRIDAY
  ///@see Calendar\#SATURDAY
  ///@attr ref android.R.styleable\#DatePicker_firstDayOfWeek
  int getFirstDayOfWeek() => jniAccessors.callMethodWithArgs(
      reference, _id_getFirstDayOfWeek, jni.JniType.intType, []).integer;

  static final _id_getCalendarViewShown =
      jniAccessors.getMethodIDOf(_classRef, "getCalendarViewShown", "()Z");

  /// from: public boolean getCalendarViewShown()
  ///
  /// Returns whether the CalendarView is shown.
  ///
  /// <strong>Note:</strong> This method returns {@code false} when the
  /// android.R.styleable\#DatePicker_datePickerMode attribute is set
  /// to {@code calendar}.
  ///@return {@code true} if the calendar view is shown
  ///@see \#getCalendarView()
  ///@deprecated Not supported by Material-style {@code calendar} mode
  bool getCalendarViewShown() => jniAccessors.callMethodWithArgs(
      reference, _id_getCalendarViewShown, jni.JniType.booleanType, []).boolean;

  static final _id_getCalendarView = jniAccessors.getMethodIDOf(
      _classRef, "getCalendarView", "()Landroid/widget/CalendarView;");

  /// from: public android.widget.CalendarView getCalendarView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the CalendarView used by this picker.
  ///
  /// <strong>Note:</strong> This method throws an
  /// UnsupportedOperationException when the
  /// android.R.styleable\#DatePicker_datePickerMode attribute is set
  /// to {@code calendar}.
  ///@return the calendar view
  ///@see \#getCalendarViewShown()
  ///@deprecated Not supported by Material-style {@code calendar} mode
  ///@throws UnsupportedOperationException if called when the picker is
  ///         displayed in {@code calendar} mode
  calendarview_.CalendarView getCalendarView() =>
      calendarview_.CalendarView.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCalendarView, jni.JniType.objectType, []).object);

  static final _id_setCalendarViewShown =
      jniAccessors.getMethodIDOf(_classRef, "setCalendarViewShown", "(Z)V");

  /// from: public void setCalendarViewShown(boolean shown)
  ///
  /// Sets whether the CalendarView is shown.
  ///
  /// <strong>Note:</strong> Calling this method has no effect when the
  /// android.R.styleable\#DatePicker_datePickerMode attribute is set
  /// to {@code calendar}.
  ///@param shown {@code true} to show the calendar view, {@code false} to
  ///              hide it
  ///@deprecated Not supported by Material-style {@code calendar} mode
  void setCalendarViewShown(bool shown) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setCalendarViewShown,
      jni.JniType.voidType,
      [shown]).check();

  static final _id_getSpinnersShown =
      jniAccessors.getMethodIDOf(_classRef, "getSpinnersShown", "()Z");

  /// from: public boolean getSpinnersShown()
  ///
  /// Returns whether the spinners are shown.
  ///
  /// <strong>Note:</strong> his method returns {@code false} when the
  /// android.R.styleable\#DatePicker_datePickerMode attribute is set
  /// to {@code calendar}.
  ///@return {@code true} if the spinners are shown
  ///@deprecated Not supported by Material-style {@code calendar} mode
  bool getSpinnersShown() => jniAccessors.callMethodWithArgs(
      reference, _id_getSpinnersShown, jni.JniType.booleanType, []).boolean;

  static final _id_setSpinnersShown =
      jniAccessors.getMethodIDOf(_classRef, "setSpinnersShown", "(Z)V");

  /// from: public void setSpinnersShown(boolean shown)
  ///
  /// Sets whether the spinners are shown.
  ///
  /// Calling this method has no effect when the
  /// android.R.styleable\#DatePicker_datePickerMode attribute is set
  /// to {@code calendar}.
  ///@param shown {@code true} to show the spinners, {@code false} to hide
  ///              them
  ///@deprecated Not supported by Material-style {@code calendar} mode
  void setSpinnersShown(bool shown) => jniAccessors.callMethodWithArgs(
      reference, _id_setSpinnersShown, jni.JniType.voidType, [shown]).check();

  static final _id_dispatchRestoreInstanceState1 = jniAccessors.getMethodIDOf(
      _classRef,
      "dispatchRestoreInstanceState",
      "(Landroid/util/SparseArray;)V");

  /// from: protected void dispatchRestoreInstanceState(android.util.SparseArray<android.os.Parcelable> container)
  void dispatchRestoreInstanceState1(sparsearray_.SparseArray container) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_dispatchRestoreInstanceState1,
          jni.JniType.voidType,
          [container.reference]).check();

  static final _id_onSaveInstanceState1 = jniAccessors.getMethodIDOf(
      _classRef, "onSaveInstanceState", "()Landroid/os/Parcelable;");

  /// from: protected android.os.Parcelable onSaveInstanceState()
  /// The returned object must be deleted after use, by calling the `delete` method.
  parcelable_.Parcelable onSaveInstanceState1() =>
      parcelable_.Parcelable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onSaveInstanceState1, jni.JniType.objectType, []).object);

  static final _id_onRestoreInstanceState1 = jniAccessors.getMethodIDOf(
      _classRef, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V");

  /// from: protected void onRestoreInstanceState(android.os.Parcelable state)
  void onRestoreInstanceState1(parcelable_.Parcelable state) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRestoreInstanceState1,
          jni.JniType.voidType, [state.reference]).check();

  static final _id_dispatchProvideAutofillStructure1 =
      jniAccessors.getMethodIDOf(_classRef, "dispatchProvideAutofillStructure",
          "(Landroid/view/ViewStructure;I)V");

  /// from: public void dispatchProvideAutofillStructure(android.view.ViewStructure structure, int flags)
  void dispatchProvideAutofillStructure1(
          viewstructure_.ViewStructure structure, int flags) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_dispatchProvideAutofillStructure1,
          jni.JniType.voidType,
          [structure.reference, flags]).check();

  static final _id_autofill2 = jniAccessors.getMethodIDOf(
      _classRef, "autofill", "(Landroid/view/autofill/AutofillValue;)V");

  /// from: public void autofill(android.view.autofill.AutofillValue value)
  void autofill2(autofillvalue_.AutofillValue value) =>
      jniAccessors.callMethodWithArgs(reference, _id_autofill2,
          jni.JniType.voidType, [value.reference]).check();

  static final _id_getAutofillType1 =
      jniAccessors.getMethodIDOf(_classRef, "getAutofillType", "()I");

  /// from: public int getAutofillType()
  ///
  /// @return Value is android.view.View\#AUTOFILL_TYPE_NONE, android.view.View\#AUTOFILL_TYPE_TEXT, android.view.View\#AUTOFILL_TYPE_TOGGLE, android.view.View\#AUTOFILL_TYPE_LIST, or android.view.View\#AUTOFILL_TYPE_DATE
  int getAutofillType1() => jniAccessors.callMethodWithArgs(
      reference, _id_getAutofillType1, jni.JniType.intType, []).integer;

  static final _id_getAutofillValue1 = jniAccessors.getMethodIDOf(
      _classRef, "getAutofillValue", "()Landroid/view/autofill/AutofillValue;");

  /// from: public android.view.autofill.AutofillValue getAutofillValue()
  /// The returned object must be deleted after use, by calling the `delete` method.
  autofillvalue_.AutofillValue getAutofillValue1() =>
      autofillvalue_.AutofillValue.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAutofillValue1, jni.JniType.objectType, []).object);
}

/// from: android.widget.DatePicker$OnDateChangedListener
///
/// The callback used to indicate the user changed the date.
class DatePicker_OnDateChangedListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/DatePicker\$OnDateChangedListener");
  DatePicker_OnDateChangedListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onDateChanged = jniAccessors.getMethodIDOf(
      _classRef, "onDateChanged", "(Landroid/widget/DatePicker;III)V");

  /// from: public abstract void onDateChanged(android.widget.DatePicker view, int year, int monthOfYear, int dayOfMonth)
  ///
  /// Called upon a date change.
  ///@param view The view associated with this listener.
  ///@param year The year that was set.
  ///@param monthOfYear The month that was set (0-11) for compatibility
  ///            with java.util.Calendar.
  ///@param dayOfMonth The day of the month that was set.
  void onDateChanged(
          DatePicker view, int year, int monthOfYear, int dayOfMonth) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onDateChanged,
          jni.JniType.voidType,
          [view.reference, year, monthOfYear, dayOfMonth]).check();
}
