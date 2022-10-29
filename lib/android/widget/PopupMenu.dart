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

import "../content/Context.dart" as context_;

import "../view/View.dart" as view_;

import "../view/Menu.dart" as menu_;

import "../view/MenuInflater.dart" as menuinflater_;

import "../view/MenuItem.dart" as menuitem_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.PopupMenu
///
/// A PopupMenu displays a Menu in a modal popup window anchored to a
/// View. The popup will appear below the anchor view if there is room,
/// or above it if there is not. If the IME is visible the popup will not
/// overlap it until it is touched. Touching outside of the popup will dismiss
/// it.
class PopupMenu extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/widget/PopupMenu");
  PopupMenu.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;Landroid/view/View;)V");

  /// from: public void <init>(android.content.Context context, android.view.View anchor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor to create a new popup menu with an anchor view.
  ///@param context Context the popup menu is running in, through which it
  ///        can access the current theme, resources, etc.
  ///@param anchor Anchor view for this popup. The popup will appear below
  ///        the anchor if there is room, or above it if there is not.
  PopupMenu(context_.Context context, view_.View anchor)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference, anchor.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;Landroid/view/View;I)V");

  /// from: public void <init>(android.content.Context context, android.view.View anchor, int gravity)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor to create a new popup menu with an anchor view and alignment
  /// gravity.
  ///@param context Context the popup menu is running in, through which it
  ///        can access the current theme, resources, etc.
  ///@param anchor Anchor view for this popup. The popup will appear below
  ///        the anchor if there is room, or above it if there is not.
  ///@param gravity The Gravity value for aligning the popup with its
  ///        anchor.
  PopupMenu.ctor1(context_.Context context, view_.View anchor, int gravity)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [context.reference, anchor.reference, gravity]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/view/View;III)V");

  /// from: public void <init>(android.content.Context context, android.view.View anchor, int gravity, int popupStyleAttr, int popupStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor a create a new popup menu with a specific style.
  ///@param context Context the popup menu is running in, through which it
  ///        can access the current theme, resources, etc.
  ///@param anchor Anchor view for this popup. The popup will appear below
  ///        the anchor if there is room, or above it if there is not.
  ///@param gravity The Gravity value for aligning the popup with its
  ///        anchor.
  ///@param popupStyleAttr An attribute in the current theme that contains a
  ///        reference to a style resource that supplies default values for
  ///        the popup window. Can be 0 to not look for defaults.
  ///@param popupStyleRes A resource identifier of a style resource that
  ///        supplies default values for the popup window, used only if
  ///        popupStyleAttr is 0 or can not be found in the theme. Can be 0
  ///        to not look for defaults.
  PopupMenu.ctor2(context_.Context context, view_.View anchor, int gravity,
      int popupStyleAttr, int popupStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, [
          context.reference,
          anchor.reference,
          gravity,
          popupStyleAttr,
          popupStyleRes
        ]).object);

  static final _id_setGravity =
      jniAccessors.getMethodIDOf(_classRef, "setGravity", "(I)V");

  /// from: public void setGravity(int gravity)
  ///
  /// Sets the gravity used to align the popup window to its anchor view.
  ///
  /// If the popup is showing, calling this method will take effect only
  /// the next time the popup is shown.
  ///@param gravity the gravity used to align the popup window
  ///@see \#getGravity()
  void setGravity(int gravity) => jniAccessors.callMethodWithArgs(
      reference, _id_setGravity, jni.JniType.voidType, [gravity]).check();

  static final _id_getGravity =
      jniAccessors.getMethodIDOf(_classRef, "getGravity", "()I");

  /// from: public int getGravity()
  ///
  /// @return the gravity used to align the popup window to its anchor view
  ///@see \#setGravity(int)
  int getGravity() => jniAccessors.callMethodWithArgs(
      reference, _id_getGravity, jni.JniType.intType, []).integer;

  static final _id_getDragToOpenListener = jniAccessors.getMethodIDOf(_classRef,
      "getDragToOpenListener", "()Landroid/view/View\$OnTouchListener;");

  /// from: public android.view.View.OnTouchListener getDragToOpenListener()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an OnTouchListener that can be added to the anchor view
  /// to implement drag-to-open behavior.
  ///
  /// When the listener is set on a view, touching that view and dragging
  /// outside of its bounds will open the popup window. Lifting will select
  /// the currently touched list item.
  ///
  /// Example usage:
  /// <pre>
  /// PopupMenu myPopup = new PopupMenu(context, myAnchor);
  /// myAnchor.setOnTouchListener(myPopup.getDragToOpenListener());
  /// </pre>
  ///@return a touch listener that controls drag-to-open behavior
  view_.View_OnTouchListener getDragToOpenListener() =>
      view_.View_OnTouchListener.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDragToOpenListener,
          jni.JniType.objectType, []).object);

  static final _id_getMenu =
      jniAccessors.getMethodIDOf(_classRef, "getMenu", "()Landroid/view/Menu;");

  /// from: public android.view.Menu getMenu()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the Menu associated with this popup. Populate the
  /// returned Menu with items before calling \#show().
  ///@return the Menu associated with this popup
  ///@see \#show()
  ///@see \#getMenuInflater()
  menu_.Menu getMenu() => menu_.Menu.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getMenu, jni.JniType.objectType, []).object);

  static final _id_getMenuInflater = jniAccessors.getMethodIDOf(
      _classRef, "getMenuInflater", "()Landroid/view/MenuInflater;");

  /// from: public android.view.MenuInflater getMenuInflater()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return a MenuInflater that can be used to inflate menu items
  ///         from XML into the menu returned by \#getMenu()
  ///@see \#getMenu()
  menuinflater_.MenuInflater getMenuInflater() =>
      menuinflater_.MenuInflater.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMenuInflater, jni.JniType.objectType, []).object);

  static final _id_inflate =
      jniAccessors.getMethodIDOf(_classRef, "inflate", "(I)V");

  /// from: public void inflate(int menuRes)
  ///
  /// Inflate a menu resource into this PopupMenu. This is equivalent to
  /// calling {@code popupMenu.getMenuInflater().inflate(menuRes, popupMenu.getMenu())}.
  ///@param menuRes Menu resource to inflate
  void inflate(int menuRes) => jniAccessors.callMethodWithArgs(
      reference, _id_inflate, jni.JniType.voidType, [menuRes]).check();

  static final _id_show0 = jniAccessors.getMethodIDOf(_classRef, "show", "()V");

  /// from: public void show()
  ///
  /// Show the menu popup anchored to the view specified during construction.
  ///@see \#dismiss()
  void show0() => jniAccessors.callMethodWithArgs(
      reference, _id_show0, jni.JniType.voidType, []).check();

  static final _id_dismiss =
      jniAccessors.getMethodIDOf(_classRef, "dismiss", "()V");

  /// from: public void dismiss()
  ///
  /// Dismiss the menu popup.
  ///@see \#show()
  void dismiss() => jniAccessors.callMethodWithArgs(
      reference, _id_dismiss, jni.JniType.voidType, []).check();

  static final _id_setOnMenuItemClickListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnMenuItemClickListener",
      "(Landroid/widget/PopupMenu\$OnMenuItemClickListener;)V");

  /// from: public void setOnMenuItemClickListener(android.widget.PopupMenu.OnMenuItemClickListener listener)
  ///
  /// Sets a listener that will be notified when the user selects an item from
  /// the menu.
  ///@param listener the listener to notify
  void setOnMenuItemClickListener(PopupMenu_OnMenuItemClickListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnMenuItemClickListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_setOnDismissListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnDismissListener",
      "(Landroid/widget/PopupMenu\$OnDismissListener;)V");

  /// from: public void setOnDismissListener(android.widget.PopupMenu.OnDismissListener listener)
  ///
  /// Sets a listener that will be notified when this menu is dismissed.
  ///@param listener the listener to notify
  void setOnDismissListener(PopupMenu_OnDismissListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnDismissListener,
          jni.JniType.voidType, [listener.reference]).check();
}

/// from: android.widget.PopupMenu$OnMenuItemClickListener
///
/// Interface responsible for receiving menu item click events if the items
/// themselves do not have individual item click listeners.
class PopupMenu_OnMenuItemClickListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/PopupMenu\$OnMenuItemClickListener");
  PopupMenu_OnMenuItemClickListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onMenuItemClick = jniAccessors.getMethodIDOf(
      _classRef, "onMenuItemClick", "(Landroid/view/MenuItem;)Z");

  /// from: public abstract boolean onMenuItemClick(android.view.MenuItem item)
  ///
  /// This method will be invoked when a menu item is clicked if the item
  /// itself did not already handle the event.
  ///@param item the menu item that was clicked
  ///@return {@code true} if the event was handled, {@code false}
  ///         otherwise
  bool onMenuItemClick(menuitem_.MenuItem item) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMenuItemClick,
          jni.JniType.booleanType, [item.reference]).boolean;
}

/// from: android.widget.PopupMenu$OnDismissListener
///
/// Callback interface used to notify the application that the menu has closed.
class PopupMenu_OnDismissListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/PopupMenu\$OnDismissListener");
  PopupMenu_OnDismissListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onDismiss = jniAccessors.getMethodIDOf(
      _classRef, "onDismiss", "(Landroid/widget/PopupMenu;)V");

  /// from: public abstract void onDismiss(android.widget.PopupMenu menu)
  ///
  /// Called when the associated menu has been dismissed.
  ///@param menu the popup menu that was dismissed
  void onDismiss(PopupMenu menu) => jniAccessors.callMethodWithArgs(
      reference, _id_onDismiss, jni.JniType.voidType, [menu.reference]).check();
}
