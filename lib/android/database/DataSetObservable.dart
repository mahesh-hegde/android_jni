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

import "Observable.dart" as observable_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.database.DataSetObservable
///
/// A specialization of Observable for DataSetObserver
/// that provides methods for sending notifications to a list of
/// DataSetObserver objects.
class DataSetObservable extends observable_.Observable {
  static final _classRef =
      jniAccessors.getClassOf("android/database/DataSetObservable");
  DataSetObservable.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  DataSetObservable()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_notifyChanged =
      jniAccessors.getMethodIDOf(_classRef, "notifyChanged", "()V");

  /// from: public void notifyChanged()
  ///
  /// Invokes DataSetObserver\#onChanged on each observer.
  /// Called when the contents of the data set have changed.  The recipient
  /// will obtain the new contents the next time it queries the data set.
  void notifyChanged() => jniAccessors.callMethodWithArgs(
      reference, _id_notifyChanged, jni.JniType.voidType, []).check();

  static final _id_notifyInvalidated =
      jniAccessors.getMethodIDOf(_classRef, "notifyInvalidated", "()V");

  /// from: public void notifyInvalidated()
  ///
  /// Invokes DataSetObserver\#onInvalidated on each observer.
  /// Called when the data set is no longer valid and cannot be queried again,
  /// such as when the data set has been closed.
  void notifyInvalidated() => jniAccessors.callMethodWithArgs(
      reference, _id_notifyInvalidated, jni.JniType.voidType, []).check();
}
