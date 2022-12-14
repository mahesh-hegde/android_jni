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

import "../util/AndroidRuntimeException.dart" as androidruntimeexception_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.ReceiverCallNotAllowedException
///
/// This exception is thrown from Context\#registerReceiver and
/// Context\#bindService when these methods are being used from
/// an BroadcastReceiver component.  In this case, the component will no
/// longer be active upon returning from receiving the Intent, so it is
/// not valid to use asynchronous APIs.
class ReceiverCallNotAllowedException
    extends androidruntimeexception_.AndroidRuntimeException {
  static final _classRef = jniAccessors
      .getClassOf("android/content/ReceiverCallNotAllowedException");
  ReceiverCallNotAllowedException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String msg)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ReceiverCallNotAllowedException.ctor1(jni.JniString msg)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [msg.reference]).object);
}
