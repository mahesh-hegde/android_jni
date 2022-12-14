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

import "HealthStats.dart" as healthstats_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.health.SystemHealthManager
///
/// Provides access to data about how various system resources are used by applications.
///@more
/// If you are going to be using this class to log your application's resource usage,
/// please consider the amount of resources (battery, network, etc) that will be used
/// by the logging itself.  It can be substantial.
///
/// __Battery Usage__<br>
/// The statistics related to power (battery) usage are recorded since the device
/// was last unplugged. It is expected that applications schedule more work to do
/// while the device is plugged in (e.g. using android.app.job.JobScheduler JobScheduler), and while that can affect charging rates, it is still preferable
/// to actually draining the battery.
class SystemHealthManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/health/SystemHealthManager");
  SystemHealthManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_takeUidSnapshot = jniAccessors.getMethodIDOf(
      _classRef, "takeUidSnapshot", "(I)Landroid/os/health/HealthStats;");

  /// from: public android.os.health.HealthStats takeUidSnapshot(int uid)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a HealthStats object containing a snapshot of system health
  /// metrics for the given uid (user-id, which in usually corresponds to application).
  ///@more An application must hold the android.Manifest.permission\#BATTERY_STATS android.permission.BATTERY_STATS permission in order to retrieve any HealthStats
  /// other than its own.
  ///@param uid User ID for a given application.
  ///@return A HealthStats object containing the metrics for the requested
  /// application. The keys for this HealthStats object will be from the UidHealthStats
  /// class.
  ///@see Process\#myUid() Process.myUid()
  healthstats_.HealthStats takeUidSnapshot(int uid) =>
      healthstats_.HealthStats.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_takeUidSnapshot,
          jni.JniType.objectType,
          [uid]).object);

  static final _id_takeMyUidSnapshot = jniAccessors.getMethodIDOf(
      _classRef, "takeMyUidSnapshot", "()Landroid/os/health/HealthStats;");

  /// from: public android.os.health.HealthStats takeMyUidSnapshot()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a HealthStats object containing a snapshot of system health
  /// metrics for the application calling this API. This method is the same as calling
  /// {@code takeUidSnapshot(Process.myUid())}.
  ///@return A HealthStats object containing the metrics for this application. The keys
  /// for this HealthStats object will be from the UidHealthStats class.
  healthstats_.HealthStats takeMyUidSnapshot() =>
      healthstats_.HealthStats.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_takeMyUidSnapshot, jni.JniType.objectType, []).object);

  static final _id_takeUidSnapshots = jniAccessors.getMethodIDOf(
      _classRef, "takeUidSnapshots", "([I)[Landroid/os/health/HealthStats;");

  /// from: public android.os.health.HealthStats[] takeUidSnapshots(int[] uids)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a HealthStats object containing a snapshot of system health
  /// metrics for the given uids (user-id, which in usually corresponds to application).
  ///@more An application must hold the android.Manifest.permission\#BATTERY_STATS android.permission.BATTERY_STATS permission in order to retrieve any HealthStats
  /// other than its own.
  ///@param uids An array of User IDs to retrieve.
  ///@return An array of HealthStats objects containing the metrics for each of
  /// the requested uids. The keys for this HealthStats object will be from the
  /// UidHealthStats class.
  jni.JniObject takeUidSnapshots(jni.JniObject uids) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_takeUidSnapshots,
          jni.JniType.objectType,
          [uids.reference]).object);
}
