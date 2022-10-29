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

import "CharacterStyle.dart" as characterstyle_;

import "../../os/Parcelable.dart" as parcelable_;

import "../../content/Context.dart" as context_;

import "../../os/Parcel.dart" as parcel_;

import "../TextPaint.dart" as textpaint_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.SuggestionSpan
///
/// Holds suggestion candidates for the text enclosed in this span.
///
/// When such a span is edited in an EditText, double tapping on the text enclosed in this span will
/// display a popup dialog listing suggestion replacement for that text. The user can then replace
/// the original text by one of the suggestions.
///
/// These spans should typically be created by the input method to provide correction and alternates
/// for the text.
///@see TextView\#isSuggestionsEnabled()
class SuggestionSpan extends characterstyle_.CharacterStyle {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/SuggestionSpan");
  SuggestionSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_SUGGESTION_PICKED
  static const ACTION_SUGGESTION_PICKED =
      "android.text.style.SUGGESTION_PICKED";

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.text.style.SuggestionSpan> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int FLAG_AUTO_CORRECTION
  ///
  /// Sets this flag if the auto correction is about to be applied to a word/text
  /// that the user is typing/composing. This type of suggestion is rendered differently
  /// to indicate the auto correction is happening.
  static const FLAG_AUTO_CORRECTION = 4;

  /// from: static public final int FLAG_EASY_CORRECT
  ///
  /// Sets this flag if the suggestions should be easily accessible with few interactions.
  /// This flag should be set for every suggestions that the user is likely to use.
  static const FLAG_EASY_CORRECT = 1;

  /// from: static public final int FLAG_MISSPELLED
  ///
  /// Sets this flag if the suggestions apply to a misspelled word/text. This type of suggestion is
  /// rendered differently to highlight the error.
  static const FLAG_MISSPELLED = 2;

  /// from: static public final int SUGGESTIONS_MAX_SIZE
  static const SUGGESTIONS_MAX_SIZE = 5;

  /// from: static public final java.lang.String SUGGESTION_SPAN_PICKED_AFTER
  static const SUGGESTION_SPAN_PICKED_AFTER = "after";

  /// from: static public final java.lang.String SUGGESTION_SPAN_PICKED_BEFORE
  static const SUGGESTION_SPAN_PICKED_BEFORE = "before";

  /// from: static public final java.lang.String SUGGESTION_SPAN_PICKED_HASHCODE
  static const SUGGESTION_SPAN_PICKED_HASHCODE = "hashcode";

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;[Ljava/lang/String;I)V");

  /// from: public void <init>(android.content.Context context, java.lang.String[] suggestions, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param context Context for the application
  ///@param suggestions Suggestions for the string under the span
  ///@param flags Additional flags indicating how this span is handled in TextView
  SuggestionSpan.ctor1(
      context_.Context context, jni.JniObject suggestions, int flags)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [context.reference, suggestions.reference, flags]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/util/Locale;[Ljava/lang/String;I)V");

  /// from: public void <init>(java.util.Locale locale, java.lang.String[] suggestions, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param locale Locale of the suggestions
  ///@param suggestions Suggestions for the string under the span
  ///@param flags Additional flags indicating how this span is handled in TextView
  SuggestionSpan.ctor2(
      jni.JniObject locale, jni.JniObject suggestions, int flags)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [locale.reference, suggestions.reference, flags]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V");

  /// from: public void <init>(android.content.Context context, java.util.Locale locale, java.lang.String[] suggestions, int flags, java.lang.Class<?> notificationTargetClass)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param context Context for the application
  ///@param locale locale Locale of the suggestions
  ///@param suggestions Suggestions for the string under the span. Only the first up to
  /// SuggestionSpan\#SUGGESTIONS_MAX_SIZE will be considered. Null values not permitted.
  ///@param flags Additional flags indicating how this span is handled in TextView
  ///@param notificationTargetClass if not null, this class will get notified when the user
  /// selects one of the suggestions.
  SuggestionSpan.ctor3(
      context_.Context context,
      jni.JniObject locale,
      jni.JniObject suggestions,
      int flags,
      jni.JniObject notificationTargetClass)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          locale.reference,
          suggestions.reference,
          flags,
          notificationTargetClass.reference
        ]).object);

  static final _id_ctor4 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel src)
  /// The returned object must be deleted after use, by calling the `delete` method.
  SuggestionSpan.ctor4(parcel_.Parcel src)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor4, [src.reference]).object);

  static final _id_getSuggestions = jniAccessors.getMethodIDOf(
      _classRef, "getSuggestions", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getSuggestions()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return an array of suggestion texts for this span
  jni.JniObject getSuggestions() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSuggestions, jni.JniType.objectType, []).object);

  static final _id_getLocale = jniAccessors.getMethodIDOf(
      _classRef, "getLocale", "()Ljava/lang/String;");

  /// from: public java.lang.String getLocale()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated use \#getLocaleObject() instead.
  ///@return the locale of the suggestions. An empty string is returned if no locale is specified.
  ///
  /// This value will never be {@code null}.
  jni.JniString getLocale() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocale, jni.JniType.objectType, []).object);

  static final _id_getLocaleObject = jniAccessors.getMethodIDOf(
      _classRef, "getLocaleObject", "()Ljava/util/Locale;");

  /// from: public java.util.Locale getLocaleObject()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a well-formed BCP 47 language tag representation of the suggestions, as a
  /// Locale object.
  ///
  /// __Caveat__: The returned object is guaranteed to be a  a well-formed BCP 47 language tag
  /// representation.  For example, this method can return an empty locale rather than returning a
  /// malformed data when this object is initialized with an malformed Locale object, e.g.
  /// {@code new Locale(" a ", " b c d ", " "}.
  ///
  ///@return the locale of the suggestions. {@code null} is returned if no locale is specified.
  jni.JniObject getLocaleObject() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocaleObject, jni.JniType.objectType, []).object);

  static final _id_getFlags =
      jniAccessors.getMethodIDOf(_classRef, "getFlags", "()I");

  /// from: public int getFlags()
  int getFlags() => jniAccessors.callMethodWithArgs(
      reference, _id_getFlags, jni.JniType.intType, []).integer;

  static final _id_setFlags =
      jniAccessors.getMethodIDOf(_classRef, "setFlags", "(I)V");

  /// from: public void setFlags(int flags)
  void setFlags(int flags) => jniAccessors.callMethodWithArgs(
      reference, _id_setFlags, jni.JniType.voidType, [flags]).check();

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

  static final _id_getSpanTypeId =
      jniAccessors.getMethodIDOf(_classRef, "getSpanTypeId", "()I");

  /// from: public int getSpanTypeId()
  int getSpanTypeId() => jniAccessors.callMethodWithArgs(
      reference, _id_getSpanTypeId, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_updateDrawState = jniAccessors.getMethodIDOf(
      _classRef, "updateDrawState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateDrawState(android.text.TextPaint tp)
  void updateDrawState(textpaint_.TextPaint tp) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateDrawState,
          jni.JniType.voidType, [tp.reference]).check();
}
