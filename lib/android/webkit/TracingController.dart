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

import "TracingConfig.dart" as tracingconfig_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.webkit.TracingController
///
/// Manages tracing of WebViews. In particular provides functionality for the app
/// to enable/disable tracing of parts of code and to collect tracing data.
/// This is useful for profiling performance issues, debugging and memory usage
/// analysis in production and real life scenarios.
///
/// The resulting trace data is sent back as a byte sequence in json format. This
/// file can be loaded in "chrome://tracing" for further analysis.
///
/// Example usage:
/// <pre class="prettyprint">
/// TracingController tracingController = TracingController.getInstance();
/// tracingController.start(new TracingConfig.Builder()
///                  .addCategories(CATEGORIES_WEB_DEVELOPER).build());
/// ...
/// tracingController.stop(new FileOutputStream("trace.json"),
///                        Executors.newSingleThreadExecutor());
/// </pre>
///
class TracingController extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/TracingController");
  TracingController.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  TracingController()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "()Landroid/webkit/TracingController;");

  /// from: static public android.webkit.TracingController getInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the default TracingController instance. At present there is
  /// only one TracingController instance for all WebView instances,
  /// however this restriction may be relaxed in a future Android release.
  ///@return The default TracingController instance.
  ///
  /// This value will never be {@code null}.
  static TracingController getInstance() =>
      TracingController.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getInstance, jni.JniType.objectType, []).object);

  static final _id_start = jniAccessors.getMethodIDOf(
      _classRef, "start", "(Landroid/webkit/TracingConfig;)V");

  /// from: public abstract void start(android.webkit.TracingConfig tracingConfig)
  ///
  /// Starts tracing all webviews. Depending on the trace mode in traceConfig
  /// specifies how the trace events are recorded.
  ///
  /// For tracing modes TracingConfig\#RECORD_UNTIL_FULL and
  /// TracingConfig\#RECORD_CONTINUOUSLY the events are recorded
  /// using an internal buffer and flushed to the outputStream when
  /// \#stop(OutputStream, Executor) is called.
  ///@param tracingConfig Configuration options to use for tracing.
  /// This value must never be {@code null}.
  ///@throws IllegalStateException If the system is already tracing.
  ///@throws IllegalArgumentException If the configuration is invalid (e.g.
  ///         invalid category pattern or invalid tracing mode).
  void start(tracingconfig_.TracingConfig tracingConfig) =>
      jniAccessors.callMethodWithArgs(reference, _id_start,
          jni.JniType.voidType, [tracingConfig.reference]).check();

  static final _id_stop = jniAccessors.getMethodIDOf(_classRef, "stop",
      "(Ljava/io/OutputStream;Ljava/util/concurrent/Executor;)Z");

  /// from: public abstract boolean stop(java.io.OutputStream outputStream, java.util.concurrent.Executor executor)
  ///
  /// Stops tracing and flushes tracing data to the specified outputStream.
  ///
  /// The data is sent to the specified output stream in json format typically
  /// in chunks by invoking java.io.OutputStream\#write(byte[]). On completion
  /// the java.io.OutputStream\#close() method is called.
  ///@param outputStream The output stream the tracing data will be sent to. If null
  ///                     the tracing data will be discarded.
  /// This value may be {@code null}.
  ///@param executor The java.util.concurrent.Executor on which the
  ///        outputStream java.io.OutputStream\#write(byte[]) and
  ///        java.io.OutputStream\#close() methods will be invoked.
  /// This value must never be {@code null}.
  /// Callback and listener events are dispatched through this
  ///  *           Executor, providing an easy way to control which thread is
  ///  *           used. To dispatch events through the main thread of your
  ///  *           application, you can use Context\#getMainExecutor(). To
  ///  *           dispatch events through a shared thread pool, you can use
  ///  *           AsyncTask\#THREAD_POOL_EXECUTOR.
  ///@return False if the WebView framework was not tracing at the time of the call,
  ///         true otherwise.
  bool stop(jni.JniObject outputStream, jni.JniObject executor) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_stop,
          jni.JniType.booleanType,
          [outputStream.reference, executor.reference]).boolean;

  static final _id_isTracing =
      jniAccessors.getMethodIDOf(_classRef, "isTracing", "()Z");

  /// from: public abstract boolean isTracing()
  ///
  /// Returns whether the WebView framework is tracing.
  ///@return True if tracing is enabled.
  bool isTracing() => jniAccessors.callMethodWithArgs(
      reference, _id_isTracing, jni.JniType.booleanType, []).boolean;
}
