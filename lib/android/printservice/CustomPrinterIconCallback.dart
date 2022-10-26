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

import "../graphics/drawable/Icon.dart" as icon_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.printservice.CustomPrinterIconCallback
///
/// Callback for PrinterDiscoverySession\#onRequestCustomPrinterIcon.
class CustomPrinterIconCallback extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/printservice/CustomPrinterIconCallback");
  CustomPrinterIconCallback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  CustomPrinterIconCallback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onCustomPrinterIconLoaded = jniAccessors.getMethodIDOf(
      _classRef,
      "onCustomPrinterIconLoaded",
      "(Landroid/graphics/drawable/Icon;)Z");

  /// from: public boolean onCustomPrinterIconLoaded(android.graphics.drawable.Icon icon)
  ///
  /// Provide a new icon for a printer. Can be called more than once to update the icon.
  ///@param icon The new icon for the printer or null to unset the current icon
  /// This value may be {@code null}.
  ///@return true iff the icon could be updated
  bool onCustomPrinterIconLoaded(icon_.Icon icon) =>
      jniAccessors.callMethodWithArgs(reference, _id_onCustomPrinterIconLoaded,
          jni.JniType.booleanType, [icon.reference]).boolean;
}
