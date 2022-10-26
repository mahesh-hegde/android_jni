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

/// from: android.os.health.ServiceHealthStats
///
/// Keys for HealthStats returned from
/// HealthStats\#getStats(int) HealthStats.getStats(int) with the
/// PackageHealthStats\#STATS_SERVICES PackageHealthStats.STATS_SERVICES key.
class ServiceHealthStats extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/health/ServiceHealthStats");
  ServiceHealthStats.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int MEASUREMENT_LAUNCH_COUNT
  ///
  /// Key for a measurement of the total number of times this service was started
  /// due to calls to android.content.Context\#startService startService()
  /// or android.content.Context\#bindService bindService() including re-launches
  /// after crashes.
  static const MEASUREMENT_LAUNCH_COUNT = 50002;

  /// from: static public final int MEASUREMENT_START_SERVICE_COUNT
  ///
  /// Key for a measurement of the number of times this service was started due to calls to
  /// android.content.Context\#startService startService(), including re-launches
  /// after crashes.
  static const MEASUREMENT_START_SERVICE_COUNT = 50001;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ServiceHealthStats()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}
