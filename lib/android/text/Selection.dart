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

import "Spannable.dart" as spannable_;

import "Layout.dart" as layout_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.Selection
///
/// Utility class for manipulating cursors and selections in CharSequences.
/// A cursor is a selection where the start and end are at the same offset.
class Selection extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/text/Selection");
  Selection.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_SELECTION_END = jniAccessors.getStaticFieldIDOf(
      _classRef, "SELECTION_END", "Ljava/lang/Object;");

  /// from: static public final java.lang.Object SELECTION_END
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get SELECTION_END => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_SELECTION_END, jni.JniType.objectType)
      .object);

  static final _id_SELECTION_START = jniAccessors.getStaticFieldIDOf(
      _classRef, "SELECTION_START", "Ljava/lang/Object;");

  /// from: static public final java.lang.Object SELECTION_START
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get SELECTION_START => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_SELECTION_START, jni.JniType.objectType)
      .object);

  static final _id_getSelectionStart = jniAccessors.getStaticMethodIDOf(
      _classRef, "getSelectionStart", "(Ljava/lang/CharSequence;)I");

  /// from: static public final int getSelectionStart(java.lang.CharSequence text)
  ///
  /// Return the offset of the selection anchor or cursor, or -1 if
  /// there is no selection or cursor.
  static int getSelectionStart(jni.JniObject text) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getSelectionStart,
          jni.JniType.intType, [text.reference]).integer;

  static final _id_getSelectionEnd = jniAccessors.getStaticMethodIDOf(
      _classRef, "getSelectionEnd", "(Ljava/lang/CharSequence;)I");

  /// from: static public final int getSelectionEnd(java.lang.CharSequence text)
  ///
  /// Return the offset of the selection edge or cursor, or -1 if
  /// there is no selection or cursor.
  static int getSelectionEnd(jni.JniObject text) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getSelectionEnd,
          jni.JniType.intType, [text.reference]).integer;

  static final _id_setSelection = jniAccessors.getStaticMethodIDOf(
      _classRef, "setSelection", "(Landroid/text/Spannable;II)V");

  /// from: static public void setSelection(android.text.Spannable text, int start, int stop)
  ///
  /// Set the selection anchor to <code>start</code> and the selection edge
  /// to <code>stop</code>.
  static void setSelection(spannable_.Spannable text, int start, int stop) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_setSelection,
          jni.JniType.voidType, [text.reference, start, stop]).check();

  static final _id_setSelection1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "setSelection", "(Landroid/text/Spannable;I)V");

  /// from: static public final void setSelection(android.text.Spannable text, int index)
  ///
  /// Move the cursor to offset <code>index</code>.
  static void setSelection1(spannable_.Spannable text, int index) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_setSelection1,
          jni.JniType.voidType, [text.reference, index]).check();

  static final _id_selectAll = jniAccessors.getStaticMethodIDOf(
      _classRef, "selectAll", "(Landroid/text/Spannable;)V");

  /// from: static public final void selectAll(android.text.Spannable text)
  ///
  /// Select the entire text.
  static void selectAll(spannable_.Spannable text) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_selectAll,
          jni.JniType.voidType, [text.reference]).check();

  static final _id_extendSelection = jniAccessors.getStaticMethodIDOf(
      _classRef, "extendSelection", "(Landroid/text/Spannable;I)V");

  /// from: static public final void extendSelection(android.text.Spannable text, int index)
  ///
  /// Move the selection edge to offset <code>index</code>.
  static void extendSelection(spannable_.Spannable text, int index) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_extendSelection,
          jni.JniType.voidType, [text.reference, index]).check();

  static final _id_removeSelection = jniAccessors.getStaticMethodIDOf(
      _classRef, "removeSelection", "(Landroid/text/Spannable;)V");

  /// from: static public final void removeSelection(android.text.Spannable text)
  ///
  /// Remove the selection or cursor, if any, from the text.
  static void removeSelection(spannable_.Spannable text) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_removeSelection,
          jni.JniType.voidType, [text.reference]).check();

  static final _id_moveUp = jniAccessors.getStaticMethodIDOf(
      _classRef, "moveUp", "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean moveUp(android.text.Spannable text, android.text.Layout layout)
  ///
  /// Move the cursor to the buffer offset physically above the current
  /// offset, to the beginning if it is on the top line but not at the
  /// start, or return false if the cursor is already on the top line.
  static bool moveUp(spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_moveUp,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_moveDown = jniAccessors.getStaticMethodIDOf(_classRef,
      "moveDown", "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean moveDown(android.text.Spannable text, android.text.Layout layout)
  ///
  /// Move the cursor to the buffer offset physically below the current
  /// offset, to the end of the buffer if it is on the bottom line but
  /// not at the end, or return false if the cursor is already at the
  /// end of the buffer.
  static bool moveDown(spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_moveDown,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_moveLeft = jniAccessors.getStaticMethodIDOf(_classRef,
      "moveLeft", "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean moveLeft(android.text.Spannable text, android.text.Layout layout)
  ///
  /// Move the cursor to the buffer offset physically to the left of
  /// the current offset, or return false if the cursor is already
  /// at the left edge of the line and there is not another line to move it to.
  static bool moveLeft(spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_moveLeft,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_moveRight = jniAccessors.getStaticMethodIDOf(_classRef,
      "moveRight", "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean moveRight(android.text.Spannable text, android.text.Layout layout)
  ///
  /// Move the cursor to the buffer offset physically to the right of
  /// the current offset, or return false if the cursor is already at
  /// at the right edge of the line and there is not another line
  /// to move it to.
  static bool moveRight(spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_moveRight,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_extendUp = jniAccessors.getStaticMethodIDOf(_classRef,
      "extendUp", "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean extendUp(android.text.Spannable text, android.text.Layout layout)
  ///
  /// Move the selection end to the buffer offset physically above
  /// the current selection end.
  static bool extendUp(spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_extendUp,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_extendDown = jniAccessors.getStaticMethodIDOf(_classRef,
      "extendDown", "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean extendDown(android.text.Spannable text, android.text.Layout layout)
  ///
  /// Move the selection end to the buffer offset physically below
  /// the current selection end.
  static bool extendDown(spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_extendDown,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_extendLeft = jniAccessors.getStaticMethodIDOf(_classRef,
      "extendLeft", "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean extendLeft(android.text.Spannable text, android.text.Layout layout)
  ///
  /// Move the selection end to the buffer offset physically to the left of
  /// the current selection end.
  static bool extendLeft(spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_extendLeft,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_extendRight = jniAccessors.getStaticMethodIDOf(_classRef,
      "extendRight", "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean extendRight(android.text.Spannable text, android.text.Layout layout)
  ///
  /// Move the selection end to the buffer offset physically to the right of
  /// the current selection end.
  static bool extendRight(spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_extendRight,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_extendToLeftEdge = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "extendToLeftEdge",
      "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean extendToLeftEdge(android.text.Spannable text, android.text.Layout layout)
  static bool extendToLeftEdge(
          spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_extendToLeftEdge,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_extendToRightEdge = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "extendToRightEdge",
      "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean extendToRightEdge(android.text.Spannable text, android.text.Layout layout)
  static bool extendToRightEdge(
          spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_extendToRightEdge,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_moveToLeftEdge = jniAccessors.getStaticMethodIDOf(_classRef,
      "moveToLeftEdge", "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean moveToLeftEdge(android.text.Spannable text, android.text.Layout layout)
  static bool moveToLeftEdge(
          spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_moveToLeftEdge,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;

  static final _id_moveToRightEdge = jniAccessors.getStaticMethodIDOf(_classRef,
      "moveToRightEdge", "(Landroid/text/Spannable;Landroid/text/Layout;)Z");

  /// from: static public boolean moveToRightEdge(android.text.Spannable text, android.text.Layout layout)
  static bool moveToRightEdge(
          spannable_.Spannable text, layout_.Layout layout) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_moveToRightEdge,
          jni.JniType.booleanType, [text.reference, layout.reference]).boolean;
}
