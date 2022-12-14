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

import "View.dart" as view_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.ViewDebug
///
/// Various debugging/tracing tools related to View and the view hierarchy.
class ViewDebug extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/view/ViewDebug");
  ViewDebug.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final boolean TRACE_HIERARCHY
  ///
  /// @deprecated This flag is now unused
  static const TRACE_HIERARCHY = false;

  /// from: static public final boolean TRACE_RECYCLER
  ///
  /// @deprecated This flag is now unused
  static const TRACE_RECYCLER = false;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ViewDebug()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_trace = jniAccessors.getStaticMethodIDOf(_classRef, "trace",
      "(Landroid/view/View;Landroid/view/ViewDebug\$RecyclerTraceType;[I)V");

  /// from: static public void trace(android.view.View view, android.view.ViewDebug.RecyclerTraceType type, int[] parameters)
  ///
  /// @deprecated This method is now unused and invoking it is a no-op
  static void trace(view_.View view, ViewDebug_RecyclerTraceType type,
          jni.JniObject parameters) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_trace,
          jni.JniType.voidType,
          [view.reference, type.reference, parameters.reference]).check();

  static final _id_startRecyclerTracing = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "startRecyclerTracing",
      "(Ljava/lang/String;Landroid/view/View;)V");

  /// from: static public void startRecyclerTracing(java.lang.String prefix, android.view.View view)
  ///
  /// @deprecated This method is now unused and invoking it is a no-op
  static void startRecyclerTracing(jni.JniString prefix, view_.View view) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_startRecyclerTracing,
          jni.JniType.voidType, [prefix.reference, view.reference]).check();

  static final _id_stopRecyclerTracing =
      jniAccessors.getStaticMethodIDOf(_classRef, "stopRecyclerTracing", "()V");

  /// from: static public void stopRecyclerTracing()
  ///
  /// @deprecated This method is now unused and invoking it is a no-op
  static void stopRecyclerTracing() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_stopRecyclerTracing, jni.JniType.voidType, []).check();

  static final _id_trace1 = jniAccessors.getStaticMethodIDOf(_classRef, "trace",
      "(Landroid/view/View;Landroid/view/ViewDebug\$HierarchyTraceType;)V");

  /// from: static public void trace(android.view.View view, android.view.ViewDebug.HierarchyTraceType type)
  ///
  /// @deprecated This method is now unused and invoking it is a no-op
  static void trace1(view_.View view, ViewDebug_HierarchyTraceType type) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_trace1,
          jni.JniType.voidType, [view.reference, type.reference]).check();

  static final _id_startHierarchyTracing = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "startHierarchyTracing",
      "(Ljava/lang/String;Landroid/view/View;)V");

  /// from: static public void startHierarchyTracing(java.lang.String prefix, android.view.View view)
  ///
  /// @deprecated This method is now unused and invoking it is a no-op
  static void startHierarchyTracing(jni.JniString prefix, view_.View view) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_startHierarchyTracing,
          jni.JniType.voidType,
          [prefix.reference, view.reference]).check();

  static final _id_stopHierarchyTracing = jniAccessors.getStaticMethodIDOf(
      _classRef, "stopHierarchyTracing", "()V");

  /// from: static public void stopHierarchyTracing()
  ///
  /// @deprecated This method is now unused and invoking it is a no-op
  static void stopHierarchyTracing() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_stopHierarchyTracing, jni.JniType.voidType, []).check();

  static final _id_dumpCapturedView = jniAccessors.getStaticMethodIDOf(
      _classRef, "dumpCapturedView", "(Ljava/lang/String;Ljava/lang/Object;)V");

  /// from: static public void dumpCapturedView(java.lang.String tag, java.lang.Object view)
  ///
  /// Dump view info for id based instrument test generation
  /// (and possibly further data analysis). The results are dumped
  /// to the log.
  ///@param tag for log
  ///@param view for dump
  static void dumpCapturedView(jni.JniString tag, jni.JniObject view) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_dumpCapturedView,
          jni.JniType.voidType, [tag.reference, view.reference]).check();
}

/// from: android.view.ViewDebug$RecyclerTraceType
///
/// @deprecated This enum is now unused
class ViewDebug_RecyclerTraceType extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/ViewDebug\$RecyclerTraceType");
  ViewDebug_RecyclerTraceType.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/view/ViewDebug\$RecyclerTraceType;");

  /// from: static public android.view.ViewDebug.RecyclerTraceType[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "valueOf",
      "(Ljava/lang/String;)Landroid/view/ViewDebug\$RecyclerTraceType;");

  /// from: static public android.view.ViewDebug.RecyclerTraceType valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static ViewDebug_RecyclerTraceType valueOf(jni.JniString name) =>
      ViewDebug_RecyclerTraceType.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_valueOf,
          jni.JniType.objectType,
          [name.reference]).object);
}

/// from: android.view.ViewDebug$HierarchyTraceType
///
/// @deprecated This enum is now unused
class ViewDebug_HierarchyTraceType extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/ViewDebug\$HierarchyTraceType");
  ViewDebug_HierarchyTraceType.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/view/ViewDebug\$HierarchyTraceType;");

  /// from: static public android.view.ViewDebug.HierarchyTraceType[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "valueOf",
      "(Ljava/lang/String;)Landroid/view/ViewDebug\$HierarchyTraceType;");

  /// from: static public android.view.ViewDebug.HierarchyTraceType valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static ViewDebug_HierarchyTraceType valueOf(jni.JniString name) =>
      ViewDebug_HierarchyTraceType.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_valueOf,
              jni.JniType.objectType, [name.reference]).object);
}
