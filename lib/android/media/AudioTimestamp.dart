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

/// from: android.media.AudioTimestamp
///
/// Structure that groups a position in frame units relative to an assumed audio stream,
/// together with the estimated time when that frame enters or leaves the audio
/// processing pipeline on that device. This can be used to coordinate events
/// and interactions with the external environment.
///
/// The time is based on the implementation's best effort, using whatever knowledge
/// is available to the system, but cannot account for any delay unknown to the implementation.
///@see AudioTrack\#getTimestamp AudioTrack.getTimestamp(AudioTimestamp)
///@see AudioRecord\#getTimestamp AudioRecord.getTimestamp(AudioTimestamp, int)
class AudioTimestamp extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/AudioTimestamp");
  AudioTimestamp.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int TIMEBASE_BOOTTIME
  ///
  /// Clock monotonic including suspend time or its equivalent on the system,
  /// in the same units and timebase as android.os.SystemClock\#elapsedRealtimeNanos.
  static const TIMEBASE_BOOTTIME = 1;

  /// from: static public final int TIMEBASE_MONOTONIC
  ///
  /// Clock monotonic or its equivalent on the system,
  /// in the same units and timebase as java.lang.System\#nanoTime.
  static const TIMEBASE_MONOTONIC = 0;

  static final _id_framePosition =
      jniAccessors.getFieldIDOf(_classRef, "framePosition", "J");

  /// from: public long framePosition
  ///
  /// Position in frames relative to start of an assumed audio stream.
  ///
  /// When obtained through
  /// AudioRecord\#getTimestamp AudioRecord.getTimestamp(AudioTimestamp, int),
  /// all 64 bits of position are valid.
  ///
  /// When obtained through
  /// AudioTrack\#getTimestamp AudioTrack.getTimestamp(AudioTimestamp),
  /// the low-order 32 bits of position is in wrapping frame units similar to
  /// AudioTrack\#getPlaybackHeadPosition AudioTrack.getPlaybackHeadPosition().
  int get framePosition => jniAccessors
      .getField(reference, _id_framePosition, jni.JniType.longType)
      .long;

  /// from: public long framePosition
  ///
  /// Position in frames relative to start of an assumed audio stream.
  ///
  /// When obtained through
  /// AudioRecord\#getTimestamp AudioRecord.getTimestamp(AudioTimestamp, int),
  /// all 64 bits of position are valid.
  ///
  /// When obtained through
  /// AudioTrack\#getTimestamp AudioTrack.getTimestamp(AudioTimestamp),
  /// the low-order 32 bits of position is in wrapping frame units similar to
  /// AudioTrack\#getPlaybackHeadPosition AudioTrack.getPlaybackHeadPosition().
  set framePosition(int value) =>
      jniEnv.SetLongField(reference, _id_framePosition, value);

  static final _id_nanoTime =
      jniAccessors.getFieldIDOf(_classRef, "nanoTime", "J");

  /// from: public long nanoTime
  ///
  /// Time associated with the frame in the audio pipeline.
  ///
  /// When obtained through
  /// AudioRecord\#getTimestamp AudioRecord.getTimestamp(AudioTimestamp, int),
  /// this is the estimated time in nanoseconds when the frame referred to by
  /// \#framePosition was captured. The timebase is either
  /// \#TIMEBASE_MONOTONIC or \#TIMEBASE_BOOTTIME, depending
  /// on the timebase parameter used in
  /// AudioRecord\#getTimestamp AudioRecord.getTimestamp(AudioTimestamp, int).
  ///
  /// When obtained through
  /// AudioTrack\#getTimestamp AudioTrack.getTimestamp(AudioTimestamp),
  /// this is the estimated time when the frame was presented or is committed to be presented,
  /// with a timebase of \#TIMEBASE_MONOTONIC.
  int get nanoTime =>
      jniAccessors.getField(reference, _id_nanoTime, jni.JniType.longType).long;

  /// from: public long nanoTime
  ///
  /// Time associated with the frame in the audio pipeline.
  ///
  /// When obtained through
  /// AudioRecord\#getTimestamp AudioRecord.getTimestamp(AudioTimestamp, int),
  /// this is the estimated time in nanoseconds when the frame referred to by
  /// \#framePosition was captured. The timebase is either
  /// \#TIMEBASE_MONOTONIC or \#TIMEBASE_BOOTTIME, depending
  /// on the timebase parameter used in
  /// AudioRecord\#getTimestamp AudioRecord.getTimestamp(AudioTimestamp, int).
  ///
  /// When obtained through
  /// AudioTrack\#getTimestamp AudioTrack.getTimestamp(AudioTimestamp),
  /// this is the estimated time when the frame was presented or is committed to be presented,
  /// with a timebase of \#TIMEBASE_MONOTONIC.
  set nanoTime(int value) =>
      jniEnv.SetLongField(reference, _id_nanoTime, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AudioTimestamp()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}
