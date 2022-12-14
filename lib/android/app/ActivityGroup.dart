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

import "Activity.dart" as activity_;

import "../os/Bundle.dart" as bundle_;

import "LocalActivityManager.dart" as localactivitymanager_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.ActivityGroup
///
/// A screen that contains and runs multiple embedded activities.
///@deprecated Use the new Fragment and FragmentManager APIs
/// instead; these are also
/// available on older platforms through the Android compatibility package.
class ActivityGroup extends activity_.Activity {
  static final _classRef = jniAccessors.getClassOf("android/app/ActivityGroup");
  ActivityGroup.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ActivityGroup.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_ctor5 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Z)V");

  /// from: public void <init>(boolean singleActivityMode)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ActivityGroup.ctor5(bool singleActivityMode)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor5, [singleActivityMode]).object);

  static final _id_onCreate = jniAccessors.getMethodIDOf(
      _classRef, "onCreate", "(Landroid/os/Bundle;)V");

  /// from: protected void onCreate(android.os.Bundle savedInstanceState)
  void onCreate(bundle_.Bundle savedInstanceState) =>
      jniAccessors.callMethodWithArgs(reference, _id_onCreate,
          jni.JniType.voidType, [savedInstanceState.reference]).check();

  static final _id_onResume =
      jniAccessors.getMethodIDOf(_classRef, "onResume", "()V");

  /// from: protected void onResume()
  void onResume() => jniAccessors.callMethodWithArgs(
      reference, _id_onResume, jni.JniType.voidType, []).check();

  static final _id_onSaveInstanceState = jniAccessors.getMethodIDOf(
      _classRef, "onSaveInstanceState", "(Landroid/os/Bundle;)V");

  /// from: protected void onSaveInstanceState(android.os.Bundle outState)
  void onSaveInstanceState(bundle_.Bundle outState) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSaveInstanceState,
          jni.JniType.voidType, [outState.reference]).check();

  static final _id_onPause =
      jniAccessors.getMethodIDOf(_classRef, "onPause", "()V");

  /// from: protected void onPause()
  void onPause() => jniAccessors.callMethodWithArgs(
      reference, _id_onPause, jni.JniType.voidType, []).check();

  static final _id_onStop =
      jniAccessors.getMethodIDOf(_classRef, "onStop", "()V");

  /// from: protected void onStop()
  void onStop() => jniAccessors.callMethodWithArgs(
      reference, _id_onStop, jni.JniType.voidType, []).check();

  static final _id_onDestroy =
      jniAccessors.getMethodIDOf(_classRef, "onDestroy", "()V");

  /// from: protected void onDestroy()
  void onDestroy() => jniAccessors.callMethodWithArgs(
      reference, _id_onDestroy, jni.JniType.voidType, []).check();

  static final _id_getCurrentActivity = jniAccessors.getMethodIDOf(
      _classRef, "getCurrentActivity", "()Landroid/app/Activity;");

  /// from: public android.app.Activity getCurrentActivity()
  /// The returned object must be deleted after use, by calling the `delete` method.
  activity_.Activity getCurrentActivity() =>
      activity_.Activity.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getCurrentActivity, jni.JniType.objectType, []).object);

  static final _id_getLocalActivityManager = jniAccessors.getMethodIDOf(
      _classRef,
      "getLocalActivityManager",
      "()Landroid/app/LocalActivityManager;");

  /// from: public final android.app.LocalActivityManager getLocalActivityManager()
  /// The returned object must be deleted after use, by calling the `delete` method.
  localactivitymanager_.LocalActivityManager getLocalActivityManager() =>
      localactivitymanager_.LocalActivityManager.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getLocalActivityManager,
              jni.JniType.objectType, []).object);
}
