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

import "Preference.dart" as preference_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../content/res/TypedArray.dart" as typedarray_;

import "../os/Parcelable.dart" as parcelable_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.preference.TwoStatePreference
///
/// Common base class for preferences that have two selectable states, persist a
/// boolean value in SharedPreferences, and may have dependent preferences that are
/// enabled/disabled based on the current state.
class TwoStatePreference extends preference_.Preference {
  static final _classRef =
      jniAccessors.getClassOf("android/preference/TwoStatePreference");
  TwoStatePreference.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TwoStatePreference(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TwoStatePreference.ctor1(context_.Context context,
      attributeset_.AttributeSet attrs, int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TwoStatePreference.ctor2(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [context.reference, attrs.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TwoStatePreference.ctor3(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [context.reference]).object);

  static final _id_onClick =
      jniAccessors.getMethodIDOf(_classRef, "onClick", "()V");

  /// from: protected void onClick()
  void onClick() => jniAccessors.callMethodWithArgs(
      reference, _id_onClick, jni.JniType.voidType, []).check();

  static final _id_setChecked =
      jniAccessors.getMethodIDOf(_classRef, "setChecked", "(Z)V");

  /// from: public void setChecked(boolean checked)
  ///
  /// Sets the checked state and saves it to the SharedPreferences.
  ///@param checked The checked state.
  void setChecked(bool checked) => jniAccessors.callMethodWithArgs(
      reference, _id_setChecked, jni.JniType.voidType, [checked]).check();

  static final _id_isChecked =
      jniAccessors.getMethodIDOf(_classRef, "isChecked", "()Z");

  /// from: public boolean isChecked()
  ///
  /// Returns the checked state.
  ///@return The checked state.
  bool isChecked() => jniAccessors.callMethodWithArgs(
      reference, _id_isChecked, jni.JniType.booleanType, []).boolean;

  static final _id_shouldDisableDependents =
      jniAccessors.getMethodIDOf(_classRef, "shouldDisableDependents", "()Z");

  /// from: public boolean shouldDisableDependents()
  bool shouldDisableDependents() => jniAccessors.callMethodWithArgs(reference,
      _id_shouldDisableDependents, jni.JniType.booleanType, []).boolean;

  static final _id_setSummaryOn = jniAccessors.getMethodIDOf(
      _classRef, "setSummaryOn", "(Ljava/lang/CharSequence;)V");

  /// from: public void setSummaryOn(java.lang.CharSequence summary)
  ///
  /// Sets the summary to be shown when checked.
  ///@param summary The summary to be shown when checked.
  void setSummaryOn(jni.JniObject summary) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setSummaryOn,
      jni.JniType.voidType,
      [summary.reference]).check();

  static final _id_setSummaryOn1 =
      jniAccessors.getMethodIDOf(_classRef, "setSummaryOn", "(I)V");

  /// from: public void setSummaryOn(int summaryResId)
  ///
  /// @see \#setSummaryOn(CharSequence)
  ///@param summaryResId The summary as a resource.
  void setSummaryOn1(int summaryResId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setSummaryOn1,
      jni.JniType.voidType,
      [summaryResId]).check();

  static final _id_getSummaryOn = jniAccessors.getMethodIDOf(
      _classRef, "getSummaryOn", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getSummaryOn()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the summary to be shown when checked.
  ///@return The summary.
  jni.JniObject getSummaryOn() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSummaryOn, jni.JniType.objectType, []).object);

  static final _id_setSummaryOff = jniAccessors.getMethodIDOf(
      _classRef, "setSummaryOff", "(Ljava/lang/CharSequence;)V");

  /// from: public void setSummaryOff(java.lang.CharSequence summary)
  ///
  /// Sets the summary to be shown when unchecked.
  ///@param summary The summary to be shown when unchecked.
  void setSummaryOff(jni.JniObject summary) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setSummaryOff,
      jni.JniType.voidType,
      [summary.reference]).check();

  static final _id_setSummaryOff1 =
      jniAccessors.getMethodIDOf(_classRef, "setSummaryOff", "(I)V");

  /// from: public void setSummaryOff(int summaryResId)
  ///
  /// @see \#setSummaryOff(CharSequence)
  ///@param summaryResId The summary as a resource.
  void setSummaryOff1(int summaryResId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setSummaryOff1,
      jni.JniType.voidType,
      [summaryResId]).check();

  static final _id_getSummaryOff = jniAccessors.getMethodIDOf(
      _classRef, "getSummaryOff", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getSummaryOff()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the summary to be shown when unchecked.
  ///@return The summary.
  jni.JniObject getSummaryOff() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSummaryOff, jni.JniType.objectType, []).object);

  static final _id_getDisableDependentsState =
      jniAccessors.getMethodIDOf(_classRef, "getDisableDependentsState", "()Z");

  /// from: public boolean getDisableDependentsState()
  ///
  /// Returns whether dependents are disabled when this preference is on ({@code true})
  /// or when this preference is off ({@code false}).
  ///@return Whether dependents are disabled when this preference is on ({@code true})
  ///         or when this preference is off ({@code false}).
  bool getDisableDependentsState() => jniAccessors.callMethodWithArgs(reference,
      _id_getDisableDependentsState, jni.JniType.booleanType, []).boolean;

  static final _id_setDisableDependentsState = jniAccessors.getMethodIDOf(
      _classRef, "setDisableDependentsState", "(Z)V");

  /// from: public void setDisableDependentsState(boolean disableDependentsState)
  ///
  /// Sets whether dependents are disabled when this preference is on ({@code true})
  /// or when this preference is off ({@code false}).
  ///@param disableDependentsState The preference state that should disable dependents.
  void setDisableDependentsState(bool disableDependentsState) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDisableDependentsState,
          jni.JniType.voidType, [disableDependentsState]).check();

  static final _id_onGetDefaultValue = jniAccessors.getMethodIDOf(
      _classRef,
      "onGetDefaultValue",
      "(Landroid/content/res/TypedArray;I)Ljava/lang/Object;");

  /// from: protected java.lang.Object onGetDefaultValue(android.content.res.TypedArray a, int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject onGetDefaultValue(typedarray_.TypedArray a, int index) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_onGetDefaultValue,
          jni.JniType.objectType,
          [a.reference, index]).object);

  static final _id_onSetInitialValue = jniAccessors.getMethodIDOf(
      _classRef, "onSetInitialValue", "(ZLjava/lang/Object;)V");

  /// from: protected void onSetInitialValue(boolean restoreValue, java.lang.Object defaultValue)
  void onSetInitialValue(bool restoreValue, jni.JniObject defaultValue) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSetInitialValue,
          jni.JniType.voidType, [restoreValue, defaultValue.reference]).check();

  static final _id_onSaveInstanceState = jniAccessors.getMethodIDOf(
      _classRef, "onSaveInstanceState", "()Landroid/os/Parcelable;");

  /// from: protected android.os.Parcelable onSaveInstanceState()
  /// The returned object must be deleted after use, by calling the `delete` method.
  parcelable_.Parcelable onSaveInstanceState() =>
      parcelable_.Parcelable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onSaveInstanceState, jni.JniType.objectType, []).object);

  static final _id_onRestoreInstanceState = jniAccessors.getMethodIDOf(
      _classRef, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V");

  /// from: protected void onRestoreInstanceState(android.os.Parcelable state)
  void onRestoreInstanceState(parcelable_.Parcelable state) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRestoreInstanceState,
          jni.JniType.voidType, [state.reference]).check();
}
