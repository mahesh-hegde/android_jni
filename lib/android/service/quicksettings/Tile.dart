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

import "../../os/Parcelable.dart" as parcelable_;

import "../../graphics/drawable/Icon.dart" as icon_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.quicksettings.Tile
///
/// A Tile holds the state of a tile that will be displayed
/// in Quick Settings.
///
/// A tile in Quick Settings exists as an icon with an accompanied label.
/// It also may have content description for accessibility usability.
/// The style and layout of the tile may change to match a given
/// device.
class Tile extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/quicksettings/Tile");
  Tile.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.service.quicksettings.Tile> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int STATE_ACTIVE
  ///
  /// This represents a tile that is currently active. (e.g. wifi is connected, bluetooth is on,
  /// cast is casting).  This is the default state.
  static const STATE_ACTIVE = 2;

  /// from: static public final int STATE_INACTIVE
  ///
  /// This represents a tile that is currently in a disabled state but is still interactable.
  ///
  /// A disabled state indicates that the tile is not currently active (e.g. wifi disconnected or
  /// bluetooth disabled), but is still interactable by the user to modify this state.  Tiles
  /// that have boolean states should use this to represent one of their states.  The tile's
  /// icon will be tinted differently to reflect this state, but still be distinct from unavailable.
  static const STATE_INACTIVE = 1;

  /// from: static public final int STATE_UNAVAILABLE
  ///
  /// An unavailable state indicates that for some reason this tile is not currently
  /// available to the user for some reason, and will have no click action.  The tile's
  /// icon will be tinted differently to reflect this state.
  static const STATE_UNAVAILABLE = 0;

  static final _id_getState =
      jniAccessors.getMethodIDOf(_classRef, "getState", "()I");

  /// from: public int getState()
  ///
  /// The current state of the tile.
  ///@see \#STATE_UNAVAILABLE
  ///@see \#STATE_INACTIVE
  ///@see \#STATE_ACTIVE
  int getState() => jniAccessors.callMethodWithArgs(
      reference, _id_getState, jni.JniType.intType, []).integer;

  static final _id_setState =
      jniAccessors.getMethodIDOf(_classRef, "setState", "(I)V");

  /// from: public void setState(int state)
  ///
  /// Sets the current state for the tile.
  ///
  /// Does not take effect until \#updateTile() is called.
  ///@param state One of \#STATE_UNAVAILABLE, \#STATE_INACTIVE,
  /// \#STATE_ACTIVE
  void setState(int state) => jniAccessors.callMethodWithArgs(
      reference, _id_setState, jni.JniType.voidType, [state]).check();

  static final _id_getIcon = jniAccessors.getMethodIDOf(
      _classRef, "getIcon", "()Landroid/graphics/drawable/Icon;");

  /// from: public android.graphics.drawable.Icon getIcon()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the current icon for the tile.
  icon_.Icon getIcon() => icon_.Icon.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getIcon, jni.JniType.objectType, []).object);

  static final _id_setIcon = jniAccessors.getMethodIDOf(
      _classRef, "setIcon", "(Landroid/graphics/drawable/Icon;)V");

  /// from: public void setIcon(android.graphics.drawable.Icon icon)
  ///
  /// Sets the current icon for the tile.
  ///
  /// This icon is expected to be white on alpha, and may be
  /// tinted by the system to match it's theme.
  ///
  /// Does not take effect until \#updateTile() is called.
  ///@param icon New icon to show.
  void setIcon(icon_.Icon icon) => jniAccessors.callMethodWithArgs(
      reference, _id_setIcon, jni.JniType.voidType, [icon.reference]).check();

  static final _id_getLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the current label for the tile.
  jni.JniObject getLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLabel, jni.JniType.objectType, []).object);

  static final _id_setLabel = jniAccessors.getMethodIDOf(
      _classRef, "setLabel", "(Ljava/lang/CharSequence;)V");

  /// from: public void setLabel(java.lang.CharSequence label)
  ///
  /// Sets the current label for the tile.
  ///
  /// Does not take effect until \#updateTile() is called.
  ///@param label New label to show.
  void setLabel(jni.JniObject label) => jniAccessors.callMethodWithArgs(
      reference, _id_setLabel, jni.JniType.voidType, [label.reference]).check();

  static final _id_getContentDescription = jniAccessors.getMethodIDOf(
      _classRef, "getContentDescription", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getContentDescription()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the current content description for the tile.
  jni.JniObject getContentDescription() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getContentDescription, jni.JniType.objectType, []).object);

  static final _id_setContentDescription = jniAccessors.getMethodIDOf(
      _classRef, "setContentDescription", "(Ljava/lang/CharSequence;)V");

  /// from: public void setContentDescription(java.lang.CharSequence contentDescription)
  ///
  /// Sets the current content description for the tile.
  ///
  /// Does not take effect until \#updateTile() is called.
  ///@param contentDescription New content description to use.
  void setContentDescription(jni.JniObject contentDescription) =>
      jniAccessors.callMethodWithArgs(reference, _id_setContentDescription,
          jni.JniType.voidType, [contentDescription.reference]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_updateTile =
      jniAccessors.getMethodIDOf(_classRef, "updateTile", "()V");

  /// from: public void updateTile()
  ///
  /// Pushes the state of the Tile to Quick Settings to be displayed.
  void updateTile() => jniAccessors.callMethodWithArgs(
      reference, _id_updateTile, jni.JniType.voidType, []).check();

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
