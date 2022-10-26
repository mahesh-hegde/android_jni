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

import "Spannable.dart" as spannable_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.SpanWatcher
///
/// When an object of this type is attached to a Spannable, its methods
/// will be called to notify it that other markup objects have been
/// added, changed, or removed.
class SpanWatcher extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/text/SpanWatcher");
  SpanWatcher.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onSpanAdded = jniAccessors.getMethodIDOf(_classRef,
      "onSpanAdded", "(Landroid/text/Spannable;Ljava/lang/Object;II)V");

  /// from: public abstract void onSpanAdded(android.text.Spannable text, java.lang.Object what, int start, int end)
  ///
  /// This method is called to notify you that the specified object
  /// has been attached to the specified range of the text.
  void onSpanAdded(
          spannable_.Spannable text, jni.JniObject what, int start, int end) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onSpanAdded,
          jni.JniType.voidType,
          [text.reference, what.reference, start, end]).check();

  static final _id_onSpanRemoved = jniAccessors.getMethodIDOf(_classRef,
      "onSpanRemoved", "(Landroid/text/Spannable;Ljava/lang/Object;II)V");

  /// from: public abstract void onSpanRemoved(android.text.Spannable text, java.lang.Object what, int start, int end)
  ///
  /// This method is called to notify you that the specified object
  /// has been detached from the specified range of the text.
  void onSpanRemoved(
          spannable_.Spannable text, jni.JniObject what, int start, int end) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onSpanRemoved,
          jni.JniType.voidType,
          [text.reference, what.reference, start, end]).check();

  static final _id_onSpanChanged = jniAccessors.getMethodIDOf(_classRef,
      "onSpanChanged", "(Landroid/text/Spannable;Ljava/lang/Object;IIII)V");

  /// from: public abstract void onSpanChanged(android.text.Spannable text, java.lang.Object what, int ostart, int oend, int nstart, int nend)
  ///
  /// This method is called to notify you that the specified object
  /// has been relocated from the range <code>ostart&hellip;oend</code>
  /// to the new range <code>nstart&hellip;nend</code> of the text.
  void onSpanChanged(spannable_.Spannable text, jni.JniObject what, int ostart,
          int oend, int nstart, int nend) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onSpanChanged,
          jni.JniType.voidType,
          [text.reference, what.reference, ostart, oend, nstart, nend]).check();
}
