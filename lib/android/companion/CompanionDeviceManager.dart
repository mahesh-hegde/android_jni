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

import "AssociationRequest.dart" as associationrequest_;

import "../os/Handler.dart" as handler_;

import "../content/ComponentName.dart" as componentname_;

import "../content/IntentSender.dart" as intentsender_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.companion.CompanionDeviceManager
///
/// System level service for managing companion devices
///
/// To obtain an instance call Context\#getSystemService(Context\#COMPANION_DEVICE_SERVICE) Then, call \#associate(AssociationRequest,
/// Callback, Handler) to initiate the flow of associating current package with a
/// device selected by user.
///
///@see AssociationRequest
class CompanionDeviceManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/companion/CompanionDeviceManager");
  CompanionDeviceManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String EXTRA_DEVICE
  ///
  /// A device, returned in the activity result of the IntentSender received in
  /// Callback\#onDeviceFound
  static const EXTRA_DEVICE = "android.companion.extra.DEVICE";

  static final _id_associate = jniAccessors.getMethodIDOf(
      _classRef,
      "associate",
      "(Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager\$Callback;Landroid/os/Handler;)V");

  /// from: public void associate(android.companion.AssociationRequest request, android.companion.CompanionDeviceManager.Callback callback, android.os.Handler handler)
  ///
  /// Associate this app with a companion device, selected by user
  ///
  /// Once at least one appropriate device is found, {@code callback} will be called with a
  /// PendingIntent that can be used to show the list of available devices for the user
  /// to select.
  /// It should be started for result (i.e. using
  /// android.app.Activity\#startIntentSenderForResult), as the resulting
  /// android.content.Intent will contain extra \#EXTRA_DEVICE, with the selected
  /// device. (e.g. android.bluetooth.BluetoothDevice)
  ///
  ///
  /// If your app needs to be excluded from battery optimizations (run in the background)
  /// or to have unrestricted data access (use data in the background) you can declare that
  /// you use the android.Manifest.permission\#REQUEST_COMPANION_RUN_IN_BACKGROUND and android.Manifest.permission\#REQUEST_COMPANION_USE_DATA_IN_BACKGROUND respectively. Note that these
  /// special capabilities have a negative effect on the device's battery and user's data
  /// usage, therefore you should requested them when absolutely necessary.
  ///
  ///
  /// You can call \#getAssociations to get the list of currently associated
  /// devices, and \#disassociate to remove an association. Consider doing so when the
  /// association is no longer relevant to avoid unnecessary battery and/or data drain resulting
  /// from special privileges that the association provides
  ///
  ///
  /// Calling this API requires a uses-feature
  /// PackageManager\#FEATURE_COMPANION_DEVICE_SETUP declaration in the manifest
  ///
  ///@param request specific details about this request
  /// This value must never be {@code null}.
  ///@param callback will be called once there's at least one device found for user to choose from
  /// This value must never be {@code null}.
  ///@param handler A handler to control which thread the callback will be delivered on, or null,
  ///                to deliver it on main thread
  ///
  /// This value may be {@code null}.
  ///@see AssociationRequest
  void associate(associationrequest_.AssociationRequest request,
          CompanionDeviceManager_Callback callback, handler_.Handler handler) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_associate,
          jni.JniType.voidType,
          [request.reference, callback.reference, handler.reference]).check();

  static final _id_getAssociations = jniAccessors.getMethodIDOf(
      _classRef, "getAssociations", "()Ljava/util/List;");

  /// from: public java.util.List<java.lang.String> getAssociations()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Calling this API requires a uses-feature
  /// PackageManager\#FEATURE_COMPANION_DEVICE_SETUP declaration in the manifest
  ///
  ///@return a list of MAC addresses of devices that have been previously associated with the
  /// current app. You can use these with \#disassociate
  ///
  /// This value will never be {@code null}.
  jni.JniObject getAssociations() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAssociations, jni.JniType.objectType, []).object);

  static final _id_disassociate = jniAccessors.getMethodIDOf(
      _classRef, "disassociate", "(Ljava/lang/String;)V");

  /// from: public void disassociate(java.lang.String deviceMacAddress)
  ///
  /// Remove the association between this app and the device with the given mac address.
  ///
  /// Any privileges provided via being associated with a given device will be revoked
  ///
  ///
  /// Consider doing so when the
  /// association is no longer relevant to avoid unnecessary battery and/or data drain resulting
  /// from special privileges that the association provides
  ///
  ///
  /// Calling this API requires a uses-feature
  /// PackageManager\#FEATURE_COMPANION_DEVICE_SETUP declaration in the manifest
  ///
  ///@param deviceMacAddress the MAC address of device to disassociate from this app
  ///
  /// This value must never be {@code null}.
  void disassociate(jni.JniString deviceMacAddress) =>
      jniAccessors.callMethodWithArgs(reference, _id_disassociate,
          jni.JniType.voidType, [deviceMacAddress.reference]).check();

  static final _id_requestNotificationAccess = jniAccessors.getMethodIDOf(
      _classRef,
      "requestNotificationAccess",
      "(Landroid/content/ComponentName;)V");

  /// from: public void requestNotificationAccess(android.content.ComponentName component)
  ///
  /// Request notification access for the given component.
  ///
  /// The given component must follow the protocol specified in NotificationListenerService
  ///
  /// Only components from the same ComponentName\#getPackageName package as the calling app
  /// are allowed.
  ///
  /// Your app must have an association with a device before calling this API
  ///
  /// Calling this API requires a uses-feature
  /// PackageManager\#FEATURE_COMPANION_DEVICE_SETUP declaration in the manifest
  ///
  void requestNotificationAccess(componentname_.ComponentName component) =>
      jniAccessors.callMethodWithArgs(reference, _id_requestNotificationAccess,
          jni.JniType.voidType, [component.reference]).check();

  static final _id_hasNotificationAccess = jniAccessors.getMethodIDOf(
      _classRef, "hasNotificationAccess", "(Landroid/content/ComponentName;)Z");

  /// from: public boolean hasNotificationAccess(android.content.ComponentName component)
  ///
  /// Check whether the given component can access the notifications via a
  /// NotificationListenerService
  ///
  /// Your app must have an association with a device before calling this API
  ///
  /// Calling this API requires a uses-feature
  /// PackageManager\#FEATURE_COMPANION_DEVICE_SETUP declaration in the manifest
  ///
  ///@param component the name of the component
  ///@return whether the given component has the notification listener permission
  bool hasNotificationAccess(componentname_.ComponentName component) =>
      jniAccessors.callMethodWithArgs(reference, _id_hasNotificationAccess,
          jni.JniType.booleanType, [component.reference]).boolean;
}

/// from: android.companion.CompanionDeviceManager$Callback
///
/// A callback to receive once at least one suitable device is found, or the search failed
/// (e.g.&nbsp;timed out)
class CompanionDeviceManager_Callback extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/companion/CompanionDeviceManager\$Callback");
  CompanionDeviceManager_Callback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  CompanionDeviceManager_Callback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onDeviceFound = jniAccessors.getMethodIDOf(
      _classRef, "onDeviceFound", "(Landroid/content/IntentSender;)V");

  /// from: public abstract void onDeviceFound(android.content.IntentSender chooserLauncher)
  ///
  /// Called once at least one suitable device is found
  ///@param chooserLauncher a IntentSender to launch the UI for user to select a
  ///                        device
  void onDeviceFound(intentsender_.IntentSender chooserLauncher) =>
      jniAccessors.callMethodWithArgs(reference, _id_onDeviceFound,
          jni.JniType.voidType, [chooserLauncher.reference]).check();

  static final _id_onFailure = jniAccessors.getMethodIDOf(
      _classRef, "onFailure", "(Ljava/lang/CharSequence;)V");

  /// from: public abstract void onFailure(java.lang.CharSequence error)
  ///
  /// Called if there was an error looking for device(s)
  ///@param error the cause of the error
  void onFailure(jni.JniObject error) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onFailure,
      jni.JniType.voidType,
      [error.reference]).check();
}
