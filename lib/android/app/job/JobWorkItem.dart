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

import "../../os/Parcelable.dart" as parcelable_;

import "../../content/Intent.dart" as intent_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.job.JobWorkItem
///
/// A unit of work that can be enqueued for a job using
/// JobScheduler\#enqueue JobScheduler.enqueue.  See
/// JobParameters\#dequeueWork() JobParameters.dequeueWork for more details.
class JobWorkItem extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/job/JobWorkItem");
  JobWorkItem.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.job.JobWorkItem> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Intent;)V");

  /// from: public void <init>(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new piece of work, which can be submitted to
  /// JobScheduler\#enqueue JobScheduler.enqueue.
  ///@param intent The general Intent describing this work.
  JobWorkItem(intent_.Intent intent)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [intent.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Intent;JJ)V");

  /// from: public void <init>(android.content.Intent intent, long downloadBytes, long uploadBytes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new piece of work, which can be submitted to
  /// JobScheduler\#enqueue JobScheduler.enqueue.
  ///
  /// See JobInfo.Builder\#setEstimatedNetworkBytes(long, long) for
  /// details about how to estimate network traffic.
  ///@param intent The general Intent describing this work.
  ///@param downloadBytes The estimated size of network traffic that will be
  ///            downloaded by this job work item, in bytes.
  /// Value is a non-negative number of bytes.
  ///@param uploadBytes The estimated size of network traffic that will be
  ///            uploaded by this job work item, in bytes.
  ///
  /// Value is a non-negative number of bytes.
  JobWorkItem.ctor1(intent_.Intent intent, int downloadBytes, int uploadBytes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [intent.reference, downloadBytes, uploadBytes]).object);

  static final _id_getIntent = jniAccessors.getMethodIDOf(
      _classRef, "getIntent", "()Landroid/content/Intent;");

  /// from: public android.content.Intent getIntent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the Intent associated with this work.
  intent_.Intent getIntent() =>
      intent_.Intent.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getIntent, jni.JniType.objectType, []).object);

  static final _id_getEstimatedNetworkDownloadBytes = jniAccessors
      .getMethodIDOf(_classRef, "getEstimatedNetworkDownloadBytes", "()J");

  /// from: public long getEstimatedNetworkDownloadBytes()
  ///
  /// Return the estimated size of download traffic that will be performed by
  /// this job, in bytes.
  ///
  /// Value is a non-negative number of bytes.
  ///@return Estimated size of download traffic, or
  ///         JobInfo\#NETWORK_BYTES_UNKNOWN when unknown.
  ///
  /// Value is a non-negative number of bytes.
  int getEstimatedNetworkDownloadBytes() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getEstimatedNetworkDownloadBytes,
      jni.JniType.longType, []).long;

  static final _id_getEstimatedNetworkUploadBytes = jniAccessors.getMethodIDOf(
      _classRef, "getEstimatedNetworkUploadBytes", "()J");

  /// from: public long getEstimatedNetworkUploadBytes()
  ///
  /// Return the estimated size of upload traffic that will be performed by
  /// this job work item, in bytes.
  ///
  /// Value is a non-negative number of bytes.
  ///@return Estimated size of upload traffic, or
  ///         JobInfo\#NETWORK_BYTES_UNKNOWN when unknown.
  ///
  /// Value is a non-negative number of bytes.
  int getEstimatedNetworkUploadBytes() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getEstimatedNetworkUploadBytes,
      jni.JniType.longType, []).long;

  static final _id_getDeliveryCount =
      jniAccessors.getMethodIDOf(_classRef, "getDeliveryCount", "()I");

  /// from: public int getDeliveryCount()
  ///
  /// Return the count of the number of times this work item has been delivered
  /// to the job.  The value will be > 1 if it has been redelivered because the job
  /// was stopped or crashed while it had previously been delivered but before the
  /// job had called JobParameters\#completeWork JobParameters.completeWork for it.
  int getDeliveryCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getDeliveryCount, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();
}
