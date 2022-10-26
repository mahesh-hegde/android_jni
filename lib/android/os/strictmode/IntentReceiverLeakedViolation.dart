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

import "Violation.dart" as violation_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.strictmode.IntentReceiverLeakedViolation
class IntentReceiverLeakedViolation extends violation_.Violation {
  static final _classRef = jniAccessors
      .getClassOf("android/os/strictmode/IntentReceiverLeakedViolation");
  IntentReceiverLeakedViolation.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/Throwable;)V");

  /// from: void <init>(java.lang.Throwable originStack)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  IntentReceiverLeakedViolation.ctor1(jni.JniObject originStack)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [originStack.reference]).object);
}