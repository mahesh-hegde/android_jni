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

import "../util/ULocale.dart" as ulocale_;

import "DecimalFormat.dart" as decimalformat_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.ScientificNumberFormatter
///
/// A formatter that formats numbers in user-friendly scientific notation.
///
/// ScientificNumberFormatter instances are immutable and thread-safe.
///
/// Sample code:
/// <pre>
/// ULocale en = new ULocale("en");
/// ScientificNumberFormatter fmt = ScientificNumberFormatter.getMarkupInstance(
///         en, "&lt;sup&gt;", "&lt;/sup&gt;");
/// </pre>
/// <pre>
/// // Output: "1.23456×10&lt;sup&gt;-78&lt;/sup&gt;"
/// System.out.println(fmt.format(1.23456e-78));
/// </pre>
class ScientificNumberFormatter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/ScientificNumberFormatter");
  ScientificNumberFormatter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getSuperscriptInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getSuperscriptInstance",
      "(Landroid/icu/util/ULocale;)Landroid/icu/text/ScientificNumberFormatter;");

  /// from: static public android.icu.text.ScientificNumberFormatter getSuperscriptInstance(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets a ScientificNumberFormatter instance that uses
  /// superscript characters for exponents for this locale.
  ///@param locale The locale
  ///@return The ScientificNumberFormatter instance.
  static ScientificNumberFormatter getSuperscriptInstance(
          ulocale_.ULocale locale) =>
      ScientificNumberFormatter.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getSuperscriptInstance,
          jni.JniType.objectType,
          [locale.reference]).object);

  static final _id_getSuperscriptInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getSuperscriptInstance",
      "(Landroid/icu/text/DecimalFormat;)Landroid/icu/text/ScientificNumberFormatter;");

  /// from: static public android.icu.text.ScientificNumberFormatter getSuperscriptInstance(android.icu.text.DecimalFormat df)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets a ScientificNumberFormatter instance that uses
  /// superscript characters for exponents.
  ///@param df The DecimalFormat must be configured for scientific
  ///   notation. Caller may safely change df after this call as this method
  ///   clones it when creating the ScientificNumberFormatter.
  ///@return the ScientificNumberFormatter instance.
  static ScientificNumberFormatter getSuperscriptInstance1(
          decimalformat_.DecimalFormat df) =>
      ScientificNumberFormatter.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getSuperscriptInstance1,
          jni.JniType.objectType,
          [df.reference]).object);

  static final _id_getMarkupInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getMarkupInstance",
      "(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ScientificNumberFormatter;");

  /// from: static public android.icu.text.ScientificNumberFormatter getMarkupInstance(android.icu.util.ULocale locale, java.lang.String beginMarkup, java.lang.String endMarkup)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets a ScientificNumberFormatter instance that uses
  /// markup for exponents for this locale.
  ///@param locale The locale
  ///@param beginMarkup the markup to start superscript e.g {@code <sup>}
  ///@param endMarkup the markup to end superscript e.g {@code </sup>}
  ///@return The ScientificNumberFormatter instance.
  static ScientificNumberFormatter getMarkupInstance(ulocale_.ULocale locale,
          jni.JniString beginMarkup, jni.JniString endMarkup) =>
      ScientificNumberFormatter.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getMarkupInstance, jni.JniType.objectType, [
        locale.reference,
        beginMarkup.reference,
        endMarkup.reference
      ]).object);

  static final _id_getMarkupInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getMarkupInstance",
      "(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ScientificNumberFormatter;");

  /// from: static public android.icu.text.ScientificNumberFormatter getMarkupInstance(android.icu.text.DecimalFormat df, java.lang.String beginMarkup, java.lang.String endMarkup)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets a ScientificNumberFormatter instance that uses
  /// markup for exponents.
  ///@param df The DecimalFormat must be configured for scientific
  ///   notation. Caller may safely change df after this call as this method
  ///   clones it when creating the ScientificNumberFormatter.
  ///@param beginMarkup the markup to start superscript e.g {@code <sup>}
  ///@param endMarkup the markup to end superscript e.g {@code </sup>}
  ///@return The ScientificNumberFormatter instance.
  static ScientificNumberFormatter getMarkupInstance1(
          decimalformat_.DecimalFormat df,
          jni.JniString beginMarkup,
          jni.JniString endMarkup) =>
      ScientificNumberFormatter.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getMarkupInstance1,
          jni.JniType.objectType,
          [df.reference, beginMarkup.reference, endMarkup.reference]).object);

  static final _id_format = jniAccessors.getMethodIDOf(
      _classRef, "format", "(Ljava/lang/Object;)Ljava/lang/String;");

  /// from: public java.lang.String format(java.lang.Object number)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Formats a number
  ///@param number Can be a double, int, Number or
  ///  anything that DecimalFormat\#format(Object) accepts.
  ///@return the formatted string.
  jni.JniString format(jni.JniObject number) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_format, jni.JniType.objectType, [number.reference]).object);
}
