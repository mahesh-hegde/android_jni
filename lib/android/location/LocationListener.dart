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

import "Location.dart" as location_;

import "../os/Bundle.dart" as bundle_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.location.LocationListener
///
/// Used for receiving notifications from the LocationManager when
/// the location has changed. These methods are called if the
/// LocationListener has been registered with the location manager service
/// using the LocationManager\#requestLocationUpdates(String, long, float, LocationListener)
/// method.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about identifying user location, read the
/// <a href="{@docRoot}guide/topics/location/obtaining-user-location.html">Obtaining User
/// Location</a> developer guide.
///
/// </div>
class LocationListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/location/LocationListener");
  LocationListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onLocationChanged = jniAccessors.getMethodIDOf(
      _classRef, "onLocationChanged", "(Landroid/location/Location;)V");

  /// from: public abstract void onLocationChanged(android.location.Location location)
  ///
  /// Called when the location has changed.
  ///
  ///  There are no restrictions on the use of the supplied Location object.
  ///@param location The new location, as a Location object.
  void onLocationChanged(location_.Location location) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLocationChanged,
          jni.JniType.voidType, [location.reference]).check();

  static final _id_onStatusChanged = jniAccessors.getMethodIDOf(_classRef,
      "onStatusChanged", "(Ljava/lang/String;ILandroid/os/Bundle;)V");

  /// from: public abstract void onStatusChanged(java.lang.String provider, int status, android.os.Bundle extras)
  ///
  /// Called when the provider status changes. This method is called when
  /// a provider is unable to fetch a location or if the provider has recently
  /// become available after a period of unavailability.
  ///@param provider the name of the location provider associated with this
  /// update.
  ///@param status LocationProvider\#OUT_OF_SERVICE if the
  /// provider is out of service, and this is not expected to change in the
  /// near future; LocationProvider\#TEMPORARILY_UNAVAILABLE if
  /// the provider is temporarily unavailable but is expected to be available
  /// shortly; and LocationProvider\#AVAILABLE if the
  /// provider is currently available.
  ///@param extras an optional Bundle which will contain provider specific
  /// status variables.
  ///
  ///  A number of common key/value pairs for the extras Bundle are listed
  /// below. Providers that use any of the keys on this list must
  /// provide the corresponding value as described below.
  ///
  /// <ul>
  /// <li> satellites - the number of satellites used to derive the fix
  /// </ul>
  void onStatusChanged(
          jni.JniString provider, int status, bundle_.Bundle extras) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onStatusChanged,
          jni.JniType.voidType,
          [provider.reference, status, extras.reference]).check();

  static final _id_onProviderEnabled = jniAccessors.getMethodIDOf(
      _classRef, "onProviderEnabled", "(Ljava/lang/String;)V");

  /// from: public abstract void onProviderEnabled(java.lang.String provider)
  ///
  /// Called when the provider is enabled by the user.
  ///@param provider the name of the location provider associated with this
  /// update.
  void onProviderEnabled(jni.JniString provider) =>
      jniAccessors.callMethodWithArgs(reference, _id_onProviderEnabled,
          jni.JniType.voidType, [provider.reference]).check();

  static final _id_onProviderDisabled = jniAccessors.getMethodIDOf(
      _classRef, "onProviderDisabled", "(Ljava/lang/String;)V");

  /// from: public abstract void onProviderDisabled(java.lang.String provider)
  ///
  /// Called when the provider is disabled by the user. If requestLocationUpdates
  /// is called on an already disabled provider, this method is called
  /// immediately.
  ///@param provider the name of the location provider associated with this
  /// update.
  void onProviderDisabled(jni.JniString provider) =>
      jniAccessors.callMethodWithArgs(reference, _id_onProviderDisabled,
          jni.JniType.voidType, [provider.reference]).check();
}
