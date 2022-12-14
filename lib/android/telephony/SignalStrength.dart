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

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.SignalStrength
///
/// Contains phone signal strength related information.
class SignalStrength extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/SignalStrength");
  SignalStrength.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  ///
  /// Parcelable\#writeToParcel
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  ///
  /// Parcelable\#describeContents
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_getGsmSignalStrength =
      jniAccessors.getMethodIDOf(_classRef, "getGsmSignalStrength", "()I");

  /// from: public int getGsmSignalStrength()
  ///
  /// Get the GSM Signal Strength, valid values are (0-31, 99) as defined in TS
  /// 27.007 8.5
  int getGsmSignalStrength() => jniAccessors.callMethodWithArgs(
      reference, _id_getGsmSignalStrength, jni.JniType.intType, []).integer;

  static final _id_getGsmBitErrorRate =
      jniAccessors.getMethodIDOf(_classRef, "getGsmBitErrorRate", "()I");

  /// from: public int getGsmBitErrorRate()
  ///
  /// Get the GSM bit error rate (0-7, 99) as defined in TS 27.007 8.5
  int getGsmBitErrorRate() => jniAccessors.callMethodWithArgs(
      reference, _id_getGsmBitErrorRate, jni.JniType.intType, []).integer;

  static final _id_getCdmaDbm =
      jniAccessors.getMethodIDOf(_classRef, "getCdmaDbm", "()I");

  /// from: public int getCdmaDbm()
  ///
  /// Get the CDMA RSSI value in dBm
  int getCdmaDbm() => jniAccessors.callMethodWithArgs(
      reference, _id_getCdmaDbm, jni.JniType.intType, []).integer;

  static final _id_getCdmaEcio =
      jniAccessors.getMethodIDOf(_classRef, "getCdmaEcio", "()I");

  /// from: public int getCdmaEcio()
  ///
  /// Get the CDMA Ec/Io value in dB*10
  int getCdmaEcio() => jniAccessors.callMethodWithArgs(
      reference, _id_getCdmaEcio, jni.JniType.intType, []).integer;

  static final _id_getEvdoDbm =
      jniAccessors.getMethodIDOf(_classRef, "getEvdoDbm", "()I");

  /// from: public int getEvdoDbm()
  ///
  /// Get the EVDO RSSI value in dBm
  int getEvdoDbm() => jniAccessors.callMethodWithArgs(
      reference, _id_getEvdoDbm, jni.JniType.intType, []).integer;

  static final _id_getEvdoEcio =
      jniAccessors.getMethodIDOf(_classRef, "getEvdoEcio", "()I");

  /// from: public int getEvdoEcio()
  ///
  /// Get the EVDO Ec/Io value in dB*10
  int getEvdoEcio() => jniAccessors.callMethodWithArgs(
      reference, _id_getEvdoEcio, jni.JniType.intType, []).integer;

  static final _id_getEvdoSnr =
      jniAccessors.getMethodIDOf(_classRef, "getEvdoSnr", "()I");

  /// from: public int getEvdoSnr()
  ///
  /// Get the signal to noise ratio. Valid values are 0-8. 8 is the highest.
  int getEvdoSnr() => jniAccessors.callMethodWithArgs(
      reference, _id_getEvdoSnr, jni.JniType.intType, []).integer;

  static final _id_getLevel =
      jniAccessors.getMethodIDOf(_classRef, "getLevel", "()I");

  /// from: public int getLevel()
  ///
  /// Retrieve an abstract level value for the overall signal strength.
  ///@return a single integer from 0 to 4 representing the general signal quality.
  ///     This may take into account many different radio technology inputs.
  ///     0 represents very poor signal strength
  ///     while 4 represents a very strong signal strength.
  int getLevel() => jniAccessors.callMethodWithArgs(
      reference, _id_getLevel, jni.JniType.intType, []).integer;

  static final _id_isGsm =
      jniAccessors.getMethodIDOf(_classRef, "isGsm", "()Z");

  /// from: public boolean isGsm()
  ///
  /// @return true if this is for GSM
  bool isGsm() => jniAccessors.callMethodWithArgs(
      reference, _id_isGsm, jni.JniType.booleanType, []).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// @return hash code
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  ///
  /// @return true if the signal strengths are the same
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return string representation.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
