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

import "../graphics/drawable/Drawable.dart" as drawable_;

import "View.dart" as view_;

import "MenuItem.dart" as menuitem_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.SubMenu
///
/// Subclass of Menu for sub menus.
///
/// Sub menus do not support item icons, or nested sub menus.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For information about creating menus, read the
/// <a href="{@docRoot}guide/topics/ui/menus.html">Menus</a> developer guide.
///
/// </div>
class SubMenu extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/view/SubMenu");
  SubMenu.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_setHeaderTitle = jniAccessors.getMethodIDOf(
      _classRef, "setHeaderTitle", "(I)Landroid/view/SubMenu;");

  /// from: public abstract android.view.SubMenu setHeaderTitle(int titleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the submenu header's title to the title given in <var>titleRes</var>
  /// resource identifier.
  ///@param titleRes The string resource identifier used for the title.
  ///@return This SubMenu so additional setters can be called.
  SubMenu setHeaderTitle(int titleRes) =>
      SubMenu.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setHeaderTitle, jni.JniType.objectType, [titleRes]).object);

  static final _id_setHeaderTitle1 = jniAccessors.getMethodIDOf(_classRef,
      "setHeaderTitle", "(Ljava/lang/CharSequence;)Landroid/view/SubMenu;");

  /// from: public abstract android.view.SubMenu setHeaderTitle(java.lang.CharSequence title)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the submenu header's title to the title given in <var>title</var>.
  ///@param title The character sequence used for the title.
  ///@return This SubMenu so additional setters can be called.
  SubMenu setHeaderTitle1(jni.JniObject title) =>
      SubMenu.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setHeaderTitle1,
          jni.JniType.objectType,
          [title.reference]).object);

  static final _id_setHeaderIcon = jniAccessors.getMethodIDOf(
      _classRef, "setHeaderIcon", "(I)Landroid/view/SubMenu;");

  /// from: public abstract android.view.SubMenu setHeaderIcon(int iconRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the submenu header's icon to the icon given in <var>iconRes</var>
  /// resource id.
  ///@param iconRes The resource identifier used for the icon.
  ///@return This SubMenu so additional setters can be called.
  SubMenu setHeaderIcon(int iconRes) =>
      SubMenu.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setHeaderIcon, jni.JniType.objectType, [iconRes]).object);

  static final _id_setHeaderIcon1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setHeaderIcon",
      "(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;");

  /// from: public abstract android.view.SubMenu setHeaderIcon(android.graphics.drawable.Drawable icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the submenu header's icon to the icon given in <var>icon</var>
  /// Drawable.
  ///@param icon The Drawable used for the icon.
  ///@return This SubMenu so additional setters can be called.
  SubMenu setHeaderIcon1(drawable_.Drawable icon) =>
      SubMenu.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setHeaderIcon1, jni.JniType.objectType, [icon.reference]).object);

  static final _id_setHeaderView = jniAccessors.getMethodIDOf(_classRef,
      "setHeaderView", "(Landroid/view/View;)Landroid/view/SubMenu;");

  /// from: public abstract android.view.SubMenu setHeaderView(android.view.View view)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the header of the submenu to the View given in
  /// <var>view</var>. This replaces the header title and icon (and those
  /// replace this).
  ///@param view The View used for the header.
  ///@return This SubMenu so additional setters can be called.
  SubMenu setHeaderView(view_.View view) =>
      SubMenu.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setHeaderView, jni.JniType.objectType, [view.reference]).object);

  static final _id_clearHeader =
      jniAccessors.getMethodIDOf(_classRef, "clearHeader", "()V");

  /// from: public abstract void clearHeader()
  ///
  /// Clears the header of the submenu.
  void clearHeader() => jniAccessors.callMethodWithArgs(
      reference, _id_clearHeader, jni.JniType.voidType, []).check();

  static final _id_setIcon = jniAccessors.getMethodIDOf(
      _classRef, "setIcon", "(I)Landroid/view/SubMenu;");

  /// from: public abstract android.view.SubMenu setIcon(int iconRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Change the icon associated with this submenu's item in its parent menu.
  ///@see MenuItem\#setIcon(int)
  ///@param iconRes The new icon (as a resource ID) to be displayed.
  ///@return This SubMenu so additional setters can be called.
  SubMenu setIcon(int iconRes) =>
      SubMenu.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setIcon, jni.JniType.objectType, [iconRes]).object);

  static final _id_setIcon1 = jniAccessors.getMethodIDOf(_classRef, "setIcon",
      "(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;");

  /// from: public abstract android.view.SubMenu setIcon(android.graphics.drawable.Drawable icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Change the icon associated with this submenu's item in its parent menu.
  ///@see MenuItem\#setIcon(Drawable)
  ///@param icon The new icon (as a Drawable) to be displayed.
  ///@return This SubMenu so additional setters can be called.
  SubMenu setIcon1(drawable_.Drawable icon) =>
      SubMenu.fromRef(jniAccessors.callMethodWithArgs(reference, _id_setIcon1,
          jni.JniType.objectType, [icon.reference]).object);

  static final _id_getItem = jniAccessors.getMethodIDOf(
      _classRef, "getItem", "()Landroid/view/MenuItem;");

  /// from: public abstract android.view.MenuItem getItem()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the MenuItem that represents this submenu in the parent
  /// menu.  Use this for setting additional item attributes.
  ///@return The MenuItem that launches the submenu when invoked.
  menuitem_.MenuItem getItem() =>
      menuitem_.MenuItem.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getItem, jni.JniType.objectType, []).object);
}