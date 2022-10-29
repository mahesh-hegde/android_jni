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

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telecom.VideoProfile
///
/// Represents attributes of video calls.
class VideoProfile extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telecom/VideoProfile");
  VideoProfile.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telecom.VideoProfile> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Responsible for creating VideoProfile objects from deserialized Parcels.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int QUALITY_DEFAULT
  ///
  /// Use default video quality.
  static const QUALITY_DEFAULT = 4;

  /// from: static public final int QUALITY_HIGH
  ///
  /// "High" video quality.
  static const QUALITY_HIGH = 1;

  /// from: static public final int QUALITY_LOW
  ///
  /// "Low" video quality.
  static const QUALITY_LOW = 3;

  /// from: static public final int QUALITY_MEDIUM
  ///
  /// "Medium" video quality.
  static const QUALITY_MEDIUM = 2;

  /// from: static public final int STATE_AUDIO_ONLY
  ///
  /// Used when answering or dialing a call to indicate that the call does not have a video
  /// component.
  ///
  /// Should __not__ be used in comparison checks to determine if a video state represents an
  /// audio-only call.
  ///
  /// The following, for example, is not the correct way to check if a call is audio-only:
  /// <pre>
  /// {@code
  /// // This is the incorrect way to check for an audio-only call.
  /// if (videoState == VideoProfile.STATE_AUDIO_ONLY) {
  ///      // Handle audio-only call.
  /// }
  /// }
  /// </pre>
  ///
  /// Instead, use the VideoProfile\#isAudioOnly(int) helper function to check if a
  /// video state represents an audio-only call:
  /// <pre>
  /// {@code
  /// // This is the correct way to check for an audio-only call.
  /// if (VideoProfile.isAudioOnly(videoState)) {
  ///      // Handle audio-only call.
  /// }
  /// }
  /// </pre>
  static const STATE_AUDIO_ONLY = 0;

  /// from: static public final int STATE_BIDIRECTIONAL
  ///
  /// Video signal is bi-directional.
  static const STATE_BIDIRECTIONAL = 3;

  /// from: static public final int STATE_PAUSED
  ///
  /// Video is paused.
  static const STATE_PAUSED = 4;

  /// from: static public final int STATE_RX_ENABLED
  ///
  /// Video reception is enabled.
  static const STATE_RX_ENABLED = 2;

  /// from: static public final int STATE_TX_ENABLED
  ///
  /// Video transmission is enabled.
  static const STATE_TX_ENABLED = 1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int videoState)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an instance of the VideoProfile
  ///@param videoState The video state.
  ///
  /// Value is either <code>0</code> or a combination of android.telecom.VideoProfile\#STATE_AUDIO_ONLY, android.telecom.VideoProfile\#STATE_TX_ENABLED, android.telecom.VideoProfile\#STATE_RX_ENABLED, android.telecom.VideoProfile\#STATE_BIDIRECTIONAL, and android.telecom.VideoProfile\#STATE_PAUSED
  VideoProfile(int videoState)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [videoState]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int videoState, int quality)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an instance of the VideoProfile
  ///@param videoState The video state.
  /// Value is either <code>0</code> or a combination of android.telecom.VideoProfile\#STATE_AUDIO_ONLY, android.telecom.VideoProfile\#STATE_TX_ENABLED, android.telecom.VideoProfile\#STATE_RX_ENABLED, android.telecom.VideoProfile\#STATE_BIDIRECTIONAL, and android.telecom.VideoProfile\#STATE_PAUSED
  ///@param quality The video quality.
  ///
  /// Value is android.telecom.VideoProfile.QUALITY_UNKNOWN, android.telecom.VideoProfile\#QUALITY_HIGH, android.telecom.VideoProfile\#QUALITY_MEDIUM, android.telecom.VideoProfile\#QUALITY_LOW, or android.telecom.VideoProfile\#QUALITY_DEFAULT
  VideoProfile.ctor1(int videoState, int quality)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [videoState, quality]).object);

  static final _id_getVideoState =
      jniAccessors.getMethodIDOf(_classRef, "getVideoState", "()I");

  /// from: public int getVideoState()
  ///
  /// The video state of the call.
  /// Valid values: VideoProfile\#STATE_AUDIO_ONLY,
  /// VideoProfile\#STATE_BIDIRECTIONAL,
  /// VideoProfile\#STATE_TX_ENABLED,
  /// VideoProfile\#STATE_RX_ENABLED,
  /// VideoProfile\#STATE_PAUSED.
  ///@return Value is either <code>0</code> or a combination of android.telecom.VideoProfile\#STATE_AUDIO_ONLY, android.telecom.VideoProfile\#STATE_TX_ENABLED, android.telecom.VideoProfile\#STATE_RX_ENABLED, android.telecom.VideoProfile\#STATE_BIDIRECTIONAL, and android.telecom.VideoProfile\#STATE_PAUSED
  int getVideoState() => jniAccessors.callMethodWithArgs(
      reference, _id_getVideoState, jni.JniType.intType, []).integer;

  static final _id_getQuality =
      jniAccessors.getMethodIDOf(_classRef, "getQuality", "()I");

  /// from: public int getQuality()
  ///
  /// The desired video quality for the call.
  /// Valid values: VideoProfile\#QUALITY_HIGH, VideoProfile\#QUALITY_MEDIUM,
  /// VideoProfile\#QUALITY_LOW, VideoProfile\#QUALITY_DEFAULT.
  ///@return Value is android.telecom.VideoProfile.QUALITY_UNKNOWN, android.telecom.VideoProfile\#QUALITY_HIGH, android.telecom.VideoProfile\#QUALITY_MEDIUM, android.telecom.VideoProfile\#QUALITY_LOW, or android.telecom.VideoProfile\#QUALITY_DEFAULT
  int getQuality() => jniAccessors.callMethodWithArgs(
      reference, _id_getQuality, jni.JniType.intType, []).integer;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  ///
  /// Describe the kinds of special objects contained in this Parcelable's
  /// marshalled representation.
  ///@return a bitmask indicating the set of special object types marshalled
  /// by the Parcelable.
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Flatten this object in to a Parcel.
  ///@param dest The Parcel in which the object should be written.
  ///@param flags Additional flags about how the object should be written.
  ///              May be 0 or \#PARCELABLE_WRITE_RETURN_VALUE.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_videoStateToString = jniAccessors.getStaticMethodIDOf(
      _classRef, "videoStateToString", "(I)Ljava/lang/String;");

  /// from: static public java.lang.String videoStateToString(int videoState)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Generates a string representation of a video state.
  ///@param videoState The video state.
  /// Value is either <code>0</code> or a combination of android.telecom.VideoProfile\#STATE_AUDIO_ONLY, android.telecom.VideoProfile\#STATE_TX_ENABLED, android.telecom.VideoProfile\#STATE_RX_ENABLED, android.telecom.VideoProfile\#STATE_BIDIRECTIONAL, and android.telecom.VideoProfile\#STATE_PAUSED
  ///@return String representation of the video state.
  static jni.JniString videoStateToString(int videoState) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_videoStateToString, jni.JniType.objectType, [videoState]).object);

  static final _id_isAudioOnly =
      jniAccessors.getStaticMethodIDOf(_classRef, "isAudioOnly", "(I)Z");

  /// from: static public boolean isAudioOnly(int videoState)
  ///
  /// Indicates whether the video state is audio only.
  ///
  /// Note: Considers only whether either both the \#STATE_RX_ENABLED or
  /// \#STATE_TX_ENABLED bits are off, but not \#STATE_PAUSED.
  ///@param videoState The video state.
  /// Value is either <code>0</code> or a combination of android.telecom.VideoProfile\#STATE_AUDIO_ONLY, android.telecom.VideoProfile\#STATE_TX_ENABLED, android.telecom.VideoProfile\#STATE_RX_ENABLED, android.telecom.VideoProfile\#STATE_BIDIRECTIONAL, and android.telecom.VideoProfile\#STATE_PAUSED
  ///@return {@code True} if the video state is audio only, {@code false} otherwise.
  static bool isAudioOnly(int videoState) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isAudioOnly,
          jni.JniType.booleanType, [videoState]).boolean;

  static final _id_isVideo =
      jniAccessors.getStaticMethodIDOf(_classRef, "isVideo", "(I)Z");

  /// from: static public boolean isVideo(int videoState)
  ///
  /// Indicates whether video transmission or reception is enabled for a video state.
  ///@param videoState The video state.
  /// Value is either <code>0</code> or a combination of android.telecom.VideoProfile\#STATE_AUDIO_ONLY, android.telecom.VideoProfile\#STATE_TX_ENABLED, android.telecom.VideoProfile\#STATE_RX_ENABLED, android.telecom.VideoProfile\#STATE_BIDIRECTIONAL, and android.telecom.VideoProfile\#STATE_PAUSED
  ///@return {@code True} if video transmission or reception is enabled, {@code false} otherwise.
  static bool isVideo(int videoState) => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_isVideo, jni.JniType.booleanType, [videoState]).boolean;

  static final _id_isTransmissionEnabled = jniAccessors.getStaticMethodIDOf(
      _classRef, "isTransmissionEnabled", "(I)Z");

  /// from: static public boolean isTransmissionEnabled(int videoState)
  ///
  /// Indicates whether the video state has video transmission enabled.
  ///@param videoState The video state.
  /// Value is either <code>0</code> or a combination of android.telecom.VideoProfile\#STATE_AUDIO_ONLY, android.telecom.VideoProfile\#STATE_TX_ENABLED, android.telecom.VideoProfile\#STATE_RX_ENABLED, android.telecom.VideoProfile\#STATE_BIDIRECTIONAL, and android.telecom.VideoProfile\#STATE_PAUSED
  ///@return {@code True} if video transmission is enabled, {@code false} otherwise.
  static bool isTransmissionEnabled(int videoState) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_isTransmissionEnabled,
          jni.JniType.booleanType,
          [videoState]).boolean;

  static final _id_isReceptionEnabled =
      jniAccessors.getStaticMethodIDOf(_classRef, "isReceptionEnabled", "(I)Z");

  /// from: static public boolean isReceptionEnabled(int videoState)
  ///
  /// Indicates whether the video state has video reception enabled.
  ///@param videoState The video state.
  /// Value is either <code>0</code> or a combination of android.telecom.VideoProfile\#STATE_AUDIO_ONLY, android.telecom.VideoProfile\#STATE_TX_ENABLED, android.telecom.VideoProfile\#STATE_RX_ENABLED, android.telecom.VideoProfile\#STATE_BIDIRECTIONAL, and android.telecom.VideoProfile\#STATE_PAUSED
  ///@return {@code True} if video reception is enabled, {@code false} otherwise.
  static bool isReceptionEnabled(int videoState) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isReceptionEnabled,
          jni.JniType.booleanType, [videoState]).boolean;

  static final _id_isBidirectional =
      jniAccessors.getStaticMethodIDOf(_classRef, "isBidirectional", "(I)Z");

  /// from: static public boolean isBidirectional(int videoState)
  ///
  /// Indicates whether the video state is bi-directional.
  ///@param videoState The video state.
  /// Value is either <code>0</code> or a combination of android.telecom.VideoProfile\#STATE_AUDIO_ONLY, android.telecom.VideoProfile\#STATE_TX_ENABLED, android.telecom.VideoProfile\#STATE_RX_ENABLED, android.telecom.VideoProfile\#STATE_BIDIRECTIONAL, and android.telecom.VideoProfile\#STATE_PAUSED
  ///@return {@code True} if the video is bi-directional, {@code false} otherwise.
  static bool isBidirectional(int videoState) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isBidirectional,
          jni.JniType.booleanType, [videoState]).boolean;

  static final _id_isPaused =
      jniAccessors.getStaticMethodIDOf(_classRef, "isPaused", "(I)Z");

  /// from: static public boolean isPaused(int videoState)
  ///
  /// Indicates whether the video state is paused.
  ///@param videoState The video state.
  /// Value is either <code>0</code> or a combination of android.telecom.VideoProfile\#STATE_AUDIO_ONLY, android.telecom.VideoProfile\#STATE_TX_ENABLED, android.telecom.VideoProfile\#STATE_RX_ENABLED, android.telecom.VideoProfile\#STATE_BIDIRECTIONAL, and android.telecom.VideoProfile\#STATE_PAUSED
  ///@return {@code True} if the video is paused, {@code false} otherwise.
  static bool isPaused(int videoState) => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_isPaused, jni.JniType.booleanType, [videoState]).boolean;
}

/// from: android.telecom.VideoProfile$CameraCapabilities
///
/// Represents the camera capabilities important to a Video Telephony provider.
class VideoProfile_CameraCapabilities extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/telecom/VideoProfile\$CameraCapabilities");
  VideoProfile_CameraCapabilities.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.telecom.VideoProfile.CameraCapabilities> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Responsible for creating CallCameraCapabilities objects from deserialized Parcels.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int width, int height)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a call camera capabilities instance.
  ///@param width The width of the camera video (in pixels).
  ///@param height The height of the camera video (in pixels).
  VideoProfile_CameraCapabilities(int width, int height)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [width, height]).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  ///
  /// Describe the kinds of special objects contained in this Parcelable's
  /// marshalled representation.
  ///@return a bitmask indicating the set of special object types marshalled
  /// by the Parcelable.
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Flatten this object in to a Parcel.
  ///@param dest The Parcel in which the object should be written.
  ///@param flags Additional flags about how the object should be written.
  ///              May be 0 or \#PARCELABLE_WRITE_RETURN_VALUE.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_getWidth =
      jniAccessors.getMethodIDOf(_classRef, "getWidth", "()I");

  /// from: public int getWidth()
  ///
  /// The width of the camera video in pixels.
  int getWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getWidth, jni.JniType.intType, []).integer;

  static final _id_getHeight =
      jniAccessors.getMethodIDOf(_classRef, "getHeight", "()I");

  /// from: public int getHeight()
  ///
  /// The height of the camera video in pixels.
  int getHeight() => jniAccessors.callMethodWithArgs(
      reference, _id_getHeight, jni.JniType.intType, []).integer;
}
