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

import "../net/Uri.dart" as uri_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.webkit.PermissionRequest
///
/// This class defines a permission request and is used when web content
/// requests access to protected resources. The permission request related events
/// are delivered via WebChromeClient\#onPermissionRequest and
/// WebChromeClient\#onPermissionRequestCanceled.
///
/// Either \#grant(String[]) grant() or \#deny() must be called in UI
/// thread to respond to the request.
///
/// New protected resources whose names are not defined here may be requested in
/// future versions of WebView, even when running on an older Android release. To
/// avoid unintentionally granting requests for new permissions, you should pass the
/// specific permissions you intend to grant to \#grant(String[]) grant(),
/// and avoid writing code like this example:
/// <pre>
/// permissionRequest.grant(permissionRequest.getResources())  // This is wrong!!!
/// </pre>
/// See the WebView's release notes for information about new protected resources.
class PermissionRequest extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/PermissionRequest");
  PermissionRequest.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String RESOURCE_AUDIO_CAPTURE
  ///
  /// Resource belongs to audio capture device, like microphone.
  static const RESOURCE_AUDIO_CAPTURE = "android.webkit.resource.AUDIO_CAPTURE";

  /// from: static public final java.lang.String RESOURCE_MIDI_SYSEX
  ///
  /// Resource will allow sysex messages to be sent to or received from MIDI devices. These
  /// messages are privileged operations, e.g. modifying sound libraries and sampling data, or
  /// even updating the MIDI device's firmware.
  ///
  /// Permission may be requested for this resource in API levels 21 and above, if the Android
  /// device has been updated to WebView 45 or above.
  static const RESOURCE_MIDI_SYSEX = "android.webkit.resource.MIDI_SYSEX";

  /// from: static public final java.lang.String RESOURCE_PROTECTED_MEDIA_ID
  ///
  /// Resource belongs to protected media identifier.
  /// After the user grants this resource, the origin can use EME APIs to generate the license
  /// requests.
  static const RESOURCE_PROTECTED_MEDIA_ID =
      "android.webkit.resource.PROTECTED_MEDIA_ID";

  /// from: static public final java.lang.String RESOURCE_VIDEO_CAPTURE
  ///
  /// Resource belongs to video capture device, like camera.
  static const RESOURCE_VIDEO_CAPTURE = "android.webkit.resource.VIDEO_CAPTURE";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  PermissionRequest()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getOrigin =
      jniAccessors.getMethodIDOf(_classRef, "getOrigin", "()Landroid/net/Uri;");

  /// from: public abstract android.net.Uri getOrigin()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Call this method to get the origin of the web page which is trying to access
  /// the restricted resources.
  ///@return the origin of web content which attempt to access the restricted
  ///         resources.
  uri_.Uri getOrigin() => uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getOrigin, jni.JniType.objectType, []).object);

  static final _id_getResources = jniAccessors.getMethodIDOf(
      _classRef, "getResources", "()[Ljava/lang/String;");

  /// from: public abstract java.lang.String[] getResources()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Call this method to get the resources the web page is trying to access.
  ///@return the array of resources the web content wants to access.
  jni.JniObject getResources() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getResources, jni.JniType.objectType, []).object);

  static final _id_grant =
      jniAccessors.getMethodIDOf(_classRef, "grant", "([Ljava/lang/String;)V");

  /// from: public abstract void grant(java.lang.String[] resources)
  ///
  /// Call this method to grant origin the permission to access the given resources.
  /// The granted permission is only valid for this WebView.
  ///@param resources the resources granted to be accessed by origin, to grant
  ///        request, the requested resources returned by \#getResources()
  ///        must be equals or a subset of granted resources.
  ///        This parameter is designed to avoid granting permission by accident
  ///        especially when new resources are requested by web content.
  void grant(jni.JniObject resources) => jniAccessors.callMethodWithArgs(
      reference,
      _id_grant,
      jni.JniType.voidType,
      [resources.reference]).check();

  static final _id_deny = jniAccessors.getMethodIDOf(_classRef, "deny", "()V");

  /// from: public abstract void deny()
  ///
  /// Call this method to deny the request.
  void deny() => jniAccessors.callMethodWithArgs(
      reference, _id_deny, jni.JniType.voidType, []).check();
}
