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

import "../view/KeyEvent.dart" as keyevent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.DialogInterface
///
/// Interface that defines a dialog-type class that can be shown, dismissed, or
/// canceled, and may have buttons that can be clicked.
class DialogInterface extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/DialogInterface");
  DialogInterface.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int BUTTON1
  ///
  /// @deprecated Use \#BUTTON_POSITIVE
  static const BUTTON1 = -1;

  /// from: static public final int BUTTON2
  ///
  /// @deprecated Use \#BUTTON_NEGATIVE
  static const BUTTON2 = -2;

  /// from: static public final int BUTTON3
  ///
  /// @deprecated Use \#BUTTON_NEUTRAL
  static const BUTTON3 = -3;

  /// from: static public final int BUTTON_NEGATIVE
  ///
  /// The identifier for the negative button.
  static const BUTTON_NEGATIVE = -2;

  /// from: static public final int BUTTON_NEUTRAL
  ///
  /// The identifier for the neutral button.
  static const BUTTON_NEUTRAL = -3;

  /// from: static public final int BUTTON_POSITIVE
  ///
  /// The identifier for the positive button.
  static const BUTTON_POSITIVE = -1;

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public abstract void cancel()
  ///
  /// Cancels the dialog, invoking the OnCancelListener.
  ///
  /// The OnDismissListener may also be called if cancellation
  /// dismisses the dialog.
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();

  static final _id_dismiss =
      jniAccessors.getMethodIDOf(_classRef, "dismiss", "()V");

  /// from: public abstract void dismiss()
  ///
  /// Dismisses the dialog, invoking the OnDismissListener.
  void dismiss() => jniAccessors.callMethodWithArgs(
      reference, _id_dismiss, jni.JniType.voidType, []).check();
}

/// from: android.content.DialogInterface$OnShowListener
///
/// Interface used to allow the creator of a dialog to run some code when the
/// dialog is shown.
class DialogInterface_OnShowListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/content/DialogInterface\$OnShowListener");
  DialogInterface_OnShowListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onShow = jniAccessors.getMethodIDOf(
      _classRef, "onShow", "(Landroid/content/DialogInterface;)V");

  /// from: public abstract void onShow(android.content.DialogInterface dialog)
  ///
  /// This method will be invoked when the dialog is shown.
  ///@param dialog the dialog that was shown will be passed into the
  ///               method
  void onShow(DialogInterface dialog) => jniAccessors.callMethodWithArgs(
      reference, _id_onShow, jni.JniType.voidType, [dialog.reference]).check();
}

/// from: android.content.DialogInterface$OnMultiChoiceClickListener
///
/// Interface used to allow the creator of a dialog to run some code when an
/// item in a multi-choice dialog is clicked.
class DialogInterface_OnMultiChoiceClickListener extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/content/DialogInterface\$OnMultiChoiceClickListener");
  DialogInterface_OnMultiChoiceClickListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onClick = jniAccessors.getMethodIDOf(
      _classRef, "onClick", "(Landroid/content/DialogInterface;IZ)V");

  /// from: public abstract void onClick(android.content.DialogInterface dialog, int which, boolean isChecked)
  ///
  /// This method will be invoked when an item in the dialog is clicked.
  ///@param dialog the dialog where the selection was made
  ///@param which the position of the item in the list that was clicked
  ///@param isChecked {@code true} if the click checked the item, else
  ///                  {@code false}
  void onClick(DialogInterface dialog, int which, bool isChecked) =>
      jniAccessors.callMethodWithArgs(reference, _id_onClick,
          jni.JniType.voidType, [dialog.reference, which, isChecked]).check();
}

/// from: android.content.DialogInterface$OnKeyListener
///
/// Interface definition for a callback to be invoked when a key event is
/// dispatched to this dialog. The callback will be invoked before the key
/// event is given to the dialog.
class DialogInterface_OnKeyListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/DialogInterface\$OnKeyListener");
  DialogInterface_OnKeyListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onKey = jniAccessors.getMethodIDOf(_classRef, "onKey",
      "(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z");

  /// from: public abstract boolean onKey(android.content.DialogInterface dialog, int keyCode, android.view.KeyEvent event)
  ///
  /// Called when a key is dispatched to a dialog. This allows listeners to
  /// get a chance to respond before the dialog.
  ///@param dialog the dialog the key has been dispatched to
  ///@param keyCode the code for the physical key that was pressed
  ///@param event the KeyEvent object containing full information about
  ///              the event
  ///@return {@code true} if the listener has consumed the event,
  ///         {@code false} otherwise
  bool onKey(DialogInterface dialog, int keyCode, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onKey,
          jni.JniType.booleanType,
          [dialog.reference, keyCode, event.reference]).boolean;
}

/// from: android.content.DialogInterface$OnDismissListener
///
/// Interface used to allow the creator of a dialog to run some code when the
/// dialog is dismissed.
class DialogInterface_OnDismissListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/content/DialogInterface\$OnDismissListener");
  DialogInterface_OnDismissListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onDismiss = jniAccessors.getMethodIDOf(
      _classRef, "onDismiss", "(Landroid/content/DialogInterface;)V");

  /// from: public abstract void onDismiss(android.content.DialogInterface dialog)
  ///
  /// This method will be invoked when the dialog is dismissed.
  ///@param dialog the dialog that was dismissed will be passed into the
  ///               method
  void onDismiss(DialogInterface dialog) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onDismiss,
      jni.JniType.voidType,
      [dialog.reference]).check();
}

/// from: android.content.DialogInterface$OnClickListener
///
/// Interface used to allow the creator of a dialog to run some code when an
/// item on the dialog is clicked.
class DialogInterface_OnClickListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/content/DialogInterface\$OnClickListener");
  DialogInterface_OnClickListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onClick = jniAccessors.getMethodIDOf(
      _classRef, "onClick", "(Landroid/content/DialogInterface;I)V");

  /// from: public abstract void onClick(android.content.DialogInterface dialog, int which)
  ///
  /// This method will be invoked when a button in the dialog is clicked.
  ///@param dialog the dialog that received the click
  ///@param which the button that was clicked (ex.
  ///              DialogInterface\#BUTTON_POSITIVE) or the position
  ///              of the item clicked
  void onClick(DialogInterface dialog, int which) =>
      jniAccessors.callMethodWithArgs(reference, _id_onClick,
          jni.JniType.voidType, [dialog.reference, which]).check();
}

/// from: android.content.DialogInterface$OnCancelListener
///
/// Interface used to allow the creator of a dialog to run some code when the
/// dialog is canceled.
///
/// This will only be called when the dialog is canceled, if the creator
/// needs to know when it is dismissed in general, use
/// DialogInterface.OnDismissListener.
class DialogInterface_OnCancelListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/content/DialogInterface\$OnCancelListener");
  DialogInterface_OnCancelListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onCancel = jniAccessors.getMethodIDOf(
      _classRef, "onCancel", "(Landroid/content/DialogInterface;)V");

  /// from: public abstract void onCancel(android.content.DialogInterface dialog)
  ///
  /// This method will be invoked when the dialog is canceled.
  ///@param dialog the dialog that was canceled will be passed into the
  ///               method
  void onCancel(DialogInterface dialog) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onCancel,
      jni.JniType.voidType,
      [dialog.reference]).check();
}
