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

import "../content/Intent.dart" as intent_;

import "../content/Context.dart" as context_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.speech.RecognizerIntent
///
/// Constants for supporting speech recognition through starting an Intent
class RecognizerIntent extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/speech/RecognizerIntent");
  RecognizerIntent.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_GET_LANGUAGE_DETAILS
  ///
  /// A broadcast intent which can be fired to the BroadcastReceiver component specified
  /// in the meta-data defined in the \#DETAILS_META_DATA meta-data of an
  /// Activity satisfying \#ACTION_WEB_SEARCH.
  ///
  /// When fired with
  /// Context\#sendOrderedBroadcast(Intent, String, BroadcastReceiver, android.os.Handler, int, String, android.os.Bundle),
  /// a Bundle of extras will be returned to the provided result receiver, and should
  /// ideally contain values for \#EXTRA_LANGUAGE_PREFERENCE and
  /// \#EXTRA_SUPPORTED_LANGUAGES.
  ///
  /// (Whether these are actually provided is up to the particular implementation. It is
  /// recommended that Activitys implementing \#ACTION_WEB_SEARCH provide this
  /// information, but it is not required.)
  static const ACTION_GET_LANGUAGE_DETAILS =
      "android.speech.action.GET_LANGUAGE_DETAILS";

  /// from: static public final java.lang.String ACTION_RECOGNIZE_SPEECH
  ///
  /// Starts an activity that will prompt the user for speech and send it through a
  /// speech recognizer.  The results will be returned via activity results (in
  /// Activity\#onActivityResult, if you start the intent using
  /// Activity\#startActivityForResult(Intent, int)), or forwarded via a PendingIntent
  /// if one is provided.
  ///
  /// Starting this intent with just Activity\#startActivity(Intent) is not supported.
  /// You must either use Activity\#startActivityForResult(Intent, int), or provide a
  /// PendingIntent, to receive recognition results.
  ///
  /// The implementation of this API is likely to stream audio to remote servers to perform
  /// speech recognition which can use a substantial amount of bandwidth.
  ///
  /// Required extras:
  /// <ul>
  ///   <li>\#EXTRA_LANGUAGE_MODEL
  /// </ul>
  ///
  /// Optional extras:
  /// <ul>
  ///   <li>\#EXTRA_PROMPT
  ///   <li>\#EXTRA_LANGUAGE
  ///   <li>\#EXTRA_MAX_RESULTS
  ///   <li>\#EXTRA_RESULTS_PENDINGINTENT
  ///   <li>\#EXTRA_RESULTS_PENDINGINTENT_BUNDLE
  /// </ul>
  ///
  ///  Result extras (returned in the result, not to be specified in the request):
  /// <ul>
  ///   <li>\#EXTRA_RESULTS
  /// </ul>
  ///
  /// NOTE: There may not be any applications installed to handle this action, so you should
  /// make sure to catch ActivityNotFoundException.
  static const ACTION_RECOGNIZE_SPEECH =
      "android.speech.action.RECOGNIZE_SPEECH";

  /// from: static public final java.lang.String ACTION_VOICE_SEARCH_HANDS_FREE
  ///
  /// Starts an activity that will prompt the user for speech without requiring the user's
  /// visual attention or touch input. It will send it through a speech recognizer,
  /// and either synthesize speech for a web search result or trigger
  /// another type of action based on the user's speech.
  ///
  /// This activity may be launched while device is locked in a secure mode.
  /// Special care must be taken to ensure that the voice actions that are performed while
  /// hands free cannot compromise the device's security.
  /// The activity should check the value of the \#EXTRA_SECURE extra to determine
  /// whether the device has been securely locked. If so, the activity should either restrict
  /// the set of voice actions that are permitted or require some form of secure
  /// authentication before proceeding.
  ///
  /// To ensure that the activity's user interface is visible while the lock screen is showing,
  /// the activity should set the
  /// android.view.WindowManager.LayoutParams\#FLAG_SHOW_WHEN_LOCKED window flag.
  /// Otherwise the activity's user interface may be hidden by the lock screen. The activity
  /// should take care not to leak private information when the device is securely locked.
  ///
  /// Optional extras:
  /// <ul>
  ///   <li>\#EXTRA_SECURE
  /// </ul>
  ///
  /// <p class="note">
  /// In some cases, a matching Activity may not exist, so ensure you
  /// safeguard against this.
  static const ACTION_VOICE_SEARCH_HANDS_FREE =
      "android.speech.action.VOICE_SEARCH_HANDS_FREE";

  /// from: static public final java.lang.String ACTION_WEB_SEARCH
  ///
  /// Starts an activity that will prompt the user for speech, send it through a
  /// speech recognizer, and either display a web search result or trigger
  /// another type of action based on the user's speech.
  ///
  /// If you want to avoid triggering any type of action besides web search, you can use
  /// the \#EXTRA_WEB_SEARCH_ONLY extra.
  ///
  /// Required extras:
  /// <ul>
  ///   <li>\#EXTRA_LANGUAGE_MODEL
  /// </ul>
  ///
  /// Optional extras:
  /// <ul>
  ///   <li>\#EXTRA_PROMPT
  ///   <li>\#EXTRA_LANGUAGE
  ///   <li>\#EXTRA_MAX_RESULTS
  ///   <li>\#EXTRA_PARTIAL_RESULTS
  ///   <li>\#EXTRA_WEB_SEARCH_ONLY
  ///   <li>\#EXTRA_ORIGIN
  /// </ul>
  ///
  ///  Result extras (returned in the result, not to be specified in the request):
  /// <ul>
  ///   <li>\#EXTRA_RESULTS
  ///   <li>\#EXTRA_CONFIDENCE_SCORES (optional)
  /// </ul>
  ///
  /// NOTE: There may not be any applications installed to handle this action, so you should
  /// make sure to catch ActivityNotFoundException.
  static const ACTION_WEB_SEARCH = "android.speech.action.WEB_SEARCH";

  /// from: static public final java.lang.String DETAILS_META_DATA
  ///
  /// Meta-data name under which an Activity implementing \#ACTION_WEB_SEARCH can
  /// use to expose the class name of a BroadcastReceiver which can respond to request for
  /// more information, from any of the broadcast intents specified in this class.
  ///
  /// Broadcast intents can be directed to the class name specified in the meta-data by creating
  /// an Intent, setting the component with
  /// Intent\#setComponent(android.content.ComponentName), and using
  /// Context\#sendOrderedBroadcast(Intent, String, BroadcastReceiver, android.os.Handler, int, String, android.os.Bundle)
  /// with another BroadcastReceiver which can receive the results.
  ///
  /// The \#getVoiceDetailsIntent(Context) method is provided as a convenience to create
  /// a broadcast intent based on the value of this meta-data, if available.
  ///
  /// This is optional and not all Activitys which implement \#ACTION_WEB_SEARCH
  /// are required to implement this. Thus retrieving this meta-data may be null.
  static const DETAILS_META_DATA = "android.speech.DETAILS";

  /// from: static public final java.lang.String EXTRA_CALLING_PACKAGE
  ///
  /// The extra key used in an intent to the speech recognizer for voice search. Not
  /// generally to be used by developers. The system search dialog uses this, for example,
  /// to set a calling package for identification by a voice search API. If this extra
  /// is set by anyone but the system process, it should be overridden by the voice search
  /// implementation.
  static const EXTRA_CALLING_PACKAGE = "calling_package";

  /// from: static public final java.lang.String EXTRA_CONFIDENCE_SCORES
  ///
  /// A float array of confidence scores of the recognition results when performing
  /// \#ACTION_RECOGNIZE_SPEECH. The array should be the same size as the ArrayList
  /// returned in \#EXTRA_RESULTS, and should contain values ranging from 0.0 to 1.0,
  /// or -1 to represent an unavailable confidence score.
  ///
  /// Confidence values close to 1.0 indicate high confidence (the speech recognizer is
  /// confident that the recognition result is correct), while values close to 0.0 indicate
  /// low confidence.
  ///
  /// Returned in the results; not to be specified in the recognition request. This extra is
  /// optional and might not be provided. Only present when Activity\#RESULT_OK is
  /// returned in an activity result.
  static const EXTRA_CONFIDENCE_SCORES =
      "android.speech.extra.CONFIDENCE_SCORES";

  /// from: static public final java.lang.String EXTRA_LANGUAGE
  ///
  /// Optional IETF language tag (as defined by BCP 47), for example "en-US". This tag informs the
  /// recognizer to perform speech recognition in a language different than the one set in the
  /// java.util.Locale\#getDefault().
  static const EXTRA_LANGUAGE = "android.speech.extra.LANGUAGE";

  /// from: static public final java.lang.String EXTRA_LANGUAGE_MODEL
  ///
  /// Informs the recognizer which speech model to prefer when performing
  /// \#ACTION_RECOGNIZE_SPEECH. The recognizer uses this
  /// information to fine tune the results. This extra is required. Activities implementing
  /// \#ACTION_RECOGNIZE_SPEECH may interpret the values as they see fit.
  ///@see \#LANGUAGE_MODEL_FREE_FORM
  ///@see \#LANGUAGE_MODEL_WEB_SEARCH
  static const EXTRA_LANGUAGE_MODEL = "android.speech.extra.LANGUAGE_MODEL";

  /// from: static public final java.lang.String EXTRA_LANGUAGE_PREFERENCE
  ///
  /// The key to the extra in the Bundle returned by \#ACTION_GET_LANGUAGE_DETAILS
  /// which is a String that represents the current language preference this user has
  /// specified - a locale string like "en-US".
  static const EXTRA_LANGUAGE_PREFERENCE =
      "android.speech.extra.LANGUAGE_PREFERENCE";

  /// from: static public final java.lang.String EXTRA_MAX_RESULTS
  ///
  /// Optional limit on the maximum number of results to return. If omitted the recognizer
  /// will choose how many results to return. Must be an integer.
  static const EXTRA_MAX_RESULTS = "android.speech.extra.MAX_RESULTS";

  /// from: static public final java.lang.String EXTRA_ONLY_RETURN_LANGUAGE_PREFERENCE
  ///
  /// Specify this boolean extra in a broadcast of \#ACTION_GET_LANGUAGE_DETAILS to
  /// indicate that only the current language preference is needed in the response. This
  /// avoids any additional computation if all you need is \#EXTRA_LANGUAGE_PREFERENCE
  /// in the response.
  static const EXTRA_ONLY_RETURN_LANGUAGE_PREFERENCE =
      "android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE";

  /// from: static public final java.lang.String EXTRA_ORIGIN
  ///
  /// Optional value which can be used to indicate the referer url of a page in which
  /// speech was requested. For example, a web browser may choose to provide this for
  /// uses of speech on a given page.
  static const EXTRA_ORIGIN = "android.speech.extra.ORIGIN";

  /// from: static public final java.lang.String EXTRA_PARTIAL_RESULTS
  ///
  /// Optional boolean to indicate whether partial results should be returned by the recognizer
  /// as the user speaks (default is false).  The server may ignore a request for partial
  /// results in some or all cases.
  static const EXTRA_PARTIAL_RESULTS = "android.speech.extra.PARTIAL_RESULTS";

  /// from: static public final java.lang.String EXTRA_PREFER_OFFLINE
  ///
  /// Optional boolean, to be used with \#ACTION_RECOGNIZE_SPEECH,
  /// \#ACTION_VOICE_SEARCH_HANDS_FREE, \#ACTION_WEB_SEARCH to indicate whether to
  /// only use an offline speech recognition engine. The default is false, meaning that either
  /// network or offline recognition engines may be used.
  static const EXTRA_PREFER_OFFLINE = "android.speech.extra.PREFER_OFFLINE";

  /// from: static public final java.lang.String EXTRA_PROMPT
  ///
  /// Optional text prompt to show to the user when asking them to speak.
  static const EXTRA_PROMPT = "android.speech.extra.PROMPT";

  /// from: static public final java.lang.String EXTRA_RESULTS
  ///
  /// An ArrayList&lt;String&gt; of the recognition results when performing
  /// \#ACTION_RECOGNIZE_SPEECH. Generally this list should be ordered in
  /// descending order of speech recognizer confidence. (See \#EXTRA_CONFIDENCE_SCORES).
  /// Returned in the results; not to be specified in the recognition request. Only present
  /// when Activity\#RESULT_OK is returned in an activity result. In a PendingIntent,
  /// the lack of this extra indicates failure.
  static const EXTRA_RESULTS = "android.speech.extra.RESULTS";

  /// from: static public final java.lang.String EXTRA_RESULTS_PENDINGINTENT
  ///
  /// When the intent is \#ACTION_RECOGNIZE_SPEECH, the speech input activity will
  /// return results to you via the activity results mechanism.  Alternatively, if you use this
  /// extra to supply a PendingIntent, the results will be added to its bundle and the
  /// PendingIntent will be sent to its target.
  static const EXTRA_RESULTS_PENDINGINTENT =
      "android.speech.extra.RESULTS_PENDINGINTENT";

  /// from: static public final java.lang.String EXTRA_RESULTS_PENDINGINTENT_BUNDLE
  ///
  /// If you use \#EXTRA_RESULTS_PENDINGINTENT to supply a forwarding intent, you can
  /// also use this extra to supply additional extras for the final intent.  The search results
  /// will be added to this bundle, and the combined bundle will be sent to the target.
  static const EXTRA_RESULTS_PENDINGINTENT_BUNDLE =
      "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE";

  /// from: static public final java.lang.String EXTRA_SECURE
  ///
  /// Optional boolean to indicate that a "hands free" voice search was performed while the device
  /// was in a secure mode. An example of secure mode is when the device's screen lock is active,
  /// and it requires some form of authentication to be unlocked.
  ///
  /// When the device is securely locked, the voice search activity should either restrict
  /// the set of voice actions that are permitted, or require some form of secure authentication
  /// before proceeding.
  static const EXTRA_SECURE = "android.speech.extras.EXTRA_SECURE";

  /// from: static public final java.lang.String EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS
  ///
  /// The amount of time that it should take after we stop hearing speech to consider the input
  /// complete.
  ///
  /// Note that it is extremely rare you'd want to specify this value in an intent. If
  /// you don't have a very good reason to change these, you should leave them as they are. Note
  /// also that certain values may cause undesired or unexpected results - use judiciously!
  /// Additionally, depending on the recognizer implementation, these values may have no effect.
  static const EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS =
      "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS";

  /// from: static public final java.lang.String EXTRA_SPEECH_INPUT_MINIMUM_LENGTH_MILLIS
  ///
  /// The minimum length of an utterance. We will not stop recording before this amount of time.
  ///
  /// Note that it is extremely rare you'd want to specify this value in an intent. If you don't
  /// have a very good reason to change these, you should leave them as they are. Note also that
  /// certain values may cause undesired or unexpected results - use judiciously! Additionally,
  /// depending on the recognizer implementation, these values may have no effect.
  static const EXTRA_SPEECH_INPUT_MINIMUM_LENGTH_MILLIS =
      "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS";

  /// from: static public final java.lang.String EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS
  ///
  /// The amount of time that it should take after we stop hearing speech to consider the input
  /// possibly complete. This is used to prevent the endpointer cutting off during very short
  /// mid-speech pauses.
  ///
  /// Note that it is extremely rare you'd want to specify this value in an intent. If
  /// you don't have a very good reason to change these, you should leave them as they are. Note
  /// also that certain values may cause undesired or unexpected results - use judiciously!
  /// Additionally, depending on the recognizer implementation, these values may have no effect.
  static const EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS =
      "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS";

  /// from: static public final java.lang.String EXTRA_SUPPORTED_LANGUAGES
  ///
  /// The key to the extra in the Bundle returned by \#ACTION_GET_LANGUAGE_DETAILS
  /// which is an ArrayList of Strings that represents the languages supported by
  /// this implementation of voice recognition - a list of strings like "en-US", "cmn-Hans-CN",
  /// etc.
  static const EXTRA_SUPPORTED_LANGUAGES =
      "android.speech.extra.SUPPORTED_LANGUAGES";

  /// from: static public final java.lang.String EXTRA_WEB_SEARCH_ONLY
  ///
  /// Optional boolean, to be used with \#ACTION_WEB_SEARCH, to indicate whether to
  /// only fire web searches in response to a user's speech. The default is false, meaning
  /// that other types of actions can be taken based on the user's speech.
  static const EXTRA_WEB_SEARCH_ONLY = "android.speech.extra.WEB_SEARCH_ONLY";

  /// from: static public final java.lang.String LANGUAGE_MODEL_FREE_FORM
  ///
  /// Use a language model based on free-form speech recognition.  This is a value to use for
  /// \#EXTRA_LANGUAGE_MODEL.
  ///@see \#EXTRA_LANGUAGE_MODEL
  static const LANGUAGE_MODEL_FREE_FORM = "free_form";

  /// from: static public final java.lang.String LANGUAGE_MODEL_WEB_SEARCH
  ///
  /// Use a language model based on web search terms.  This is a value to use for
  /// \#EXTRA_LANGUAGE_MODEL.
  ///@see \#EXTRA_LANGUAGE_MODEL
  static const LANGUAGE_MODEL_WEB_SEARCH = "web_search";

  /// from: static public final int RESULT_AUDIO_ERROR
  ///
  /// Result code returned when an audio error was encountered
  static const RESULT_AUDIO_ERROR = 5;

  /// from: static public final int RESULT_CLIENT_ERROR
  ///
  /// Result code returned when there is a generic client error
  static const RESULT_CLIENT_ERROR = 2;

  /// from: static public final int RESULT_NETWORK_ERROR
  ///
  /// Result code returned when a network error was encountered
  static const RESULT_NETWORK_ERROR = 4;

  /// from: static public final int RESULT_NO_MATCH
  ///
  /// Result code returned when no matches are found for the given speech
  static const RESULT_NO_MATCH = 1;

  /// from: static public final int RESULT_SERVER_ERROR
  ///
  /// Result code returned when the recognition server returns an error
  static const RESULT_SERVER_ERROR = 3;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  RecognizerIntent()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getVoiceDetailsIntent = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getVoiceDetailsIntent",
      "(Landroid/content/Context;)Landroid/content/Intent;");

  /// from: static public final android.content.Intent getVoiceDetailsIntent(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the broadcast intent to fire with
  /// Context\#sendOrderedBroadcast(Intent, String, BroadcastReceiver, android.os.Handler, int, String, Bundle)
  /// to receive details from the package that implements voice search.
  ///
  /// This is based on the value specified by the voice search Activity in
  /// \#DETAILS_META_DATA, and if this is not specified, will return null. Also if there
  /// is no chosen default to resolve for \#ACTION_WEB_SEARCH, this will return null.
  ///
  /// If an intent is returned and is fired, a Bundle of extras will be returned to the
  /// provided result receiver, and should ideally contain values for
  /// \#EXTRA_LANGUAGE_PREFERENCE and \#EXTRA_SUPPORTED_LANGUAGES.
  ///
  /// (Whether these are actually provided is up to the particular implementation. It is
  /// recommended that Activitys implementing \#ACTION_WEB_SEARCH provide this
  /// information, but it is not required.)
  ///@param context a context object
  ///@return the broadcast intent to fire or null if not available
  static intent_.Intent getVoiceDetailsIntent(context_.Context context) =>
      intent_.Intent.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getVoiceDetailsIntent,
          jni.JniType.objectType,
          [context.reference]).object);
}
