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

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.location.Criteria
///
/// A class indicating the application criteria for selecting a
/// location provider.  Providers maybe ordered according to accuracy,
/// power usage, ability to report altitude, speed,
/// and bearing, and monetary cost.
class Criteria extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/location/Criteria");
  Criteria.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ACCURACY_COARSE
  ///
  /// A constant indicating an approximate accuracy requirement
  static const ACCURACY_COARSE = 2;

  /// from: static public final int ACCURACY_FINE
  ///
  /// A constant indicating a finer location accuracy requirement
  static const ACCURACY_FINE = 1;

  /// from: static public final int ACCURACY_HIGH
  ///
  /// a constant indicating a high accuracy requirement
  /// - may be used for horizontal, altitude, speed or bearing accuracy.
  /// For horizontal and vertical position this corresponds roughly to
  /// an accuracy of less than 100 meters.
  static const ACCURACY_HIGH = 3;

  /// from: static public final int ACCURACY_LOW
  ///
  /// A constant indicating a low location accuracy requirement
  /// - may be used for horizontal, altitude, speed or bearing accuracy.
  /// For horizontal and vertical position this corresponds roughly to
  /// an accuracy of greater than 500 meters.
  static const ACCURACY_LOW = 1;

  /// from: static public final int ACCURACY_MEDIUM
  ///
  /// A constant indicating a medium accuracy requirement
  /// - currently used only for horizontal accuracy.
  /// For horizontal position this corresponds roughly to to an accuracy
  /// of between 100 and 500 meters.
  static const ACCURACY_MEDIUM = 2;

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.location.Criteria> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int NO_REQUIREMENT
  ///
  /// A constant indicating that the application does not choose to
  /// place requirement on a particular feature.
  static const NO_REQUIREMENT = 0;

  /// from: static public final int POWER_HIGH
  ///
  /// A constant indicating a high power requirement.
  static const POWER_HIGH = 3;

  /// from: static public final int POWER_LOW
  ///
  /// A constant indicating a low power requirement.
  static const POWER_LOW = 1;

  /// from: static public final int POWER_MEDIUM
  ///
  /// A constant indicating a medium power requirement.
  static const POWER_MEDIUM = 2;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new Criteria object.  The new object will have no
  /// requirements on accuracy, power, or response time; will not
  /// require altitude, speed, or bearing; and will not allow monetary
  /// cost.
  Criteria()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/location/Criteria;)V");

  /// from: public void <init>(android.location.Criteria criteria)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new Criteria object that is a copy of the given criteria.
  Criteria.ctor1(Criteria criteria)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [criteria.reference]).object);

  static final _id_setHorizontalAccuracy =
      jniAccessors.getMethodIDOf(_classRef, "setHorizontalAccuracy", "(I)V");

  /// from: public void setHorizontalAccuracy(int accuracy)
  ///
  /// Indicates the desired horizontal accuracy (latitude and longitude).
  /// Accuracy may be \#ACCURACY_LOW, \#ACCURACY_MEDIUM,
  /// \#ACCURACY_HIGH or \#NO_REQUIREMENT.
  /// More accurate location may consume more power and may take longer.
  ///@throws IllegalArgumentException if accuracy is not one of the supported constants
  void setHorizontalAccuracy(int accuracy) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setHorizontalAccuracy,
      jni.JniType.voidType,
      [accuracy]).check();

  static final _id_getHorizontalAccuracy =
      jniAccessors.getMethodIDOf(_classRef, "getHorizontalAccuracy", "()I");

  /// from: public int getHorizontalAccuracy()
  ///
  /// Returns a constant indicating the desired horizontal accuracy (latitude and longitude).
  /// Accuracy may be \#ACCURACY_LOW, \#ACCURACY_MEDIUM,
  /// \#ACCURACY_HIGH or \#NO_REQUIREMENT.
  int getHorizontalAccuracy() => jniAccessors.callMethodWithArgs(
      reference, _id_getHorizontalAccuracy, jni.JniType.intType, []).integer;

  static final _id_setVerticalAccuracy =
      jniAccessors.getMethodIDOf(_classRef, "setVerticalAccuracy", "(I)V");

  /// from: public void setVerticalAccuracy(int accuracy)
  ///
  /// Indicates the desired vertical accuracy (altitude).
  /// Accuracy may be \#ACCURACY_LOW, \#ACCURACY_MEDIUM,
  /// \#ACCURACY_HIGH or \#NO_REQUIREMENT.
  /// More accurate location may consume more power and may take longer.
  ///@throws IllegalArgumentException if accuracy is not one of the supported constants
  void setVerticalAccuracy(int accuracy) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setVerticalAccuracy,
      jni.JniType.voidType,
      [accuracy]).check();

  static final _id_getVerticalAccuracy =
      jniAccessors.getMethodIDOf(_classRef, "getVerticalAccuracy", "()I");

  /// from: public int getVerticalAccuracy()
  ///
  /// Returns a constant indicating the desired vertical accuracy (altitude).
  /// Accuracy may be \#ACCURACY_LOW, \#ACCURACY_HIGH,
  /// or \#NO_REQUIREMENT.
  int getVerticalAccuracy() => jniAccessors.callMethodWithArgs(
      reference, _id_getVerticalAccuracy, jni.JniType.intType, []).integer;

  static final _id_setSpeedAccuracy =
      jniAccessors.getMethodIDOf(_classRef, "setSpeedAccuracy", "(I)V");

  /// from: public void setSpeedAccuracy(int accuracy)
  ///
  /// Indicates the desired speed accuracy.
  /// Accuracy may be \#ACCURACY_LOW, \#ACCURACY_HIGH,
  /// or \#NO_REQUIREMENT.
  /// More accurate location may consume more power and may take longer.
  ///@throws IllegalArgumentException if accuracy is not one of the supported constants
  void setSpeedAccuracy(int accuracy) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setSpeedAccuracy,
      jni.JniType.voidType,
      [accuracy]).check();

  static final _id_getSpeedAccuracy =
      jniAccessors.getMethodIDOf(_classRef, "getSpeedAccuracy", "()I");

  /// from: public int getSpeedAccuracy()
  ///
  /// Returns a constant indicating the desired speed accuracy
  /// Accuracy may be \#ACCURACY_LOW, \#ACCURACY_HIGH,
  /// or \#NO_REQUIREMENT.
  int getSpeedAccuracy() => jniAccessors.callMethodWithArgs(
      reference, _id_getSpeedAccuracy, jni.JniType.intType, []).integer;

  static final _id_setBearingAccuracy =
      jniAccessors.getMethodIDOf(_classRef, "setBearingAccuracy", "(I)V");

  /// from: public void setBearingAccuracy(int accuracy)
  ///
  /// Indicates the desired bearing accuracy.
  /// Accuracy may be \#ACCURACY_LOW, \#ACCURACY_HIGH,
  /// or \#NO_REQUIREMENT.
  /// More accurate location may consume more power and may take longer.
  ///@throws IllegalArgumentException if accuracy is not one of the supported constants
  void setBearingAccuracy(int accuracy) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setBearingAccuracy,
      jni.JniType.voidType,
      [accuracy]).check();

  static final _id_getBearingAccuracy =
      jniAccessors.getMethodIDOf(_classRef, "getBearingAccuracy", "()I");

  /// from: public int getBearingAccuracy()
  ///
  /// Returns a constant indicating the desired bearing accuracy.
  /// Accuracy may be \#ACCURACY_LOW, \#ACCURACY_HIGH,
  /// or \#NO_REQUIREMENT.
  int getBearingAccuracy() => jniAccessors.callMethodWithArgs(
      reference, _id_getBearingAccuracy, jni.JniType.intType, []).integer;

  static final _id_setAccuracy =
      jniAccessors.getMethodIDOf(_classRef, "setAccuracy", "(I)V");

  /// from: public void setAccuracy(int accuracy)
  ///
  /// Indicates the desired accuracy for latitude and longitude. Accuracy
  /// may be \#ACCURACY_FINE if desired location
  /// is fine, else it can be \#ACCURACY_COARSE.
  /// More accurate location may consume more power and may take longer.
  ///@throws IllegalArgumentException if accuracy is not one of the supported constants
  void setAccuracy(int accuracy) => jniAccessors.callMethodWithArgs(
      reference, _id_setAccuracy, jni.JniType.voidType, [accuracy]).check();

  static final _id_getAccuracy =
      jniAccessors.getMethodIDOf(_classRef, "getAccuracy", "()I");

  /// from: public int getAccuracy()
  ///
  /// Returns a constant indicating desired accuracy of location
  /// Accuracy may be \#ACCURACY_FINE if desired location
  /// is fine, else it can be \#ACCURACY_COARSE.
  int getAccuracy() => jniAccessors.callMethodWithArgs(
      reference, _id_getAccuracy, jni.JniType.intType, []).integer;

  static final _id_setPowerRequirement =
      jniAccessors.getMethodIDOf(_classRef, "setPowerRequirement", "(I)V");

  /// from: public void setPowerRequirement(int level)
  ///
  /// Indicates the desired maximum power level.  The level parameter
  /// must be one of NO_REQUIREMENT, POWER_LOW, POWER_MEDIUM, or
  /// POWER_HIGH.
  void setPowerRequirement(int level) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setPowerRequirement,
      jni.JniType.voidType,
      [level]).check();

  static final _id_getPowerRequirement =
      jniAccessors.getMethodIDOf(_classRef, "getPowerRequirement", "()I");

  /// from: public int getPowerRequirement()
  ///
  /// Returns a constant indicating the desired power requirement.  The
  /// returned
  int getPowerRequirement() => jniAccessors.callMethodWithArgs(
      reference, _id_getPowerRequirement, jni.JniType.intType, []).integer;

  static final _id_setCostAllowed =
      jniAccessors.getMethodIDOf(_classRef, "setCostAllowed", "(Z)V");

  /// from: public void setCostAllowed(boolean costAllowed)
  ///
  /// Indicates whether the provider is allowed to incur monetary cost.
  void setCostAllowed(bool costAllowed) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setCostAllowed,
      jni.JniType.voidType,
      [costAllowed]).check();

  static final _id_isCostAllowed =
      jniAccessors.getMethodIDOf(_classRef, "isCostAllowed", "()Z");

  /// from: public boolean isCostAllowed()
  ///
  /// Returns whether the provider is allowed to incur monetary cost.
  bool isCostAllowed() => jniAccessors.callMethodWithArgs(
      reference, _id_isCostAllowed, jni.JniType.booleanType, []).boolean;

  static final _id_setAltitudeRequired =
      jniAccessors.getMethodIDOf(_classRef, "setAltitudeRequired", "(Z)V");

  /// from: public void setAltitudeRequired(boolean altitudeRequired)
  ///
  /// Indicates whether the provider must provide altitude information.
  /// Not all fixes are guaranteed to contain such information.
  void setAltitudeRequired(bool altitudeRequired) =>
      jniAccessors.callMethodWithArgs(reference, _id_setAltitudeRequired,
          jni.JniType.voidType, [altitudeRequired]).check();

  static final _id_isAltitudeRequired =
      jniAccessors.getMethodIDOf(_classRef, "isAltitudeRequired", "()Z");

  /// from: public boolean isAltitudeRequired()
  ///
  /// Returns whether the provider must provide altitude information.
  /// Not all fixes are guaranteed to contain such information.
  bool isAltitudeRequired() => jniAccessors.callMethodWithArgs(
      reference, _id_isAltitudeRequired, jni.JniType.booleanType, []).boolean;

  static final _id_setSpeedRequired =
      jniAccessors.getMethodIDOf(_classRef, "setSpeedRequired", "(Z)V");

  /// from: public void setSpeedRequired(boolean speedRequired)
  ///
  /// Indicates whether the provider must provide speed information.
  /// Not all fixes are guaranteed to contain such information.
  void setSpeedRequired(bool speedRequired) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setSpeedRequired,
      jni.JniType.voidType,
      [speedRequired]).check();

  static final _id_isSpeedRequired =
      jniAccessors.getMethodIDOf(_classRef, "isSpeedRequired", "()Z");

  /// from: public boolean isSpeedRequired()
  ///
  /// Returns whether the provider must provide speed information.
  /// Not all fixes are guaranteed to contain such information.
  bool isSpeedRequired() => jniAccessors.callMethodWithArgs(
      reference, _id_isSpeedRequired, jni.JniType.booleanType, []).boolean;

  static final _id_setBearingRequired =
      jniAccessors.getMethodIDOf(_classRef, "setBearingRequired", "(Z)V");

  /// from: public void setBearingRequired(boolean bearingRequired)
  ///
  /// Indicates whether the provider must provide bearing information.
  /// Not all fixes are guaranteed to contain such information.
  void setBearingRequired(bool bearingRequired) =>
      jniAccessors.callMethodWithArgs(reference, _id_setBearingRequired,
          jni.JniType.voidType, [bearingRequired]).check();

  static final _id_isBearingRequired =
      jniAccessors.getMethodIDOf(_classRef, "isBearingRequired", "()Z");

  /// from: public boolean isBearingRequired()
  ///
  /// Returns whether the provider must provide bearing information.
  /// Not all fixes are guaranteed to contain such information.
  bool isBearingRequired() => jniAccessors.callMethodWithArgs(
      reference, _id_isBearingRequired, jni.JniType.booleanType, []).boolean;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel parcel, int flags)
  void writeToParcel(parcel_.Parcel parcel, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [parcel.reference, flags]).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
