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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.location.GpsSatellite
///
/// This class represents the current state of a GPS satellite.
///
/// This class is used in conjunction with the GpsStatus class.
///@deprecated use GnssStatus and GnssStatus.Callback.
class GpsSatellite extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/location/GpsSatellite");
  GpsSatellite.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: void <init>(int prn)
  /// The returned object must be deleted after use, by calling the `delete` method.
  GpsSatellite(int prn)
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [prn]).object);

  static final _id_getPrn =
      jniAccessors.getMethodIDOf(_classRef, "getPrn", "()I");

  /// from: public int getPrn()
  ///
  /// Returns the PRN (pseudo-random number) for the satellite.
  ///@return PRN number
  int getPrn() => jniAccessors.callMethodWithArgs(
      reference, _id_getPrn, jni.JniType.intType, []).integer;

  static final _id_getSnr =
      jniAccessors.getMethodIDOf(_classRef, "getSnr", "()F");

  /// from: public float getSnr()
  ///
  /// Returns the signal to noise ratio for the satellite.
  ///@return the signal to noise ratio
  double getSnr() => jniAccessors.callMethodWithArgs(
      reference, _id_getSnr, jni.JniType.floatType, []).float;

  static final _id_getElevation =
      jniAccessors.getMethodIDOf(_classRef, "getElevation", "()F");

  /// from: public float getElevation()
  ///
  /// Returns the elevation of the satellite in degrees.
  /// The elevation can vary between 0 and 90.
  ///@return the elevation in degrees
  double getElevation() => jniAccessors.callMethodWithArgs(
      reference, _id_getElevation, jni.JniType.floatType, []).float;

  static final _id_getAzimuth =
      jniAccessors.getMethodIDOf(_classRef, "getAzimuth", "()F");

  /// from: public float getAzimuth()
  ///
  /// Returns the azimuth of the satellite in degrees.
  /// The azimuth can vary between 0 and 360.
  ///@return the azimuth in degrees
  double getAzimuth() => jniAccessors.callMethodWithArgs(
      reference, _id_getAzimuth, jni.JniType.floatType, []).float;

  static final _id_hasEphemeris =
      jniAccessors.getMethodIDOf(_classRef, "hasEphemeris", "()Z");

  /// from: public boolean hasEphemeris()
  ///
  /// Returns true if the GPS engine has ephemeris data for the satellite.
  ///@return true if the satellite has ephemeris data
  bool hasEphemeris() => jniAccessors.callMethodWithArgs(
      reference, _id_hasEphemeris, jni.JniType.booleanType, []).boolean;

  static final _id_hasAlmanac =
      jniAccessors.getMethodIDOf(_classRef, "hasAlmanac", "()Z");

  /// from: public boolean hasAlmanac()
  ///
  /// Returns true if the GPS engine has almanac data for the satellite.
  ///@return true if the satellite has almanac data
  bool hasAlmanac() => jniAccessors.callMethodWithArgs(
      reference, _id_hasAlmanac, jni.JniType.booleanType, []).boolean;

  static final _id_usedInFix =
      jniAccessors.getMethodIDOf(_classRef, "usedInFix", "()Z");

  /// from: public boolean usedInFix()
  ///
  /// Returns true if the satellite was used by the GPS engine when
  /// calculating the most recent GPS fix.
  ///@return true if the satellite was used to compute the most recent fix.
  bool usedInFix() => jniAccessors.callMethodWithArgs(
      reference, _id_usedInFix, jni.JniType.booleanType, []).boolean;
}
