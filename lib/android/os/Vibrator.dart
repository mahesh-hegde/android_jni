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

import "../media/AudioAttributes.dart" as audioattributes_;

import "VibrationEffect.dart" as vibrationeffect_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.Vibrator
///
/// Class that operates the vibrator on the device.
///
/// If your process exits, any vibration you started will stop.
///
///
class Vibrator extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/Vibrator");
  Vibrator.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_hasVibrator =
      jniAccessors.getMethodIDOf(_classRef, "hasVibrator", "()Z");

  /// from: public abstract boolean hasVibrator()
  ///
  /// Check whether the hardware has a vibrator.
  ///@return True if the hardware has a vibrator, else false.
  bool hasVibrator() => jniAccessors.callMethodWithArgs(
      reference, _id_hasVibrator, jni.JniType.booleanType, []).boolean;

  static final _id_hasAmplitudeControl =
      jniAccessors.getMethodIDOf(_classRef, "hasAmplitudeControl", "()Z");

  /// from: public abstract boolean hasAmplitudeControl()
  ///
  /// Check whether the vibrator has amplitude control.
  ///@return True if the hardware can control the amplitude of the vibrations, otherwise false.
  bool hasAmplitudeControl() => jniAccessors.callMethodWithArgs(
      reference, _id_hasAmplitudeControl, jni.JniType.booleanType, []).boolean;

  static final _id_vibrate =
      jniAccessors.getMethodIDOf(_classRef, "vibrate", "(J)V");

  /// from: public void vibrate(long milliseconds)
  ///
  /// Vibrate constantly for the specified period of time.
  ///
  /// Requires android.Manifest.permission\#VIBRATE
  ///@param milliseconds The number of milliseconds to vibrate.
  ///@deprecated Use \#vibrate(VibrationEffect) instead.
  void vibrate(int milliseconds) => jniAccessors.callMethodWithArgs(
      reference, _id_vibrate, jni.JniType.voidType, [milliseconds]).check();

  static final _id_vibrate1 = jniAccessors.getMethodIDOf(
      _classRef, "vibrate", "(JLandroid/media/AudioAttributes;)V");

  /// from: public void vibrate(long milliseconds, android.media.AudioAttributes attributes)
  ///
  /// Vibrate constantly for the specified period of time.
  ///
  /// Requires android.Manifest.permission\#VIBRATE
  ///@param milliseconds The number of milliseconds to vibrate.
  ///@param attributes AudioAttributes corresponding to the vibration. For example,
  ///        specify AudioAttributes\#USAGE_ALARM for alarm vibrations or
  ///        AudioAttributes\#USAGE_NOTIFICATION_RINGTONE for
  ///        vibrations associated with incoming calls.
  ///@deprecated Use \#vibrate(VibrationEffect, AudioAttributes) instead.
  void vibrate1(
          int milliseconds, audioattributes_.AudioAttributes attributes) =>
      jniAccessors.callMethodWithArgs(reference, _id_vibrate1,
          jni.JniType.voidType, [milliseconds, attributes.reference]).check();

  static final _id_vibrate2 =
      jniAccessors.getMethodIDOf(_classRef, "vibrate", "([JI)V");

  /// from: public void vibrate(long[] pattern, int repeat)
  ///
  /// Vibrate with a given pattern.
  ///
  ///
  /// Pass in an array of ints that are the durations for which to turn on or off
  /// the vibrator in milliseconds.  The first value indicates the number of milliseconds
  /// to wait before turning the vibrator on.  The next value indicates the number of milliseconds
  /// for which to keep the vibrator on before turning it off.  Subsequent values alternate
  /// between durations in milliseconds to turn the vibrator off or to turn the vibrator on.
  ///
  ///
  /// To cause the pattern to repeat, pass the index into the pattern array at which
  /// to start the repeat, or -1 to disable repeating.
  ///
  ///
  ///
  /// Requires android.Manifest.permission\#VIBRATE
  ///@param pattern an array of longs of times for which to turn the vibrator on or off.
  ///@param repeat the index into pattern at which to repeat, or -1 if
  ///        you don't want to repeat.
  ///@deprecated Use \#vibrate(VibrationEffect) instead.
  void vibrate2(jni.JniObject pattern, int repeat) =>
      jniAccessors.callMethodWithArgs(reference, _id_vibrate2,
          jni.JniType.voidType, [pattern.reference, repeat]).check();

  static final _id_vibrate3 = jniAccessors.getMethodIDOf(
      _classRef, "vibrate", "([JILandroid/media/AudioAttributes;)V");

  /// from: public void vibrate(long[] pattern, int repeat, android.media.AudioAttributes attributes)
  ///
  /// Vibrate with a given pattern.
  ///
  ///
  /// Pass in an array of ints that are the durations for which to turn on or off
  /// the vibrator in milliseconds.  The first value indicates the number of milliseconds
  /// to wait before turning the vibrator on.  The next value indicates the number of milliseconds
  /// for which to keep the vibrator on before turning it off.  Subsequent values alternate
  /// between durations in milliseconds to turn the vibrator off or to turn the vibrator on.
  ///
  ///
  /// To cause the pattern to repeat, pass the index into the pattern array at which
  /// to start the repeat, or -1 to disable repeating.
  ///
  ///
  ///
  /// Requires android.Manifest.permission\#VIBRATE
  ///@param pattern an array of longs of times for which to turn the vibrator on or off.
  ///@param repeat the index into pattern at which to repeat, or -1 if
  ///        you don't want to repeat.
  ///@param attributes AudioAttributes corresponding to the vibration. For example,
  ///        specify AudioAttributes\#USAGE_ALARM for alarm vibrations or
  ///        AudioAttributes\#USAGE_NOTIFICATION_RINGTONE for
  ///        vibrations associated with incoming calls.
  ///@deprecated Use \#vibrate(VibrationEffect, AudioAttributes) instead.
  void vibrate3(jni.JniObject pattern, int repeat,
          audioattributes_.AudioAttributes attributes) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_vibrate3,
          jni.JniType.voidType,
          [pattern.reference, repeat, attributes.reference]).check();

  static final _id_vibrate4 = jniAccessors.getMethodIDOf(
      _classRef, "vibrate", "(Landroid/os/VibrationEffect;)V");

  /// from: public void vibrate(android.os.VibrationEffect vibe)
  ///
  /// Requires android.Manifest.permission\#VIBRATE
  void vibrate4(vibrationeffect_.VibrationEffect vibe) =>
      jniAccessors.callMethodWithArgs(reference, _id_vibrate4,
          jni.JniType.voidType, [vibe.reference]).check();

  static final _id_vibrate5 = jniAccessors.getMethodIDOf(_classRef, "vibrate",
      "(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V");

  /// from: public void vibrate(android.os.VibrationEffect vibe, android.media.AudioAttributes attributes)
  ///
  /// Requires android.Manifest.permission\#VIBRATE
  void vibrate5(vibrationeffect_.VibrationEffect vibe,
          audioattributes_.AudioAttributes attributes) =>
      jniAccessors.callMethodWithArgs(reference, _id_vibrate5,
          jni.JniType.voidType, [vibe.reference, attributes.reference]).check();

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public abstract void cancel()
  ///
  /// Turn the vibrator off.
  ///
  /// Requires android.Manifest.permission\#VIBRATE
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();
}
