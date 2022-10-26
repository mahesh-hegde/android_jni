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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.UpdateLayout
///
/// The classes that affect character-level text formatting in a way that
/// triggers a text layout update when one is added or removed must implement
/// this interface.  This interface also includes UpdateAppearance
/// since such a change implicitly also impacts the appearance.
class UpdateLayout extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/UpdateLayout");
  UpdateLayout.fromRef(jni.JObject ref) : super.fromRef(ref);
}
