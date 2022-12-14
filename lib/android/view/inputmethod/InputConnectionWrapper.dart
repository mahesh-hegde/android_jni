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

import "InputConnection.dart" as inputconnection_;

import "ExtractedText.dart" as extractedtext_;

import "ExtractedTextRequest.dart" as extractedtextrequest_;

import "CompletionInfo.dart" as completioninfo_;

import "CorrectionInfo.dart" as correctioninfo_;

import "../KeyEvent.dart" as keyevent_;

import "../../os/Bundle.dart" as bundle_;

import "../../os/Handler.dart" as handler_;

import "InputContentInfo.dart" as inputcontentinfo_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.inputmethod.InputConnectionWrapper
///
/// Wrapper class for proxying calls to another InputConnection.  Subclass and have fun!
class InputConnectionWrapper extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/view/inputmethod/InputConnectionWrapper");
  InputConnectionWrapper.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/inputmethod/InputConnection;Z)V");

  /// from: public void <init>(android.view.inputmethod.InputConnection target, boolean mutable)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Initializes a wrapper.
  ///
  /// __Caveat:__ Although the system can accept {@code (InputConnection) null} in some
  /// places, you cannot emulate such a behavior by non-null InputConnectionWrapper that
  /// has {@code null} in {@code target}.
  ///
  ///@param target the InputConnection to be proxied.
  ///@param mutable set {@code true} to protect this object from being reconfigured to target
  /// another InputConnection.  Note that this is ignored while the target is {@code null}.
  InputConnectionWrapper(inputconnection_.InputConnection target, bool mutable)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [target.reference, mutable]).object);

  static final _id_setTarget = jniAccessors.getMethodIDOf(
      _classRef, "setTarget", "(Landroid/view/inputmethod/InputConnection;)V");

  /// from: public void setTarget(android.view.inputmethod.InputConnection target)
  ///
  /// Change the target of the input connection.
  ///
  /// __Caveat:__ Although the system can accept {@code (InputConnection) null} in some
  /// places, you cannot emulate such a behavior by non-null InputConnectionWrapper that
  /// has {@code null} in {@code target}.
  ///
  ///@param target the InputConnection to be proxied.
  ///@throws SecurityException when this wrapper has non-null target and is immutable.
  void setTarget(inputconnection_.InputConnection target) =>
      jniAccessors.callMethodWithArgs(reference, _id_setTarget,
          jni.JniType.voidType, [target.reference]).check();

  static final _id_getTextBeforeCursor = jniAccessors.getMethodIDOf(
      _classRef, "getTextBeforeCursor", "(II)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getTextBeforeCursor(int n, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  jni.JniObject getTextBeforeCursor(int n, int flags) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getTextBeforeCursor, jni.JniType.objectType, [n, flags]).object);

  static final _id_getTextAfterCursor = jniAccessors.getMethodIDOf(
      _classRef, "getTextAfterCursor", "(II)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getTextAfterCursor(int n, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  jni.JniObject getTextAfterCursor(int n, int flags) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getTextAfterCursor, jni.JniType.objectType, [n, flags]).object);

  static final _id_getSelectedText = jniAccessors.getMethodIDOf(
      _classRef, "getSelectedText", "(I)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getSelectedText(int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  jni.JniObject getSelectedText(int flags) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getSelectedText, jni.JniType.objectType, [flags]).object);

  static final _id_getCursorCapsMode =
      jniAccessors.getMethodIDOf(_classRef, "getCursorCapsMode", "(I)I");

  /// from: public int getCursorCapsMode(int reqModes)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  int getCursorCapsMode(int reqModes) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getCursorCapsMode,
      jni.JniType.intType,
      [reqModes]).integer;

  static final _id_getExtractedText = jniAccessors.getMethodIDOf(
      _classRef,
      "getExtractedText",
      "(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;");

  /// from: public android.view.inputmethod.ExtractedText getExtractedText(android.view.inputmethod.ExtractedTextRequest request, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  extractedtext_.ExtractedText getExtractedText(
          extractedtextrequest_.ExtractedTextRequest request, int flags) =>
      extractedtext_.ExtractedText.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getExtractedText,
          jni.JniType.objectType,
          [request.reference, flags]).object);

  static final _id_deleteSurroundingTextInCodePoints = jniAccessors
      .getMethodIDOf(_classRef, "deleteSurroundingTextInCodePoints", "(II)Z");

  /// from: public boolean deleteSurroundingTextInCodePoints(int beforeLength, int afterLength)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool deleteSurroundingTextInCodePoints(int beforeLength, int afterLength) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_deleteSurroundingTextInCodePoints,
          jni.JniType.booleanType,
          [beforeLength, afterLength]).boolean;

  static final _id_deleteSurroundingText =
      jniAccessors.getMethodIDOf(_classRef, "deleteSurroundingText", "(II)Z");

  /// from: public boolean deleteSurroundingText(int beforeLength, int afterLength)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool deleteSurroundingText(int beforeLength, int afterLength) =>
      jniAccessors.callMethodWithArgs(reference, _id_deleteSurroundingText,
          jni.JniType.booleanType, [beforeLength, afterLength]).boolean;

  static final _id_setComposingText = jniAccessors.getMethodIDOf(
      _classRef, "setComposingText", "(Ljava/lang/CharSequence;I)Z");

  /// from: public boolean setComposingText(java.lang.CharSequence text, int newCursorPosition)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool setComposingText(jni.JniObject text, int newCursorPosition) =>
      jniAccessors.callMethodWithArgs(reference, _id_setComposingText,
          jni.JniType.booleanType, [text.reference, newCursorPosition]).boolean;

  static final _id_setComposingRegion =
      jniAccessors.getMethodIDOf(_classRef, "setComposingRegion", "(II)Z");

  /// from: public boolean setComposingRegion(int start, int end)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool setComposingRegion(int start, int end) =>
      jniAccessors.callMethodWithArgs(reference, _id_setComposingRegion,
          jni.JniType.booleanType, [start, end]).boolean;

  static final _id_finishComposingText =
      jniAccessors.getMethodIDOf(_classRef, "finishComposingText", "()Z");

  /// from: public boolean finishComposingText()
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool finishComposingText() => jniAccessors.callMethodWithArgs(
      reference, _id_finishComposingText, jni.JniType.booleanType, []).boolean;

  static final _id_commitText = jniAccessors.getMethodIDOf(
      _classRef, "commitText", "(Ljava/lang/CharSequence;I)Z");

  /// from: public boolean commitText(java.lang.CharSequence text, int newCursorPosition)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool commitText(jni.JniObject text, int newCursorPosition) =>
      jniAccessors.callMethodWithArgs(reference, _id_commitText,
          jni.JniType.booleanType, [text.reference, newCursorPosition]).boolean;

  static final _id_commitCompletion = jniAccessors.getMethodIDOf(_classRef,
      "commitCompletion", "(Landroid/view/inputmethod/CompletionInfo;)Z");

  /// from: public boolean commitCompletion(android.view.inputmethod.CompletionInfo text)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool commitCompletion(completioninfo_.CompletionInfo text) =>
      jniAccessors.callMethodWithArgs(reference, _id_commitCompletion,
          jni.JniType.booleanType, [text.reference]).boolean;

  static final _id_commitCorrection = jniAccessors.getMethodIDOf(_classRef,
      "commitCorrection", "(Landroid/view/inputmethod/CorrectionInfo;)Z");

  /// from: public boolean commitCorrection(android.view.inputmethod.CorrectionInfo correctionInfo)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool commitCorrection(correctioninfo_.CorrectionInfo correctionInfo) =>
      jniAccessors.callMethodWithArgs(reference, _id_commitCorrection,
          jni.JniType.booleanType, [correctionInfo.reference]).boolean;

  static final _id_setSelection =
      jniAccessors.getMethodIDOf(_classRef, "setSelection", "(II)Z");

  /// from: public boolean setSelection(int start, int end)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool setSelection(int start, int end) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setSelection,
      jni.JniType.booleanType,
      [start, end]).boolean;

  static final _id_performEditorAction =
      jniAccessors.getMethodIDOf(_classRef, "performEditorAction", "(I)Z");

  /// from: public boolean performEditorAction(int editorAction)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool performEditorAction(int editorAction) => jniAccessors.callMethodWithArgs(
      reference,
      _id_performEditorAction,
      jni.JniType.booleanType,
      [editorAction]).boolean;

  static final _id_performContextMenuAction =
      jniAccessors.getMethodIDOf(_classRef, "performContextMenuAction", "(I)Z");

  /// from: public boolean performContextMenuAction(int id)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool performContextMenuAction(int id) => jniAccessors.callMethodWithArgs(
      reference,
      _id_performContextMenuAction,
      jni.JniType.booleanType,
      [id]).boolean;

  static final _id_beginBatchEdit =
      jniAccessors.getMethodIDOf(_classRef, "beginBatchEdit", "()Z");

  /// from: public boolean beginBatchEdit()
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool beginBatchEdit() => jniAccessors.callMethodWithArgs(
      reference, _id_beginBatchEdit, jni.JniType.booleanType, []).boolean;

  static final _id_endBatchEdit =
      jniAccessors.getMethodIDOf(_classRef, "endBatchEdit", "()Z");

  /// from: public boolean endBatchEdit()
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool endBatchEdit() => jniAccessors.callMethodWithArgs(
      reference, _id_endBatchEdit, jni.JniType.booleanType, []).boolean;

  static final _id_sendKeyEvent = jniAccessors.getMethodIDOf(
      _classRef, "sendKeyEvent", "(Landroid/view/KeyEvent;)Z");

  /// from: public boolean sendKeyEvent(android.view.KeyEvent event)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool sendKeyEvent(keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_sendKeyEvent,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_clearMetaKeyStates =
      jniAccessors.getMethodIDOf(_classRef, "clearMetaKeyStates", "(I)Z");

  /// from: public boolean clearMetaKeyStates(int states)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool clearMetaKeyStates(int states) => jniAccessors.callMethodWithArgs(
      reference,
      _id_clearMetaKeyStates,
      jni.JniType.booleanType,
      [states]).boolean;

  static final _id_reportFullscreenMode =
      jniAccessors.getMethodIDOf(_classRef, "reportFullscreenMode", "(Z)Z");

  /// from: public boolean reportFullscreenMode(boolean enabled)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool reportFullscreenMode(bool enabled) => jniAccessors.callMethodWithArgs(
      reference,
      _id_reportFullscreenMode,
      jni.JniType.booleanType,
      [enabled]).boolean;

  static final _id_performPrivateCommand = jniAccessors.getMethodIDOf(_classRef,
      "performPrivateCommand", "(Ljava/lang/String;Landroid/os/Bundle;)Z");

  /// from: public boolean performPrivateCommand(java.lang.String action, android.os.Bundle data)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool performPrivateCommand(jni.JniString action, bundle_.Bundle data) =>
      jniAccessors.callMethodWithArgs(reference, _id_performPrivateCommand,
          jni.JniType.booleanType, [action.reference, data.reference]).boolean;

  static final _id_requestCursorUpdates =
      jniAccessors.getMethodIDOf(_classRef, "requestCursorUpdates", "(I)Z");

  /// from: public boolean requestCursorUpdates(int cursorUpdateMode)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool requestCursorUpdates(int cursorUpdateMode) =>
      jniAccessors.callMethodWithArgs(reference, _id_requestCursorUpdates,
          jni.JniType.booleanType, [cursorUpdateMode]).boolean;

  static final _id_getHandler = jniAccessors.getMethodIDOf(
      _classRef, "getHandler", "()Landroid/os/Handler;");

  /// from: public android.os.Handler getHandler()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  handler_.Handler getHandler() =>
      handler_.Handler.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getHandler, jni.JniType.objectType, []).object);

  static final _id_closeConnection =
      jniAccessors.getMethodIDOf(_classRef, "closeConnection", "()V");

  /// from: public void closeConnection()
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  void closeConnection() => jniAccessors.callMethodWithArgs(
      reference, _id_closeConnection, jni.JniType.voidType, []).check();

  static final _id_commitContent = jniAccessors.getMethodIDOf(
      _classRef,
      "commitContent",
      "(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z");

  /// from: public boolean commitContent(android.view.inputmethod.InputContentInfo inputContentInfo, int flags, android.os.Bundle opts)
  ///
  /// {@inheritDoc}
  ///@throws NullPointerException if the target is {@code null}.
  bool commitContent(inputcontentinfo_.InputContentInfo inputContentInfo,
          int flags, bundle_.Bundle opts) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_commitContent,
          jni.JniType.booleanType,
          [inputContentInfo.reference, flags, opts.reference]).boolean;
}
