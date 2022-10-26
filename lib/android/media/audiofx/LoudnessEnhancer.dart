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

/// from: android.media.audiofx.LoudnessEnhancer
///
/// LoudnessEnhancer is an audio effect for increasing audio loudness.
/// The processing is parametrized by a target gain value, which determines the maximum amount
/// by which an audio signal will be amplified; signals amplified outside of the sample
/// range supported by the platform are compressed.
/// An application creates a LoudnessEnhancer object to instantiate and control a
/// this audio effect in the audio framework.
/// To attach the LoudnessEnhancer to a particular AudioTrack or MediaPlayer,
/// specify the audio session ID of this AudioTrack or MediaPlayer when constructing the effect
/// (see AudioTrack\#getAudioSessionId() and MediaPlayer\#getAudioSessionId()).
class LoudnessEnhancer extends audioeffect_.AudioEffect {
  static final _classRef =
      jniAccessors.getClassOf("android/media/audiofx/LoudnessEnhancer");
  LoudnessEnhancer.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int PARAM_TARGET_GAIN_MB
  ///
  /// The maximum gain applied applied to the signal to process.
  /// It is expressed in millibels (100mB = 1dB) where 0mB corresponds to no amplification.
  static const PARAM_TARGET_GAIN_MB = 0;

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int audioSession)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Class constructor.
  ///@param audioSession system-wide unique audio session identifier. The LoudnessEnhancer
  /// will be attached to the MediaPlayer or AudioTrack in the same audio session.
  ///@throws java.lang.IllegalStateException
  ///@throws java.lang.IllegalArgumentException
  ///@throws java.lang.UnsupportedOperationException
  ///@throws java.lang.RuntimeException
  LoudnessEnhancer.ctor1(int audioSession)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [audioSession]).object);

  static final _id_setTargetGain =
      jniAccessors.getMethodIDOf(_classRef, "setTargetGain", "(I)V");

  /// from: public void setTargetGain(int gainmB)
  ///
  /// Set the target gain for the audio effect.
  /// The target gain is the maximum value by which a sample value will be amplified when the
  /// effect is enabled.
  ///@param gainmB the effect target gain expressed in mB. 0mB corresponds to no amplification.
  ///@throws IllegalStateException
  ///@throws IllegalArgumentException
  ///@throws UnsupportedOperationException
  void setTargetGain(int gainmB) => jniAccessors.callMethodWithArgs(
      reference, _id_setTargetGain, jni.JniType.voidType, [gainmB]).check();

  static final _id_getTargetGain =
      jniAccessors.getMethodIDOf(_classRef, "getTargetGain", "()F");

  /// from: public float getTargetGain()
  ///
  /// Return the target gain.
  ///@return the effect target gain expressed in mB.
  ///@throws IllegalStateException
  ///@throws IllegalArgumentException
  ///@throws UnsupportedOperationException
  double getTargetGain() => jniAccessors.callMethodWithArgs(
      reference, _id_getTargetGain, jni.JniType.floatType, []).float;
}
