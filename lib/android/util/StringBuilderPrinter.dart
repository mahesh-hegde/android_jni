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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.util.StringBuilderPrinter
///
/// Implementation of a android.util.Printer that sends its output
/// to a StringBuilder.
class StringBuilderPrinter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/util/StringBuilderPrinter");
  StringBuilderPrinter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/StringBuilder;)V");

  /// from: public void <init>(java.lang.StringBuilder builder)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new Printer that sends to a StringBuilder object.
  ///@param builder The StringBuilder where you would like output to go.
  StringBuilderPrinter(jni.JniObject builder)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [builder.reference]).object);

  static final _id_println =
      jniAccessors.getMethodIDOf(_classRef, "println", "(Ljava/lang/String;)V");

  /// from: public void println(java.lang.String x)
  void println(jni.JniString x) => jniAccessors.callMethodWithArgs(
      reference, _id_println, jni.JniType.voidType, [x.reference]).check();
}
