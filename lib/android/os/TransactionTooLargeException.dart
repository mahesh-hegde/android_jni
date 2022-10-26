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

import "RemoteException.dart" as remoteexception_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.TransactionTooLargeException
///
/// The Binder transaction failed because it was too large.
///
/// During a remote procedure call, the arguments and the return value of the call
/// are transferred as Parcel objects stored in the Binder transaction buffer.
/// If the arguments or the return value are too large to fit in the transaction buffer,
/// then the call will fail and TransactionTooLargeException will be thrown.
///
///
/// The Binder transaction buffer has a limited fixed size, currently 1Mb, which
/// is shared by all transactions in progress for the process.  Consequently this
/// exception can be thrown when there are many transactions in progress even when
/// most of the individual transactions are of moderate size.
///
///
/// There are two possible outcomes when a remote procedure call throws
/// TransactionTooLargeException.  Either the client was unable to send
/// its request to the service (most likely if the arguments were too large to fit in
/// the transaction buffer), or the service was unable to send its response back
/// to the client (most likely if the return value was too large to fit
/// in the transaction buffer).  It is not possible to tell which of these outcomes
/// actually occurred.  The client should assume that a partial failure occurred.
///
///
/// The key to avoiding TransactionTooLargeException is to keep all
/// transactions relatively small.  Try to minimize the amount of memory needed to create
/// a Parcel for the arguments and the return value of the remote procedure call.
/// Avoid transferring huge arrays of strings or large bitmaps.
/// If possible, try to break up big requests into smaller pieces.
///
///
/// If you are implementing a service, it may help to impose size or complexity
/// contraints on the queries that clients can perform.  For example, if the result set
/// could become large, then don't allow the client to request more than a few records
/// at a time.  Alternately, instead of returning all of the available data all at once,
/// return the essential information first and make the client ask for additional information
/// later as needed.
///
///
class TransactionTooLargeException extends remoteexception_.RemoteException {
  static final _classRef =
      jniAccessors.getClassOf("android/os/TransactionTooLargeException");
  TransactionTooLargeException.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  TransactionTooLargeException()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String msg)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TransactionTooLargeException.ctor1(jni.JniString msg)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [msg.reference]).object);
}