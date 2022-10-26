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

import "../view/ActionProvider.dart" as actionprovider_;

import "../content/Context.dart" as context_;

import "../view/View.dart" as view_;

import "../view/MenuItem.dart" as menuitem_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.MediaRouteActionProvider
///
/// The media route action provider displays a MediaRouteButton media route button
/// in the application's ActionBar to allow the user to select routes and
/// to control the currently selected route.
///
/// The application must specify the kinds of routes that the user should be allowed
/// to select by specifying the route types with the \#setRouteTypes method.
///
///
/// Refer to MediaRouteButton for a description of the button that will
/// appear in the action bar menu.  Note that instead of disabling the button
/// when no routes are available, the action provider will instead make the
/// menu item invisible.  In this way, the button will only be visible when it
/// is possible for the user to discover and select a matching route.
///
///
class MediaRouteActionProvider extends actionprovider_.ActionProvider {
  static final _classRef =
      jniAccessors.getClassOf("android/app/MediaRouteActionProvider");
  MediaRouteActionProvider.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MediaRouteActionProvider(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_setRouteTypes =
      jniAccessors.getMethodIDOf(_classRef, "setRouteTypes", "(I)V");

  /// from: public void setRouteTypes(int types)
  ///
  /// Sets the types of routes that will be shown in the media route chooser dialog
  /// launched by this button.
  ///@param types The route types to match.
  void setRouteTypes(int types) => jniAccessors.callMethodWithArgs(
      reference, _id_setRouteTypes, jni.JniType.voidType, [types]).check();

  static final _id_setExtendedSettingsClickListener =
      jniAccessors.getMethodIDOf(_classRef, "setExtendedSettingsClickListener",
          "(Landroid/view/View\$OnClickListener;)V");

  /// from: public void setExtendedSettingsClickListener(android.view.View.OnClickListener listener)
  void setExtendedSettingsClickListener(view_.View_OnClickListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setExtendedSettingsClickListener,
          jni.JniType.voidType,
          [listener.reference]).check();

  static final _id_onCreateActionView = jniAccessors.getMethodIDOf(
      _classRef, "onCreateActionView", "()Landroid/view/View;");

  /// from: public android.view.View onCreateActionView()
  /// The returned object must be deleted after use, by calling the `delete` method.
  view_.View onCreateActionView() =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onCreateActionView, jni.JniType.objectType, []).object);

  static final _id_onCreateActionView1 = jniAccessors.getMethodIDOf(_classRef,
      "onCreateActionView", "(Landroid/view/MenuItem;)Landroid/view/View;");

  /// from: public android.view.View onCreateActionView(android.view.MenuItem item)
  /// The returned object must be deleted after use, by calling the `delete` method.
  view_.View onCreateActionView1(menuitem_.MenuItem item) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_onCreateActionView1,
          jni.JniType.objectType,
          [item.reference]).object);

  static final _id_onPerformDefaultAction =
      jniAccessors.getMethodIDOf(_classRef, "onPerformDefaultAction", "()Z");

  /// from: public boolean onPerformDefaultAction()
  bool onPerformDefaultAction() => jniAccessors.callMethodWithArgs(reference,
      _id_onPerformDefaultAction, jni.JniType.booleanType, []).boolean;

  static final _id_overridesItemVisibility =
      jniAccessors.getMethodIDOf(_classRef, "overridesItemVisibility", "()Z");

  /// from: public boolean overridesItemVisibility()
  bool overridesItemVisibility() => jniAccessors.callMethodWithArgs(reference,
      _id_overridesItemVisibility, jni.JniType.booleanType, []).boolean;

  static final _id_isVisible =
      jniAccessors.getMethodIDOf(_classRef, "isVisible", "()Z");

  /// from: public boolean isVisible()
  bool isVisible() => jniAccessors.callMethodWithArgs(
      reference, _id_isVisible, jni.JniType.booleanType, []).boolean;
}