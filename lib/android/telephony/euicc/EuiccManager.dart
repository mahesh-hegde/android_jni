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

import "DownloadableSubscription.dart" as downloadablesubscription_;

import "../../app/PendingIntent.dart" as pendingintent_;

import "../../app/Activity.dart" as activity_;

import "../../content/Intent.dart" as intent_;

import "EuiccInfo.dart" as euiccinfo_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.euicc.EuiccManager
///
/// EuiccManager is the application interface to eUICCs, or eSIMs/embedded SIMs.
///
/// You do not instantiate this class directly; instead, you retrieve an instance through
/// Context\#getSystemService(String) and Context\#EUICC_SERVICE.
///
/// See \#isEnabled before attempting to use these APIs.
class EuiccManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/euicc/EuiccManager");
  EuiccManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS
  ///
  /// Intent action to launch the embedded SIM (eUICC) management settings screen.
  ///
  /// This screen shows a list of embedded profiles and offers the user the ability to switch
  /// between them, download new profiles, and delete unused profiles.
  ///
  /// The activity will immediately finish with android.app.Activity\#RESULT_CANCELED if
  /// \#isEnabled is false.
  ///
  /// This is ued by non-LPA app to bring up LUI.
  static const ACTION_MANAGE_EMBEDDED_SUBSCRIPTIONS =
      "android.telephony.euicc.action.MANAGE_EMBEDDED_SUBSCRIPTIONS";

  /// from: static public final java.lang.String ACTION_NOTIFY_CARRIER_SETUP_INCOMPLETE
  ///
  /// Broadcast Action: The action sent to carrier app so it knows the carrier setup is not
  /// completed.
  static const ACTION_NOTIFY_CARRIER_SETUP_INCOMPLETE =
      "android.telephony.euicc.action.NOTIFY_CARRIER_SETUP_INCOMPLETE";

  /// from: static public final int EMBEDDED_SUBSCRIPTION_RESULT_ERROR
  ///
  /// Result code for an operation indicating that an unresolvable error occurred.
  ///
  /// \#EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE will be populated with a detailed error
  /// code for logging/debugging purposes only.
  static const EMBEDDED_SUBSCRIPTION_RESULT_ERROR = 2;

  /// from: static public final int EMBEDDED_SUBSCRIPTION_RESULT_OK
  ///
  /// Result code for an operation indicating that the operation succeeded.
  static const EMBEDDED_SUBSCRIPTION_RESULT_OK = 0;

  /// from: static public final int EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR
  ///
  /// Result code for an operation indicating that the user must take some action before the
  /// operation can continue.
  ///@see \#startResolutionActivity
  static const EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR = 1;

  /// from: static public final java.lang.String EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE
  ///
  /// Key for an extra set on PendingIntent result callbacks providing a detailed result
  /// code.
  ///
  /// This code is an implementation detail of the embedded subscription manager and is only
  /// intended for logging or debugging purposes.
  static const EXTRA_EMBEDDED_SUBSCRIPTION_DETAILED_CODE =
      "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE";

  /// from: static public final java.lang.String EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION
  ///
  /// Key for an extra set on {@code \#getDownloadableSubscriptionMetadata} PendingIntent result
  /// callbacks providing the downloadable subscription metadata.
  static const EXTRA_EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION =
      "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION";

  /// from: static public final java.lang.String META_DATA_CARRIER_ICON
  ///
  /// Optional meta-data attribute for a carrier app providing an icon to use to represent the
  /// carrier. If not provided, the app's launcher icon will be used as a fallback.
  static const META_DATA_CARRIER_ICON = "android.telephony.euicc.carriericon";

  static final _id_isEnabled =
      jniAccessors.getMethodIDOf(_classRef, "isEnabled", "()Z");

  /// from: public boolean isEnabled()
  ///
  /// Whether embedded subscriptions are currently enabled.
  ///
  /// Even on devices with the PackageManager\#FEATURE_TELEPHONY_EUICC feature, embedded
  /// subscriptions may be turned off, e.g. because of a carrier restriction from an inserted
  /// physical SIM. Therefore, this runtime check should be used before accessing embedded
  /// subscription APIs.
  ///@return true if embedded subscriptions are currently enabled.
  bool isEnabled() => jniAccessors.callMethodWithArgs(
      reference, _id_isEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_getEid =
      jniAccessors.getMethodIDOf(_classRef, "getEid", "()Ljava/lang/String;");

  /// from: public java.lang.String getEid()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the EID identifying the eUICC hardware.
  ///
  /// Requires that the calling app has carrier privileges on the active subscription on the
  /// eUICC.
  ///@return the EID. May be null if \#isEnabled() is false or the eUICC is not ready.
  jni.JniString getEid() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEid, jni.JniType.objectType, []).object);

  static final _id_downloadSubscription = jniAccessors.getMethodIDOf(
      _classRef,
      "downloadSubscription",
      "(Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;)V");

  /// from: public void downloadSubscription(android.telephony.euicc.DownloadableSubscription subscription, boolean switchAfterDownload, android.app.PendingIntent callbackIntent)
  ///
  /// Attempt to download the given DownloadableSubscription.
  ///
  /// Requires the {@code android.Manifest.permission\#WRITE_EMBEDDED_SUBSCRIPTIONS} permission,
  /// or the calling app must be authorized to manage both the currently-active subscription and
  /// the subscription to be downloaded according to the subscription metadata. Without the former,
  /// an \#EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR will be returned in the callback
  /// intent to prompt the user to accept the download.
  ///
  /// Requires android.Manifest.permission\#WRITE_EMBEDDED_SUBSCRIPTIONS
  ///@param subscription the subscription to download.
  ///@param switchAfterDownload if true, the profile will be activated upon successful download.
  ///@param callbackIntent a PendingIntent to launch when the operation completes.
  void downloadSubscription(
          downloadablesubscription_.DownloadableSubscription subscription,
          bool switchAfterDownload,
          pendingintent_.PendingIntent callbackIntent) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_downloadSubscription, jni.JniType.voidType, [
        subscription.reference,
        switchAfterDownload,
        callbackIntent.reference
      ]).check();

  static final _id_startResolutionActivity = jniAccessors.getMethodIDOf(
      _classRef,
      "startResolutionActivity",
      "(Landroid/app/Activity;ILandroid/content/Intent;Landroid/app/PendingIntent;)V");

  /// from: public void startResolutionActivity(android.app.Activity activity, int requestCode, android.content.Intent resultIntent, android.app.PendingIntent callbackIntent)
  ///
  /// Start an activity to resolve a user-resolvable error.
  ///
  /// If an operation returns \#EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR, this
  /// method may be called to prompt the user to resolve the issue.
  ///
  /// This method may only be called once for a particular error.
  ///@param activity the calling activity (which should be in the foreground).
  ///@param requestCode an application-specific request code which will be provided to
  ///     Activity\#onActivityResult upon completion. Note that the operation may still be
  ///     in progress when the resolution activity completes; it is not fully finished until the
  ///     callback intent is triggered.
  ///@param resultIntent the Intent provided to the initial callback intent which failed with
  ///     \#EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR.
  ///@param callbackIntent a PendingIntent to launch when the operation completes. This is
  ///     trigered upon completion of the original operation that required user resolution.
  ///@throws android.content.IntentSender.SendIntentException if called more than once.
  void startResolutionActivity(
          activity_.Activity activity,
          int requestCode,
          intent_.Intent resultIntent,
          pendingintent_.PendingIntent callbackIntent) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_startResolutionActivity, jni.JniType.voidType, [
        activity.reference,
        requestCode,
        resultIntent.reference,
        callbackIntent.reference
      ]).check();

  static final _id_getEuiccInfo = jniAccessors.getMethodIDOf(
      _classRef, "getEuiccInfo", "()Landroid/telephony/euicc/EuiccInfo;");

  /// from: public android.telephony.euicc.EuiccInfo getEuiccInfo()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns information about the eUICC chip/device.
  ///@return the EuiccInfo. May be null if \#isEnabled() is false or the eUICC is
  ///     not ready.
  euiccinfo_.EuiccInfo getEuiccInfo() =>
      euiccinfo_.EuiccInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEuiccInfo, jni.JniType.objectType, []).object);

  static final _id_deleteSubscription = jniAccessors.getMethodIDOf(
      _classRef, "deleteSubscription", "(ILandroid/app/PendingIntent;)V");

  /// from: public void deleteSubscription(int subscriptionId, android.app.PendingIntent callbackIntent)
  ///
  /// Deletes the given subscription.
  ///
  /// If this subscription is currently active, the device will first switch away from it onto
  /// an "empty" subscription.
  ///
  /// Requires that the calling app has carrier privileges according to the metadata of the
  /// profile to be deleted, or the
  /// {@code android.Manifest.permission\#WRITE_EMBEDDED_SUBSCRIPTIONS} permission.
  ///
  /// Requires android.Manifest.permission\#WRITE_EMBEDDED_SUBSCRIPTIONS
  ///@param subscriptionId the ID of the subscription to delete.
  ///@param callbackIntent a PendingIntent to launch when the operation completes.
  void deleteSubscription(
          int subscriptionId, pendingintent_.PendingIntent callbackIntent) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_deleteSubscription,
          jni.JniType.voidType,
          [subscriptionId, callbackIntent.reference]).check();

  static final _id_switchToSubscription = jniAccessors.getMethodIDOf(
      _classRef, "switchToSubscription", "(ILandroid/app/PendingIntent;)V");

  /// from: public void switchToSubscription(int subscriptionId, android.app.PendingIntent callbackIntent)
  ///
  /// Switch to (enable) the given subscription.
  ///
  /// Requires the {@code android.Manifest.permission\#WRITE_EMBEDDED_SUBSCRIPTIONS} permission,
  /// or the calling app must be authorized to manage both the currently-active subscription and
  /// the subscription to be enabled according to the subscription metadata. Without the former,
  /// an \#EMBEDDED_SUBSCRIPTION_RESULT_RESOLVABLE_ERROR will be returned in the callback
  /// intent to prompt the user to accept the download.
  ///
  /// Requires android.Manifest.permission\#WRITE_EMBEDDED_SUBSCRIPTIONS
  ///@param subscriptionId the ID of the subscription to enable. May be
  ///     android.telephony.SubscriptionManager\#INVALID_SUBSCRIPTION_ID to deactivate the
  ///     current profile without activating another profile to replace it.
  ///@param callbackIntent a PendingIntent to launch when the operation completes.
  void switchToSubscription(
          int subscriptionId, pendingintent_.PendingIntent callbackIntent) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_switchToSubscription,
          jni.JniType.voidType,
          [subscriptionId, callbackIntent.reference]).check();
}
