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

import "MetricAffectingSpan.dart" as metricaffectingspan_;

import "../../os/LocaleList.dart" as localelist_;

import "../../os/Parcel.dart" as parcel_;

import "../TextPaint.dart" as textpaint_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.LocaleSpan
///
/// Changes the Locale of the text to which the span is attached.
class LocaleSpan extends metricaffectingspan_.MetricAffectingSpan {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/LocaleSpan");
  LocaleSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/Locale;)V");

  /// from: public void <init>(java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a LocaleSpan from a well-formed Locale.  Note that only
  /// Locale objects that can be created by Locale\#forLanguageTag(String) are
  /// supported.
  ///
  /// __Caveat:__ Do not specify any Locale object that cannot be created by
  /// Locale\#forLanguageTag(String).  {@code new Locale(" a ", " b c", " d")} is an
  /// example of such a malformed Locale object.
  ///
  ///@param locale The Locale of the text to which the span is attached.
  ///
  /// This value may be {@code null}.
  ///@see \#LocaleSpan(LocaleList)
  LocaleSpan.ctor1(jni.JniObject locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [locale.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/os/LocaleList;)V");

  /// from: public void <init>(android.os.LocaleList locales)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a LocaleSpan from LocaleList.
  ///@param locales The LocaleList of the text to which the span is attached.
  /// This value must never be {@code null}.
  ///@throws NullPointerException if {@code locales} is null
  LocaleSpan.ctor2(localelist_.LocaleList locales)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [locales.reference]).object);

  static final _id_ctor3 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  LocaleSpan.ctor3(parcel_.Parcel source)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [source.reference]).object);

  static final _id_getSpanTypeId =
      jniAccessors.getMethodIDOf(_classRef, "getSpanTypeId", "()I");

  /// from: public int getSpanTypeId()
  int getSpanTypeId() => jniAccessors.callMethodWithArgs(
      reference, _id_getSpanTypeId, jni.JniType.intType, []).integer;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_getLocale = jniAccessors.getMethodIDOf(
      _classRef, "getLocale", "()Ljava/util/Locale;");

  /// from: public java.util.Locale getLocale()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The Locale for this span.  If multiple locales are associated with this
  /// span, only the first locale is returned.  {@code null} if no Locale is specified.
  ///@see LocaleList\#get()
  ///@see \#getLocales()
  jni.JniObject getLocale() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocale, jni.JniType.objectType, []).object);

  static final _id_getLocales = jniAccessors.getMethodIDOf(
      _classRef, "getLocales", "()Landroid/os/LocaleList;");

  /// from: public android.os.LocaleList getLocales()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The entire list of locales that are associated with this span.
  ///
  /// This value will never be {@code null}.
  localelist_.LocaleList getLocales() =>
      localelist_.LocaleList.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocales, jni.JniType.objectType, []).object);

  static final _id_updateDrawState1 = jniAccessors.getMethodIDOf(
      _classRef, "updateDrawState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateDrawState(android.text.TextPaint ds)
  void updateDrawState1(textpaint_.TextPaint ds) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateDrawState1,
          jni.JniType.voidType, [ds.reference]).check();

  static final _id_updateMeasureState = jniAccessors.getMethodIDOf(
      _classRef, "updateMeasureState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateMeasureState(android.text.TextPaint paint)
  void updateMeasureState(textpaint_.TextPaint paint) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateMeasureState,
          jni.JniType.voidType, [paint.reference]).check();
}
