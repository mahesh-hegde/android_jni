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

import "../os/Parcelable.dart" as parcelable_;

import "../view/ViewStructure.dart" as viewstructure_;

import "../view/autofill/AutofillValue.dart" as autofillvalue_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.TimePicker
///
/// A widget for selecting the time of day, in either 24-hour or AM/PM mode.
///
/// For a dialog using this view, see android.app.TimePickerDialog. See
/// the <a href="{@docRoot}guide/topics/ui/controls/pickers.html">Pickers</a>
/// guide for more information.
///@attr ref android.R.styleable\#TimePicker_timePickerMode
class TimePicker extends framelayout_.FrameLayout {
  static final _classRef = jniAccessors.getClassOf("android/widget/TimePicker");
  TimePicker.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TimePicker(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TimePicker.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TimePicker.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TimePicker.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_setHour =
      jniAccessors.getMethodIDOf(_classRef, "setHour", "(I)V");

  /// from: public void setHour(int hour)
  ///
  /// Sets the currently selected hour using 24-hour time.
  ///@param hour the hour to set, in the range (0-23)
  /// Value is between 0 and 23 inclusive
  ///@see \#getHour()
  void setHour(int hour) => jniAccessors.callMethodWithArgs(
      reference, _id_setHour, jni.JniType.voidType, [hour]).check();

  static final _id_getHour =
      jniAccessors.getMethodIDOf(_classRef, "getHour", "()I");

  /// from: public int getHour()
  ///
  /// Returns the currently selected hour using 24-hour time.
  ///@return the currently selected hour, in the range (0-23)
  ///@see \#setHour(int)
  int getHour() => jniAccessors.callMethodWithArgs(
      reference, _id_getHour, jni.JniType.intType, []).integer;

  static final _id_setMinute =
      jniAccessors.getMethodIDOf(_classRef, "setMinute", "(I)V");

  /// from: public void setMinute(int minute)
  ///
  /// Sets the currently selected minute.
  ///@param minute the minute to set, in the range (0-59)
  /// Value is between 0 and 59 inclusive
  ///@see \#getMinute()
  void setMinute(int minute) => jniAccessors.callMethodWithArgs(
      reference, _id_setMinute, jni.JniType.voidType, [minute]).check();

  static final _id_getMinute =
      jniAccessors.getMethodIDOf(_classRef, "getMinute", "()I");

  /// from: public int getMinute()
  ///
  /// Returns the currently selected minute.
  ///@return the currently selected minute, in the range (0-59)
  ///@see \#setMinute(int)
  int getMinute() => jniAccessors.callMethodWithArgs(
      reference, _id_getMinute, jni.JniType.intType, []).integer;

  static final _id_setCurrentHour = jniAccessors.getMethodIDOf(
      _classRef, "setCurrentHour", "(Ljava/lang/Integer;)V");

  /// from: public void setCurrentHour(java.lang.Integer currentHour)
  ///
  /// Sets the currently selected hour using 24-hour time.
  ///@param currentHour the hour to set, in the range (0-23)
  /// This value must never be {@code null}.
  ///@deprecated Use \#setHour(int)
  void setCurrentHour(jni.JniObject currentHour) =>
      jniAccessors.callMethodWithArgs(reference, _id_setCurrentHour,
          jni.JniType.voidType, [currentHour.reference]).check();

  static final _id_getCurrentHour = jniAccessors.getMethodIDOf(
      _classRef, "getCurrentHour", "()Ljava/lang/Integer;");

  /// from: public java.lang.Integer getCurrentHour()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the currently selected hour, in the range (0-23)
  /// This value will never be {@code null}.
  ///@deprecated Use \#getHour()
  jni.JniObject getCurrentHour() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCurrentHour, jni.JniType.objectType, []).object);

  static final _id_setCurrentMinute = jniAccessors.getMethodIDOf(
      _classRef, "setCurrentMinute", "(Ljava/lang/Integer;)V");

  /// from: public void setCurrentMinute(java.lang.Integer currentMinute)
  ///
  /// Sets the currently selected minute.
  ///@param currentMinute the minute to set, in the range (0-59)
  /// This value must never be {@code null}.
  ///@deprecated Use \#setMinute(int)
  void setCurrentMinute(jni.JniObject currentMinute) =>
      jniAccessors.callMethodWithArgs(reference, _id_setCurrentMinute,
          jni.JniType.voidType, [currentMinute.reference]).check();

  static final _id_getCurrentMinute = jniAccessors.getMethodIDOf(
      _classRef, "getCurrentMinute", "()Ljava/lang/Integer;");

  /// from: public java.lang.Integer getCurrentMinute()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the currently selected minute, in the range (0-59)
  /// This value will never be {@code null}.
  ///@deprecated Use \#getMinute()
  jni.JniObject getCurrentMinute() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCurrentMinute, jni.JniType.objectType, []).object);

  static final _id_setIs24HourView = jniAccessors.getMethodIDOf(
      _classRef, "setIs24HourView", "(Ljava/lang/Boolean;)V");

  /// from: public void setIs24HourView(java.lang.Boolean is24HourView)
  ///
  /// Sets whether this widget displays time in 24-hour mode or 12-hour mode
  /// with an AM/PM picker.
  ///@param is24HourView {@code true} to display in 24-hour mode,
  ///                     {@code false} for 12-hour mode with AM/PM
  /// This value must never be {@code null}.
  ///@see \#is24HourView()
  void setIs24HourView(jni.JniObject is24HourView) =>
      jniAccessors.callMethodWithArgs(reference, _id_setIs24HourView,
          jni.JniType.voidType, [is24HourView.reference]).check();

  static final _id_is24HourView =
      jniAccessors.getMethodIDOf(_classRef, "is24HourView", "()Z");

  /// from: public boolean is24HourView()
  ///
  /// @return {@code true} if this widget displays time in 24-hour mode,
  ///         {@code false} otherwise}
  ///@see \#setIs24HourView(Boolean)
  bool is24HourView() => jniAccessors.callMethodWithArgs(
      reference, _id_is24HourView, jni.JniType.booleanType, []).boolean;

  static final _id_setOnTimeChangedListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnTimeChangedListener",
      "(Landroid/widget/TimePicker\$OnTimeChangedListener;)V");

  /// from: public void setOnTimeChangedListener(android.widget.TimePicker.OnTimeChangedListener onTimeChangedListener)
  ///
  /// Set the callback that indicates the time has been adjusted by the user.
  ///@param onTimeChangedListener the callback, should not be null.
  void setOnTimeChangedListener(
          TimePicker_OnTimeChangedListener onTimeChangedListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnTimeChangedListener,
          jni.JniType.voidType, [onTimeChangedListener.reference]).check();

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

  static final _id_getBaseline1 =
      jniAccessors.getMethodIDOf(_classRef, "getBaseline", "()I");

  /// from: public int getBaseline()
  int getBaseline1() => jniAccessors.callMethodWithArgs(
      reference, _id_getBaseline1, jni.JniType.intType, []).integer;

  static final _id_validateInput =
      jniAccessors.getMethodIDOf(_classRef, "validateInput", "()Z");

  /// from: public boolean validateInput()
  ///
  /// Validates whether current input by the user is a valid time based on the locale. TimePicker
  /// will show an error message to the user if the time is not valid.
  ///@return {@code true} if the input is valid, {@code false} otherwise
  bool validateInput() => jniAccessors.callMethodWithArgs(
      reference, _id_validateInput, jni.JniType.booleanType, []).boolean;

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

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);

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

/// from: android.widget.TimePicker$OnTimeChangedListener
///
/// The callback interface used to indicate the time has been adjusted.
class TimePicker_OnTimeChangedListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/TimePicker\$OnTimeChangedListener");
  TimePicker_OnTimeChangedListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onTimeChanged = jniAccessors.getMethodIDOf(
      _classRef, "onTimeChanged", "(Landroid/widget/TimePicker;II)V");

  /// from: public abstract void onTimeChanged(android.widget.TimePicker view, int hourOfDay, int minute)
  ///
  /// @param view The view associated with this listener.
  ///@param hourOfDay The current hour.
  ///@param minute The current minute.
  void onTimeChanged(TimePicker view, int hourOfDay, int minute) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTimeChanged,
          jni.JniType.voidType, [view.reference, hourOfDay, minute]).check();
}
