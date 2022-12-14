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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.health.PidHealthStats
///
/// Keys for HealthStats returned from
/// HealthStats\#getStats(int) HealthStats.getStats(int) with the
/// UidHealthStats\#STATS_PIDS UidHealthStats.STATS_PIDS key.
///
/// The values coming from PidHealthStats are a little bit different from
/// the other HealthStats values.  These values are not aggregate or historical
/// values, but instead live values from when the snapshot is taken.  These
/// tend to be more useful in debugging rogue processes than in gathering
/// aggregate metrics across the fleet of devices.
class PidHealthStats extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/health/PidHealthStats");
  PidHealthStats.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int MEASUREMENT_WAKE_NESTING_COUNT
  ///
  /// Key for a measurement of the current nesting depth of wakelocks for this process.
  /// That is to say, the number of times a nested wakelock has been started but not
  /// stopped.  A high number here indicates an improperly paired wakelock acquire/release
  /// combination.
  ///
  /// More details on the individual wake locks is available
  /// by getting the UidHealthStats\#TIMERS_WAKELOCKS_FULL,
  /// UidHealthStats\#TIMERS_WAKELOCKS_PARTIAL,
  /// UidHealthStats\#TIMERS_WAKELOCKS_WINDOW
  /// and UidHealthStats\#TIMERS_WAKELOCKS_DRAW keys.
  static const MEASUREMENT_WAKE_NESTING_COUNT = 20001;

  /// from: static public final int MEASUREMENT_WAKE_START_MS
  ///
  /// Key for a measurement of the time in the android.os.SystemClock\#elapsedRealtime
  /// timebase that a wakelock was first acquired in this process.
  ///
  /// More details on the individual wake locks is available
  /// by getting the UidHealthStats\#TIMERS_WAKELOCKS_FULL,
  /// UidHealthStats\#TIMERS_WAKELOCKS_PARTIAL,
  /// UidHealthStats\#TIMERS_WAKELOCKS_WINDOW
  /// and UidHealthStats\#TIMERS_WAKELOCKS_DRAW keys.
  static const MEASUREMENT_WAKE_START_MS = 20003;

  /// from: static public final int MEASUREMENT_WAKE_SUM_MS
  ///
  /// Key for a measurement of the total number of milleseconds that this process
  /// has held a wake lock.
  ///
  /// More details on the individual wake locks is available
  /// by getting the UidHealthStats\#TIMERS_WAKELOCKS_FULL,
  /// UidHealthStats\#TIMERS_WAKELOCKS_PARTIAL,
  /// UidHealthStats\#TIMERS_WAKELOCKS_WINDOW
  /// and UidHealthStats\#TIMERS_WAKELOCKS_DRAW keys.
  static const MEASUREMENT_WAKE_SUM_MS = 20002;
}
