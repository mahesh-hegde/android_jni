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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.location.GpsStatus
///
/// This class represents the current state of the GPS engine.
///
/// This class is used in conjunction with the Listener interface.
///@deprecated use GnssStatus and GnssStatus.Callback.
class GpsStatus extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/location/GpsStatus");
  GpsStatus.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int GPS_EVENT_FIRST_FIX
  ///
  /// Event sent when the GPS system has received its first fix since starting.
  /// Call \#getTimeToFirstFix() to find the time from start to first fix.
  static const GPS_EVENT_FIRST_FIX = 3;

  /// from: static public final int GPS_EVENT_SATELLITE_STATUS
  ///
  /// Event sent periodically to report GPS satellite status.
  /// Call \#getSatellites() to retrieve the status for each satellite.
  static const GPS_EVENT_SATELLITE_STATUS = 4;

  /// from: static public final int GPS_EVENT_STARTED
  ///
  /// Event sent when the GPS system has started.
  static const GPS_EVENT_STARTED = 1;

  /// from: static public final int GPS_EVENT_STOPPED
  ///
  /// Event sent when the GPS system has stopped.
  static const GPS_EVENT_STOPPED = 2;

  static final _id_getTimeToFirstFix =
      jniAccessors.getMethodIDOf(_classRef, "getTimeToFirstFix", "()I");

  /// from: public int getTimeToFirstFix()
  ///
  /// Returns the time required to receive the first fix since the most recent
  /// restart of the GPS engine.
  ///@return time to first fix in milliseconds
  int getTimeToFirstFix() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimeToFirstFix, jni.JniType.intType, []).integer;

  static final _id_getSatellites = jniAccessors.getMethodIDOf(
      _classRef, "getSatellites", "()Ljava/lang/Iterable;");

  /// from: public java.lang.Iterable<android.location.GpsSatellite> getSatellites()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an array of GpsSatellite objects, which represent the
  /// current state of the GPS engine.
  ///@return the list of satellites
  jni.JniObject getSatellites() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSatellites, jni.JniType.objectType, []).object);

  static final _id_getMaxSatellites =
      jniAccessors.getMethodIDOf(_classRef, "getMaxSatellites", "()I");

  /// from: public int getMaxSatellites()
  ///
  /// Returns the maximum number of satellites that can be in the satellite
  /// list that can be returned by \#getSatellites().
  ///@return the maximum number of satellites
  int getMaxSatellites() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxSatellites, jni.JniType.intType, []).integer;
}

/// from: android.location.GpsStatus$NmeaListener
///
/// Used for receiving NMEA sentences from the GPS.
/// NMEA 0183 is a standard for communicating with marine electronic devices
/// and is a common method for receiving data from a GPS, typically over a serial port.
/// See <a href="http://en.wikipedia.org/wiki/NMEA_0183">NMEA 0183</a> for more details.
/// You can implement this interface and call LocationManager\#addNmeaListener
/// to receive NMEA data from the GPS engine.
///@deprecated use OnNmeaMessageListener instead.
class GpsStatus_NmeaListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/location/GpsStatus\$NmeaListener");
  GpsStatus_NmeaListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onNmeaReceived = jniAccessors.getMethodIDOf(
      _classRef, "onNmeaReceived", "(JLjava/lang/String;)V");

  /// from: public abstract void onNmeaReceived(long timestamp, java.lang.String nmea)
  void onNmeaReceived(int timestamp, jni.JniString nmea) =>
      jniAccessors.callMethodWithArgs(reference, _id_onNmeaReceived,
          jni.JniType.voidType, [timestamp, nmea.reference]).check();
}

/// from: android.location.GpsStatus$Listener
///
/// Used for receiving notifications when GPS status has changed.
///@deprecated use GnssStatus.Callback instead.
class GpsStatus_Listener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/location/GpsStatus\$Listener");
  GpsStatus_Listener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onGpsStatusChanged =
      jniAccessors.getMethodIDOf(_classRef, "onGpsStatusChanged", "(I)V");

  /// from: public abstract void onGpsStatusChanged(int event)
  ///
  /// Called to report changes in the GPS status.
  /// The event number is one of:
  /// <ul>
  /// <li> GpsStatus\#GPS_EVENT_STARTED
  /// <li> GpsStatus\#GPS_EVENT_STOPPED
  /// <li> GpsStatus\#GPS_EVENT_FIRST_FIX
  /// <li> GpsStatus\#GPS_EVENT_SATELLITE_STATUS
  /// </ul>
  ///
  /// When this method is called, the client should call
  /// LocationManager\#getGpsStatus to get additional
  /// status information.
  ///@param event event number for this notification
  void onGpsStatusChanged(int event) => jniAccessors.callMethodWithArgs(
      reference, _id_onGpsStatusChanged, jni.JniType.voidType, [event]).check();
}
