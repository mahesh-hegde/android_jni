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

import "Menu.dart" as menu_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.MenuInflater
///
/// This class is used to instantiate menu XML files into Menu objects.
///
/// For performance reasons, menu inflation relies heavily on pre-processing of
/// XML files that is done at build time. Therefore, it is not currently possible
/// to use MenuInflater with an XmlPullParser over a plain XML file at runtime;
/// it only works with an XmlPullParser returned from a compiled resource (R.
/// _something_ file.)
class MenuInflater extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/view/MenuInflater");
  MenuInflater.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a menu inflater.
  ///@see Activity\#getMenuInflater()
  MenuInflater(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_inflate = jniAccessors.getMethodIDOf(
      _classRef, "inflate", "(ILandroid/view/Menu;)V");

  /// from: public void inflate(int menuRes, android.view.Menu menu)
  ///
  /// Inflate a menu hierarchy from the specified XML resource. Throws
  /// InflateException if there is an error.
  ///@param menuRes Resource ID for an XML layout resource to load (e.g.,
  ///            <code>R.menu.main_activity</code>)
  ///@param menu The Menu to inflate into. The items and submenus will be
  ///            added to this Menu.
  void inflate(int menuRes, menu_.Menu menu) => jniAccessors.callMethodWithArgs(
      reference,
      _id_inflate,
      jni.JniType.voidType,
      [menuRes, menu.reference]).check();
}
