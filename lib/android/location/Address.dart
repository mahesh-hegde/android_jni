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

import "../os/Parcelable.dart" as parcelable_;

import "../os/Bundle.dart" as bundle_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.location.Address
///
/// A class representing an Address, i.e, a set of Strings describing a location.
///
/// The address format is a simplified version of xAL (eXtensible Address Language)
/// http://www.oasis-open.org/committees/ciq/ciq.html\#6
class Address extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/location/Address");
  Address.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.location.Address> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/Locale;)V");

  /// from: public void <init>(java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new Address object set to the given Locale and with all
  /// other fields initialized to null or false.
  Address(jni.JniObject locale)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [locale.reference]).object);

  static final _id_getLocale = jniAccessors.getMethodIDOf(
      _classRef, "getLocale", "()Ljava/util/Locale;");

  /// from: public java.util.Locale getLocale()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the Locale associated with this address.
  jni.JniObject getLocale() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocale, jni.JniType.objectType, []).object);

  static final _id_getMaxAddressLineIndex =
      jniAccessors.getMethodIDOf(_classRef, "getMaxAddressLineIndex", "()I");

  /// from: public int getMaxAddressLineIndex()
  ///
  /// Returns the largest index currently in use to specify an address line.
  /// If no address lines are specified, -1 is returned.
  int getMaxAddressLineIndex() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxAddressLineIndex, jni.JniType.intType, []).integer;

  static final _id_getAddressLine = jniAccessors.getMethodIDOf(
      _classRef, "getAddressLine", "(I)Ljava/lang/String;");

  /// from: public java.lang.String getAddressLine(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a line of the address numbered by the given index
  /// (starting at 0), or null if no such line is present.
  ///@throws IllegalArgumentException if index < 0
  jni.JniString getAddressLine(int index) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAddressLine, jni.JniType.objectType, [index]).object);

  static final _id_setAddressLine = jniAccessors.getMethodIDOf(
      _classRef, "setAddressLine", "(ILjava/lang/String;)V");

  /// from: public void setAddressLine(int index, java.lang.String line)
  ///
  /// Sets the line of the address numbered by index (starting at 0) to the
  /// given String, which may be null.
  ///@throws IllegalArgumentException if index < 0
  void setAddressLine(int index, jni.JniString line) =>
      jniAccessors.callMethodWithArgs(reference, _id_setAddressLine,
          jni.JniType.voidType, [index, line.reference]).check();

  static final _id_getFeatureName = jniAccessors.getMethodIDOf(
      _classRef, "getFeatureName", "()Ljava/lang/String;");

  /// from: public java.lang.String getFeatureName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the feature name of the address, for example, "Golden Gate Bridge", or null
  /// if it is unknown
  jni.JniString getFeatureName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFeatureName, jni.JniType.objectType, []).object);

  static final _id_setFeatureName = jniAccessors.getMethodIDOf(
      _classRef, "setFeatureName", "(Ljava/lang/String;)V");

  /// from: public void setFeatureName(java.lang.String featureName)
  ///
  /// Sets the feature name of the address to the given String, which may be null
  void setFeatureName(jni.JniString featureName) =>
      jniAccessors.callMethodWithArgs(reference, _id_setFeatureName,
          jni.JniType.voidType, [featureName.reference]).check();

  static final _id_getAdminArea = jniAccessors.getMethodIDOf(
      _classRef, "getAdminArea", "()Ljava/lang/String;");

  /// from: public java.lang.String getAdminArea()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the administrative area name of the address, for example, "CA", or null if
  /// it is unknown
  jni.JniString getAdminArea() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAdminArea, jni.JniType.objectType, []).object);

  static final _id_setAdminArea = jniAccessors.getMethodIDOf(
      _classRef, "setAdminArea", "(Ljava/lang/String;)V");

  /// from: public void setAdminArea(java.lang.String adminArea)
  ///
  /// Sets the administrative area name of the address to the given String, which may be null
  void setAdminArea(jni.JniString adminArea) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setAdminArea,
      jni.JniType.voidType,
      [adminArea.reference]).check();

  static final _id_getSubAdminArea = jniAccessors.getMethodIDOf(
      _classRef, "getSubAdminArea", "()Ljava/lang/String;");

  /// from: public java.lang.String getSubAdminArea()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the sub-administrative area name of the address, for example, "Santa Clara County",
  /// or null if it is unknown
  jni.JniString getSubAdminArea() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSubAdminArea, jni.JniType.objectType, []).object);

  static final _id_setSubAdminArea = jniAccessors.getMethodIDOf(
      _classRef, "setSubAdminArea", "(Ljava/lang/String;)V");

  /// from: public void setSubAdminArea(java.lang.String subAdminArea)
  ///
  /// Sets the sub-administrative area name of the address to the given String, which may be null
  void setSubAdminArea(jni.JniString subAdminArea) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSubAdminArea,
          jni.JniType.voidType, [subAdminArea.reference]).check();

  static final _id_getLocality = jniAccessors.getMethodIDOf(
      _classRef, "getLocality", "()Ljava/lang/String;");

  /// from: public java.lang.String getLocality()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the locality of the address, for example "Mountain View", or null if it is unknown.
  jni.JniString getLocality() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocality, jni.JniType.objectType, []).object);

  static final _id_setLocality = jniAccessors.getMethodIDOf(
      _classRef, "setLocality", "(Ljava/lang/String;)V");

  /// from: public void setLocality(java.lang.String locality)
  ///
  /// Sets the locality of the address to the given String, which may be null.
  void setLocality(jni.JniString locality) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setLocality,
      jni.JniType.voidType,
      [locality.reference]).check();

  static final _id_getSubLocality = jniAccessors.getMethodIDOf(
      _classRef, "getSubLocality", "()Ljava/lang/String;");

  /// from: public java.lang.String getSubLocality()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the sub-locality of the address, or null if it is unknown.
  /// For example, this may correspond to the neighborhood of the locality.
  jni.JniString getSubLocality() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSubLocality, jni.JniType.objectType, []).object);

  static final _id_setSubLocality = jniAccessors.getMethodIDOf(
      _classRef, "setSubLocality", "(Ljava/lang/String;)V");

  /// from: public void setSubLocality(java.lang.String sublocality)
  ///
  /// Sets the sub-locality of the address to the given String, which may be null.
  void setSubLocality(jni.JniString sublocality) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSubLocality,
          jni.JniType.voidType, [sublocality.reference]).check();

  static final _id_getThoroughfare = jniAccessors.getMethodIDOf(
      _classRef, "getThoroughfare", "()Ljava/lang/String;");

  /// from: public java.lang.String getThoroughfare()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the thoroughfare name of the address, for example, "1600 Ampitheater Parkway",
  /// which may be null
  jni.JniString getThoroughfare() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getThoroughfare, jni.JniType.objectType, []).object);

  static final _id_setThoroughfare = jniAccessors.getMethodIDOf(
      _classRef, "setThoroughfare", "(Ljava/lang/String;)V");

  /// from: public void setThoroughfare(java.lang.String thoroughfare)
  ///
  /// Sets the thoroughfare name of the address, which may be null.
  void setThoroughfare(jni.JniString thoroughfare) =>
      jniAccessors.callMethodWithArgs(reference, _id_setThoroughfare,
          jni.JniType.voidType, [thoroughfare.reference]).check();

  static final _id_getSubThoroughfare = jniAccessors.getMethodIDOf(
      _classRef, "getSubThoroughfare", "()Ljava/lang/String;");

  /// from: public java.lang.String getSubThoroughfare()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the sub-thoroughfare name of the address, which may be null.
  /// This may correspond to the street number of the address.
  jni.JniString getSubThoroughfare() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getSubThoroughfare, jni.JniType.objectType, []).object);

  static final _id_setSubThoroughfare = jniAccessors.getMethodIDOf(
      _classRef, "setSubThoroughfare", "(Ljava/lang/String;)V");

  /// from: public void setSubThoroughfare(java.lang.String subthoroughfare)
  ///
  /// Sets the sub-thoroughfare name of the address, which may be null.
  void setSubThoroughfare(jni.JniString subthoroughfare) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSubThoroughfare,
          jni.JniType.voidType, [subthoroughfare.reference]).check();

  static final _id_getPremises = jniAccessors.getMethodIDOf(
      _classRef, "getPremises", "()Ljava/lang/String;");

  /// from: public java.lang.String getPremises()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the premises of the address, or null if it is unknown.
  jni.JniString getPremises() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPremises, jni.JniType.objectType, []).object);

  static final _id_setPremises = jniAccessors.getMethodIDOf(
      _classRef, "setPremises", "(Ljava/lang/String;)V");

  /// from: public void setPremises(java.lang.String premises)
  ///
  /// Sets the premises of the address to the given String, which may be null.
  void setPremises(jni.JniString premises) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setPremises,
      jni.JniType.voidType,
      [premises.reference]).check();

  static final _id_getPostalCode = jniAccessors.getMethodIDOf(
      _classRef, "getPostalCode", "()Ljava/lang/String;");

  /// from: public java.lang.String getPostalCode()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the postal code of the address, for example "94110",
  /// or null if it is unknown.
  jni.JniString getPostalCode() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPostalCode, jni.JniType.objectType, []).object);

  static final _id_setPostalCode = jniAccessors.getMethodIDOf(
      _classRef, "setPostalCode", "(Ljava/lang/String;)V");

  /// from: public void setPostalCode(java.lang.String postalCode)
  ///
  /// Sets the postal code of the address to the given String, which may
  /// be null.
  void setPostalCode(jni.JniString postalCode) =>
      jniAccessors.callMethodWithArgs(reference, _id_setPostalCode,
          jni.JniType.voidType, [postalCode.reference]).check();

  static final _id_getCountryCode = jniAccessors.getMethodIDOf(
      _classRef, "getCountryCode", "()Ljava/lang/String;");

  /// from: public java.lang.String getCountryCode()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the country code of the address, for example "US",
  /// or null if it is unknown.
  jni.JniString getCountryCode() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCountryCode, jni.JniType.objectType, []).object);

  static final _id_setCountryCode = jniAccessors.getMethodIDOf(
      _classRef, "setCountryCode", "(Ljava/lang/String;)V");

  /// from: public void setCountryCode(java.lang.String countryCode)
  ///
  /// Sets the country code of the address to the given String, which may
  /// be null.
  void setCountryCode(jni.JniString countryCode) =>
      jniAccessors.callMethodWithArgs(reference, _id_setCountryCode,
          jni.JniType.voidType, [countryCode.reference]).check();

  static final _id_getCountryName = jniAccessors.getMethodIDOf(
      _classRef, "getCountryName", "()Ljava/lang/String;");

  /// from: public java.lang.String getCountryName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the localized country name of the address, for example "Iceland",
  /// or null if it is unknown.
  jni.JniString getCountryName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCountryName, jni.JniType.objectType, []).object);

  static final _id_setCountryName = jniAccessors.getMethodIDOf(
      _classRef, "setCountryName", "(Ljava/lang/String;)V");

  /// from: public void setCountryName(java.lang.String countryName)
  ///
  /// Sets the country name of the address to the given String, which may
  /// be null.
  void setCountryName(jni.JniString countryName) =>
      jniAccessors.callMethodWithArgs(reference, _id_setCountryName,
          jni.JniType.voidType, [countryName.reference]).check();

  static final _id_hasLatitude =
      jniAccessors.getMethodIDOf(_classRef, "hasLatitude", "()Z");

  /// from: public boolean hasLatitude()
  ///
  /// Returns true if a latitude has been assigned to this Address,
  /// false otherwise.
  bool hasLatitude() => jniAccessors.callMethodWithArgs(
      reference, _id_hasLatitude, jni.JniType.booleanType, []).boolean;

  static final _id_getLatitude =
      jniAccessors.getMethodIDOf(_classRef, "getLatitude", "()D");

  /// from: public double getLatitude()
  ///
  /// Returns the latitude of the address if known.
  ///@throws IllegalStateException if this Address has not been assigned
  /// a latitude.
  double getLatitude() => jniAccessors.callMethodWithArgs(
      reference, _id_getLatitude, jni.JniType.doubleType, []).doubleFloat;

  static final _id_setLatitude =
      jniAccessors.getMethodIDOf(_classRef, "setLatitude", "(D)V");

  /// from: public void setLatitude(double latitude)
  ///
  /// Sets the latitude associated with this address.
  void setLatitude(double latitude) => jniAccessors.callMethodWithArgs(
      reference, _id_setLatitude, jni.JniType.voidType, [latitude]).check();

  static final _id_clearLatitude =
      jniAccessors.getMethodIDOf(_classRef, "clearLatitude", "()V");

  /// from: public void clearLatitude()
  ///
  /// Removes any latitude associated with this address.
  void clearLatitude() => jniAccessors.callMethodWithArgs(
      reference, _id_clearLatitude, jni.JniType.voidType, []).check();

  static final _id_hasLongitude =
      jniAccessors.getMethodIDOf(_classRef, "hasLongitude", "()Z");

  /// from: public boolean hasLongitude()
  ///
  /// Returns true if a longitude has been assigned to this Address,
  /// false otherwise.
  bool hasLongitude() => jniAccessors.callMethodWithArgs(
      reference, _id_hasLongitude, jni.JniType.booleanType, []).boolean;

  static final _id_getLongitude =
      jniAccessors.getMethodIDOf(_classRef, "getLongitude", "()D");

  /// from: public double getLongitude()
  ///
  /// Returns the longitude of the address if known.
  ///@throws IllegalStateException if this Address has not been assigned
  /// a longitude.
  double getLongitude() => jniAccessors.callMethodWithArgs(
      reference, _id_getLongitude, jni.JniType.doubleType, []).doubleFloat;

  static final _id_setLongitude =
      jniAccessors.getMethodIDOf(_classRef, "setLongitude", "(D)V");

  /// from: public void setLongitude(double longitude)
  ///
  /// Sets the longitude associated with this address.
  void setLongitude(double longitude) => jniAccessors.callMethodWithArgs(
      reference, _id_setLongitude, jni.JniType.voidType, [longitude]).check();

  static final _id_clearLongitude =
      jniAccessors.getMethodIDOf(_classRef, "clearLongitude", "()V");

  /// from: public void clearLongitude()
  ///
  /// Removes any longitude associated with this address.
  void clearLongitude() => jniAccessors.callMethodWithArgs(
      reference, _id_clearLongitude, jni.JniType.voidType, []).check();

  static final _id_getPhone =
      jniAccessors.getMethodIDOf(_classRef, "getPhone", "()Ljava/lang/String;");

  /// from: public java.lang.String getPhone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the phone number of the address if known,
  /// or null if it is unknown.
  ///@throws IllegalStateException if this Address has not been assigned
  /// a latitude.
  jni.JniString getPhone() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPhone, jni.JniType.objectType, []).object);

  static final _id_setPhone = jniAccessors.getMethodIDOf(
      _classRef, "setPhone", "(Ljava/lang/String;)V");

  /// from: public void setPhone(java.lang.String phone)
  ///
  /// Sets the phone number associated with this address.
  void setPhone(jni.JniString phone) => jniAccessors.callMethodWithArgs(
      reference, _id_setPhone, jni.JniType.voidType, [phone.reference]).check();

  static final _id_getUrl =
      jniAccessors.getMethodIDOf(_classRef, "getUrl", "()Ljava/lang/String;");

  /// from: public java.lang.String getUrl()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the public URL for the address if known,
  /// or null if it is unknown.
  jni.JniString getUrl() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUrl, jni.JniType.objectType, []).object);

  static final _id_setUrl =
      jniAccessors.getMethodIDOf(_classRef, "setUrl", "(Ljava/lang/String;)V");

  /// from: public void setUrl(java.lang.String Url)
  ///
  /// Sets the public URL associated with this address.
  void setUrl(jni.JniString Url) => jniAccessors.callMethodWithArgs(
      reference, _id_setUrl, jni.JniType.voidType, [Url.reference]).check();

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns additional provider-specific information about the
  /// address as a Bundle.  The keys and values are determined
  /// by the provider.  If no additional information is available,
  /// null is returned.
  ///
  /// <!--
  ///  A number of common key/value pairs are listed
  /// below. Providers that use any of the keys on this list must
  /// provide the corresponding value as described below.
  ///
  /// <ul>
  /// </ul>
  /// -->
  bundle_.Bundle getExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_setExtras = jniAccessors.getMethodIDOf(
      _classRef, "setExtras", "(Landroid/os/Bundle;)V");

  /// from: public void setExtras(android.os.Bundle extras)
  ///
  /// Sets the extra information associated with this fix to the
  /// given Bundle.
  void setExtras(bundle_.Bundle extras) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setExtras,
      jni.JniType.voidType,
      [extras.reference]).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel parcel, int flags)
  void writeToParcel(parcel_.Parcel parcel, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [parcel.reference, flags]).check();
}
