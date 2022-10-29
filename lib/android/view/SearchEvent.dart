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

import "InputDevice.dart" as inputdevice_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.SearchEvent
///
/// Class that contains information about an event that triggers a search.
class SearchEvent extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/view/SearchEvent");
  SearchEvent.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/InputDevice;)V");

  /// from: public void <init>(android.view.InputDevice inputDevice)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new search event.
  SearchEvent(inputdevice_.InputDevice inputDevice)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [inputDevice.reference]).object);

  static final _id_getInputDevice = jniAccessors.getMethodIDOf(
      _classRef, "getInputDevice", "()Landroid/view/InputDevice;");

  /// from: public android.view.InputDevice getInputDevice()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the InputDevice that triggered the search.
  ///@return InputDevice the InputDevice that triggered the search.
  inputdevice_.InputDevice getInputDevice() =>
      inputdevice_.InputDevice.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInputDevice, jni.JniType.objectType, []).object);
}
