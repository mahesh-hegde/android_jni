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

import "../content/Context.dart" as context_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.location.Geocoder
///
/// A class for handling geocoding and reverse geocoding.  Geocoding is
/// the process of transforming a street address or other description
/// of a location into a (latitude, longitude) coordinate.  Reverse
/// geocoding is the process of transforming a (latitude, longitude)
/// coordinate into a (partial) address.  The amount of detail in a
/// reverse geocoded location description may vary, for example one
/// might contain the full street address of the closest building, while
/// another might contain only a city name and postal code.
///
/// The Geocoder class requires a backend service that is not included in
/// the core android framework.  The Geocoder query methods will return an
/// empty list if there no backend service in the platform.  Use the
/// isPresent() method to determine whether a Geocoder implementation
/// exists.
class Geocoder extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/location/Geocoder");
  Geocoder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;Ljava/util/Locale;)V");

  /// from: public void <init>(android.content.Context context, java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a Geocoder whose responses will be localized for the
  /// given Locale.
  ///@param context the Context of the calling Activity
  ///@param locale the desired Locale for the query results
  ///@throws NullPointerException if Locale is null
  Geocoder(context_.Context context, jni.JniObject locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference, locale.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a Geocoder whose responses will be localized for the
  /// default system Locale.
  ///@param context the Context of the calling Activity
  Geocoder.ctor1(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference]).object);

  static final _id_isPresent =
      jniAccessors.getStaticMethodIDOf(_classRef, "isPresent", "()Z");

  /// from: static public boolean isPresent()
  ///
  /// Returns true if the Geocoder methods getFromLocation and
  /// getFromLocationName are implemented.  Lack of network
  /// connectivity may still cause these methods to return null or
  /// empty lists.
  static bool isPresent() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_isPresent, jni.JniType.booleanType, []).boolean;

  static final _id_getFromLocation = jniAccessors.getMethodIDOf(
      _classRef, "getFromLocation", "(DDI)Ljava/util/List;");

  /// from: public java.util.List<android.location.Address> getFromLocation(double latitude, double longitude, int maxResults)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an array of Addresses that are known to describe the
  /// area immediately surrounding the given latitude and longitude.
  /// The returned addresses will be localized for the locale
  /// provided to this class's constructor.
  ///
  ///  The returned values may be obtained by means of a network lookup.
  /// The results are a best guess and are not guaranteed to be meaningful or
  /// correct. It may be useful to call this method from a thread separate from your
  /// primary UI thread.
  ///@param latitude the latitude a point for the search
  ///@param longitude the longitude a point for the search
  ///@param maxResults max number of addresses to return. Smaller numbers (1 to 5) are recommended
  ///@return a list of Address objects. Returns null or empty list if no matches were
  /// found or there is no backend service available.
  ///@throws IllegalArgumentException if latitude is
  /// less than -90 or greater than 90
  ///@throws IllegalArgumentException if longitude is
  /// less than -180 or greater than 180
  ///@throws IOException if the network is unavailable or any other
  /// I/O problem occurs
  jni.JniObject getFromLocation(
          double latitude, double longitude, int maxResults) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getFromLocation,
          jni.JniType.objectType,
          [latitude, longitude, maxResults]).object);

  static final _id_getFromLocationName = jniAccessors.getMethodIDOf(_classRef,
      "getFromLocationName", "(Ljava/lang/String;I)Ljava/util/List;");

  /// from: public java.util.List<android.location.Address> getFromLocationName(java.lang.String locationName, int maxResults)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an array of Addresses that are known to describe the
  /// named location, which may be a place name such as "Dalvik,
  /// Iceland", an address such as "1600 Amphitheatre Parkway,
  /// Mountain View, CA", an airport code such as "SFO", etc..  The
  /// returned addresses will be localized for the locale provided to
  /// this class's constructor.
  ///
  ///  The query will block and returned values will be obtained by means of a network lookup.
  /// The results are a best guess and are not guaranteed to be meaningful or
  /// correct. It may be useful to call this method from a thread separate from your
  /// primary UI thread.
  ///@param locationName a user-supplied description of a location
  ///@param maxResults max number of results to return. Smaller numbers (1 to 5) are recommended
  ///@return a list of Address objects. Returns null or empty list if no matches were
  /// found or there is no backend service available.
  ///@throws IllegalArgumentException if locationName is null
  ///@throws IOException if the network is unavailable or any other
  /// I/O problem occurs
  jni.JniObject getFromLocationName(
          jni.JniString locationName, int maxResults) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getFromLocationName,
          jni.JniType.objectType,
          [locationName.reference, maxResults]).object);

  static final _id_getFromLocationName1 = jniAccessors.getMethodIDOf(_classRef,
      "getFromLocationName", "(Ljava/lang/String;IDDDD)Ljava/util/List;");

  /// from: public java.util.List<android.location.Address> getFromLocationName(java.lang.String locationName, int maxResults, double lowerLeftLatitude, double lowerLeftLongitude, double upperRightLatitude, double upperRightLongitude)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an array of Addresses that are known to describe the
  /// named location, which may be a place name such as "Dalvik,
  /// Iceland", an address such as "1600 Amphitheatre Parkway,
  /// Mountain View, CA", an airport code such as "SFO", etc..  The
  /// returned addresses will be localized for the locale provided to
  /// this class's constructor.
  ///
  ///  You may specify a bounding box for the search results by including
  /// the Latitude and Longitude of the Lower Left point and Upper Right
  /// point of the box.
  ///
  ///  The query will block and returned values will be obtained by means of a network lookup.
  /// The results are a best guess and are not guaranteed to be meaningful or
  /// correct. It may be useful to call this method from a thread separate from your
  /// primary UI thread.
  ///@param locationName a user-supplied description of a location
  ///@param maxResults max number of addresses to return. Smaller numbers (1 to 5) are recommended
  ///@param lowerLeftLatitude the latitude of the lower left corner of the bounding box
  ///@param lowerLeftLongitude the longitude of the lower left corner of the bounding box
  ///@param upperRightLatitude the latitude of the upper right corner of the bounding box
  ///@param upperRightLongitude the longitude of the upper right corner of the bounding box
  ///@return a list of Address objects. Returns null or empty list if no matches were
  /// found or there is no backend service available.
  ///@throws IllegalArgumentException if locationName is null
  ///@throws IllegalArgumentException if any latitude is
  /// less than -90 or greater than 90
  ///@throws IllegalArgumentException if any longitude is
  /// less than -180 or greater than 180
  ///@throws IOException if the network is unavailable or any other
  /// I/O problem occurs
  jni.JniObject getFromLocationName1(
          jni.JniString locationName,
          int maxResults,
          double lowerLeftLatitude,
          double lowerLeftLongitude,
          double upperRightLatitude,
          double upperRightLongitude) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFromLocationName1, jni.JniType.objectType, [
        locationName.reference,
        maxResults,
        lowerLeftLatitude,
        lowerLeftLongitude,
        upperRightLatitude,
        upperRightLongitude
      ]).object);
}
