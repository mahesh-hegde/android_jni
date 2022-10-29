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

import "../graphics/drawable/Drawable.dart" as drawable_;

import "View.dart" as view_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.ContextMenu
///
/// Extension of Menu for context menus providing functionality to modify
/// the header of the context menu.
///
/// Context menus do not support item shortcuts and item icons.
///
/// To show a context menu on long click, most clients will want to call
/// Activity\#registerForContextMenu and override
/// Activity\#onCreateContextMenu.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For information about creating menus, read the
/// <a href="{@docRoot}guide/topics/ui/menus.html">Menus</a> developer guide.
///
/// </div>
class ContextMenu extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/view/ContextMenu");
  ContextMenu.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_setHeaderTitle = jniAccessors.getMethodIDOf(
      _classRef, "setHeaderTitle", "(I)Landroid/view/ContextMenu;");

  /// from: public abstract android.view.ContextMenu setHeaderTitle(int titleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the context menu header's title to the title given in <var>titleRes</var>
  /// resource identifier.
  ///@param titleRes The string resource identifier used for the title.
  ///@return This ContextMenu so additional setters can be called.
  ContextMenu setHeaderTitle(int titleRes) =>
      ContextMenu.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setHeaderTitle, jni.JniType.objectType, [titleRes]).object);

  static final _id_setHeaderTitle1 = jniAccessors.getMethodIDOf(_classRef,
      "setHeaderTitle", "(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;");

  /// from: public abstract android.view.ContextMenu setHeaderTitle(java.lang.CharSequence title)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the context menu header's title to the title given in <var>title</var>.
  ///@param title The character sequence used for the title.
  ///@return This ContextMenu so additional setters can be called.
  ContextMenu setHeaderTitle1(jni.JniObject title) =>
      ContextMenu.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setHeaderTitle1,
          jni.JniType.objectType,
          [title.reference]).object);

  static final _id_setHeaderIcon = jniAccessors.getMethodIDOf(
      _classRef, "setHeaderIcon", "(I)Landroid/view/ContextMenu;");

  /// from: public abstract android.view.ContextMenu setHeaderIcon(int iconRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the context menu header's icon to the icon given in <var>iconRes</var>
  /// resource id.
  ///@param iconRes The resource identifier used for the icon.
  ///@return This ContextMenu so additional setters can be called.
  ContextMenu setHeaderIcon(int iconRes) =>
      ContextMenu.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setHeaderIcon, jni.JniType.objectType, [iconRes]).object);

  static final _id_setHeaderIcon1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setHeaderIcon",
      "(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;");

  /// from: public abstract android.view.ContextMenu setHeaderIcon(android.graphics.drawable.Drawable icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the context menu header's icon to the icon given in <var>icon</var>
  /// Drawable.
  ///@param icon The Drawable used for the icon.
  ///@return This ContextMenu so additional setters can be called.
  ContextMenu setHeaderIcon1(drawable_.Drawable icon) =>
      ContextMenu.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setHeaderIcon1, jni.JniType.objectType, [icon.reference]).object);

  static final _id_setHeaderView = jniAccessors.getMethodIDOf(_classRef,
      "setHeaderView", "(Landroid/view/View;)Landroid/view/ContextMenu;");

  /// from: public abstract android.view.ContextMenu setHeaderView(android.view.View view)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the header of the context menu to the View given in
  /// <var>view</var>. This replaces the header title and icon (and those
  /// replace this).
  ///@param view The View used for the header.
  ///@return This ContextMenu so additional setters can be called.
  ContextMenu setHeaderView(view_.View view) =>
      ContextMenu.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setHeaderView, jni.JniType.objectType, [view.reference]).object);

  static final _id_clearHeader =
      jniAccessors.getMethodIDOf(_classRef, "clearHeader", "()V");

  /// from: public abstract void clearHeader()
  ///
  /// Clears the header of the context menu.
  void clearHeader() => jniAccessors.callMethodWithArgs(
      reference, _id_clearHeader, jni.JniType.voidType, []).check();
}

/// from: android.view.ContextMenu$ContextMenuInfo
///
/// Additional information regarding the creation of the context menu.  For example,
/// AdapterViews use this to pass the exact item position within the adapter
/// that initiated the context menu.
class ContextMenu_ContextMenuInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/ContextMenu\$ContextMenuInfo");
  ContextMenu_ContextMenuInfo.fromRef(jni.JObject ref) : super.fromRef(ref);
}
