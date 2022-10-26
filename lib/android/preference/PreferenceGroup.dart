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

import "Preference.dart" as preference_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../os/Bundle.dart" as bundle_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.preference.PreferenceGroup
///
/// A container for multiple
/// Preference objects. It is a base class for  Preference objects that are
/// parents, such as PreferenceCategory and PreferenceScreen.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For information about building a settings UI with Preferences,
/// read the <a href="{@docRoot}guide/topics/ui/settings.html">Settings</a>
/// guide.
///
/// </div>
///@attr ref android.R.styleable\#PreferenceGroup_orderingFromXml
class PreferenceGroup extends preference_.Preference {
  static final _classRef =
      jniAccessors.getClassOf("android/preference/PreferenceGroup");
  PreferenceGroup.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  PreferenceGroup(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  PreferenceGroup.ctor1(context_.Context context,
      attributeset_.AttributeSet attrs, int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  PreferenceGroup.ctor2(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [context.reference, attrs.reference]).object);

  static final _id_setOrderingAsAdded =
      jniAccessors.getMethodIDOf(_classRef, "setOrderingAsAdded", "(Z)V");

  /// from: public void setOrderingAsAdded(boolean orderingAsAdded)
  ///
  /// Whether to order the Preference children of this group as they
  /// are added. If this is false, the ordering will follow each Preference
  /// order and default to alphabetic for those without an order.
  ///
  /// If this is called after preferences are added, they will not be
  /// re-ordered in the order they were added, hence call this method early on.
  ///@param orderingAsAdded Whether to order according to the order added.
  ///@see Preference\#setOrder(int)
  void setOrderingAsAdded(bool orderingAsAdded) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOrderingAsAdded,
          jni.JniType.voidType, [orderingAsAdded]).check();

  static final _id_isOrderingAsAdded =
      jniAccessors.getMethodIDOf(_classRef, "isOrderingAsAdded", "()Z");

  /// from: public boolean isOrderingAsAdded()
  ///
  /// Whether this group is ordering preferences in the order they are added.
  ///@return Whether this group orders based on the order the children are added.
  ///@see \#setOrderingAsAdded(boolean)
  bool isOrderingAsAdded() => jniAccessors.callMethodWithArgs(
      reference, _id_isOrderingAsAdded, jni.JniType.booleanType, []).boolean;

  static final _id_addItemFromInflater = jniAccessors.getMethodIDOf(
      _classRef, "addItemFromInflater", "(Landroid/preference/Preference;)V");

  /// from: public void addItemFromInflater(android.preference.Preference preference)
  ///
  /// Called by the inflater to add an item to this group.
  void addItemFromInflater(preference_.Preference preference) =>
      jniAccessors.callMethodWithArgs(reference, _id_addItemFromInflater,
          jni.JniType.voidType, [preference.reference]).check();

  static final _id_getPreferenceCount =
      jniAccessors.getMethodIDOf(_classRef, "getPreferenceCount", "()I");

  /// from: public int getPreferenceCount()
  ///
  /// Returns the number of children Preferences.
  ///@return The number of preference children in this group.
  int getPreferenceCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getPreferenceCount, jni.JniType.intType, []).integer;

  static final _id_getPreference = jniAccessors.getMethodIDOf(
      _classRef, "getPreference", "(I)Landroid/preference/Preference;");

  /// from: public android.preference.Preference getPreference(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the Preference at a particular index.
  ///@param index The index of the Preference to retrieve.
  ///@return The Preference.
  preference_.Preference getPreference(int index) =>
      preference_.Preference.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getPreference, jni.JniType.objectType, [index]).object);

  static final _id_addPreference = jniAccessors.getMethodIDOf(
      _classRef, "addPreference", "(Landroid/preference/Preference;)Z");

  /// from: public boolean addPreference(android.preference.Preference preference)
  ///
  /// Adds a Preference at the correct position based on the
  /// preference's order.
  ///@param preference The preference to add.
  ///@return Whether the preference is now in this group.
  bool addPreference(preference_.Preference preference) =>
      jniAccessors.callMethodWithArgs(reference, _id_addPreference,
          jni.JniType.booleanType, [preference.reference]).boolean;

  static final _id_removePreference = jniAccessors.getMethodIDOf(
      _classRef, "removePreference", "(Landroid/preference/Preference;)Z");

  /// from: public boolean removePreference(android.preference.Preference preference)
  ///
  /// Removes a Preference from this group.
  ///@param preference The preference to remove.
  ///@return Whether the preference was found and removed.
  bool removePreference(preference_.Preference preference) =>
      jniAccessors.callMethodWithArgs(reference, _id_removePreference,
          jni.JniType.booleanType, [preference.reference]).boolean;

  static final _id_removeAll =
      jniAccessors.getMethodIDOf(_classRef, "removeAll", "()V");

  /// from: public void removeAll()
  ///
  /// Removes all Preference Preferences from this group.
  void removeAll() => jniAccessors.callMethodWithArgs(
      reference, _id_removeAll, jni.JniType.voidType, []).check();

  static final _id_onPrepareAddPreference = jniAccessors.getMethodIDOf(
      _classRef,
      "onPrepareAddPreference",
      "(Landroid/preference/Preference;)Z");

  /// from: protected boolean onPrepareAddPreference(android.preference.Preference preference)
  ///
  /// Prepares a Preference to be added to the group.
  ///@param preference The preference to add.
  ///@return Whether to allow adding the preference (true), or not (false).
  bool onPrepareAddPreference(preference_.Preference preference) =>
      jniAccessors.callMethodWithArgs(reference, _id_onPrepareAddPreference,
          jni.JniType.booleanType, [preference.reference]).boolean;

  static final _id_findPreference = jniAccessors.getMethodIDOf(
      _classRef,
      "findPreference",
      "(Ljava/lang/CharSequence;)Landroid/preference/Preference;");

  /// from: public android.preference.Preference findPreference(java.lang.CharSequence key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Finds a Preference based on its key. If two Preference
  /// share the same key (not recommended), the first to appear will be
  /// returned (to retrieve the other preference with the same key, call this
  /// method on the first preference). If this preference has the key, it will
  /// not be returned.
  ///
  /// This will recursively search for the preference into children that are
  /// also PreferenceGroup PreferenceGroups.
  ///@param key The key of the preference to retrieve.
  ///@return The Preference with the key, or null.
  preference_.Preference findPreference(jni.JniObject key) =>
      preference_.Preference.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_findPreference, jni.JniType.objectType, [key.reference]).object);

  static final _id_isOnSameScreenAsChildren =
      jniAccessors.getMethodIDOf(_classRef, "isOnSameScreenAsChildren", "()Z");

  /// from: protected boolean isOnSameScreenAsChildren()
  ///
  /// Whether this preference group should be shown on the same screen as its
  /// contained preferences.
  ///@return True if the contained preferences should be shown on the same
  ///         screen as this preference.
  bool isOnSameScreenAsChildren() => jniAccessors.callMethodWithArgs(reference,
      _id_isOnSameScreenAsChildren, jni.JniType.booleanType, []).boolean;

  static final _id_onAttachedToActivity =
      jniAccessors.getMethodIDOf(_classRef, "onAttachedToActivity", "()V");

  /// from: protected void onAttachedToActivity()
  void onAttachedToActivity() => jniAccessors.callMethodWithArgs(
      reference, _id_onAttachedToActivity, jni.JniType.voidType, []).check();

  static final _id_onPrepareForRemoval =
      jniAccessors.getMethodIDOf(_classRef, "onPrepareForRemoval", "()V");

  /// from: protected void onPrepareForRemoval()
  void onPrepareForRemoval() => jniAccessors.callMethodWithArgs(
      reference, _id_onPrepareForRemoval, jni.JniType.voidType, []).check();

  static final _id_notifyDependencyChange =
      jniAccessors.getMethodIDOf(_classRef, "notifyDependencyChange", "(Z)V");

  /// from: public void notifyDependencyChange(boolean disableDependents)
  void notifyDependencyChange(bool disableDependents) =>
      jniAccessors.callMethodWithArgs(reference, _id_notifyDependencyChange,
          jni.JniType.voidType, [disableDependents]).check();

  static final _id_dispatchSaveInstanceState = jniAccessors.getMethodIDOf(
      _classRef, "dispatchSaveInstanceState", "(Landroid/os/Bundle;)V");

  /// from: protected void dispatchSaveInstanceState(android.os.Bundle container)
  void dispatchSaveInstanceState(bundle_.Bundle container) =>
      jniAccessors.callMethodWithArgs(reference, _id_dispatchSaveInstanceState,
          jni.JniType.voidType, [container.reference]).check();

  static final _id_dispatchRestoreInstanceState = jniAccessors.getMethodIDOf(
      _classRef, "dispatchRestoreInstanceState", "(Landroid/os/Bundle;)V");

  /// from: protected void dispatchRestoreInstanceState(android.os.Bundle container)
  void dispatchRestoreInstanceState(bundle_.Bundle container) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_dispatchRestoreInstanceState,
          jni.JniType.voidType,
          [container.reference]).check();
}