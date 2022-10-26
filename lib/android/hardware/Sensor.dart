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

/// from: android.hardware.Sensor
///
/// Class representing a sensor. Use SensorManager\#getSensorList to get
/// the list of available sensors. For more information about Android sensors,
/// read the
/// <a href="/guide/topics/sensors/sensors_motion.html">Motion Sensors guide</a>.
///
///@see SensorManager
///@see SensorEventListener
///@see SensorEvent
class Sensor extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/hardware/Sensor");
  Sensor.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int REPORTING_MODE_CONTINUOUS
  ///
  /// Events are reported at a constant rate which is set by the rate parameter of
  /// SensorManager\#registerListener(SensorEventListener, Sensor, int). Note: If other
  /// applications are requesting a higher rate, the sensor data might be delivered at faster rates
  /// than requested.
  static const REPORTING_MODE_CONTINUOUS = 0;

  /// from: static public final int REPORTING_MODE_ONE_SHOT
  ///
  /// Events are reported in one-shot mode. Upon detection of an event, the sensor deactivates
  /// itself and then sends a single event. Sensors of this reporting mode must be registered to
  /// using SensorManager\#requestTriggerSensor(TriggerEventListener, Sensor).
  static const REPORTING_MODE_ONE_SHOT = 2;

  /// from: static public final int REPORTING_MODE_ON_CHANGE
  ///
  /// Events are reported only when the value changes. Event delivery rate can be limited by
  /// setting appropriate value for rate parameter of
  /// SensorManager\#registerListener(SensorEventListener, Sensor, int) Note: If other
  /// applications are requesting a higher rate, the sensor data might be delivered at faster rates
  /// than requested.
  static const REPORTING_MODE_ON_CHANGE = 1;

  /// from: static public final int REPORTING_MODE_SPECIAL_TRIGGER
  ///
  /// Events are reported as described in the description of the sensor. The rate passed to
  /// registerListener might not have an impact on the rate of event delivery. See the sensor
  /// definition for more information on when and how frequently the events are reported. For
  /// example, step detectors report events when a step is detected.
  ///@see SensorManager\#registerListener(SensorEventListener, Sensor, int, int)
  static const REPORTING_MODE_SPECIAL_TRIGGER = 3;

  /// from: static public final java.lang.String STRING_TYPE_ACCELEROMETER
  ///
  /// A constant string describing an accelerometer sensor type.
  ///@see \#TYPE_ACCELEROMETER
  static const STRING_TYPE_ACCELEROMETER = "android.sensor.accelerometer";

  /// from: static public final java.lang.String STRING_TYPE_ACCELEROMETER_UNCALIBRATED
  ///
  /// A constant string describing an uncalibrated accelerometer sensor.
  ///@see \#TYPE_ACCELEROMETER_UNCALIBRATED
  static const STRING_TYPE_ACCELEROMETER_UNCALIBRATED =
      "android.sensor.accelerometer_uncalibrated";

  /// from: static public final java.lang.String STRING_TYPE_AMBIENT_TEMPERATURE
  ///
  /// A constant string describing an ambient temperature sensor type.
  ///@see \#TYPE_AMBIENT_TEMPERATURE
  static const STRING_TYPE_AMBIENT_TEMPERATURE =
      "android.sensor.ambient_temperature";

  /// from: static public final java.lang.String STRING_TYPE_GAME_ROTATION_VECTOR
  ///
  /// A constant string describing an uncalibrated rotation vector sensor type.
  ///@see \#TYPE_GAME_ROTATION_VECTOR
  static const STRING_TYPE_GAME_ROTATION_VECTOR =
      "android.sensor.game_rotation_vector";

  /// from: static public final java.lang.String STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR
  ///
  /// A constant string describing a geo-magnetic rotation vector.
  ///@see \#TYPE_GEOMAGNETIC_ROTATION_VECTOR
  static const STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR =
      "android.sensor.geomagnetic_rotation_vector";

  /// from: static public final java.lang.String STRING_TYPE_GRAVITY
  ///
  /// A constant string describing a gravity sensor type.
  ///@see \#TYPE_GRAVITY
  static const STRING_TYPE_GRAVITY = "android.sensor.gravity";

  /// from: static public final java.lang.String STRING_TYPE_GYROSCOPE
  ///
  /// A constant string describing a gyroscope sensor type.
  ///@see \#TYPE_GYROSCOPE
  static const STRING_TYPE_GYROSCOPE = "android.sensor.gyroscope";

  /// from: static public final java.lang.String STRING_TYPE_GYROSCOPE_UNCALIBRATED
  ///
  /// A constant string describing an uncalibrated gyroscope sensor type.
  ///@see \#TYPE_GYROSCOPE_UNCALIBRATED
  static const STRING_TYPE_GYROSCOPE_UNCALIBRATED =
      "android.sensor.gyroscope_uncalibrated";

  /// from: static public final java.lang.String STRING_TYPE_HEART_BEAT
  ///
  /// A constant string describing a heart beat sensor.
  ///@see \#TYPE_HEART_BEAT
  static const STRING_TYPE_HEART_BEAT = "android.sensor.heart_beat";

  /// from: static public final java.lang.String STRING_TYPE_HEART_RATE
  ///
  /// A constant string describing a heart rate monitor.
  ///@see \#TYPE_HEART_RATE
  static const STRING_TYPE_HEART_RATE = "android.sensor.heart_rate";

  /// from: static public final java.lang.String STRING_TYPE_LIGHT
  ///
  /// A constant string describing a light sensor type.
  ///@see \#TYPE_LIGHT
  static const STRING_TYPE_LIGHT = "android.sensor.light";

  /// from: static public final java.lang.String STRING_TYPE_LINEAR_ACCELERATION
  ///
  /// A constant string describing a linear acceleration sensor type.
  ///@see \#TYPE_LINEAR_ACCELERATION
  static const STRING_TYPE_LINEAR_ACCELERATION =
      "android.sensor.linear_acceleration";

  /// from: static public final java.lang.String STRING_TYPE_LOW_LATENCY_OFFBODY_DETECT
  ///
  /// A constant string describing a low-latency offbody detector sensor.
  ///@see \#TYPE_LOW_LATENCY_OFFBODY_DETECT
  static const STRING_TYPE_LOW_LATENCY_OFFBODY_DETECT =
      "android.sensor.low_latency_offbody_detect";

  /// from: static public final java.lang.String STRING_TYPE_MAGNETIC_FIELD
  ///
  /// A constant string describing a magnetic field sensor type.
  ///@see \#TYPE_MAGNETIC_FIELD
  static const STRING_TYPE_MAGNETIC_FIELD = "android.sensor.magnetic_field";

  /// from: static public final java.lang.String STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED
  ///
  /// A constant string describing an uncalibrated magnetic field sensor type.
  ///@see \#TYPE_MAGNETIC_FIELD_UNCALIBRATED
  static const STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED =
      "android.sensor.magnetic_field_uncalibrated";

  /// from: static public final java.lang.String STRING_TYPE_MOTION_DETECT
  ///
  /// A constant string describing a motion detection sensor.
  ///@see \#TYPE_MOTION_DETECT
  static const STRING_TYPE_MOTION_DETECT = "android.sensor.motion_detect";

  /// from: static public final java.lang.String STRING_TYPE_ORIENTATION
  ///
  /// A constant string describing an orientation sensor type.
  ///@see \#TYPE_ORIENTATION
  ///@deprecated use android.hardware.SensorManager\#getOrientation SensorManager.getOrientation() instead.
  static const STRING_TYPE_ORIENTATION = "android.sensor.orientation";

  /// from: static public final java.lang.String STRING_TYPE_POSE_6DOF
  ///
  /// A constant string describing a pose sensor with 6 degrees of freedom.
  ///@see \#TYPE_POSE_6DOF
  static const STRING_TYPE_POSE_6DOF = "android.sensor.pose_6dof";

  /// from: static public final java.lang.String STRING_TYPE_PRESSURE
  ///
  /// A constant string describing a pressure sensor type.
  ///@see \#TYPE_PRESSURE
  static const STRING_TYPE_PRESSURE = "android.sensor.pressure";

  /// from: static public final java.lang.String STRING_TYPE_PROXIMITY
  ///
  /// A constant string describing a proximity sensor type.
  ///@see \#TYPE_PROXIMITY
  static const STRING_TYPE_PROXIMITY = "android.sensor.proximity";

  /// from: static public final java.lang.String STRING_TYPE_RELATIVE_HUMIDITY
  ///
  /// A constant string describing a relative humidity sensor type
  ///@see \#TYPE_RELATIVE_HUMIDITY
  static const STRING_TYPE_RELATIVE_HUMIDITY =
      "android.sensor.relative_humidity";

  /// from: static public final java.lang.String STRING_TYPE_ROTATION_VECTOR
  ///
  /// A constant string describing a rotation vector sensor type.
  ///@see \#TYPE_ROTATION_VECTOR
  static const STRING_TYPE_ROTATION_VECTOR = "android.sensor.rotation_vector";

  /// from: static public final java.lang.String STRING_TYPE_SIGNIFICANT_MOTION
  ///
  /// A constant string describing a significant motion trigger sensor.
  ///@see \#TYPE_SIGNIFICANT_MOTION
  static const STRING_TYPE_SIGNIFICANT_MOTION =
      "android.sensor.significant_motion";

  /// from: static public final java.lang.String STRING_TYPE_STATIONARY_DETECT
  ///
  /// A constant string describing a stationary detection sensor.
  ///@see \#TYPE_STATIONARY_DETECT
  static const STRING_TYPE_STATIONARY_DETECT =
      "android.sensor.stationary_detect";

  /// from: static public final java.lang.String STRING_TYPE_STEP_COUNTER
  ///
  /// A constant string describing a step counter sensor.
  ///@see \#TYPE_STEP_COUNTER
  static const STRING_TYPE_STEP_COUNTER = "android.sensor.step_counter";

  /// from: static public final java.lang.String STRING_TYPE_STEP_DETECTOR
  ///
  /// A constant string describing a step detector sensor.
  ///@see \#TYPE_STEP_DETECTOR
  static const STRING_TYPE_STEP_DETECTOR = "android.sensor.step_detector";

  /// from: static public final java.lang.String STRING_TYPE_TEMPERATURE
  ///
  /// A constant string describing a temperature sensor type
  ///@see \#TYPE_TEMPERATURE
  ///@deprecated use
  ///             android.hardware.Sensor\#STRING_TYPE_AMBIENT_TEMPERATURE Sensor.STRING_TYPE_AMBIENT_TEMPERATURE instead.
  static const STRING_TYPE_TEMPERATURE = "android.sensor.temperature";

  /// from: static public final int TYPE_ACCELEROMETER
  ///
  /// A constant describing an accelerometer sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  static const TYPE_ACCELEROMETER = 1;

  /// from: static public final int TYPE_ACCELEROMETER_UNCALIBRATED
  ///
  /// A constant describing an uncalibrated accelerometer sensor.
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more details.
  static const TYPE_ACCELEROMETER_UNCALIBRATED = 35;

  /// from: static public final int TYPE_ALL
  ///
  /// A constant describing all sensor types.
  static const TYPE_ALL = -1;

  /// from: static public final int TYPE_AMBIENT_TEMPERATURE
  ///
  /// A constant describing an ambient temperature sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  static const TYPE_AMBIENT_TEMPERATURE = 13;

  /// from: static public final int TYPE_DEVICE_PRIVATE_BASE
  ///
  /// The lowest sensor type vendor defined sensors can use.
  ///
  /// All vendor sensor types are greater than or equal to this constant.
  static const TYPE_DEVICE_PRIVATE_BASE = 65536;

  /// from: static public final int TYPE_GAME_ROTATION_VECTOR
  ///
  /// A constant describing an uncalibrated rotation vector sensor type.
  /// Identical to \#TYPE_ROTATION_VECTOR except that it doesn't
  /// use the geomagnetic field. Therefore the Y axis doesn't
  /// point north, but instead to some other reference, that reference is
  /// allowed to drift by the same order of magnitude as the gyroscope
  /// drift around the Z axis.
  ///
  /// In the ideal case, a phone rotated and returning to the same real-world
  /// orientation should report the same game rotation vector
  /// (without using the earth's geomagnetic field). However, the orientation
  /// may drift somewhat over time.
  ///
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more
  /// details.
  static const TYPE_GAME_ROTATION_VECTOR = 15;

  /// from: static public final int TYPE_GEOMAGNETIC_ROTATION_VECTOR
  ///
  /// A constant describing a geo-magnetic rotation vector.
  ///
  /// Similar to \#TYPE_ROTATION_VECTOR, but using a magnetometer instead of using a
  /// gyroscope. This sensor uses lower power than the other rotation vectors, because it doesn't
  /// use the gyroscope. However, it is more noisy and will work best outdoors.
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more details.
  static const TYPE_GEOMAGNETIC_ROTATION_VECTOR = 20;

  /// from: static public final int TYPE_GRAVITY
  ///
  /// A constant describing a gravity sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  static const TYPE_GRAVITY = 9;

  /// from: static public final int TYPE_GYROSCOPE
  ///
  /// A constant describing a gyroscope sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  static const TYPE_GYROSCOPE = 4;

  /// from: static public final int TYPE_GYROSCOPE_UNCALIBRATED
  ///
  /// A constant describing an uncalibrated gyroscope sensor type.
  /// Similar to \#TYPE_GYROSCOPE but no gyro-drift compensation has been performed
  /// to adjust the given sensor values. However, such gyro-drift bias values
  /// are returned to you separately in the result android.hardware.SensorEvent\#values
  /// so you may use them for custom calibrations.
  /// Factory calibration and temperature compensation is still applied
  /// to the rate of rotation (angular speeds).
  ///
  ///
  ///  See android.hardware.SensorEvent\#values SensorEvent.values for more
  /// details.
  static const TYPE_GYROSCOPE_UNCALIBRATED = 16;

  /// from: static public final int TYPE_HEART_BEAT
  ///
  /// A constant describing a motion detect sensor.
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more details.
  static const TYPE_HEART_BEAT = 31;

  /// from: static public final int TYPE_HEART_RATE
  ///
  /// A constant describing a heart rate monitor.
  ///
  /// The reported value is the heart rate in beats per minute.
  ///
  /// The reported accuracy represents the status of the monitor during the reading. See the
  /// {@code SENSOR_STATUS_*} constants in android.hardware.SensorManager SensorManager
  /// for more details on accuracy/status values. In particular, when the accuracy is
  /// {@code SENSOR_STATUS_UNRELIABLE} or {@code SENSOR_STATUS_NO_CONTACT}, the heart rate
  /// value should be discarded.
  ///
  /// This sensor requires permission {@code android.permission.BODY_SENSORS}.
  /// It will not be returned by {@code SensorManager.getSensorsList} nor
  /// {@code SensorManager.getDefaultSensor} if the application doesn't have this permission.
  static const TYPE_HEART_RATE = 21;

  /// from: static public final int TYPE_LIGHT
  ///
  /// A constant describing a light sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  static const TYPE_LIGHT = 5;

  /// from: static public final int TYPE_LINEAR_ACCELERATION
  ///
  /// A constant describing a linear acceleration sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  static const TYPE_LINEAR_ACCELERATION = 10;

  /// from: static public final int TYPE_LOW_LATENCY_OFFBODY_DETECT
  ///
  /// A constant describing a low latency off-body detect sensor.
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more details.
  static const TYPE_LOW_LATENCY_OFFBODY_DETECT = 34;

  /// from: static public final int TYPE_MAGNETIC_FIELD
  ///
  /// A constant describing a magnetic field sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  static const TYPE_MAGNETIC_FIELD = 2;

  /// from: static public final int TYPE_MAGNETIC_FIELD_UNCALIBRATED
  ///
  /// A constant describing an uncalibrated magnetic field sensor type.
  ///
  /// Similar to \#TYPE_MAGNETIC_FIELD but the hard iron calibration (device calibration
  /// due to distortions that arise from magnetized iron, steel or permanent magnets on the
  /// device) is not considered in the given sensor values. However, such hard iron bias values
  /// are returned to you separately in the result android.hardware.SensorEvent\#values
  /// so you may use them for custom calibrations.
  /// Also, no periodic calibration is performed
  /// (i.e. there are no discontinuities in the data stream while using this sensor) and
  /// assumptions that the magnetic field is due to the Earth's poles is avoided, but
  /// factory calibration and temperature compensation have been performed.
  ///
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more
  /// details.
  static const TYPE_MAGNETIC_FIELD_UNCALIBRATED = 14;

  /// from: static public final int TYPE_MOTION_DETECT
  ///
  /// A constant describing a motion detect sensor.
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more details.
  static const TYPE_MOTION_DETECT = 30;

  /// from: static public final int TYPE_ORIENTATION
  ///
  /// A constant describing an orientation sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  ///@deprecated use android.hardware.SensorManager\#getOrientation SensorManager.getOrientation() instead.
  static const TYPE_ORIENTATION = 3;

  /// from: static public final int TYPE_POSE_6DOF
  ///
  /// A constant describing a pose sensor with 6 degrees of freedom.
  ///
  /// Similar to \#TYPE_ROTATION_VECTOR, with additional delta
  /// translation from an arbitrary reference point.
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more details.
  ///
  /// Can use camera, depth sensor etc to compute output value.
  ///
  /// This is expected to be a high power sensor and expected only to be
  /// used when the screen is on.
  ///
  /// Expected to be more accurate than the rotation vector alone.
  static const TYPE_POSE_6DOF = 28;

  /// from: static public final int TYPE_PRESSURE
  ///
  /// A constant describing a pressure sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  static const TYPE_PRESSURE = 6;

  /// from: static public final int TYPE_PROXIMITY
  ///
  /// A constant describing a proximity sensor type. This is a wake up sensor.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  ///@see \#isWakeUpSensor()
  static const TYPE_PROXIMITY = 8;

  /// from: static public final int TYPE_RELATIVE_HUMIDITY
  ///
  /// A constant describing a relative humidity sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  static const TYPE_RELATIVE_HUMIDITY = 12;

  /// from: static public final int TYPE_ROTATION_VECTOR
  ///
  /// A constant describing a rotation vector sensor type.
  /// See android.hardware.SensorEvent\#values SensorEvent.values
  /// for more details.
  static const TYPE_ROTATION_VECTOR = 11;

  /// from: static public final int TYPE_SIGNIFICANT_MOTION
  ///
  /// A constant describing a significant motion trigger sensor.
  ///
  /// It triggers when an event occurs and then automatically disables
  /// itself. The sensor continues to operate while the device is asleep
  /// and will automatically wake the device to notify when significant
  /// motion is detected. The application does not need to hold any wake
  /// locks for this sensor to trigger. This is a wake up sensor.
  /// See TriggerEvent for more details.
  ///@see \#isWakeUpSensor()
  static const TYPE_SIGNIFICANT_MOTION = 17;

  /// from: static public final int TYPE_STATIONARY_DETECT
  ///
  /// A constant describing a stationary detect sensor.
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more details.
  static const TYPE_STATIONARY_DETECT = 29;

  /// from: static public final int TYPE_STEP_COUNTER
  ///
  /// A constant describing a step counter sensor.
  ///
  /// A sensor of this type returns the number of steps taken by the user since the last reboot
  /// while activated. The value is returned as a float (with the fractional part set to zero) and
  /// is reset to zero only on a system reboot. The timestamp of the event is set to the time when
  /// the last step for that event was taken. This sensor is implemented in hardware and is
  /// expected to be low power. If you want to continuously track the number of steps over a long
  /// period of time, do NOT unregister for this sensor, so that it keeps counting steps in the
  /// background even when the AP is in suspend mode and report the aggregate count when the AP
  /// is awake. Application needs to stay registered for this sensor because step counter does not
  /// count steps if it is not activated. This sensor is ideal for fitness tracking applications.
  /// It is defined as an Sensor\#REPORTING_MODE_ON_CHANGE sensor.
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more details.
  static const TYPE_STEP_COUNTER = 19;

  /// from: static public final int TYPE_STEP_DETECTOR
  ///
  /// A constant describing a step detector sensor.
  ///
  /// A sensor of this type triggers an event each time a step is taken by the user. The only
  /// allowed value to return is 1.0 and an event is generated for each step. Like with any other
  /// event, the timestamp indicates when the event (here the step) occurred, this corresponds to
  /// when the foot hit the ground, generating a high variation in acceleration. This sensor is
  /// only for detecting every individual step as soon as it is taken, for example to perform dead
  /// reckoning. If you only need aggregate number of steps taken over a period of time, register
  /// for \#TYPE_STEP_COUNTER instead. It is defined as a
  /// Sensor\#REPORTING_MODE_SPECIAL_TRIGGER sensor.
  ///
  /// See android.hardware.SensorEvent\#values SensorEvent.values for more details.
  static const TYPE_STEP_DETECTOR = 18;

  /// from: static public final int TYPE_TEMPERATURE
  ///
  /// A constant describing a temperature sensor type
  ///@deprecated use
  ///             android.hardware.Sensor\#TYPE_AMBIENT_TEMPERATURE Sensor.TYPE_AMBIENT_TEMPERATURE instead.
  static const TYPE_TEMPERATURE = 7;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Sensor()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getReportingMode =
      jniAccessors.getMethodIDOf(_classRef, "getReportingMode", "()I");

  /// from: public int getReportingMode()
  ///
  /// Each sensor has exactly one reporting mode associated with it. This method returns the
  /// reporting mode constant for this sensor type.
  ///@return Reporting mode for the input sensor, one of REPORTING_MODE_* constants.
  ///@see \#REPORTING_MODE_CONTINUOUS
  ///@see \#REPORTING_MODE_ON_CHANGE
  ///@see \#REPORTING_MODE_ONE_SHOT
  ///@see \#REPORTING_MODE_SPECIAL_TRIGGER
  int getReportingMode() => jniAccessors.callMethodWithArgs(
      reference, _id_getReportingMode, jni.JniType.intType, []).integer;

  static final _id_getHighestDirectReportRateLevel = jniAccessors.getMethodIDOf(
      _classRef, "getHighestDirectReportRateLevel", "()I");

  /// from: public int getHighestDirectReportRateLevel()
  ///
  /// Get the highest supported direct report mode rate level of the sensor.
  ///@return Highest direct report rate level of this sensor. If the sensor does not support
  /// direct report mode, this returns SensorDirectChannel\#RATE_STOP.
  /// Value is either <code>0</code> or a combination of android.hardware.SensorDirectChannel\#RATE_STOP, android.hardware.SensorDirectChannel\#RATE_NORMAL, android.hardware.SensorDirectChannel\#RATE_FAST, and android.hardware.SensorDirectChannel\#RATE_VERY_FAST
  ///@see SensorDirectChannel\#RATE_STOP
  ///@see SensorDirectChannel\#RATE_NORMAL
  ///@see SensorDirectChannel\#RATE_FAST
  ///@see SensorDirectChannel\#RATE_VERY_FAST
  int getHighestDirectReportRateLevel() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getHighestDirectReportRateLevel,
      jni.JniType.intType, []).integer;

  static final _id_isDirectChannelTypeSupported = jniAccessors.getMethodIDOf(
      _classRef, "isDirectChannelTypeSupported", "(I)Z");

  /// from: public boolean isDirectChannelTypeSupported(int sharedMemType)
  ///
  /// Test if a sensor supports a specified direct channel type.
  ///@param sharedMemType type of shared memory used by direct channel.
  /// Value is either <code>0</code> or a combination of android.hardware.SensorDirectChannel\#TYPE_MEMORY_FILE, and android.hardware.SensorDirectChannel\#TYPE_HARDWARE_BUFFER
  ///@return <code>true</code> if the specified shared memory type is supported.
  ///@see SensorDirectChannel\#TYPE_MEMORY_FILE
  ///@see SensorDirectChannel\#TYPE_HARDWARE_BUFFER
  bool isDirectChannelTypeSupported(int sharedMemType) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_isDirectChannelTypeSupported,
          jni.JniType.booleanType,
          [sharedMemType]).boolean;

  static final _id_getName =
      jniAccessors.getMethodIDOf(_classRef, "getName", "()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return name string of the sensor.
  jni.JniString getName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_getVendor = jniAccessors.getMethodIDOf(
      _classRef, "getVendor", "()Ljava/lang/String;");

  /// from: public java.lang.String getVendor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return vendor string of this sensor.
  jni.JniString getVendor() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getVendor, jni.JniType.objectType, []).object);

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "()I");

  /// from: public int getType()
  ///
  /// @return generic type of this sensor.
  int getType() => jniAccessors.callMethodWithArgs(
      reference, _id_getType, jni.JniType.intType, []).integer;

  static final _id_getVersion =
      jniAccessors.getMethodIDOf(_classRef, "getVersion", "()I");

  /// from: public int getVersion()
  ///
  /// @return version of the sensor's module.
  int getVersion() => jniAccessors.callMethodWithArgs(
      reference, _id_getVersion, jni.JniType.intType, []).integer;

  static final _id_getMaximumRange =
      jniAccessors.getMethodIDOf(_classRef, "getMaximumRange", "()F");

  /// from: public float getMaximumRange()
  ///
  /// @return maximum range of the sensor in the sensor's unit.
  double getMaximumRange() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaximumRange, jni.JniType.floatType, []).float;

  static final _id_getResolution =
      jniAccessors.getMethodIDOf(_classRef, "getResolution", "()F");

  /// from: public float getResolution()
  ///
  /// @return resolution of the sensor in the sensor's unit.
  double getResolution() => jniAccessors.callMethodWithArgs(
      reference, _id_getResolution, jni.JniType.floatType, []).float;

  static final _id_getPower =
      jniAccessors.getMethodIDOf(_classRef, "getPower", "()F");

  /// from: public float getPower()
  ///
  /// @return the power in mA used by this sensor while in use
  double getPower() => jniAccessors.callMethodWithArgs(
      reference, _id_getPower, jni.JniType.floatType, []).float;

  static final _id_getMinDelay =
      jniAccessors.getMethodIDOf(_classRef, "getMinDelay", "()I");

  /// from: public int getMinDelay()
  ///
  /// @return the minimum delay allowed between two events in microsecond
  /// or zero if this sensor only returns a value when the data it's measuring
  /// changes.
  int getMinDelay() => jniAccessors.callMethodWithArgs(
      reference, _id_getMinDelay, jni.JniType.intType, []).integer;

  static final _id_getFifoReservedEventCount =
      jniAccessors.getMethodIDOf(_classRef, "getFifoReservedEventCount", "()I");

  /// from: public int getFifoReservedEventCount()
  ///
  /// @return Number of events reserved for this sensor in the batch mode FIFO. This gives a
  /// guarantee on the minimum number of events that can be batched.
  int getFifoReservedEventCount() => jniAccessors.callMethodWithArgs(reference,
      _id_getFifoReservedEventCount, jni.JniType.intType, []).integer;

  static final _id_getFifoMaxEventCount =
      jniAccessors.getMethodIDOf(_classRef, "getFifoMaxEventCount", "()I");

  /// from: public int getFifoMaxEventCount()
  ///
  /// @return Maximum number of events of this sensor that could be batched. If this value is zero
  /// it indicates that batch mode is not supported for this sensor. If other applications
  /// registered to batched sensors, the actual number of events that can be batched might be
  /// smaller because the hardware FiFo will be partially used to batch the other sensors.
  int getFifoMaxEventCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getFifoMaxEventCount, jni.JniType.intType, []).integer;

  static final _id_getStringType = jniAccessors.getMethodIDOf(
      _classRef, "getStringType", "()Ljava/lang/String;");

  /// from: public java.lang.String getStringType()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The type of this sensor as a string.
  jni.JniString getStringType() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getStringType, jni.JniType.objectType, []).object);

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()I");

  /// from: public int getId()
  ///
  /// @return The sensor id that will be unique for the same app unless the device is factory
  /// reset. Return value of 0 means this sensor does not support this function; return value of -1
  /// means this sensor can be uniquely identified in system by combination of its type and name.
  int getId() => jniAccessors.callMethodWithArgs(
      reference, _id_getId, jni.JniType.intType, []).integer;

  static final _id_getMaxDelay =
      jniAccessors.getMethodIDOf(_classRef, "getMaxDelay", "()I");

  /// from: public int getMaxDelay()
  ///
  /// This value is defined only for continuous and on-change sensors. It is the delay between two
  /// sensor events corresponding to the lowest frequency that this sensor supports. When lower
  /// frequencies are requested through registerListener() the events will be generated at this
  /// frequency instead. It can be used to estimate when the batch FIFO may be full. Older devices
  /// may set this value to zero. Ignore this value in case it is negative or zero.
  ///@return The max delay for this sensor in microseconds.
  int getMaxDelay() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxDelay, jni.JniType.intType, []).integer;

  static final _id_isWakeUpSensor =
      jniAccessors.getMethodIDOf(_classRef, "isWakeUpSensor", "()Z");

  /// from: public boolean isWakeUpSensor()
  ///
  /// Returns true if the sensor is a wake-up sensor.
  ///
  /// __Application Processor Power modes__
  /// Application Processor(AP), is the processor on which applications run.  When no wake lock is
  /// held and the user is not interacting with the device, this processor can enter a \u201cSuspend\u201d
  /// mode, reducing the power consumption by 10 times or more.
  ///
  ///
  ///
  /// __Non-wake-up sensors__
  /// Non-wake-up sensors are sensors that do not wake the AP out of suspend to report data. While
  /// the AP is in suspend mode, the sensors continue to function and generate events, which are
  /// put in a hardware FIFO. The events in the FIFO are delivered to the application when the AP
  /// wakes up. If the FIFO was too small to store all events generated while the AP was in
  /// suspend mode, the older events are lost: the oldest data is dropped to accommodate the newer
  /// data. In the extreme case where the FIFO is non-existent {@code maxFifoEventCount() == 0},
  /// all events generated while the AP was in suspend mode are lost. Applications using
  /// non-wake-up sensors should usually:
  /// <ul>
  /// <li>Either unregister from the sensors when they do not need them, usually in the activity\u2019s
  /// {@code onPause} method. This is the most common case.
  /// <li>Or realize that the sensors are consuming some power while the AP is in suspend mode and
  /// that even then, some events might be lost.
  /// </ul>
  ///
  ///
  ///
  /// __Wake-up sensors__
  /// In opposition to non-wake-up sensors, wake-up sensors ensure that their data is delivered
  /// independently of the state of the AP. While the AP is awake, the wake-up sensors behave
  /// like non-wake-up-sensors. When the AP is asleep, wake-up sensors wake up the AP to deliver
  /// events. That is, the AP will wake up and the sensor will deliver the events before the
  /// maximum reporting latency is elapsed or the hardware FIFO gets full. See SensorManager\#registerListener(SensorEventListener, Sensor, int, int) for more details.
  ///
  ///
  ///@return <code>true</code> if this is a wake-up sensor, <code>false</code> otherwise.
  bool isWakeUpSensor() => jniAccessors.callMethodWithArgs(
      reference, _id_isWakeUpSensor, jni.JniType.booleanType, []).boolean;

  static final _id_isDynamicSensor =
      jniAccessors.getMethodIDOf(_classRef, "isDynamicSensor", "()Z");

  /// from: public boolean isDynamicSensor()
  ///
  /// Returns true if the sensor is a dynamic sensor.
  ///@return <code>true</code> if the sensor is a dynamic sensor (sensor added at runtime).
  ///@see SensorManager.DynamicSensorCallback
  bool isDynamicSensor() => jniAccessors.callMethodWithArgs(
      reference, _id_isDynamicSensor, jni.JniType.booleanType, []).boolean;

  static final _id_isAdditionalInfoSupported =
      jniAccessors.getMethodIDOf(_classRef, "isAdditionalInfoSupported", "()Z");

  /// from: public boolean isAdditionalInfoSupported()
  ///
  /// Returns true if the sensor supports sensor additional information API
  ///@return <code>true</code> if the sensor supports sensor additional information API
  ///@see SensorAdditionalInfo
  bool isAdditionalInfoSupported() => jniAccessors.callMethodWithArgs(reference,
      _id_isAdditionalInfoSupported, jni.JniType.booleanType, []).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}