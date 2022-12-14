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

/// from: android.os.health.UidHealthStats
///
/// Keys for HealthStats returned from
/// SystemHealthManager\#takeUidSnapshot(int) SystemHealthManager.takeUidSnapshot(int),
/// SystemHealthManager\#takeMyUidSnapshot() SystemHealthManager.takeMyUidSnapshot(), and
/// SystemHealthManager\#takeUidSnapshots(int[]) SystemHealthManager.takeUidSnapshots(int[]).
class UidHealthStats extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/health/UidHealthStats");
  UidHealthStats.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int MEASUREMENT_BLUETOOTH_IDLE_MS
  ///
  /// Key for a measurement of number of millseconds the bluetooth controller was
  /// idle but turned on on behalf of this uid.
  static const MEASUREMENT_BLUETOOTH_IDLE_MS = 10020;

  /// from: static public final int MEASUREMENT_BLUETOOTH_POWER_MAMS
  ///
  /// Key for a measurement of the estimated number of mA*ms used by this uid
  /// for bluetooth, that is to say the number of milliseconds of activity
  /// times the mA current during that period.
  static const MEASUREMENT_BLUETOOTH_POWER_MAMS = 10023;

  /// from: static public final int MEASUREMENT_BLUETOOTH_RX_BYTES
  ///
  /// Key for a measurement of number of bytes received for this uid by the bluetooth radio.
  static const MEASUREMENT_BLUETOOTH_RX_BYTES = 10052;

  /// from: static public final int MEASUREMENT_BLUETOOTH_RX_MS
  ///
  /// Key for a measurement of number of millseconds the bluetooth transmitter was
  /// receiving data for this uid.
  static const MEASUREMENT_BLUETOOTH_RX_MS = 10021;

  /// from: static public final int MEASUREMENT_BLUETOOTH_RX_PACKETS
  ///
  /// Key for a measurement of number of packets received for this uid by the bluetooth radio.
  static const MEASUREMENT_BLUETOOTH_RX_PACKETS = 10058;

  /// from: static public final int MEASUREMENT_BLUETOOTH_TX_BYTES
  ///
  /// Key for a measurement of number of bytes transmitted for this uid by the bluetooth radio.
  static const MEASUREMENT_BLUETOOTH_TX_BYTES = 10053;

  /// from: static public final int MEASUREMENT_BLUETOOTH_TX_MS
  ///
  /// Key for a measurement of number of millseconds the bluetooth transmitter was
  /// transmitting data for this uid.
  static const MEASUREMENT_BLUETOOTH_TX_MS = 10022;

  /// from: static public final int MEASUREMENT_BLUETOOTH_TX_PACKETS
  ///
  /// Key for a measurement of number of packets transmitted for this uid by the bluetooth radio.
  static const MEASUREMENT_BLUETOOTH_TX_PACKETS = 10059;

  /// from: static public final int MEASUREMENT_BUTTON_USER_ACTIVITY_COUNT
  ///
  /// Key for a measurement of number of user activity events due to physical button presses caused
  /// by the UID.  Calls to userActivity() reset the user activity countdown timer and
  /// keep the screen on for the user's preferred screen-on setting.
  static const MEASUREMENT_BUTTON_USER_ACTIVITY_COUNT = 10046;

  /// from: static public final int MEASUREMENT_CPU_POWER_MAMS
  ///
  /// An estimate of the number of milliamp-microsends used by this uid.
  ///@deprecated this measurement is vendor-dependent and not reliable.
  static const MEASUREMENT_CPU_POWER_MAMS = 10064;

  /// from: static public final int MEASUREMENT_MOBILE_IDLE_MS
  ///
  /// Key for a measurement of number of millseconds the mobile radio controller was
  /// idle but turned on on behalf of this uid.
  static const MEASUREMENT_MOBILE_IDLE_MS = 10024;

  /// from: static public final int MEASUREMENT_MOBILE_POWER_MAMS
  ///
  /// Key for a measurement of the estimated number of mA*ms used by this uid
  /// for mobile data, that is to say the number of milliseconds of activity
  /// times the mA current during that period.
  static const MEASUREMENT_MOBILE_POWER_MAMS = 10027;

  /// from: static public final int MEASUREMENT_MOBILE_RX_BYTES
  ///
  /// Key for a measurement of number of bytes received for this uid by the mobile radio.
  static const MEASUREMENT_MOBILE_RX_BYTES = 10048;

  /// from: static public final int MEASUREMENT_MOBILE_RX_MS
  ///
  /// Key for a measurement of number of millseconds the mobile radio transmitter was
  /// receiving data for this uid.
  static const MEASUREMENT_MOBILE_RX_MS = 10025;

  /// from: static public final int MEASUREMENT_MOBILE_RX_PACKETS
  ///
  /// Key for a measurement of number of packets received for this uid by the mobile radio.
  static const MEASUREMENT_MOBILE_RX_PACKETS = 10054;

  /// from: static public final int MEASUREMENT_MOBILE_TX_BYTES
  ///
  /// Key for a measurement of number of bytes transmitted for this uid by the mobile radio.
  static const MEASUREMENT_MOBILE_TX_BYTES = 10049;

  /// from: static public final int MEASUREMENT_MOBILE_TX_MS
  ///
  /// Key for a measurement of number of millseconds the mobile radio transmitter was
  /// transmitting data for this uid.
  static const MEASUREMENT_MOBILE_TX_MS = 10026;

  /// from: static public final int MEASUREMENT_MOBILE_TX_PACKETS
  ///
  /// Key for a measurement of number of packets transmitted for this uid by the mobile radio.
  static const MEASUREMENT_MOBILE_TX_PACKETS = 10055;

  /// from: static public final int MEASUREMENT_OTHER_USER_ACTIVITY_COUNT
  ///
  /// Key for a measurement of number of software-generated user activity events caused
  /// by the UID.  Calls to userActivity() reset the user activity countdown timer and
  /// keep the screen on for the user's preferred screen-on setting.
  static const MEASUREMENT_OTHER_USER_ACTIVITY_COUNT = 10045;

  /// from: static public final int MEASUREMENT_REALTIME_BATTERY_MS
  ///
  /// How many milliseconds this statistics report covers in wall-clock time while the
  /// device was on battery including both screen-on and screen-off time.
  static const MEASUREMENT_REALTIME_BATTERY_MS = 10001;

  /// from: static public final int MEASUREMENT_REALTIME_SCREEN_OFF_BATTERY_MS
  ///
  /// How many milliseconds this statistics report covers in wall-clock time while the
  /// device was on battery including both screen-on and screen-off time.
  static const MEASUREMENT_REALTIME_SCREEN_OFF_BATTERY_MS = 10003;

  /// from: static public final int MEASUREMENT_SYSTEM_CPU_TIME_MS
  ///
  /// Key for a measurement of the number of milliseconds spent by the CPU running kernel
  /// code for this uid.
  static const MEASUREMENT_SYSTEM_CPU_TIME_MS = 10063;

  /// from: static public final int MEASUREMENT_TOUCH_USER_ACTIVITY_COUNT
  ///
  /// Key for a measurement of number of user activity events due to touch events caused
  /// by the UID.  Calls to userActivity() reset the user activity countdown timer and
  /// keep the screen on for the user's preferred screen-on setting.
  static const MEASUREMENT_TOUCH_USER_ACTIVITY_COUNT = 10047;

  /// from: static public final int MEASUREMENT_UPTIME_BATTERY_MS
  ///
  /// How many milliseconds this statistics report covers that the CPU was running while the
  /// device was on battery including both screen-on and screen-off time.
  static const MEASUREMENT_UPTIME_BATTERY_MS = 10002;

  /// from: static public final int MEASUREMENT_UPTIME_SCREEN_OFF_BATTERY_MS
  ///
  /// How many milliseconds this statistics report covers that the CPU was running while the
  /// device was on battery including both screen-on and screen-off time.
  static const MEASUREMENT_UPTIME_SCREEN_OFF_BATTERY_MS = 10004;

  /// from: static public final int MEASUREMENT_USER_CPU_TIME_MS
  ///
  /// Key for a measurement of the number of milliseconds spent by the CPU running user space
  /// code for this uid.
  static const MEASUREMENT_USER_CPU_TIME_MS = 10062;

  /// from: static public final int MEASUREMENT_WIFI_FULL_LOCK_MS
  ///
  /// Key for a measurement of number of millseconds that this uid held a full wifi lock.
  static const MEASUREMENT_WIFI_FULL_LOCK_MS = 10029;

  /// from: static public final int MEASUREMENT_WIFI_IDLE_MS
  ///
  /// Key for a measurement of number of millseconds the wifi controller was
  /// idle but turned on on behalf of this uid.
  static const MEASUREMENT_WIFI_IDLE_MS = 10016;

  /// from: static public final int MEASUREMENT_WIFI_MULTICAST_MS
  ///
  /// Key for a measurement of number of millseconds that this uid was performing
  /// multicast wifi traffic.
  static const MEASUREMENT_WIFI_MULTICAST_MS = 10031;

  /// from: static public final int MEASUREMENT_WIFI_POWER_MAMS
  ///
  /// Key for a measurement of the estimated number of mA*ms used by this uid
  /// for wifi, that is to say the number of milliseconds of wifi activity
  /// times the mA current during that period.
  static const MEASUREMENT_WIFI_POWER_MAMS = 10019;

  /// from: static public final int MEASUREMENT_WIFI_RUNNING_MS
  ///
  /// Key for a measurement of number of millseconds the wifi controller was
  /// active on behalf of this uid.
  static const MEASUREMENT_WIFI_RUNNING_MS = 10028;

  /// from: static public final int MEASUREMENT_WIFI_RX_BYTES
  ///
  /// Key for a measurement of number of bytes received for this uid by the wifi radio.
  static const MEASUREMENT_WIFI_RX_BYTES = 10050;

  /// from: static public final int MEASUREMENT_WIFI_RX_MS
  ///
  /// Key for a measurement of number of millseconds the wifi transmitter was
  /// receiving data for this uid.
  static const MEASUREMENT_WIFI_RX_MS = 10017;

  /// from: static public final int MEASUREMENT_WIFI_RX_PACKETS
  ///
  /// Key for a measurement of number of packets received for this uid by the wifi radio.
  static const MEASUREMENT_WIFI_RX_PACKETS = 10056;

  /// from: static public final int MEASUREMENT_WIFI_TX_BYTES
  ///
  /// Key for a measurement of number of bytes transmitted for this uid by the wifi radio.
  static const MEASUREMENT_WIFI_TX_BYTES = 10051;

  /// from: static public final int MEASUREMENT_WIFI_TX_MS
  ///
  /// Key for a measurement of number of millseconds the wifi transmitter was
  /// transmitting data for this uid.
  static const MEASUREMENT_WIFI_TX_MS = 10018;

  /// from: static public final int MEASUREMENT_WIFI_TX_PACKETS
  ///
  /// Key for a measurement of number of packets transmitted for this uid by the wifi radio.
  static const MEASUREMENT_WIFI_TX_PACKETS = 10057;

  /// from: static public final int STATS_PACKAGES
  ///
  /// Key for a HealthStats with PackageHealthStats keys for each of the
  /// APKs that share this uid.
  static const STATS_PACKAGES = 10015;

  /// from: static public final int STATS_PIDS
  ///
  /// Key for a HealthStats with PidHealthStats keys for each of the
  /// currently running processes for this uid.
  static const STATS_PIDS = 10013;

  /// from: static public final int STATS_PROCESSES
  ///
  /// Key for a HealthStats with ProcessHealthStats keys for each of the
  /// named processes for this uid.
  static const STATS_PROCESSES = 10014;

  /// from: static public final int TIMERS_JOBS
  ///
  /// Key for a map of Timers for the android.app.job.JobScheduler jobs for
  /// this uid.
  static const TIMERS_JOBS = 10010;

  /// from: static public final int TIMERS_SENSORS
  ///
  /// Key for a map of the sensor usage for this uid. The keys are a
  /// string representation of the handle for the sensor.
  static const TIMERS_SENSORS = 10012;

  /// from: static public final int TIMERS_SYNCS
  ///
  /// Key for a map of Timers for the sync adapter syncs that were done for
  /// this uid.
  static const TIMERS_SYNCS = 10009;

  /// from: static public final int TIMERS_WAKELOCKS_DRAW
  ///
  /// Key for a TimerStat for the times a system-defined wakelock was acquired
  /// to allow the application to draw when it otherwise would not be able to
  /// (e.g.&nbsp;on the lock screen or doze screen).
  static const TIMERS_WAKELOCKS_DRAW = 10008;

  /// from: static public final int TIMERS_WAKELOCKS_FULL
  ///
  /// Key for a TimerStat for the times a
  /// android.os.PowerManager\#FULL_WAKE_LOCK full wake lock
  /// was acquired for this uid.
  static const TIMERS_WAKELOCKS_FULL = 10005;

  /// from: static public final int TIMERS_WAKELOCKS_PARTIAL
  ///
  /// Key for a TimerStat for the times a
  /// android.os.PowerManager\#PARTIAL_WAKE_LOCK full wake lock
  /// was acquired for this uid.
  static const TIMERS_WAKELOCKS_PARTIAL = 10006;

  /// from: static public final int TIMERS_WAKELOCKS_WINDOW
  static const TIMERS_WAKELOCKS_WINDOW = 10007;

  /// from: static public final int TIMER_AUDIO
  ///
  /// Key for a timer for the count and duration of audio playback done by this uid.
  static const TIMER_AUDIO = 10032;

  /// from: static public final int TIMER_BLUETOOTH_SCAN
  ///
  /// Key for a timer for the count and duration of when this uid was doing bluetooth scans.
  static const TIMER_BLUETOOTH_SCAN = 10037;

  /// from: static public final int TIMER_CAMERA
  ///
  /// Key for a timer for the count and duration this uid had the camera turned on.
  static const TIMER_CAMERA = 10035;

  /// from: static public final int TIMER_FLASHLIGHT
  ///
  /// Key for a timer for the count and duration this uid had the flashlight turned on.
  static const TIMER_FLASHLIGHT = 10034;

  /// from: static public final int TIMER_FOREGROUND_ACTIVITY
  ///
  /// Key for a timer for the count and duration of when an activity from this uid
  /// was the foreground activitiy.
  static const TIMER_FOREGROUND_ACTIVITY = 10036;

  /// from: static public final int TIMER_GPS_SENSOR
  ///
  /// Key for a timer for the applications use of the GPS sensor.
  static const TIMER_GPS_SENSOR = 10011;

  /// from: static public final int TIMER_MOBILE_RADIO_ACTIVE
  ///
  /// Key for a timer for the count and duration the mobile radio was turned on for this uid.
  static const TIMER_MOBILE_RADIO_ACTIVE = 10061;

  /// from: static public final int TIMER_PROCESS_STATE_BACKGROUND_MS
  ///
  /// Key for a timer for the count and duration of when this uid was in the "background"
  /// process state.
  static const TIMER_PROCESS_STATE_BACKGROUND_MS = 10042;

  /// from: static public final int TIMER_PROCESS_STATE_CACHED_MS
  ///
  /// Key for a timer for the count and duration of when this uid was in the "cached" process
  /// state.
  static const TIMER_PROCESS_STATE_CACHED_MS = 10043;

  /// from: static public final int TIMER_PROCESS_STATE_FOREGROUND_MS
  ///
  /// Key for a timer for the count and duration of when this uid was in the "foreground"
  /// process state.
  static const TIMER_PROCESS_STATE_FOREGROUND_MS = 10041;

  /// from: static public final int TIMER_PROCESS_STATE_FOREGROUND_SERVICE_MS
  ///
  /// Key for a timer for the count and duration of when this uid was in the "foreground service"
  /// process state.
  static const TIMER_PROCESS_STATE_FOREGROUND_SERVICE_MS = 10039;

  /// from: static public final int TIMER_PROCESS_STATE_TOP_MS
  ///
  /// Key for a timer for the count and duration of when this uid was in the "top" process state.
  static const TIMER_PROCESS_STATE_TOP_MS = 10038;

  /// from: static public final int TIMER_PROCESS_STATE_TOP_SLEEPING_MS
  ///
  /// Key for a timer for the count and duration of when this uid was in the "top sleeping"
  /// process state.
  static const TIMER_PROCESS_STATE_TOP_SLEEPING_MS = 10040;

  /// from: static public final int TIMER_VIBRATOR
  ///
  /// Key for a timer for the count and duration this uid had the vibrator turned on.
  static const TIMER_VIBRATOR = 10044;

  /// from: static public final int TIMER_VIDEO
  ///
  /// Key for a timer for the count and duration of video playback done by this uid.
  static const TIMER_VIDEO = 10033;

  /// from: static public final int TIMER_WIFI_SCAN
  ///
  /// Key for a timer for the count and duration of wifi scans done by this uid.
  static const TIMER_WIFI_SCAN = 10030;
}
