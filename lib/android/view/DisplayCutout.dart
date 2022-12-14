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

import "../graphics/Rect.dart" as rect_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.DisplayCutout
///
/// Represents the area of the display that is not functional for displaying content.
///
/// {@code DisplayCutout} is immutable.
class DisplayCutout extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/DisplayCutout");
  DisplayCutout.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/Rect;Ljava/util/List;)V");

  /// from: public void <init>(android.graphics.Rect safeInsets, java.util.List<android.graphics.Rect> boundingRects)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a DisplayCutout instance.
  ///@param safeInsets the insets from each edge which avoid the display cutout as returned by
  ///                   \#getSafeInsetTop() etc.
  ///@param boundingRects the bounding rects of the display cutouts as returned by
  ///               \#getBoundingRects() ()}.
  DisplayCutout(rect_.Rect safeInsets, jni.JniObject boundingRects)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [safeInsets.reference, boundingRects.reference]).object);

  static final _id_getSafeInsetTop =
      jniAccessors.getMethodIDOf(_classRef, "getSafeInsetTop", "()I");

  /// from: public int getSafeInsetTop()
  ///
  /// Returns the inset from the top which avoids the display cutout in pixels.
  int getSafeInsetTop() => jniAccessors.callMethodWithArgs(
      reference, _id_getSafeInsetTop, jni.JniType.intType, []).integer;

  static final _id_getSafeInsetBottom =
      jniAccessors.getMethodIDOf(_classRef, "getSafeInsetBottom", "()I");

  /// from: public int getSafeInsetBottom()
  ///
  /// Returns the inset from the bottom which avoids the display cutout in pixels.
  int getSafeInsetBottom() => jniAccessors.callMethodWithArgs(
      reference, _id_getSafeInsetBottom, jni.JniType.intType, []).integer;

  static final _id_getSafeInsetLeft =
      jniAccessors.getMethodIDOf(_classRef, "getSafeInsetLeft", "()I");

  /// from: public int getSafeInsetLeft()
  ///
  /// Returns the inset from the left which avoids the display cutout in pixels.
  int getSafeInsetLeft() => jniAccessors.callMethodWithArgs(
      reference, _id_getSafeInsetLeft, jni.JniType.intType, []).integer;

  static final _id_getSafeInsetRight =
      jniAccessors.getMethodIDOf(_classRef, "getSafeInsetRight", "()I");

  /// from: public int getSafeInsetRight()
  ///
  /// Returns the inset from the right which avoids the display cutout in pixels.
  int getSafeInsetRight() => jniAccessors.callMethodWithArgs(
      reference, _id_getSafeInsetRight, jni.JniType.intType, []).integer;

  static final _id_getBoundingRects = jniAccessors.getMethodIDOf(
      _classRef, "getBoundingRects", "()Ljava/util/List;");

  /// from: public java.util.List<android.graphics.Rect> getBoundingRects()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a list of {@code Rect}s, each of which is the bounding rectangle for a non-functional
  /// area on the display.
  ///
  /// There will be at most one non-functional area per short edge of the device, and none on
  /// the long edges.
  ///@return a list of bounding {@code Rect}s, one for each display cutout area.
  jni.JniObject getBoundingRects() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getBoundingRects, jni.JniType.objectType, []).object);

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
