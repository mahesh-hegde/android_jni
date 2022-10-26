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

import "Editable.dart" as editable_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.TextWatcher
///
/// When an object of a type is attached to an Editable, its methods will
/// be called when the text is changed.
class TextWatcher extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/text/TextWatcher");
  TextWatcher.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_beforeTextChanged = jniAccessors.getMethodIDOf(
      _classRef, "beforeTextChanged", "(Ljava/lang/CharSequence;III)V");

  /// from: public abstract void beforeTextChanged(java.lang.CharSequence s, int start, int count, int after)
  ///
  /// This method is called to notify you that, within <code>s</code>,
  /// the <code>count</code> characters beginning at <code>start</code>
  /// are about to be replaced by new text with length <code>after</code>.
  /// It is an error to attempt to make changes to <code>s</code> from
  /// this callback.
  void beforeTextChanged(jni.JniObject s, int start, int count, int after) =>
      jniAccessors.callMethodWithArgs(reference, _id_beforeTextChanged,
          jni.JniType.voidType, [s.reference, start, count, after]).check();

  static final _id_onTextChanged = jniAccessors.getMethodIDOf(
      _classRef, "onTextChanged", "(Ljava/lang/CharSequence;III)V");

  /// from: public abstract void onTextChanged(java.lang.CharSequence s, int start, int before, int count)
  ///
  /// This method is called to notify you that, within <code>s</code>,
  /// the <code>count</code> characters beginning at <code>start</code>
  /// have just replaced old text that had length <code>before</code>.
  /// It is an error to attempt to make changes to <code>s</code> from
  /// this callback.
  void onTextChanged(jni.JniObject s, int start, int before, int count) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTextChanged,
          jni.JniType.voidType, [s.reference, start, before, count]).check();

  static final _id_afterTextChanged = jniAccessors.getMethodIDOf(
      _classRef, "afterTextChanged", "(Landroid/text/Editable;)V");

  /// from: public abstract void afterTextChanged(android.text.Editable s)
  ///
  /// This method is called to notify you that, somewhere within
  /// <code>s</code>, the text has been changed.
  /// It is legitimate to make further changes to <code>s</code> from
  /// this callback, but be careful not to get yourself into an infinite
  /// loop, because any changes you make will cause this method to be
  /// called again recursively.
  /// (You are not told where the change took place because other
  /// afterTextChanged() methods may already have made other changes
  /// and invalidated the offsets.  But if you need to know here,
  /// you can use Spannable\#setSpan in \#onTextChanged
  /// to mark your place and then look up from here where the span
  /// ended up.
  void afterTextChanged(editable_.Editable s) =>
      jniAccessors.callMethodWithArgs(reference, _id_afterTextChanged,
          jni.JniType.voidType, [s.reference]).check();
}
