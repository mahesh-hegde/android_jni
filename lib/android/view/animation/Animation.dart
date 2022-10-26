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

import "../../content/Context.dart" as context_;

import "../../util/AttributeSet.dart" as attributeset_;

import "Interpolator.dart" as interpolator_;

import "Transformation.dart" as transformation_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.animation.Animation
///
/// Abstraction for an Animation that can be applied to Views, Surfaces, or
/// other objects. See the android.view.animation animation package
/// description file.
class Animation extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/animation/Animation");
  Animation.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ABSOLUTE
  ///
  /// The specified dimension is an absolute number of pixels.
  static const ABSOLUTE = 0;

  /// from: static public final int INFINITE
  ///
  /// Repeat the animation indefinitely.
  static const INFINITE = -1;

  /// from: static public final int RELATIVE_TO_PARENT
  ///
  /// The specified dimension holds a float and should be multiplied by the
  /// height or width of the parent of the object being animated.
  static const RELATIVE_TO_PARENT = 2;

  /// from: static public final int RELATIVE_TO_SELF
  ///
  /// The specified dimension holds a float and should be multiplied by the
  /// height or width of the object being animated.
  static const RELATIVE_TO_SELF = 1;

  /// from: static public final int RESTART
  ///
  /// When the animation reaches the end and the repeat count is INFINTE_REPEAT
  /// or a positive value, the animation restarts from the beginning.
  static const RESTART = 1;

  /// from: static public final int REVERSE
  ///
  /// When the animation reaches the end and the repeat count is INFINTE_REPEAT
  /// or a positive value, the animation plays backward (and then forward again).
  static const REVERSE = 2;

  /// from: static public final int START_ON_FIRST_FRAME
  ///
  /// Can be used as the start time to indicate the start time should be the current
  /// time when \#getTransformation(long, Transformation) is invoked for the
  /// first animation frame. This can is useful for short animations.
  static const START_ON_FIRST_FRAME = -1;

  /// from: static public final int ZORDER_BOTTOM
  ///
  /// Requests that the content being animated be forced under all other
  /// content for the duration of the animation.
  static const ZORDER_BOTTOM = -1;

  /// from: static public final int ZORDER_NORMAL
  ///
  /// Requests that the content being animated be kept in its current Z
  /// order.
  static const ZORDER_NORMAL = 0;

  /// from: static public final int ZORDER_TOP
  ///
  /// Requests that the content being animated be forced on top of all other
  /// content for the duration of the animation.
  static const ZORDER_TOP = 1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new animation with a duration of 0ms, the default interpolator, with
  /// fillBefore set to true and fillAfter set to false
  Animation()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new animation whose parameters come from the specified context and
  /// attributes set.
  ///@param context the application environment
  ///@param attrs the set of attributes holding the animation parameters
  Animation.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_clone = jniAccessors.getMethodIDOf(
      _classRef, "clone", "()Landroid/view/animation/Animation;");

  /// from: protected android.view.animation.Animation clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Animation clone() => Animation.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_clone, jni.JniType.objectType, []).object);

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, "reset", "()V");

  /// from: public void reset()
  ///
  /// Reset the initialization state of this animation.
  ///@see \#initialize(int, int, int, int)
  void reset() => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniType.voidType, []).check();

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public void cancel()
  ///
  /// Cancel the animation. Cancelling an animation invokes the animation
  /// listener, if set, to notify the end of the animation.
  ///
  /// If you cancel an animation manually, you must call \#reset()
  /// before starting the animation again.
  ///@see \#reset()
  ///@see \#start()
  ///@see \#startNow()
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();

  static final _id_isInitialized =
      jniAccessors.getMethodIDOf(_classRef, "isInitialized", "()Z");

  /// from: public boolean isInitialized()
  ///
  /// Whether or not the animation has been initialized.
  ///@return Has this animation been initialized.
  ///@see \#initialize(int, int, int, int)
  bool isInitialized() => jniAccessors.callMethodWithArgs(
      reference, _id_isInitialized, jni.JniType.booleanType, []).boolean;

  static final _id_initialize =
      jniAccessors.getMethodIDOf(_classRef, "initialize", "(IIII)V");

  /// from: public void initialize(int width, int height, int parentWidth, int parentHeight)
  ///
  /// Initialize this animation with the dimensions of the object being
  /// animated as well as the objects parents. (This is to support animation
  /// sizes being specified relative to these dimensions.)
  ///
  /// Objects that interpret Animations should call this method when
  /// the sizes of the object being animated and its parent are known, and
  /// before calling \#getTransformation.
  ///@param width Width of the object being animated
  ///@param height Height of the object being animated
  ///@param parentWidth Width of the animated object's parent
  ///@param parentHeight Height of the animated object's parent
  void initialize(int width, int height, int parentWidth, int parentHeight) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_initialize,
          jni.JniType.voidType,
          [width, height, parentWidth, parentHeight]).check();

  static final _id_setInterpolator = jniAccessors.getMethodIDOf(
      _classRef, "setInterpolator", "(Landroid/content/Context;I)V");

  /// from: public void setInterpolator(android.content.Context context, int resID)
  ///
  /// Sets the acceleration curve for this animation. The interpolator is loaded as
  /// a resource from the specified context.
  ///@param context The application environment
  ///@param resID The resource identifier of the interpolator to load
  ///@attr ref android.R.styleable\#Animation_interpolator
  void setInterpolator(context_.Context context, int resID) =>
      jniAccessors.callMethodWithArgs(reference, _id_setInterpolator,
          jni.JniType.voidType, [context.reference, resID]).check();

  static final _id_setInterpolator1 = jniAccessors.getMethodIDOf(
      _classRef, "setInterpolator", "(Landroid/view/animation/Interpolator;)V");

  /// from: public void setInterpolator(android.view.animation.Interpolator i)
  ///
  /// Sets the acceleration curve for this animation. Defaults to a linear
  /// interpolation.
  ///@param i The interpolator which defines the acceleration curve
  ///@attr ref android.R.styleable\#Animation_interpolator
  void setInterpolator1(interpolator_.Interpolator i) =>
      jniAccessors.callMethodWithArgs(reference, _id_setInterpolator1,
          jni.JniType.voidType, [i.reference]).check();

  static final _id_setStartOffset =
      jniAccessors.getMethodIDOf(_classRef, "setStartOffset", "(J)V");

  /// from: public void setStartOffset(long startOffset)
  ///
  /// When this animation should start relative to the start time. This is most
  /// useful when composing complex animations using an AnimationSet
  /// where some of the animations components start at different times.
  ///@param startOffset When this Animation should start, in milliseconds from
  ///                    the start time of the root AnimationSet.
  ///@attr ref android.R.styleable\#Animation_startOffset
  void setStartOffset(int startOffset) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setStartOffset,
      jni.JniType.voidType,
      [startOffset]).check();

  static final _id_setDuration =
      jniAccessors.getMethodIDOf(_classRef, "setDuration", "(J)V");

  /// from: public void setDuration(long durationMillis)
  ///
  /// How long this animation should last. The duration cannot be negative.
  ///@param durationMillis Duration in milliseconds
  ///@throws java.lang.IllegalArgumentException if the duration is < 0
  ///@attr ref android.R.styleable\#Animation_duration
  void setDuration(int durationMillis) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setDuration,
      jni.JniType.voidType,
      [durationMillis]).check();

  static final _id_restrictDuration =
      jniAccessors.getMethodIDOf(_classRef, "restrictDuration", "(J)V");

  /// from: public void restrictDuration(long durationMillis)
  ///
  /// Ensure that the duration that this animation will run is not longer
  /// than <var>durationMillis</var>.  In addition to adjusting the duration
  /// itself, this ensures that the repeat count also will not make it run
  /// longer than the given time.
  ///@param durationMillis The maximum duration the animation is allowed
  /// to run.
  void restrictDuration(int durationMillis) => jniAccessors.callMethodWithArgs(
      reference,
      _id_restrictDuration,
      jni.JniType.voidType,
      [durationMillis]).check();

  static final _id_scaleCurrentDuration =
      jniAccessors.getMethodIDOf(_classRef, "scaleCurrentDuration", "(F)V");

  /// from: public void scaleCurrentDuration(float scale)
  ///
  /// How much to scale the duration by.
  ///@param scale The amount to scale the duration.
  void scaleCurrentDuration(double scale) => jniAccessors.callMethodWithArgs(
      reference,
      _id_scaleCurrentDuration,
      jni.JniType.voidType,
      [scale]).check();

  static final _id_setStartTime =
      jniAccessors.getMethodIDOf(_classRef, "setStartTime", "(J)V");

  /// from: public void setStartTime(long startTimeMillis)
  ///
  /// When this animation should start. When the start time is set to
  /// \#START_ON_FIRST_FRAME, the animation will start the first time
  /// \#getTransformation(long, Transformation) is invoked. The time passed
  /// to this method should be obtained by calling
  /// AnimationUtils\#currentAnimationTimeMillis() instead of
  /// System\#currentTimeMillis().
  ///@param startTimeMillis the start time in milliseconds
  void setStartTime(int startTimeMillis) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setStartTime,
      jni.JniType.voidType,
      [startTimeMillis]).check();

  static final _id_start =
      jniAccessors.getMethodIDOf(_classRef, "start", "()V");

  /// from: public void start()
  ///
  /// Convenience method to start the animation the first time
  /// \#getTransformation(long, Transformation) is invoked.
  void start() => jniAccessors.callMethodWithArgs(
      reference, _id_start, jni.JniType.voidType, []).check();

  static final _id_startNow =
      jniAccessors.getMethodIDOf(_classRef, "startNow", "()V");

  /// from: public void startNow()
  ///
  /// Convenience method to start the animation at the current time in
  /// milliseconds.
  void startNow() => jniAccessors.callMethodWithArgs(
      reference, _id_startNow, jni.JniType.voidType, []).check();

  static final _id_setRepeatMode =
      jniAccessors.getMethodIDOf(_classRef, "setRepeatMode", "(I)V");

  /// from: public void setRepeatMode(int repeatMode)
  ///
  /// Defines what this animation should do when it reaches the end. This
  /// setting is applied only when the repeat count is either greater than
  /// 0 or \#INFINITE. Defaults to \#RESTART.
  ///@param repeatMode \#RESTART or \#REVERSE
  ///@attr ref android.R.styleable\#Animation_repeatMode
  void setRepeatMode(int repeatMode) => jniAccessors.callMethodWithArgs(
      reference, _id_setRepeatMode, jni.JniType.voidType, [repeatMode]).check();

  static final _id_setRepeatCount =
      jniAccessors.getMethodIDOf(_classRef, "setRepeatCount", "(I)V");

  /// from: public void setRepeatCount(int repeatCount)
  ///
  /// Sets how many times the animation should be repeated. If the repeat
  /// count is 0, the animation is never repeated. If the repeat count is
  /// greater than 0 or \#INFINITE, the repeat mode will be taken
  /// into account. The repeat count is 0 by default.
  ///@param repeatCount the number of times the animation should be repeated
  ///@attr ref android.R.styleable\#Animation_repeatCount
  void setRepeatCount(int repeatCount) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setRepeatCount,
      jni.JniType.voidType,
      [repeatCount]).check();

  static final _id_isFillEnabled =
      jniAccessors.getMethodIDOf(_classRef, "isFillEnabled", "()Z");

  /// from: public boolean isFillEnabled()
  ///
  /// If fillEnabled is true, this animation will apply the value of fillBefore.
  ///@return true if the animation will take fillBefore into account
  ///@attr ref android.R.styleable\#Animation_fillEnabled
  bool isFillEnabled() => jniAccessors.callMethodWithArgs(
      reference, _id_isFillEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_setFillEnabled =
      jniAccessors.getMethodIDOf(_classRef, "setFillEnabled", "(Z)V");

  /// from: public void setFillEnabled(boolean fillEnabled)
  ///
  /// If fillEnabled is true, the animation will apply the value of fillBefore.
  /// Otherwise, fillBefore is ignored and the animation
  /// transformation is always applied until the animation ends.
  ///@param fillEnabled true if the animation should take the value of fillBefore into account
  ///@attr ref android.R.styleable\#Animation_fillEnabled
  ///@see \#setFillBefore(boolean)
  ///@see \#setFillAfter(boolean)
  void setFillEnabled(bool fillEnabled) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setFillEnabled,
      jni.JniType.voidType,
      [fillEnabled]).check();

  static final _id_setFillBefore =
      jniAccessors.getMethodIDOf(_classRef, "setFillBefore", "(Z)V");

  /// from: public void setFillBefore(boolean fillBefore)
  ///
  /// If fillBefore is true, this animation will apply its transformation
  /// before the start time of the animation. Defaults to true if
  /// \#setFillEnabled(boolean) is not set to true.
  /// Note that this applies when using an android.view.animation.AnimationSet AnimationSet to chain
  /// animations. The transformation is not applied before the AnimationSet
  /// itself starts.
  ///@param fillBefore true if the animation should apply its transformation before it starts
  ///@attr ref android.R.styleable\#Animation_fillBefore
  ///@see \#setFillEnabled(boolean)
  void setFillBefore(bool fillBefore) => jniAccessors.callMethodWithArgs(
      reference, _id_setFillBefore, jni.JniType.voidType, [fillBefore]).check();

  static final _id_setFillAfter =
      jniAccessors.getMethodIDOf(_classRef, "setFillAfter", "(Z)V");

  /// from: public void setFillAfter(boolean fillAfter)
  ///
  /// If fillAfter is true, the transformation that this animation performed
  /// will persist when it is finished. Defaults to false if not set.
  /// Note that this applies to individual animations and when using an android.view.animation.AnimationSet AnimationSet to chain
  /// animations.
  ///@param fillAfter true if the animation should apply its transformation after it ends
  ///@attr ref android.R.styleable\#Animation_fillAfter
  ///@see \#setFillEnabled(boolean)
  void setFillAfter(bool fillAfter) => jniAccessors.callMethodWithArgs(
      reference, _id_setFillAfter, jni.JniType.voidType, [fillAfter]).check();

  static final _id_setZAdjustment =
      jniAccessors.getMethodIDOf(_classRef, "setZAdjustment", "(I)V");

  /// from: public void setZAdjustment(int zAdjustment)
  ///
  /// Set the Z ordering mode to use while running the animation.
  ///@param zAdjustment The desired mode, one of \#ZORDER_NORMAL,
  /// \#ZORDER_TOP, or \#ZORDER_BOTTOM.
  ///@attr ref android.R.styleable\#Animation_zAdjustment
  void setZAdjustment(int zAdjustment) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setZAdjustment,
      jni.JniType.voidType,
      [zAdjustment]).check();

  static final _id_setBackgroundColor =
      jniAccessors.getMethodIDOf(_classRef, "setBackgroundColor", "(I)V");

  /// from: public void setBackgroundColor(int bg)
  ///
  /// Set background behind animation.
  ///@param bg The background color.  If 0, no background.  Currently must
  /// be black, with any desired alpha level.
  void setBackgroundColor(int bg) => jniAccessors.callMethodWithArgs(
      reference, _id_setBackgroundColor, jni.JniType.voidType, [bg]).check();

  static final _id_getScaleFactor =
      jniAccessors.getMethodIDOf(_classRef, "getScaleFactor", "()F");

  /// from: protected float getScaleFactor()
  ///
  /// The scale factor is set by the call to <code>getTransformation</code>. Overrides of
  /// \#getTransformation(long, Transformation, float) will get this value
  /// directly. Overrides of \#applyTransformation(float, Transformation) can
  /// call this method to get the value.
  ///@return float The scale factor that should be applied to pre-scaled values in
  /// an Animation such as the pivot points in ScaleAnimation and RotateAnimation.
  double getScaleFactor() => jniAccessors.callMethodWithArgs(
      reference, _id_getScaleFactor, jni.JniType.floatType, []).float;

  static final _id_setDetachWallpaper =
      jniAccessors.getMethodIDOf(_classRef, "setDetachWallpaper", "(Z)V");

  /// from: public void setDetachWallpaper(boolean detachWallpaper)
  ///
  /// If detachWallpaper is true, and this is a window animation of a window
  /// that has a wallpaper background, then the window will be detached from
  /// the wallpaper while it runs.  That is, the animation will only be applied
  /// to the window, and the wallpaper behind it will remain static.
  ///@param detachWallpaper true if the wallpaper should be detached from the animation
  ///@attr ref android.R.styleable\#Animation_detachWallpaper
  void setDetachWallpaper(bool detachWallpaper) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDetachWallpaper,
          jni.JniType.voidType, [detachWallpaper]).check();

  static final _id_getInterpolator = jniAccessors.getMethodIDOf(
      _classRef, "getInterpolator", "()Landroid/view/animation/Interpolator;");

  /// from: public android.view.animation.Interpolator getInterpolator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the acceleration curve type for this animation.
  ///@return the Interpolator associated to this animation
  ///@attr ref android.R.styleable\#Animation_interpolator
  interpolator_.Interpolator getInterpolator() =>
      interpolator_.Interpolator.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInterpolator, jni.JniType.objectType, []).object);

  static final _id_getStartTime =
      jniAccessors.getMethodIDOf(_classRef, "getStartTime", "()J");

  /// from: public long getStartTime()
  ///
  /// When this animation should start. If the animation has not startet yet,
  /// this method might return \#START_ON_FIRST_FRAME.
  ///@return the time in milliseconds when the animation should start or
  ///         \#START_ON_FIRST_FRAME
  int getStartTime() => jniAccessors.callMethodWithArgs(
      reference, _id_getStartTime, jni.JniType.longType, []).long;

  static final _id_getDuration =
      jniAccessors.getMethodIDOf(_classRef, "getDuration", "()J");

  /// from: public long getDuration()
  ///
  /// How long this animation should last
  ///@return the duration in milliseconds of the animation
  ///@attr ref android.R.styleable\#Animation_duration
  int getDuration() => jniAccessors.callMethodWithArgs(
      reference, _id_getDuration, jni.JniType.longType, []).long;

  static final _id_getStartOffset =
      jniAccessors.getMethodIDOf(_classRef, "getStartOffset", "()J");

  /// from: public long getStartOffset()
  ///
  /// When this animation should start, relative to StartTime
  ///@return the start offset in milliseconds
  ///@attr ref android.R.styleable\#Animation_startOffset
  int getStartOffset() => jniAccessors.callMethodWithArgs(
      reference, _id_getStartOffset, jni.JniType.longType, []).long;

  static final _id_getRepeatMode =
      jniAccessors.getMethodIDOf(_classRef, "getRepeatMode", "()I");

  /// from: public int getRepeatMode()
  ///
  /// Defines what this animation should do when it reaches the end.
  ///@return either one of \#REVERSE or \#RESTART
  ///@attr ref android.R.styleable\#Animation_repeatMode
  int getRepeatMode() => jniAccessors.callMethodWithArgs(
      reference, _id_getRepeatMode, jni.JniType.intType, []).integer;

  static final _id_getRepeatCount =
      jniAccessors.getMethodIDOf(_classRef, "getRepeatCount", "()I");

  /// from: public int getRepeatCount()
  ///
  /// Defines how many times the animation should repeat. The default value
  /// is 0.
  ///@return the number of times the animation should repeat, or \#INFINITE
  ///@attr ref android.R.styleable\#Animation_repeatCount
  int getRepeatCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getRepeatCount, jni.JniType.intType, []).integer;

  static final _id_getFillBefore =
      jniAccessors.getMethodIDOf(_classRef, "getFillBefore", "()Z");

  /// from: public boolean getFillBefore()
  ///
  /// If fillBefore is true, this animation will apply its transformation
  /// before the start time of the animation. If fillBefore is false and
  /// \#isFillEnabled() fillEnabled is true, the transformation will not be applied until
  /// the start time of the animation.
  ///@return true if the animation applies its transformation before it starts
  ///@attr ref android.R.styleable\#Animation_fillBefore
  bool getFillBefore() => jniAccessors.callMethodWithArgs(
      reference, _id_getFillBefore, jni.JniType.booleanType, []).boolean;

  static final _id_getFillAfter =
      jniAccessors.getMethodIDOf(_classRef, "getFillAfter", "()Z");

  /// from: public boolean getFillAfter()
  ///
  /// If fillAfter is true, this animation will apply its transformation
  /// after the end time of the animation.
  ///@return true if the animation applies its transformation after it ends
  ///@attr ref android.R.styleable\#Animation_fillAfter
  bool getFillAfter() => jniAccessors.callMethodWithArgs(
      reference, _id_getFillAfter, jni.JniType.booleanType, []).boolean;

  static final _id_getZAdjustment =
      jniAccessors.getMethodIDOf(_classRef, "getZAdjustment", "()I");

  /// from: public int getZAdjustment()
  ///
  /// Returns the Z ordering mode to use while running the animation as
  /// previously set by \#setZAdjustment.
  ///@return Returns one of \#ZORDER_NORMAL,
  /// \#ZORDER_TOP, or \#ZORDER_BOTTOM.
  ///@attr ref android.R.styleable\#Animation_zAdjustment
  int getZAdjustment() => jniAccessors.callMethodWithArgs(
      reference, _id_getZAdjustment, jni.JniType.intType, []).integer;

  static final _id_getBackgroundColor =
      jniAccessors.getMethodIDOf(_classRef, "getBackgroundColor", "()I");

  /// from: public int getBackgroundColor()
  ///
  /// Returns the background color behind the animation.
  int getBackgroundColor() => jniAccessors.callMethodWithArgs(
      reference, _id_getBackgroundColor, jni.JniType.intType, []).integer;

  static final _id_getDetachWallpaper =
      jniAccessors.getMethodIDOf(_classRef, "getDetachWallpaper", "()Z");

  /// from: public boolean getDetachWallpaper()
  ///
  /// Return value of \#setDetachWallpaper(boolean).
  ///@attr ref android.R.styleable\#Animation_detachWallpaper
  bool getDetachWallpaper() => jniAccessors.callMethodWithArgs(
      reference, _id_getDetachWallpaper, jni.JniType.booleanType, []).boolean;

  static final _id_willChangeTransformationMatrix = jniAccessors.getMethodIDOf(
      _classRef, "willChangeTransformationMatrix", "()Z");

  /// from: public boolean willChangeTransformationMatrix()
  ///
  /// Indicates whether or not this animation will affect the transformation
  /// matrix. For instance, a fade animation will not affect the matrix whereas
  /// a scale animation will.
  ///
  ///@return true if this animation will change the transformation matrix
  bool willChangeTransformationMatrix() => jniAccessors.callMethodWithArgs(
      reference,
      _id_willChangeTransformationMatrix,
      jni.JniType.booleanType, []).boolean;

  static final _id_willChangeBounds =
      jniAccessors.getMethodIDOf(_classRef, "willChangeBounds", "()Z");

  /// from: public boolean willChangeBounds()
  ///
  /// Indicates whether or not this animation will affect the bounds of the
  /// animated view. For instance, a fade animation will not affect the bounds
  /// whereas a 200% scale animation will.
  ///
  ///@return true if this animation will change the view's bounds
  bool willChangeBounds() => jniAccessors.callMethodWithArgs(
      reference, _id_willChangeBounds, jni.JniType.booleanType, []).boolean;

  static final _id_setAnimationListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setAnimationListener",
      "(Landroid/view/animation/Animation\$AnimationListener;)V");

  /// from: public void setAnimationListener(android.view.animation.Animation.AnimationListener listener)
  ///
  /// Binds an animation listener to this animation. The animation listener
  /// is notified of animation events such as the end of the animation or the
  /// repetition of the animation.
  ///
  ///@param listener the animation listener to be notified
  void setAnimationListener(Animation_AnimationListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setAnimationListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_ensureInterpolator =
      jniAccessors.getMethodIDOf(_classRef, "ensureInterpolator", "()V");

  /// from: protected void ensureInterpolator()
  ///
  /// Gurantees that this animation has an interpolator. Will use
  /// a AccelerateDecelerateInterpolator is nothing else was specified.
  void ensureInterpolator() => jniAccessors.callMethodWithArgs(
      reference, _id_ensureInterpolator, jni.JniType.voidType, []).check();

  static final _id_computeDurationHint =
      jniAccessors.getMethodIDOf(_classRef, "computeDurationHint", "()J");

  /// from: public long computeDurationHint()
  ///
  /// Compute a hint at how long the entire animation may last, in milliseconds.
  /// Animations can be written to cause themselves to run for a different
  /// duration than what is computed here, but generally this should be
  /// accurate.
  int computeDurationHint() => jniAccessors.callMethodWithArgs(
      reference, _id_computeDurationHint, jni.JniType.longType, []).long;

  static final _id_getTransformation = jniAccessors.getMethodIDOf(_classRef,
      "getTransformation", "(JLandroid/view/animation/Transformation;)Z");

  /// from: public boolean getTransformation(long currentTime, android.view.animation.Transformation outTransformation)
  ///
  /// Gets the transformation to apply at a specified point in time. Implementations of this
  /// method should always replace the specified Transformation or document they are doing
  /// otherwise.
  ///@param currentTime Where we are in the animation. This is wall clock time.
  ///@param outTransformation A transformation object that is provided by the
  ///        caller and will be filled in by the animation.
  ///@return True if the animation is still running
  bool getTransformation(
          int currentTime, transformation_.Transformation outTransformation) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_getTransformation,
          jni.JniType.booleanType,
          [currentTime, outTransformation.reference]).boolean;

  static final _id_getTransformation1 = jniAccessors.getMethodIDOf(_classRef,
      "getTransformation", "(JLandroid/view/animation/Transformation;F)Z");

  /// from: public boolean getTransformation(long currentTime, android.view.animation.Transformation outTransformation, float scale)
  ///
  /// Gets the transformation to apply at a specified point in time. Implementations of this
  /// method should always replace the specified Transformation or document they are doing
  /// otherwise.
  ///@param currentTime Where we are in the animation. This is wall clock time.
  ///@param outTransformation A transformation object that is provided by the
  ///        caller and will be filled in by the animation.
  ///@param scale Scaling factor to apply to any inputs to the transform operation, such
  ///        pivot points being rotated or scaled around.
  ///@return True if the animation is still running
  bool getTransformation1(int currentTime,
          transformation_.Transformation outTransformation, double scale) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_getTransformation1,
          jni.JniType.booleanType,
          [currentTime, outTransformation.reference, scale]).boolean;

  static final _id_hasStarted =
      jniAccessors.getMethodIDOf(_classRef, "hasStarted", "()Z");

  /// from: public boolean hasStarted()
  ///
  /// Indicates whether this animation has started or not.
  ///
  ///@return true if the animation has started, false otherwise
  bool hasStarted() => jniAccessors.callMethodWithArgs(
      reference, _id_hasStarted, jni.JniType.booleanType, []).boolean;

  static final _id_hasEnded =
      jniAccessors.getMethodIDOf(_classRef, "hasEnded", "()Z");

  /// from: public boolean hasEnded()
  ///
  /// Indicates whether this animation has ended or not.
  ///
  ///@return true if the animation has ended, false otherwise
  bool hasEnded() => jniAccessors.callMethodWithArgs(
      reference, _id_hasEnded, jni.JniType.booleanType, []).boolean;

  static final _id_applyTransformation = jniAccessors.getMethodIDOf(_classRef,
      "applyTransformation", "(FLandroid/view/animation/Transformation;)V");

  /// from: protected void applyTransformation(float interpolatedTime, android.view.animation.Transformation t)
  ///
  /// Helper for getTransformation. Subclasses should implement this to apply
  /// their transforms given an interpolation value.  Implementations of this
  /// method should always replace the specified Transformation or document
  /// they are doing otherwise.
  ///@param interpolatedTime The value of the normalized time (0.0 to 1.0)
  ///        after it has been run through the interpolation function.
  ///@param t The Transformation object to fill in with the current
  ///        transforms.
  void applyTransformation(
          double interpolatedTime, transformation_.Transformation t) =>
      jniAccessors.callMethodWithArgs(reference, _id_applyTransformation,
          jni.JniType.voidType, [interpolatedTime, t.reference]).check();

  static final _id_resolveSize =
      jniAccessors.getMethodIDOf(_classRef, "resolveSize", "(IFII)F");

  /// from: protected float resolveSize(int type, float value, int size, int parentSize)
  ///
  /// Convert the information in the description of a size to an actual
  /// dimension
  ///@param type One of Animation.ABSOLUTE, Animation.RELATIVE_TO_SELF, or
  ///             Animation.RELATIVE_TO_PARENT.
  ///@param value The dimension associated with the type parameter
  ///@param size The size of the object being animated
  ///@param parentSize The size of the parent of the object being animated
  ///@return The dimension to use for the animation
  double resolveSize(int type, double value, int size, int parentSize) =>
      jniAccessors.callMethodWithArgs(reference, _id_resolveSize,
          jni.JniType.floatType, [type, value, size, parentSize]).float;

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();
}

/// from: android.view.animation.Animation$Description
///
/// Utility class to parse a string description of a size.
class Animation_Description extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/animation/Animation\$Description");
  Animation_Description.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_type = jniAccessors.getFieldIDOf(_classRef, "type", "I");

  /// from: public int type
  ///
  /// One of Animation.ABSOLUTE, Animation.RELATIVE_TO_SELF, or
  /// Animation.RELATIVE_TO_PARENT.
  int get type =>
      jniAccessors.getField(reference, _id_type, jni.JniType.intType).integer;

  /// from: public int type
  ///
  /// One of Animation.ABSOLUTE, Animation.RELATIVE_TO_SELF, or
  /// Animation.RELATIVE_TO_PARENT.
  set type(int value) => jniEnv.SetIntField(reference, _id_type, value);

  static final _id_value = jniAccessors.getFieldIDOf(_classRef, "value", "F");

  /// from: public float value
  ///
  /// The absolute or relative dimension for this Description.
  double get value =>
      jniAccessors.getField(reference, _id_value, jni.JniType.floatType).float;

  /// from: public float value
  ///
  /// The absolute or relative dimension for this Description.
  set value(double value) => jniEnv.SetFloatField(reference, _id_value, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: protected void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Animation_Description()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.view.animation.Animation$AnimationListener
///
/// An animation listener receives notifications from an animation.
/// Notifications indicate animation related events, such as the end or the
/// repetition of the animation.
///
class Animation_AnimationListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/view/animation/Animation\$AnimationListener");
  Animation_AnimationListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onAnimationStart = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationStart", "(Landroid/view/animation/Animation;)V");

  /// from: public abstract void onAnimationStart(android.view.animation.Animation animation)
  ///
  /// Notifies the start of the animation.
  ///
  ///@param animation The started animation.
  void onAnimationStart(Animation animation) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onAnimationStart,
      jni.JniType.voidType,
      [animation.reference]).check();

  static final _id_onAnimationEnd = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationEnd", "(Landroid/view/animation/Animation;)V");

  /// from: public abstract void onAnimationEnd(android.view.animation.Animation animation)
  ///
  /// Notifies the end of the animation. This callback is not invoked
  /// for animations with repeat count set to INFINITE.
  ///
  ///@param animation The animation which reached its end.
  void onAnimationEnd(Animation animation) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onAnimationEnd,
      jni.JniType.voidType,
      [animation.reference]).check();

  static final _id_onAnimationRepeat = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationRepeat", "(Landroid/view/animation/Animation;)V");

  /// from: public abstract void onAnimationRepeat(android.view.animation.Animation animation)
  ///
  /// Notifies the repetition of the animation.
  ///
  ///@param animation The animation which was repeated.
  void onAnimationRepeat(Animation animation) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAnimationRepeat,
          jni.JniType.voidType, [animation.reference]).check();
}