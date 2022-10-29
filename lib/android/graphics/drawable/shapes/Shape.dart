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

import "../../Canvas.dart" as canvas_;

import "../../Paint.dart" as paint_;

import "../../Outline.dart" as outline_;
import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.drawable.shapes.Shape
///
/// Defines a generic graphical "shape."
///
/// Any Shape can be drawn to a Canvas with its own draw() method, but more
/// graphical control is available if you instead pass it to a
/// android.graphics.drawable.ShapeDrawable.
///
/// Custom Shape classes must implement \#clone() and return an instance
/// of the custom Shape class.
class Shape extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/drawable/shapes/Shape");
  Shape.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Shape()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getWidth =
      jniAccessors.getMethodIDOf(_classRef, "getWidth", "()F");

  /// from: public final float getWidth()
  ///
  /// Returns the width of the Shape.
  double getWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getWidth, jni.JniType.floatType, []).float;

  static final _id_getHeight =
      jniAccessors.getMethodIDOf(_classRef, "getHeight", "()F");

  /// from: public final float getHeight()
  ///
  /// Returns the height of the Shape.
  double getHeight() => jniAccessors.callMethodWithArgs(
      reference, _id_getHeight, jni.JniType.floatType, []).float;

  static final _id_draw = jniAccessors.getMethodIDOf(_classRef, "draw",
      "(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V");

  /// from: public abstract void draw(android.graphics.Canvas canvas, android.graphics.Paint paint)
  ///
  /// Draws this shape into the provided Canvas, with the provided Paint.
  ///
  /// Before calling this, you must call \#resize(float,float).
  ///@param canvas the Canvas within which this shape should be drawn
  ///@param paint the Paint object that defines this shape's characteristics
  void draw(canvas_.Canvas canvas, paint_.Paint paint) =>
      jniAccessors.callMethodWithArgs(reference, _id_draw, jni.JniType.voidType,
          [canvas.reference, paint.reference]).check();

  static final _id_resize =
      jniAccessors.getMethodIDOf(_classRef, "resize", "(FF)V");

  /// from: public final void resize(float width, float height)
  ///
  /// Resizes the dimensions of this shape.
  ///
  /// Must be called before \#draw(Canvas,Paint).
  ///@param width the width of the shape (in pixels)
  ///@param height the height of the shape (in pixels)
  void resize(double width, double height) => jniAccessors.callMethodWithArgs(
      reference, _id_resize, jni.JniType.voidType, [width, height]).check();

  static final _id_hasAlpha =
      jniAccessors.getMethodIDOf(_classRef, "hasAlpha", "()Z");

  /// from: public boolean hasAlpha()
  ///
  /// Checks whether the Shape is opaque.
  ///
  /// Default impl returns {@code true}. Override if your subclass can be
  /// opaque.
  ///@return true if any part of the drawable is _not_ opaque.
  bool hasAlpha() => jniAccessors.callMethodWithArgs(
      reference, _id_hasAlpha, jni.JniType.booleanType, []).boolean;

  static final _id_onResize =
      jniAccessors.getMethodIDOf(_classRef, "onResize", "(FF)V");

  /// from: protected void onResize(float width, float height)
  ///
  /// Callback method called when \#resize(float,float) is executed.
  ///@param width the new width of the Shape
  ///@param height the new height of the Shape
  void onResize(double width, double height) => jniAccessors.callMethodWithArgs(
      reference, _id_onResize, jni.JniType.voidType, [width, height]).check();

  static final _id_getOutline = jniAccessors.getMethodIDOf(
      _classRef, "getOutline", "(Landroid/graphics/Outline;)V");

  /// from: public void getOutline(android.graphics.Outline outline)
  ///
  /// Computes the Outline of the shape and return it in the supplied Outline
  /// parameter. The default implementation does nothing and {@code outline}
  /// is not changed.
  ///@param outline the Outline to be populated with the result. Must be
  ///                non-{@code null}.
  ///
  /// This value must never be {@code null}.
  void getOutline(outline_.Outline outline) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getOutline,
      jni.JniType.voidType,
      [outline.reference]).check();

  static final _id_clone = jniAccessors.getMethodIDOf(
      _classRef, "clone", "()Landroid/graphics/drawable/shapes/Shape;");

  /// from: public android.graphics.drawable.shapes.Shape clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Shape clone() => Shape.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_clone, jni.JniType.objectType, []).object);
}
