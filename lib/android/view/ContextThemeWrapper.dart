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

import "../content/ContextWrapper.dart" as contextwrapper_;

import "../content/Context.dart" as context_;

import "../content/res/Resources.dart" as resources_;

import "../content/res/Configuration.dart" as configuration_;

import "../content/res/AssetManager.dart" as assetmanager_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.ContextThemeWrapper
///
/// A context wrapper that allows you to modify or replace the theme of the
/// wrapped context.
class ContextThemeWrapper extends contextwrapper_.ContextWrapper {
  static final _classRef =
      jniAccessors.getClassOf("android/view/ContextThemeWrapper");
  ContextThemeWrapper.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new context wrapper with no theme and no base context.
  /// <p class="note">
  /// <strong>Note:</strong> A base context <strong>must</strong> be attached
  /// using \#attachBaseContext(Context) before calling any other
  /// method on the newly constructed context wrapper.
  ContextThemeWrapper.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;I)V");

  /// from: public void <init>(android.content.Context base, int themeResId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new context wrapper with the specified theme.
  ///
  /// The specified theme will be applied on top of the base context's theme.
  /// Any attributes not explicitly defined in the theme identified by
  /// <var>themeResId</var> will retain their original values.
  ///@param base the base context
  ///@param themeResId the resource ID of the theme to be applied on top of
  ///                   the base context's theme
  ContextThemeWrapper.ctor3(context_.Context base, int themeResId)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [base.reference, themeResId]).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/content/res/Resources\$Theme;)V");

  /// from: public void <init>(android.content.Context base, android.content.res.Resources.Theme theme)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new context wrapper with the specified theme.
  ///
  /// Unlike \#ContextThemeWrapper(Context, int), the theme passed to
  /// this constructor will completely replace the base context's theme.
  ///@param base the base context
  ///@param theme the theme against which resources should be inflated
  ContextThemeWrapper.ctor4(
      context_.Context base, resources_.Resources_Theme theme)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [base.reference, theme.reference]).object);

  static final _id_attachBaseContext = jniAccessors.getMethodIDOf(
      _classRef, "attachBaseContext", "(Landroid/content/Context;)V");

  /// from: protected void attachBaseContext(android.content.Context newBase)
  void attachBaseContext(context_.Context newBase) =>
      jniAccessors.callMethodWithArgs(reference, _id_attachBaseContext,
          jni.JniType.voidType, [newBase.reference]).check();

  static final _id_applyOverrideConfiguration = jniAccessors.getMethodIDOf(
      _classRef,
      "applyOverrideConfiguration",
      "(Landroid/content/res/Configuration;)V");

  /// from: public void applyOverrideConfiguration(android.content.res.Configuration overrideConfiguration)
  ///
  /// Call to set an "override configuration" on this context -- this is
  /// a configuration that replies one or more values of the standard
  /// configuration that is applied to the context.  See
  /// Context\#createConfigurationContext(Configuration) for more
  /// information.
  ///
  /// This method can only be called once, and must be called before any
  /// calls to \#getResources() or \#getAssets() are made.
  void applyOverrideConfiguration(
          configuration_.Configuration overrideConfiguration) =>
      jniAccessors.callMethodWithArgs(reference, _id_applyOverrideConfiguration,
          jni.JniType.voidType, [overrideConfiguration.reference]).check();

  static final _id_getAssets = jniAccessors.getMethodIDOf(
      _classRef, "getAssets", "()Landroid/content/res/AssetManager;");

  /// from: public android.content.res.AssetManager getAssets()
  /// The returned object must be deleted after use, by calling the `delete` method.
  assetmanager_.AssetManager getAssets() =>
      assetmanager_.AssetManager.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAssets, jni.JniType.objectType, []).object);

  static final _id_getResources = jniAccessors.getMethodIDOf(
      _classRef, "getResources", "()Landroid/content/res/Resources;");

  /// from: public android.content.res.Resources getResources()
  /// The returned object must be deleted after use, by calling the `delete` method.
  resources_.Resources getResources() =>
      resources_.Resources.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getResources, jni.JniType.objectType, []).object);

  static final _id_setTheme =
      jniAccessors.getMethodIDOf(_classRef, "setTheme", "(I)V");

  /// from: public void setTheme(int resid)
  void setTheme(int resid) => jniAccessors.callMethodWithArgs(
      reference, _id_setTheme, jni.JniType.voidType, [resid]).check();

  static final _id_getTheme = jniAccessors.getMethodIDOf(
      _classRef, "getTheme", "()Landroid/content/res/Resources\$Theme;");

  /// from: public android.content.res.Resources.Theme getTheme()
  /// The returned object must be deleted after use, by calling the `delete` method.
  resources_.Resources_Theme getTheme() =>
      resources_.Resources_Theme.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTheme, jni.JniType.objectType, []).object);

  static final _id_getSystemService = jniAccessors.getMethodIDOf(
      _classRef, "getSystemService", "(Ljava/lang/String;)Ljava/lang/Object;");

  /// from: public java.lang.Object getSystemService(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getSystemService(jni.JniString name) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getSystemService,
          jni.JniType.objectType,
          [name.reference]).object);

  static final _id_onApplyThemeResource = jniAccessors.getMethodIDOf(_classRef,
      "onApplyThemeResource", "(Landroid/content/res/Resources\$Theme;IZ)V");

  /// from: protected void onApplyThemeResource(android.content.res.Resources.Theme theme, int resId, boolean first)
  ///
  /// Called by \#setTheme and \#getTheme to apply a theme
  /// resource to the current Theme object. May be overridden to change the
  /// default (simple) behavior. This method will not be called in multiple
  /// threads simultaneously.
  ///@param theme the theme being modified
  ///@param resId the style resource being applied to <var>theme</var>
  ///@param first {@code true} if this is the first time a style is being
  ///              applied to <var>theme</var>
  void onApplyThemeResource(
          resources_.Resources_Theme theme, int resId, bool first) =>
      jniAccessors.callMethodWithArgs(reference, _id_onApplyThemeResource,
          jni.JniType.voidType, [theme.reference, resId, first]).check();
}
