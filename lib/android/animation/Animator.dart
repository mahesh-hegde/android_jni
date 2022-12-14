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

import "TimeInterpolator.dart" as timeinterpolator_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.animation.Animator
///
/// This is the superclass for classes which provide basic support for animations which can be
/// started, ended, and have <code>AnimatorListeners</code> added to them.
class Animator extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/animation/Animator");
  Animator.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final long DURATION_INFINITE
  ///
  /// The value used to indicate infinite duration (e.g.&nbsp;when Animators repeat infinitely).
  static const DURATION_INFINITE = -1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Animator()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_start =
      jniAccessors.getMethodIDOf(_classRef, "start", "()V");

  /// from: public void start()
  ///
  /// Starts this animation. If the animation has a nonzero startDelay, the animation will start
  /// running after that delay elapses. A non-delayed animation will have its initial
  /// value(s) set immediately, followed by calls to
  /// AnimatorListener\#onAnimationStart(Animator) for any listeners of this animator.
  ///
  /// The animation started by calling this method will be run on the thread that called
  /// this method. This thread should have a Looper on it (a runtime exception will be thrown if
  /// this is not the case). Also, if the animation will animate
  /// properties of objects in the view hierarchy, then the calling thread should be the UI
  /// thread for that view hierarchy.
  ///
  void start() => jniAccessors.callMethodWithArgs(
      reference, _id_start, jni.JniType.voidType, []).check();

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public void cancel()
  ///
  /// Cancels the animation. Unlike \#end(), <code>cancel()</code> causes the animation to
  /// stop in its tracks, sending an
  /// android.animation.Animator.AnimatorListener\#onAnimationCancel(Animator) to
  /// its listeners, followed by an
  /// android.animation.Animator.AnimatorListener\#onAnimationEnd(Animator) message.
  ///
  /// This method must be called on the thread that is running the animation.
  ///
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();

  static final _id_end = jniAccessors.getMethodIDOf(_classRef, "end", "()V");

  /// from: public void end()
  ///
  /// Ends the animation. This causes the animation to assign the end value of the property being
  /// animated, then calling the
  /// android.animation.Animator.AnimatorListener\#onAnimationEnd(Animator) method on
  /// its listeners.
  ///
  /// This method must be called on the thread that is running the animation.
  ///
  void end() => jniAccessors
      .callMethodWithArgs(reference, _id_end, jni.JniType.voidType, []).check();

  static final _id_pause =
      jniAccessors.getMethodIDOf(_classRef, "pause", "()V");

  /// from: public void pause()
  ///
  /// Pauses a running animation. This method should only be called on the same thread on
  /// which the animation was started. If the animation has not yet been \#isStarted() started or has since ended, then the call is ignored. Paused
  /// animations can be resumed by calling \#resume().
  ///@see \#resume()
  ///@see \#isPaused()
  ///@see AnimatorPauseListener
  void pause() => jniAccessors.callMethodWithArgs(
      reference, _id_pause, jni.JniType.voidType, []).check();

  static final _id_resume =
      jniAccessors.getMethodIDOf(_classRef, "resume", "()V");

  /// from: public void resume()
  ///
  /// Resumes a paused animation, causing the animator to pick up where it left off
  /// when it was paused. This method should only be called on the same thread on
  /// which the animation was started. Calls to resume() on an animator that is
  /// not currently paused will be ignored.
  ///@see \#pause()
  ///@see \#isPaused()
  ///@see AnimatorPauseListener
  void resume() => jniAccessors.callMethodWithArgs(
      reference, _id_resume, jni.JniType.voidType, []).check();

  static final _id_isPaused =
      jniAccessors.getMethodIDOf(_classRef, "isPaused", "()Z");

  /// from: public boolean isPaused()
  ///
  /// Returns whether this animator is currently in a paused state.
  ///@return True if the animator is currently paused, false otherwise.
  ///@see \#pause()
  ///@see \#resume()
  bool isPaused() => jniAccessors.callMethodWithArgs(
      reference, _id_isPaused, jni.JniType.booleanType, []).boolean;

  static final _id_getStartDelay =
      jniAccessors.getMethodIDOf(_classRef, "getStartDelay", "()J");

  /// from: public abstract long getStartDelay()
  ///
  /// The amount of time, in milliseconds, to delay processing the animation
  /// after \#start() is called.
  ///@return the number of milliseconds to delay running the animation
  int getStartDelay() => jniAccessors.callMethodWithArgs(
      reference, _id_getStartDelay, jni.JniType.longType, []).long;

  static final _id_setStartDelay =
      jniAccessors.getMethodIDOf(_classRef, "setStartDelay", "(J)V");

  /// from: public abstract void setStartDelay(long startDelay)
  ///
  /// The amount of time, in milliseconds, to delay processing the animation
  /// after \#start() is called.
  ///@param startDelay The amount of the delay, in milliseconds
  void setStartDelay(int startDelay) => jniAccessors.callMethodWithArgs(
      reference, _id_setStartDelay, jni.JniType.voidType, [startDelay]).check();

  static final _id_setDuration = jniAccessors.getMethodIDOf(
      _classRef, "setDuration", "(J)Landroid/animation/Animator;");

  /// from: public abstract android.animation.Animator setDuration(long duration)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the duration of the animation.
  ///@param duration The length of the animation, in milliseconds.
  Animator setDuration(int duration) =>
      Animator.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setDuration, jni.JniType.objectType, [duration]).object);

  static final _id_getDuration =
      jniAccessors.getMethodIDOf(_classRef, "getDuration", "()J");

  /// from: public abstract long getDuration()
  ///
  /// Gets the duration of the animation.
  ///@return The length of the animation, in milliseconds.
  int getDuration() => jniAccessors.callMethodWithArgs(
      reference, _id_getDuration, jni.JniType.longType, []).long;

  static final _id_getTotalDuration =
      jniAccessors.getMethodIDOf(_classRef, "getTotalDuration", "()J");

  /// from: public long getTotalDuration()
  ///
  /// Gets the total duration of the animation, accounting for animation sequences, start delay,
  /// and repeating. Return \#DURATION_INFINITE if the duration is infinite.
  ///@return Total time an animation takes to finish, starting from the time \#start()
  ///          is called. \#DURATION_INFINITE will be returned if the animation or any
  ///          child animation repeats infinite times.
  int getTotalDuration() => jniAccessors.callMethodWithArgs(
      reference, _id_getTotalDuration, jni.JniType.longType, []).long;

  static final _id_setInterpolator = jniAccessors.getMethodIDOf(
      _classRef, "setInterpolator", "(Landroid/animation/TimeInterpolator;)V");

  /// from: public abstract void setInterpolator(android.animation.TimeInterpolator value)
  ///
  /// The time interpolator used in calculating the elapsed fraction of the
  /// animation. The interpolator determines whether the animation runs with
  /// linear or non-linear motion, such as acceleration and deceleration. The
  /// default value is android.view.animation.AccelerateDecelerateInterpolator.
  ///@param value the interpolator to be used by this animation
  void setInterpolator(timeinterpolator_.TimeInterpolator value) =>
      jniAccessors.callMethodWithArgs(reference, _id_setInterpolator,
          jni.JniType.voidType, [value.reference]).check();

  static final _id_getInterpolator = jniAccessors.getMethodIDOf(
      _classRef, "getInterpolator", "()Landroid/animation/TimeInterpolator;");

  /// from: public android.animation.TimeInterpolator getInterpolator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the timing interpolator that this animation uses.
  ///@return The timing interpolator for this animation.
  timeinterpolator_.TimeInterpolator getInterpolator() =>
      timeinterpolator_.TimeInterpolator.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getInterpolator,
              jni.JniType.objectType, []).object);

  static final _id_isRunning =
      jniAccessors.getMethodIDOf(_classRef, "isRunning", "()Z");

  /// from: public abstract boolean isRunning()
  ///
  /// Returns whether this Animator is currently running (having been started and gone past any
  /// initial startDelay period and not yet ended).
  ///@return Whether the Animator is running.
  bool isRunning() => jniAccessors.callMethodWithArgs(
      reference, _id_isRunning, jni.JniType.booleanType, []).boolean;

  static final _id_isStarted =
      jniAccessors.getMethodIDOf(_classRef, "isStarted", "()Z");

  /// from: public boolean isStarted()
  ///
  /// Returns whether this Animator has been started and not yet ended. For reusable
  /// Animators (which most Animators are, apart from the one-shot animator produced by
  /// android.view.ViewAnimationUtils\#createCircularReveal(
  /// android.view.View, int, int, float, float) createCircularReveal()),
  /// this state is a superset of \#isRunning(), because an Animator with a
  /// nonzero \#getStartDelay() startDelay will return true for \#isStarted() during
  /// the delay phase, whereas \#isRunning() will return true only after the delay phase
  /// is complete. Non-reusable animators will always return true after they have been
  /// started, because they cannot return to a non-started state.
  ///@return Whether the Animator has been started and not yet ended.
  bool isStarted() => jniAccessors.callMethodWithArgs(
      reference, _id_isStarted, jni.JniType.booleanType, []).boolean;

  static final _id_addListener = jniAccessors.getMethodIDOf(_classRef,
      "addListener", "(Landroid/animation/Animator\$AnimatorListener;)V");

  /// from: public void addListener(android.animation.Animator.AnimatorListener listener)
  ///
  /// Adds a listener to the set of listeners that are sent events through the life of an
  /// animation, such as start, repeat, and end.
  ///@param listener the listener to be added to the current set of listeners for this animation.
  void addListener(Animator_AnimatorListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_addListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_removeListener = jniAccessors.getMethodIDOf(_classRef,
      "removeListener", "(Landroid/animation/Animator\$AnimatorListener;)V");

  /// from: public void removeListener(android.animation.Animator.AnimatorListener listener)
  ///
  /// Removes a listener from the set listening to this animation.
  ///@param listener the listener to be removed from the current set of listeners for this
  ///                 animation.
  void removeListener(Animator_AnimatorListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_removeListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_getListeners = jniAccessors.getMethodIDOf(
      _classRef, "getListeners", "()Ljava/util/ArrayList;");

  /// from: public java.util.ArrayList<android.animation.Animator.AnimatorListener> getListeners()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the set of android.animation.Animator.AnimatorListener objects that are currently
  /// listening for events on this <code>Animator</code> object.
  ///@return ArrayList<AnimatorListener> The set of listeners.
  jni.JniObject getListeners() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getListeners, jni.JniType.objectType, []).object);

  static final _id_addPauseListener = jniAccessors.getMethodIDOf(
      _classRef,
      "addPauseListener",
      "(Landroid/animation/Animator\$AnimatorPauseListener;)V");

  /// from: public void addPauseListener(android.animation.Animator.AnimatorPauseListener listener)
  ///
  /// Adds a pause listener to this animator.
  ///@param listener the listener to be added to the current set of pause listeners
  /// for this animation.
  void addPauseListener(Animator_AnimatorPauseListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_addPauseListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_removePauseListener = jniAccessors.getMethodIDOf(
      _classRef,
      "removePauseListener",
      "(Landroid/animation/Animator\$AnimatorPauseListener;)V");

  /// from: public void removePauseListener(android.animation.Animator.AnimatorPauseListener listener)
  ///
  /// Removes a pause listener from the set listening to this animation.
  ///@param listener the listener to be removed from the current set of pause
  /// listeners for this animation.
  void removePauseListener(Animator_AnimatorPauseListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_removePauseListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_removeAllListeners =
      jniAccessors.getMethodIDOf(_classRef, "removeAllListeners", "()V");

  /// from: public void removeAllListeners()
  ///
  /// Removes all \#addListener(android.animation.Animator.AnimatorListener) listeners
  /// and \#addPauseListener(android.animation.Animator.AnimatorPauseListener) pauseListeners from this object.
  void removeAllListeners() => jniAccessors.callMethodWithArgs(
      reference, _id_removeAllListeners, jni.JniType.voidType, []).check();

  static final _id_clone = jniAccessors.getMethodIDOf(
      _classRef, "clone", "()Landroid/animation/Animator;");

  /// from: public android.animation.Animator clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Animator clone() => Animator.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_clone, jni.JniType.objectType, []).object);

  static final _id_setupStartValues =
      jniAccessors.getMethodIDOf(_classRef, "setupStartValues", "()V");

  /// from: public void setupStartValues()
  ///
  /// This method tells the object to use appropriate information to extract
  /// starting values for the animation. For example, a AnimatorSet object will pass
  /// this call to its child objects to tell them to set up the values. A
  /// ObjectAnimator object will use the information it has about its target object
  /// and PropertyValuesHolder objects to get the start values for its properties.
  /// A ValueAnimator object will ignore the request since it does not have enough
  /// information (such as a target object) to gather these values.
  void setupStartValues() => jniAccessors.callMethodWithArgs(
      reference, _id_setupStartValues, jni.JniType.voidType, []).check();

  static final _id_setupEndValues =
      jniAccessors.getMethodIDOf(_classRef, "setupEndValues", "()V");

  /// from: public void setupEndValues()
  ///
  /// This method tells the object to use appropriate information to extract
  /// ending values for the animation. For example, a AnimatorSet object will pass
  /// this call to its child objects to tell them to set up the values. A
  /// ObjectAnimator object will use the information it has about its target object
  /// and PropertyValuesHolder objects to get the start values for its properties.
  /// A ValueAnimator object will ignore the request since it does not have enough
  /// information (such as a target object) to gather these values.
  void setupEndValues() => jniAccessors.callMethodWithArgs(
      reference, _id_setupEndValues, jni.JniType.voidType, []).check();

  static final _id_setTarget = jniAccessors.getMethodIDOf(
      _classRef, "setTarget", "(Ljava/lang/Object;)V");

  /// from: public void setTarget(java.lang.Object target)
  ///
  /// Sets the target object whose property will be animated by this animation. Not all subclasses
  /// operate on target objects (for example, ValueAnimator, but this method
  /// is on the superclass for the convenience of dealing generically with those subclasses
  /// that do handle targets.
  ///
  /// <strong>Note:</strong> The target is stored as a weak reference internally to avoid leaking
  /// resources by having animators directly reference old targets. Therefore, you should
  /// ensure that animator targets always have a hard reference elsewhere.
  ///@param target The object being animated
  ///
  /// This value may be {@code null}.
  void setTarget(jni.JniObject target) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setTarget,
      jni.JniType.voidType,
      [target.reference]).check();
}

/// from: android.animation.Animator$AnimatorPauseListener
///
/// A pause listener receives notifications from an animation when the
/// animation is \#pause() paused or \#resume() resumed.
///@see \#addPauseListener(AnimatorPauseListener)
class Animator_AnimatorPauseListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/animation/Animator\$AnimatorPauseListener");
  Animator_AnimatorPauseListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onAnimationPause = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationPause", "(Landroid/animation/Animator;)V");

  /// from: public abstract void onAnimationPause(android.animation.Animator animation)
  ///
  /// Notifies that the animation was paused.
  ///
  ///@param animation The animaton being paused.
  ///@see \#pause()
  void onAnimationPause(Animator animation) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onAnimationPause,
      jni.JniType.voidType,
      [animation.reference]).check();

  static final _id_onAnimationResume = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationResume", "(Landroid/animation/Animator;)V");

  /// from: public abstract void onAnimationResume(android.animation.Animator animation)
  ///
  /// Notifies that the animation was resumed, after being
  /// previously paused.
  ///
  ///@param animation The animation being resumed.
  ///@see \#resume()
  void onAnimationResume(Animator animation) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onAnimationResume,
      jni.JniType.voidType,
      [animation.reference]).check();
}

/// from: android.animation.Animator$AnimatorListener
///
/// An animation listener receives notifications from an animation.
/// Notifications indicate animation related events, such as the end or the
/// repetition of the animation.
///
class Animator_AnimatorListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/animation/Animator\$AnimatorListener");
  Animator_AnimatorListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onAnimationStart = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationStart", "(Landroid/animation/Animator;Z)V");

  /// from: default public void onAnimationStart(android.animation.Animator animation, boolean isReverse)
  ///
  /// Notifies the start of the animation as well as the animation's overall play direction.
  /// This method's default behavior is to call \#onAnimationStart(Animator). This
  /// method can be overridden, though not required, to get the additional play direction info
  /// when an animation starts. Skipping calling super when overriding this method results in
  /// \#onAnimationStart(Animator) not getting called.
  ///@param animation The started animation.
  ///@param isReverse Whether the animation is playing in reverse.
  void onAnimationStart(Animator animation, bool isReverse) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAnimationStart,
          jni.JniType.voidType, [animation.reference, isReverse]).check();

  static final _id_onAnimationEnd = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationEnd", "(Landroid/animation/Animator;Z)V");

  /// from: default public void onAnimationEnd(android.animation.Animator animation, boolean isReverse)
  ///
  /// Notifies the end of the animation. This callback is not invoked
  /// for animations with repeat count set to INFINITE.
  ///
  ///
  /// This method's default behavior is to call \#onAnimationEnd(Animator). This
  /// method can be overridden, though not required, to get the additional play direction info
  /// when an animation ends. Skipping calling super when overriding this method results in
  /// \#onAnimationEnd(Animator) not getting called.
  ///@param animation The animation which reached its end.
  ///@param isReverse Whether the animation is playing in reverse.
  void onAnimationEnd(Animator animation, bool isReverse) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAnimationEnd,
          jni.JniType.voidType, [animation.reference, isReverse]).check();

  static final _id_onAnimationStart1 = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationStart", "(Landroid/animation/Animator;)V");

  /// from: public abstract void onAnimationStart(android.animation.Animator animation)
  ///
  /// Notifies the start of the animation.
  ///
  ///@param animation The started animation.
  void onAnimationStart1(Animator animation) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onAnimationStart1,
      jni.JniType.voidType,
      [animation.reference]).check();

  static final _id_onAnimationEnd1 = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationEnd", "(Landroid/animation/Animator;)V");

  /// from: public abstract void onAnimationEnd(android.animation.Animator animation)
  ///
  /// Notifies the end of the animation. This callback is not invoked
  /// for animations with repeat count set to INFINITE.
  ///
  ///@param animation The animation which reached its end.
  void onAnimationEnd1(Animator animation) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onAnimationEnd1,
      jni.JniType.voidType,
      [animation.reference]).check();

  static final _id_onAnimationCancel = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationCancel", "(Landroid/animation/Animator;)V");

  /// from: public abstract void onAnimationCancel(android.animation.Animator animation)
  ///
  /// Notifies the cancellation of the animation. This callback is not invoked
  /// for animations with repeat count set to INFINITE.
  ///
  ///@param animation The animation which was canceled.
  void onAnimationCancel(Animator animation) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onAnimationCancel,
      jni.JniType.voidType,
      [animation.reference]).check();

  static final _id_onAnimationRepeat = jniAccessors.getMethodIDOf(
      _classRef, "onAnimationRepeat", "(Landroid/animation/Animator;)V");

  /// from: public abstract void onAnimationRepeat(android.animation.Animator animation)
  ///
  /// Notifies the repetition of the animation.
  ///
  ///@param animation The animation which was repeated.
  void onAnimationRepeat(Animator animation) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onAnimationRepeat,
      jni.JniType.voidType,
      [animation.reference]).check();
}
