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

import "../../os/Parcel.dart" as parcel_;

import "../../os/PersistableBundle.dart" as persistablebundle_;

import "../../os/Bundle.dart" as bundle_;

import "../../content/ClipData.dart" as clipdata_;

import "../../net/Network.dart" as network_;

import "JobWorkItem.dart" as jobworkitem_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.job.JobParameters
///
/// Contains the parameters used to configure/identify your job. You do not create this object
/// yourself, instead it is handed in to your application by the System.
class JobParameters extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/job/JobParameters");
  JobParameters.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.job.JobParameters> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  JobParameters(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [in0.reference]).object);

  static final _id_getJobId =
      jniAccessors.getMethodIDOf(_classRef, "getJobId", "()I");

  /// from: public int getJobId()
  ///
  /// @return The unique id of this job, specified at creation time.
  int getJobId() => jniAccessors.callMethodWithArgs(
      reference, _id_getJobId, jni.JniType.intType, []).integer;

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/PersistableBundle;");

  /// from: public android.os.PersistableBundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The extras you passed in when constructing this job with
  /// android.app.job.JobInfo.Builder\#setExtras(android.os.PersistableBundle). This will
  /// never be null. If you did not set any extras this will be an empty bundle.
  persistablebundle_.PersistableBundle getExtras() =>
      persistablebundle_.PersistableBundle.fromRef(jniAccessors
          .callMethodWithArgs(
              reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_getTransientExtras = jniAccessors.getMethodIDOf(
      _classRef, "getTransientExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getTransientExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The transient extras you passed in when constructing this job with
  /// android.app.job.JobInfo.Builder\#setTransientExtras(android.os.Bundle). This will
  /// never be null. If you did not set any extras this will be an empty bundle.
  bundle_.Bundle getTransientExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getTransientExtras, jni.JniType.objectType, []).object);

  static final _id_getClipData = jniAccessors.getMethodIDOf(
      _classRef, "getClipData", "()Landroid/content/ClipData;");

  /// from: public android.content.ClipData getClipData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The clip you passed in when constructing this job with
  /// android.app.job.JobInfo.Builder\#setClipData(ClipData, int). Will be null
  /// if it was not set.
  clipdata_.ClipData getClipData() =>
      clipdata_.ClipData.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getClipData, jni.JniType.objectType, []).object);

  static final _id_getClipGrantFlags =
      jniAccessors.getMethodIDOf(_classRef, "getClipGrantFlags", "()I");

  /// from: public int getClipGrantFlags()
  ///
  /// @return The clip grant flags you passed in when constructing this job with
  /// android.app.job.JobInfo.Builder\#setClipData(ClipData, int). Will be 0
  /// if it was not set.
  int getClipGrantFlags() => jniAccessors.callMethodWithArgs(
      reference, _id_getClipGrantFlags, jni.JniType.intType, []).integer;

  static final _id_isOverrideDeadlineExpired =
      jniAccessors.getMethodIDOf(_classRef, "isOverrideDeadlineExpired", "()Z");

  /// from: public boolean isOverrideDeadlineExpired()
  ///
  /// For jobs with android.app.job.JobInfo.Builder\#setOverrideDeadline(long) set, this
  /// provides an easy way to tell whether the job is being executed due to the deadline
  /// expiring. Note: If the job is running because its deadline expired, it implies that its
  /// constraints will not be met.
  bool isOverrideDeadlineExpired() => jniAccessors.callMethodWithArgs(reference,
      _id_isOverrideDeadlineExpired, jni.JniType.booleanType, []).boolean;

  static final _id_getTriggeredContentUris = jniAccessors.getMethodIDOf(
      _classRef, "getTriggeredContentUris", "()[Landroid/net/Uri;");

  /// from: public android.net.Uri[] getTriggeredContentUris()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// For jobs with android.app.job.JobInfo.Builder\#addTriggerContentUri set, this
  /// reports which URIs have triggered the job.  This will be null if either no URIs have
  /// triggered it (it went off due to a deadline or other reason), or the number of changed
  /// URIs is too large to report.  Whether or not the number of URIs is too large, you can
  /// always use \#getTriggeredContentAuthorities() to determine whether the job was
  /// triggered due to any content changes and the authorities they are associated with.
  jni.JniObject getTriggeredContentUris() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getTriggeredContentUris, jni.JniType.objectType, []).object);

  static final _id_getTriggeredContentAuthorities = jniAccessors.getMethodIDOf(
      _classRef, "getTriggeredContentAuthorities", "()[Ljava/lang/String;");

  /// from: public java.lang.String[] getTriggeredContentAuthorities()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// For jobs with android.app.job.JobInfo.Builder\#addTriggerContentUri set, this
  /// reports which content authorities have triggered the job.  It will only be null if no
  /// authorities have triggered it -- that is, the job executed for some other reason, such
  /// as a deadline expiring.  If this is non-null, you can use \#getTriggeredContentUris()
  /// to retrieve the details of which URIs changed (as long as that has not exceeded the maximum
  /// number it can reported).
  jni.JniObject getTriggeredContentAuthorities() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getTriggeredContentAuthorities,
          jni.JniType.objectType, []).object);

  static final _id_getNetwork = jniAccessors.getMethodIDOf(
      _classRef, "getNetwork", "()Landroid/net/Network;");

  /// from: public android.net.Network getNetwork()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the network that should be used to perform any network requests
  /// for this job.
  ///
  /// Devices may have multiple active network connections simultaneously, or
  /// they may not have a default network route at all. To correctly handle all
  /// situations like this, your job should always use the network returned by
  /// this method instead of implicitly using the default network route.
  ///
  /// Note that the system may relax the constraints you originally requested,
  /// such as allowing a JobInfo\#NETWORK_TYPE_UNMETERED job to run over
  /// a metered network when there is a surplus of metered data available.
  ///@return the network that should be used to perform any network requests
  ///         for this job, or {@code null} if this job didn't set any required
  ///         network type.
  ///@see JobInfo.Builder\#setRequiredNetworkType(int)
  network_.Network getNetwork() =>
      network_.Network.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getNetwork, jni.JniType.objectType, []).object);

  static final _id_dequeueWork = jniAccessors.getMethodIDOf(
      _classRef, "dequeueWork", "()Landroid/app/job/JobWorkItem;");

  /// from: public android.app.job.JobWorkItem dequeueWork()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Dequeue the next pending JobWorkItem from these JobParameters associated with their
  /// currently running job.  Calling this method when there is no more work available and all
  /// previously dequeued work has been completed will result in the system taking care of
  /// stopping the job for you --
  /// you should not call JobService\#jobFinished(JobParameters, boolean) yourself
  /// (otherwise you risk losing an upcoming JobWorkItem that is being enqueued at the same time).
  ///
  /// Once you are done with the JobWorkItem returned by this method, you must call
  /// \#completeWork(JobWorkItem) with it to inform the system that you are done
  /// executing the work.  The job will not be finished until all dequeued work has been
  /// completed.  You do not, however, have to complete each returned work item before deqeueing
  /// the next one -- you can use \#dequeueWork() multiple times before completing
  /// previous work if you want to process work in parallel, and you can complete the work
  /// in whatever order you want.
  ///
  ///
  /// If the job runs to the end of its available time period before all work has been
  /// completed, it will stop as normal.  You should return true from
  /// JobService\#onStopJob(JobParameters) in order to have the job rescheduled, and by
  /// doing so any pending as well as remaining uncompleted work will be re-queued
  /// for the next time the job runs.
  ///
  ///
  /// This example shows how to construct a JobService that will serially dequeue and
  /// process work that is available for it:
  ///
  ///
  /// {@sample development/samples/ApiDemos/src/com/example/android/apis/app/JobWorkService.java
  ///      service}
  ///@return Returns a new JobWorkItem if there is one pending, otherwise null.
  /// If null is returned, the system will also stop the job if all work has also been completed.
  /// (This means that for correct operation, you must always call dequeueWork() after you have
  /// completed other work, to check either for more work or allow the system to stop the job.)
  jobworkitem_.JobWorkItem dequeueWork() =>
      jobworkitem_.JobWorkItem.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_dequeueWork, jni.JniType.objectType, []).object);

  static final _id_completeWork = jniAccessors.getMethodIDOf(
      _classRef, "completeWork", "(Landroid/app/job/JobWorkItem;)V");

  /// from: public void completeWork(android.app.job.JobWorkItem work)
  ///
  /// Report the completion of executing a JobWorkItem previously returned by
  /// \#dequeueWork().  This tells the system you are done with the
  /// work associated with that item, so it will not be returned again.  Note that if this
  /// is the last work in the queue, completing it here will _not_ finish the overall
  /// job -- for that to happen, you still need to call \#dequeueWork()
  /// again.
  ///
  /// If you are enqueueing work into a job, you must call this method for each piece
  /// of work you process.  Do _not_ call
  /// JobService\#jobFinished(JobParameters, boolean)
  /// or else you can lose work in your queue.
  ///
  ///@param work The work you have completed processing, as previously returned by
  /// \#dequeueWork()
  ///
  /// This value must never be {@code null}.
  void completeWork(jobworkitem_.JobWorkItem work) =>
      jniAccessors.callMethodWithArgs(reference, _id_completeWork,
          jni.JniType.voidType, [work.reference]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}