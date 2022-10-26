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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.Interpolator
class Interpolator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/Interpolator");
  Interpolator.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int valueCount)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Interpolator(int valueCount)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [valueCount]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int valueCount, int frameCount)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Interpolator.ctor1(int valueCount, int frameCount)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [valueCount, frameCount]).object);

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, "reset", "(I)V");

  /// from: public void reset(int valueCount)
  ///
  /// Reset the Interpolator to have the specified number of values and an
  /// implicit keyFrame count of 2 (just a start and end). After this call the
  /// values for each keyFrame must be assigned using setKeyFrame().
  void reset(int valueCount) => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniType.voidType, [valueCount]).check();

  static final _id_reset1 =
      jniAccessors.getMethodIDOf(_classRef, "reset", "(II)V");

  /// from: public void reset(int valueCount, int frameCount)
  ///
  /// Reset the Interpolator to have the specified number of values and
  /// keyFrames. After this call the values for each keyFrame must be assigned
  /// using setKeyFrame().
  void reset1(int valueCount, int frameCount) =>
      jniAccessors.callMethodWithArgs(reference, _id_reset1,
          jni.JniType.voidType, [valueCount, frameCount]).check();

  static final _id_getKeyFrameCount =
      jniAccessors.getMethodIDOf(_classRef, "getKeyFrameCount", "()I");

  /// from: public final int getKeyFrameCount()
  int getKeyFrameCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getKeyFrameCount, jni.JniType.intType, []).integer;

  static final _id_getValueCount =
      jniAccessors.getMethodIDOf(_classRef, "getValueCount", "()I");

  /// from: public final int getValueCount()
  int getValueCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getValueCount, jni.JniType.intType, []).integer;

  static final _id_setKeyFrame =
      jniAccessors.getMethodIDOf(_classRef, "setKeyFrame", "(II[F)V");

  /// from: public void setKeyFrame(int index, int msec, float[] values)
  ///
  /// Assign the keyFrame (specified by index) a time value and an array of key
  /// values (with an implicity blend array of [0, 0, 1, 1] giving linear
  /// transition to the next set of key values).
  ///@param index The index of the key frame to assign
  ///@param msec The time (in mililiseconds) for this key frame. Based on the
  ///        SystemClock.uptimeMillis() clock
  ///@param values Array of values associated with theis key frame
  void setKeyFrame(int index, int msec, jni.JniObject values) =>
      jniAccessors.callMethodWithArgs(reference, _id_setKeyFrame,
          jni.JniType.voidType, [index, msec, values.reference]).check();

  static final _id_setKeyFrame1 =
      jniAccessors.getMethodIDOf(_classRef, "setKeyFrame", "(II[F[F)V");

  /// from: public void setKeyFrame(int index, int msec, float[] values, float[] blend)
  ///
  /// Assign the keyFrame (specified by index) a time value and an array of key
  /// values and blend array.
  ///@param index The index of the key frame to assign
  ///@param msec The time (in mililiseconds) for this key frame. Based on the
  ///        SystemClock.uptimeMillis() clock
  ///@param values Array of values associated with theis key frame
  ///@param blend (may be null) Optional array of 4 blend values
  void setKeyFrame1(
          int index, int msec, jni.JniObject values, jni.JniObject blend) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setKeyFrame1,
          jni.JniType.voidType,
          [index, msec, values.reference, blend.reference]).check();

  static final _id_setRepeatMirror =
      jniAccessors.getMethodIDOf(_classRef, "setRepeatMirror", "(FZ)V");

  /// from: public void setRepeatMirror(float repeatCount, boolean mirror)
  ///
  /// Set a repeat count (which may be fractional) for the interpolator, and
  /// whether the interpolator should mirror its repeats. The default settings
  /// are repeatCount = 1, and mirror = false.
  void setRepeatMirror(double repeatCount, bool mirror) =>
      jniAccessors.callMethodWithArgs(reference, _id_setRepeatMirror,
          jni.JniType.voidType, [repeatCount, mirror]).check();

  static final _id_timeToValues = jniAccessors.getMethodIDOf(
      _classRef, "timeToValues", "([F)Landroid/graphics/Interpolator\$Result;");

  /// from: public android.graphics.Interpolator.Result timeToValues(float[] values)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Calls timeToValues(msec, values) with the msec set to now (by calling
  /// (int)SystemClock.uptimeMillis().)
  Interpolator_Result timeToValues(jni.JniObject values) =>
      Interpolator_Result.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_timeToValues, jni.JniType.objectType, [values.reference]).object);

  static final _id_timeToValues1 = jniAccessors.getMethodIDOf(_classRef,
      "timeToValues", "(I[F)Landroid/graphics/Interpolator\$Result;");

  /// from: public android.graphics.Interpolator.Result timeToValues(int msec, float[] values)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Given a millisecond time value (msec), return the interpolated values and
  /// return whether the specified time was within the range of key times
  /// (NORMAL), was before the first key time (FREEZE_START) or after the last
  /// key time (FREEZE_END). In any event, computed values are always returned.
  ///@param msec The time (in milliseconds) used to sample into the
  ///        Interpolator. Based on the SystemClock.uptimeMillis() clock
  ///@param values Where to write the computed values (may be NULL).
  ///@return how the values were computed (even if values == null)
  Interpolator_Result timeToValues1(int msec, jni.JniObject values) =>
      Interpolator_Result.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_timeToValues1,
          jni.JniType.objectType,
          [msec, values.reference]).object);

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();
}

/// from: android.graphics.Interpolator$Result
class Interpolator_Result extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/Interpolator\$Result");
  Interpolator_Result.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/graphics/Interpolator\$Result;");

  /// from: static public android.graphics.Interpolator.Result[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(_classRef,
      "valueOf", "(Ljava/lang/String;)Landroid/graphics/Interpolator\$Result;");

  /// from: static public android.graphics.Interpolator.Result valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static Interpolator_Result valueOf(jni.JniString name) =>
      Interpolator_Result.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_valueOf,
          jni.JniType.objectType,
          [name.reference]).object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: private void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Interpolator_Result()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}
