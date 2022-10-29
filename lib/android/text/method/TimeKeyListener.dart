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

import "NumberKeyListener.dart" as numberkeylistener_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.method.TimeKeyListener
///
/// For entering times in a text field.
///
///
/// As for all implementations of KeyListener, this class is only concerned
/// with hardware keyboards.  Software input methods have no obligation to trigger
/// the methods in this class.
class TimeKeyListener extends numberkeylistener_.NumberKeyListener {
  static final _classRef =
      jniAccessors.getClassOf("android/text/method/TimeKeyListener");
  TimeKeyListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CHARACTERS =
      jniAccessors.getStaticFieldIDOf(_classRef, "CHARACTERS", "[C");

  /// from: static public final char[] CHARACTERS
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This field used to list the characters that were used. But is now a fixed data
  /// field that is the list of code units used for the deprecated case where the class
  /// is instantiated with null or no input parameter.
  ///@see KeyEvent\#getMatch
  ///@see \#getAcceptedChars
  ///@deprecated Use \#getAcceptedChars() instead.
  static jni.JniObject get CHARACTERS => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_CHARACTERS, jni.JniType.objectType)
      .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use \#TimeKeyListener(Locale) instead.
  TimeKeyListener()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/util/Locale;)V");

  /// from: public void <init>(java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param locale This value may be {@code null}.
  TimeKeyListener.ctor1(jni.JniObject locale)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [locale.reference]).object);

  static final _id_getInputType =
      jniAccessors.getMethodIDOf(_classRef, "getInputType", "()I");

  /// from: public int getInputType()
  int getInputType() => jniAccessors.callMethodWithArgs(
      reference, _id_getInputType, jni.JniType.intType, []).integer;

  static final _id_getAcceptedChars =
      jniAccessors.getMethodIDOf(_classRef, "getAcceptedChars", "()[C");

  /// from: protected char[] getAcceptedChars()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return This value will never be {@code null}.
  jni.JniObject getAcceptedChars() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAcceptedChars, jni.JniType.objectType, []).object);

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "()Landroid/text/method/TimeKeyListener;");

  /// from: static public android.text.method.TimeKeyListener getInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use \#getInstance(Locale) instead.
  ///@return This value will never be {@code null}.
  static TimeKeyListener getInstance() =>
      TimeKeyListener.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getInstance, jni.JniType.objectType, []).object);

  static final _id_getInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Ljava/util/Locale;)Landroid/text/method/TimeKeyListener;");

  /// from: static public android.text.method.TimeKeyListener getInstance(java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an instance of TimeKeyListener appropriate for the given locale.
  ///@param locale This value may be {@code null}.
  ///@return This value will never be {@code null}.
  static TimeKeyListener getInstance1(jni.JniObject locale) =>
      TimeKeyListener.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getInstance1, jni.JniType.objectType, [locale.reference]).object);
}
