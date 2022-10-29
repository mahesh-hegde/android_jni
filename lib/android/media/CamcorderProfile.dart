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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.CamcorderProfile
///
/// Retrieves the
/// predefined camcorder profile settings for camcorder applications.
/// These settings are read-only.
///
/// The compressed output from a recording session with a given
/// CamcorderProfile contains two tracks: one for audio and one for video.
///
/// Each profile specifies the following set of parameters:
/// <ul>
/// <li> The file output format
/// <li> Video codec format
/// <li> Video bit rate in bits per second
/// <li> Video frame rate in frames per second
/// <li> Video frame width and height,
/// <li> Audio codec format
/// <li> Audio bit rate in bits per second,
/// <li> Audio sample rate
/// <li> Number of audio channels for recording.
/// </ul>
class CamcorderProfile extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/CamcorderProfile");
  CamcorderProfile.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int QUALITY_1080P
  ///
  /// Quality level corresponding to the 1080p (1920 x 1080) resolution.
  /// Note that the vertical resolution for 1080p can also be 1088,
  /// instead of 1080 (used by some vendors to avoid cropping during
  /// video playback).
  static const QUALITY_1080P = 6;

  /// from: static public final int QUALITY_2160P
  ///
  /// Quality level corresponding to the 2160p (3840x2160) resolution.
  static const QUALITY_2160P = 8;

  /// from: static public final int QUALITY_480P
  ///
  /// Quality level corresponding to the 480p (720 x 480) resolution.
  /// Note that the horizontal resolution for 480p can also be other
  /// values, such as 640 or 704, instead of 720.
  static const QUALITY_480P = 4;

  /// from: static public final int QUALITY_720P
  ///
  /// Quality level corresponding to the 720p (1280 x 720) resolution.
  static const QUALITY_720P = 5;

  /// from: static public final int QUALITY_CIF
  ///
  /// Quality level corresponding to the cif (352 x 288) resolution.
  static const QUALITY_CIF = 3;

  /// from: static public final int QUALITY_HIGH
  ///
  /// Quality level corresponding to the highest available resolution.
  static const QUALITY_HIGH = 1;

  /// from: static public final int QUALITY_HIGH_SPEED_1080P
  ///
  /// High speed ( >= 100fps) quality level corresponding to the 1080p (1920 x 1080 or 1920x1088)
  /// resolution.
  static const QUALITY_HIGH_SPEED_1080P = 2004;

  /// from: static public final int QUALITY_HIGH_SPEED_2160P
  ///
  /// High speed ( >= 100fps) quality level corresponding to the 2160p (3840 x 2160)
  /// resolution.
  static const QUALITY_HIGH_SPEED_2160P = 2005;

  /// from: static public final int QUALITY_HIGH_SPEED_480P
  ///
  /// High speed ( >= 100fps) quality level corresponding to the 480p (720 x 480) resolution.
  ///
  /// Note that the horizontal resolution for 480p can also be other
  /// values, such as 640 or 704, instead of 720.
  static const QUALITY_HIGH_SPEED_480P = 2002;

  /// from: static public final int QUALITY_HIGH_SPEED_720P
  ///
  /// High speed ( >= 100fps) quality level corresponding to the 720p (1280 x 720) resolution.
  static const QUALITY_HIGH_SPEED_720P = 2003;

  /// from: static public final int QUALITY_HIGH_SPEED_HIGH
  ///
  /// High speed ( >= 100fps) quality level corresponding to the highest available resolution.
  static const QUALITY_HIGH_SPEED_HIGH = 2001;

  /// from: static public final int QUALITY_HIGH_SPEED_LOW
  ///
  /// High speed ( >= 100fps) quality level corresponding to the lowest available resolution.
  ///
  /// For all the high speed profiles defined below ((from \#QUALITY_HIGH_SPEED_LOW to
  /// \#QUALITY_HIGH_SPEED_2160P), they are similar as normal recording profiles, with just
  /// higher output frame rate and bit rate. Therefore, setting these profiles with
  /// MediaRecorder\#setProfile without specifying any other encoding parameters will
  /// produce high speed videos rather than slow motion videos that have different capture and
  /// output (playback) frame rates. To record slow motion videos, the application must set video
  /// output (playback) frame rate and bit rate appropriately via
  /// MediaRecorder\#setVideoFrameRate and MediaRecorder\#setVideoEncodingBitRate
  /// based on the slow motion factor. If the application intends to do the video recording with
  /// MediaCodec encoder, it must set each individual field of MediaFormat
  /// similarly according to this CamcorderProfile.
  ///
  ///
  ///@see \#videoBitRate
  ///@see \#videoFrameRate
  ///@see MediaRecorder
  ///@see MediaCodec
  ///@see MediaFormat
  static const QUALITY_HIGH_SPEED_LOW = 2000;

  /// from: static public final int QUALITY_LOW
  ///
  /// Quality level corresponding to the lowest available resolution.
  static const QUALITY_LOW = 0;

  /// from: static public final int QUALITY_QCIF
  ///
  /// Quality level corresponding to the qcif (176 x 144) resolution.
  static const QUALITY_QCIF = 2;

  /// from: static public final int QUALITY_QVGA
  ///
  /// Quality level corresponding to the QVGA (320x240) resolution.
  static const QUALITY_QVGA = 7;

  /// from: static public final int QUALITY_TIME_LAPSE_1080P
  ///
  /// Time lapse quality level corresponding to the 1080p (1920 x 1088) resolution.
  static const QUALITY_TIME_LAPSE_1080P = 1006;

  /// from: static public final int QUALITY_TIME_LAPSE_2160P
  ///
  /// Time lapse quality level corresponding to the 2160p (3840 x 2160) resolution.
  static const QUALITY_TIME_LAPSE_2160P = 1008;

  /// from: static public final int QUALITY_TIME_LAPSE_480P
  ///
  /// Time lapse quality level corresponding to the 480p (720 x 480) resolution.
  static const QUALITY_TIME_LAPSE_480P = 1004;

  /// from: static public final int QUALITY_TIME_LAPSE_720P
  ///
  /// Time lapse quality level corresponding to the 720p (1280 x 720) resolution.
  static const QUALITY_TIME_LAPSE_720P = 1005;

  /// from: static public final int QUALITY_TIME_LAPSE_CIF
  ///
  /// Time lapse quality level corresponding to the cif (352 x 288) resolution.
  static const QUALITY_TIME_LAPSE_CIF = 1003;

  /// from: static public final int QUALITY_TIME_LAPSE_HIGH
  ///
  /// Time lapse quality level corresponding to the highest available resolution.
  static const QUALITY_TIME_LAPSE_HIGH = 1001;

  /// from: static public final int QUALITY_TIME_LAPSE_LOW
  ///
  /// Time lapse quality level corresponding to the lowest available resolution.
  static const QUALITY_TIME_LAPSE_LOW = 1000;

  /// from: static public final int QUALITY_TIME_LAPSE_QCIF
  ///
  /// Time lapse quality level corresponding to the qcif (176 x 144) resolution.
  static const QUALITY_TIME_LAPSE_QCIF = 1002;

  /// from: static public final int QUALITY_TIME_LAPSE_QVGA
  ///
  /// Time lapse quality level corresponding to the QVGA (320 x 240) resolution.
  static const QUALITY_TIME_LAPSE_QVGA = 1007;

  static final _id_audioBitRate =
      jniAccessors.getFieldIDOf(_classRef, "audioBitRate", "I");

  /// from: public int audioBitRate
  ///
  /// The target audio output bit rate in bits per second
  int get audioBitRate => jniAccessors
      .getField(reference, _id_audioBitRate, jni.JniType.intType)
      .integer;

  /// from: public int audioBitRate
  ///
  /// The target audio output bit rate in bits per second
  set audioBitRate(int value) =>
      jniEnv.SetIntField(reference, _id_audioBitRate, value);

  static final _id_audioChannels =
      jniAccessors.getFieldIDOf(_classRef, "audioChannels", "I");

  /// from: public int audioChannels
  ///
  /// The number of audio channels used for the audio track
  int get audioChannels => jniAccessors
      .getField(reference, _id_audioChannels, jni.JniType.intType)
      .integer;

  /// from: public int audioChannels
  ///
  /// The number of audio channels used for the audio track
  set audioChannels(int value) =>
      jniEnv.SetIntField(reference, _id_audioChannels, value);

  static final _id_audioCodec =
      jniAccessors.getFieldIDOf(_classRef, "audioCodec", "I");

  /// from: public int audioCodec
  ///
  /// The audio encoder being used for the audio track.
  ///@see android.media.MediaRecorder.AudioEncoder
  int get audioCodec => jniAccessors
      .getField(reference, _id_audioCodec, jni.JniType.intType)
      .integer;

  /// from: public int audioCodec
  ///
  /// The audio encoder being used for the audio track.
  ///@see android.media.MediaRecorder.AudioEncoder
  set audioCodec(int value) =>
      jniEnv.SetIntField(reference, _id_audioCodec, value);

  static final _id_audioSampleRate =
      jniAccessors.getFieldIDOf(_classRef, "audioSampleRate", "I");

  /// from: public int audioSampleRate
  ///
  /// The audio sampling rate used for the audio track
  int get audioSampleRate => jniAccessors
      .getField(reference, _id_audioSampleRate, jni.JniType.intType)
      .integer;

  /// from: public int audioSampleRate
  ///
  /// The audio sampling rate used for the audio track
  set audioSampleRate(int value) =>
      jniEnv.SetIntField(reference, _id_audioSampleRate, value);

  static final _id_duration =
      jniAccessors.getFieldIDOf(_classRef, "duration", "I");

  /// from: public int duration
  ///
  /// Default recording duration in seconds before the session is terminated.
  /// This is useful for applications like MMS has limited file size requirement.
  int get duration => jniAccessors
      .getField(reference, _id_duration, jni.JniType.intType)
      .integer;

  /// from: public int duration
  ///
  /// Default recording duration in seconds before the session is terminated.
  /// This is useful for applications like MMS has limited file size requirement.
  set duration(int value) => jniEnv.SetIntField(reference, _id_duration, value);

  static final _id_fileFormat =
      jniAccessors.getFieldIDOf(_classRef, "fileFormat", "I");

  /// from: public int fileFormat
  ///
  /// The file output format of the camcorder profile
  ///@see android.media.MediaRecorder.OutputFormat
  int get fileFormat => jniAccessors
      .getField(reference, _id_fileFormat, jni.JniType.intType)
      .integer;

  /// from: public int fileFormat
  ///
  /// The file output format of the camcorder profile
  ///@see android.media.MediaRecorder.OutputFormat
  set fileFormat(int value) =>
      jniEnv.SetIntField(reference, _id_fileFormat, value);

  static final _id_quality =
      jniAccessors.getFieldIDOf(_classRef, "quality", "I");

  /// from: public int quality
  ///
  /// The quality level of the camcorder profile
  int get quality => jniAccessors
      .getField(reference, _id_quality, jni.JniType.intType)
      .integer;

  /// from: public int quality
  ///
  /// The quality level of the camcorder profile
  set quality(int value) => jniEnv.SetIntField(reference, _id_quality, value);

  static final _id_videoBitRate =
      jniAccessors.getFieldIDOf(_classRef, "videoBitRate", "I");

  /// from: public int videoBitRate
  ///
  /// The target video output bit rate in bits per second
  ///
  /// This is the target recorded video output bit rate if the application configures the video
  /// recording via MediaRecorder\#setProfile without specifying any other
  /// MediaRecorder encoding parameters. For example, for high speed quality profiles (from
  /// \#QUALITY_HIGH_SPEED_LOW to \#QUALITY_HIGH_SPEED_2160P), this is the bit rate
  /// where the video is recorded with. If the application intends to record slow motion videos
  /// with the high speed quality profiles, it must set a different video bit rate that is
  /// corresponding to the desired recording output bit rate (i.e., the encoded video bit rate
  /// during normal playback) via MediaRecorder\#setVideoEncodingBitRate. For example, if
  /// \#QUALITY_HIGH_SPEED_720P advertises 240fps \#videoFrameRate and 64Mbps
  /// \#videoBitRate in the high speed CamcorderProfile, and the application intends to
  /// record 1/8 factor slow motion recording videos, the application must set 30fps via
  /// MediaRecorder\#setVideoFrameRate and 8Mbps ( \#videoBitRate * slow motion
  /// factor) via MediaRecorder\#setVideoEncodingBitRate. Failing to do so will result in
  /// videos with unexpected frame rate and bit rate, or MediaRecorder error if the output
  /// bit rate exceeds the encoder limit. If the application intends to do the video recording with
  /// MediaCodec encoder, it must set each individual field of MediaFormat
  /// similarly according to this CamcorderProfile.
  ///
  ///
  ///@see \#videoFrameRate
  ///@see MediaRecorder
  ///@see MediaCodec
  ///@see MediaFormat
  int get videoBitRate => jniAccessors
      .getField(reference, _id_videoBitRate, jni.JniType.intType)
      .integer;

  /// from: public int videoBitRate
  ///
  /// The target video output bit rate in bits per second
  ///
  /// This is the target recorded video output bit rate if the application configures the video
  /// recording via MediaRecorder\#setProfile without specifying any other
  /// MediaRecorder encoding parameters. For example, for high speed quality profiles (from
  /// \#QUALITY_HIGH_SPEED_LOW to \#QUALITY_HIGH_SPEED_2160P), this is the bit rate
  /// where the video is recorded with. If the application intends to record slow motion videos
  /// with the high speed quality profiles, it must set a different video bit rate that is
  /// corresponding to the desired recording output bit rate (i.e., the encoded video bit rate
  /// during normal playback) via MediaRecorder\#setVideoEncodingBitRate. For example, if
  /// \#QUALITY_HIGH_SPEED_720P advertises 240fps \#videoFrameRate and 64Mbps
  /// \#videoBitRate in the high speed CamcorderProfile, and the application intends to
  /// record 1/8 factor slow motion recording videos, the application must set 30fps via
  /// MediaRecorder\#setVideoFrameRate and 8Mbps ( \#videoBitRate * slow motion
  /// factor) via MediaRecorder\#setVideoEncodingBitRate. Failing to do so will result in
  /// videos with unexpected frame rate and bit rate, or MediaRecorder error if the output
  /// bit rate exceeds the encoder limit. If the application intends to do the video recording with
  /// MediaCodec encoder, it must set each individual field of MediaFormat
  /// similarly according to this CamcorderProfile.
  ///
  ///
  ///@see \#videoFrameRate
  ///@see MediaRecorder
  ///@see MediaCodec
  ///@see MediaFormat
  set videoBitRate(int value) =>
      jniEnv.SetIntField(reference, _id_videoBitRate, value);

  static final _id_videoCodec =
      jniAccessors.getFieldIDOf(_classRef, "videoCodec", "I");

  /// from: public int videoCodec
  ///
  /// The video encoder being used for the video track
  ///@see android.media.MediaRecorder.VideoEncoder
  int get videoCodec => jniAccessors
      .getField(reference, _id_videoCodec, jni.JniType.intType)
      .integer;

  /// from: public int videoCodec
  ///
  /// The video encoder being used for the video track
  ///@see android.media.MediaRecorder.VideoEncoder
  set videoCodec(int value) =>
      jniEnv.SetIntField(reference, _id_videoCodec, value);

  static final _id_videoFrameHeight =
      jniAccessors.getFieldIDOf(_classRef, "videoFrameHeight", "I");

  /// from: public int videoFrameHeight
  ///
  /// The target video frame height in pixels
  int get videoFrameHeight => jniAccessors
      .getField(reference, _id_videoFrameHeight, jni.JniType.intType)
      .integer;

  /// from: public int videoFrameHeight
  ///
  /// The target video frame height in pixels
  set videoFrameHeight(int value) =>
      jniEnv.SetIntField(reference, _id_videoFrameHeight, value);

  static final _id_videoFrameRate =
      jniAccessors.getFieldIDOf(_classRef, "videoFrameRate", "I");

  /// from: public int videoFrameRate
  ///
  /// The target video frame rate in frames per second.
  ///
  /// This is the target recorded video output frame rate per second if the application configures
  /// the video recording via MediaRecorder\#setProfile without specifying any other
  /// MediaRecorder encoding parameters. For example, for high speed quality profiles (from
  /// \#QUALITY_HIGH_SPEED_LOW to \#QUALITY_HIGH_SPEED_2160P), this is the frame rate
  /// where the video is recorded and played back with. If the application intends to create slow
  /// motion use case with the high speed quality profiles, it must set a different video frame
  /// rate that is corresponding to the desired output (playback) frame rate via
  /// MediaRecorder\#setVideoFrameRate. For example, if \#QUALITY_HIGH_SPEED_720P
  /// advertises 240fps \#videoFrameRate in the CamcorderProfile, and the application
  /// intends to create 1/8 factor slow motion recording videos, the application must set 30fps via
  /// MediaRecorder\#setVideoFrameRate. Failing to do so will result in high speed videos
  /// with normal speed playback frame rate (240fps for above example). If the application intends
  /// to do the video recording with MediaCodec encoder, it must set each individual field
  /// of MediaFormat similarly according to this CamcorderProfile.
  ///
  ///
  ///@see \#videoBitRate
  ///@see MediaRecorder
  ///@see MediaCodec
  ///@see MediaFormat
  int get videoFrameRate => jniAccessors
      .getField(reference, _id_videoFrameRate, jni.JniType.intType)
      .integer;

  /// from: public int videoFrameRate
  ///
  /// The target video frame rate in frames per second.
  ///
  /// This is the target recorded video output frame rate per second if the application configures
  /// the video recording via MediaRecorder\#setProfile without specifying any other
  /// MediaRecorder encoding parameters. For example, for high speed quality profiles (from
  /// \#QUALITY_HIGH_SPEED_LOW to \#QUALITY_HIGH_SPEED_2160P), this is the frame rate
  /// where the video is recorded and played back with. If the application intends to create slow
  /// motion use case with the high speed quality profiles, it must set a different video frame
  /// rate that is corresponding to the desired output (playback) frame rate via
  /// MediaRecorder\#setVideoFrameRate. For example, if \#QUALITY_HIGH_SPEED_720P
  /// advertises 240fps \#videoFrameRate in the CamcorderProfile, and the application
  /// intends to create 1/8 factor slow motion recording videos, the application must set 30fps via
  /// MediaRecorder\#setVideoFrameRate. Failing to do so will result in high speed videos
  /// with normal speed playback frame rate (240fps for above example). If the application intends
  /// to do the video recording with MediaCodec encoder, it must set each individual field
  /// of MediaFormat similarly according to this CamcorderProfile.
  ///
  ///
  ///@see \#videoBitRate
  ///@see MediaRecorder
  ///@see MediaCodec
  ///@see MediaFormat
  set videoFrameRate(int value) =>
      jniEnv.SetIntField(reference, _id_videoFrameRate, value);

  static final _id_videoFrameWidth =
      jniAccessors.getFieldIDOf(_classRef, "videoFrameWidth", "I");

  /// from: public int videoFrameWidth
  ///
  /// The target video frame width in pixels
  int get videoFrameWidth => jniAccessors
      .getField(reference, _id_videoFrameWidth, jni.JniType.intType)
      .integer;

  /// from: public int videoFrameWidth
  ///
  /// The target video frame width in pixels
  set videoFrameWidth(int value) =>
      jniEnv.SetIntField(reference, _id_videoFrameWidth, value);

  static final _id_get0 = jniAccessors.getStaticMethodIDOf(
      _classRef, "get", "(I)Landroid/media/CamcorderProfile;");

  /// from: static public android.media.CamcorderProfile get(int quality)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the camcorder profile for the first back-facing camera on the
  /// device at the given quality level. If the device has no back-facing
  /// camera, this returns null.
  ///@param quality the target quality level for the camcorder profile
  ///@see \#get(int, int)
  static CamcorderProfile get0(int quality) =>
      CamcorderProfile.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_get0, jni.JniType.objectType, [quality]).object);

  static final _id_get1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "get", "(II)Landroid/media/CamcorderProfile;");

  /// from: static public android.media.CamcorderProfile get(int cameraId, int quality)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the camcorder profile for the given camera at the given
  /// quality level.
  ///
  /// Quality levels QUALITY_LOW, QUALITY_HIGH are guaranteed to be supported, while
  /// other levels may or may not be supported. The supported levels can be checked using
  /// \#hasProfile(int, int).
  /// QUALITY_LOW refers to the lowest quality available, while QUALITY_HIGH refers to
  /// the highest quality available.
  /// QUALITY_LOW/QUALITY_HIGH have to match one of qcif, cif, 480p, 720p, 1080p or 2160p.
  /// E.g. if the device supports 480p, 720p, 1080p and 2160p, then low is 480p and high is
  /// 2160p.
  ///
  /// The same is true for time lapse quality levels, i.e. QUALITY_TIME_LAPSE_LOW,
  /// QUALITY_TIME_LAPSE_HIGH are guaranteed to be supported and have to match one of
  /// qcif, cif, 480p, 720p, 1080p, or 2160p.
  ///
  /// For high speed quality levels, they may or may not be supported. If a subset of the levels
  /// are supported, QUALITY_HIGH_SPEED_LOW and QUALITY_HIGH_SPEED_HIGH are guaranteed to be
  /// supported and have to match one of 480p, 720p, or 1080p.
  ///
  /// A camcorder recording session with higher quality level usually has higher output
  /// bit rate, better video and/or audio recording quality, larger video frame
  /// resolution and higher audio sampling rate, etc, than those with lower quality
  /// level.
  ///@param cameraId the id for the camera
  ///@param quality the target quality level for the camcorder profile.
  ///@see \#QUALITY_LOW
  ///@see \#QUALITY_HIGH
  ///@see \#QUALITY_QCIF
  ///@see \#QUALITY_CIF
  ///@see \#QUALITY_480P
  ///@see \#QUALITY_720P
  ///@see \#QUALITY_1080P
  ///@see \#QUALITY_2160P
  ///@see \#QUALITY_TIME_LAPSE_LOW
  ///@see \#QUALITY_TIME_LAPSE_HIGH
  ///@see \#QUALITY_TIME_LAPSE_QCIF
  ///@see \#QUALITY_TIME_LAPSE_CIF
  ///@see \#QUALITY_TIME_LAPSE_480P
  ///@see \#QUALITY_TIME_LAPSE_720P
  ///@see \#QUALITY_TIME_LAPSE_1080P
  ///@see \#QUALITY_TIME_LAPSE_2160P
  ///@see \#QUALITY_HIGH_SPEED_LOW
  ///@see \#QUALITY_HIGH_SPEED_HIGH
  ///@see \#QUALITY_HIGH_SPEED_480P
  ///@see \#QUALITY_HIGH_SPEED_720P
  ///@see \#QUALITY_HIGH_SPEED_1080P
  ///@see \#QUALITY_HIGH_SPEED_2160P
  static CamcorderProfile get1(int cameraId, int quality) =>
      CamcorderProfile.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_get1, jni.JniType.objectType, [cameraId, quality]).object);

  static final _id_hasProfile =
      jniAccessors.getStaticMethodIDOf(_classRef, "hasProfile", "(I)Z");

  /// from: static public boolean hasProfile(int quality)
  ///
  /// Returns true if camcorder profile exists for the first back-facing
  /// camera at the given quality level.
  ///
  ///
  /// When using the Camera 2 API in {@code LEGACY} mode (i.e. when
  /// android.hardware.camera2.CameraCharacteristics\#INFO_SUPPORTED_HARDWARE_LEVEL is set
  /// to
  /// android.hardware.camera2.CameraCharacteristics\#INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY),
  /// \#hasProfile may return {@code true} for unsupported resolutions.  To ensure a
  /// a given resolution is supported in LEGACY mode, the configuration given in
  /// android.hardware.camera2.CameraCharacteristics\#SCALER_STREAM_CONFIGURATION_MAP
  /// must contain the the resolution in the supported output sizes.  The recommended way to check
  /// this is with
  /// android.hardware.camera2.params.StreamConfigurationMap\#getOutputSizes(Class) with the
  /// class of the desired recording endpoint, and check that the desired resolution is contained
  /// in the list returned.
  ///
  ///
  ///@see android.hardware.camera2.CameraManager
  ///@see android.hardware.camera2.CameraCharacteristics
  ///@param quality the target quality level for the camcorder profile
  static bool hasProfile(int quality) => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_hasProfile, jni.JniType.booleanType, [quality]).boolean;

  static final _id_hasProfile1 =
      jniAccessors.getStaticMethodIDOf(_classRef, "hasProfile", "(II)Z");

  /// from: static public boolean hasProfile(int cameraId, int quality)
  ///
  /// Returns true if camcorder profile exists for the given camera at
  /// the given quality level.
  ///
  ///
  /// When using the Camera 2 API in LEGACY mode (i.e. when
  /// android.hardware.camera2.CameraCharacteristics\#INFO_SUPPORTED_HARDWARE_LEVEL is set
  /// to
  /// android.hardware.camera2.CameraCharacteristics\#INFO_SUPPORTED_HARDWARE_LEVEL_LEGACY),
  /// \#hasProfile may return {@code true} for unsupported resolutions.  To ensure a
  /// a given resolution is supported in LEGACY mode, the configuration given in
  /// android.hardware.camera2.CameraCharacteristics\#SCALER_STREAM_CONFIGURATION_MAP
  /// must contain the the resolution in the supported output sizes.  The recommended way to check
  /// this is with
  /// android.hardware.camera2.params.StreamConfigurationMap\#getOutputSizes(Class) with the
  /// class of the desired recording endpoint, and check that the desired resolution is contained
  /// in the list returned.
  ///
  ///
  ///@see android.hardware.camera2.CameraManager
  ///@see android.hardware.camera2.CameraCharacteristics
  ///@param cameraId the id for the camera
  ///@param quality the target quality level for the camcorder profile
  static bool hasProfile1(int cameraId, int quality) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_hasProfile1,
          jni.JniType.booleanType, [cameraId, quality]).boolean;
}
