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

import "Preference.dart" as preference_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../graphics/drawable/Drawable.dart" as drawable_;

import "../app/AlertDialog.dart" as alertdialog_;

import "../os/Bundle.dart" as bundle_;

import "../view/View.dart" as view_;

import "../content/DialogInterface.dart" as dialoginterface_;

import "../app/Dialog.dart" as dialog_;

import "../os/Parcelable.dart" as parcelable_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.preference.DialogPreference
///
/// A base class for Preference objects that are
/// dialog-based. These preferences will, when clicked, open a dialog showing the
/// actual preference controls.
///@attr ref android.R.styleable\#DialogPreference_dialogTitle
///@attr ref android.R.styleable\#DialogPreference_dialogMessage
///@attr ref android.R.styleable\#DialogPreference_dialogIcon
///@attr ref android.R.styleable\#DialogPreference_dialogLayout
///@attr ref android.R.styleable\#DialogPreference_positiveButtonText
///@attr ref android.R.styleable\#DialogPreference_negativeButtonText
class DialogPreference extends preference_.Preference {
  static final _classRef =
      jniAccessors.getClassOf("android/preference/DialogPreference");
  DialogPreference.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DialogPreference(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DialogPreference.ctor1(context_.Context context,
      attributeset_.AttributeSet attrs, int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DialogPreference.ctor2(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [context.reference, attrs.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  DialogPreference.ctor3(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [context.reference]).object);

  static final _id_setDialogTitle = jniAccessors.getMethodIDOf(
      _classRef, "setDialogTitle", "(Ljava/lang/CharSequence;)V");

  /// from: public void setDialogTitle(java.lang.CharSequence dialogTitle)
  ///
  /// Sets the title of the dialog. This will be shown on subsequent dialogs.
  ///@param dialogTitle The title.
  void setDialogTitle(jni.JniObject dialogTitle) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDialogTitle,
          jni.JniType.voidType, [dialogTitle.reference]).check();

  static final _id_setDialogTitle1 =
      jniAccessors.getMethodIDOf(_classRef, "setDialogTitle", "(I)V");

  /// from: public void setDialogTitle(int dialogTitleResId)
  ///
  /// @see \#setDialogTitle(CharSequence)
  ///@param dialogTitleResId The dialog title as a resource.
  void setDialogTitle1(int dialogTitleResId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setDialogTitle1,
      jni.JniType.voidType,
      [dialogTitleResId]).check();

  static final _id_getDialogTitle = jniAccessors.getMethodIDOf(
      _classRef, "getDialogTitle", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getDialogTitle()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the title to be shown on subsequent dialogs.
  ///@return The title.
  jni.JniObject getDialogTitle() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDialogTitle, jni.JniType.objectType, []).object);

  static final _id_setDialogMessage = jniAccessors.getMethodIDOf(
      _classRef, "setDialogMessage", "(Ljava/lang/CharSequence;)V");

  /// from: public void setDialogMessage(java.lang.CharSequence dialogMessage)
  ///
  /// Sets the message of the dialog. This will be shown on subsequent dialogs.
  ///
  /// This message forms the content View of the dialog and conflicts with
  /// list-based dialogs, for example. If setting a custom View on a dialog via
  /// \#setDialogLayoutResource(int), include a text View with ID
  /// android.R.id\#message and it will be populated with this message.
  ///@param dialogMessage The message.
  void setDialogMessage(jni.JniObject dialogMessage) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDialogMessage,
          jni.JniType.voidType, [dialogMessage.reference]).check();

  static final _id_setDialogMessage1 =
      jniAccessors.getMethodIDOf(_classRef, "setDialogMessage", "(I)V");

  /// from: public void setDialogMessage(int dialogMessageResId)
  ///
  /// @see \#setDialogMessage(CharSequence)
  ///@param dialogMessageResId The dialog message as a resource.
  void setDialogMessage1(int dialogMessageResId) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDialogMessage1,
          jni.JniType.voidType, [dialogMessageResId]).check();

  static final _id_getDialogMessage = jniAccessors.getMethodIDOf(
      _classRef, "getDialogMessage", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getDialogMessage()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the message to be shown on subsequent dialogs.
  ///@return The message.
  jni.JniObject getDialogMessage() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDialogMessage, jni.JniType.objectType, []).object);

  static final _id_setDialogIcon = jniAccessors.getMethodIDOf(
      _classRef, "setDialogIcon", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setDialogIcon(android.graphics.drawable.Drawable dialogIcon)
  ///
  /// Sets the icon of the dialog. This will be shown on subsequent dialogs.
  ///@param dialogIcon The icon, as a Drawable.
  void setDialogIcon(drawable_.Drawable dialogIcon) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDialogIcon,
          jni.JniType.voidType, [dialogIcon.reference]).check();

  static final _id_setDialogIcon1 =
      jniAccessors.getMethodIDOf(_classRef, "setDialogIcon", "(I)V");

  /// from: public void setDialogIcon(int dialogIconRes)
  ///
  /// Sets the icon (resource ID) of the dialog. This will be shown on
  /// subsequent dialogs.
  ///@param dialogIconRes The icon, as a resource ID.
  void setDialogIcon1(int dialogIconRes) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setDialogIcon1,
      jni.JniType.voidType,
      [dialogIconRes]).check();

  static final _id_getDialogIcon = jniAccessors.getMethodIDOf(
      _classRef, "getDialogIcon", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getDialogIcon()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the icon to be shown on subsequent dialogs.
  ///@return The icon, as a Drawable.
  drawable_.Drawable getDialogIcon() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDialogIcon, jni.JniType.objectType, []).object);

  static final _id_setPositiveButtonText = jniAccessors.getMethodIDOf(
      _classRef, "setPositiveButtonText", "(Ljava/lang/CharSequence;)V");

  /// from: public void setPositiveButtonText(java.lang.CharSequence positiveButtonText)
  ///
  /// Sets the text of the positive button of the dialog. This will be shown on
  /// subsequent dialogs.
  ///@param positiveButtonText The text of the positive button.
  void setPositiveButtonText(jni.JniObject positiveButtonText) =>
      jniAccessors.callMethodWithArgs(reference, _id_setPositiveButtonText,
          jni.JniType.voidType, [positiveButtonText.reference]).check();

  static final _id_setPositiveButtonText1 =
      jniAccessors.getMethodIDOf(_classRef, "setPositiveButtonText", "(I)V");

  /// from: public void setPositiveButtonText(int positiveButtonTextResId)
  ///
  /// @see \#setPositiveButtonText(CharSequence)
  ///@param positiveButtonTextResId The positive button text as a resource.
  void setPositiveButtonText1(int positiveButtonTextResId) =>
      jniAccessors.callMethodWithArgs(reference, _id_setPositiveButtonText1,
          jni.JniType.voidType, [positiveButtonTextResId]).check();

  static final _id_getPositiveButtonText = jniAccessors.getMethodIDOf(
      _classRef, "getPositiveButtonText", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getPositiveButtonText()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the text of the positive button to be shown on subsequent
  /// dialogs.
  ///@return The text of the positive button.
  jni.JniObject getPositiveButtonText() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getPositiveButtonText, jni.JniType.objectType, []).object);

  static final _id_setNegativeButtonText = jniAccessors.getMethodIDOf(
      _classRef, "setNegativeButtonText", "(Ljava/lang/CharSequence;)V");

  /// from: public void setNegativeButtonText(java.lang.CharSequence negativeButtonText)
  ///
  /// Sets the text of the negative button of the dialog. This will be shown on
  /// subsequent dialogs.
  ///@param negativeButtonText The text of the negative button.
  void setNegativeButtonText(jni.JniObject negativeButtonText) =>
      jniAccessors.callMethodWithArgs(reference, _id_setNegativeButtonText,
          jni.JniType.voidType, [negativeButtonText.reference]).check();

  static final _id_setNegativeButtonText1 =
      jniAccessors.getMethodIDOf(_classRef, "setNegativeButtonText", "(I)V");

  /// from: public void setNegativeButtonText(int negativeButtonTextResId)
  ///
  /// @see \#setNegativeButtonText(CharSequence)
  ///@param negativeButtonTextResId The negative button text as a resource.
  void setNegativeButtonText1(int negativeButtonTextResId) =>
      jniAccessors.callMethodWithArgs(reference, _id_setNegativeButtonText1,
          jni.JniType.voidType, [negativeButtonTextResId]).check();

  static final _id_getNegativeButtonText = jniAccessors.getMethodIDOf(
      _classRef, "getNegativeButtonText", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getNegativeButtonText()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the text of the negative button to be shown on subsequent
  /// dialogs.
  ///@return The text of the negative button.
  jni.JniObject getNegativeButtonText() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getNegativeButtonText, jni.JniType.objectType, []).object);

  static final _id_setDialogLayoutResource =
      jniAccessors.getMethodIDOf(_classRef, "setDialogLayoutResource", "(I)V");

  /// from: public void setDialogLayoutResource(int dialogLayoutResId)
  ///
  /// Sets the layout resource that is inflated as the View to be shown
  /// as the content View of subsequent dialogs.
  ///@param dialogLayoutResId The layout resource ID to be inflated.
  ///@see \#setDialogMessage(CharSequence)
  void setDialogLayoutResource(int dialogLayoutResId) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDialogLayoutResource,
          jni.JniType.voidType, [dialogLayoutResId]).check();

  static final _id_getDialogLayoutResource =
      jniAccessors.getMethodIDOf(_classRef, "getDialogLayoutResource", "()I");

  /// from: public int getDialogLayoutResource()
  ///
  /// Returns the layout resource that is used as the content View for
  /// subsequent dialogs.
  ///@return The layout resource.
  int getDialogLayoutResource() => jniAccessors.callMethodWithArgs(
      reference, _id_getDialogLayoutResource, jni.JniType.intType, []).integer;

  static final _id_onPrepareDialogBuilder = jniAccessors.getMethodIDOf(
      _classRef,
      "onPrepareDialogBuilder",
      "(Landroid/app/AlertDialog\$Builder;)V");

  /// from: protected void onPrepareDialogBuilder(android.app.AlertDialog.Builder builder)
  ///
  /// Prepares the dialog builder to be shown when the preference is clicked.
  /// Use this to set custom properties on the dialog.
  ///
  /// Do not AlertDialog.Builder\#create() or
  /// AlertDialog.Builder\#show().
  void onPrepareDialogBuilder(alertdialog_.AlertDialog_Builder builder) =>
      jniAccessors.callMethodWithArgs(reference, _id_onPrepareDialogBuilder,
          jni.JniType.voidType, [builder.reference]).check();

  static final _id_onClick =
      jniAccessors.getMethodIDOf(_classRef, "onClick", "()V");

  /// from: protected void onClick()
  void onClick() => jniAccessors.callMethodWithArgs(
      reference, _id_onClick, jni.JniType.voidType, []).check();

  static final _id_showDialog = jniAccessors.getMethodIDOf(
      _classRef, "showDialog", "(Landroid/os/Bundle;)V");

  /// from: protected void showDialog(android.os.Bundle state)
  ///
  /// Shows the dialog associated with this Preference. This is normally initiated
  /// automatically on clicking on the preference. Call this method if you need to
  /// show the dialog on some other event.
  ///@param state Optional instance state to restore on the dialog
  void showDialog(bundle_.Bundle state) => jniAccessors.callMethodWithArgs(
      reference,
      _id_showDialog,
      jni.JniType.voidType,
      [state.reference]).check();

  static final _id_onCreateDialogView = jniAccessors.getMethodIDOf(
      _classRef, "onCreateDialogView", "()Landroid/view/View;");

  /// from: protected android.view.View onCreateDialogView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates the content view for the dialog (if a custom content view is
  /// required). By default, it inflates the dialog layout resource if it is
  /// set.
  ///@return The content View for the dialog.
  ///@see \#setLayoutResource(int)
  view_.View onCreateDialogView() =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onCreateDialogView, jni.JniType.objectType, []).object);

  static final _id_onBindDialogView = jniAccessors.getMethodIDOf(
      _classRef, "onBindDialogView", "(Landroid/view/View;)V");

  /// from: protected void onBindDialogView(android.view.View view)
  ///
  /// Binds views in the content View of the dialog to data.
  ///
  /// Make sure to call through to the superclass implementation.
  ///
  /// If you override this method you _must_ call through to the
  ///  *            superclass implementation.
  ///@param view The content View of the dialog, if it is custom.
  void onBindDialogView(view_.View view) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onBindDialogView,
      jni.JniType.voidType,
      [view.reference]).check();

  static final _id_onClick1 = jniAccessors.getMethodIDOf(
      _classRef, "onClick", "(Landroid/content/DialogInterface;I)V");

  /// from: public void onClick(android.content.DialogInterface dialog, int which)
  void onClick1(dialoginterface_.DialogInterface dialog, int which) =>
      jniAccessors.callMethodWithArgs(reference, _id_onClick1,
          jni.JniType.voidType, [dialog.reference, which]).check();

  static final _id_onDismiss = jniAccessors.getMethodIDOf(
      _classRef, "onDismiss", "(Landroid/content/DialogInterface;)V");

  /// from: public void onDismiss(android.content.DialogInterface dialog)
  void onDismiss(dialoginterface_.DialogInterface dialog) =>
      jniAccessors.callMethodWithArgs(reference, _id_onDismiss,
          jni.JniType.voidType, [dialog.reference]).check();

  static final _id_onDialogClosed =
      jniAccessors.getMethodIDOf(_classRef, "onDialogClosed", "(Z)V");

  /// from: protected void onDialogClosed(boolean positiveResult)
  ///
  /// Called when the dialog is dismissed and should be used to save data to
  /// the SharedPreferences.
  ///@param positiveResult Whether the positive button was clicked (true), or
  ///            the negative button was clicked or the dialog was canceled (false).
  void onDialogClosed(bool positiveResult) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onDialogClosed,
      jni.JniType.voidType,
      [positiveResult]).check();

  static final _id_getDialog = jniAccessors.getMethodIDOf(
      _classRef, "getDialog", "()Landroid/app/Dialog;");

  /// from: public android.app.Dialog getDialog()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the dialog that is shown by this preference.
  ///@return The dialog, or null if a dialog is not being shown.
  dialog_.Dialog getDialog() =>
      dialog_.Dialog.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDialog, jni.JniType.objectType, []).object);

  static final _id_onActivityDestroy =
      jniAccessors.getMethodIDOf(_classRef, "onActivityDestroy", "()V");

  /// from: public void onActivityDestroy()
  ///
  /// {@inheritDoc}
  void onActivityDestroy() => jniAccessors.callMethodWithArgs(
      reference, _id_onActivityDestroy, jni.JniType.voidType, []).check();

  static final _id_onSaveInstanceState = jniAccessors.getMethodIDOf(
      _classRef, "onSaveInstanceState", "()Landroid/os/Parcelable;");

  /// from: protected android.os.Parcelable onSaveInstanceState()
  /// The returned object must be deleted after use, by calling the `delete` method.
  parcelable_.Parcelable onSaveInstanceState() =>
      parcelable_.Parcelable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onSaveInstanceState, jni.JniType.objectType, []).object);

  static final _id_onRestoreInstanceState = jniAccessors.getMethodIDOf(
      _classRef, "onRestoreInstanceState", "(Landroid/os/Parcelable;)V");

  /// from: protected void onRestoreInstanceState(android.os.Parcelable state)
  void onRestoreInstanceState(parcelable_.Parcelable state) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRestoreInstanceState,
          jni.JniType.voidType, [state.reference]).check();
}
