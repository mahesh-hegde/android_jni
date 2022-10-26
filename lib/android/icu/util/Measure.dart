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

import "MeasureUnit.dart" as measureunit_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.util.Measure
///
/// An amount of a specified unit, consisting of a Number and a Unit.
/// For example, a length measure consists of a Number and a length
/// unit, such as feet or meters.
///
/// Measure objects are parsed and formatted by subclasses of
/// MeasureFormat.
///
/// Measure objects are immutable. All subclasses must guarantee that.
/// (However, subclassing is discouraged.)
///@see java.lang.Number
///@see android.icu.util.MeasureUnit
///@see android.icu.text.MeasureFormat
///@author Alan Liu
class Measure extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/icu/util/Measure");
  Measure.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V");

  /// from: public void <init>(java.lang.Number number, android.icu.util.MeasureUnit unit)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new object given a number and a unit.
  ///@param number the number
  ///@param unit the unit
  Measure(jni.JniObject number, measureunit_.MeasureUnit unit)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [number.reference, unit.reference]).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  ///
  /// Returns true if the given object is equal to this object.
  ///@return true if this object is equal to the given object
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// Returns a hashcode for this object.
  ///@return a 32-bit hash
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a string representation of this object.
  ///@return a string representation consisting of the ISO currency
  /// code together with the numeric amount
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_getNumber = jniAccessors.getMethodIDOf(
      _classRef, "getNumber", "()Ljava/lang/Number;");

  /// from: public java.lang.Number getNumber()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the numeric value of this object.
  ///@return this object's Number
  jni.JniObject getNumber() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getNumber, jni.JniType.objectType, []).object);

  static final _id_getUnit = jniAccessors.getMethodIDOf(
      _classRef, "getUnit", "()Landroid/icu/util/MeasureUnit;");

  /// from: public android.icu.util.MeasureUnit getUnit()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the unit of this object.
  ///@return this object's Unit
  measureunit_.MeasureUnit getUnit() =>
      measureunit_.MeasureUnit.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUnit, jni.JniType.objectType, []).object);
}