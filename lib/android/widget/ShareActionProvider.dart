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

import "../view/ActionProvider.dart" as actionprovider_;

import "../content/Context.dart" as context_;

import "../view/View.dart" as view_;

import "../view/SubMenu.dart" as submenu_;

import "../content/Intent.dart" as intent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.ShareActionProvider
///
/// This is a provider for a share action. It is responsible for creating views
/// that enable data sharing and also to show a sub menu with sharing activities
/// if the hosting item is placed on the overflow menu.
///
/// Here is how to use the action provider with custom backing file in a MenuItem:
///
///
/// <pre>
/// // In Activity\#onCreateOptionsMenu
/// public boolean onCreateOptionsMenu(Menu menu) {
///     // Get the menu item.
///     MenuItem menuItem = menu.findItem(R.id.my_menu_item);
///     // Get the provider and hold onto it to set/change the share intent.
///     mShareActionProvider = (ShareActionProvider) menuItem.getActionProvider();
///     // Set history different from the default before getting the action
///     // view since a call to MenuItem\#getActionView() MenuItem.getActionView() calls
///     // ActionProvider\#onCreateActionView() which uses the backing file name. Omit this
///     // line if using the default share history file is desired.
///     mShareActionProvider.setShareHistoryFileName("custom_share_history.xml");
///     . . .
/// }
///
/// // Somewhere in the application.
/// public void doShare(Intent shareIntent) {
///     // When you want to share set the share intent.
///     mShareActionProvider.setShareIntent(shareIntent);
/// }</pre>
///
/// <strong>Note:</strong> While the sample snippet demonstrates how to use this provider
/// in the context of a menu item, the use of the provider is not limited to menu items.
///
///
///@see ActionProvider
class ShareActionProvider extends actionprovider_.ActionProvider {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/ShareActionProvider");
  ShareActionProvider.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String DEFAULT_SHARE_HISTORY_FILE_NAME
  ///
  /// The default name for storing share history.
  static const DEFAULT_SHARE_HISTORY_FILE_NAME = "share_history.xml";

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new instance.
  ///@param context Context for accessing resources.
  ShareActionProvider(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_setOnShareTargetSelectedListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnShareTargetSelectedListener",
      "(Landroid/widget/ShareActionProvider\$OnShareTargetSelectedListener;)V");

  /// from: public void setOnShareTargetSelectedListener(android.widget.ShareActionProvider.OnShareTargetSelectedListener listener)
  ///
  /// Sets a listener to be notified when a share target has been selected.
  /// The listener can optionally decide to handle the selection and
  /// not rely on the default behavior which is to launch the activity.
  ///
  /// <strong>Note:</strong> If you choose the backing share history file
  ///     you will still be notified in this callback.
  ///
  ///
  ///@param listener The listener.
  void setOnShareTargetSelectedListener(
          ShareActionProvider_OnShareTargetSelectedListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setOnShareTargetSelectedListener,
          jni.JniType.voidType,
          [listener.reference]).check();

  static final _id_onCreateActionView = jniAccessors.getMethodIDOf(
      _classRef, "onCreateActionView", "()Landroid/view/View;");

  /// from: public android.view.View onCreateActionView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  view_.View onCreateActionView() =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onCreateActionView, jni.JniType.objectType, []).object);

  static final _id_hasSubMenu =
      jniAccessors.getMethodIDOf(_classRef, "hasSubMenu", "()Z");

  /// from: public boolean hasSubMenu()
  ///
  /// {@inheritDoc}
  bool hasSubMenu() => jniAccessors.callMethodWithArgs(
      reference, _id_hasSubMenu, jni.JniType.booleanType, []).boolean;

  static final _id_onPrepareSubMenu = jniAccessors.getMethodIDOf(
      _classRef, "onPrepareSubMenu", "(Landroid/view/SubMenu;)V");

  /// from: public void onPrepareSubMenu(android.view.SubMenu subMenu)
  ///
  /// {@inheritDoc}
  void onPrepareSubMenu(submenu_.SubMenu subMenu) =>
      jniAccessors.callMethodWithArgs(reference, _id_onPrepareSubMenu,
          jni.JniType.voidType, [subMenu.reference]).check();

  static final _id_setShareHistoryFileName = jniAccessors.getMethodIDOf(
      _classRef, "setShareHistoryFileName", "(Ljava/lang/String;)V");

  /// from: public void setShareHistoryFileName(java.lang.String shareHistoryFile)
  ///
  /// Sets the file name of a file for persisting the share history which
  /// history will be used for ordering share targets. This file will be used
  /// for all view created by \#onCreateActionView(). Defaults to
  /// \#DEFAULT_SHARE_HISTORY_FILE_NAME. Set to <code>null</code>
  /// if share history should not be persisted between sessions.
  ///
  /// <strong>Note:</strong> The history file name can be set any time, however
  /// only the action views created by \#onCreateActionView() after setting
  /// the file name will be backed by the provided file. Therefore, if you want to
  /// use different history files for sharing specific types of content, every time
  /// you change the history file \#setShareHistoryFileName(String) you must
  /// call android.app.Activity\#invalidateOptionsMenu() to recreate the
  /// action view. You should <strong>not</strong> call
  /// android.app.Activity\#invalidateOptionsMenu() from
  /// android.app.Activity\#onCreateOptionsMenu(Menu).
  ///
  ///
  /// <pre>
  /// private void doShare(Intent intent) {
  ///     if (IMAGE.equals(intent.getMimeType())) {
  ///         mShareActionProvider.setHistoryFileName(SHARE_IMAGE_HISTORY_FILE_NAME);
  ///     } else if (TEXT.equals(intent.getMimeType())) {
  ///         mShareActionProvider.setHistoryFileName(SHARE_TEXT_HISTORY_FILE_NAME);
  ///     }
  ///     mShareActionProvider.setIntent(intent);
  ///     invalidateOptionsMenu();
  /// }</pre>
  ///@param shareHistoryFile The share history file name.
  void setShareHistoryFileName(jni.JniString shareHistoryFile) =>
      jniAccessors.callMethodWithArgs(reference, _id_setShareHistoryFileName,
          jni.JniType.voidType, [shareHistoryFile.reference]).check();

  static final _id_setShareIntent = jniAccessors.getMethodIDOf(
      _classRef, "setShareIntent", "(Landroid/content/Intent;)V");

  /// from: public void setShareIntent(android.content.Intent shareIntent)
  ///
  /// Sets an intent with information about the share action. Here is a
  /// sample for constructing a share intent:
  /// <pre>
  /// Intent shareIntent = new Intent(Intent.ACTION_SEND);
  /// shareIntent.setType("image/*");
  /// Uri uri = Uri.fromFile(new File(getFilesDir(), "foo.jpg"));
  /// shareIntent.putExtra(Intent.EXTRA_STREAM, uri));</pre>
  ///@param shareIntent The share intent.
  ///@see Intent\#ACTION_SEND
  ///@see Intent\#ACTION_SEND_MULTIPLE
  void setShareIntent(intent_.Intent shareIntent) =>
      jniAccessors.callMethodWithArgs(reference, _id_setShareIntent,
          jni.JniType.voidType, [shareIntent.reference]).check();
}

/// from: android.widget.ShareActionProvider$OnShareTargetSelectedListener
///
/// Listener for the event of selecting a share target.
class ShareActionProvider_OnShareTargetSelectedListener extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/widget/ShareActionProvider\$OnShareTargetSelectedListener");
  ShareActionProvider_OnShareTargetSelectedListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onShareTargetSelected = jniAccessors.getMethodIDOf(
      _classRef,
      "onShareTargetSelected",
      "(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z");

  /// from: public abstract boolean onShareTargetSelected(android.widget.ShareActionProvider source, android.content.Intent intent)
  ///
  /// Called when a share target has been selected. The client can
  /// decide whether to perform some action before the sharing is
  /// actually performed.
  ///
  /// <strong>Note:</strong> Modifying the intent is not permitted and
  ///     any changes to the latter will be ignored.
  ///
  ///
  ///
  /// <strong>Note:</strong> You should <strong>not</strong> handle the
  ///     intent here. This callback aims to notify the client that a
  ///     sharing is being performed, so the client can update the UI
  ///     if necessary.
  ///
  ///
  ///@param source The source of the notification.
  ///@param intent The intent for launching the chosen share target.
  ///@return The return result is ignored. Always return false for consistency.
  bool onShareTargetSelected(
          ShareActionProvider source, intent_.Intent intent) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onShareTargetSelected,
          jni.JniType.booleanType,
          [source.reference, intent.reference]).boolean;
}
