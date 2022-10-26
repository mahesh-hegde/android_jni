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

import "AudioEffect.dart" as audioeffect_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.audiofx.AcousticEchoCanceler
///
/// Acoustic Echo Canceler (AEC).
/// Acoustic Echo Canceler (AEC) is an audio pre-processor which removes the contribution of the
/// signal received from the remote party from the captured audio signal.
/// AEC is used by voice communication applications (voice chat, video conferencing, SIP calls)
/// where the presence of echo with significant delay in the signal received from the remote party
/// is highly disturbing. AEC is often used in conjunction with noise suppression (NS).
/// An application creates an AcousticEchoCanceler object to instantiate and control an AEC
/// engine in the audio capture path.
/// To attach the AcousticEchoCanceler to a particular android.media.AudioRecord,
/// specify the audio session ID of this AudioRecord when creating the AcousticEchoCanceler.
/// The audio session is retrieved by calling
/// android.media.AudioRecord\#getAudioSessionId() on the AudioRecord instance.
/// On some devices, an AEC can be inserted by default in the capture path by the platform
/// according to the android.media.MediaRecorder.AudioSource used. The application should
/// call AcousticEchoCanceler.getEnable() after creating the AEC to check the default AEC activation
/// state on a particular AudioRecord session.
/// See android.media.audiofx.AudioEffect class for more details on
/// controlling audio effects.
class AcousticEchoCanceler extends audioeffect_.AudioEffect {
  static final _classRef =
      jniAccessors.getClassOf("android/media/audiofx/AcousticEchoCanceler");
  AcousticEchoCanceler.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: void <init>(int audioSession)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Class constructor.
  ///  The constructor is not guarantied to succeed and throws the following exceptions:
  /// <ul>
  ///  <li>IllegalArgumentException is thrown if the device does not implement an AEC</li>
  ///  <li>UnsupportedOperationException is thrown is the resources allocated to audio
  ///  pre-procesing are currently exceeded.</li>
  ///  <li>RuntimeException is thrown if a memory allocation error occurs.</li>
  /// </ul>
  ///@param audioSession system wide unique audio session identifier. The AcousticEchoCanceler
  /// will be applied to the AudioRecord with the same audio session.
  ///@throws java.lang.IllegalArgumentException
  ///@throws java.lang.UnsupportedOperationException
  ///@throws java.lang.RuntimeException
  AcousticEchoCanceler.ctor1(int audioSession)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [audioSession]).object);

  static final _id_isAvailable =
      jniAccessors.getStaticMethodIDOf(_classRef, "isAvailable", "()Z");

  /// from: static public boolean isAvailable()
  ///
  /// Checks if the device implements acoustic echo cancellation.
  ///@return true if the device implements acoustic echo cancellation, false otherwise.
  static bool isAvailable() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_isAvailable, jni.JniType.booleanType, []).boolean;

  static final _id_create = jniAccessors.getStaticMethodIDOf(
      _classRef, "create", "(I)Landroid/media/audiofx/AcousticEchoCanceler;");

  /// from: static public android.media.audiofx.AcousticEchoCanceler create(int audioSession)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an AcousticEchoCanceler and attaches it to the AudioRecord on the audio
  /// session specified.
  ///@param audioSession system wide unique audio session identifier. The AcousticEchoCanceler
  /// will be applied to the AudioRecord with the same audio session.
  ///@return AcousticEchoCanceler created or null if the device does not implement AEC.
  static AcousticEchoCanceler create(int audioSession) =>
      AcousticEchoCanceler.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_create,
          jni.JniType.objectType,
          [audioSession]).object);
}