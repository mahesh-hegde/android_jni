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

import "ListAdapter.dart" as listadapter_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.WrapperListAdapter
///
/// List adapter that wraps another list adapter. The wrapped adapter can be retrieved
/// by calling \#getWrappedAdapter().
///@see ListView
class WrapperListAdapter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/WrapperListAdapter");
  WrapperListAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getWrappedAdapter = jniAccessors.getMethodIDOf(
      _classRef, "getWrappedAdapter", "()Landroid/widget/ListAdapter;");

  /// from: public abstract android.widget.ListAdapter getWrappedAdapter()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the adapter wrapped by this list adapter.
  ///@return The android.widget.ListAdapter wrapped by this adapter.
  listadapter_.ListAdapter getWrappedAdapter() =>
      listadapter_.ListAdapter.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getWrappedAdapter, jni.JniType.objectType, []).object);
}