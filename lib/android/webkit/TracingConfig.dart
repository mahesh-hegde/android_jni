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

/// from: android.webkit.TracingConfig
///
/// Holds tracing configuration information and predefined settings.
class TracingConfig extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/TracingConfig");
  TracingConfig.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int CATEGORIES_ALL
  ///
  /// Predefined set of categories, includes all categories enabled by default in chromium.
  /// Use with caution: this setting may produce large trace output.
  static const CATEGORIES_ALL = 1;

  /// from: static public final int CATEGORIES_ANDROID_WEBVIEW
  ///
  /// Predefined set of categories typically useful for analyzing WebViews.
  /// Typically includes "android_webview" and "Java" categories.
  static const CATEGORIES_ANDROID_WEBVIEW = 2;

  /// from: static public final int CATEGORIES_FRAME_VIEWER
  ///
  /// Predefined set of categories for studying difficult rendering performance problems.
  /// Typically includes "blink", "compositor", "gpu", "renderer.scheduler", "v8" and
  /// some other compositor categories which are disabled by default.
  static const CATEGORIES_FRAME_VIEWER = 64;

  /// from: static public final int CATEGORIES_INPUT_LATENCY
  ///
  /// Predefined set of categories for analyzing input latency issues.
  /// Typically includes "input", "renderer.scheduler" categories.
  static const CATEGORIES_INPUT_LATENCY = 8;

  /// from: static public final int CATEGORIES_JAVASCRIPT_AND_RENDERING
  ///
  /// Predefined set of categories for analyzing javascript and rendering issues.
  /// Typically includes "blink", "compositor", "gpu", "renderer.scheduler" and "v8" categories.
  static const CATEGORIES_JAVASCRIPT_AND_RENDERING = 32;

  /// from: static public final int CATEGORIES_NONE
  ///
  /// Indicates that there are no predefined categories.
  static const CATEGORIES_NONE = 0;

  /// from: static public final int CATEGORIES_RENDERING
  ///
  /// Predefined set of categories for analyzing rendering issues.
  /// Typically includes "blink", "compositor" and "gpu" categories.
  static const CATEGORIES_RENDERING = 16;

  /// from: static public final int CATEGORIES_WEB_DEVELOPER
  ///
  /// Predefined set of categories typically useful for web developers.
  /// Typically includes "blink", "compositor", "renderer.scheduler" and "v8" categories.
  static const CATEGORIES_WEB_DEVELOPER = 4;

  /// from: static public final int RECORD_CONTINUOUSLY
  ///
  /// Record trace events continuously using an internal ring buffer. Default tracing mode.
  ///
  /// Overwrites old events if they exceed buffer capacity. Uses less memory than the
  /// \#RECORD_UNTIL_FULL mode. Depending on the implementation typically allows
  /// up to 64k events to be stored.
  static const RECORD_CONTINUOUSLY = 1;

  /// from: static public final int RECORD_UNTIL_FULL
  ///
  /// Record trace events until the internal tracing buffer is full.
  ///
  /// Typically the buffer memory usage is larger than \#RECORD_CONTINUOUSLY.
  /// Depending on the implementation typically allows up to 256k events to be stored.
  static const RECORD_UNTIL_FULL = 0;

  static final _id_getPredefinedCategories =
      jniAccessors.getMethodIDOf(_classRef, "getPredefinedCategories", "()I");

  /// from: public int getPredefinedCategories()
  ///
  /// Returns a bitmask of the predefined category sets of this configuration.
  ///@return Bitmask of predefined category sets.
  ///
  /// Value is either <code>0</code> or a combination of android.webkit.TracingConfig\#CATEGORIES_NONE, android.webkit.TracingConfig\#CATEGORIES_ALL, android.webkit.TracingConfig\#CATEGORIES_ANDROID_WEBVIEW, android.webkit.TracingConfig\#CATEGORIES_WEB_DEVELOPER, android.webkit.TracingConfig\#CATEGORIES_INPUT_LATENCY, android.webkit.TracingConfig\#CATEGORIES_RENDERING, android.webkit.TracingConfig\#CATEGORIES_JAVASCRIPT_AND_RENDERING, and android.webkit.TracingConfig\#CATEGORIES_FRAME_VIEWER
  int getPredefinedCategories() => jniAccessors.callMethodWithArgs(
      reference, _id_getPredefinedCategories, jni.JniType.intType, []).integer;

  static final _id_getCustomIncludedCategories = jniAccessors.getMethodIDOf(
      _classRef, "getCustomIncludedCategories", "()Ljava/util/List;");

  /// from: public java.util.List<java.lang.String> getCustomIncludedCategories()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the list of included custom category patterns for this configuration.
  ///@return Empty list if no custom category patterns are specified.
  ///
  /// This value will never be {@code null}.
  jni.JniObject getCustomIncludedCategories() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getCustomIncludedCategories, jni.JniType.objectType, []).object);

  static final _id_getTracingMode =
      jniAccessors.getMethodIDOf(_classRef, "getTracingMode", "()I");

  /// from: public int getTracingMode()
  ///
  /// Returns the tracing mode of this configuration.
  ///@return The tracing mode of this configuration.
  ///
  /// Value is android.webkit.TracingConfig\#RECORD_UNTIL_FULL, or android.webkit.TracingConfig\#RECORD_CONTINUOUSLY
  int getTracingMode() => jniAccessors.callMethodWithArgs(
      reference, _id_getTracingMode, jni.JniType.intType, []).integer;
}

/// from: android.webkit.TracingConfig$Builder
///
/// Builder used to create TracingConfig objects.
///
/// Examples:
/// <pre class="prettyprint">
///   // Create a configuration with default options: \#CATEGORIES_NONE,
///   // \#RECORD_CONTINUOUSLY.
///   <code>new TracingConfig.Builder().build()</code>
///
///   // Record trace events from the "web developer" predefined category sets.
///   // Uses a ring buffer (the default \#RECORD_CONTINUOUSLY mode) for
///   // internal storage during tracing.
///   <code>new TracingConfig.Builder().addCategories(CATEGORIES_WEB_DEVELOPER).build()</code>
///
///   // Record trace events from the "rendering" and "input latency" predefined
///   // category sets.
///   <code>new TracingConfig.Builder().addCategories(CATEGORIES_RENDERING,
///                                     CATEGORIES_INPUT_LATENCY).build()</code>
///
///   // Record only the trace events from the "browser" category.
///   <code>new TracingConfig.Builder().addCategories("browser").build()</code>
///
///   // Record only the trace events matching the "blink*" and "renderer*" patterns
///   // (e.g. "blink.animations", "renderer_host" and "renderer.scheduler" categories).
///   <code>new TracingConfig.Builder().addCategories("blink*","renderer*").build()</code>
///
///   // Record events from the "web developer" predefined category set and events from
///   // the "disabled-by-default-v8.gc" category to understand where garbage collection
///   // is being triggered. Uses a limited size buffer for internal storage during tracing.
///   <code>new TracingConfig.Builder().addCategories(CATEGORIES_WEB_DEVELOPER)
///                              .addCategories("disabled-by-default-v8.gc")
///                              .setTracingMode(RECORD_UNTIL_FULL).build()</code>
/// </pre>
class TracingConfig_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/TracingConfig\$Builder");
  TracingConfig_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Default constructor for Builder.
  TracingConfig_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/webkit/TracingConfig;");

  /// from: public android.webkit.TracingConfig build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Build TracingConfig using the current settings.
  ///@return The TracingConfig with the current settings.
  TracingConfig build() =>
      TracingConfig.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);

  static final _id_addCategories = jniAccessors.getMethodIDOf(_classRef,
      "addCategories", "([I)Landroid/webkit/TracingConfig\$Builder;");

  /// from: public android.webkit.TracingConfig.Builder addCategories(int[] predefinedCategories)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds predefined sets of categories to be included in the trace output.
  ///
  /// A predefined category set can be one of \#CATEGORIES_NONE,
  /// \#CATEGORIES_ALL, \#CATEGORIES_ANDROID_WEBVIEW,
  /// \#CATEGORIES_WEB_DEVELOPER, \#CATEGORIES_INPUT_LATENCY,
  /// \#CATEGORIES_RENDERING, \#CATEGORIES_JAVASCRIPT_AND_RENDERING or
  /// \#CATEGORIES_FRAME_VIEWER.
  ///@param predefinedCategories A list or bitmask of predefined category sets.
  /// Value is either <code>0</code> or a combination of android.webkit.TracingConfig\#CATEGORIES_NONE, android.webkit.TracingConfig\#CATEGORIES_ALL, android.webkit.TracingConfig\#CATEGORIES_ANDROID_WEBVIEW, android.webkit.TracingConfig\#CATEGORIES_WEB_DEVELOPER, android.webkit.TracingConfig\#CATEGORIES_INPUT_LATENCY, android.webkit.TracingConfig\#CATEGORIES_RENDERING, android.webkit.TracingConfig\#CATEGORIES_JAVASCRIPT_AND_RENDERING, and android.webkit.TracingConfig\#CATEGORIES_FRAME_VIEWER
  ///@return The builder to facilitate chaining.
  TracingConfig_Builder addCategories(jni.JniObject predefinedCategories) =>
      TracingConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addCategories,
          jni.JniType.objectType,
          [predefinedCategories.reference]).object);

  static final _id_addCategories1 = jniAccessors.getMethodIDOf(
      _classRef,
      "addCategories",
      "([Ljava/lang/String;)Landroid/webkit/TracingConfig\$Builder;");

  /// from: public android.webkit.TracingConfig.Builder addCategories(java.lang.String[] categories)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds custom categories to be included in trace output.
  ///
  /// Note that the categories are defined by the currently-in-use version of WebView. They
  /// live in chromium code and are not part of the Android API.
  /// See <a href="https://www.chromium.org/developers/how-tos/trace-event-profiling-tool">
  /// chromium documentation on tracing</a> for more details.
  ///@param categories A list of category patterns. A category pattern can contain wildcards,
  ///        e.g. "blink*" or full category name e.g. "renderer.scheduler".
  ///@return The builder to facilitate chaining.
  TracingConfig_Builder addCategories1(jni.JniObject categories) =>
      TracingConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addCategories1,
          jni.JniType.objectType,
          [categories.reference]).object);

  static final _id_addCategories2 = jniAccessors.getMethodIDOf(
      _classRef,
      "addCategories",
      "(Ljava/util/Collection;)Landroid/webkit/TracingConfig\$Builder;");

  /// from: public android.webkit.TracingConfig.Builder addCategories(java.util.Collection<java.lang.String> categories)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds custom categories to be included in trace output.
  ///
  /// Same as \#addCategories(String...) but allows to pass a Collection as a parameter.
  ///@param categories A list of category patterns.
  ///@return The builder to facilitate chaining.
  TracingConfig_Builder addCategories2(jni.JniObject categories) =>
      TracingConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addCategories2,
          jni.JniType.objectType,
          [categories.reference]).object);

  static final _id_setTracingMode = jniAccessors.getMethodIDOf(_classRef,
      "setTracingMode", "(I)Landroid/webkit/TracingConfig\$Builder;");

  /// from: public android.webkit.TracingConfig.Builder setTracingMode(int tracingMode)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the tracing mode for this configuration.
  /// When tracingMode is not set explicitly, the default is \#RECORD_CONTINUOUSLY.
  ///@param tracingMode The tracing mode to use, one of \#RECORD_UNTIL_FULL or
  ///                    \#RECORD_CONTINUOUSLY.
  /// Value is android.webkit.TracingConfig\#RECORD_UNTIL_FULL, or android.webkit.TracingConfig\#RECORD_CONTINUOUSLY
  ///@return The builder to facilitate chaining.
  TracingConfig_Builder setTracingMode(int tracingMode) =>
      TracingConfig_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setTracingMode, jni.JniType.objectType, [tracingMode]).object);
}
