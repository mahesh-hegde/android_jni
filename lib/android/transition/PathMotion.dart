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

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../graphics/Path.dart" as path_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.transition.PathMotion
///
/// This base class can be extended to provide motion along a Path to Transitions.
///
///
/// Transitions such as android.transition.ChangeBounds move Views, typically
/// in a straight path between the start and end positions. Applications that desire to
/// have these motions move in a curve can change how Views interpolate in two dimensions
/// by extending PathMotion and implementing \#getPath(float, float, float, float).
///
///
/// This may be used in XML as an element inside a transition.
///
/// <pre>
/// {@code
/// <changeBounds>
///     <pathMotion class="my.app.transition.MyPathMotion"/>
/// </changeBounds>
/// }
/// </pre>
class PathMotion extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/transition/PathMotion");
  PathMotion.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  PathMotion()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  PathMotion.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_getPath = jniAccessors.getMethodIDOf(
      _classRef, "getPath", "(FFFF)Landroid/graphics/Path;");

  /// from: public abstract android.graphics.Path getPath(float startX, float startY, float endX, float endY)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Provide a Path to interpolate between two points <code>(startX, startY)</code> and
  /// <code>(endX, endY)</code>. This allows controlled curved motion along two dimensions.
  ///@param startX The x coordinate of the starting point.
  ///@param startY The y coordinate of the starting point.
  ///@param endX The x coordinate of the ending point.
  ///@param endY The y coordinate of the ending point.
  ///@return A Path along which the points should be interpolated. The returned Path
  /// must start at point <code>(startX, startY)</code>, typically using
  /// android.graphics.Path\#moveTo(float, float) and end at <code>(endX, endY)</code>.
  path_.Path getPath(double startX, double startY, double endX, double endY) =>
      path_.Path.fromRef(jniAccessors.callMethodWithArgs(reference, _id_getPath,
          jni.JniType.objectType, [startX, startY, endX, endY]).object);
}
