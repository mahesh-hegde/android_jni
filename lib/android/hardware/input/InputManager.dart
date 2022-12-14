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

import "../../view/InputDevice.dart" as inputdevice_;

import "../../os/Handler.dart" as handler_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.hardware.input.InputManager
///
/// Provides information about input devices and available key layouts.
class InputManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/hardware/input/InputManager");
  InputManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_QUERY_KEYBOARD_LAYOUTS
  ///
  /// Broadcast Action: Query available keyboard layouts.
  ///
  /// The input manager service locates available keyboard layouts
  /// by querying broadcast receivers that are registered for this action.
  /// An application can offer additional keyboard layouts to the user
  /// by declaring a suitable broadcast receiver in its manifest.
  ///
  ///
  /// Here is an example broadcast receiver declaration that an application
  /// might include in its AndroidManifest.xml to advertise keyboard layouts.
  /// The meta-data specifies a resource that contains a description of each keyboard
  /// layout that is provided by the application.
  /// <pre><code>
  /// &lt;receiver android:name=".InputDeviceReceiver"
  ///         android:label="@string/keyboard_layouts_label">
  ///     &lt;intent-filter>
  ///         &lt;action android:name="android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS" />
  ///     &lt;/intent-filter>
  ///     &lt;meta-data android:name="android.hardware.input.metadata.KEYBOARD_LAYOUTS"
  ///             android:resource="@xml/keyboard_layouts" />
  /// &lt;/receiver>
  /// </code></pre>
  ///
  ///
  /// In the above example, the <code>@xml/keyboard_layouts</code> resource refers to
  /// an XML resource whose root element is <code>&lt;keyboard-layouts></code> that
  /// contains zero or more <code>&lt;keyboard-layout></code> elements.
  /// Each <code>&lt;keyboard-layout></code> element specifies the name, label, and location
  /// of a key character map for a particular keyboard layout.  The label on the receiver
  /// is used to name the collection of keyboard layouts provided by this receiver in the
  /// keyboard layout settings.
  /// <pre><code>
  /// &lt;?xml version="1.0" encoding="utf-8"?>
  /// &lt;keyboard-layouts xmlns:android="http://schemas.android.com/apk/res/android">
  ///     &lt;keyboard-layout android:name="keyboard_layout_english_us"
  ///             android:label="@string/keyboard_layout_english_us_label"
  ///             android:keyboardLayout="@raw/keyboard_layout_english_us" />
  /// &lt;/keyboard-layouts>
  /// </pre></code>
  ///
  ///
  /// The <code>android:name</code> attribute specifies an identifier by which
  /// the keyboard layout will be known in the package.
  /// The <code>android:label</code> attribute specifies a human-readable descriptive
  /// label to describe the keyboard layout in the user interface, such as "English (US)".
  /// The <code>android:keyboardLayout</code> attribute refers to a
  /// <a href="http://source.android.com/tech/input/key-character-map-files.html">
  /// key character map</a> resource that defines the keyboard layout.
  ///
  ///
  static const ACTION_QUERY_KEYBOARD_LAYOUTS =
      "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS";

  /// from: static public final java.lang.String META_DATA_KEYBOARD_LAYOUTS
  ///
  /// Metadata Key: Keyboard layout metadata associated with
  /// \#ACTION_QUERY_KEYBOARD_LAYOUTS.
  ///
  /// Specifies the resource id of a XML resource that describes the keyboard
  /// layouts that are provided by the application.
  ///
  ///
  static const META_DATA_KEYBOARD_LAYOUTS =
      "android.hardware.input.metadata.KEYBOARD_LAYOUTS";

  static final _id_getInputDevice = jniAccessors.getMethodIDOf(
      _classRef, "getInputDevice", "(I)Landroid/view/InputDevice;");

  /// from: public android.view.InputDevice getInputDevice(int id)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets information about the input device with the specified id.
  ///@param id The device id.
  ///@return The input device or null if not found.
  inputdevice_.InputDevice getInputDevice(int id) =>
      inputdevice_.InputDevice.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInputDevice, jni.JniType.objectType, [id]).object);

  static final _id_getInputDeviceIds =
      jniAccessors.getMethodIDOf(_classRef, "getInputDeviceIds", "()[I");

  /// from: public int[] getInputDeviceIds()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the ids of all input devices in the system.
  ///@return The input device ids.
  jni.JniObject getInputDeviceIds() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInputDeviceIds, jni.JniType.objectType, []).object);

  static final _id_registerInputDeviceListener = jniAccessors.getMethodIDOf(
      _classRef,
      "registerInputDeviceListener",
      "(Landroid/hardware/input/InputManager\$InputDeviceListener;Landroid/os/Handler;)V");

  /// from: public void registerInputDeviceListener(android.hardware.input.InputManager.InputDeviceListener listener, android.os.Handler handler)
  ///
  /// Registers an input device listener to receive notifications about when
  /// input devices are added, removed or changed.
  ///@param listener The listener to register.
  ///@param handler The handler on which the listener should be invoked, or null
  /// if the listener should be invoked on the calling thread's looper.
  ///@see \#unregisterInputDeviceListener
  void registerInputDeviceListener(InputManager_InputDeviceListener listener,
          handler_.Handler handler) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_registerInputDeviceListener,
          jni.JniType.voidType,
          [listener.reference, handler.reference]).check();

  static final _id_unregisterInputDeviceListener = jniAccessors.getMethodIDOf(
      _classRef,
      "unregisterInputDeviceListener",
      "(Landroid/hardware/input/InputManager\$InputDeviceListener;)V");

  /// from: public void unregisterInputDeviceListener(android.hardware.input.InputManager.InputDeviceListener listener)
  ///
  /// Unregisters an input device listener.
  ///@param listener The listener to unregister.
  ///@see \#registerInputDeviceListener
  void unregisterInputDeviceListener(
          InputManager_InputDeviceListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_unregisterInputDeviceListener,
          jni.JniType.voidType,
          [listener.reference]).check();
}

/// from: android.hardware.input.InputManager$InputDeviceListener
///
/// Listens for changes in input devices.
class InputManager_InputDeviceListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/hardware/input/InputManager\$InputDeviceListener");
  InputManager_InputDeviceListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onInputDeviceAdded =
      jniAccessors.getMethodIDOf(_classRef, "onInputDeviceAdded", "(I)V");

  /// from: public abstract void onInputDeviceAdded(int deviceId)
  ///
  /// Called whenever an input device has been added to the system.
  /// Use InputManager\#getInputDevice to get more information about the device.
  ///@param deviceId The id of the input device that was added.
  void onInputDeviceAdded(int deviceId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onInputDeviceAdded,
      jni.JniType.voidType,
      [deviceId]).check();

  static final _id_onInputDeviceRemoved =
      jniAccessors.getMethodIDOf(_classRef, "onInputDeviceRemoved", "(I)V");

  /// from: public abstract void onInputDeviceRemoved(int deviceId)
  ///
  /// Called whenever an input device has been removed from the system.
  ///@param deviceId The id of the input device that was removed.
  void onInputDeviceRemoved(int deviceId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onInputDeviceRemoved,
      jni.JniType.voidType,
      [deviceId]).check();

  static final _id_onInputDeviceChanged =
      jniAccessors.getMethodIDOf(_classRef, "onInputDeviceChanged", "(I)V");

  /// from: public abstract void onInputDeviceChanged(int deviceId)
  ///
  /// Called whenever the properties of an input device have changed since they
  /// were last queried.  Use InputManager\#getInputDevice to get
  /// a fresh InputDevice object with the new properties.
  ///@param deviceId The id of the input device that changed.
  void onInputDeviceChanged(int deviceId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onInputDeviceChanged,
      jni.JniType.voidType,
      [deviceId]).check();
}
