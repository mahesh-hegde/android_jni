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

import "Activity.dart" as activity_;

import "../os/Bundle.dart" as bundle_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.AliasActivity
///
/// Stub activity that launches another activity (and then finishes itself)
/// based on information in its component's manifest meta-data.  This is a
/// simple way to implement an alias-like mechanism.
///
/// To use this activity, you should include in the manifest for the associated
/// component an entry named "android.app.alias".  It is a reference to an XML
/// resource describing an intent that launches the real application.
class AliasActivity extends activity_.Activity {
  static final _classRef = jniAccessors.getClassOf("android/app/AliasActivity");
  AliasActivity.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AliasActivity.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_onCreate = jniAccessors.getMethodIDOf(
      _classRef, "onCreate", "(Landroid/os/Bundle;)V");

  /// from: protected void onCreate(android.os.Bundle savedInstanceState)
  void onCreate(bundle_.Bundle savedInstanceState) =>
      jniAccessors.callMethodWithArgs(reference, _id_onCreate,
          jni.JniType.voidType, [savedInstanceState.reference]).check();
}
