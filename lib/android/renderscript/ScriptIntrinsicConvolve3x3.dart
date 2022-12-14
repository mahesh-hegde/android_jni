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

import "ScriptIntrinsic.dart" as scriptintrinsic_;

import "RenderScript.dart" as renderscript_;

import "Element.dart" as element_;

import "Allocation.dart" as allocation_;

import "Script.dart" as script_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.renderscript.ScriptIntrinsicConvolve3x3
///
/// Intrinsic for applying a 3x3 convolve to an allocation.
class ScriptIntrinsicConvolve3x3 extends scriptintrinsic_.ScriptIntrinsic {
  static final _classRef = jniAccessors
      .getClassOf("android/renderscript/ScriptIntrinsicConvolve3x3");
  ScriptIntrinsicConvolve3x3.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_create = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "create",
      "(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;");

  /// from: static public android.renderscript.ScriptIntrinsicConvolve3x3 create(android.renderscript.RenderScript rs, android.renderscript.Element e)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Supported elements types are Element\#U8, Element\#U8_2, Element\#U8_3, Element\#U8_4,
  /// Element\#F32, Element\#F32_2, Element\#F32_3, and Element\#F32_4.
  ///
  ///  The default coefficients are:
  /// <code>
  ///  [ 0,  0,  0 ]
  ///  [ 0,  1,  0 ]
  ///  [ 0,  0,  0 ]
  /// </code>
  ///@param rs The RenderScript context
  ///@param e Element type for intputs and outputs
  ///@return ScriptIntrinsicConvolve3x3
  static ScriptIntrinsicConvolve3x3 create(
          renderscript_.RenderScript rs, element_.Element e) =>
      ScriptIntrinsicConvolve3x3.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_create,
          jni.JniType.objectType,
          [rs.reference, e.reference]).object);

  static final _id_setInput = jniAccessors.getMethodIDOf(
      _classRef, "setInput", "(Landroid/renderscript/Allocation;)V");

  /// from: public void setInput(android.renderscript.Allocation ain)
  ///
  /// Set the input of the 3x3 convolve.
  /// Must match the element type supplied during create.
  ///@param ain The input allocation.
  void setInput(allocation_.Allocation ain) => jniAccessors.callMethodWithArgs(
      reference, _id_setInput, jni.JniType.voidType, [ain.reference]).check();

  static final _id_setCoefficients =
      jniAccessors.getMethodIDOf(_classRef, "setCoefficients", "([F)V");

  /// from: public void setCoefficients(float[] v)
  ///
  /// Set the coefficients for the convolve.
  ///
  ///  The convolve layout is:
  /// <code>
  ///  [ 0,  1,  2 ]
  ///  [ 3,  4,  5 ]
  ///  [ 6,  7,  8 ]
  /// </code>
  ///@param v The array of coefficients to set
  void setCoefficients(jni.JniObject v) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setCoefficients,
      jni.JniType.voidType,
      [v.reference]).check();

  static final _id_forEach4 = jniAccessors.getMethodIDOf(
      _classRef, "forEach", "(Landroid/renderscript/Allocation;)V");

  /// from: public void forEach(android.renderscript.Allocation aout)
  ///
  /// Apply the filter to the input and save to the specified
  /// allocation.
  ///@param aout Output allocation. Must match creation element
  ///             type.
  void forEach4(allocation_.Allocation aout) => jniAccessors.callMethodWithArgs(
      reference, _id_forEach4, jni.JniType.voidType, [aout.reference]).check();

  static final _id_forEach5 = jniAccessors.getMethodIDOf(_classRef, "forEach",
      "(Landroid/renderscript/Allocation;Landroid/renderscript/Script\$LaunchOptions;)V");

  /// from: public void forEach(android.renderscript.Allocation aout, android.renderscript.Script.LaunchOptions opt)
  ///
  /// Apply the filter to the input and save to the specified
  /// allocation.
  ///@param aout Output allocation. Must match creation element
  ///             type.
  ///@param opt LaunchOptions for clipping
  void forEach5(
          allocation_.Allocation aout, script_.Script_LaunchOptions opt) =>
      jniAccessors.callMethodWithArgs(reference, _id_forEach5,
          jni.JniType.voidType, [aout.reference, opt.reference]).check();

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
