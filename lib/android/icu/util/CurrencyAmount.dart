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

import "Measure.dart" as measure_;

import "Currency.dart" as currency_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.util.CurrencyAmount
///
/// An amount of currency, consisting of a Number and a Currency.
/// CurrencyAmount objects are immutable.
///@see java.lang.Number
///@see Currency
///@author Alan Liu
class CurrencyAmount extends measure_.Measure {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/util/CurrencyAmount");
  CurrencyAmount.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/Number;Landroid/icu/util/Currency;)V");

  /// from: public void <init>(java.lang.Number number, android.icu.util.Currency currency)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new object given a number and a currency.
  ///@param number the number
  ///@param currency the currency
  CurrencyAmount.ctor1(jni.JniObject number, currency_.Currency currency)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [number.reference, currency.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(DLandroid/icu/util/Currency;)V");

  /// from: public void <init>(double number, android.icu.util.Currency currency)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new object given a double value and a currency.
  ///@param number a double value
  ///@param currency the currency
  CurrencyAmount.ctor2(double number, currency_.Currency currency)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [number, currency.reference]).object);

  static final _id_getCurrency = jniAccessors.getMethodIDOf(
      _classRef, "getCurrency", "()Landroid/icu/util/Currency;");

  /// from: public android.icu.util.Currency getCurrency()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the currency of this object.
  ///@return this object's Currency
  currency_.Currency getCurrency() =>
      currency_.Currency.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCurrency, jni.JniType.objectType, []).object);
}
