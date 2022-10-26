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

import "../os/Bundle.dart" as bundle_;

import "../os/PersistableBundle.dart" as persistablebundle_;

import "Intent.dart" as intent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.RestrictionsManager
///
/// Provides a mechanism for apps to query restrictions imposed by an entity that
/// manages the user. Apps can also send permission requests to a local or remote
/// device administrator to override default app-specific restrictions or any other
/// operation that needs explicit authorization from the administrator.
///
/// Apps can expose a set of restrictions via an XML file specified in the manifest.
///
/// If the user has an active Restrictions Provider, dynamic requests can be made in
/// addition to the statically imposed restrictions. Dynamic requests are app-specific
/// and can be expressed via a predefined set of request types.
///
/// The RestrictionsManager forwards the dynamic requests to the active
/// Restrictions Provider. The Restrictions Provider can respond back to requests by calling
/// \#notifyPermissionResponse(String, PersistableBundle), when
/// a response is received from the administrator of the device or user.
/// The response is relayed back to the application via a protected broadcast,
/// \#ACTION_PERMISSION_RESPONSE_RECEIVED.
///
/// Static restrictions are specified by an XML file referenced by a meta-data attribute
/// in the manifest. This enables applications as well as any web administration consoles
/// to be able to read the list of available restrictions from the apk.
///
/// The syntax of the XML format is as follows:
/// <pre>
/// &lt;?xml version="1.0" encoding="utf-8"?&gt;
/// &lt;restrictions xmlns:android="http://schemas.android.com/apk/res/android" &gt;
///     &lt;restriction
///         android:key="string"
///         android:title="string resource"
///         android:restrictionType=["bool" | "string" | "integer"
///                                         | "choice" | "multi-select" | "hidden"
///                                         | "bundle" | "bundle_array"]
///         android:description="string resource"
///         android:entries="string-array resource"
///         android:entryValues="string-array resource"
///         android:defaultValue="reference" &gt;
///             &lt;restriction ... /&gt;
///             ...
///     &lt;/restriction&gt;
///     &lt;restriction ... /&gt;
///     ...
/// &lt;/restrictions&gt;
/// </pre>
///
/// The attributes for each restriction depend on the restriction type.
///
/// <ul>
/// <li><code>key</code>, <code>title</code> and <code>restrictionType</code> are mandatory.</li>
/// <li><code>entries</code> and <code>entryValues</code> are required if <code>restrictionType
/// </code> is <code>choice</code> or <code>multi-select</code>.</li>
/// <li><code>defaultValue</code> is optional and its type depends on the
/// <code>restrictionType</code></li>
/// <li><code>hidden</code> type must have a <code>defaultValue</code> and will
/// not be shown to the administrator. It can be used to pass along data that cannot be modified,
/// such as a version code.</li>
/// <li><code>description</code> is meant to describe the restriction in more detail to the
/// administrator controlling the values, if the title is not sufficient.</li>
/// </ul>
///
/// Only restrictions of type {@code bundle} and {@code bundle_array} can have one or multiple nested
/// restriction elements.
///
/// In your manifest's <code>application</code> section, add the meta-data tag to point to
/// the restrictions XML file as shown below:
/// <pre>
/// &lt;application ... &gt;
///     &lt;meta-data android:name="android.content.APP_RESTRICTIONS"
///                   android:resource="@xml/app_restrictions" /&gt;
///     ...
/// &lt;/application&gt;
/// </pre>
///@see RestrictionEntry
///@see RestrictionsReceiver
///@see DevicePolicyManager\#setRestrictionsProvider(ComponentName, ComponentName)
///@see DevicePolicyManager\#setApplicationRestrictions(ComponentName, String, Bundle)
class RestrictionsManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/RestrictionsManager");
  RestrictionsManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_PERMISSION_RESPONSE_RECEIVED
  ///
  /// Broadcast intent delivered when a response is received for a permission request. The
  /// application should not interrupt the user by coming to the foreground if it isn't
  /// currently in the foreground. It can either post a notification informing
  /// the user of the response or wait until the next time the user launches the app.
  ///
  /// For instance, if the user requested permission to make an in-app purchase,
  /// the app can post a notification that the request had been approved or denied.
  ///
  /// The broadcast Intent carries the following extra:
  /// \#EXTRA_RESPONSE_BUNDLE.
  static const ACTION_PERMISSION_RESPONSE_RECEIVED =
      "android.content.action.PERMISSION_RESPONSE_RECEIVED";

  /// from: static public final java.lang.String ACTION_REQUEST_LOCAL_APPROVAL
  ///
  /// Activity intent that is optionally implemented by the Restrictions Provider package
  /// to challenge for an administrator PIN or password locally on the device. Apps will
  /// call this intent using Activity\#startActivityForResult. On a successful
  /// response, Activity\#onActivityResult will return a resultCode of
  /// Activity\#RESULT_OK.
  ///
  /// The intent must contain \#EXTRA_REQUEST_BUNDLE as an extra and the bundle must
  /// contain at least \#REQUEST_KEY_MESSAGE for the activity to display.
  ///
  ///@see \#createLocalApprovalIntent()
  static const ACTION_REQUEST_LOCAL_APPROVAL =
      "android.content.action.REQUEST_LOCAL_APPROVAL";

  /// from: static public final java.lang.String ACTION_REQUEST_PERMISSION
  ///
  /// Broadcast intent sent to the Restrictions Provider to handle a permission request from
  /// an app. It will have the following extras: \#EXTRA_PACKAGE_NAME,
  /// \#EXTRA_REQUEST_TYPE, \#EXTRA_REQUEST_ID and \#EXTRA_REQUEST_BUNDLE.
  /// The Restrictions Provider will handle the request and respond back to the
  /// RestrictionsManager, when a response is available, by calling
  /// \#notifyPermissionResponse.
  ///
  /// The BroadcastReceiver must require the android.Manifest.permission\#BIND_DEVICE_ADMIN
  /// permission to ensure that only the system can send the broadcast.
  static const ACTION_REQUEST_PERMISSION =
      "android.content.action.REQUEST_PERMISSION";

  /// from: static public final java.lang.String EXTRA_PACKAGE_NAME
  ///
  /// The package name of the application making the request.
  ///
  /// Type: String
  static const EXTRA_PACKAGE_NAME = "android.content.extra.PACKAGE_NAME";

  /// from: static public final java.lang.String EXTRA_REQUEST_BUNDLE
  ///
  /// The request bundle passed in the \#ACTION_REQUEST_PERMISSION broadcast.
  ///
  /// Type: PersistableBundle
  static const EXTRA_REQUEST_BUNDLE = "android.content.extra.REQUEST_BUNDLE";

  /// from: static public final java.lang.String EXTRA_REQUEST_ID
  ///
  /// The request ID passed in the \#ACTION_REQUEST_PERMISSION broadcast.
  ///
  /// Type: String
  static const EXTRA_REQUEST_ID = "android.content.extra.REQUEST_ID";

  /// from: static public final java.lang.String EXTRA_REQUEST_TYPE
  ///
  /// The request type passed in the \#ACTION_REQUEST_PERMISSION broadcast.
  ///
  /// Type: String
  static const EXTRA_REQUEST_TYPE = "android.content.extra.REQUEST_TYPE";

  /// from: static public final java.lang.String EXTRA_RESPONSE_BUNDLE
  ///
  /// Contains a response from the administrator for specific request.
  /// The bundle contains the following information, at least:
  /// <ul>
  /// <li>\#REQUEST_KEY_ID: The request ID.</li>
  /// <li>\#RESPONSE_KEY_RESULT: The response result.</li>
  /// </ul>
  ///
  /// Type: PersistableBundle
  static const EXTRA_RESPONSE_BUNDLE = "android.content.extra.RESPONSE_BUNDLE";

  /// from: static public final java.lang.String META_DATA_APP_RESTRICTIONS
  ///
  /// Name of the meta-data entry in the manifest that points to the XML file containing the
  /// application's available restrictions.
  ///@see \#getManifestRestrictions(String)
  static const META_DATA_APP_RESTRICTIONS = "android.content.APP_RESTRICTIONS";

  /// from: static public final java.lang.String REQUEST_KEY_APPROVE_LABEL
  ///
  /// Key for request approval button label contained in the request bundle.
  ///
  /// Optional, may be shown as a label on the positive button in a dialog or
  /// notification presented to the administrator who approves the request.
  ///
  /// Type: String
  static const REQUEST_KEY_APPROVE_LABEL = "android.request.approve_label";

  /// from: static public final java.lang.String REQUEST_KEY_DATA
  ///
  /// Key for request data contained in the request bundle.
  ///
  /// Optional, typically used to identify the specific data that is being referred to,
  /// such as the unique identifier for a movie or book. This is not used for display
  /// purposes and is more like a cookie. This value is returned in the
  /// \#EXTRA_RESPONSE_BUNDLE.
  ///
  /// Type: String
  static const REQUEST_KEY_DATA = "android.request.data";

  /// from: static public final java.lang.String REQUEST_KEY_DENY_LABEL
  ///
  /// Key for request rejection button label contained in the request bundle.
  ///
  /// Optional, may be shown as a label on the negative button in a dialog or
  /// notification presented to the administrator who approves the request.
  ///
  /// Type: String
  static const REQUEST_KEY_DENY_LABEL = "android.request.deny_label";

  /// from: static public final java.lang.String REQUEST_KEY_ICON
  ///
  /// Key for request icon contained in the request bundle.
  ///
  /// Optional, shown alongside the request message presented to the administrator
  /// who approves the request. The content must be a compressed image such as a
  /// PNG or JPEG, as a byte array.
  ///
  /// Type: byte[]
  static const REQUEST_KEY_ICON = "android.request.icon";

  /// from: static public final java.lang.String REQUEST_KEY_ID
  ///
  /// Key for request ID contained in the request bundle.
  ///
  /// App-generated request ID to identify the specific request when receiving
  /// a response. This value is returned in the \#EXTRA_RESPONSE_BUNDLE.
  ///
  /// Type: String
  static const REQUEST_KEY_ID = "android.request.id";

  /// from: static public final java.lang.String REQUEST_KEY_MESSAGE
  ///
  /// Key for request message contained in the request bundle.
  ///
  /// Required, shown as the actual message in a notification or dialog presented
  /// to the administrator who approves the request.
  ///
  /// Type: String
  static const REQUEST_KEY_MESSAGE = "android.request.mesg";

  /// from: static public final java.lang.String REQUEST_KEY_NEW_REQUEST
  ///
  /// Key for issuing a new request, contained in the request bundle. If this is set to true,
  /// the Restrictions Provider must make a new request. If it is false or not specified, then
  /// the Restrictions Provider can return a cached response that has the same requestId, if
  /// available. If there's no cached response, it will issue a new one to the administrator.
  ///
  /// Type: boolean
  static const REQUEST_KEY_NEW_REQUEST = "android.request.new_request";

  /// from: static public final java.lang.String REQUEST_KEY_TITLE
  ///
  /// Key for request title contained in the request bundle.
  ///
  /// Optional, typically used as the title of any notification or dialog presented
  /// to the administrator who approves the request.
  ///
  /// Type: String
  static const REQUEST_KEY_TITLE = "android.request.title";

  /// from: static public final java.lang.String REQUEST_TYPE_APPROVAL
  ///
  /// Request type for a simple question, with a possible title and icon.
  ///
  /// Required keys are: \#REQUEST_KEY_MESSAGE
  ///
  /// Optional keys are
  /// \#REQUEST_KEY_DATA, \#REQUEST_KEY_ICON, \#REQUEST_KEY_TITLE,
  /// \#REQUEST_KEY_APPROVE_LABEL and \#REQUEST_KEY_DENY_LABEL.
  static const REQUEST_TYPE_APPROVAL = "android.request.type.approval";

  /// from: static public final java.lang.String RESPONSE_KEY_ERROR_CODE
  ///
  /// Key for the optional error code in the response bundle sent to the application.
  ///
  /// Type: int
  ///
  /// Possible values: \#RESULT_ERROR_BAD_REQUEST, \#RESULT_ERROR_NETWORK or
  /// \#RESULT_ERROR_INTERNAL.
  static const RESPONSE_KEY_ERROR_CODE = "android.response.errorcode";

  /// from: static public final java.lang.String RESPONSE_KEY_MESSAGE
  ///
  /// Key for the optional message in the response bundle sent to the application.
  ///
  /// Type: String
  static const RESPONSE_KEY_MESSAGE = "android.response.msg";

  /// from: static public final java.lang.String RESPONSE_KEY_RESPONSE_TIMESTAMP
  ///
  /// Key for the optional timestamp of when the administrator responded to the permission
  /// request. It is an represented in milliseconds since January 1, 1970 00:00:00.0 UTC.
  ///
  /// Type: long
  static const RESPONSE_KEY_RESPONSE_TIMESTAMP = "android.response.timestamp";

  /// from: static public final java.lang.String RESPONSE_KEY_RESULT
  ///
  /// Key for the response result in the response bundle sent to the application, for a permission
  /// request. It indicates the status of the request. In some cases an additional message might
  /// be available in \#RESPONSE_KEY_MESSAGE, to be displayed to the user.
  ///
  /// Type: int
  ///
  /// Possible values: \#RESULT_APPROVED, \#RESULT_DENIED,
  /// \#RESULT_NO_RESPONSE, \#RESULT_UNKNOWN_REQUEST or
  /// \#RESULT_ERROR.
  static const RESPONSE_KEY_RESULT = "android.response.result";

  /// from: static public final int RESULT_APPROVED
  ///
  /// Response result value indicating that the request was approved.
  static const RESULT_APPROVED = 1;

  /// from: static public final int RESULT_DENIED
  ///
  /// Response result value indicating that the request was denied.
  static const RESULT_DENIED = 2;

  /// from: static public final int RESULT_ERROR
  ///
  /// Response result value indicating an error condition. Additional error code might be available
  /// in the response bundle, for the key \#RESPONSE_KEY_ERROR_CODE. There might also be
  /// an associated error message in the response bundle, for the key
  /// \#RESPONSE_KEY_MESSAGE.
  static const RESULT_ERROR = 5;

  /// from: static public final int RESULT_ERROR_BAD_REQUEST
  ///
  /// Error code indicating that there was a problem with the request.
  ///
  /// Stored in \#RESPONSE_KEY_ERROR_CODE field in the response bundle.
  static const RESULT_ERROR_BAD_REQUEST = 1;

  /// from: static public final int RESULT_ERROR_INTERNAL
  ///
  /// Error code indicating that there was an internal error.
  ///
  /// Stored in \#RESPONSE_KEY_ERROR_CODE field in the response bundle.
  static const RESULT_ERROR_INTERNAL = 3;

  /// from: static public final int RESULT_ERROR_NETWORK
  ///
  /// Error code indicating that there was a problem with the network.
  ///
  /// Stored in \#RESPONSE_KEY_ERROR_CODE field in the response bundle.
  static const RESULT_ERROR_NETWORK = 2;

  /// from: static public final int RESULT_NO_RESPONSE
  ///
  /// Response result value indicating that the request has not received a response yet.
  static const RESULT_NO_RESPONSE = 3;

  /// from: static public final int RESULT_UNKNOWN_REQUEST
  ///
  /// Response result value indicating that the request is unknown, when it's not a new
  /// request.
  static const RESULT_UNKNOWN_REQUEST = 4;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  RestrictionsManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getApplicationRestrictions = jniAccessors.getMethodIDOf(
      _classRef, "getApplicationRestrictions", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getApplicationRestrictions()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns any available set of application-specific restrictions applicable
  /// to this application.
  ///@return the application restrictions as a Bundle. Returns null if there
  /// are no restrictions.
  bundle_.Bundle getApplicationRestrictions() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getApplicationRestrictions, jni.JniType.objectType, []).object);

  static final _id_hasRestrictionsProvider =
      jniAccessors.getMethodIDOf(_classRef, "hasRestrictionsProvider", "()Z");

  /// from: public boolean hasRestrictionsProvider()
  ///
  /// Called by an application to check if there is an active Restrictions Provider. If
  /// there isn't, \#requestPermission(String, String, PersistableBundle) is not available.
  ///@return whether there is an active Restrictions Provider.
  bool hasRestrictionsProvider() => jniAccessors.callMethodWithArgs(reference,
      _id_hasRestrictionsProvider, jni.JniType.booleanType, []).boolean;

  static final _id_requestPermission = jniAccessors.getMethodIDOf(
      _classRef,
      "requestPermission",
      "(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V");

  /// from: public void requestPermission(java.lang.String requestType, java.lang.String requestId, android.os.PersistableBundle request)
  ///
  /// Called by an application to request permission for an operation. The contents of the
  /// request are passed in a Bundle that contains several pieces of data depending on the
  /// chosen request type.
  ///@param requestType The type of request. The type could be one of the
  /// predefined types specified here or a custom type that the specific
  /// Restrictions Provider might understand. For custom types, the type name should be
  /// namespaced to avoid collisions with predefined types and types specified by
  /// other Restrictions Providers.
  ///@param requestId A unique id generated by the app that contains sufficient information
  /// to identify the parameters of the request when it receives the id in the response.
  ///@param request A PersistableBundle containing the data corresponding to the specified request
  /// type. The keys for the data in the bundle depend on the request type.
  ///@throws IllegalArgumentException if any of the required parameters are missing.
  void requestPermission(jni.JniString requestType, jni.JniString requestId,
          persistablebundle_.PersistableBundle request) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_requestPermission, jni.JniType.voidType, [
        requestType.reference,
        requestId.reference,
        request.reference
      ]).check();

  static final _id_createLocalApprovalIntent = jniAccessors.getMethodIDOf(
      _classRef, "createLocalApprovalIntent", "()Landroid/content/Intent;");

  /// from: public android.content.Intent createLocalApprovalIntent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  intent_.Intent createLocalApprovalIntent() =>
      intent_.Intent.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_createLocalApprovalIntent, jni.JniType.objectType, []).object);

  static final _id_notifyPermissionResponse = jniAccessors.getMethodIDOf(
      _classRef,
      "notifyPermissionResponse",
      "(Ljava/lang/String;Landroid/os/PersistableBundle;)V");

  /// from: public void notifyPermissionResponse(java.lang.String packageName, android.os.PersistableBundle response)
  ///
  /// Called by the Restrictions Provider to deliver a response to an application.
  ///@param packageName the application to deliver the response to. Cannot be null.
  ///@param response the bundle containing the response status, request ID and other information.
  ///                 Cannot be null.
  ///@throws IllegalArgumentException if any of the required parameters are missing.
  void notifyPermissionResponse(jni.JniString packageName,
          persistablebundle_.PersistableBundle response) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_notifyPermissionResponse,
          jni.JniType.voidType,
          [packageName.reference, response.reference]).check();

  static final _id_getManifestRestrictions = jniAccessors.getMethodIDOf(
      _classRef,
      "getManifestRestrictions",
      "(Ljava/lang/String;)Ljava/util/List;");

  /// from: public java.util.List<android.content.RestrictionEntry> getManifestRestrictions(java.lang.String packageName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Parse and return the list of restrictions defined in the manifest for the specified
  /// package, if any.
  ///@param packageName The application for which to fetch the restrictions list.
  ///@return The list of RestrictionEntry objects created from the XML file specified
  /// in the manifest, or null if none was specified.
  jni.JniObject getManifestRestrictions(jni.JniString packageName) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getManifestRestrictions,
          jni.JniType.objectType,
          [packageName.reference]).object);

  static final _id_convertRestrictionsToBundle =
      jniAccessors.getStaticMethodIDOf(_classRef, "convertRestrictionsToBundle",
          "(Ljava/util/List;)Landroid/os/Bundle;");

  /// from: static public android.os.Bundle convertRestrictionsToBundle(java.util.List<android.content.RestrictionEntry> entries)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Converts a list of restrictions to the corresponding bundle, using the following mapping:
  /// <table>
  ///     <tr><th>RestrictionEntry</th><th>Bundle</th></tr>
  ///     <tr><td>RestrictionEntry\#TYPE_BOOLEAN</td><td>Bundle\#putBoolean</td></tr>
  ///     <tr><td>RestrictionEntry\#TYPE_CHOICE,
  ///     RestrictionEntry\#TYPE_MULTI_SELECT</td>
  ///     <td>Bundle\#putStringArray</td></tr>
  ///     <tr><td>RestrictionEntry\#TYPE_INTEGER</td><td>Bundle\#putInt</td></tr>
  ///     <tr><td>RestrictionEntry\#TYPE_STRING</td><td>Bundle\#putString</td></tr>
  ///     <tr><td>RestrictionEntry\#TYPE_BUNDLE</td><td>Bundle\#putBundle</td></tr>
  ///     <tr><td>RestrictionEntry\#TYPE_BUNDLE_ARRAY</td>
  ///     <td>Bundle\#putParcelableArray</td></tr>
  /// </table>
  ///@param entries list of restrictions
  static bundle_.Bundle convertRestrictionsToBundle(jni.JniObject entries) =>
      bundle_.Bundle.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_convertRestrictionsToBundle,
          jni.JniType.objectType,
          [entries.reference]).object);
}
