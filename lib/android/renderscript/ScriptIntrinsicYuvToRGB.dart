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

import "ScriptIntrinsic.dart" as scriptintrinsic_;

import "RenderScript.dart" as renderscript_;

import "Element.dart" as element_;

import "Allocation.dart" as allocation_;

import "Script.dart" as script_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.renderscript.ScriptIntrinsicYuvToRGB
///
/// Intrinsic for converting an Android YUV buffer to RGB.
///
/// The input allocation should be supplied in a supported YUV format
/// as a YUV element Allocation. The output is RGBA; the alpha channel
/// will be set to 255.
class ScriptIntrinsicYuvToRGB extends scriptintrinsic_.ScriptIntrinsic {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/ScriptIntrinsicYuvToRGB");
  ScriptIntrinsicYuvToRGB.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(JLandroid/renderscript/RenderScript;)V");

  /// from: void <init>(long id, android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ScriptIntrinsicYuvToRGB(int id, renderscript_.RenderScript rs)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [id, rs.reference]).object);

  static final _id_create = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "create",
      "(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;");

  /// from: static public android.renderscript.ScriptIntrinsicYuvToRGB create(android.renderscript.RenderScript rs, android.renderscript.Element e)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an intrinsic for converting YUV to RGB.
  ///
  /// Supported elements types are Element\#U8_4
  ///@param rs The RenderScript context
  ///@param e Element type for output
  ///@return ScriptIntrinsicYuvToRGB
  static ScriptIntrinsicYuvToRGB create(
          renderscript_.RenderScript rs, element_.Element e) =>
      ScriptIntrinsicYuvToRGB.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_create,
          jni.JniType.objectType,
          [rs.reference, e.reference]).object);

  static final _id_setInput = jniAccessors.getMethodIDOf(
      _classRef, "setInput", "(Landroid/renderscript/Allocation;)V");

  /// from: public void setInput(android.renderscript.Allocation ain)
  ///
  /// Set the input yuv allocation, must be Element\#U8.
  ///@param ain The input allocation.
  void setInput(allocation_.Allocation ain) => jniAccessors.callMethodWithArgs(
      reference, _id_setInput, jni.JniType.voidType, [ain.reference]).check();

  static final _id_forEach4 = jniAccessors.getMethodIDOf(
      _classRef, "forEach", "(Landroid/renderscript/Allocation;)V");

  /// from: public void forEach(android.renderscript.Allocation aout)
  ///
  /// Convert the image to RGB.
  ///@param aout Output allocation. Must match creation element
  ///             type.
  void forEach4(allocation_.Allocation aout) => jniAccessors.callMethodWithArgs(
      reference, _id_forEach4, jni.JniType.voidType, [aout.reference]).check();

  static final _id_getKernelID = jniAccessors.getMethodIDOf(
      _classRef, "getKernelID", "()Landroid/renderscript/Script\$KernelID;");

  /// from: public android.renderscript.Script.KernelID getKernelID()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get a KernelID for this intrinsic kernel.
  ///@return Script.KernelID The KernelID object.
  script_.Script_KernelID getKernelID() =>
      script_.Script_KernelID.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getKernelID, jni.JniType.objectType, []).object);

  static final _id_getFieldID_Input = jniAccessors.getMethodIDOf(_classRef,
      "getFieldID_Input", "()Landroid/renderscript/Script\$FieldID;");

  /// from: public android.renderscript.Script.FieldID getFieldID_Input()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get a FieldID for the input field of this intrinsic.
  ///@return Script.FieldID The FieldID object.
  script_.Script_FieldID getFieldID_Input() =>
      script_.Script_FieldID.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFieldID_Input, jni.JniType.objectType, []).object);
}
