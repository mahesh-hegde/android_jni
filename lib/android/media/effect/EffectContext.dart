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

import "EffectFactory.dart" as effectfactory_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.effect.EffectContext
///
/// An EffectContext keeps all necessary state information to run Effects within a Open GL ES 2.0
/// context.
///
///
/// Every EffectContext is bound to one GL context. The application is responsible for creating
/// this EGL context, and making it current before applying any effect. If your EGL context is
/// destroyed, the EffectContext becomes invalid and any effects bound to this context can no longer
/// be used. If you switch to another EGL context, you must create a new EffectContext. Each Effect
/// is bound to a single EffectContext, and can only be executed in that context.
///
class EffectContext extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/effect/EffectContext");
  EffectContext.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  EffectContext()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_createWithCurrentGlContext =
      jniAccessors.getStaticMethodIDOf(_classRef, "createWithCurrentGlContext",
          "()Landroid/media/effect/EffectContext;");

  /// from: static public android.media.effect.EffectContext createWithCurrentGlContext()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a context within the current GL context.
  ///
  /// Binds the EffectContext to the current OpenGL context. All subsequent calls to the
  /// EffectContext must be made in the GL context that was active during creation.
  /// When you have finished using a context, you must call \#release(). to dispose of all
  /// resources associated with this context.
  ///
  static EffectContext createWithCurrentGlContext() =>
      EffectContext.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_createWithCurrentGlContext, jni.JniType.objectType, []).object);

  static final _id_getFactory = jniAccessors.getMethodIDOf(
      _classRef, "getFactory", "()Landroid/media/effect/EffectFactory;");

  /// from: public android.media.effect.EffectFactory getFactory()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the EffectFactory for this context.
  ///
  /// The EffectFactory returned from this method allows instantiating new effects within this
  /// context.
  ///
  ///@return The EffectFactory instance for this context.
  effectfactory_.EffectFactory getFactory() =>
      effectfactory_.EffectFactory.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFactory, jni.JniType.objectType, []).object);

  static final _id_release =
      jniAccessors.getMethodIDOf(_classRef, "release", "()V");

  /// from: public void release()
  ///
  /// Releases the context.
  ///
  /// Releases all the resources and effects associated with the EffectContext. This renders the
  /// context and all the effects bound to this context invalid. You must no longer use the context
  /// or any of its bound effects after calling release().
  ///
  ///
  /// Note that this method must be called with the proper EGL context made current, as the
  /// EffectContext and its effects may release internal GL resources.
  ///
  void release() => jniAccessors.callMethodWithArgs(
      reference, _id_release, jni.JniType.voidType, []).check();
}
