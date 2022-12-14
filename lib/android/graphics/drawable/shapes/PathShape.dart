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

import "Shape.dart" as shape_;

import "../../Path.dart" as path_;

import "../../Canvas.dart" as canvas_;

import "../../Paint.dart" as paint_;
import "../../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.drawable.shapes.PathShape
///
/// Creates geometric paths, utilizing the android.graphics.Path class.
///
/// The path can be drawn to a Canvas with its own draw() method,
/// but more graphical control is available if you instead pass
/// the PathShape to a android.graphics.drawable.ShapeDrawable.
class PathShape extends shape_.Shape {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/drawable/shapes/PathShape");
  PathShape.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/Path;FF)V");

  /// from: public void <init>(android.graphics.Path path, float stdWidth, float stdHeight)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// PathShape constructor.
  ///@param path a Path that defines the geometric paths for this shape
  /// This value must never be {@code null}.
  ///@param stdWidth the standard width for the shape. Any changes to the
  ///                 width with resize() will result in a width scaled based
  ///                 on the new width divided by this width.
  ///@param stdHeight the standard height for the shape. Any changes to the
  ///                  height with resize() will result in a height scaled based
  ///                  on the new height divided by this height.
  PathShape.ctor1(path_.Path path, double stdWidth, double stdHeight)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [path.reference, stdWidth, stdHeight]).object);

  static final _id_draw = jniAccessors.getMethodIDOf(_classRef, "draw",
      "(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V");

  /// from: public void draw(android.graphics.Canvas canvas, android.graphics.Paint paint)
  void draw(canvas_.Canvas canvas, paint_.Paint paint) =>
      jniAccessors.callMethodWithArgs(reference, _id_draw, jni.JniType.voidType,
          [canvas.reference, paint.reference]).check();

  static final _id_onResize =
      jniAccessors.getMethodIDOf(_classRef, "onResize", "(FF)V");

  /// from: protected void onResize(float width, float height)
  void onResize(double width, double height) => jniAccessors.callMethodWithArgs(
      reference, _id_onResize, jni.JniType.voidType, [width, height]).check();

  static final _id_clone1 = jniAccessors.getMethodIDOf(
      _classRef, "clone", "()Landroid/graphics/drawable/shapes/PathShape;");

  /// from: public android.graphics.drawable.shapes.PathShape clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  PathShape clone1() => PathShape.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_clone1, jni.JniType.objectType, []).object);
}
