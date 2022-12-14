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

import "Gesture.dart" as gesture_;

import "GestureStroke.dart" as gesturestroke_;

import "OrientedBoundingBox.dart" as orientedboundingbox_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.gesture.GestureUtils
///
/// Utility functions for gesture processing & analysis, including methods for:
/// <ul>
/// <li>feature extraction (e.g., samplers and those for calculating bounding
/// boxes and gesture path lengths);
/// <li>geometric transformation (e.g., translation, rotation and scaling);
/// <li>gesture similarity comparison (e.g., calculating Euclidean or Cosine
/// distances between two gestures).
/// </ul>
class GestureUtils extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/gesture/GestureUtils");
  GestureUtils.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_spatialSampling = jniAccessors.getStaticMethodIDOf(
      _classRef, "spatialSampling", "(Landroid/gesture/Gesture;I)[F");

  /// from: static public float[] spatialSampling(android.gesture.Gesture gesture, int bitmapSize)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Samples the gesture spatially by rendering the gesture into a 2D
  /// grayscale bitmap. Scales the gesture to fit the size of the bitmap.
  /// The scaling does not necessarily keep the aspect ratio of the gesture.
  ///@param gesture the gesture to be sampled
  ///@param bitmapSize the size of the bitmap
  ///@return a bitmapSize x bitmapSize grayscale bitmap that is represented
  ///         as a 1D array. The float at index i represents the grayscale
  ///         value at pixel [i%bitmapSize, i/bitmapSize]
  static jni.JniObject spatialSampling(
          gesture_.Gesture gesture, int bitmapSize) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_spatialSampling,
          jni.JniType.objectType,
          [gesture.reference, bitmapSize]).object);

  static final _id_spatialSampling1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "spatialSampling", "(Landroid/gesture/Gesture;IZ)[F");

  /// from: static public float[] spatialSampling(android.gesture.Gesture gesture, int bitmapSize, boolean keepAspectRatio)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Samples the gesture spatially by rendering the gesture into a 2D
  /// grayscale bitmap. Scales the gesture to fit the size of the bitmap.
  ///@param gesture the gesture to be sampled
  ///@param bitmapSize the size of the bitmap
  ///@param keepAspectRatio if the scaling should keep the gesture's
  ///        aspect ratio
  ///@return a bitmapSize x bitmapSize grayscale bitmap that is represented
  ///         as a 1D array. The float at index i represents the grayscale
  ///         value at pixel [i%bitmapSize, i/bitmapSize]
  static jni.JniObject spatialSampling1(
          gesture_.Gesture gesture, int bitmapSize, bool keepAspectRatio) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_spatialSampling1,
          jni.JniType.objectType,
          [gesture.reference, bitmapSize, keepAspectRatio]).object);

  static final _id_temporalSampling = jniAccessors.getStaticMethodIDOf(
      _classRef, "temporalSampling", "(Landroid/gesture/GestureStroke;I)[F");

  /// from: static public float[] temporalSampling(android.gesture.GestureStroke stroke, int numPoints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Samples a stroke temporally into a given number of evenly-distributed
  /// points.
  ///@param stroke the gesture stroke to be sampled
  ///@param numPoints the number of points
  ///@return the sampled points in the form of [x1, y1, x2, y2, ..., xn, yn]
  static jni.JniObject temporalSampling(
          gesturestroke_.GestureStroke stroke, int numPoints) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_temporalSampling,
          jni.JniType.objectType,
          [stroke.reference, numPoints]).object);

  static final _id_computeOrientedBoundingBox =
      jniAccessors.getStaticMethodIDOf(_classRef, "computeOrientedBoundingBox",
          "(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;");

  /// from: static public android.gesture.OrientedBoundingBox computeOrientedBoundingBox(java.util.ArrayList<android.gesture.GesturePoint> originalPoints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Computes an oriented, minimum bounding box of a set of points.
  ///@param originalPoints
  ///@return an oriented bounding box
  static orientedboundingbox_.OrientedBoundingBox computeOrientedBoundingBox(
          jni.JniObject originalPoints) =>
      orientedboundingbox_.OrientedBoundingBox.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_computeOrientedBoundingBox,
              jni.JniType.objectType, [originalPoints.reference]).object);

  static final _id_computeOrientedBoundingBox1 =
      jniAccessors.getStaticMethodIDOf(_classRef, "computeOrientedBoundingBox",
          "([F)Landroid/gesture/OrientedBoundingBox;");

  /// from: static public android.gesture.OrientedBoundingBox computeOrientedBoundingBox(float[] originalPoints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Computes an oriented, minimum bounding box of a set of points.
  ///@param originalPoints
  ///@return an oriented bounding box
  static orientedboundingbox_.OrientedBoundingBox computeOrientedBoundingBox1(
          jni.JniObject originalPoints) =>
      orientedboundingbox_.OrientedBoundingBox.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_computeOrientedBoundingBox1,
              jni.JniType.objectType, [originalPoints.reference]).object);
}
