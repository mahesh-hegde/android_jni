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

/// from: android.media.audiofx.NoiseSuppressor
///
/// Noise Suppressor (NS).
/// Noise suppression (NS) is an audio pre-processor which removes background noise from the
/// captured signal. The component of the signal considered as noise can be either stationary
/// (car/airplane engine, AC system) or non-stationary (other peoples conversations, car horn) for
/// more advanced implementations.
/// NS is mostly used by voice communication applications (voice chat, video conferencing,
/// SIP calls).
/// An application creates a NoiseSuppressor object to instantiate and control an NS
/// engine in the audio framework.
/// To attach the NoiseSuppressor to a particular android.media.AudioRecord,
/// specify the audio session ID of this AudioRecord when creating the NoiseSuppressor.
/// The audio session is retrieved by calling
/// android.media.AudioRecord\#getAudioSessionId() on the AudioRecord instance.
/// On some devices, NS can be inserted by default in the capture path by the platform
/// according to the android.media.MediaRecorder.AudioSource used. The application should
/// call NoiseSuppressor.getEnable() after creating the NS to check the default NS activation
/// state on a particular AudioRecord session.
/// See android.media.audiofx.AudioEffect class for more details on
/// controlling audio effects.
class NoiseSuppressor extends audioeffect_.AudioEffect {
  static final _classRef =
      jniAccessors.getClassOf("android/media/audiofx/NoiseSuppressor");
  NoiseSuppressor.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: void <init>(int audioSession)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Class constructor.
  ///  The constructor is not guarantied to succeed and throws the following exceptions:
  /// <ul>
  ///  <li>IllegalArgumentException is thrown if the device does not implement an NS</li>
  ///  <li>UnsupportedOperationException is thrown is the resources allocated to audio
  ///  pre-procesing are currently exceeded.</li>
  ///  <li>RuntimeException is thrown if a memory allocation error occurs.</li>
  /// </ul>
  ///@param audioSession system wide unique audio session identifier. The NoiseSuppressor
  /// will be applied to the AudioRecord with the same audio session.
  ///@throws java.lang.IllegalArgumentException
  ///@throws java.lang.UnsupportedOperationException
  ///@throws java.lang.RuntimeException
  NoiseSuppressor.ctor1(int audioSession)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [audioSession]).object);

  static final _id_isAvailable =
      jniAccessors.getStaticMethodIDOf(_classRef, "isAvailable", "()Z");

  /// from: static public boolean isAvailable()
  ///
  /// Checks if the device implements noise suppression.
  ///@return true if the device implements noise suppression, false otherwise.
  static bool isAvailable() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_isAvailable, jni.JniType.booleanType, []).boolean;

  static final _id_create = jniAccessors.getStaticMethodIDOf(
      _classRef, "create", "(I)Landroid/media/audiofx/NoiseSuppressor;");

  /// from: static public android.media.audiofx.NoiseSuppressor create(int audioSession)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a NoiseSuppressor and attaches it to the AudioRecord on the audio
  /// session specified.
  ///@param audioSession system wide unique audio session identifier. The NoiseSuppressor
  /// will be applied to the AudioRecord with the same audio session.
  ///@return NoiseSuppressor created or null if the device does not implement noise
  /// suppression.
  static NoiseSuppressor create(int audioSession) =>
      NoiseSuppressor.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_create, jni.JniType.objectType, [audioSession]).object);
}