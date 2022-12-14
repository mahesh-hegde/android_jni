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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.speech.tts.UtteranceProgressListener
///
/// Listener for events relating to the progress of an utterance through
/// the synthesis queue. Each utterance is associated with a call to
/// TextToSpeech\#speak or TextToSpeech\#synthesizeToFile with an
/// associated utterance identifier, as per TextToSpeech.Engine\#KEY_PARAM_UTTERANCE_ID.
///
/// The callbacks specified in this method can be called from multiple threads.
class UtteranceProgressListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/speech/tts/UtteranceProgressListener");
  UtteranceProgressListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  UtteranceProgressListener()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onStart =
      jniAccessors.getMethodIDOf(_classRef, "onStart", "(Ljava/lang/String;)V");

  /// from: public abstract void onStart(java.lang.String utteranceId)
  ///
  /// Called when an utterance "starts" as perceived by the caller. This will
  /// be soon before audio is played back in the case of a TextToSpeech\#speak
  /// or before the first bytes of a file are written to the file system in the case
  /// of TextToSpeech\#synthesizeToFile.
  ///@param utteranceId The utterance ID of the utterance.
  void onStart(jni.JniString utteranceId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onStart,
      jni.JniType.voidType,
      [utteranceId.reference]).check();

  static final _id_onDone =
      jniAccessors.getMethodIDOf(_classRef, "onDone", "(Ljava/lang/String;)V");

  /// from: public abstract void onDone(java.lang.String utteranceId)
  ///
  /// Called when an utterance has successfully completed processing.
  /// All audio will have been played back by this point for audible output, and all
  /// output will have been written to disk for file synthesis requests.
  ///
  /// This request is guaranteed to be called after \#onStart(String).
  ///@param utteranceId The utterance ID of the utterance.
  void onDone(jni.JniString utteranceId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onDone,
      jni.JniType.voidType,
      [utteranceId.reference]).check();

  static final _id_onError =
      jniAccessors.getMethodIDOf(_classRef, "onError", "(Ljava/lang/String;)V");

  /// from: public abstract void onError(java.lang.String utteranceId)
  ///
  /// Called when an error has occurred during processing. This can be called
  /// at any point in the synthesis process. Note that there might be calls
  /// to \#onStart(String) for specified utteranceId but there will never
  /// be a call to both \#onDone(String) and \#onError(String) for
  /// the same utterance.
  ///@param utteranceId The utterance ID of the utterance.
  ///@deprecated Use \#onError(String,int) instead
  void onError(jni.JniString utteranceId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onError,
      jni.JniType.voidType,
      [utteranceId.reference]).check();

  static final _id_onError1 = jniAccessors.getMethodIDOf(
      _classRef, "onError", "(Ljava/lang/String;I)V");

  /// from: public void onError(java.lang.String utteranceId, int errorCode)
  ///
  /// Called when an error has occurred during processing. This can be called
  /// at any point in the synthesis process. Note that there might be calls
  /// to \#onStart(String) for specified utteranceId but there will never
  /// be a call to both \#onDone(String) and \#onError(String,int) for
  /// the same utterance. The default implementation calls \#onError(String).
  ///@param utteranceId The utterance ID of the utterance.
  ///@param errorCode one of the ERROR_* codes from TextToSpeech
  void onError1(jni.JniString utteranceId, int errorCode) =>
      jniAccessors.callMethodWithArgs(reference, _id_onError1,
          jni.JniType.voidType, [utteranceId.reference, errorCode]).check();

  static final _id_onStop =
      jniAccessors.getMethodIDOf(_classRef, "onStop", "(Ljava/lang/String;Z)V");

  /// from: public void onStop(java.lang.String utteranceId, boolean interrupted)
  ///
  /// Called when an utterance has been stopped while in progress or flushed from the
  /// synthesis queue. This can happen if a client calls TextToSpeech\#stop()
  /// or uses TextToSpeech\#QUEUE_FLUSH as an argument with the
  /// TextToSpeech\#speak or TextToSpeech\#synthesizeToFile methods.
  ///@param utteranceId The utterance ID of the utterance.
  ///@param interrupted If true, then the utterance was interrupted while being synthesized
  ///        and its output is incomplete. If false, then the utterance was flushed
  ///        before the synthesis started.
  void onStop(jni.JniString utteranceId, bool interrupted) =>
      jniAccessors.callMethodWithArgs(reference, _id_onStop,
          jni.JniType.voidType, [utteranceId.reference, interrupted]).check();

  static final _id_onBeginSynthesis = jniAccessors.getMethodIDOf(
      _classRef, "onBeginSynthesis", "(Ljava/lang/String;III)V");

  /// from: public void onBeginSynthesis(java.lang.String utteranceId, int sampleRateInHz, int audioFormat, int channelCount)
  ///
  /// Called when the TTS engine begins to synthesize the audio for a request.
  ///
  ///
  /// It provides information about the format of the byte array for subsequent
  /// \#onAudioAvailable calls.
  ///
  ///
  ///
  ///
  /// This is called when the TTS engine starts synthesizing audio for the request. If an
  /// application wishes to know when the audio is about to start playing, {\#onStart(String)}
  /// should be used instead.
  ///
  ///
  ///@param utteranceId The utterance ID of the utterance.
  ///@param sampleRateInHz Sample rate in hertz of the generated audio.
  ///@param audioFormat Audio format of the generated audio. Should be one of
  ///        AudioFormat\#ENCODING_PCM_8BIT, AudioFormat\#ENCODING_PCM_16BIT or
  ///        AudioFormat\#ENCODING_PCM_FLOAT.
  ///@param channelCount The number of channels.
  void onBeginSynthesis(jni.JniString utteranceId, int sampleRateInHz,
          int audioFormat, int channelCount) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onBeginSynthesis, jni.JniType.voidType, [
        utteranceId.reference,
        sampleRateInHz,
        audioFormat,
        channelCount
      ]).check();

  static final _id_onAudioAvailable = jniAccessors.getMethodIDOf(
      _classRef, "onAudioAvailable", "(Ljava/lang/String;[B)V");

  /// from: public void onAudioAvailable(java.lang.String utteranceId, byte[] audio)
  ///
  /// This is called when a chunk of audio is ready for consumption.
  ///
  ///
  /// The audio parameter is a copy of what will be synthesized to the speakers (when synthesis was
  /// initiated with a TextToSpeech\#speak call) or written to the file system (for
  /// TextToSpeech\#synthesizeToFile). The audio bytes are delivered in one or more chunks;
  /// if \#onDone or \#onError is called all chunks have been received.
  ///
  ///
  ///
  ///
  /// The audio received here may not be played for some time depending on buffer sizes and the
  /// amount of items on the synthesis queue.
  ///
  ///
  ///@param utteranceId The utterance ID of the utterance.
  ///@param audio A chunk of audio; the format can be known by listening to
  ///        \#onBeginSynthesis(String, int, int, int).
  void onAudioAvailable(jni.JniString utteranceId, jni.JniObject audio) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onAudioAvailable,
          jni.JniType.voidType,
          [utteranceId.reference, audio.reference]).check();

  static final _id_onRangeStart = jniAccessors.getMethodIDOf(
      _classRef, "onRangeStart", "(Ljava/lang/String;III)V");

  /// from: public void onRangeStart(java.lang.String utteranceId, int start, int end, int frame)
  ///
  /// This is called when the TTS service is about to speak the specified range of the utterance
  /// with the given utteranceId.
  ///
  /// This method is called when the audio is expected to start playing on the speaker. Note
  /// that this is different from \#onAudioAvailable which is called as soon as the audio is
  /// generated.
  ///
  /// This information can be used, for example, to highlight ranges of the text while it is
  /// spoken.
  ///
  /// Only called if the engine supplies timing information by calling SynthesisCallback\#rangeStart(int, int, int).
  ///@param utteranceId Unique id identifying the synthesis request.
  ///@param start The start index of the range in the utterance text.
  ///@param end The end index of the range (exclusive) in the utterance text.
  ///@param frame The position in frames in the audio of the request where this range is spoken.
  void onRangeStart(jni.JniString utteranceId, int start, int end, int frame) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onRangeStart,
          jni.JniType.voidType,
          [utteranceId.reference, start, end, frame]).check();
}
