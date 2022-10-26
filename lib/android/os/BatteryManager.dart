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

/// from: android.os.BatteryManager
///
/// The BatteryManager class contains strings and constants used for values
/// in the android.content.Intent\#ACTION_BATTERY_CHANGED Intent, and
/// provides a method for querying battery and charging properties.
class BatteryManager extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/BatteryManager");
  BatteryManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_CHARGING
  ///
  /// Sent when the device's battery has started charging (or has reached full charge
  /// and the device is on power).  This is a good time to do work that you would like to
  /// avoid doing while on battery (that is to avoid draining the user's battery due to
  /// things they don't care enough about).
  ///
  /// This is paired with \#ACTION_DISCHARGING.  The current state can always
  /// be retrieved with \#isCharging().
  static const ACTION_CHARGING = "android.os.action.CHARGING";

  /// from: static public final java.lang.String ACTION_DISCHARGING
  ///
  /// Sent when the device's battery may be discharging, so apps should avoid doing
  /// extraneous work that would cause it to discharge faster.
  ///
  /// This is paired with \#ACTION_CHARGING.  The current state can always
  /// be retrieved with \#isCharging().
  static const ACTION_DISCHARGING = "android.os.action.DISCHARGING";

  /// from: static public final int BATTERY_HEALTH_COLD
  static const BATTERY_HEALTH_COLD = 7;

  /// from: static public final int BATTERY_HEALTH_DEAD
  static const BATTERY_HEALTH_DEAD = 4;

  /// from: static public final int BATTERY_HEALTH_GOOD
  static const BATTERY_HEALTH_GOOD = 2;

  /// from: static public final int BATTERY_HEALTH_OVERHEAT
  static const BATTERY_HEALTH_OVERHEAT = 3;

  /// from: static public final int BATTERY_HEALTH_OVER_VOLTAGE
  static const BATTERY_HEALTH_OVER_VOLTAGE = 5;

  /// from: static public final int BATTERY_HEALTH_UNKNOWN
  static const BATTERY_HEALTH_UNKNOWN = 1;

  /// from: static public final int BATTERY_HEALTH_UNSPECIFIED_FAILURE
  static const BATTERY_HEALTH_UNSPECIFIED_FAILURE = 6;

  /// from: static public final int BATTERY_PLUGGED_AC
  ///
  /// Power source is an AC charger.
  static const BATTERY_PLUGGED_AC = 1;

  /// from: static public final int BATTERY_PLUGGED_USB
  ///
  /// Power source is a USB port.
  static const BATTERY_PLUGGED_USB = 2;

  /// from: static public final int BATTERY_PLUGGED_WIRELESS
  ///
  /// Power source is wireless.
  static const BATTERY_PLUGGED_WIRELESS = 4;

  /// from: static public final int BATTERY_PROPERTY_CAPACITY
  ///
  /// Remaining battery capacity as an integer percentage of total capacity
  /// (with no fractional part).
  static const BATTERY_PROPERTY_CAPACITY = 4;

  /// from: static public final int BATTERY_PROPERTY_CHARGE_COUNTER
  ///
  /// Battery capacity in microampere-hours, as an integer.
  static const BATTERY_PROPERTY_CHARGE_COUNTER = 1;

  /// from: static public final int BATTERY_PROPERTY_CURRENT_AVERAGE
  ///
  /// Average battery current in microamperes, as an integer.  Positive
  /// values indicate net current entering the battery from a charge source,
  /// negative values indicate net current discharging from the battery.
  /// The time period over which the average is computed may depend on the
  /// fuel gauge hardware and its configuration.
  static const BATTERY_PROPERTY_CURRENT_AVERAGE = 3;

  /// from: static public final int BATTERY_PROPERTY_CURRENT_NOW
  ///
  /// Instantaneous battery current in microamperes, as an integer.  Positive
  /// values indicate net current entering the battery from a charge source,
  /// negative values indicate net current discharging from the battery.
  static const BATTERY_PROPERTY_CURRENT_NOW = 2;

  /// from: static public final int BATTERY_PROPERTY_ENERGY_COUNTER
  ///
  /// Battery remaining energy in nanowatt-hours, as a long integer.
  static const BATTERY_PROPERTY_ENERGY_COUNTER = 5;

  /// from: static public final int BATTERY_PROPERTY_STATUS
  ///
  /// Battery charge status, from a BATTERY_STATUS_* value.
  static const BATTERY_PROPERTY_STATUS = 6;

  /// from: static public final int BATTERY_STATUS_CHARGING
  static const BATTERY_STATUS_CHARGING = 2;

  /// from: static public final int BATTERY_STATUS_DISCHARGING
  static const BATTERY_STATUS_DISCHARGING = 3;

  /// from: static public final int BATTERY_STATUS_FULL
  static const BATTERY_STATUS_FULL = 5;

  /// from: static public final int BATTERY_STATUS_NOT_CHARGING
  static const BATTERY_STATUS_NOT_CHARGING = 4;

  /// from: static public final int BATTERY_STATUS_UNKNOWN
  static const BATTERY_STATUS_UNKNOWN = 1;

  /// from: static public final java.lang.String EXTRA_BATTERY_LOW
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// Boolean field indicating whether the battery is currently considered to be
  /// low, that is whether a Intent\#ACTION_BATTERY_LOW broadcast
  /// has been sent.
  static const EXTRA_BATTERY_LOW = "battery_low";

  /// from: static public final java.lang.String EXTRA_HEALTH
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// integer containing the current health constant.
  static const EXTRA_HEALTH = "health";

  /// from: static public final java.lang.String EXTRA_ICON_SMALL
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// integer containing the resource ID of a small status bar icon
  /// indicating the current battery state.
  static const EXTRA_ICON_SMALL = "icon-small";

  /// from: static public final java.lang.String EXTRA_LEVEL
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// integer field containing the current battery level, from 0 to
  /// \#EXTRA_SCALE.
  static const EXTRA_LEVEL = "level";

  /// from: static public final java.lang.String EXTRA_PLUGGED
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// integer indicating whether the device is plugged in to a power
  /// source; 0 means it is on battery, other constants are different
  /// types of power sources.
  static const EXTRA_PLUGGED = "plugged";

  /// from: static public final java.lang.String EXTRA_PRESENT
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// boolean indicating whether a battery is present.
  static const EXTRA_PRESENT = "present";

  /// from: static public final java.lang.String EXTRA_SCALE
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// integer containing the maximum battery level.
  static const EXTRA_SCALE = "scale";

  /// from: static public final java.lang.String EXTRA_STATUS
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// integer containing the current status constant.
  static const EXTRA_STATUS = "status";

  /// from: static public final java.lang.String EXTRA_TECHNOLOGY
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// String describing the technology of the current battery.
  static const EXTRA_TECHNOLOGY = "technology";

  /// from: static public final java.lang.String EXTRA_TEMPERATURE
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// integer containing the current battery temperature.
  static const EXTRA_TEMPERATURE = "temperature";

  /// from: static public final java.lang.String EXTRA_VOLTAGE
  ///
  /// Extra for android.content.Intent\#ACTION_BATTERY_CHANGED:
  /// integer containing the current battery voltage level.
  static const EXTRA_VOLTAGE = "voltage";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @removed Was previously made visible by accident.
  BatteryManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_isCharging =
      jniAccessors.getMethodIDOf(_classRef, "isCharging", "()Z");

  /// from: public boolean isCharging()
  ///
  /// Return true if the battery is currently considered to be charging.  This means that
  /// the device is plugged in and is supplying sufficient power that the battery level is
  /// going up (or the battery is fully charged).  Changes in this state are matched by
  /// broadcasts of \#ACTION_CHARGING and \#ACTION_DISCHARGING.
  bool isCharging() => jniAccessors.callMethodWithArgs(
      reference, _id_isCharging, jni.JniType.booleanType, []).boolean;

  static final _id_getIntProperty =
      jniAccessors.getMethodIDOf(_classRef, "getIntProperty", "(I)I");

  /// from: public int getIntProperty(int id)
  ///
  /// Return the value of a battery property of integer type.
  ///@param id identifier of the requested property
  ///@return the property value. If the property is not supported or there is any other error,
  ///    return (a) 0 if {@code targetSdkVersion < VERSION_CODES.P} or (b) Integer.MIN_VALUE
  ///    if {@code targetSdkVersion >= VERSION_CODES.P}.
  int getIntProperty(int id) => jniAccessors.callMethodWithArgs(
      reference, _id_getIntProperty, jni.JniType.intType, [id]).integer;

  static final _id_getLongProperty =
      jniAccessors.getMethodIDOf(_classRef, "getLongProperty", "(I)J");

  /// from: public long getLongProperty(int id)
  ///
  /// Return the value of a battery property of long type If the
  /// platform does not provide the property queried, this value will
  /// be Long.MIN_VALUE.
  ///@param id identifier of the requested property
  ///@return the property value, or Long.MIN_VALUE if not supported.
  int getLongProperty(int id) => jniAccessors.callMethodWithArgs(
      reference, _id_getLongProperty, jni.JniType.longType, [id]).long;

  static final _id_computeChargeTimeRemaining = jniAccessors.getMethodIDOf(
      _classRef, "computeChargeTimeRemaining", "()J");

  /// from: public long computeChargeTimeRemaining()
  ///
  /// Compute an approximation for how much time (in milliseconds) remains until the battery is
  /// fully charged. Returns -1 if no time can be computed: either there is not enough current
  /// data to make a decision or the battery is currently discharging.
  ///@return how much time is left, in milliseconds, until the battery is fully charged or -1 if
  ///         the computation fails
  int computeChargeTimeRemaining() => jniAccessors.callMethodWithArgs(
      reference, _id_computeChargeTimeRemaining, jni.JniType.longType, []).long;
}
