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

import "TimerStat.dart" as timerstat_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.health.HealthStats
///
/// A HealthStats object contains system health data about an application.
///
///
/// __Data Types__<br>
/// Each of the keys references data in one of five data types:
///
///
/// A __measurement__ metric contains a sinlge {@code long} value. That value may
/// be a count, a time, or some other type of value. The unit for a measurement
/// (COUNT, MS, etc) will always be in the name of the constant for the key to
/// retrieve it. For example, the
/// android.os.health.UidHealthStats\#MEASUREMENT_WIFI_TX_MS UidHealthStats.MEASUREMENT_WIFI_TX_MS
/// value is the number of milliseconds (ms) that were spent transmitting on wifi by an
/// application.  The
/// android.os.health.UidHealthStats\#MEASUREMENT_MOBILE_RX_PACKETS UidHealthStats.MEASUREMENT_MOBILE_RX_PACKETS
/// measurement is the number of packets received on behalf of an application.
/// The android.os.health.UidHealthStats\#MEASUREMENT_TOUCH_USER_ACTIVITY_COUNT UidHealthStats.MEASUREMENT_TOUCH_USER_ACTIVITY_COUNT
/// measurement is the number of times the user touched the screen, causing the
/// screen to stay awake.
///
///
///
/// A __timer__ metric contains an {@code int} count and a {@code long} time,
/// measured in milliseconds. Timers track how many times a resource was used, and
/// the total duration for that usage. For example, the
/// android.os.health.UidHealthStats\#TIMER_FLASHLIGHT
/// timer tracks how many times the application turned on the flashlight, and for
/// how many milliseconds total it kept it on.
///
///
/// A __measurement map__ metric is a mapping of java.lang.String names to
/// java.lang.Long values.  The names typically are application provided names. For
/// example, the
/// android.os.health.PackageHealthStats\#MEASUREMENTS_WAKEUP_ALARMS_COUNT PackageHealthStats.MEASUREMENTS_WAKEUP_ALARMS_COUNT
/// measurement map is a mapping of the tag provided to the
/// android.app.AlarmManager when the alarm is scheduled.
///
///
/// A __timer map__ metric is a mapping of java.lang.String names to
/// android.os.health.TimerStat objects. The names are typically application
/// provided names.  For example, the
/// android.os.health.UidHealthStats\#TIMERS_WAKELOCKS_PARTIAL UidHealthStats.TIMERS_WAKELOCKS_PARTIAL
/// is a mapping of tag provided to the android.os.PowerManager when the
/// wakelock is created to the number of times and for how long each wakelock was
/// active.
///
///
/// Lastly, a __health stats__ metric is a mapping of java.lang.String
/// names to a recursive android.os.health.HealthStats object containing
/// more detailed information. For example, the
/// android.os.health.UidHealthStats\#STATS_PACKAGES UidHealthStats.STATS_PACKAGES
/// metric is a mapping of the package names for each of the APKs sharing a uid to
/// the information recorded for that apk.  The returned HealthStats objects will
/// each be associated with a different set of constants.  For the HealthStats
/// returned for UidHealthStats.STATS_PACKAGES, the keys come from the
/// android.os.health.PackageHealthStats  class.
///
///
/// The keys that are available are subject to change, depending on what a particular
/// device or software version is capable of recording. Applications must handle the absence of
/// data without crashing.
class HealthStats extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/health/HealthStats");
  HealthStats.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// HealthStats empty constructor not implemented because this
  /// class is read-only.
  HealthStats()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getDataType = jniAccessors.getMethodIDOf(
      _classRef, "getDataType", "()Ljava/lang/String;");

  /// from: public java.lang.String getDataType()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get a name representing the contents of this object.
  ///@see UidHealthStats
  ///@see PackageHealthStats
  ///@see PidHealthStats
  ///@see ProcessHealthStats
  ///@see ServiceHealthStats
  jni.JniString getDataType() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDataType, jni.JniType.objectType, []).object);

  static final _id_hasTimer =
      jniAccessors.getMethodIDOf(_classRef, "hasTimer", "(I)Z");

  /// from: public boolean hasTimer(int key)
  ///
  /// Return whether this object contains a TimerStat for the supplied key.
  bool hasTimer(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_hasTimer, jni.JniType.booleanType, [key]).boolean;

  static final _id_getTimer = jniAccessors.getMethodIDOf(
      _classRef, "getTimer", "(I)Landroid/os/health/TimerStat;");

  /// from: public android.os.health.TimerStat getTimer(int key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a TimerStat object for the given key.
  ///
  /// This will allocate a new TimerStat object, which may be wasteful. Instead, use
  /// \#getTimerCount and \#getTimerTime.
  ///@throws IndexOutOfBoundsException When the key is not present in this object.
  ///@see \#hasTimer hasTimer(int) To check if a value for the given key is present.
  timerstat_.TimerStat getTimer(int key) =>
      timerstat_.TimerStat.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTimer, jni.JniType.objectType, [key]).object);

  static final _id_getTimerCount =
      jniAccessors.getMethodIDOf(_classRef, "getTimerCount", "(I)I");

  /// from: public int getTimerCount(int key)
  ///
  /// Get the count for the timer for the given key.
  ///@throws IndexOutOfBoundsException When the key is not present in this object.
  ///@see \#hasTimer hasTimer(int) To check if a value for the given key is present.
  int getTimerCount(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_getTimerCount, jni.JniType.intType, [key]).integer;

  static final _id_getTimerTime =
      jniAccessors.getMethodIDOf(_classRef, "getTimerTime", "(I)J");

  /// from: public long getTimerTime(int key)
  ///
  /// Get the time for the timer for the given key, in milliseconds.
  ///@throws IndexOutOfBoundsException When the key is not present in this object.
  ///@see \#hasTimer hasTimer(int) To check if a value for the given key is present.
  int getTimerTime(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_getTimerTime, jni.JniType.longType, [key]).long;

  static final _id_getTimerKeyCount =
      jniAccessors.getMethodIDOf(_classRef, "getTimerKeyCount", "()I");

  /// from: public int getTimerKeyCount()
  ///
  /// Get the number of timer values in this object. Can be used to iterate through
  /// the available timers.
  ///@see \#getTimerKeyAt
  int getTimerKeyCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimerKeyCount, jni.JniType.intType, []).integer;

  static final _id_getTimerKeyAt =
      jniAccessors.getMethodIDOf(_classRef, "getTimerKeyAt", "(I)I");

  /// from: public int getTimerKeyAt(int index)
  ///
  /// Get the key for the timer at the given index.  Index must be between 0 and the result
  /// of \#getTimerKeyCount getTimerKeyCount().
  ///@see \#getTimerKeyCount
  int getTimerKeyAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_getTimerKeyAt, jni.JniType.intType, [index]).integer;

  static final _id_hasMeasurement =
      jniAccessors.getMethodIDOf(_classRef, "hasMeasurement", "(I)Z");

  /// from: public boolean hasMeasurement(int key)
  ///
  /// Return whether this object contains a measurement for the supplied key.
  bool hasMeasurement(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_hasMeasurement, jni.JniType.booleanType, [key]).boolean;

  static final _id_getMeasurement =
      jniAccessors.getMethodIDOf(_classRef, "getMeasurement", "(I)J");

  /// from: public long getMeasurement(int key)
  ///
  /// Get the measurement for the given key.
  ///@throws IndexOutOfBoundsException When the key is not present in this object.
  ///@see \#hasMeasurement hasMeasurement(int) To check if a value for the given key is present.
  int getMeasurement(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_getMeasurement, jni.JniType.longType, [key]).long;

  static final _id_getMeasurementKeyCount =
      jniAccessors.getMethodIDOf(_classRef, "getMeasurementKeyCount", "()I");

  /// from: public int getMeasurementKeyCount()
  ///
  /// Get the number of measurement values in this object. Can be used to iterate through
  /// the available measurements.
  ///@see \#getMeasurementKeyAt
  int getMeasurementKeyCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getMeasurementKeyCount, jni.JniType.intType, []).integer;

  static final _id_getMeasurementKeyAt =
      jniAccessors.getMethodIDOf(_classRef, "getMeasurementKeyAt", "(I)I");

  /// from: public int getMeasurementKeyAt(int index)
  ///
  /// Get the key for the measurement at the given index.  Index must be between 0 and the result
  /// of \#getMeasurementKeyCount getMeasurementKeyCount().
  ///@see \#getMeasurementKeyCount
  int getMeasurementKeyAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_getMeasurementKeyAt, jni.JniType.intType, [index]).integer;

  static final _id_hasStats =
      jniAccessors.getMethodIDOf(_classRef, "hasStats", "(I)Z");

  /// from: public boolean hasStats(int key)
  ///
  /// Return whether this object contains a HealthStats map for the supplied key.
  bool hasStats(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_hasStats, jni.JniType.booleanType, [key]).boolean;

  static final _id_getStats =
      jniAccessors.getMethodIDOf(_classRef, "getStats", "(I)Ljava/util/Map;");

  /// from: public java.util.Map<java.lang.String,android.os.health.HealthStats> getStats(int key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the HealthStats map for the given key.
  ///@throws IndexOutOfBoundsException When the key is not present in this object.
  ///@see \#hasStats hasStats(int) To check if a value for the given key is present.
  jni.JniObject getStats(int key) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getStats, jni.JniType.objectType, [key]).object);

  static final _id_getStatsKeyCount =
      jniAccessors.getMethodIDOf(_classRef, "getStatsKeyCount", "()I");

  /// from: public int getStatsKeyCount()
  ///
  /// Get the number of HealthStat map values in this object. Can be used to iterate through
  /// the available measurements.
  ///@see \#getMeasurementKeyAt
  int getStatsKeyCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getStatsKeyCount, jni.JniType.intType, []).integer;

  static final _id_getStatsKeyAt =
      jniAccessors.getMethodIDOf(_classRef, "getStatsKeyAt", "(I)I");

  /// from: public int getStatsKeyAt(int index)
  ///
  /// Get the key for the timer at the given index.  Index must be between 0 and the result
  /// of \#getStatsKeyCount getStatsKeyCount().
  ///@see \#getStatsKeyCount
  int getStatsKeyAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_getStatsKeyAt, jni.JniType.intType, [index]).integer;

  static final _id_hasTimers =
      jniAccessors.getMethodIDOf(_classRef, "hasTimers", "(I)Z");

  /// from: public boolean hasTimers(int key)
  ///
  /// Return whether this object contains a timers map for the supplied key.
  bool hasTimers(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_hasTimers, jni.JniType.booleanType, [key]).boolean;

  static final _id_getTimers =
      jniAccessors.getMethodIDOf(_classRef, "getTimers", "(I)Ljava/util/Map;");

  /// from: public java.util.Map<java.lang.String,android.os.health.TimerStat> getTimers(int key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the TimerStat map for the given key.
  ///@throws IndexOutOfBoundsException When the key is not present in this object.
  ///@see \#hasTimers hasTimers(int) To check if a value for the given key is present.
  jni.JniObject getTimers(int key) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTimers, jni.JniType.objectType, [key]).object);

  static final _id_getTimersKeyCount =
      jniAccessors.getMethodIDOf(_classRef, "getTimersKeyCount", "()I");

  /// from: public int getTimersKeyCount()
  ///
  /// Get the number of timer map values in this object. Can be used to iterate through
  /// the available timer maps.
  ///@see \#getTimersKeyAt
  int getTimersKeyCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimersKeyCount, jni.JniType.intType, []).integer;

  static final _id_getTimersKeyAt =
      jniAccessors.getMethodIDOf(_classRef, "getTimersKeyAt", "(I)I");

  /// from: public int getTimersKeyAt(int index)
  ///
  /// Get the key for the timer map at the given index.  Index must be between 0 and the result
  /// of \#getTimersKeyCount getTimersKeyCount().
  ///@see \#getTimersKeyCount
  int getTimersKeyAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_getTimersKeyAt, jni.JniType.intType, [index]).integer;

  static final _id_hasMeasurements =
      jniAccessors.getMethodIDOf(_classRef, "hasMeasurements", "(I)Z");

  /// from: public boolean hasMeasurements(int key)
  ///
  /// Return whether this object contains a measurements map for the supplied key.
  bool hasMeasurements(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_hasMeasurements, jni.JniType.booleanType, [key]).boolean;

  static final _id_getMeasurements = jniAccessors.getMethodIDOf(
      _classRef, "getMeasurements", "(I)Ljava/util/Map;");

  /// from: public java.util.Map<java.lang.String,java.lang.Long> getMeasurements(int key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the measurements map for the given key.
  ///@throws IndexOutOfBoundsException When the key is not present in this object.
  ///@see \#hasMeasurements To check if a value for the given key is present.
  jni.JniObject getMeasurements(int key) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getMeasurements, jni.JniType.objectType, [key]).object);

  static final _id_getMeasurementsKeyCount =
      jniAccessors.getMethodIDOf(_classRef, "getMeasurementsKeyCount", "()I");

  /// from: public int getMeasurementsKeyCount()
  ///
  /// Get the number of measurement map values in this object. Can be used to iterate through
  /// the available measurement maps.
  ///@see \#getMeasurementsKeyAt
  int getMeasurementsKeyCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getMeasurementsKeyCount, jni.JniType.intType, []).integer;

  static final _id_getMeasurementsKeyAt =
      jniAccessors.getMethodIDOf(_classRef, "getMeasurementsKeyAt", "(I)I");

  /// from: public int getMeasurementsKeyAt(int index)
  ///
  /// Get the key for the measurement map at the given index.
  /// Index must be between 0 and the result
  /// of \#getMeasurementsKeyCount getMeasurementsKeyCount().
  ///@see \#getMeasurementsKeyCount
  int getMeasurementsKeyAt(int index) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getMeasurementsKeyAt,
      jni.JniType.intType,
      [index]).integer;
}