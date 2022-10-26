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

import "FrameStats.dart" as framestats_;

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.WindowContentFrameStats
///
/// This class contains window content frame statistics. For example, a window content
/// is rendred in frames when a view is scrolled. The frame statistics are a snapshot
/// for the time interval from \#getStartTimeNano() to \#getEndTimeNano().
///
/// The key idea is that in order to provide a smooth user experience an application
/// has to draw a frame at a specific time interval obtained by calling \#getRefreshPeriodNano(). If the application does not render a frame every refresh
/// period the user will see irregular UI transitions.
///
///
///
/// An application posts a frame for presentation by synchronously rendering its contents
/// in a buffer which is then posted or posting a buffer to which the application is
/// asychronously rendering the content via GL. After the frame is posted and rendered
/// (potentially asynchronosly) it is presented to the user. The time a frame was posted
/// can be obtained via \#getFramePostedTimeNano(int), the time a frame content
/// was rendered and ready for dsiplay (GL case) via \#getFrameReadyTimeNano(int),
/// and the time a frame was presented on the screen via \#getFramePresentedTimeNano(int).
///
///
class WindowContentFrameStats extends framestats_.FrameStats {
  static final _classRef =
      jniAccessors.getClassOf("android/view/WindowContentFrameStats");
  WindowContentFrameStats.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.WindowContentFrameStats> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  WindowContentFrameStats()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getFramePostedTimeNano =
      jniAccessors.getMethodIDOf(_classRef, "getFramePostedTimeNano", "(I)J");

  /// from: public long getFramePostedTimeNano(int index)
  ///
  /// Get the time a frame at a given index was posted by the producer (e.g.&nbsp;the application).
  /// It is either explicitly set or defaulted to the time when the render buffer was posted.
  ///
  /// <strong>Note:</strong> A frame can be posted and still it contents being rendered
  /// asynchronously in GL. To get the time the frame content was completely rendered and
  /// ready to display call \#getFrameReadyTimeNano(int).
  ///
  ///
  ///@param index The frame index.
  ///@return The posted time in nanoseconds.
  int getFramePostedTimeNano(int index) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getFramePostedTimeNano,
      jni.JniType.longType,
      [index]).long;

  static final _id_getFrameReadyTimeNano =
      jniAccessors.getMethodIDOf(_classRef, "getFrameReadyTimeNano", "(I)J");

  /// from: public long getFrameReadyTimeNano(int index)
  ///
  /// Get the time a frame at a given index was ready for presentation.
  ///
  /// <strong>Note:</strong> A frame can be posted and still it contents being rendered
  /// asynchronously in GL. In such a case this is the time when the frame contents were
  /// completely rendered.
  ///
  ///
  ///@param index The frame index.
  ///@return The ready time in nanoseconds or \#UNDEFINED_TIME_NANO
  ///         if the frame is not ready yet.
  int getFrameReadyTimeNano(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_getFrameReadyTimeNano, jni.JniType.longType, [index]).long;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel parcel, int flags)
  void writeToParcel(parcel_.Parcel parcel, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [parcel.reference, flags]).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
