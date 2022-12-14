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

/// from: android.media.VolumeProvider
///
/// Handles requests to adjust or set the volume on a session. This is also used
/// to push volume updates back to the session. The provider must call
/// \#setCurrentVolume(int) each time the volume being provided changes.
///
/// You can set a volume provider on a session by calling
/// MediaSession\#setPlaybackToRemote.
class VolumeProvider extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/VolumeProvider");
  VolumeProvider.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int VOLUME_CONTROL_ABSOLUTE
  ///
  /// The volume control uses an absolute value. It may be adjusted using
  /// \#onAdjustVolume(int) or set directly using
  /// \#onSetVolumeTo(int).
  static const VOLUME_CONTROL_ABSOLUTE = 2;

  /// from: static public final int VOLUME_CONTROL_FIXED
  ///
  /// The volume is fixed and can not be modified. Requests to change volume
  /// should be ignored.
  static const VOLUME_CONTROL_FIXED = 0;

  /// from: static public final int VOLUME_CONTROL_RELATIVE
  ///
  /// The volume control uses relative adjustment via
  /// \#onAdjustVolume(int). Attempts to set the volume to a specific
  /// value should be ignored.
  static const VOLUME_CONTROL_RELATIVE = 1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(III)V");

  /// from: public void <init>(int volumeControl, int maxVolume, int currentVolume)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new volume provider for handling volume events. You must specify
  /// the type of volume control, the maximum volume that can be used, and the
  /// current volume on the output.
  ///@param volumeControl The method for controlling volume that is used by
  ///            this provider.
  /// Value is android.media.VolumeProvider\#VOLUME_CONTROL_FIXED, android.media.VolumeProvider\#VOLUME_CONTROL_RELATIVE, or android.media.VolumeProvider\#VOLUME_CONTROL_ABSOLUTE
  ///@param maxVolume The maximum allowed volume.
  ///@param currentVolume The current volume on the output.
  VolumeProvider(int volumeControl, int maxVolume, int currentVolume)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [volumeControl, maxVolume, currentVolume]).object);

  static final _id_getVolumeControl =
      jniAccessors.getMethodIDOf(_classRef, "getVolumeControl", "()I");

  /// from: public final int getVolumeControl()
  ///
  /// Get the volume control type that this volume provider uses.
  ///@return The volume control type for this volume provider
  ///
  /// Value is android.media.VolumeProvider\#VOLUME_CONTROL_FIXED, android.media.VolumeProvider\#VOLUME_CONTROL_RELATIVE, or android.media.VolumeProvider\#VOLUME_CONTROL_ABSOLUTE
  int getVolumeControl() => jniAccessors.callMethodWithArgs(
      reference, _id_getVolumeControl, jni.JniType.intType, []).integer;

  static final _id_getMaxVolume =
      jniAccessors.getMethodIDOf(_classRef, "getMaxVolume", "()I");

  /// from: public final int getMaxVolume()
  ///
  /// Get the maximum volume this provider allows.
  ///@return The max allowed volume.
  int getMaxVolume() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxVolume, jni.JniType.intType, []).integer;

  static final _id_getCurrentVolume =
      jniAccessors.getMethodIDOf(_classRef, "getCurrentVolume", "()I");

  /// from: public final int getCurrentVolume()
  ///
  /// Gets the current volume. This will be the last value set by
  /// \#setCurrentVolume(int).
  ///@return The current volume.
  int getCurrentVolume() => jniAccessors.callMethodWithArgs(
      reference, _id_getCurrentVolume, jni.JniType.intType, []).integer;

  static final _id_setCurrentVolume =
      jniAccessors.getMethodIDOf(_classRef, "setCurrentVolume", "(I)V");

  /// from: public final void setCurrentVolume(int currentVolume)
  ///
  /// Notify the system that the current volume has been changed. This must be
  /// called every time the volume changes to ensure it is displayed properly.
  ///@param currentVolume The current volume on the output.
  void setCurrentVolume(int currentVolume) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setCurrentVolume,
      jni.JniType.voidType,
      [currentVolume]).check();

  static final _id_onSetVolumeTo =
      jniAccessors.getMethodIDOf(_classRef, "onSetVolumeTo", "(I)V");

  /// from: public void onSetVolumeTo(int volume)
  ///
  /// Override to handle requests to set the volume of the current output.
  /// After the volume has been modified \#setCurrentVolume must be
  /// called to notify the system.
  ///@param volume The volume to set the output to.
  void onSetVolumeTo(int volume) => jniAccessors.callMethodWithArgs(
      reference, _id_onSetVolumeTo, jni.JniType.voidType, [volume]).check();

  static final _id_onAdjustVolume =
      jniAccessors.getMethodIDOf(_classRef, "onAdjustVolume", "(I)V");

  /// from: public void onAdjustVolume(int direction)
  ///
  /// Override to handle requests to adjust the volume of the current output.
  /// Direction will be one of AudioManager\#ADJUST_LOWER,
  /// AudioManager\#ADJUST_RAISE, AudioManager\#ADJUST_SAME.
  /// After the volume has been modified \#setCurrentVolume must be
  /// called to notify the system.
  ///@param direction The direction to change the volume in.
  void onAdjustVolume(int direction) => jniAccessors.callMethodWithArgs(
      reference, _id_onAdjustVolume, jni.JniType.voidType, [direction]).check();
}
