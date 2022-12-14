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

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.speech.tts.Voice
///
/// Characteristics and features of a Text-To-Speech Voice. Each TTS Engine can expose
/// multiple voices for each locale, with different set of features.
class Voice extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/speech/tts/Voice");
  Voice.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.speech.tts.Voice> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int LATENCY_HIGH
  ///
  /// Network based expected synthesizer latency (~200ms)
  static const LATENCY_HIGH = 400;

  /// from: static public final int LATENCY_LOW
  ///
  /// Low expected synthesizer latency (~20ms)
  static const LATENCY_LOW = 200;

  /// from: static public final int LATENCY_NORMAL
  ///
  /// Normal expected synthesizer latency (~50ms)
  static const LATENCY_NORMAL = 300;

  /// from: static public final int LATENCY_VERY_HIGH
  ///
  /// Very slow network based expected synthesizer latency (> 200ms)
  static const LATENCY_VERY_HIGH = 500;

  /// from: static public final int LATENCY_VERY_LOW
  ///
  /// Very low expected synthesizer latency (< 20ms)
  static const LATENCY_VERY_LOW = 100;

  /// from: static public final int QUALITY_HIGH
  ///
  /// High, human-like quality of speech synthesis
  static const QUALITY_HIGH = 400;

  /// from: static public final int QUALITY_LOW
  ///
  /// Low, not human-like quality of speech synthesis
  static const QUALITY_LOW = 200;

  /// from: static public final int QUALITY_NORMAL
  ///
  /// Normal quality of speech synthesis
  static const QUALITY_NORMAL = 300;

  /// from: static public final int QUALITY_VERY_HIGH
  ///
  /// Very high, almost human-indistinguishable quality of speech synthesis
  static const QUALITY_VERY_HIGH = 500;

  /// from: static public final int QUALITY_VERY_LOW
  ///
  /// Very low, but still intelligible quality of speech synthesis
  static const QUALITY_VERY_LOW = 100;

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V");

  /// from: public void <init>(java.lang.String name, java.util.Locale locale, int quality, int latency, boolean requiresNetworkConnection, java.util.Set<java.lang.String> features)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Voice(jni.JniString name, jni.JniObject locale, int quality, int latency,
      bool requiresNetworkConnection, jni.JniObject features)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          name.reference,
          locale.reference,
          quality,
          latency,
          requiresNetworkConnection,
          features.reference
        ]).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_getLocale = jniAccessors.getMethodIDOf(
      _classRef, "getLocale", "()Ljava/util/Locale;");

  /// from: public java.util.Locale getLocale()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The voice's locale
  jni.JniObject getLocale() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocale, jni.JniType.objectType, []).object);

  static final _id_getQuality =
      jniAccessors.getMethodIDOf(_classRef, "getQuality", "()I");

  /// from: public int getQuality()
  ///
  /// @return The voice's quality (higher is better)
  ///@see \#QUALITY_VERY_HIGH
  ///@see \#QUALITY_HIGH
  ///@see \#QUALITY_NORMAL
  ///@see \#QUALITY_LOW
  ///@see \#QUALITY_VERY_LOW
  int getQuality() => jniAccessors.callMethodWithArgs(
      reference, _id_getQuality, jni.JniType.intType, []).integer;

  static final _id_getLatency =
      jniAccessors.getMethodIDOf(_classRef, "getLatency", "()I");

  /// from: public int getLatency()
  ///
  /// @return The voice's latency (lower is better)
  ///@see \#LATENCY_VERY_LOW
  ///@see \#LATENCY_LOW
  ///@see \#LATENCY_NORMAL
  ///@see \#LATENCY_HIGH
  ///@see \#LATENCY_VERY_HIGH
  int getLatency() => jniAccessors.callMethodWithArgs(
      reference, _id_getLatency, jni.JniType.intType, []).integer;

  static final _id_isNetworkConnectionRequired = jniAccessors.getMethodIDOf(
      _classRef, "isNetworkConnectionRequired", "()Z");

  /// from: public boolean isNetworkConnectionRequired()
  ///
  /// @return Does the Voice require a network connection to work.
  bool isNetworkConnectionRequired() => jniAccessors.callMethodWithArgs(
      reference,
      _id_isNetworkConnectionRequired,
      jni.JniType.booleanType, []).boolean;

  static final _id_getName =
      jniAccessors.getMethodIDOf(_classRef, "getName", "()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return Unique voice name.
  jni.JniString getName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_getFeatures =
      jniAccessors.getMethodIDOf(_classRef, "getFeatures", "()Ljava/util/Set;");

  /// from: public java.util.Set<java.lang.String> getFeatures()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the set of features it supports for a given voice.
  /// Features can either be framework defined, e.g.
  /// TextToSpeech.Engine\#KEY_FEATURE_NETWORK_TIMEOUT_MS or engine specific.
  /// Engine specific keys must be prefixed by the name of the engine they
  /// are intended for. These keys can be used as parameters to
  /// TextToSpeech\#speak(String, int, java.util.HashMap) and
  /// TextToSpeech\#synthesizeToFile(String, java.util.HashMap, String).
  ///
  /// Features values are strings and their values must met restrictions described in their
  /// documentation.
  ///@return Set instance. May return {@code null} on error.
  jni.JniObject getFeatures() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFeatures, jni.JniType.objectType, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;
}
