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

import "../app/Service.dart" as service_;

import "../content/Intent.dart" as intent_;

import "../os/IBinder.dart" as ibinder_;

import "../os/Bundle.dart" as bundle_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.speech.RecognitionService
///
/// This class provides a base class for recognition service implementations. This class should be
/// extended only in case you wish to implement a new speech recognizer. Please note that the
/// implementation of this service is stateless.
class RecognitionService extends service_.Service {
  static final _classRef =
      jniAccessors.getClassOf("android/speech/RecognitionService");
  RecognitionService.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String SERVICE_INTERFACE
  ///
  /// The Intent that must be declared as handled by the service.
  static const SERVICE_INTERFACE = "android.speech.RecognitionService";

  /// from: static public final java.lang.String SERVICE_META_DATA
  ///
  /// Name under which a RecognitionService component publishes information about itself.
  /// This meta-data should reference an XML resource containing a
  /// <code>&lt;android.R.styleable\#RecognitionService recognition-service&gt;</code> tag.
  static const SERVICE_META_DATA = "android.speech";

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  RecognitionService.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_onStartListening = jniAccessors.getMethodIDOf(
      _classRef,
      "onStartListening",
      "(Landroid/content/Intent;Landroid/speech/RecognitionService\$Callback;)V");

  /// from: protected abstract void onStartListening(android.content.Intent recognizerIntent, android.speech.RecognitionService.Callback listener)
  ///
  /// Notifies the service that it should start listening for speech.
  ///@param recognizerIntent contains parameters for the recognition to be performed. The intent
  ///        may also contain optional extras, see RecognizerIntent. If these values are
  ///        not set explicitly, default values should be used by the recognizer.
  ///@param listener that will receive the service's callbacks
  void onStartListening(intent_.Intent recognizerIntent,
          RecognitionService_Callback listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onStartListening,
          jni.JniType.voidType,
          [recognizerIntent.reference, listener.reference]).check();

  static final _id_onCancel = jniAccessors.getMethodIDOf(_classRef, "onCancel",
      "(Landroid/speech/RecognitionService\$Callback;)V");

  /// from: protected abstract void onCancel(android.speech.RecognitionService.Callback listener)
  ///
  /// Notifies the service that it should cancel the speech recognition.
  void onCancel(RecognitionService_Callback listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_onCancel,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_onStopListening = jniAccessors.getMethodIDOf(_classRef,
      "onStopListening", "(Landroid/speech/RecognitionService\$Callback;)V");

  /// from: protected abstract void onStopListening(android.speech.RecognitionService.Callback listener)
  ///
  /// Notifies the service that it should stop listening for speech. Speech captured so far should
  /// be recognized as if the user had stopped speaking at this point. This method is only called
  /// if the application calls it explicitly.
  void onStopListening(RecognitionService_Callback listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_onStopListening,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_onBind = jniAccessors.getMethodIDOf(
      _classRef, "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;");

  /// from: public final android.os.IBinder onBind(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ibinder_.IBinder onBind(intent_.Intent intent) =>
      ibinder_.IBinder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onBind, jni.JniType.objectType, [intent.reference]).object);

  static final _id_onDestroy =
      jniAccessors.getMethodIDOf(_classRef, "onDestroy", "()V");

  /// from: public void onDestroy()
  void onDestroy() => jniAccessors.callMethodWithArgs(
      reference, _id_onDestroy, jni.JniType.voidType, []).check();
}

/// from: android.speech.RecognitionService$Callback
///
/// This class receives callbacks from the speech recognition service and forwards them to the
/// user. An instance of this class is passed to the
/// RecognitionService\#onStartListening(Intent, Callback) method. Recognizers may call
/// these methods on any thread.
class RecognitionService_Callback extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/speech/RecognitionService\$Callback");
  RecognitionService_Callback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  RecognitionService_Callback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_beginningOfSpeech =
      jniAccessors.getMethodIDOf(_classRef, "beginningOfSpeech", "()V");

  /// from: public void beginningOfSpeech()
  ///
  /// The service should call this method when the user has started to speak.
  void beginningOfSpeech() => jniAccessors.callMethodWithArgs(
      reference, _id_beginningOfSpeech, jni.JniType.voidType, []).check();

  static final _id_bufferReceived =
      jniAccessors.getMethodIDOf(_classRef, "bufferReceived", "([B)V");

  /// from: public void bufferReceived(byte[] buffer)
  ///
  /// The service should call this method when sound has been received. The purpose of this
  /// function is to allow giving feedback to the user regarding the captured audio.
  ///@param buffer a buffer containing a sequence of big-endian 16-bit integers representing a
  ///        single channel audio stream. The sample rate is implementation dependent.
  void bufferReceived(jni.JniObject buffer) => jniAccessors.callMethodWithArgs(
      reference,
      _id_bufferReceived,
      jni.JniType.voidType,
      [buffer.reference]).check();

  static final _id_endOfSpeech =
      jniAccessors.getMethodIDOf(_classRef, "endOfSpeech", "()V");

  /// from: public void endOfSpeech()
  ///
  /// The service should call this method after the user stops speaking.
  void endOfSpeech() => jniAccessors.callMethodWithArgs(
      reference, _id_endOfSpeech, jni.JniType.voidType, []).check();

  static final _id_error =
      jniAccessors.getMethodIDOf(_classRef, "error", "(I)V");

  /// from: public void error(int error)
  ///
  /// The service should call this method when a network or recognition error occurred.
  ///@param error code is defined in SpeechRecognizer
  void error(int error) => jniAccessors.callMethodWithArgs(
      reference, _id_error, jni.JniType.voidType, [error]).check();

  static final _id_partialResults = jniAccessors.getMethodIDOf(
      _classRef, "partialResults", "(Landroid/os/Bundle;)V");

  /// from: public void partialResults(android.os.Bundle partialResults)
  ///
  /// The service should call this method when partial recognition results are available. This
  /// method can be called at any time between \#beginningOfSpeech() and
  /// \#results(Bundle) when partial results are ready. This method may be called zero,
  /// one or multiple times for each call to SpeechRecognizer\#startListening(Intent),
  /// depending on the speech recognition service implementation.
  ///@param partialResults the returned results. To retrieve the results in
  ///        ArrayList&lt;String&gt; format use Bundle\#getStringArrayList(String) with
  ///        SpeechRecognizer\#RESULTS_RECOGNITION as a parameter
  void partialResults(bundle_.Bundle partialResults) =>
      jniAccessors.callMethodWithArgs(reference, _id_partialResults,
          jni.JniType.voidType, [partialResults.reference]).check();

  static final _id_readyForSpeech = jniAccessors.getMethodIDOf(
      _classRef, "readyForSpeech", "(Landroid/os/Bundle;)V");

  /// from: public void readyForSpeech(android.os.Bundle params)
  ///
  /// The service should call this method when the endpointer is ready for the user to start
  /// speaking.
  ///@param params parameters set by the recognition service. Reserved for future use.
  void readyForSpeech(bundle_.Bundle params) => jniAccessors.callMethodWithArgs(
      reference,
      _id_readyForSpeech,
      jni.JniType.voidType,
      [params.reference]).check();

  static final _id_results = jniAccessors.getMethodIDOf(
      _classRef, "results", "(Landroid/os/Bundle;)V");

  /// from: public void results(android.os.Bundle results)
  ///
  /// The service should call this method when recognition results are ready.
  ///@param results the recognition results. To retrieve the results in {@code
  ///        ArrayList<String>} format use Bundle\#getStringArrayList(String) with
  ///        SpeechRecognizer\#RESULTS_RECOGNITION as a parameter
  void results(bundle_.Bundle results) => jniAccessors.callMethodWithArgs(
      reference,
      _id_results,
      jni.JniType.voidType,
      [results.reference]).check();

  static final _id_rmsChanged =
      jniAccessors.getMethodIDOf(_classRef, "rmsChanged", "(F)V");

  /// from: public void rmsChanged(float rmsdB)
  ///
  /// The service should call this method when the sound level in the audio stream has changed.
  /// There is no guarantee that this method will be called.
  ///@param rmsdB the new RMS dB value
  void rmsChanged(double rmsdB) => jniAccessors.callMethodWithArgs(
      reference, _id_rmsChanged, jni.JniType.voidType, [rmsdB]).check();

  static final _id_getCallingUid =
      jniAccessors.getMethodIDOf(_classRef, "getCallingUid", "()I");

  /// from: public int getCallingUid()
  ///
  /// Return the Linux uid assigned to the process that sent you the current transaction that
  /// is being processed. This is obtained from Binder\#getCallingUid().
  int getCallingUid() => jniAccessors.callMethodWithArgs(
      reference, _id_getCallingUid, jni.JniType.intType, []).integer;
}