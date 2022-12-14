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

import "../../content/Intent.dart" as intent_;

import "../../media/AudioFormat.dart" as audioformat_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.voice.AlwaysOnHotwordDetector
///
/// A class that lets a VoiceInteractionService implementation interact with
/// always-on keyphrase detection APIs.
class AlwaysOnHotwordDetector extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/voice/AlwaysOnHotwordDetector");
  AlwaysOnHotwordDetector.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS
  ///
  /// Recognition flag for \#startRecognition(int) that indicates
  /// whether the recognition should keep going on even after the keyphrase triggers.
  /// If this flag is specified, it's possible to get multiple triggers after a
  /// call to \#startRecognition(int) if the user speaks the keyphrase multiple times.
  /// When this isn't specified, the default behavior is to stop recognition once the
  /// keyphrase is spoken, till the caller starts recognition again.
  static const RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS = 2;

  /// from: static public final int RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO
  ///
  /// Recognition flag for \#startRecognition(int) that indicates
  /// whether the trigger audio for hotword needs to be captured.
  static const RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO = 1;

  /// from: static public final int RECOGNITION_MODE_USER_IDENTIFICATION
  ///
  /// User identification performed with the keyphrase recognition.
  /// Returned by \#getSupportedRecognitionModes()
  static const RECOGNITION_MODE_USER_IDENTIFICATION = 2;

  /// from: static public final int RECOGNITION_MODE_VOICE_TRIGGER
  ///
  /// Simple recognition of the key phrase.
  /// Returned by \#getSupportedRecognitionModes()
  static const RECOGNITION_MODE_VOICE_TRIGGER = 1;

  /// from: static public final int STATE_HARDWARE_UNAVAILABLE
  ///
  /// Indicates that recognition for the given keyphrase is not available on the system
  /// because of the hardware configuration.
  /// No further interaction should be performed with the detector that returns this availability.
  static const STATE_HARDWARE_UNAVAILABLE = -2;

  /// from: static public final int STATE_KEYPHRASE_ENROLLED
  ///
  /// Indicates that the given keyphrase is currently enrolled and it's possible to start
  /// recognition for it.
  static const STATE_KEYPHRASE_ENROLLED = 2;

  /// from: static public final int STATE_KEYPHRASE_UNENROLLED
  ///
  /// Indicates that the given keyphrase is not enrolled.
  /// The caller may choose to begin an enrollment flow for the keyphrase.
  static const STATE_KEYPHRASE_UNENROLLED = 1;

  /// from: static public final int STATE_KEYPHRASE_UNSUPPORTED
  ///
  /// Indicates that recognition for the given keyphrase is not supported.
  /// No further interaction should be performed with the detector that returns this availability.
  static const STATE_KEYPHRASE_UNSUPPORTED = -1;

  static final _id_getSupportedRecognitionModes = jniAccessors.getMethodIDOf(
      _classRef, "getSupportedRecognitionModes", "()I");

  /// from: public int getSupportedRecognitionModes()
  ///
  /// Gets the recognition modes supported by the associated keyphrase.
  ///@see \#RECOGNITION_MODE_USER_IDENTIFICATION
  ///@see \#RECOGNITION_MODE_VOICE_TRIGGER
  ///@throws UnsupportedOperationException if the keyphrase itself isn't supported.
  ///         Callers should only call this method after a supported state callback on
  ///         Callback\#onAvailabilityChanged(int) to avoid this exception.
  ///@throws IllegalStateException if the detector is in an invalid state.
  ///         This may happen if another detector has been instantiated or the
  ///         VoiceInteractionService hosting this detector has been shut down.
  ///@return Value is either <code>0</code> or a combination of android.service.voice.AlwaysOnHotwordDetector\#RECOGNITION_MODE_VOICE_TRIGGER, and android.service.voice.AlwaysOnHotwordDetector\#RECOGNITION_MODE_USER_IDENTIFICATION
  int getSupportedRecognitionModes() => jniAccessors.callMethodWithArgs(
      reference,
      _id_getSupportedRecognitionModes,
      jni.JniType.intType, []).integer;

  static final _id_startRecognition =
      jniAccessors.getMethodIDOf(_classRef, "startRecognition", "(I)Z");

  /// from: public boolean startRecognition(int recognitionFlags)
  ///
  /// Starts recognition for the associated keyphrase.
  ///@see \#RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO
  ///@see \#RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS
  ///@param recognitionFlags The flags to control the recognition properties.
  /// Value is either <code>0</code> or a combination of android.service.voice.AlwaysOnHotwordDetector.RECOGNITION_FLAG_NONE, android.service.voice.AlwaysOnHotwordDetector\#RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO, and android.service.voice.AlwaysOnHotwordDetector\#RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS
  ///@return Indicates whether the call succeeded or not.
  ///@throws UnsupportedOperationException if the recognition isn't supported.
  ///         Callers should only call this method after a supported state callback on
  ///         Callback\#onAvailabilityChanged(int) to avoid this exception.
  ///@throws IllegalStateException if the detector is in an invalid state.
  ///         This may happen if another detector has been instantiated or the
  ///         VoiceInteractionService hosting this detector has been shut down.
  bool startRecognition(int recognitionFlags) =>
      jniAccessors.callMethodWithArgs(reference, _id_startRecognition,
          jni.JniType.booleanType, [recognitionFlags]).boolean;

  static final _id_stopRecognition =
      jniAccessors.getMethodIDOf(_classRef, "stopRecognition", "()Z");

  /// from: public boolean stopRecognition()
  ///
  /// Stops recognition for the associated keyphrase.
  ///@return Indicates whether the call succeeded or not.
  ///@throws UnsupportedOperationException if the recognition isn't supported.
  ///         Callers should only call this method after a supported state callback on
  ///         Callback\#onAvailabilityChanged(int) to avoid this exception.
  ///@throws IllegalStateException if the detector is in an invalid state.
  ///         This may happen if another detector has been instantiated or the
  ///         VoiceInteractionService hosting this detector has been shut down.
  bool stopRecognition() => jniAccessors.callMethodWithArgs(
      reference, _id_stopRecognition, jni.JniType.booleanType, []).boolean;

  static final _id_createEnrollIntent = jniAccessors.getMethodIDOf(
      _classRef, "createEnrollIntent", "()Landroid/content/Intent;");

  /// from: public android.content.Intent createEnrollIntent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an intent to start the enrollment for the associated keyphrase.
  /// This intent must be invoked using Activity\#startActivityForResult(Intent, int).
  /// Starting re-enrollment is only valid if the keyphrase is un-enrolled,
  /// i.e. \#STATE_KEYPHRASE_UNENROLLED,
  /// otherwise \#createReEnrollIntent() should be preferred.
  ///@return An Intent to start enrollment for the given keyphrase.
  ///@throws UnsupportedOperationException if managing they keyphrase isn't supported.
  ///         Callers should only call this method after a supported state callback on
  ///         Callback\#onAvailabilityChanged(int) to avoid this exception.
  ///@throws IllegalStateException if the detector is in an invalid state.
  ///         This may happen if another detector has been instantiated or the
  ///         VoiceInteractionService hosting this detector has been shut down.
  intent_.Intent createEnrollIntent() =>
      intent_.Intent.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_createEnrollIntent, jni.JniType.objectType, []).object);

  static final _id_createUnEnrollIntent = jniAccessors.getMethodIDOf(
      _classRef, "createUnEnrollIntent", "()Landroid/content/Intent;");

  /// from: public android.content.Intent createUnEnrollIntent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an intent to start the un-enrollment for the associated keyphrase.
  /// This intent must be invoked using Activity\#startActivityForResult(Intent, int).
  /// Starting re-enrollment is only valid if the keyphrase is already enrolled,
  /// i.e. \#STATE_KEYPHRASE_ENROLLED, otherwise invoking this may result in an error.
  ///@return An Intent to start un-enrollment for the given keyphrase.
  ///@throws UnsupportedOperationException if managing they keyphrase isn't supported.
  ///         Callers should only call this method after a supported state callback on
  ///         Callback\#onAvailabilityChanged(int) to avoid this exception.
  ///@throws IllegalStateException if the detector is in an invalid state.
  ///         This may happen if another detector has been instantiated or the
  ///         VoiceInteractionService hosting this detector has been shut down.
  intent_.Intent createUnEnrollIntent() =>
      intent_.Intent.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_createUnEnrollIntent, jni.JniType.objectType, []).object);

  static final _id_createReEnrollIntent = jniAccessors.getMethodIDOf(
      _classRef, "createReEnrollIntent", "()Landroid/content/Intent;");

  /// from: public android.content.Intent createReEnrollIntent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an intent to start the re-enrollment for the associated keyphrase.
  /// This intent must be invoked using Activity\#startActivityForResult(Intent, int).
  /// Starting re-enrollment is only valid if the keyphrase is already enrolled,
  /// i.e. \#STATE_KEYPHRASE_ENROLLED, otherwise invoking this may result in an error.
  ///@return An Intent to start re-enrollment for the given keyphrase.
  ///@throws UnsupportedOperationException if managing they keyphrase isn't supported.
  ///         Callers should only call this method after a supported state callback on
  ///         Callback\#onAvailabilityChanged(int) to avoid this exception.
  ///@throws IllegalStateException if the detector is in an invalid state.
  ///         This may happen if another detector has been instantiated or the
  ///         VoiceInteractionService hosting this detector has been shut down.
  intent_.Intent createReEnrollIntent() =>
      intent_.Intent.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_createReEnrollIntent, jni.JniType.objectType, []).object);
}

/// from: android.service.voice.AlwaysOnHotwordDetector$EventPayload
///
/// Additional payload for Callback\#onDetected.
class AlwaysOnHotwordDetector_EventPayload extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/service/voice/AlwaysOnHotwordDetector\$EventPayload");
  AlwaysOnHotwordDetector_EventPayload.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_getCaptureAudioFormat = jniAccessors.getMethodIDOf(
      _classRef, "getCaptureAudioFormat", "()Landroid/media/AudioFormat;");

  /// from: public android.media.AudioFormat getCaptureAudioFormat()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the format of the audio obtained using \#getTriggerAudio().
  /// May be null if there's no audio present.
  audioformat_.AudioFormat getCaptureAudioFormat() =>
      audioformat_.AudioFormat.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getCaptureAudioFormat,
          jni.JniType.objectType, []).object);

  static final _id_getTriggerAudio =
      jniAccessors.getMethodIDOf(_classRef, "getTriggerAudio", "()[B");

  /// from: public byte[] getTriggerAudio()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the raw audio that triggered the keyphrase.
  /// This may be null if the trigger audio isn't available.
  /// If non-null, the format of the audio can be obtained by calling
  /// \#getCaptureAudioFormat().
  ///@see AlwaysOnHotwordDetector\#RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO
  jni.JniObject getTriggerAudio() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTriggerAudio, jni.JniType.objectType, []).object);
}

/// from: android.service.voice.AlwaysOnHotwordDetector$Callback
///
/// Callbacks for always-on hotword detection.
class AlwaysOnHotwordDetector_Callback extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/service/voice/AlwaysOnHotwordDetector\$Callback");
  AlwaysOnHotwordDetector_Callback.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AlwaysOnHotwordDetector_Callback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onAvailabilityChanged =
      jniAccessors.getMethodIDOf(_classRef, "onAvailabilityChanged", "(I)V");

  /// from: public abstract void onAvailabilityChanged(int status)
  ///
  /// Called when the hotword availability changes.
  /// This indicates a change in the availability of recognition for the given keyphrase.
  /// It's called at least once with the initial availability.<p/>
  ///
  /// Availability implies whether the hardware on this system is capable of listening for
  /// the given keyphrase or not. <p/>
  ///@see AlwaysOnHotwordDetector\#STATE_HARDWARE_UNAVAILABLE
  ///@see AlwaysOnHotwordDetector\#STATE_KEYPHRASE_UNSUPPORTED
  ///@see AlwaysOnHotwordDetector\#STATE_KEYPHRASE_UNENROLLED
  ///@see AlwaysOnHotwordDetector\#STATE_KEYPHRASE_ENROLLED
  void onAvailabilityChanged(int status) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onAvailabilityChanged,
      jni.JniType.voidType,
      [status]).check();

  static final _id_onDetected = jniAccessors.getMethodIDOf(
      _classRef,
      "onDetected",
      "(Landroid/service/voice/AlwaysOnHotwordDetector\$EventPayload;)V");

  /// from: public abstract void onDetected(android.service.voice.AlwaysOnHotwordDetector.EventPayload eventPayload)
  ///
  /// Called when the keyphrase is spoken.
  /// This implicitly stops listening for the keyphrase once it's detected.
  /// Clients should start a recognition again once they are done handling this
  /// detection.
  ///@param eventPayload Payload data for the detection event.
  ///        This may contain the trigger audio, if requested when calling
  ///        AlwaysOnHotwordDetector\#startRecognition(int).
  ///
  /// This value must never be {@code null}.
  void onDetected(AlwaysOnHotwordDetector_EventPayload eventPayload) =>
      jniAccessors.callMethodWithArgs(reference, _id_onDetected,
          jni.JniType.voidType, [eventPayload.reference]).check();

  static final _id_onError =
      jniAccessors.getMethodIDOf(_classRef, "onError", "()V");

  /// from: public abstract void onError()
  ///
  /// Called when the detection fails due to an error.
  void onError() => jniAccessors.callMethodWithArgs(
      reference, _id_onError, jni.JniType.voidType, []).check();

  static final _id_onRecognitionPaused =
      jniAccessors.getMethodIDOf(_classRef, "onRecognitionPaused", "()V");

  /// from: public abstract void onRecognitionPaused()
  ///
  /// Called when the recognition is paused temporarily for some reason.
  /// This is an informational callback, and the clients shouldn't be doing anything here
  /// except showing an indication on their UI if they have to.
  void onRecognitionPaused() => jniAccessors.callMethodWithArgs(
      reference, _id_onRecognitionPaused, jni.JniType.voidType, []).check();

  static final _id_onRecognitionResumed =
      jniAccessors.getMethodIDOf(_classRef, "onRecognitionResumed", "()V");

  /// from: public abstract void onRecognitionResumed()
  ///
  /// Called when the recognition is resumed after it was temporarily paused.
  /// This is an informational callback, and the clients shouldn't be doing anything here
  /// except showing an indication on their UI if they have to.
  void onRecognitionResumed() => jniAccessors.callMethodWithArgs(
      reference, _id_onRecognitionResumed, jni.JniType.voidType, []).check();
}
