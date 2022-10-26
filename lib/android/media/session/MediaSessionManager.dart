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

import "../../content/Context.dart" as context_;

import "../../content/ComponentName.dart" as componentname_;

import "../../os/Handler.dart" as handler_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.session.MediaSessionManager
///
/// Provides support for interacting with MediaSession media sessions
/// that applications have published to express their ongoing media playback
/// state.
///@see MediaSession
///@see MediaController
class MediaSessionManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/session/MediaSessionManager");
  MediaSessionManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  MediaSessionManager(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_getActiveSessions = jniAccessors.getMethodIDOf(_classRef,
      "getActiveSessions", "(Landroid/content/ComponentName;)Ljava/util/List;");

  /// from: public java.util.List<android.media.session.MediaController> getActiveSessions(android.content.ComponentName notificationListener)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get a list of controllers for all ongoing sessions. The controllers will
  /// be provided in priority order with the most important controller at index
  /// 0.
  ///
  /// This requires the android.Manifest.permission.MEDIA_CONTENT_CONTROL
  /// permission be held by the calling app. You may also retrieve this list if
  /// your app is an enabled notification listener using the
  /// NotificationListenerService APIs, in which case you must pass the
  /// ComponentName of your enabled listener.
  ///@param notificationListener The enabled notification listener component.
  ///            May be null.
  /// This value may be {@code null}.
  ///@return A list of controllers for ongoing sessions.
  jni.JniObject getActiveSessions(
          componentname_.ComponentName notificationListener) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getActiveSessions,
          jni.JniType.objectType,
          [notificationListener.reference]).object);

  static final _id_addOnActiveSessionsChangedListener = jniAccessors.getMethodIDOf(
      _classRef,
      "addOnActiveSessionsChangedListener",
      "(Landroid/media/session/MediaSessionManager\$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V");

  /// from: public void addOnActiveSessionsChangedListener(android.media.session.MediaSessionManager.OnActiveSessionsChangedListener sessionListener, android.content.ComponentName notificationListener)
  ///
  /// Add a listener to be notified when the list of active sessions
  /// changes.This requires the
  /// android.Manifest.permission.MEDIA_CONTENT_CONTROL permission be held by
  /// the calling app. You may also retrieve this list if your app is an
  /// enabled notification listener using the
  /// NotificationListenerService APIs, in which case you must pass the
  /// ComponentName of your enabled listener. Updates will be posted to
  /// the thread that registered the listener.
  ///@param sessionListener The listener to add.
  /// This value must never be {@code null}.
  ///@param notificationListener The enabled notification listener component.
  ///            May be null.
  ///
  /// This value may be {@code null}.
  void addOnActiveSessionsChangedListener(
          MediaSessionManager_OnActiveSessionsChangedListener sessionListener,
          componentname_.ComponentName notificationListener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addOnActiveSessionsChangedListener,
          jni.JniType.voidType,
          [sessionListener.reference, notificationListener.reference]).check();

  static final _id_addOnActiveSessionsChangedListener1 = jniAccessors.getMethodIDOf(
      _classRef,
      "addOnActiveSessionsChangedListener",
      "(Landroid/media/session/MediaSessionManager\$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V");

  /// from: public void addOnActiveSessionsChangedListener(android.media.session.MediaSessionManager.OnActiveSessionsChangedListener sessionListener, android.content.ComponentName notificationListener, android.os.Handler handler)
  ///
  /// Add a listener to be notified when the list of active sessions
  /// changes.This requires the
  /// android.Manifest.permission.MEDIA_CONTENT_CONTROL permission be held by
  /// the calling app. You may also retrieve this list if your app is an
  /// enabled notification listener using the
  /// NotificationListenerService APIs, in which case you must pass the
  /// ComponentName of your enabled listener. Updates will be posted to
  /// the handler specified or to the caller's thread if the handler is null.
  ///@param sessionListener The listener to add.
  /// This value must never be {@code null}.
  ///@param notificationListener The enabled notification listener component.
  ///            May be null.
  /// This value may be {@code null}.
  ///@param handler The handler to post events to.
  ///
  /// This value may be {@code null}.
  void addOnActiveSessionsChangedListener1(
          MediaSessionManager_OnActiveSessionsChangedListener sessionListener,
          componentname_.ComponentName notificationListener,
          handler_.Handler handler) =>
      jniAccessors.callMethodWithArgs(reference,
          _id_addOnActiveSessionsChangedListener1, jni.JniType.voidType, [
        sessionListener.reference,
        notificationListener.reference,
        handler.reference
      ]).check();

  static final _id_removeOnActiveSessionsChangedListener =
      jniAccessors.getMethodIDOf(
          _classRef,
          "removeOnActiveSessionsChangedListener",
          "(Landroid/media/session/MediaSessionManager\$OnActiveSessionsChangedListener;)V");

  /// from: public void removeOnActiveSessionsChangedListener(android.media.session.MediaSessionManager.OnActiveSessionsChangedListener listener)
  ///
  /// Stop receiving active sessions updates on the specified listener.
  ///@param listener The listener to remove.
  ///
  /// This value must never be {@code null}.
  void removeOnActiveSessionsChangedListener(
          MediaSessionManager_OnActiveSessionsChangedListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_removeOnActiveSessionsChangedListener,
          jni.JniType.voidType,
          [listener.reference]).check();

  static final _id_isTrustedForMediaControl = jniAccessors.getMethodIDOf(
      _classRef,
      "isTrustedForMediaControl",
      "(Landroid/media/session/MediaSessionManager\$RemoteUserInfo;)Z");

  /// from: public boolean isTrustedForMediaControl(android.media.session.MediaSessionManager.RemoteUserInfo userInfo)
  ///
  /// Checks whether the remote user is a trusted app.
  ///
  /// An app is trusted if the app holds the android.Manifest.permission.MEDIA_CONTENT_CONTROL
  /// permission or has an enabled notification listener.
  ///@param userInfo The remote user info from either
  ///            MediaSession\#getCurrentControllerInfo() or
  ///            MediaBrowserService\#getCurrentBrowserInfo().
  /// This value must never be {@code null}.
  ///@return {@code true} if the remote user is trusted and its package name matches with the UID.
  ///            {@code false} otherwise.
  bool isTrustedForMediaControl(MediaSessionManager_RemoteUserInfo userInfo) =>
      jniAccessors.callMethodWithArgs(reference, _id_isTrustedForMediaControl,
          jni.JniType.booleanType, [userInfo.reference]).boolean;
}

/// from: android.media.session.MediaSessionManager$RemoteUserInfo
///
/// Information of a remote user of MediaSession or MediaBrowserService.
/// This can be used to decide whether the remote user is trusted app, and also differentiate
/// caller of MediaSession and MediaBrowserService callbacks.
///
/// See \#equals(Object) to take a look at how it differentiate media controller.
///@see \#isTrustedForMediaControl(RemoteUserInfo)
class MediaSessionManager_RemoteUserInfo extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/media/session/MediaSessionManager\$RemoteUserInfo");
  MediaSessionManager_RemoteUserInfo.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;II)V");

  /// from: public void <init>(java.lang.String packageName, int pid, int uid)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param packageName This value must never be {@code null}.
  MediaSessionManager_RemoteUserInfo(
      jni.JniString packageName, int pid, int uid)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [packageName.reference, pid, uid]).object);

  static final _id_getPackageName = jniAccessors.getMethodIDOf(
      _classRef, "getPackageName", "()Ljava/lang/String;");

  /// from: public java.lang.String getPackageName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return package name of the controller
  jni.JniString getPackageName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPackageName, jni.JniType.objectType, []).object);

  static final _id_getPid =
      jniAccessors.getMethodIDOf(_classRef, "getPid", "()I");

  /// from: public int getPid()
  ///
  /// @return pid of the controller
  int getPid() => jniAccessors.callMethodWithArgs(
      reference, _id_getPid, jni.JniType.intType, []).integer;

  static final _id_getUid =
      jniAccessors.getMethodIDOf(_classRef, "getUid", "()I");

  /// from: public int getUid()
  ///
  /// @return uid of the controller
  int getUid() => jniAccessors.callMethodWithArgs(
      reference, _id_getUid, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  ///
  /// Returns equality of two RemoteUserInfo. Two RemoteUserInfos are the same only if they're
  /// sent to the same controller (either MediaController or
  /// MediaBrowser. If it's not nor one of them is triggered by the key presses, they
  /// would be considered as different one.
  ///
  /// If you only want to compare the caller's package, compare them with the
  /// \#getPackageName(), \#getPid(), and/or \#getUid() directly.
  ///@param obj the reference object with which to compare.
  ///@return {@code true} if equals, {@code false} otherwise
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;
}

/// from: android.media.session.MediaSessionManager$OnActiveSessionsChangedListener
///
/// Listens for changes to the list of active sessions. This can be added
/// using \#addOnActiveSessionsChangedListener.
class MediaSessionManager_OnActiveSessionsChangedListener
    extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/media/session/MediaSessionManager\$OnActiveSessionsChangedListener");
  MediaSessionManager_OnActiveSessionsChangedListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onActiveSessionsChanged = jniAccessors.getMethodIDOf(
      _classRef, "onActiveSessionsChanged", "(Ljava/util/List;)V");

  /// from: public abstract void onActiveSessionsChanged(java.util.List<android.media.session.MediaController> controllers)
  ///
  /// @param controllers This value may be {@code null}.
  void onActiveSessionsChanged(jni.JniObject controllers) =>
      jniAccessors.callMethodWithArgs(reference, _id_onActiveSessionsChanged,
          jni.JniType.voidType, [controllers.reference]).check();
}
