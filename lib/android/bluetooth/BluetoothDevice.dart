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

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;

import "BluetoothClass.dart" as bluetoothclass_;

import "BluetoothSocket.dart" as bluetoothsocket_;

import "BluetoothGatt.dart" as bluetoothgatt_;

import "../content/Context.dart" as context_;

import "BluetoothGattCallback.dart" as bluetoothgattcallback_;

import "../os/Handler.dart" as handler_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.bluetooth.BluetoothDevice
///
/// Represents a remote Bluetooth device. A BluetoothDevice lets you
/// create a connection with the respective device or query information about
/// it, such as the name, address, class, and bonding state.
///
/// This class is really just a thin wrapper for a Bluetooth hardware
/// address. Objects of this class are immutable. Operations on this class
/// are performed on the remote Bluetooth hardware address, using the
/// BluetoothAdapter that was used to create this BluetoothDevice.
///
/// To get a BluetoothDevice, use
/// BluetoothAdapter\#getRemoteDevice(String) BluetoothAdapter.getRemoteDevice(String) to create one representing a device
/// of a known MAC address (which you can get through device discovery with
/// BluetoothAdapter) or get one from the set of bonded devices
/// returned by BluetoothAdapter\#getBondedDevices() BluetoothAdapter.getBondedDevices(). You can then open a
/// BluetoothSocket for communication with the remote device, using
/// \#createRfcommSocketToServiceRecord(UUID).
///
/// <p class="note"><strong>Note:</strong>
/// Requires the android.Manifest.permission\#BLUETOOTH permission.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
///
/// For more information about using Bluetooth, read the <a href="{@docRoot}guide/topics/connectivity/bluetooth.html">Bluetooth</a> developer
/// guide.
///
///
/// </div>
///
/// {@see BluetoothAdapter}
/// {@see BluetoothSocket}
class BluetoothDevice extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/bluetooth/BluetoothDevice");
  BluetoothDevice.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_ACL_CONNECTED
  ///
  /// Broadcast Action: Indicates a low level (ACL) connection has been
  /// established with a remote device.
  /// Always contains the extra field \#EXTRA_DEVICE.
  /// ACL connections are managed automatically by the Android Bluetooth
  /// stack.
  /// Requires android.Manifest.permission\#BLUETOOTH to receive.
  static const ACTION_ACL_CONNECTED =
      "android.bluetooth.device.action.ACL_CONNECTED";

  /// from: static public final java.lang.String ACTION_ACL_DISCONNECTED
  ///
  /// Broadcast Action: Indicates a low level (ACL) disconnection from a
  /// remote device.
  /// Always contains the extra field \#EXTRA_DEVICE.
  /// ACL connections are managed automatically by the Android Bluetooth
  /// stack.
  /// Requires android.Manifest.permission\#BLUETOOTH to receive.
  static const ACTION_ACL_DISCONNECTED =
      "android.bluetooth.device.action.ACL_DISCONNECTED";

  /// from: static public final java.lang.String ACTION_ACL_DISCONNECT_REQUESTED
  ///
  /// Broadcast Action: Indicates that a low level (ACL) disconnection has
  /// been requested for a remote device, and it will soon be disconnected.
  /// This is useful for graceful disconnection. Applications should use
  /// this intent as a hint to immediately terminate higher level connections
  /// (RFCOMM, L2CAP, or profile connections) to the remote device.
  /// Always contains the extra field \#EXTRA_DEVICE.
  /// Requires android.Manifest.permission\#BLUETOOTH to receive.
  static const ACTION_ACL_DISCONNECT_REQUESTED =
      "android.bluetooth.device.action.ACL_DISCONNECT_REQUESTED";

  /// from: static public final java.lang.String ACTION_BOND_STATE_CHANGED
  ///
  /// Broadcast Action: Indicates a change in the bond state of a remote
  /// device. For example, if a device is bonded (paired).
  /// Always contains the extra fields \#EXTRA_DEVICE, \#EXTRA_BOND_STATE and \#EXTRA_PREVIOUS_BOND_STATE.
  /// Requires android.Manifest.permission\#BLUETOOTH to receive.
  static const ACTION_BOND_STATE_CHANGED =
      "android.bluetooth.device.action.BOND_STATE_CHANGED";

  /// from: static public final java.lang.String ACTION_CLASS_CHANGED
  ///
  /// Broadcast Action: Bluetooth class of a remote device has changed.
  /// Always contains the extra fields \#EXTRA_DEVICE and \#EXTRA_CLASS.
  /// Requires android.Manifest.permission\#BLUETOOTH to receive.
  /// {@see BluetoothClass}
  static const ACTION_CLASS_CHANGED =
      "android.bluetooth.device.action.CLASS_CHANGED";

  /// from: static public final java.lang.String ACTION_FOUND
  ///
  /// Broadcast Action: Remote device discovered.
  /// Sent when a remote device is found during discovery.
  /// Always contains the extra fields \#EXTRA_DEVICE and \#EXTRA_CLASS. Can contain the extra fields \#EXTRA_NAME and/or
  /// \#EXTRA_RSSI if they are available.
  /// Requires android.Manifest.permission\#BLUETOOTH and
  /// android.Manifest.permission\#ACCESS_COARSE_LOCATION to receive.
  static const ACTION_FOUND = "android.bluetooth.device.action.FOUND";

  /// from: static public final java.lang.String ACTION_NAME_CHANGED
  ///
  /// Broadcast Action: Indicates the friendly name of a remote device has
  /// been retrieved for the first time, or changed since the last retrieval.
  /// Always contains the extra fields \#EXTRA_DEVICE and \#EXTRA_NAME.
  /// Requires android.Manifest.permission\#BLUETOOTH to receive.
  static const ACTION_NAME_CHANGED =
      "android.bluetooth.device.action.NAME_CHANGED";

  /// from: static public final java.lang.String ACTION_PAIRING_REQUEST
  ///
  /// Broadcast Action: This intent is used to broadcast PAIRING REQUEST
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN to
  /// receive.
  static const ACTION_PAIRING_REQUEST =
      "android.bluetooth.device.action.PAIRING_REQUEST";

  /// from: static public final java.lang.String ACTION_UUID
  ///
  /// Broadcast Action: This intent is used to broadcast the UUID
  /// wrapped as a android.os.ParcelUuid of the remote device after it
  /// has been fetched. This intent is sent only when the UUIDs of the remote
  /// device are requested to be fetched using Service Discovery Protocol
  ///  Always contains the extra field \#EXTRA_DEVICE
  ///  Always contains the extra field \#EXTRA_UUID
  /// Requires android.Manifest.permission\#BLUETOOTH to receive.
  static const ACTION_UUID = "android.bluetooth.device.action.UUID";

  /// from: static public final int BOND_BONDED
  ///
  /// Indicates the remote device is bonded (paired).
  /// A shared link keys exists locally for the remote device, so
  /// communication can be authenticated and encrypted.
  /// <i>Being bonded (paired) with a remote device does not necessarily
  /// mean the device is currently connected. It just means that the pending
  /// procedure was completed at some earlier time, and the link key is still
  /// stored locally, ready to use on the next connection.
  /// </i>
  static const BOND_BONDED = 12;

  /// from: static public final int BOND_BONDING
  ///
  /// Indicates bonding (pairing) is in progress with the remote device.
  static const BOND_BONDING = 11;

  /// from: static public final int BOND_NONE
  ///
  /// Indicates the remote device is not bonded (paired).
  /// There is no shared link key with the remote device, so communication
  /// (if it is allowed at all) will be unauthenticated and unencrypted.
  static const BOND_NONE = 10;

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.bluetooth.BluetoothDevice> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int DEVICE_TYPE_CLASSIC
  ///
  /// Bluetooth device type, Classic - BR/EDR devices
  static const DEVICE_TYPE_CLASSIC = 1;

  /// from: static public final int DEVICE_TYPE_DUAL
  ///
  /// Bluetooth device type, Dual Mode - BR/EDR/LE
  static const DEVICE_TYPE_DUAL = 3;

  /// from: static public final int DEVICE_TYPE_LE
  ///
  /// Bluetooth device type, Low Energy - LE-only
  static const DEVICE_TYPE_LE = 2;

  /// from: static public final int DEVICE_TYPE_UNKNOWN
  ///
  /// Bluetooth device type, Unknown
  static const DEVICE_TYPE_UNKNOWN = 0;

  /// from: static public final int ERROR
  ///
  /// Sentinel error value for this class. Guaranteed to not equal any other
  /// integer constant in this class. Provided as a convenience for functions
  /// that require a sentinel error value, for example:
  /// <code>Intent.getIntExtra(BluetoothDevice.EXTRA_BOND_STATE,
  /// BluetoothDevice.ERROR)</code>
  static const ERROR = -2147483648;

  /// from: static public final java.lang.String EXTRA_BOND_STATE
  ///
  /// Used as an int extra field in \#ACTION_BOND_STATE_CHANGED intents.
  /// Contains the bond state of the remote device.
  /// Possible values are:
  /// \#BOND_NONE,
  /// \#BOND_BONDING,
  /// \#BOND_BONDED.
  static const EXTRA_BOND_STATE = "android.bluetooth.device.extra.BOND_STATE";

  /// from: static public final java.lang.String EXTRA_CLASS
  ///
  /// Used as a Parcelable BluetoothClass extra field in \#ACTION_FOUND and \#ACTION_CLASS_CHANGED intents.
  static const EXTRA_CLASS = "android.bluetooth.device.extra.CLASS";

  /// from: static public final java.lang.String EXTRA_DEVICE
  ///
  /// Used as a Parcelable BluetoothDevice extra field in every intent
  /// broadcast by this class. It contains the BluetoothDevice that
  /// the intent applies to.
  static const EXTRA_DEVICE = "android.bluetooth.device.extra.DEVICE";

  /// from: static public final java.lang.String EXTRA_NAME
  ///
  /// Used as a String extra field in \#ACTION_NAME_CHANGED and \#ACTION_FOUND intents. It contains the friendly Bluetooth name.
  static const EXTRA_NAME = "android.bluetooth.device.extra.NAME";

  /// from: static public final java.lang.String EXTRA_PAIRING_KEY
  ///
  /// Used as an int extra field in \#ACTION_PAIRING_REQUEST
  /// intents as the value of passkey.
  static const EXTRA_PAIRING_KEY = "android.bluetooth.device.extra.PAIRING_KEY";

  /// from: static public final java.lang.String EXTRA_PAIRING_VARIANT
  ///
  /// Used as an int extra field in \#ACTION_PAIRING_REQUEST
  /// intents to indicate pairing method used. Possible values are:
  /// \#PAIRING_VARIANT_PIN,
  /// \#PAIRING_VARIANT_PASSKEY_CONFIRMATION,
  static const EXTRA_PAIRING_VARIANT =
      "android.bluetooth.device.extra.PAIRING_VARIANT";

  /// from: static public final java.lang.String EXTRA_PREVIOUS_BOND_STATE
  ///
  /// Used as an int extra field in \#ACTION_BOND_STATE_CHANGED intents.
  /// Contains the previous bond state of the remote device.
  /// Possible values are:
  /// \#BOND_NONE,
  /// \#BOND_BONDING,
  /// \#BOND_BONDED.
  static const EXTRA_PREVIOUS_BOND_STATE =
      "android.bluetooth.device.extra.PREVIOUS_BOND_STATE";

  /// from: static public final java.lang.String EXTRA_RSSI
  ///
  /// Used as an optional short extra field in \#ACTION_FOUND intents.
  /// Contains the RSSI value of the remote device as reported by the
  /// Bluetooth hardware.
  static const EXTRA_RSSI = "android.bluetooth.device.extra.RSSI";

  /// from: static public final java.lang.String EXTRA_UUID
  ///
  /// Used as an extra field in \#ACTION_UUID intents,
  /// Contains the android.os.ParcelUuids of the remote device which
  /// is a parcelable version of UUID.
  static const EXTRA_UUID = "android.bluetooth.device.extra.UUID";

  /// from: static public final int PAIRING_VARIANT_PASSKEY_CONFIRMATION
  ///
  /// The user will be prompted to confirm the passkey displayed on the screen or
  /// an app will confirm the passkey for the user.
  static const PAIRING_VARIANT_PASSKEY_CONFIRMATION = 2;

  /// from: static public final int PAIRING_VARIANT_PIN
  ///
  /// The user will be prompted to enter a pin or
  /// an app will enter a pin for user.
  static const PAIRING_VARIANT_PIN = 0;

  /// from: static public final int PHY_LE_1M
  ///
  /// Bluetooth LE 1M PHY. Used to refer to LE 1M Physical Channel for advertising, scanning or
  /// connection.
  static const PHY_LE_1M = 1;

  /// from: static public final int PHY_LE_1M_MASK
  ///
  /// Bluetooth LE 1M PHY mask. Used to specify LE 1M Physical Channel as one of many available
  /// options in a bitmask.
  static const PHY_LE_1M_MASK = 1;

  /// from: static public final int PHY_LE_2M
  ///
  /// Bluetooth LE 2M PHY. Used to refer to LE 2M Physical Channel for advertising, scanning or
  /// connection.
  static const PHY_LE_2M = 2;

  /// from: static public final int PHY_LE_2M_MASK
  ///
  /// Bluetooth LE 2M PHY mask. Used to specify LE 2M Physical Channel as one of many available
  /// options in a bitmask.
  static const PHY_LE_2M_MASK = 2;

  /// from: static public final int PHY_LE_CODED
  ///
  /// Bluetooth LE Coded PHY. Used to refer to LE Coded Physical Channel for advertising, scanning
  /// or connection.
  static const PHY_LE_CODED = 3;

  /// from: static public final int PHY_LE_CODED_MASK
  ///
  /// Bluetooth LE Coded PHY mask. Used to specify LE Coded Physical Channel as one of many
  /// available options in a bitmask.
  static const PHY_LE_CODED_MASK = 4;

  /// from: static public final int PHY_OPTION_NO_PREFERRED
  ///
  /// No preferred coding when transmitting on the LE Coded PHY.
  static const PHY_OPTION_NO_PREFERRED = 0;

  /// from: static public final int PHY_OPTION_S2
  ///
  /// Prefer the S=2 coding to be used when transmitting on the LE Coded PHY.
  static const PHY_OPTION_S2 = 1;

  /// from: static public final int PHY_OPTION_S8
  ///
  /// Prefer the S=8 coding to be used when transmitting on the LE Coded PHY.
  static const PHY_OPTION_S8 = 2;

  /// from: static public final int TRANSPORT_AUTO
  ///
  /// No preferrence of physical transport for GATT connections to remote dual-mode devices
  static const TRANSPORT_AUTO = 0;

  /// from: static public final int TRANSPORT_BREDR
  ///
  /// Prefer BR/EDR transport for GATT connections to remote dual-mode devices
  static const TRANSPORT_BREDR = 1;

  /// from: static public final int TRANSPORT_LE
  ///
  /// Prefer LE transport for GATT connections to remote dual-mode devices
  static const TRANSPORT_LE = 2;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: void <init>(java.lang.String address)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new BluetoothDevice
  /// Bluetooth MAC address must be upper case, such as "00:11:22:33:AA:BB",
  /// and is validated in this constructor.
  ///@param address valid Bluetooth MAC address
  ///@throws RuntimeException Bluetooth is not available on this platform
  ///@throws IllegalArgumentException address is invalid
  ///@hide
  BluetoothDevice(jni.JniString address)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [address.reference]).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a string representation of this BluetoothDevice.
  /// Currently this is the Bluetooth hardware address, for example
  /// "00:11:22:AA:BB:CC". However, you should always use \#getAddress
  /// if you explicitly require the Bluetooth hardware address in case the
  /// \#toString representation changes in the future.
  ///@return string representation of this BluetoothDevice
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

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();

  static final _id_getAddress = jniAccessors.getMethodIDOf(
      _classRef, "getAddress", "()Ljava/lang/String;");

  /// from: public java.lang.String getAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the hardware address of this BluetoothDevice.
  ///  For example, "00:11:22:AA:BB:CC".
  ///@return Bluetooth hardware address as string
  jni.JniString getAddress() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAddress, jni.JniType.objectType, []).object);

  static final _id_getName =
      jniAccessors.getMethodIDOf(_classRef, "getName", "()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the friendly Bluetooth name of the remote device.
  ///
  /// The local adapter will automatically retrieve remote names when
  /// performing a device scan, and will cache them. This method just returns
  /// the name for this device from the cache.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@return the Bluetooth name, or null if there was a problem.
  jni.JniString getName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "()I");

  /// from: public int getType()
  ///
  /// Get the Bluetooth device type of the remote device.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@return the device type \#DEVICE_TYPE_CLASSIC, \#DEVICE_TYPE_LE \#DEVICE_TYPE_DUAL. \#DEVICE_TYPE_UNKNOWN if it's not available
  int getType() => jniAccessors.callMethodWithArgs(
      reference, _id_getType, jni.JniType.intType, []).integer;

  static final _id_createBond =
      jniAccessors.getMethodIDOf(_classRef, "createBond", "()Z");

  /// from: public boolean createBond()
  ///
  /// Start the bonding (pairing) process with the remote device.
  /// This is an asynchronous call, it will return immediately. Register
  /// for \#ACTION_BOND_STATE_CHANGED intents to be notified when
  /// the bonding process completes, and its result.
  /// Android system services will handle the necessary user interactions
  /// to confirm and complete the bonding process.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN
  ///@return false on immediate error, true if bonding will begin
  bool createBond() => jniAccessors.callMethodWithArgs(
      reference, _id_createBond, jni.JniType.booleanType, []).boolean;

  static final _id_getBondState =
      jniAccessors.getMethodIDOf(_classRef, "getBondState", "()I");

  /// from: public int getBondState()
  ///
  /// Get the bond state of the remote device.
  /// Possible values for the bond state are:
  /// \#BOND_NONE,
  /// \#BOND_BONDING,
  /// \#BOND_BONDED.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@return the bond state
  int getBondState() => jniAccessors.callMethodWithArgs(
      reference, _id_getBondState, jni.JniType.intType, []).integer;

  static final _id_getBluetoothClass = jniAccessors.getMethodIDOf(
      _classRef, "getBluetoothClass", "()Landroid/bluetooth/BluetoothClass;");

  /// from: public android.bluetooth.BluetoothClass getBluetoothClass()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the Bluetooth class of the remote device.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@return Bluetooth class object, or null on error
  bluetoothclass_.BluetoothClass getBluetoothClass() =>
      bluetoothclass_.BluetoothClass.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getBluetoothClass, jni.JniType.objectType, []).object);

  static final _id_getUuids = jniAccessors.getMethodIDOf(
      _classRef, "getUuids", "()[Landroid/os/ParcelUuid;");

  /// from: public android.os.ParcelUuid[] getUuids()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the supported features (UUIDs) of the remote device.
  ///
  /// This method does not start a service discovery procedure to retrieve the UUIDs
  /// from the remote device. Instead, the local cached copy of the service
  /// UUIDs are returned.
  /// Use \#fetchUuidsWithSdp if fresh UUIDs are desired.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@return the supported features (UUIDs) of the remote device, or null on error
  jni.JniObject getUuids() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUuids, jni.JniType.objectType, []).object);

  static final _id_fetchUuidsWithSdp =
      jniAccessors.getMethodIDOf(_classRef, "fetchUuidsWithSdp", "()Z");

  /// from: public boolean fetchUuidsWithSdp()
  ///
  /// Perform a service discovery on the remote device to get the UUIDs supported.
  ///
  /// This API is asynchronous and \#ACTION_UUID intent is sent,
  /// with the UUIDs supported by the remote end. If there is an error
  /// in getting the SDP records or if the process takes a long time,
  /// \#ACTION_UUID intent is sent with the UUIDs that is currently
  /// present in the cache. Clients should use the \#getUuids to get UUIDs
  /// if service discovery is not to be performed.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@return False if the sanity check fails, True if the process of initiating an ACL connection
  /// to the remote device was started.
  bool fetchUuidsWithSdp() => jniAccessors.callMethodWithArgs(
      reference, _id_fetchUuidsWithSdp, jni.JniType.booleanType, []).boolean;

  static final _id_setPin =
      jniAccessors.getMethodIDOf(_classRef, "setPin", "([B)Z");

  /// from: public boolean setPin(byte[] pin)
  ///
  /// Set the pin during pairing when the pairing method is \#PAIRING_VARIANT_PIN
  /// Requires android.Manifest.permission\#BLUETOOTH_ADMIN.
  ///@return true pin has been set false for error
  bool setPin(jni.JniObject pin) => jniAccessors.callMethodWithArgs(
      reference, _id_setPin, jni.JniType.booleanType, [pin.reference]).boolean;

  static final _id_setPairingConfirmation =
      jniAccessors.getMethodIDOf(_classRef, "setPairingConfirmation", "(Z)Z");

  /// from: public boolean setPairingConfirmation(boolean confirm)
  ///
  /// Confirm passkey for \#PAIRING_VARIANT_PASSKEY_CONFIRMATION pairing.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH_PRIVILEGED
  ///@return true confirmation has been sent out false for error
  bool setPairingConfirmation(bool confirm) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setPairingConfirmation,
      jni.JniType.booleanType,
      [confirm]).boolean;

  static final _id_createRfcommSocketToServiceRecord =
      jniAccessors.getMethodIDOf(_classRef, "createRfcommSocketToServiceRecord",
          "(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;");

  /// from: public android.bluetooth.BluetoothSocket createRfcommSocketToServiceRecord(java.util.UUID uuid)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an RFCOMM BluetoothSocket ready to start a secure
  /// outgoing connection to this remote device using SDP lookup of uuid.
  /// This is designed to be used with BluetoothAdapter\#listenUsingRfcommWithServiceRecord for peer-peer
  /// Bluetooth applications.
  /// Use BluetoothSocket\#connect to initiate the outgoing
  /// connection. This will also perform an SDP lookup of the given uuid to
  /// determine which channel to connect to.
  /// The remote device will be authenticated and communication on this
  /// socket will be encrypted.
  ///  Use this socket only if an authenticated socket link is possible.
  /// Authentication refers to the authentication of the link key to
  /// prevent man-in-the-middle type of attacks.
  /// For example, for Bluetooth 2.1 devices, if any of the devices does not
  /// have an input and output capability or just has the ability to
  /// display a numeric key, a secure socket connection is not possible.
  /// In such a case, use {\#link createInsecureRfcommSocketToServiceRecord}.
  /// For more details, refer to the Security Model section 5.2 (vol 3) of
  /// Bluetooth Core Specification version 2.1 + EDR.
  /// Hint: If you are connecting to a Bluetooth serial board then try
  /// using the well-known SPP UUID 00001101-0000-1000-8000-00805F9B34FB.
  /// However if you are connecting to an Android peer then please generate
  /// your own unique UUID.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@param uuid service record uuid to lookup RFCOMM channel
  ///@return a RFCOMM BluetoothServerSocket ready for an outgoing connection
  ///@throws IOException on error, for example Bluetooth not available, or insufficient
  /// permissions
  bluetoothsocket_.BluetoothSocket createRfcommSocketToServiceRecord(
          jni.JniObject uuid) =>
      bluetoothsocket_.BluetoothSocket.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_createRfcommSocketToServiceRecord,
          jni.JniType.objectType,
          [uuid.reference]).object);

  static final _id_createInsecureRfcommSocketToServiceRecord =
      jniAccessors.getMethodIDOf(
          _classRef,
          "createInsecureRfcommSocketToServiceRecord",
          "(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;");

  /// from: public android.bluetooth.BluetoothSocket createInsecureRfcommSocketToServiceRecord(java.util.UUID uuid)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an RFCOMM BluetoothSocket socket ready to start an insecure
  /// outgoing connection to this remote device using SDP lookup of uuid.
  ///  The communication channel will not have an authenticated link key
  /// i.e it will be subject to man-in-the-middle attacks. For Bluetooth 2.1
  /// devices, the link key will be encrypted, as encryption is mandatory.
  /// For legacy devices (pre Bluetooth 2.1 devices) the link key will
  /// be not be encrypted. Use \#createRfcommSocketToServiceRecord if an
  /// encrypted and authenticated communication channel is desired.
  /// This is designed to be used with BluetoothAdapter\#listenUsingInsecureRfcommWithServiceRecord for peer-peer
  /// Bluetooth applications.
  /// Use BluetoothSocket\#connect to initiate the outgoing
  /// connection. This will also perform an SDP lookup of the given uuid to
  /// determine which channel to connect to.
  /// The remote device will be authenticated and communication on this
  /// socket will be encrypted.
  /// Hint: If you are connecting to a Bluetooth serial board then try
  /// using the well-known SPP UUID 00001101-0000-1000-8000-00805F9B34FB.
  /// However if you are connecting to an Android peer then please generate
  /// your own unique UUID.
  ///
  /// Requires android.Manifest.permission\#BLUETOOTH
  ///@param uuid service record uuid to lookup RFCOMM channel
  ///@return a RFCOMM BluetoothServerSocket ready for an outgoing connection
  ///@throws IOException on error, for example Bluetooth not available, or insufficient
  /// permissions
  bluetoothsocket_.BluetoothSocket createInsecureRfcommSocketToServiceRecord(
          jni.JniObject uuid) =>
      bluetoothsocket_.BluetoothSocket.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_createInsecureRfcommSocketToServiceRecord,
          jni.JniType.objectType,
          [uuid.reference]).object);

  static final _id_connectGatt = jniAccessors.getMethodIDOf(
      _classRef,
      "connectGatt",
      "(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;");

  /// from: public android.bluetooth.BluetoothGatt connectGatt(android.content.Context context, boolean autoConnect, android.bluetooth.BluetoothGattCallback callback)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Connect to GATT Server hosted by this device. Caller acts as GATT client.
  /// The callback is used to deliver results to Caller, such as connection status as well
  /// as any further GATT client operations.
  /// The method returns a BluetoothGatt instance. You can use BluetoothGatt to conduct
  /// GATT client operations.
  ///@param callback GATT callback handler that will receive asynchronous callbacks.
  ///@param autoConnect Whether to directly connect to the remote device (false) or to
  /// automatically connect as soon as the remote device becomes available (true).
  ///@throws IllegalArgumentException if callback is null
  bluetoothgatt_.BluetoothGatt connectGatt(
          context_.Context context,
          bool autoConnect,
          bluetoothgattcallback_.BluetoothGattCallback callback) =>
      bluetoothgatt_.BluetoothGatt.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_connectGatt,
          jni.JniType.objectType,
          [context.reference, autoConnect, callback.reference]).object);

  static final _id_connectGatt1 = jniAccessors.getMethodIDOf(
      _classRef,
      "connectGatt",
      "(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;");

  /// from: public android.bluetooth.BluetoothGatt connectGatt(android.content.Context context, boolean autoConnect, android.bluetooth.BluetoothGattCallback callback, int transport)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Connect to GATT Server hosted by this device. Caller acts as GATT client.
  /// The callback is used to deliver results to Caller, such as connection status as well
  /// as any further GATT client operations.
  /// The method returns a BluetoothGatt instance. You can use BluetoothGatt to conduct
  /// GATT client operations.
  ///@param callback GATT callback handler that will receive asynchronous callbacks.
  ///@param autoConnect Whether to directly connect to the remote device (false) or to
  /// automatically connect as soon as the remote device becomes available (true).
  ///@param transport preferred transport for GATT connections to remote dual-mode devices BluetoothDevice\#TRANSPORT_AUTO or BluetoothDevice\#TRANSPORT_BREDR or BluetoothDevice\#TRANSPORT_LE
  ///@throws IllegalArgumentException if callback is null
  bluetoothgatt_.BluetoothGatt connectGatt1(
          context_.Context context,
          bool autoConnect,
          bluetoothgattcallback_.BluetoothGattCallback callback,
          int transport) =>
      bluetoothgatt_.BluetoothGatt.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_connectGatt1, jni.JniType.objectType, [
        context.reference,
        autoConnect,
        callback.reference,
        transport
      ]).object);

  static final _id_connectGatt2 = jniAccessors.getMethodIDOf(
      _classRef,
      "connectGatt",
      "(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;");

  /// from: public android.bluetooth.BluetoothGatt connectGatt(android.content.Context context, boolean autoConnect, android.bluetooth.BluetoothGattCallback callback, int transport, int phy)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Connect to GATT Server hosted by this device. Caller acts as GATT client.
  /// The callback is used to deliver results to Caller, such as connection status as well
  /// as any further GATT client operations.
  /// The method returns a BluetoothGatt instance. You can use BluetoothGatt to conduct
  /// GATT client operations.
  ///@param callback GATT callback handler that will receive asynchronous callbacks.
  ///@param autoConnect Whether to directly connect to the remote device (false) or to
  /// automatically connect as soon as the remote device becomes available (true).
  ///@param transport preferred transport for GATT connections to remote dual-mode devices BluetoothDevice\#TRANSPORT_AUTO or BluetoothDevice\#TRANSPORT_BREDR or BluetoothDevice\#TRANSPORT_LE
  ///@param phy preferred PHY for connections to remote LE device. Bitwise OR of any of BluetoothDevice\#PHY_LE_1M_MASK, BluetoothDevice\#PHY_LE_2M_MASK, and BluetoothDevice\#PHY_LE_CODED_MASK. This option does not take effect if {@code autoConnect}
  /// is set to true.
  ///@throws NullPointerException if callback is null
  bluetoothgatt_.BluetoothGatt connectGatt2(
          context_.Context context,
          bool autoConnect,
          bluetoothgattcallback_.BluetoothGattCallback callback,
          int transport,
          int phy) =>
      bluetoothgatt_.BluetoothGatt.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_connectGatt2, jni.JniType.objectType, [
        context.reference,
        autoConnect,
        callback.reference,
        transport,
        phy
      ]).object);

  static final _id_connectGatt3 = jniAccessors.getMethodIDOf(
      _classRef,
      "connectGatt",
      "(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;IILandroid/os/Handler;)Landroid/bluetooth/BluetoothGatt;");

  /// from: public android.bluetooth.BluetoothGatt connectGatt(android.content.Context context, boolean autoConnect, android.bluetooth.BluetoothGattCallback callback, int transport, int phy, android.os.Handler handler)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Connect to GATT Server hosted by this device. Caller acts as GATT client.
  /// The callback is used to deliver results to Caller, such as connection status as well
  /// as any further GATT client operations.
  /// The method returns a BluetoothGatt instance. You can use BluetoothGatt to conduct
  /// GATT client operations.
  ///@param callback GATT callback handler that will receive asynchronous callbacks.
  ///@param autoConnect Whether to directly connect to the remote device (false) or to
  /// automatically connect as soon as the remote device becomes available (true).
  ///@param transport preferred transport for GATT connections to remote dual-mode devices BluetoothDevice\#TRANSPORT_AUTO or BluetoothDevice\#TRANSPORT_BREDR or BluetoothDevice\#TRANSPORT_LE
  ///@param phy preferred PHY for connections to remote LE device. Bitwise OR of any of BluetoothDevice\#PHY_LE_1M_MASK, BluetoothDevice\#PHY_LE_2M_MASK, an dBluetoothDevice\#PHY_LE_CODED_MASK. This option does not take effect if {@code autoConnect}
  /// is set to true.
  ///@param handler The handler to use for the callback. If {@code null}, callbacks will happen on
  /// an un-specified background thread.
  ///@throws NullPointerException if callback is null
  bluetoothgatt_.BluetoothGatt connectGatt3(
          context_.Context context,
          bool autoConnect,
          bluetoothgattcallback_.BluetoothGattCallback callback,
          int transport,
          int phy,
          handler_.Handler handler) =>
      bluetoothgatt_.BluetoothGatt.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_connectGatt3, jni.JniType.objectType, [
        context.reference,
        autoConnect,
        callback.reference,
        transport,
        phy,
        handler.reference
      ]).object);
}
