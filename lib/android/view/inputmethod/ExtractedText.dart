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

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.inputmethod.ExtractedText
///
/// Information about text that has been extracted for use by an input method.
///
/// This contains information about a portion of the currently edited text,
/// that the IME should display into its own interface while in extracted mode.
class ExtractedText extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/inputmethod/ExtractedText");
  ExtractedText.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.inputmethod.ExtractedText> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Used to make this class parcelable.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int FLAG_SELECTING
  ///
  /// Bit for \#flags: set if the editor is currently in selection mode.
  ///
  /// This happens when a hardware keyboard with latched keys is attached and
  /// the shift key is currently latched.
  static const FLAG_SELECTING = 2;

  /// from: static public final int FLAG_SINGLE_LINE
  ///
  /// Bit for \#flags: set if the text being edited can only be on
  /// a single line.
  static const FLAG_SINGLE_LINE = 1;

  static final _id_flags = jniAccessors.getFieldIDOf(_classRef, "flags", "I");

  /// from: public int flags
  ///
  /// Additional bit flags of information about the edited text.
  int get flags =>
      jniAccessors.getField(reference, _id_flags, jni.JniType.intType).integer;

  /// from: public int flags
  ///
  /// Additional bit flags of information about the edited text.
  set flags(int value) => jniEnv.SetIntField(reference, _id_flags, value);

  static final _id_hint =
      jniAccessors.getFieldIDOf(_classRef, "hint", "Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence hint
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The hint that has been extracted.
  ///@see android.widget.TextView\#getHint()
  jni.JniObject get hint => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_hint, jni.JniType.objectType)
      .object);

  /// from: public java.lang.CharSequence hint
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The hint that has been extracted.
  ///@see android.widget.TextView\#getHint()
  set hint(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_hint, value.reference);

  static final _id_partialEndOffset =
      jniAccessors.getFieldIDOf(_classRef, "partialEndOffset", "I");

  /// from: public int partialEndOffset
  ///
  /// If the content is a report of a partial text change, this is the offset
  /// where the change ends.  Note that the actual text may be larger or
  /// smaller than the difference between this and \#partialStartOffset,
  /// meaning a reduction or increase, respectively, in the total text.
  int get partialEndOffset => jniAccessors
      .getField(reference, _id_partialEndOffset, jni.JniType.intType)
      .integer;

  /// from: public int partialEndOffset
  ///
  /// If the content is a report of a partial text change, this is the offset
  /// where the change ends.  Note that the actual text may be larger or
  /// smaller than the difference between this and \#partialStartOffset,
  /// meaning a reduction or increase, respectively, in the total text.
  set partialEndOffset(int value) =>
      jniEnv.SetIntField(reference, _id_partialEndOffset, value);

  static final _id_partialStartOffset =
      jniAccessors.getFieldIDOf(_classRef, "partialStartOffset", "I");

  /// from: public int partialStartOffset
  ///
  /// If the content is a report of a partial text change, this is the
  /// offset where the change starts and it runs until
  /// \#partialEndOffset.  If the content is the full text, this
  /// field is -1.
  int get partialStartOffset => jniAccessors
      .getField(reference, _id_partialStartOffset, jni.JniType.intType)
      .integer;

  /// from: public int partialStartOffset
  ///
  /// If the content is a report of a partial text change, this is the
  /// offset where the change starts and it runs until
  /// \#partialEndOffset.  If the content is the full text, this
  /// field is -1.
  set partialStartOffset(int value) =>
      jniEnv.SetIntField(reference, _id_partialStartOffset, value);

  static final _id_selectionEnd =
      jniAccessors.getFieldIDOf(_classRef, "selectionEnd", "I");

  /// from: public int selectionEnd
  ///
  /// The offset where the selection currently ends within the extracted
  /// text.  The real selection end position is at
  /// <var>startOffset</var>+<var>selectionEnd</var>.
  int get selectionEnd => jniAccessors
      .getField(reference, _id_selectionEnd, jni.JniType.intType)
      .integer;

  /// from: public int selectionEnd
  ///
  /// The offset where the selection currently ends within the extracted
  /// text.  The real selection end position is at
  /// <var>startOffset</var>+<var>selectionEnd</var>.
  set selectionEnd(int value) =>
      jniEnv.SetIntField(reference, _id_selectionEnd, value);

  static final _id_selectionStart =
      jniAccessors.getFieldIDOf(_classRef, "selectionStart", "I");

  /// from: public int selectionStart
  ///
  /// The offset where the selection currently starts within the extracted
  /// text.  The real selection start position is at
  /// <var>startOffset</var>+<var>selectionStart</var>.
  int get selectionStart => jniAccessors
      .getField(reference, _id_selectionStart, jni.JniType.intType)
      .integer;

  /// from: public int selectionStart
  ///
  /// The offset where the selection currently starts within the extracted
  /// text.  The real selection start position is at
  /// <var>startOffset</var>+<var>selectionStart</var>.
  set selectionStart(int value) =>
      jniEnv.SetIntField(reference, _id_selectionStart, value);

  static final _id_startOffset =
      jniAccessors.getFieldIDOf(_classRef, "startOffset", "I");

  /// from: public int startOffset
  ///
  /// The offset in the overall text at which the extracted text starts.
  int get startOffset => jniAccessors
      .getField(reference, _id_startOffset, jni.JniType.intType)
      .integer;

  /// from: public int startOffset
  ///
  /// The offset in the overall text at which the extracted text starts.
  set startOffset(int value) =>
      jniEnv.SetIntField(reference, _id_startOffset, value);

  static final _id_text =
      jniAccessors.getFieldIDOf(_classRef, "text", "Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence text
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The text that has been extracted.
  ///@see android.widget.TextView\#getText()
  jni.JniObject get text => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_text, jni.JniType.objectType)
      .object);

  /// from: public java.lang.CharSequence text
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The text that has been extracted.
  ///@see android.widget.TextView\#getText()
  set text(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_text, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ExtractedText()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Used to package this object into a Parcel.
  ///@param dest The Parcel to be written.
  ///@param flags The flags used for parceling.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;
}
