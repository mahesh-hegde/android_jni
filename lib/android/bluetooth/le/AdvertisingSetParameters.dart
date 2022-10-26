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

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.le.AdvertisingSetParameters
///
/// The AdvertisingSetParameters provide a way to adjust advertising
/// preferences for each
/// Bluetooth LE advertising set. Use AdvertisingSetParameters.Builder to
/// create an
/// instance of this class.
class AdvertisingSetParameters extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/le/AdvertisingSetParameters");
  AdvertisingSetParameters.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.bluetooth.le.AdvertisingSetParameters> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int INTERVAL_HIGH
  ///
  /// Advertise on low frequency, around every 1000ms. This is the default and
  /// preferred advertising mode as it consumes the least power.
  static const INTERVAL_HIGH = 1600;

  /// from: static public final int INTERVAL_LOW
  ///
  /// Perform high frequency, low latency advertising, around every 100ms. This
  /// has the highest power consumption and should not be used for continuous
  /// background advertising.
  static const INTERVAL_LOW = 160;

  /// from: static public final int INTERVAL_MAX
  ///
  /// Maximum value for advertising interval.
  static const INTERVAL_MAX = 16777215;

  /// from: static public final int INTERVAL_MEDIUM
  ///
  /// Advertise on medium frequency, around every 250ms. This is balanced
  /// between advertising frequency and power consumption.
  static const INTERVAL_MEDIUM = 400;

  /// from: static public final int INTERVAL_MIN
  ///
  /// Minimum value for advertising interval.
  static const INTERVAL_MIN = 160;

  /// from: static public final int TX_POWER_HIGH
  ///
  /// Advertise using high TX power level. This corresponds to largest visibility
  /// range of the advertising packet.
  static const TX_POWER_HIGH = 1;

  /// from: static public final int TX_POWER_LOW
  ///
  /// Advertise using low TX power level.
  static const TX_POWER_LOW = -15;

  /// from: static public final int TX_POWER_MAX
  ///
  /// Maximum value for TX power.
  static const TX_POWER_MAX = 1;

  /// from: static public final int TX_POWER_MEDIUM
  ///
  /// Advertise using medium TX power level.
  static const TX_POWER_MEDIUM = -7;

  /// from: static public final int TX_POWER_MIN
  ///
  /// Minimum value for TX power.
  static const TX_POWER_MIN = -127;

  /// from: static public final int TX_POWER_ULTRA_LOW
  ///
  /// Advertise using the lowest transmission (TX) power level. Low transmission
  /// power can be used to restrict the visibility range of advertising packets.
  static const TX_POWER_ULTRA_LOW = -21;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AdvertisingSetParameters(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [in0.reference]).object);

  static final _id_isConnectable =
      jniAccessors.getMethodIDOf(_classRef, "isConnectable", "()Z");

  /// from: public boolean isConnectable()
  ///
  /// Returns whether the advertisement will be connectable.
  bool isConnectable() => jniAccessors.callMethodWithArgs(
      reference, _id_isConnectable, jni.JniType.booleanType, []).boolean;

  static final _id_isScannable =
      jniAccessors.getMethodIDOf(_classRef, "isScannable", "()Z");

  /// from: public boolean isScannable()
  ///
  /// Returns whether the advertisement will be scannable.
  bool isScannable() => jniAccessors.callMethodWithArgs(
      reference, _id_isScannable, jni.JniType.booleanType, []).boolean;

  static final _id_isLegacy =
      jniAccessors.getMethodIDOf(_classRef, "isLegacy", "()Z");

  /// from: public boolean isLegacy()
  ///
  /// Returns whether the legacy advertisement will be used.
  bool isLegacy() => jniAccessors.callMethodWithArgs(
      reference, _id_isLegacy, jni.JniType.booleanType, []).boolean;

  static final _id_isAnonymous =
      jniAccessors.getMethodIDOf(_classRef, "isAnonymous", "()Z");

  /// from: public boolean isAnonymous()
  ///
  /// Returns whether the advertisement will be anonymous.
  bool isAnonymous() => jniAccessors.callMethodWithArgs(
      reference, _id_isAnonymous, jni.JniType.booleanType, []).boolean;

  static final _id_includeTxPower =
      jniAccessors.getMethodIDOf(_classRef, "includeTxPower", "()Z");

  /// from: public boolean includeTxPower()
  ///
  /// Returns whether the TX Power will be included.
  bool includeTxPower() => jniAccessors.callMethodWithArgs(
      reference, _id_includeTxPower, jni.JniType.booleanType, []).boolean;

  static final _id_getPrimaryPhy =
      jniAccessors.getMethodIDOf(_classRef, "getPrimaryPhy", "()I");

  /// from: public int getPrimaryPhy()
  ///
  /// Returns the primary advertising phy.
  int getPrimaryPhy() => jniAccessors.callMethodWithArgs(
      reference, _id_getPrimaryPhy, jni.JniType.intType, []).integer;

  static final _id_getSecondaryPhy =
      jniAccessors.getMethodIDOf(_classRef, "getSecondaryPhy", "()I");

  /// from: public int getSecondaryPhy()
  ///
  /// Returns the secondary advertising phy.
  int getSecondaryPhy() => jniAccessors.callMethodWithArgs(
      reference, _id_getSecondaryPhy, jni.JniType.intType, []).integer;

  static final _id_getInterval =
      jniAccessors.getMethodIDOf(_classRef, "getInterval", "()I");

  /// from: public int getInterval()
  ///
  /// Returns the advertising interval.
  int getInterval() => jniAccessors.callMethodWithArgs(
      reference, _id_getInterval, jni.JniType.intType, []).integer;

  static final _id_getTxPowerLevel =
      jniAccessors.getMethodIDOf(_classRef, "getTxPowerLevel", "()I");

  /// from: public int getTxPowerLevel()
  ///
  /// Returns the TX power level for advertising.
  int getTxPowerLevel() => jniAccessors.callMethodWithArgs(
      reference, _id_getTxPowerLevel, jni.JniType.intType, []).integer;

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

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}

/// from: android.bluetooth.le.AdvertisingSetParameters$Builder
///
/// Builder class for AdvertisingSetParameters.
class AdvertisingSetParameters_Builder extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/bluetooth/le/AdvertisingSetParameters\$Builder");
  AdvertisingSetParameters_Builder.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AdvertisingSetParameters_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setConnectable = jniAccessors.getMethodIDOf(
      _classRef,
      "setConnectable",
      "(Z)Landroid/bluetooth/le/AdvertisingSetParameters\$Builder;");

  /// from: public android.bluetooth.le.AdvertisingSetParameters.Builder setConnectable(boolean connectable)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set whether the advertisement type should be connectable or
  /// non-connectable.
  /// Legacy advertisements can be both connectable and scannable. Non-legacy
  /// advertisements can be only scannable or only connectable.
  ///@param connectable Controls whether the advertisement type will be connectable (true) or
  /// non-connectable (false).
  AdvertisingSetParameters_Builder setConnectable(bool connectable) =>
      AdvertisingSetParameters_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setConnectable,
          jni.JniType.objectType,
          [connectable]).object);

  static final _id_setScannable = jniAccessors.getMethodIDOf(
      _classRef,
      "setScannable",
      "(Z)Landroid/bluetooth/le/AdvertisingSetParameters\$Builder;");

  /// from: public android.bluetooth.le.AdvertisingSetParameters.Builder setScannable(boolean scannable)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set whether the advertisement type should be scannable.
  /// Legacy advertisements can be both connectable and scannable. Non-legacy
  /// advertisements can be only scannable or only connectable.
  ///@param scannable Controls whether the advertisement type will be scannable (true) or
  /// non-scannable (false).
  AdvertisingSetParameters_Builder setScannable(bool scannable) =>
      AdvertisingSetParameters_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setScannable,
          jni.JniType.objectType,
          [scannable]).object);

  static final _id_setLegacyMode = jniAccessors.getMethodIDOf(
      _classRef,
      "setLegacyMode",
      "(Z)Landroid/bluetooth/le/AdvertisingSetParameters\$Builder;");

  /// from: public android.bluetooth.le.AdvertisingSetParameters.Builder setLegacyMode(boolean isLegacy)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// When set to true, advertising set will advertise 4.x Spec compliant
  /// advertisements.
  ///@param isLegacy whether legacy advertising mode should be used.
  AdvertisingSetParameters_Builder setLegacyMode(bool isLegacy) =>
      AdvertisingSetParameters_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setLegacyMode,
          jni.JniType.objectType,
          [isLegacy]).object);

  static final _id_setAnonymous = jniAccessors.getMethodIDOf(
      _classRef,
      "setAnonymous",
      "(Z)Landroid/bluetooth/le/AdvertisingSetParameters\$Builder;");

  /// from: public android.bluetooth.le.AdvertisingSetParameters.Builder setAnonymous(boolean isAnonymous)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set whether advertiser address should be ommited from all packets. If this
  /// mode is used, periodic advertising can't be enabled for this set.
  ///
  /// This is used only if legacy mode is not used.
  ///@param isAnonymous whether anonymous advertising should be used.
  AdvertisingSetParameters_Builder setAnonymous(bool isAnonymous) =>
      AdvertisingSetParameters_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setAnonymous,
          jni.JniType.objectType,
          [isAnonymous]).object);

  static final _id_setIncludeTxPower = jniAccessors.getMethodIDOf(
      _classRef,
      "setIncludeTxPower",
      "(Z)Landroid/bluetooth/le/AdvertisingSetParameters\$Builder;");

  /// from: public android.bluetooth.le.AdvertisingSetParameters.Builder setIncludeTxPower(boolean includeTxPower)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set whether TX power should be included in the extended header.
  ///
  /// This is used only if legacy mode is not used.
  ///@param includeTxPower whether TX power should be included in extended header
  AdvertisingSetParameters_Builder setIncludeTxPower(bool includeTxPower) =>
      AdvertisingSetParameters_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setIncludeTxPower,
          jni.JniType.objectType,
          [includeTxPower]).object);

  static final _id_setPrimaryPhy = jniAccessors.getMethodIDOf(
      _classRef,
      "setPrimaryPhy",
      "(I)Landroid/bluetooth/le/AdvertisingSetParameters\$Builder;");

  /// from: public android.bluetooth.le.AdvertisingSetParameters.Builder setPrimaryPhy(int primaryPhy)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the primary physical channel used for this advertising set.
  ///
  /// This is used only if legacy mode is not used.
  ///
  /// Use BluetoothAdapter\#isLeCodedPhySupported to determine if LE Coded PHY is
  /// supported on this device.
  ///@param primaryPhy Primary advertising physical channel, can only be BluetoothDevice\#PHY_LE_1M or BluetoothDevice\#PHY_LE_CODED.
  ///@throws IllegalArgumentException If the primaryPhy is invalid.
  AdvertisingSetParameters_Builder setPrimaryPhy(int primaryPhy) =>
      AdvertisingSetParameters_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setPrimaryPhy,
          jni.JniType.objectType,
          [primaryPhy]).object);

  static final _id_setSecondaryPhy = jniAccessors.getMethodIDOf(
      _classRef,
      "setSecondaryPhy",
      "(I)Landroid/bluetooth/le/AdvertisingSetParameters\$Builder;");

  /// from: public android.bluetooth.le.AdvertisingSetParameters.Builder setSecondaryPhy(int secondaryPhy)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the secondary physical channel used for this advertising set.
  ///
  /// This is used only if legacy mode is not used.
  ///
  /// Use BluetoothAdapter\#isLeCodedPhySupported and
  /// BluetoothAdapter\#isLe2MPhySupported to determine if LE Coded PHY or 2M PHY is
  /// supported on this device.
  ///@param secondaryPhy Secondary advertising physical channel, can only be one of BluetoothDevice\#PHY_LE_1M, BluetoothDevice\#PHY_LE_2M or BluetoothDevice\#PHY_LE_CODED.
  ///@throws IllegalArgumentException If the secondaryPhy is invalid.
  AdvertisingSetParameters_Builder setSecondaryPhy(int secondaryPhy) =>
      AdvertisingSetParameters_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setSecondaryPhy,
          jni.JniType.objectType,
          [secondaryPhy]).object);

  static final _id_setInterval = jniAccessors.getMethodIDOf(
      _classRef,
      "setInterval",
      "(I)Landroid/bluetooth/le/AdvertisingSetParameters\$Builder;");

  /// from: public android.bluetooth.le.AdvertisingSetParameters.Builder setInterval(int interval)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set advertising interval.
  ///@param interval Bluetooth LE Advertising interval, in 0.625ms unit. Valid range is from
  /// 160 (100ms) to 16777215 (10,485.759375 s). Recommended values are: AdvertisingSetParameters\#INTERVAL_LOW, AdvertisingSetParameters\#INTERVAL_MEDIUM,
  /// or AdvertisingSetParameters\#INTERVAL_HIGH.
  ///@throws IllegalArgumentException If the interval is invalid.
  AdvertisingSetParameters_Builder setInterval(int interval) =>
      AdvertisingSetParameters_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setInterval,
          jni.JniType.objectType,
          [interval]).object);

  static final _id_setTxPowerLevel = jniAccessors.getMethodIDOf(
      _classRef,
      "setTxPowerLevel",
      "(I)Landroid/bluetooth/le/AdvertisingSetParameters\$Builder;");

  /// from: public android.bluetooth.le.AdvertisingSetParameters.Builder setTxPowerLevel(int txPowerLevel)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the transmission power level for the advertising.
  ///@param txPowerLevel Transmission power of Bluetooth LE Advertising, in dBm. The valid
  /// range is [-127, 1] Recommended values are:
  /// AdvertisingSetParameters\#TX_POWER_ULTRA_LOW,
  /// AdvertisingSetParameters\#TX_POWER_LOW,
  /// AdvertisingSetParameters\#TX_POWER_MEDIUM,
  /// or AdvertisingSetParameters\#TX_POWER_HIGH.
  ///@throws IllegalArgumentException If the {@code txPowerLevel} is invalid.
  AdvertisingSetParameters_Builder setTxPowerLevel(int txPowerLevel) =>
      AdvertisingSetParameters_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setTxPowerLevel,
          jni.JniType.objectType,
          [txPowerLevel]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/bluetooth/le/AdvertisingSetParameters;");

  /// from: public android.bluetooth.le.AdvertisingSetParameters build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build the AdvertisingSetParameters object.
  ///@throws IllegalStateException if invalid combination of parameters is used.
  AdvertisingSetParameters build() =>
      AdvertisingSetParameters.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}
