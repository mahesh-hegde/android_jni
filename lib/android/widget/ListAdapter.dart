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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.ListAdapter
///
/// Extended Adapter that is the bridge between a ListView
/// and the data that backs the list. Frequently that data comes from a Cursor,
/// but that is not
/// required. The ListView can display any data provided that it is wrapped in a
/// ListAdapter.
class ListAdapter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/ListAdapter");
  ListAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_areAllItemsEnabled =
      jniAccessors.getMethodIDOf(_classRef, "areAllItemsEnabled", "()Z");

  /// from: public abstract boolean areAllItemsEnabled()
  ///
  /// Indicates whether all the items in this adapter are enabled. If the
  /// value returned by this method changes over time, there is no guarantee
  /// it will take effect.  If true, it means all items are selectable and
  /// clickable (there is no separator.)
  ///@return True if all items are enabled, false otherwise.
  ///@see \#isEnabled(int)
  bool areAllItemsEnabled() => jniAccessors.callMethodWithArgs(
      reference, _id_areAllItemsEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_isEnabled =
      jniAccessors.getMethodIDOf(_classRef, "isEnabled", "(I)Z");

  /// from: public abstract boolean isEnabled(int position)
  ///
  /// Returns true if the item at the specified position is not a separator.
  /// (A separator is a non-selectable, non-clickable item).
  ///
  /// The result is unspecified if position is invalid. An ArrayIndexOutOfBoundsException
  /// should be thrown in that case for fast failure.
  ///@param position Index of the item
  ///@return True if the item is not a separator
  ///@see \#areAllItemsEnabled()
  bool isEnabled(int position) => jniAccessors.callMethodWithArgs(
      reference, _id_isEnabled, jni.JniType.booleanType, [position]).boolean;
}
