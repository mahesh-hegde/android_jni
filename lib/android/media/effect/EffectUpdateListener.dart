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

import "Effect.dart" as effect_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.effect.EffectUpdateListener
///
/// Some effects may issue callbacks to inform the host of changes to the effect state. This is the
/// listener interface for receiving those callbacks.
class EffectUpdateListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/effect/EffectUpdateListener");
  EffectUpdateListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onEffectUpdated = jniAccessors.getMethodIDOf(_classRef,
      "onEffectUpdated", "(Landroid/media/effect/Effect;Ljava/lang/Object;)V");

  /// from: public abstract void onEffectUpdated(android.media.effect.Effect effect, java.lang.Object info)
  ///
  /// Called when the effect state is updated.
  ///@param effect The effect that has been updated.
  ///@param info A value that gives more information about the update. See the effect's
  ///             documentation for more details on what this object is.
  void onEffectUpdated(effect_.Effect effect, jni.JniObject info) =>
      jniAccessors.callMethodWithArgs(reference, _id_onEffectUpdated,
          jni.JniType.voidType, [effect.reference, info.reference]).check();
}
