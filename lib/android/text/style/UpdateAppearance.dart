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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.UpdateAppearance
///
/// The classes that affect character-level text in a way that modifies their
/// appearance when one is added or removed must implement this interface.  Note
/// that if the class also impacts size or other metrics, it should instead
/// implement UpdateLayout.
class UpdateAppearance extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/UpdateAppearance");
  UpdateAppearance.fromRef(jni.JObject ref) : super.fromRef(ref);
}
