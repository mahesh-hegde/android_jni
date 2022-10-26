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

import "../../graphics/Matrix.dart" as matrix_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.animation.Transformation
///
/// Defines the transformation to be applied at
/// one point in time of an Animation.
class Transformation extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/animation/Transformation");
  Transformation.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int TYPE_ALPHA
  ///
  /// Indicates a transformation that applies an alpha only (uses an identity matrix.)
  static const TYPE_ALPHA = 1;

  /// from: static public final int TYPE_BOTH
  ///
  /// Indicates a transformation that applies an alpha and a matrix.
  static const TYPE_BOTH = 3;

  /// from: static public final int TYPE_IDENTITY
  ///
  /// Indicates a transformation that has no effect (alpha = 1 and identity matrix.)
  static const TYPE_IDENTITY = 0;

  /// from: static public final int TYPE_MATRIX
  ///
  /// Indicates a transformation that applies a matrix only (alpha = 1.)
  static const TYPE_MATRIX = 2;

  static final _id_mAlpha = jniAccessors.getFieldIDOf(_classRef, "mAlpha", "F");

  /// from: protected float mAlpha
  double get mAlpha =>
      jniAccessors.getField(reference, _id_mAlpha, jni.JniType.floatType).float;

  /// from: protected float mAlpha
  set mAlpha(double value) =>
      jniEnv.SetFloatField(reference, _id_mAlpha, value);

  static final _id_mMatrix = jniAccessors.getFieldIDOf(
      _classRef, "mMatrix", "Landroid/graphics/Matrix;");

  /// from: protected android.graphics.Matrix mMatrix
  /// The returned object must be deleted after use, by calling the `delete` method.
  matrix_.Matrix get mMatrix => matrix_.Matrix.fromRef(jniAccessors
      .getField(reference, _id_mMatrix, jni.JniType.objectType)
      .object);

  /// from: protected android.graphics.Matrix mMatrix
  /// The returned object must be deleted after use, by calling the `delete` method.
  set mMatrix(matrix_.Matrix value) =>
      jniEnv.SetObjectField(reference, _id_mMatrix, value.reference);

  static final _id_mTransformationType =
      jniAccessors.getFieldIDOf(_classRef, "mTransformationType", "I");

  /// from: protected int mTransformationType
  int get mTransformationType => jniAccessors
      .getField(reference, _id_mTransformationType, jni.JniType.intType)
      .integer;

  /// from: protected int mTransformationType
  set mTransformationType(int value) =>
      jniEnv.SetIntField(reference, _id_mTransformationType, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new transformation with alpha = 1 and the identity matrix.
  Transformation()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_clear =
      jniAccessors.getMethodIDOf(_classRef, "clear", "()V");

  /// from: public void clear()
  ///
  /// Reset the transformation to a state that leaves the object
  /// being animated in an unmodified state. The transformation type is
  /// \#TYPE_BOTH by default.
  void clear() => jniAccessors.callMethodWithArgs(
      reference, _id_clear, jni.JniType.voidType, []).check();

  static final _id_getTransformationType =
      jniAccessors.getMethodIDOf(_classRef, "getTransformationType", "()I");

  /// from: public int getTransformationType()
  ///
  /// Indicates the nature of this transformation.
  ///@return \#TYPE_ALPHA, \#TYPE_MATRIX,
  ///         \#TYPE_BOTH or \#TYPE_IDENTITY.
  int getTransformationType() => jniAccessors.callMethodWithArgs(
      reference, _id_getTransformationType, jni.JniType.intType, []).integer;

  static final _id_setTransformationType =
      jniAccessors.getMethodIDOf(_classRef, "setTransformationType", "(I)V");

  /// from: public void setTransformationType(int transformationType)
  ///
  /// Sets the transformation type.
  ///@param transformationType One of \#TYPE_ALPHA,
  ///        \#TYPE_MATRIX, \#TYPE_BOTH or
  ///        \#TYPE_IDENTITY.
  void setTransformationType(int transformationType) =>
      jniAccessors.callMethodWithArgs(reference, _id_setTransformationType,
          jni.JniType.voidType, [transformationType]).check();

  static final _id_set0 = jniAccessors.getMethodIDOf(
      _classRef, "set", "(Landroid/view/animation/Transformation;)V");

  /// from: public void set(android.view.animation.Transformation t)
  ///
  /// Clones the specified transformation.
  ///@param t The transformation to clone.
  void set0(Transformation t) => jniAccessors.callMethodWithArgs(
      reference, _id_set0, jni.JniType.voidType, [t.reference]).check();

  static final _id_compose = jniAccessors.getMethodIDOf(
      _classRef, "compose", "(Landroid/view/animation/Transformation;)V");

  /// from: public void compose(android.view.animation.Transformation t)
  ///
  /// Apply this Transformation to an existing Transformation, e.g.&nbsp;apply
  /// a scale effect to something that has already been rotated.
  ///@param t
  void compose(Transformation t) => jniAccessors.callMethodWithArgs(
      reference, _id_compose, jni.JniType.voidType, [t.reference]).check();

  static final _id_getMatrix = jniAccessors.getMethodIDOf(
      _classRef, "getMatrix", "()Landroid/graphics/Matrix;");

  /// from: public android.graphics.Matrix getMatrix()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The 3x3 Matrix representing the trnasformation to apply to the
  /// coordinates of the object being animated
  matrix_.Matrix getMatrix() =>
      matrix_.Matrix.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMatrix, jni.JniType.objectType, []).object);

  static final _id_setAlpha =
      jniAccessors.getMethodIDOf(_classRef, "setAlpha", "(F)V");

  /// from: public void setAlpha(float alpha)
  ///
  /// Sets the degree of transparency
  ///@param alpha 1.0 means fully opaqe and 0.0 means fully transparent
  ///
  /// Value is between 0.0 and 1.0 inclusive
  void setAlpha(double alpha) => jniAccessors.callMethodWithArgs(
      reference, _id_setAlpha, jni.JniType.voidType, [alpha]).check();

  static final _id_getAlpha =
      jniAccessors.getMethodIDOf(_classRef, "getAlpha", "()F");

  /// from: public float getAlpha()
  ///
  /// @return The degree of transparency
  double getAlpha() => jniAccessors.callMethodWithArgs(
      reference, _id_getAlpha, jni.JniType.floatType, []).float;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_toShortString = jniAccessors.getMethodIDOf(
      _classRef, "toShortString", "()Ljava/lang/String;");

  /// from: public java.lang.String toShortString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a string representation of the transformation in a compact form.
  jni.JniString toShortString() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toShortString, jni.JniType.objectType, []).object);
}
