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

import "../content/Context.dart" as context_;

import "../content/ComponentName.dart" as componentname_;

import "RecognitionListener.dart" as recognitionlistener_;

import "../content/Intent.dart" as intent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.speech.SpeechRecognizer
///
/// This class provides access to the speech recognition service. This service allows access to the
/// speech recognizer. Do not instantiate this class directly, instead, call
/// SpeechRecognizer\#createSpeechRecognizer(Context). This class's methods must be
/// invoked only from the main application thread.
///
/// The implementation of this API is likely to stream audio to remote servers to perform speech
/// recognition. As such this API is not intended to be used for continuous recognition, which would
/// consume a significant amount of battery and bandwidth.
///
/// Please note that the application must have android.Manifest.permission\#RECORD_AUDIO
/// permission to use this class.
class SpeechRecognizer extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/speech/SpeechRecognizer");
  SpeechRecognizer.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String CONFIDENCE_SCORES
  ///
  /// Key used to retrieve a float array from the Bundle passed to the
  /// RecognitionListener\#onResults(Bundle) and
  /// RecognitionListener\#onPartialResults(Bundle) methods. The array should be
  /// the same size as the ArrayList provided in \#RESULTS_RECOGNITION, and should contain
  /// values ranging from 0.0 to 1.0, or -1 to represent an unavailable confidence score.
  ///
  /// Confidence values close to 1.0 indicate high confidence (the speech recognizer is confident
  /// that the recognition result is correct), while values close to 0.0 indicate low confidence.
  ///
  /// This value is optional and might not be provided.
  static const CONFIDENCE_SCORES = "confidence_scores";

  /// from: static public final int ERROR_AUDIO
  ///
  /// Audio recording error.
  static const ERROR_AUDIO = 3;

  /// from: static public final int ERROR_CLIENT
  ///
  /// Other client side errors.
  static const ERROR_CLIENT = 5;

  /// from: static public final int ERROR_INSUFFICIENT_PERMISSIONS
  ///
  /// Insufficient permissions
  static const ERROR_INSUFFICIENT_PERMISSIONS = 9;

  /// from: static public final int ERROR_NETWORK
  ///
  /// Other network related errors.
  static const ERROR_NETWORK = 2;

  /// from: static public final int ERROR_NETWORK_TIMEOUT
  ///
  /// Network operation timed out.
  static const ERROR_NETWORK_TIMEOUT = 1;

  /// from: static public final int ERROR_NO_MATCH
  ///
  /// No recognition result matched.
  static const ERROR_NO_MATCH = 7;

  /// from: static public final int ERROR_RECOGNIZER_BUSY
  ///
  /// RecognitionService busy.
  static const ERROR_RECOGNIZER_BUSY = 8;

  /// from: static public final int ERROR_SERVER
  ///
  /// Server sends error status.
  static const ERROR_SERVER = 4;

  /// from: static public final int ERROR_SPEECH_TIMEOUT
  ///
  /// No speech input
  static const ERROR_SPEECH_TIMEOUT = 6;

  /// from: static public final java.lang.String RESULTS_RECOGNITION
  ///
  /// Key used to retrieve an {@code ArrayList<String>} from the Bundle passed to the
  /// RecognitionListener\#onResults(Bundle) and
  /// RecognitionListener\#onPartialResults(Bundle) methods. These strings are the possible
  /// recognition results, where the first element is the most likely candidate.
  static const RESULTS_RECOGNITION = "results_recognition";

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/content/ComponentName;)V");

  /// from: void <init>(android.content.Context context, android.content.ComponentName serviceComponent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The right way to create a {@code SpeechRecognizer} is by using
  /// \#createSpeechRecognizer static factory method
  SpeechRecognizer(
      context_.Context context, componentname_.ComponentName serviceComponent)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [context.reference, serviceComponent.reference]).object);

  static final _id_isRecognitionAvailable = jniAccessors.getStaticMethodIDOf(
      _classRef, "isRecognitionAvailable", "(Landroid/content/Context;)Z");

  /// from: static public boolean isRecognitionAvailable(android.content.Context context)
  ///
  /// Checks whether a speech recognition service is available on the system. If this method
  /// returns {@code false}, SpeechRecognizer\#createSpeechRecognizer(Context) will
  /// fail.
  ///@param context with which {@code SpeechRecognizer} will be created
  ///@return {@code true} if recognition is available, {@code false} otherwise
  static bool isRecognitionAvailable(context_.Context context) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_isRecognitionAvailable,
          jni.JniType.booleanType,
          [context.reference]).boolean;

  static final _id_createSpeechRecognizer = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "createSpeechRecognizer",
      "(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;");

  /// from: static public android.speech.SpeechRecognizer createSpeechRecognizer(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Factory method to create a new {@code SpeechRecognizer}. Please note that
  /// \#setRecognitionListener(RecognitionListener) should be called before dispatching any
  /// command to the created {@code SpeechRecognizer}, otherwise no notifications will be
  /// received.
  ///@param context in which to create {@code SpeechRecognizer}
  ///@return a new {@code SpeechRecognizer}
  static SpeechRecognizer createSpeechRecognizer(context_.Context context) =>
      SpeechRecognizer.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_createSpeechRecognizer,
          jni.JniType.objectType,
          [context.reference]).object);

  static final _id_createSpeechRecognizer1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "createSpeechRecognizer",
      "(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;");

  /// from: static public android.speech.SpeechRecognizer createSpeechRecognizer(android.content.Context context, android.content.ComponentName serviceComponent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Factory method to create a new {@code SpeechRecognizer}. Please note that
  /// \#setRecognitionListener(RecognitionListener) should be called before dispatching any
  /// command to the created {@code SpeechRecognizer}, otherwise no notifications will be
  /// received.
  ///
  /// Use this version of the method to specify a specific service to direct this
  /// SpeechRecognizer to. Normally you would not use this; use
  /// \#createSpeechRecognizer(Context) instead to use the system default recognition
  /// service.
  ///@param context in which to create {@code SpeechRecognizer}
  ///@param serviceComponent the ComponentName of a specific service to direct this
  ///        {@code SpeechRecognizer} to
  ///@return a new {@code SpeechRecognizer}
  static SpeechRecognizer createSpeechRecognizer1(context_.Context context,
          componentname_.ComponentName serviceComponent) =>
      SpeechRecognizer.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_createSpeechRecognizer1,
          jni.JniType.objectType,
          [context.reference, serviceComponent.reference]).object);

  static final _id_setRecognitionListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setRecognitionListener",
      "(Landroid/speech/RecognitionListener;)V");

  /// from: public void setRecognitionListener(android.speech.RecognitionListener listener)
  ///
  /// Sets the listener that will receive all the callbacks. The previous unfinished commands will
  /// be executed with the old listener, while any following command will be executed with the new
  /// listener.
  ///@param listener listener that will receive all the callbacks from the created
  ///        SpeechRecognizer, this must not be null.
  void setRecognitionListener(
          recognitionlistener_.RecognitionListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setRecognitionListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_startListening = jniAccessors.getMethodIDOf(
      _classRef, "startListening", "(Landroid/content/Intent;)V");

  /// from: public void startListening(android.content.Intent recognizerIntent)
  ///
  /// Starts listening for speech. Please note that
  /// \#setRecognitionListener(RecognitionListener) should be called beforehand, otherwise
  /// no notifications will be received.
  ///@param recognizerIntent contains parameters for the recognition to be performed. The intent
  ///        may also contain optional extras, see RecognizerIntent. If these values are
  ///        not set explicitly, default values will be used by the recognizer.
  void startListening(intent_.Intent recognizerIntent) =>
      jniAccessors.callMethodWithArgs(reference, _id_startListening,
          jni.JniType.voidType, [recognizerIntent.reference]).check();

  static final _id_stopListening =
      jniAccessors.getMethodIDOf(_classRef, "stopListening", "()V");

  /// from: public void stopListening()
  ///
  /// Stops listening for speech. Speech captured so far will be recognized as if the user had
  /// stopped speaking at this point. Note that in the default case, this does not need to be
  /// called, as the speech endpointer will automatically stop the recognizer listening when it
  /// determines speech has completed. However, you can manipulate endpointer parameters directly
  /// using the intent extras defined in RecognizerIntent, in which case you may sometimes
  /// want to manually call this method to stop listening sooner. Please note that
  /// \#setRecognitionListener(RecognitionListener) should be called beforehand, otherwise
  /// no notifications will be received.
  void stopListening() => jniAccessors.callMethodWithArgs(
      reference, _id_stopListening, jni.JniType.voidType, []).check();

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public void cancel()
  ///
  /// Cancels the speech recognition. Please note that
  /// \#setRecognitionListener(RecognitionListener) should be called beforehand, otherwise
  /// no notifications will be received.
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();

  static final _id_destroy =
      jniAccessors.getMethodIDOf(_classRef, "destroy", "()V");

  /// from: public void destroy()
  ///
  /// Destroys the {@code SpeechRecognizer} object.
  void destroy() => jniAccessors.callMethodWithArgs(
      reference, _id_destroy, jni.JniType.voidType, []).check();
}
