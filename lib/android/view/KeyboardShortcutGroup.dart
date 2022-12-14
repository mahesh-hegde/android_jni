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

import "../os/Parcelable.dart" as parcelable_;

import "KeyboardShortcutInfo.dart" as keyboardshortcutinfo_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.KeyboardShortcutGroup
///
/// A group of KeyboardShortcutInfo.
class KeyboardShortcutGroup extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/KeyboardShortcutGroup");
  KeyboardShortcutGroup.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.KeyboardShortcutGroup> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/CharSequence;Ljava/util/List;)V");

  /// from: public void <init>(java.lang.CharSequence label, java.util.List<android.view.KeyboardShortcutInfo> items)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param label The title to be used for this group, or null if there is none.
  /// This value may be {@code null}.
  ///@param items The set of items to be included.
  ///
  /// This value must never be {@code null}.
  KeyboardShortcutGroup(jni.JniObject label, jni.JniObject items)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [label.reference, items.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/CharSequence;)V");

  /// from: public void <init>(java.lang.CharSequence label)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param label The title to be used for this group, or null if there is none.
  ///
  /// This value may be {@code null}.
  KeyboardShortcutGroup.ctor1(jni.JniObject label)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [label.reference]).object);

  static final _id_getLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the label to be used to describe this group.
  jni.JniObject getLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLabel, jni.JniType.objectType, []).object);

  static final _id_getItems =
      jniAccessors.getMethodIDOf(_classRef, "getItems", "()Ljava/util/List;");

  /// from: public java.util.List<android.view.KeyboardShortcutInfo> getItems()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the list of items included in this group.
  jni.JniObject getItems() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getItems, jni.JniType.objectType, []).object);

  static final _id_addItem = jniAccessors.getMethodIDOf(
      _classRef, "addItem", "(Landroid/view/KeyboardShortcutInfo;)V");

  /// from: public void addItem(android.view.KeyboardShortcutInfo item)
  ///
  /// Adds an item to the existing list.
  ///@param item The item to be added.
  void addItem(keyboardshortcutinfo_.KeyboardShortcutInfo item) =>
      jniAccessors.callMethodWithArgs(reference, _id_addItem,
          jni.JniType.voidType, [item.reference]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
