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

import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.hardware.camera2.params.OisSample
///
/// Immutable class to store an
/// CaptureResult\#STATISTICS_OIS_SAMPLES optical image stabilization sample.
class OisSample extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/hardware/camera2/params/OisSample");
  OisSample.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(JFF)V");

  /// from: public void <init>(long timestamp, float xShift, float yShift)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new OisSample.
  ///
  /// OisSample contains the timestamp and the amount of shifts in x and y direction,
  /// in pixels, of the OIS sample.
  ///
  /// A positive value for a shift in x direction is a shift from left to right in active array
  /// coordinate system. For example, if the optical center is {@code (1000, 500)} in active array
  /// coordinates, a shift of {@code (3, 0)} puts the new optical center at {@code (1003, 500)}.
  ///
  ///
  ///
  /// A positive value for a shift in y direction is a shift from top to bottom in active array
  /// coordinate system. For example, if the optical center is {@code (1000, 500)} in active array
  /// coordinates, a shift of {@code (0, 5)} puts the new optical center at {@code (1000, 505)}.
  ///
  ///
  ///
  /// xShift and yShift must be finite; NaN and infinity is not allowed.
  ///
  ///@param timestamp timestamp of the OIS sample.
  ///@param xShift shift of the OIS sample in x direction.
  ///@param yShift shift of the OIS sample in y direction.
  ///@throws IllegalArgumentException if xShift or yShift is not finite
  OisSample(int timestamp, double xShift, double yShift)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [timestamp, xShift, yShift]).object);

  static final _id_getTimestamp =
      jniAccessors.getMethodIDOf(_classRef, "getTimestamp", "()J");

  /// from: public long getTimestamp()
  ///
  /// Get the timestamp in nanoseconds.
  ///
  ///The timestamps are in the same timebase as and comparable to
  ///CaptureResult\#SENSOR_TIMESTAMP android.sensor.timestamp.
  ///
  ///@return a long value (guaranteed to be finite)
  int getTimestamp() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimestamp, jni.JniType.longType, []).long;

  static final _id_getXshift =
      jniAccessors.getMethodIDOf(_classRef, "getXshift", "()F");

  /// from: public float getXshift()
  ///
  /// Get the shift in x direction.
  ///@return a floating point value (guaranteed to be finite)
  double getXshift() => jniAccessors.callMethodWithArgs(
      reference, _id_getXshift, jni.JniType.floatType, []).float;

  static final _id_getYshift =
      jniAccessors.getMethodIDOf(_classRef, "getYshift", "()F");

  /// from: public float getYshift()
  ///
  /// Get the shift in y direction.
  ///@return a floating point value (guaranteed to be finite)
  double getYshift() => jniAccessors.callMethodWithArgs(
      reference, _id_getYshift, jni.JniType.floatType, []).float;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  ///
  /// Check if this OisSample is equal to another OisSample.
  ///
  /// Two samples are only equal if and only if each of the OIS information is equal.
  ///
  ///@return {@code true} if the objects were equal, {@code false} otherwise
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// {@inheritDoc}
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the OisSample as a string representation.
  ///
  ///  {@code "OisSample{timestamp:%l, shift_x:%f, shift_y:%f}"} represents the OIS sample's
  /// timestamp, shift in x direction, and shift in y direction.
  ///
  ///@return string representation of OisSample
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}