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

import "Filter.dart" as filter_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.Filterable
///
/// Defines a filterable behavior. A filterable class can have its data
/// constrained by a filter. Filterable classes are usually
/// android.widget.Adapter implementations.
///
///@see android.widget.Filter
class Filterable extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/widget/Filterable");
  Filterable.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getFilter = jniAccessors.getMethodIDOf(
      _classRef, "getFilter", "()Landroid/widget/Filter;");

  /// from: public abstract android.widget.Filter getFilter()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a filter that can be used to constrain data with a filtering
  /// pattern.
  ///
  ///
  /// This method is usually implemented by android.widget.Adapter
  /// classes.
  ///
  ///@return a filter used to constrain data
  filter_.Filter getFilter() =>
      filter_.Filter.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFilter, jni.JniType.objectType, []).object);
}
