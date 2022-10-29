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

import "AudioEffect.dart" as audioeffect_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.audiofx.PresetReverb
///
/// A sound generated within a room travels in many directions. The listener first hears the
/// direct sound from the source itself. Later, he or she hears discrete echoes caused by sound
/// bouncing off nearby walls, the ceiling and the floor. As sound waves arrive after
/// undergoing more and more reflections, individual reflections become indistinguishable and
/// the listener hears continuous reverberation that decays over time.
/// Reverb is vital for modeling a listener's environment. It can be used in music applications
/// to simulate music being played back in various environments, or in games to immerse the
/// listener within the game's environment.
/// The PresetReverb class allows an application to configure the global reverb using a reverb preset.
/// This is primarily used for adding some reverb in a music playback context. Applications
/// requiring control over a more advanced environmental reverb are advised to use the
/// android.media.audiofx.EnvironmentalReverb class.
/// An application creates a PresetReverb object to instantiate and control a reverb engine in the
/// audio framework.
/// The methods, parameter types and units exposed by the PresetReverb implementation are
/// directly mapping those defined by the OpenSL ES 1.0.1 Specification
/// (http://www.khronos.org/opensles/) for the SLPresetReverbItf interface.
/// Please refer to this specification for more details.
/// The PresetReverb is an output mix auxiliary effect and should be created on
/// Audio session 0. In order for a MediaPlayer or AudioTrack to be fed into this effect,
/// they must be explicitely attached to it and a send level must be specified. Use the effect ID
/// returned by getId() method to designate this particular effect when attaching it to the
/// MediaPlayer or AudioTrack.
/// Creating a reverb on the output mix (audio session 0) requires permission
/// android.Manifest.permission\#MODIFY_AUDIO_SETTINGS
/// See android.media.audiofx.AudioEffect class for more details on controlling
/// audio effects.
class PresetReverb extends audioeffect_.AudioEffect {
  static final _classRef =
      jniAccessors.getClassOf("android/media/audiofx/PresetReverb");
  PresetReverb.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int PARAM_PRESET
  ///
  /// Preset. Parameter ID for
  /// android.media.audiofx.PresetReverb.OnParameterChangeListener
  static const PARAM_PRESET = 0;

  /// from: static public final short PRESET_LARGEHALL
  ///
  /// Reverb preset representing a large-sized hall suitable for a full orchestra
  static const PRESET_LARGEHALL = 5;

  /// from: static public final short PRESET_LARGEROOM
  ///
  /// Reverb preset representing a large-sized room suitable for live performances
  static const PRESET_LARGEROOM = 3;

  /// from: static public final short PRESET_MEDIUMHALL
  ///
  /// Reverb preset representing a medium-sized hall
  static const PRESET_MEDIUMHALL = 4;

  /// from: static public final short PRESET_MEDIUMROOM
  ///
  /// Reverb preset representing a medium room with a length of ten meters or less
  static const PRESET_MEDIUMROOM = 2;

  /// from: static public final short PRESET_NONE
  ///
  /// No reverb or reflections
  static const PRESET_NONE = 0;

  /// from: static public final short PRESET_PLATE
  ///
  /// Reverb preset representing a synthesis of the traditional plate reverb
  static const PRESET_PLATE = 6;

  /// from: static public final short PRESET_SMALLROOM
  ///
  /// Reverb preset representing a small room less than five meters in length
  static const PRESET_SMALLROOM = 1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int priority, int audioSession)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Class constructor.
  ///@param priority the priority level requested by the application for controlling the
  /// PresetReverb engine. As the same engine can be shared by several applications, this
  /// parameter indicates how much the requesting application needs control of effect parameters.
  /// The normal priority is 0, above normal is a positive number, below normal a negative number.
  ///@param audioSession system wide unique audio session identifier. If audioSession
  ///  is not 0, the PresetReverb will be attached to the MediaPlayer or AudioTrack in the
  ///  same audio session. Otherwise, the PresetReverb will apply to the output mix.
  ///  As the PresetReverb is an auxiliary effect it is recommended to instantiate it on
  ///  audio session 0 and to attach it to the MediaPLayer auxiliary output.
  ///@throws java.lang.IllegalArgumentException
  ///@throws java.lang.UnsupportedOperationException
  ///@throws java.lang.RuntimeException
  PresetReverb(int priority, int audioSession)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [priority, audioSession]).object);

  static final _id_setPreset =
      jniAccessors.getMethodIDOf(_classRef, "setPreset", "(S)V");

  /// from: public void setPreset(short preset)
  ///
  /// Enables a preset on the reverb.
  ///  The reverb PRESET_NONE disables any reverb from the current output but does not free the
  ///  resources associated with the reverb. For an application to signal to the implementation
  ///  to free the resources, it must call the release() method.
  ///@param preset this must be one of the the preset constants defined in this class.
  /// e.g. \#PRESET_SMALLROOM
  ///@throws IllegalStateException
  ///@throws IllegalArgumentException
  ///@throws UnsupportedOperationException
  void setPreset(int preset) => jniAccessors.callMethodWithArgs(
      reference, _id_setPreset, jni.JniType.voidType, [preset]).check();

  static final _id_getPreset =
      jniAccessors.getMethodIDOf(_classRef, "getPreset", "()S");

  /// from: public short getPreset()
  ///
  /// Gets current reverb preset.
  ///@return the preset that is set at the moment.
  ///@throws IllegalStateException
  ///@throws IllegalArgumentException
  ///@throws UnsupportedOperationException
  int getPreset() => jniAccessors.callMethodWithArgs(
      reference, _id_getPreset, jni.JniType.shortType, []).short;

  static final _id_setParameterListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setParameterListener",
      "(Landroid/media/audiofx/PresetReverb\$OnParameterChangeListener;)V");

  /// from: public void setParameterListener(android.media.audiofx.PresetReverb.OnParameterChangeListener listener)
  ///
  /// Registers an OnParameterChangeListener interface.
  ///@param listener OnParameterChangeListener interface registered
  void setParameterListener(PresetReverb_OnParameterChangeListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setParameterListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_getProperties = jniAccessors.getMethodIDOf(_classRef,
      "getProperties", "()Landroid/media/audiofx/PresetReverb\$Settings;");

  /// from: public android.media.audiofx.PresetReverb.Settings getProperties()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the preset reverb properties. This method is useful when a snapshot of current
  /// preset reverb settings must be saved by the application.
  ///@return a PresetReverb.Settings object containing all current parameters values
  ///@throws IllegalStateException
  ///@throws IllegalArgumentException
  ///@throws UnsupportedOperationException
  PresetReverb_Settings getProperties() =>
      PresetReverb_Settings.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getProperties, jni.JniType.objectType, []).object);

  static final _id_setProperties = jniAccessors.getMethodIDOf(_classRef,
      "setProperties", "(Landroid/media/audiofx/PresetReverb\$Settings;)V");

  /// from: public void setProperties(android.media.audiofx.PresetReverb.Settings settings)
  ///
  /// Sets the preset reverb properties. This method is useful when preset reverb settings have to
  /// be applied from a previous backup.
  ///@param settings a PresetReverb.Settings object containing the properties to apply
  ///@throws IllegalStateException
  ///@throws IllegalArgumentException
  ///@throws UnsupportedOperationException
  void setProperties(PresetReverb_Settings settings) =>
      jniAccessors.callMethodWithArgs(reference, _id_setProperties,
          jni.JniType.voidType, [settings.reference]).check();
}

/// from: android.media.audiofx.PresetReverb$Settings
///
/// The Settings class regroups all preset reverb parameters. It is used in
/// conjuntion with getProperties() and setProperties() methods to backup and restore
/// all parameters in a single call.
class PresetReverb_Settings extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/audiofx/PresetReverb\$Settings");
  PresetReverb_Settings.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_preset = jniAccessors.getFieldIDOf(_classRef, "preset", "S");

  /// from: public short preset
  int get preset =>
      jniAccessors.getField(reference, _id_preset, jni.JniType.shortType).short;

  /// from: public short preset
  set preset(int value) => jniEnv.SetShortField(reference, _id_preset, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  PresetReverb_Settings()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String settings)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Settings class constructor from a key=value; pairs formatted string. The string is
  /// typically returned by Settings.toString() method.
  ///@throws IllegalArgumentException if the string is not correctly formatted.
  PresetReverb_Settings.ctor1(jni.JniString settings)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [settings.reference]).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.media.audiofx.PresetReverb$OnParameterChangeListener
///
/// The OnParameterChangeListener interface defines a method called by the PresetReverb
/// when a parameter value has changed.
class PresetReverb_OnParameterChangeListener extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/media/audiofx/PresetReverb\$OnParameterChangeListener");
  PresetReverb_OnParameterChangeListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onParameterChange = jniAccessors.getMethodIDOf(_classRef,
      "onParameterChange", "(Landroid/media/audiofx/PresetReverb;IIS)V");

  /// from: public abstract void onParameterChange(android.media.audiofx.PresetReverb effect, int status, int param, short value)
  ///
  /// Method called when a parameter value has changed. The method is called only if the
  /// parameter was changed by another application having the control of the same
  /// PresetReverb engine.
  ///@param effect the PresetReverb on which the interface is registered.
  ///@param status status of the set parameter operation.
  ///@param param ID of the modified parameter. See \#PARAM_PRESET ...
  ///@param value the new parameter value.
  void onParameterChange(
          PresetReverb effect, int status, int param, int value) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onParameterChange,
          jni.JniType.voidType,
          [effect.reference, status, param, value]).check();
}
