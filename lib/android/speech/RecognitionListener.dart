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

import "../os/Bundle.dart" as bundle_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.speech.RecognitionListener
///
/// Used for receiving notifications from the SpeechRecognizer when the
/// recognition related events occur. All the callbacks are executed on the
/// Application main thread.
class RecognitionListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/speech/RecognitionListener");
  RecognitionListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onReadyForSpeech = jniAccessors.getMethodIDOf(
      _classRef, "onReadyForSpeech", "(Landroid/os/Bundle;)V");

  /// from: public abstract void onReadyForSpeech(android.os.Bundle params)
  ///
  /// Called when the endpointer is ready for the user to start speaking.
  ///@param params parameters set by the recognition service. Reserved for future use.
  void onReadyForSpeech(bundle_.Bundle params) =>
      jniAccessors.callMethodWithArgs(reference, _id_onReadyForSpeech,
          jni.JniType.voidType, [params.reference]).check();

  static final _id_onBeginningOfSpeech =
      jniAccessors.getMethodIDOf(_classRef, "onBeginningOfSpeech", "()V");

  /// from: public abstract void onBeginningOfSpeech()
  ///
  /// The user has started to speak.
  void onBeginningOfSpeech() => jniAccessors.callMethodWithArgs(
      reference, _id_onBeginningOfSpeech, jni.JniType.voidType, []).check();

  static final _id_onRmsChanged =
      jniAccessors.getMethodIDOf(_classRef, "onRmsChanged", "(F)V");

  /// from: public abstract void onRmsChanged(float rmsdB)
  ///
  /// The sound level in the audio stream has changed. There is no guarantee that this method will
  /// be called.
  ///@param rmsdB the new RMS dB value
  void onRmsChanged(double rmsdB) => jniAccessors.callMethodWithArgs(
      reference, _id_onRmsChanged, jni.JniType.voidType, [rmsdB]).check();

  static final _id_onBufferReceived =
      jniAccessors.getMethodIDOf(_classRef, "onBufferReceived", "([B)V");

  /// from: public abstract void onBufferReceived(byte[] buffer)
  ///
  /// More sound has been received. The purpose of this function is to allow giving feedback to the
  /// user regarding the captured audio. There is no guarantee that this method will be called.
  ///@param buffer a buffer containing a sequence of big-endian 16-bit integers representing a
  ///        single channel audio stream. The sample rate is implementation dependent.
  void onBufferReceived(jni.JniObject buffer) =>
      jniAccessors.callMethodWithArgs(reference, _id_onBufferReceived,
          jni.JniType.voidType, [buffer.reference]).check();

  static final _id_onEndOfSpeech =
      jniAccessors.getMethodIDOf(_classRef, "onEndOfSpeech", "()V");

  /// from: public abstract void onEndOfSpeech()
  ///
  /// Called after the user stops speaking.
  void onEndOfSpeech() => jniAccessors.callMethodWithArgs(
      reference, _id_onEndOfSpeech, jni.JniType.voidType, []).check();

  static final _id_onError =
      jniAccessors.getMethodIDOf(_classRef, "onError", "(I)V");

  /// from: public abstract void onError(int error)
  ///
  /// A network or recognition error occurred.
  ///@param error code is defined in SpeechRecognizer
  void onError(int error) => jniAccessors.callMethodWithArgs(
      reference, _id_onError, jni.JniType.voidType, [error]).check();

  static final _id_onResults = jniAccessors.getMethodIDOf(
      _classRef, "onResults", "(Landroid/os/Bundle;)V");

  /// from: public abstract void onResults(android.os.Bundle results)
  ///
  /// Called when recognition results are ready.
  ///@param results the recognition results. To retrieve the results in {@code
  ///        ArrayList<String>} format use Bundle\#getStringArrayList(String) with
  ///        SpeechRecognizer\#RESULTS_RECOGNITION as a parameter. A float array of
  ///        confidence values might also be given in SpeechRecognizer\#CONFIDENCE_SCORES.
  void onResults(bundle_.Bundle results) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onResults,
      jni.JniType.voidType,
      [results.reference]).check();

  static final _id_onPartialResults = jniAccessors.getMethodIDOf(
      _classRef, "onPartialResults", "(Landroid/os/Bundle;)V");

  /// from: public abstract void onPartialResults(android.os.Bundle partialResults)
  ///
  /// Called when partial recognition results are available. The callback might be called at any
  /// time between \#onBeginningOfSpeech() and \#onResults(Bundle) when partial
  /// results are ready. This method may be called zero, one or multiple times for each call to
  /// SpeechRecognizer\#startListening(Intent), depending on the speech recognition
  /// service implementation.  To request partial results, use
  /// RecognizerIntent\#EXTRA_PARTIAL_RESULTS
  ///@param partialResults the returned results. To retrieve the results in
  ///        ArrayList&lt;String&gt; format use Bundle\#getStringArrayList(String) with
  ///        SpeechRecognizer\#RESULTS_RECOGNITION as a parameter
  void onPartialResults(bundle_.Bundle partialResults) =>
      jniAccessors.callMethodWithArgs(reference, _id_onPartialResults,
          jni.JniType.voidType, [partialResults.reference]).check();

  static final _id_onEvent = jniAccessors.getMethodIDOf(
      _classRef, "onEvent", "(ILandroid/os/Bundle;)V");

  /// from: public abstract void onEvent(int eventType, android.os.Bundle params)
  ///
  /// Reserved for adding future events.
  ///@param eventType the type of the occurred event
  ///@param params a Bundle containing the passed parameters
  void onEvent(int eventType, bundle_.Bundle params) =>
      jniAccessors.callMethodWithArgs(reference, _id_onEvent,
          jni.JniType.voidType, [eventType, params.reference]).check();
}
