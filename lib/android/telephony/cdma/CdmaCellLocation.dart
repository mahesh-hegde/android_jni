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

import "../CellLocation.dart" as celllocation_;

import "../../os/Bundle.dart" as bundle_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.cdma.CdmaCellLocation
///
/// Represents the cell location on a CDMA phone.
class CdmaCellLocation extends celllocation_.CellLocation {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/cdma/CdmaCellLocation");
  CdmaCellLocation.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Empty constructor.
  /// Initializes the BID, SID, NID and base station latitude and longitude
  /// to invalid values.
  CdmaCellLocation()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Bundle;)V");

  /// from: public void <init>(android.os.Bundle bundle)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Initialize the object from a bundle.
  CdmaCellLocation.ctor1(bundle_.Bundle bundle)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [bundle.reference]).object);

  static final _id_getBaseStationId =
      jniAccessors.getMethodIDOf(_classRef, "getBaseStationId", "()I");

  /// from: public int getBaseStationId()
  ///
  /// @return cdma base station identification number, -1 if unknown
  int getBaseStationId() => jniAccessors.callMethodWithArgs(
      reference, _id_getBaseStationId, jni.JniType.intType, []).integer;

  static final _id_getBaseStationLatitude =
      jniAccessors.getMethodIDOf(_classRef, "getBaseStationLatitude", "()I");

  /// from: public int getBaseStationLatitude()
  ///
  /// Latitude is a decimal number as specified in 3GPP2 C.S0005-A v6.0.
  /// (http://www.3gpp2.org/public_html/specs/C.S0005-A_v6.0.pdf)
  /// It is represented in units of 0.25 seconds and ranges from -1296000
  /// to 1296000, both values inclusive (corresponding to a range of -90
  /// to +90 degrees). Integer.MAX_VALUE is considered invalid value.
  ///@return cdma base station latitude in units of 0.25 seconds, Integer.MAX_VALUE if unknown
  int getBaseStationLatitude() => jniAccessors.callMethodWithArgs(
      reference, _id_getBaseStationLatitude, jni.JniType.intType, []).integer;

  static final _id_getBaseStationLongitude =
      jniAccessors.getMethodIDOf(_classRef, "getBaseStationLongitude", "()I");

  /// from: public int getBaseStationLongitude()
  ///
  /// Longitude is a decimal number as specified in 3GPP2 C.S0005-A v6.0.
  /// (http://www.3gpp2.org/public_html/specs/C.S0005-A_v6.0.pdf)
  /// It is represented in units of 0.25 seconds and ranges from -2592000
  /// to 2592000, both values inclusive (corresponding to a range of -180
  /// to +180 degrees). Integer.MAX_VALUE is considered invalid value.
  ///@return cdma base station longitude in units of 0.25 seconds, Integer.MAX_VALUE if unknown
  int getBaseStationLongitude() => jniAccessors.callMethodWithArgs(
      reference, _id_getBaseStationLongitude, jni.JniType.intType, []).integer;

  static final _id_getSystemId =
      jniAccessors.getMethodIDOf(_classRef, "getSystemId", "()I");

  /// from: public int getSystemId()
  ///
  /// @return cdma system identification number, -1 if unknown
  int getSystemId() => jniAccessors.callMethodWithArgs(
      reference, _id_getSystemId, jni.JniType.intType, []).integer;

  static final _id_getNetworkId =
      jniAccessors.getMethodIDOf(_classRef, "getNetworkId", "()I");

  /// from: public int getNetworkId()
  ///
  /// @return cdma network identification number, -1 if unknown
  int getNetworkId() => jniAccessors.callMethodWithArgs(
      reference, _id_getNetworkId, jni.JniType.intType, []).integer;

  static final _id_setStateInvalid =
      jniAccessors.getMethodIDOf(_classRef, "setStateInvalid", "()V");

  /// from: public void setStateInvalid()
  ///
  /// Invalidate this object.  The cell location data is set to invalid values.
  void setStateInvalid() => jniAccessors.callMethodWithArgs(
      reference, _id_setStateInvalid, jni.JniType.voidType, []).check();

  static final _id_setCellLocationData =
      jniAccessors.getMethodIDOf(_classRef, "setCellLocationData", "(III)V");

  /// from: public void setCellLocationData(int baseStationId, int baseStationLatitude, int baseStationLongitude)
  ///
  /// Set the cell location data.
  void setCellLocationData(int baseStationId, int baseStationLatitude,
          int baseStationLongitude) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setCellLocationData,
          jni.JniType.voidType,
          [baseStationId, baseStationLatitude, baseStationLongitude]).check();

  static final _id_setCellLocationData1 =
      jniAccessors.getMethodIDOf(_classRef, "setCellLocationData", "(IIIII)V");

  /// from: public void setCellLocationData(int baseStationId, int baseStationLatitude, int baseStationLongitude, int systemId, int networkId)
  ///
  /// Set the cell location data.
  void setCellLocationData1(int baseStationId, int baseStationLatitude,
          int baseStationLongitude, int systemId, int networkId) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_setCellLocationData1, jni.JniType.voidType, [
        baseStationId,
        baseStationLatitude,
        baseStationLongitude,
        systemId,
        networkId
      ]).check();

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_fillInNotifierBundle = jniAccessors.getMethodIDOf(
      _classRef, "fillInNotifierBundle", "(Landroid/os/Bundle;)V");

  /// from: public void fillInNotifierBundle(android.os.Bundle bundleToFill)
  ///
  /// Fill the cell location data into the intent notifier Bundle based on service state
  ///@param bundleToFill intent notifier Bundle
  void fillInNotifierBundle(bundle_.Bundle bundleToFill) =>
      jniAccessors.callMethodWithArgs(reference, _id_fillInNotifierBundle,
          jni.JniType.voidType, [bundleToFill.reference]).check();

  static final _id_convertQuartSecToDecDegrees = jniAccessors
      .getStaticMethodIDOf(_classRef, "convertQuartSecToDecDegrees", "(I)D");

  /// from: static public double convertQuartSecToDecDegrees(int quartSec)
  ///
  /// Converts latitude or longitude from 0.25 seconds (as defined in the
  /// 3GPP2 C.S0005-A v6.0 standard) to decimal degrees
  ///@param quartSec latitude or longitude in 0.25 seconds units
  ///@return latitude or longitude in decimal degrees units
  ///@throws IllegalArgumentException if value is less than -2592000,
  ///                                  greater than 2592000, or is not a number.
  static double convertQuartSecToDecDegrees(int quartSec) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_convertQuartSecToDecDegrees,
          jni.JniType.doubleType,
          [quartSec]).doubleFloat;
}
