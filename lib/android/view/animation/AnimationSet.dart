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

import "Animation.dart" as animation_;

import "../../content/Context.dart" as context_;

import "../../util/AttributeSet.dart" as attributeset_;

import "Transformation.dart" as transformation_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.animation.AnimationSet
///
/// Represents a group of Animations that should be played together.
/// The transformation of each individual animation are composed
/// together into a single transform.
/// If AnimationSet sets any properties that its children also set
/// (for example, duration or fillBefore), the values of AnimationSet
/// override the child values.
///
/// The way that AnimationSet inherits behavior from Animation is important to
/// understand. Some of the Animation attributes applied to AnimationSet affect the
/// AnimationSet itself, some are pushed down to the children, and some are ignored,
/// as follows:
/// <ul>
///     <li>duration, repeatMode, fillBefore, fillAfter: These properties, when set
///     on an AnimationSet object, will be pushed down to all child animations.</li>
///     <li>repeatCount, fillEnabled: These properties are ignored for AnimationSet.</li>
///     <li>startOffset, shareInterpolator: These properties apply to the AnimationSet itself.</li>
/// </ul>
/// Starting with android.os.Build.VERSION_CODES\#ICE_CREAM_SANDWICH,
/// the behavior of these properties is the same in XML resources and at runtime (prior to that
/// release, the values set in XML were ignored for AnimationSet). That is, calling
/// <code>setDuration(500)</code> on an AnimationSet has the same effect as declaring
/// <code>android:duration="500"</code> in an XML resource for an AnimationSet object.
///
class AnimationSet extends animation_.Animation {
  static final _classRef =
      jniAccessors.getClassOf("android/view/animation/AnimationSet");
  AnimationSet.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor used when an AnimationSet is loaded from a resource.
  ///@param context Application context to use
  ///@param attrs Attribute set from which to read values
  AnimationSet.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Z)V");

  /// from: public void <init>(boolean shareInterpolator)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor to use when building an AnimationSet from code
  ///@param shareInterpolator Pass true if all of the animations in this set
  ///        should use the interpolator associated with this AnimationSet.
  ///        Pass false if each animation should use its own interpolator.
  AnimationSet.ctor2(bool shareInterpolator)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor2, [shareInterpolator]).object);

  static final _id_clone1 = jniAccessors.getMethodIDOf(
      _classRef, "clone", "()Landroid/view/animation/AnimationSet;");

  /// from: protected android.view.animation.AnimationSet clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AnimationSet clone1() => AnimationSet.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_clone1, jni.JniType.objectType, []).object);

  static final _id_setFillAfter =
      jniAccessors.getMethodIDOf(_classRef, "setFillAfter", "(Z)V");

  /// from: public void setFillAfter(boolean fillAfter)
  void setFillAfter(bool fillAfter) => jniAccessors.callMethodWithArgs(
      reference, _id_setFillAfter, jni.JniType.voidType, [fillAfter]).check();

  static final _id_setFillBefore =
      jniAccessors.getMethodIDOf(_classRef, "setFillBefore", "(Z)V");

  /// from: public void setFillBefore(boolean fillBefore)
  void setFillBefore(bool fillBefore) => jniAccessors.callMethodWithArgs(
      reference, _id_setFillBefore, jni.JniType.voidType, [fillBefore]).check();

  static final _id_setRepeatMode =
      jniAccessors.getMethodIDOf(_classRef, "setRepeatMode", "(I)V");

  /// from: public void setRepeatMode(int repeatMode)
  void setRepeatMode(int repeatMode) => jniAccessors.callMethodWithArgs(
      reference, _id_setRepeatMode, jni.JniType.voidType, [repeatMode]).check();

  static final _id_setStartOffset =
      jniAccessors.getMethodIDOf(_classRef, "setStartOffset", "(J)V");

  /// from: public void setStartOffset(long startOffset)
  void setStartOffset(int startOffset) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setStartOffset,
      jni.JniType.voidType,
      [startOffset]).check();

  static final _id_setDuration =
      jniAccessors.getMethodIDOf(_classRef, "setDuration", "(J)V");

  /// from: public void setDuration(long durationMillis)
  ///
  /// Sets the duration of every child animation.
  ///
  ///@param durationMillis the duration of the animation, in milliseconds, for
  ///        every child in this set
  void setDuration(int durationMillis) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setDuration,
      jni.JniType.voidType,
      [durationMillis]).check();

  static final _id_addAnimation = jniAccessors.getMethodIDOf(
      _classRef, "addAnimation", "(Landroid/view/animation/Animation;)V");

  /// from: public void addAnimation(android.view.animation.Animation a)
  ///
  /// Add a child animation to this animation set.
  /// The transforms of the child animations are applied in the order
  /// that they were added
  ///@param a Animation to add.
  void addAnimation(animation_.Animation a) => jniAccessors.callMethodWithArgs(
      reference, _id_addAnimation, jni.JniType.voidType, [a.reference]).check();

  static final _id_setStartTime =
      jniAccessors.getMethodIDOf(_classRef, "setStartTime", "(J)V");

  /// from: public void setStartTime(long startTimeMillis)
  ///
  /// Sets the start time of this animation and all child animations
  ///@see android.view.animation.Animation\#setStartTime(long)
  void setStartTime(int startTimeMillis) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setStartTime,
      jni.JniType.voidType,
      [startTimeMillis]).check();

  static final _id_getStartTime =
      jniAccessors.getMethodIDOf(_classRef, "getStartTime", "()J");

  /// from: public long getStartTime()
  int getStartTime() => jniAccessors.callMethodWithArgs(
      reference, _id_getStartTime, jni.JniType.longType, []).long;

  static final _id_restrictDuration =
      jniAccessors.getMethodIDOf(_classRef, "restrictDuration", "(J)V");

  /// from: public void restrictDuration(long durationMillis)
  void restrictDuration(int durationMillis) => jniAccessors.callMethodWithArgs(
      reference,
      _id_restrictDuration,
      jni.JniType.voidType,
      [durationMillis]).check();

  static final _id_getDuration =
      jniAccessors.getMethodIDOf(_classRef, "getDuration", "()J");

  /// from: public long getDuration()
  ///
  /// The duration of an AnimationSet is defined to be the
  /// duration of the longest child animation.
  ///@see android.view.animation.Animation\#getDuration()
  int getDuration() => jniAccessors.callMethodWithArgs(
      reference, _id_getDuration, jni.JniType.longType, []).long;

  static final _id_computeDurationHint =
      jniAccessors.getMethodIDOf(_classRef, "computeDurationHint", "()J");

  /// from: public long computeDurationHint()
  ///
  /// The duration hint of an animation set is the maximum of the duration
  /// hints of all of its component animations.
  ///@see android.view.animation.Animation\#computeDurationHint
  int computeDurationHint() => jniAccessors.callMethodWithArgs(
      reference, _id_computeDurationHint, jni.JniType.longType, []).long;

  static final _id_getTransformation = jniAccessors.getMethodIDOf(_classRef,
      "getTransformation", "(JLandroid/view/animation/Transformation;)Z");

  /// from: public boolean getTransformation(long currentTime, android.view.animation.Transformation t)
  ///
  /// The transformation of an animation set is the concatenation of all of its
  /// component animations.
  ///@see android.view.animation.Animation\#getTransformation
  bool getTransformation(int currentTime, transformation_.Transformation t) =>
      jniAccessors.callMethodWithArgs(reference, _id_getTransformation,
          jni.JniType.booleanType, [currentTime, t.reference]).boolean;

  static final _id_scaleCurrentDuration =
      jniAccessors.getMethodIDOf(_classRef, "scaleCurrentDuration", "(F)V");

  /// from: public void scaleCurrentDuration(float scale)
  ///
  /// @see android.view.animation.Animation\#scaleCurrentDuration(float)
  void scaleCurrentDuration(double scale) => jniAccessors.callMethodWithArgs(
      reference,
      _id_scaleCurrentDuration,
      jni.JniType.voidType,
      [scale]).check();

  static final _id_initialize =
      jniAccessors.getMethodIDOf(_classRef, "initialize", "(IIII)V");

  /// from: public void initialize(int width, int height, int parentWidth, int parentHeight)
  ///
  /// @see android.view.animation.Animation\#initialize(int, int, int, int)
  void initialize(int width, int height, int parentWidth, int parentHeight) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_initialize,
          jni.JniType.voidType,
          [width, height, parentWidth, parentHeight]).check();

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, "reset", "()V");

  /// from: public void reset()
  void reset() => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniType.voidType, []).check();

  static final _id_getAnimations = jniAccessors.getMethodIDOf(
      _classRef, "getAnimations", "()Ljava/util/List;");

  /// from: public java.util.List<android.view.animation.Animation> getAnimations()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return All the child animations in this AnimationSet. Note that
  /// this may include other AnimationSets, which are not expanded.
  jni.JniObject getAnimations() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAnimations, jni.JniType.objectType, []).object);

  static final _id_willChangeTransformationMatrix = jniAccessors.getMethodIDOf(
      _classRef, "willChangeTransformationMatrix", "()Z");

  /// from: public boolean willChangeTransformationMatrix()
  bool willChangeTransformationMatrix() => jniAccessors.callMethodWithArgs(
      reference,
      _id_willChangeTransformationMatrix,
      jni.JniType.booleanType, []).boolean;

  static final _id_willChangeBounds =
      jniAccessors.getMethodIDOf(_classRef, "willChangeBounds", "()Z");

  /// from: public boolean willChangeBounds()
  bool willChangeBounds() => jniAccessors.callMethodWithArgs(
      reference, _id_willChangeBounds, jni.JniType.booleanType, []).boolean;
}