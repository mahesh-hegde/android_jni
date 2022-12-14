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

import "../../app/PendingIntent.dart" as pendingintent_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.EasyEditSpan
///
/// Provides an easy way to edit a portion of text.
///
/// The TextView uses this span to allow the user to delete a chuck of text in one click.
///
/// TextView removes the span when the user deletes the whole text or modifies it.
///
/// This span can be also used to receive notification when the user deletes or modifies the text;
class EasyEditSpan extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/EasyEditSpan");
  EasyEditSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String EXTRA_TEXT_CHANGED_TYPE
  ///
  /// The extra key field in the pending intent that describes how the text changed.
  ///@see \#TEXT_DELETED
  ///@see \#TEXT_MODIFIED
  ///@see \#getPendingIntent()
  static const EXTRA_TEXT_CHANGED_TYPE =
      "android.text.style.EXTRA_TEXT_CHANGED_TYPE";

  /// from: static public final int TEXT_DELETED
  ///
  /// The value of \#EXTRA_TEXT_CHANGED_TYPE when the text wrapped by this span is deleted.
  static const TEXT_DELETED = 1;

  /// from: static public final int TEXT_MODIFIED
  ///
  /// The value of \#EXTRA_TEXT_CHANGED_TYPE when the text wrapped by this span is modified.
  static const TEXT_MODIFIED = 2;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates the span. No intent is sent when the wrapped text is modified or
  /// deleted.
  EasyEditSpan()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/app/PendingIntent;)V");

  /// from: public void <init>(android.app.PendingIntent pendingIntent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param pendingIntent The intent will be sent when the wrapped text is deleted or modified.
  ///                      When the pending intent is sent, \#EXTRA_TEXT_CHANGED_TYPE is
  ///                      added in the intent to describe how the text changed.
  EasyEditSpan.ctor1(pendingintent_.PendingIntent pendingIntent)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [pendingIntent.reference]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: public void <init>(android.os.Parcel source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor called from TextUtils to restore the span.
  ///@param source This value must never be {@code null}.
  EasyEditSpan.ctor2(parcel_.Parcel source)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [source.reference]).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// @param dest This value must never be {@code null}.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_getSpanTypeId =
      jniAccessors.getMethodIDOf(_classRef, "getSpanTypeId", "()I");

  /// from: public int getSpanTypeId()
  int getSpanTypeId() => jniAccessors.callMethodWithArgs(
      reference, _id_getSpanTypeId, jni.JniType.intType, []).integer;
}
