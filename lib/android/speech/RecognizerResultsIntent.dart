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

/// from: android.speech.RecognizerResultsIntent
///
/// Constants for intents related to showing speech recognition results.
///
/// These constants should not be needed for normal utilization of speech recognition. They
/// would only be called if you wanted to trigger a view of voice search results in your
/// application, or implemented if you wanted to offer a different view for voice search results
/// with your application.
///
/// The standard behavior here for someone receiving an \#ACTION_VOICE_SEARCH_RESULTS is to
/// first retrieve the list of \#EXTRA_VOICE_SEARCH_RESULT_STRINGS, and use any provided
/// HTML for that result in \#EXTRA_VOICE_SEARCH_RESULT_HTML, if available, to display
/// the search results. If that is not available, then the corresponding url for that result in
/// \#EXTRA_VOICE_SEARCH_RESULT_URLS should be used. And if even that is not available,
/// then a search url should be constructed from the actual recognition result string.
class RecognizerResultsIntent extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/speech/RecognizerResultsIntent");
  RecognizerResultsIntent.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_VOICE_SEARCH_RESULTS
  ///
  /// Intent that can be sent by implementations of voice search to display the results of
  /// a search in, for example, a web browser.
  ///
  /// This intent should always be accompanied by at least
  /// \#EXTRA_VOICE_SEARCH_RESULT_STRINGS, and optionally but recommended,
  /// \#EXTRA_VOICE_SEARCH_RESULT_URLS, and sometimes
  /// \#EXTRA_VOICE_SEARCH_RESULT_HTML and
  /// \#EXTRA_VOICE_SEARCH_RESULT_HTML_BASE_URLS.
  ///
  /// These are parallel arrays, where a recognition result string at index N of
  /// \#EXTRA_VOICE_SEARCH_RESULT_STRINGS should be accompanied by a url to use for
  /// searching based on that string at index N of \#EXTRA_VOICE_SEARCH_RESULT_URLS,
  /// and, possibly, the full html to display for that result at index N of
  /// \#EXTRA_VOICE_SEARCH_RESULT_HTML. If full html is provided, a base url (or
  /// list of base urls) should be provided with \#EXTRA_VOICE_SEARCH_RESULT_HTML_BASE_URLS.
  static const ACTION_VOICE_SEARCH_RESULTS =
      "android.speech.action.VOICE_SEARCH_RESULTS";

  /// from: static public final java.lang.String EXTRA_VOICE_SEARCH_RESULT_HTML
  ///
  /// The key to an extra ArrayList of Strings that contains the html content to
  /// use, if available, for the recognition alternates provided in
  /// \#EXTRA_VOICE_SEARCH_RESULT_STRINGS. This list should always be the same size as the
  /// one provided in \#EXTRA_VOICE_SEARCH_RESULT_STRINGS - if a result cannot provide
  /// html, that entry in this list should be <code>null</code>, and the implementor of
  /// \#ACTION_VOICE_SEARCH_RESULTS should back off to the corresponding url provided in
  /// \#EXTRA_VOICE_SEARCH_RESULT_URLS, if available, or else should execute a search of
  /// its own choosing, based on the recognition result string.
  ///
  /// Currently this html content should be expected in the form of a uri with scheme
  /// \#URI_SCHEME_INLINE for the Browser. In the future this may change to a "content://"
  /// uri or some other identifier. Anyone who reads this extra should confirm that a result is
  /// in fact an "inline:" uri and back off to the urls or strings gracefully if it is not, thus
  /// maintaining future backwards compatibility if this changes.
  static const EXTRA_VOICE_SEARCH_RESULT_HTML =
      "android.speech.extras.VOICE_SEARCH_RESULT_HTML";

  /// from: static public final java.lang.String EXTRA_VOICE_SEARCH_RESULT_HTML_BASE_URLS
  ///
  /// The key to an extra ArrayList of Strings that contains the base url to
  /// assume when interpreting html provided in \#EXTRA_VOICE_SEARCH_RESULT_HTML.
  ///
  /// A list of size 1 may be provided to apply the same base url to all html results.
  /// A list of the same size as \#EXTRA_VOICE_SEARCH_RESULT_STRINGS may be provided
  /// to apply different base urls to each different html result in the
  /// \#EXTRA_VOICE_SEARCH_RESULT_HTML list.
  static const EXTRA_VOICE_SEARCH_RESULT_HTML_BASE_URLS =
      "android.speech.extras.VOICE_SEARCH_RESULT_HTML_BASE_URLS";

  /// from: static public final java.lang.String EXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS
  ///
  /// The key to an extra ArrayList of Bundles that contains key/value pairs.
  /// All the values and the keys are Strings. Each key/value pair represents an extra HTTP
  /// header. The keys can't be the standard HTTP headers as they are set by the WebView.
  ///
  /// A list of size 1 may be provided to apply the same HTTP headers to all web results. A
  /// list of the same size as \#EXTRA_VOICE_SEARCH_RESULT_STRINGS may be provided to
  /// apply different HTTP headers to each different web result in the list. These headers will
  /// only be used in the case that the url for a particular web result (from
  /// \#EXTRA_VOICE_SEARCH_RESULT_URLS) is loaded.
  static const EXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS =
      "android.speech.extras.EXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS";

  /// from: static public final java.lang.String EXTRA_VOICE_SEARCH_RESULT_STRINGS
  ///
  /// The key to an extra ArrayList of Strings that contains the list of
  /// recognition alternates from voice search, in order from highest to lowest confidence.
  static const EXTRA_VOICE_SEARCH_RESULT_STRINGS =
      "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS";

  /// from: static public final java.lang.String EXTRA_VOICE_SEARCH_RESULT_URLS
  ///
  /// The key to an extra ArrayList of Strings that contains the search urls
  /// to use, if available, for the recognition alternates provided in
  /// \#EXTRA_VOICE_SEARCH_RESULT_STRINGS. This list should always be the same size as the
  /// one provided in \#EXTRA_VOICE_SEARCH_RESULT_STRINGS - if a result cannot provide a
  /// search url, that entry in this ArrayList should be <code>null</code>, and the implementor of
  /// \#ACTION_VOICE_SEARCH_RESULTS should execute a search of its own choosing,
  /// based on the recognition result string.
  static const EXTRA_VOICE_SEARCH_RESULT_URLS =
      "android.speech.extras.VOICE_SEARCH_RESULT_URLS";

  /// from: static public final java.lang.String URI_SCHEME_INLINE
  ///
  /// The scheme used currently for html content in \#EXTRA_VOICE_SEARCH_RESULT_HTML.
  /// Note that this should only be used in tandem with this particular extra; it should
  /// NOT be used for generic URIs such as those found in the data field of an Intent.
  static const URI_SCHEME_INLINE = "inline";
}
