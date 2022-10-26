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

import "MetricAffectingSpan.dart" as metricaffectingspan_;

import "../../graphics/Typeface.dart" as typeface_;

import "../../os/Parcel.dart" as parcel_;

import "../TextPaint.dart" as textpaint_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.TypefaceSpan
///
/// Span that updates the typeface of the text it's attached to. The <code>TypefaceSpan</code> can
/// be constructed either based on a font family or based on a <code>Typeface</code>. When
/// \#TypefaceSpan(String) is used, the previous style of the <code>TextView</code> is kept.
/// When \#TypefaceSpan(Typeface) is used, the <code>Typeface</code> style replaces the
/// <code>TextView</code>'s style.
///
/// For example, let's consider a <code>TextView</code> with
/// <code>android:textStyle="italic"</code> and a typeface created based on a font from resources,
/// with a bold style. When applying a <code>TypefaceSpan</code> based the typeface, the text will
/// only keep the bold style, overriding the <code>TextView</code>'s textStyle. When applying a
/// <code>TypefaceSpan</code> based on a font family: "monospace", the resulted text will keep the
/// italic style.
/// <pre>
/// Typeface myTypeface = Typeface.create(ResourcesCompat.getFont(context, R.font.acme),
/// Typeface.BOLD);
/// SpannableString string = new SpannableString("Text with typeface span.");
/// string.setSpan(new TypefaceSpan(myTypeface), 10, 18, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
/// string.setSpan(new TypefaceSpan("monospace"), 19, 22, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
/// </pre>
/// <img src="{@docRoot}reference/android/images/text/style/typefacespan.png"/>
/// <figcaption>Text with <code>TypefaceSpan</code>s constructed based on a font from resource and
/// from a font family.</figcaption>
class TypefaceSpan extends metricaffectingspan_.MetricAffectingSpan {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/TypefaceSpan");
  TypefaceSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String family)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a TypefaceSpan based on the font family. The previous style of the
  /// TextPaint is kept. If the font family is null, the text paint is not modified.
  ///@param family The font family for this typeface.  Examples include
  ///               "monospace", "serif", and "sans-serif"
  ///
  /// This value may be {@code null}.
  TypefaceSpan.ctor1(jni.JniString family)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [family.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/Typeface;)V");

  /// from: public void <init>(android.graphics.Typeface typeface)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a TypefaceSpan from a Typeface. The previous style of the
  /// TextPaint is overridden and the style of the typeface is used.
  ///@param typeface the typeface
  ///
  /// This value must never be {@code null}.
  TypefaceSpan.ctor2(typeface_.Typeface typeface)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [typeface.reference]).object);

  static final _id_ctor3 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel src)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a TypefaceSpan from a  parcel.
  ///@param src This value must never be {@code null}.
  TypefaceSpan.ctor3(parcel_.Parcel src)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [src.reference]).object);

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
  ///
  /// @param dest This value must never be {@code null}.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_getFamily = jniAccessors.getMethodIDOf(
      _classRef, "getFamily", "()Ljava/lang/String;");

  /// from: public java.lang.String getFamily()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the font family name set in the span.
  ///@return the font family name
  /// This value may be {@code null}.
  ///@see \#TypefaceSpan(String)
  jni.JniString getFamily() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFamily, jni.JniType.objectType, []).object);

  static final _id_getTypeface = jniAccessors.getMethodIDOf(
      _classRef, "getTypeface", "()Landroid/graphics/Typeface;");

  /// from: public android.graphics.Typeface getTypeface()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the typeface set in the span.
  ///@return the typeface set
  /// This value may be {@code null}.
  ///@see \#TypefaceSpan(Typeface)
  typeface_.Typeface getTypeface() =>
      typeface_.Typeface.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTypeface, jni.JniType.objectType, []).object);

  static final _id_updateDrawState1 = jniAccessors.getMethodIDOf(
      _classRef, "updateDrawState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateDrawState(android.text.TextPaint ds)
  ///
  /// @param ds This value must never be {@code null}.
  void updateDrawState1(textpaint_.TextPaint ds) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateDrawState1,
          jni.JniType.voidType, [ds.reference]).check();

  static final _id_updateMeasureState = jniAccessors.getMethodIDOf(
      _classRef, "updateMeasureState", "(Landroid/text/TextPaint;)V");

  /// from: public void updateMeasureState(android.text.TextPaint paint)
  ///
  /// @param paint This value must never be {@code null}.
  void updateMeasureState(textpaint_.TextPaint paint) =>
      jniAccessors.callMethodWithArgs(reference, _id_updateMeasureState,
          jni.JniType.voidType, [paint.reference]).check();
}
