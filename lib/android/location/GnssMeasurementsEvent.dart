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

import "GnssClock.dart" as gnssclock_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.location.GnssMeasurementsEvent
///
/// A class implementing a container for data associated with a measurement event.
/// Events are delivered to registered instances of Callback.
class GnssMeasurementsEvent extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/location/GnssMeasurementsEvent");
  GnssMeasurementsEvent.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.location.GnssMeasurementsEvent> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getClock = jniAccessors.getMethodIDOf(
      _classRef, "getClock", "()Landroid/location/GnssClock;");

  /// from: public android.location.GnssClock getClock()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the GNSS receiver clock information associated with the measurements for the current
  /// event.
  ///@return This value will never be {@code null}.
  gnssclock_.GnssClock getClock() =>
      gnssclock_.GnssClock.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getClock, jni.JniType.objectType, []).object);

  static final _id_getMeasurements = jniAccessors.getMethodIDOf(
      _classRef, "getMeasurements", "()Ljava/util/Collection;");

  /// from: public java.util.Collection<android.location.GnssMeasurement> getMeasurements()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets a read-only collection of measurements associated with the current event.
  ///@return This value will never be {@code null}.
  jni.JniObject getMeasurements() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMeasurements, jni.JniType.objectType, []).object);

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

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.location.GnssMeasurementsEvent$Callback
///
/// Used for receiving GNSS satellite measurements from the GNSS engine.
/// Each measurement contains raw and computed data identifying a satellite.
/// You can implement this interface and call
/// LocationManager\#registerGnssMeasurementsCallback.
class GnssMeasurementsEvent_Callback extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/location/GnssMeasurementsEvent\$Callback");
  GnssMeasurementsEvent_Callback.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int STATUS_LOCATION_DISABLED
  ///
  /// GPS provider or Location is disabled, updates will not be received until they are
  /// enabled.
  static const STATUS_LOCATION_DISABLED = 2;

  /// from: static public final int STATUS_NOT_ALLOWED
  ///
  /// The client is not allowed to register for GNSS Measurements in general or in the
  /// requested mode.
  ///
  /// Such a status is returned when a client tries to request a functionality from the GNSS
  /// chipset while another client has an ongoing request that does not allow such
  /// functionality to be performed.
  ///
  /// If such a status is received, one would try again at a later time point where no
  /// other client is having a conflicting request.
  static const STATUS_NOT_ALLOWED = 3;

  /// from: static public final int STATUS_NOT_SUPPORTED
  ///
  /// The system does not support tracking of GNSS Measurements.
  ///
  /// This status will not change in the future.
  static const STATUS_NOT_SUPPORTED = 0;

  /// from: static public final int STATUS_READY
  ///
  /// GNSS Measurements are successfully being tracked, it will receive updates once they are
  /// available.
  static const STATUS_READY = 1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  GnssMeasurementsEvent_Callback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onGnssMeasurementsReceived = jniAccessors.getMethodIDOf(
      _classRef,
      "onGnssMeasurementsReceived",
      "(Landroid/location/GnssMeasurementsEvent;)V");

  /// from: public void onGnssMeasurementsReceived(android.location.GnssMeasurementsEvent eventArgs)
  ///
  /// Reports the latest collected GNSS Measurements.
  void onGnssMeasurementsReceived(GnssMeasurementsEvent eventArgs) =>
      jniAccessors.callMethodWithArgs(reference, _id_onGnssMeasurementsReceived,
          jni.JniType.voidType, [eventArgs.reference]).check();

  static final _id_onStatusChanged =
      jniAccessors.getMethodIDOf(_classRef, "onStatusChanged", "(I)V");

  /// from: public void onStatusChanged(int status)
  ///
  /// Reports the latest status of the GNSS Measurements sub-system.
  ///@param status Value is android.location.GnssMeasurementsEvent.Callback\#STATUS_NOT_SUPPORTED, android.location.GnssMeasurementsEvent.Callback\#STATUS_READY, android.location.GnssMeasurementsEvent.Callback\#STATUS_LOCATION_DISABLED, or android.location.GnssMeasurementsEvent.Callback\#STATUS_NOT_ALLOWED
  void onStatusChanged(int status) => jniAccessors.callMethodWithArgs(
      reference, _id_onStatusChanged, jni.JniType.voidType, [status]).check();
}
