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

/// from: android.os.health.PackageHealthStats
///
/// Keys for HealthStats returned from
/// HealthStats\#getStats(int) HealthStats.getStats(int) with the
/// UidHealthStats\#STATS_PACKAGES UidHealthStats.STATS_PACKAGES key.
class PackageHealthStats extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/health/PackageHealthStats");
  PackageHealthStats.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int MEASUREMENTS_WAKEUP_ALARMS_COUNT
  ///
  /// Key for a map of the number of times that a package's wakeup alarms have fired
  /// while the device was on battery.
  ///@see android.app.AlarmManager
  static const MEASUREMENTS_WAKEUP_ALARMS_COUNT = 40002;

  /// from: static public final int STATS_SERVICES
  ///
  /// Key for a HealthStats with ServiceHealthStats keys for each of the
  /// services defined in this apk.
  static const STATS_SERVICES = 40001;
}
