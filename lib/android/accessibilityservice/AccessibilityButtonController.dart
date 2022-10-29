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

import "../os/Handler.dart" as handler_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.accessibilityservice.AccessibilityButtonController
///
/// Controller for the accessibility button within the system's navigation area
///
/// This class may be used to query the accessibility button's state and register
/// callbacks for interactions with and state changes to the accessibility button when
/// AccessibilityServiceInfo\#FLAG_REQUEST_ACCESSIBILITY_BUTTON is set.
///
///
///
/// <strong>Note:</strong> This class and
/// AccessibilityServiceInfo\#FLAG_REQUEST_ACCESSIBILITY_BUTTON should not be used as
/// the sole means for offering functionality to users via an AccessibilityService.
/// Some device implementations may choose not to provide a software-rendered system
/// navigation area, making this affordance permanently unavailable.
///
///
///
/// <strong>Note:</strong> On device implementations where the accessibility button is
/// supported, it may not be available at all times, such as when a foreground application uses
/// android.view.View\#SYSTEM_UI_FLAG_HIDE_NAVIGATION. A user may also choose to assign
/// this button to another accessibility service or feature. In each of these cases, a
/// registered AccessibilityButtonCallback's
/// AccessibilityButtonCallback\#onAvailabilityChanged(AccessibilityButtonController, boolean)
/// method will be invoked to provide notifications of changes in the accessibility button's
/// availability to the registering service.
///
///
class AccessibilityButtonController extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/accessibilityservice/AccessibilityButtonController");
  AccessibilityButtonController.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_isAccessibilityButtonAvailable = jniAccessors.getMethodIDOf(
      _classRef, "isAccessibilityButtonAvailable", "()Z");

  /// from: public boolean isAccessibilityButtonAvailable()
  ///
  /// Retrieves whether the accessibility button in the system's navigation area is
  /// available to the calling service.
  ///
  /// <strong>Note:</strong> If the service is not yet connected (e.g.
  /// AccessibilityService\#onServiceConnected() has not yet been called) or the
  /// service has been disconnected, this method will have no effect and return {@code false}.
  ///
  ///
  ///@return {@code true} if the accessibility button in the system's navigation area is
  /// available to the calling service, {@code false} otherwise
  bool isAccessibilityButtonAvailable() => jniAccessors.callMethodWithArgs(
      reference,
      _id_isAccessibilityButtonAvailable,
      jni.JniType.booleanType, []).boolean;

  static final _id_registerAccessibilityButtonCallback = jniAccessors.getMethodIDOf(
      _classRef,
      "registerAccessibilityButtonCallback",
      "(Landroid/accessibilityservice/AccessibilityButtonController\$AccessibilityButtonCallback;)V");

  /// from: public void registerAccessibilityButtonCallback(android.accessibilityservice.AccessibilityButtonController.AccessibilityButtonCallback callback)
  ///
  /// Registers the provided AccessibilityButtonCallback for interaction and state
  /// changes callbacks related to the accessibility button.
  ///@param callback the callback to add, must be non-null
  ///
  /// This value must never be {@code null}.
  void registerAccessibilityButtonCallback(
          AccessibilityButtonController_AccessibilityButtonCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_registerAccessibilityButtonCallback,
          jni.JniType.voidType,
          [callback.reference]).check();

  static final _id_registerAccessibilityButtonCallback1 =
      jniAccessors.getMethodIDOf(
          _classRef,
          "registerAccessibilityButtonCallback",
          "(Landroid/accessibilityservice/AccessibilityButtonController\$AccessibilityButtonCallback;Landroid/os/Handler;)V");

  /// from: public void registerAccessibilityButtonCallback(android.accessibilityservice.AccessibilityButtonController.AccessibilityButtonCallback callback, android.os.Handler handler)
  ///
  /// Registers the provided AccessibilityButtonCallback for interaction and state
  /// change callbacks related to the accessibility button. The callback will occur on the
  /// specified Handler's thread, or on the services's main thread if the handler is
  /// {@code null}.
  ///@param callback the callback to add, must be non-null
  /// This value must never be {@code null}.
  ///@param handler the handler on which the callback should execute, must be non-null
  ///
  /// This value must never be {@code null}.
  void registerAccessibilityButtonCallback1(
          AccessibilityButtonController_AccessibilityButtonCallback callback,
          handler_.Handler handler) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_registerAccessibilityButtonCallback1,
          jni.JniType.voidType,
          [callback.reference, handler.reference]).check();

  static final _id_unregisterAccessibilityButtonCallback =
      jniAccessors.getMethodIDOf(
          _classRef,
          "unregisterAccessibilityButtonCallback",
          "(Landroid/accessibilityservice/AccessibilityButtonController\$AccessibilityButtonCallback;)V");

  /// from: public void unregisterAccessibilityButtonCallback(android.accessibilityservice.AccessibilityButtonController.AccessibilityButtonCallback callback)
  ///
  /// Unregisters the provided AccessibilityButtonCallback for interaction and state
  /// change callbacks related to the accessibility button.
  ///@param callback the callback to remove, must be non-null
  ///
  /// This value must never be {@code null}.
  void unregisterAccessibilityButtonCallback(
          AccessibilityButtonController_AccessibilityButtonCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_unregisterAccessibilityButtonCallback,
          jni.JniType.voidType,
          [callback.reference]).check();
}

/// from: android.accessibilityservice.AccessibilityButtonController$AccessibilityButtonCallback
///
/// Callback for interaction with and changes to state of the accessibility button
/// within the system's navigation area.
class AccessibilityButtonController_AccessibilityButtonCallback
    extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/accessibilityservice/AccessibilityButtonController\$AccessibilityButtonCallback");
  AccessibilityButtonController_AccessibilityButtonCallback.fromRef(
      jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AccessibilityButtonController_AccessibilityButtonCallback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onClicked = jniAccessors.getMethodIDOf(
      _classRef,
      "onClicked",
      "(Landroid/accessibilityservice/AccessibilityButtonController;)V");

  /// from: public void onClicked(android.accessibilityservice.AccessibilityButtonController controller)
  ///
  /// Called when the accessibility button in the system's navigation area is clicked.
  ///@param controller the controller used to register for this callback
  void onClicked(AccessibilityButtonController controller) =>
      jniAccessors.callMethodWithArgs(reference, _id_onClicked,
          jni.JniType.voidType, [controller.reference]).check();

  static final _id_onAvailabilityChanged = jniAccessors.getMethodIDOf(
      _classRef,
      "onAvailabilityChanged",
      "(Landroid/accessibilityservice/AccessibilityButtonController;Z)V");

  /// from: public void onAvailabilityChanged(android.accessibilityservice.AccessibilityButtonController controller, boolean available)
  ///
  /// Called when the availability of the accessibility button in the system's
  /// navigation area has changed. The accessibility button may become unavailable
  /// because the device shopped showing the button, the button was assigned to another
  /// service, or for other reasons.
  ///@param controller the controller used to register for this callback
  ///@param available {@code true} if the accessibility button is available to this
  ///                  service, {@code false} otherwise
  void onAvailabilityChanged(
          AccessibilityButtonController controller, bool available) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAvailabilityChanged,
          jni.JniType.voidType, [controller.reference, available]).check();
}
