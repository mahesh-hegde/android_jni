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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.util.DateInterval
///
/// This class represents date interval.
/// It is a pair of long representing from date 1 to date 2.
class DateInterval extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/util/DateInterval");
  DateInterval.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(JJ)V");

  /// from: public void <init>(long from, long to)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor given from date and to date.
  ///@param from The from date in date interval.
  ///@param to The to date in date interval.
  DateInterval(int from, int to)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [from, to]).object);

  static final _id_getFromDate =
      jniAccessors.getMethodIDOf(_classRef, "getFromDate", "()J");

  /// from: public long getFromDate()
  ///
  /// Get the from date.
  ///@return the from date in dateInterval.
  int getFromDate() => jniAccessors.callMethodWithArgs(
      reference, _id_getFromDate, jni.JniType.longType, []).long;

  static final _id_getToDate =
      jniAccessors.getMethodIDOf(_classRef, "getToDate", "()J");

  /// from: public long getToDate()
  ///
  /// Get the to date.
  ///@return the to date in dateInterval.
  int getToDate() => jniAccessors.callMethodWithArgs(
      reference, _id_getToDate, jni.JniType.longType, []).long;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object a)
  ///
  /// Override equals
  bool equals1(jni.JniObject a) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [a.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// Override hashcode
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Override toString
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
