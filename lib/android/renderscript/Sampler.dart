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

import "BaseObj.dart" as baseobj_;

import "RenderScript.dart" as renderscript_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.renderscript.Sampler
///
/// Sampler object that defines how Allocations can be read as textures within a
/// kernel. Samplers are used in conjunction with the {@code rsSample} runtime
/// function to return values from normalized coordinates.
///
/// Any Allocation used with a Sampler must have been created with android.renderscript.Allocation\#USAGE_GRAPHICS_TEXTURE; using a Sampler on
/// an android.renderscript.Allocation that was not created with android.renderscript.Allocation\#USAGE_GRAPHICS_TEXTURE is undefined.
class Sampler extends baseobj_.BaseObj {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/Sampler");
  Sampler.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getMinification = jniAccessors.getMethodIDOf(
      _classRef, "getMinification", "()Landroid/renderscript/Sampler\$Value;");

  /// from: public android.renderscript.Sampler.Value getMinification()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return minification setting for the sampler
  Sampler_Value getMinification() =>
      Sampler_Value.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMinification, jni.JniType.objectType, []).object);

  static final _id_getMagnification = jniAccessors.getMethodIDOf(
      _classRef, "getMagnification", "()Landroid/renderscript/Sampler\$Value;");

  /// from: public android.renderscript.Sampler.Value getMagnification()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return magnification setting for the sampler
  Sampler_Value getMagnification() =>
      Sampler_Value.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMagnification, jni.JniType.objectType, []).object);

  static final _id_getWrapS = jniAccessors.getMethodIDOf(
      _classRef, "getWrapS", "()Landroid/renderscript/Sampler\$Value;");

  /// from: public android.renderscript.Sampler.Value getWrapS()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return S wrapping mode for the sampler
  Sampler_Value getWrapS() =>
      Sampler_Value.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getWrapS, jni.JniType.objectType, []).object);

  static final _id_getWrapT = jniAccessors.getMethodIDOf(
      _classRef, "getWrapT", "()Landroid/renderscript/Sampler\$Value;");

  /// from: public android.renderscript.Sampler.Value getWrapT()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return T wrapping mode for the sampler
  Sampler_Value getWrapT() =>
      Sampler_Value.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getWrapT, jni.JniType.objectType, []).object);

  static final _id_getAnisotropy =
      jniAccessors.getMethodIDOf(_classRef, "getAnisotropy", "()F");

  /// from: public float getAnisotropy()
  ///
  /// @return anisotropy setting for the sampler
  double getAnisotropy() => jniAccessors.callMethodWithArgs(
      reference, _id_getAnisotropy, jni.JniType.floatType, []).float;

  static final _id_CLAMP_NEAREST = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "CLAMP_NEAREST",
      "(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;");

  /// from: static public android.renderscript.Sampler CLAMP_NEAREST(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a sampler with min and mag set to nearest and wrap modes set to
  /// clamp.
  ///@param rs Context to which the sampler will belong.
  ///@return Sampler
  static Sampler CLAMP_NEAREST(renderscript_.RenderScript rs) =>
      Sampler.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_CLAMP_NEAREST, jni.JniType.objectType, [rs.reference]).object);

  static final _id_CLAMP_LINEAR = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "CLAMP_LINEAR",
      "(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;");

  /// from: static public android.renderscript.Sampler CLAMP_LINEAR(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a sampler with min and mag set to linear and wrap modes set to
  /// clamp.
  ///@param rs Context to which the sampler will belong.
  ///@return Sampler
  static Sampler CLAMP_LINEAR(renderscript_.RenderScript rs) =>
      Sampler.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_CLAMP_LINEAR, jni.JniType.objectType, [rs.reference]).object);

  static final _id_CLAMP_LINEAR_MIP_LINEAR = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "CLAMP_LINEAR_MIP_LINEAR",
      "(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;");

  /// from: static public android.renderscript.Sampler CLAMP_LINEAR_MIP_LINEAR(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a sampler with mag set to linear, min linear mipmap linear, and
  /// wrap modes set to clamp.
  ///@param rs Context to which the sampler will belong.
  ///@return Sampler
  static Sampler CLAMP_LINEAR_MIP_LINEAR(renderscript_.RenderScript rs) =>
      Sampler.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_CLAMP_LINEAR_MIP_LINEAR,
          jni.JniType.objectType,
          [rs.reference]).object);

  static final _id_WRAP_NEAREST = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "WRAP_NEAREST",
      "(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;");

  /// from: static public android.renderscript.Sampler WRAP_NEAREST(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a sampler with min and mag set to nearest and wrap modes set to
  /// wrap.
  ///@param rs Context to which the sampler will belong.
  ///@return Sampler
  static Sampler WRAP_NEAREST(renderscript_.RenderScript rs) =>
      Sampler.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_WRAP_NEAREST, jni.JniType.objectType, [rs.reference]).object);

  static final _id_WRAP_LINEAR = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "WRAP_LINEAR",
      "(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;");

  /// from: static public android.renderscript.Sampler WRAP_LINEAR(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a sampler with min and mag set to linear and wrap modes set to
  /// wrap.
  ///@param rs Context to which the sampler will belong.
  ///@return Sampler
  static Sampler WRAP_LINEAR(renderscript_.RenderScript rs) =>
      Sampler.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_WRAP_LINEAR, jni.JniType.objectType, [rs.reference]).object);

  static final _id_WRAP_LINEAR_MIP_LINEAR = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "WRAP_LINEAR_MIP_LINEAR",
      "(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;");

  /// from: static public android.renderscript.Sampler WRAP_LINEAR_MIP_LINEAR(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a sampler with mag set to linear, min linear mipmap linear, and
  /// wrap modes set to wrap.
  ///@param rs Context to which the sampler will belong.
  ///@return Sampler
  static Sampler WRAP_LINEAR_MIP_LINEAR(renderscript_.RenderScript rs) =>
      Sampler.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_WRAP_LINEAR_MIP_LINEAR,
          jni.JniType.objectType,
          [rs.reference]).object);

  static final _id_MIRRORED_REPEAT_NEAREST = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "MIRRORED_REPEAT_NEAREST",
      "(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;");

  /// from: static public android.renderscript.Sampler MIRRORED_REPEAT_NEAREST(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a sampler with min and mag set to nearest and wrap modes set to
  /// mirrored repeat.
  ///@param rs Context to which the sampler will belong.
  ///@return Sampler
  static Sampler MIRRORED_REPEAT_NEAREST(renderscript_.RenderScript rs) =>
      Sampler.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_MIRRORED_REPEAT_NEAREST,
          jni.JniType.objectType,
          [rs.reference]).object);

  static final _id_MIRRORED_REPEAT_LINEAR = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "MIRRORED_REPEAT_LINEAR",
      "(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;");

  /// from: static public android.renderscript.Sampler MIRRORED_REPEAT_LINEAR(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a sampler with min and mag set to linear and wrap modes set to
  /// mirrored repeat.
  ///@param rs Context to which the sampler will belong.
  ///@return Sampler
  static Sampler MIRRORED_REPEAT_LINEAR(renderscript_.RenderScript rs) =>
      Sampler.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_MIRRORED_REPEAT_LINEAR,
          jni.JniType.objectType,
          [rs.reference]).object);

  static final _id_MIRRORED_REPEAT_LINEAR_MIP_LINEAR =
      jniAccessors.getStaticMethodIDOf(
          _classRef,
          "MIRRORED_REPEAT_LINEAR_MIP_LINEAR",
          "(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;");

  /// from: static public android.renderscript.Sampler MIRRORED_REPEAT_LINEAR_MIP_LINEAR(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve a sampler with min and mag set to linear and wrap modes set to
  /// mirrored repeat.
  ///@param rs Context to which the sampler will belong.
  ///@return Sampler
  static Sampler MIRRORED_REPEAT_LINEAR_MIP_LINEAR(
          renderscript_.RenderScript rs) =>
      Sampler.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_MIRRORED_REPEAT_LINEAR_MIP_LINEAR,
          jni.JniType.objectType,
          [rs.reference]).object);
}

/// from: android.renderscript.Sampler$Value
class Sampler_Value extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/Sampler\$Value");
  Sampler_Value.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/renderscript/Sampler\$Value;");

  /// from: static public android.renderscript.Sampler.Value[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(_classRef,
      "valueOf", "(Ljava/lang/String;)Landroid/renderscript/Sampler\$Value;");

  /// from: static public android.renderscript.Sampler.Value valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static Sampler_Value valueOf(jni.JniString name) =>
      Sampler_Value.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_valueOf, jni.JniType.objectType, [name.reference]).object);
}

/// from: android.renderscript.Sampler$Builder
///
/// Builder for creating non-standard samplers.  This is only necessary if
/// a Sampler with different min and mag modes is desired.
class Sampler_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/Sampler\$Builder");
  Sampler_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/renderscript/RenderScript;)V");

  /// from: public void <init>(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Sampler_Builder(renderscript_.RenderScript rs)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [rs.reference]).object);

  static final _id_setMinification = jniAccessors.getMethodIDOf(
      _classRef, "setMinification", "(Landroid/renderscript/Sampler\$Value;)V");

  /// from: public void setMinification(android.renderscript.Sampler.Value v)
  void setMinification(Sampler_Value v) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setMinification,
      jni.JniType.voidType,
      [v.reference]).check();

  static final _id_setMagnification = jniAccessors.getMethodIDOf(_classRef,
      "setMagnification", "(Landroid/renderscript/Sampler\$Value;)V");

  /// from: public void setMagnification(android.renderscript.Sampler.Value v)
  void setMagnification(Sampler_Value v) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setMagnification,
      jni.JniType.voidType,
      [v.reference]).check();

  static final _id_setWrapS = jniAccessors.getMethodIDOf(
      _classRef, "setWrapS", "(Landroid/renderscript/Sampler\$Value;)V");

  /// from: public void setWrapS(android.renderscript.Sampler.Value v)
  void setWrapS(Sampler_Value v) => jniAccessors.callMethodWithArgs(
      reference, _id_setWrapS, jni.JniType.voidType, [v.reference]).check();

  static final _id_setWrapT = jniAccessors.getMethodIDOf(
      _classRef, "setWrapT", "(Landroid/renderscript/Sampler\$Value;)V");

  /// from: public void setWrapT(android.renderscript.Sampler.Value v)
  void setWrapT(Sampler_Value v) => jniAccessors.callMethodWithArgs(
      reference, _id_setWrapT, jni.JniType.voidType, [v.reference]).check();

  static final _id_setAnisotropy =
      jniAccessors.getMethodIDOf(_classRef, "setAnisotropy", "(F)V");

  /// from: public void setAnisotropy(float v)
  void setAnisotropy(double v) => jniAccessors.callMethodWithArgs(
      reference, _id_setAnisotropy, jni.JniType.voidType, [v]).check();

  static final _id_create = jniAccessors.getMethodIDOf(
      _classRef, "create", "()Landroid/renderscript/Sampler;");

  /// from: public android.renderscript.Sampler create()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Sampler create() => Sampler.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_create, jni.JniType.objectType, []).object);
}
