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

import "Animator.dart" as animator_;

import "TimeInterpolator.dart" as timeinterpolator_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.animation.AnimatorSet
///
/// This class plays a set of Animator objects in the specified order. Animations
/// can be set up to play together, in sequence, or after a specified delay.
///
/// There are two different approaches to adding animations to a <code>AnimatorSet</code>:
/// either the AnimatorSet\#playTogether(Animator[]) playTogether() or
/// AnimatorSet\#playSequentially(Animator[]) playSequentially() methods can be called to add
/// a set of animations all at once, or the AnimatorSet\#play(Animator) can be
/// used in conjunction with methods in the AnimatorSet.Builder Builder
/// class to add animations
/// one by one.
///
///
/// It is possible to set up a <code>AnimatorSet</code> with circular dependencies between
/// its animations. For example, an animation a1 could be set up to start before animation a2, a2
/// before a3, and a3 before a1. The results of this configuration are undefined, but will typically
/// result in none of the affected animations being played. Because of this (and because
/// circular dependencies do not make logical sense anyway), circular dependencies
/// should be avoided, and the dependency flow of animations should only be in one direction.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about animating with {@code AnimatorSet}, read the
/// <a href="{@docRoot}guide/topics/graphics/prop-animation.html\#choreography">Property
/// Animation</a> developer guide.
///
/// </div>
class AnimatorSet extends animator_.Animator {
  static final _classRef =
      jniAccessors.getClassOf("android/animation/AnimatorSet");
  AnimatorSet.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AnimatorSet()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_playTogether = jniAccessors.getMethodIDOf(
      _classRef, "playTogether", "([Landroid/animation/Animator;)V");

  /// from: public void playTogether(android.animation.Animator[] items)
  ///
  /// Sets up this AnimatorSet to play all of the supplied animations at the same time.
  /// This is equivalent to calling \#play(Animator) with the first animator in the
  /// set and then Builder\#with(Animator) with each of the other animators. Note that
  /// an Animator with a Animator\#setStartDelay(long) startDelay will not actually
  /// start until that delay elapses, which means that if the first animator in the list
  /// supplied to this constructor has a startDelay, none of the other animators will start
  /// until that first animator's startDelay has elapsed.
  ///@param items The animations that will be started simultaneously.
  void playTogether(jni.JniObject items) => jniAccessors.callMethodWithArgs(
      reference,
      _id_playTogether,
      jni.JniType.voidType,
      [items.reference]).check();

  static final _id_playTogether1 = jniAccessors.getMethodIDOf(
      _classRef, "playTogether", "(Ljava/util/Collection;)V");

  /// from: public void playTogether(java.util.Collection<android.animation.Animator> items)
  ///
  /// Sets up this AnimatorSet to play all of the supplied animations at the same time.
  ///@param items The animations that will be started simultaneously.
  void playTogether1(jni.JniObject items) => jniAccessors.callMethodWithArgs(
      reference,
      _id_playTogether1,
      jni.JniType.voidType,
      [items.reference]).check();

  static final _id_playSequentially = jniAccessors.getMethodIDOf(
      _classRef, "playSequentially", "([Landroid/animation/Animator;)V");

  /// from: public void playSequentially(android.animation.Animator[] items)
  ///
  /// Sets up this AnimatorSet to play each of the supplied animations when the
  /// previous animation ends.
  ///@param items The animations that will be started one after another.
  void playSequentially(jni.JniObject items) => jniAccessors.callMethodWithArgs(
      reference,
      _id_playSequentially,
      jni.JniType.voidType,
      [items.reference]).check();

  static final _id_playSequentially1 = jniAccessors.getMethodIDOf(
      _classRef, "playSequentially", "(Ljava/util/List;)V");

  /// from: public void playSequentially(java.util.List<android.animation.Animator> items)
  ///
  /// Sets up this AnimatorSet to play each of the supplied animations when the
  /// previous animation ends.
  ///@param items The animations that will be started one after another.
  void playSequentially1(jni.JniObject items) =>
      jniAccessors.callMethodWithArgs(reference, _id_playSequentially1,
          jni.JniType.voidType, [items.reference]).check();

  static final _id_getChildAnimations = jniAccessors.getMethodIDOf(
      _classRef, "getChildAnimations", "()Ljava/util/ArrayList;");

  /// from: public java.util.ArrayList<android.animation.Animator> getChildAnimations()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the current list of child Animator objects controlled by this
  /// AnimatorSet. This is a copy of the internal list; modifications to the returned list
  /// will not affect the AnimatorSet, although changes to the underlying Animator objects
  /// will affect those objects being managed by the AnimatorSet.
  ///@return ArrayList<Animator> The list of child animations of this AnimatorSet.
  jni.JniObject getChildAnimations() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getChildAnimations, jni.JniType.objectType, []).object);

  static final _id_setTarget = jniAccessors.getMethodIDOf(
      _classRef, "setTarget", "(Ljava/lang/Object;)V");

  /// from: public void setTarget(java.lang.Object target)
  ///
  /// Sets the target object for all current \#getChildAnimations() child animations
  /// of this AnimatorSet that take targets (ObjectAnimator and
  /// AnimatorSet).
  ///@param target The object being animated
  void setTarget(jni.JniObject target) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setTarget,
      jni.JniType.voidType,
      [target.reference]).check();

  static final _id_setInterpolator = jniAccessors.getMethodIDOf(
      _classRef, "setInterpolator", "(Landroid/animation/TimeInterpolator;)V");

  /// from: public void setInterpolator(android.animation.TimeInterpolator interpolator)
  ///
  /// Sets the TimeInterpolator for all current \#getChildAnimations() child animations
  /// of this AnimatorSet. The default value is null, which means that no interpolator
  /// is set on this AnimatorSet. Setting the interpolator to any non-null value
  /// will cause that interpolator to be set on the child animations
  /// when the set is started.
  ///@param interpolator the interpolator to be used by each child animation of this AnimatorSet
  void setInterpolator(timeinterpolator_.TimeInterpolator interpolator) =>
      jniAccessors.callMethodWithArgs(reference, _id_setInterpolator,
          jni.JniType.voidType, [interpolator.reference]).check();

  static final _id_getInterpolator = jniAccessors.getMethodIDOf(
      _classRef, "getInterpolator", "()Landroid/animation/TimeInterpolator;");

  /// from: public android.animation.TimeInterpolator getInterpolator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  timeinterpolator_.TimeInterpolator getInterpolator() =>
      timeinterpolator_.TimeInterpolator.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getInterpolator,
              jni.JniType.objectType, []).object);

  static final _id_play = jniAccessors.getMethodIDOf(_classRef, "play",
      "(Landroid/animation/Animator;)Landroid/animation/AnimatorSet\$Builder;");

  /// from: public android.animation.AnimatorSet.Builder play(android.animation.Animator anim)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This method creates a <code>Builder</code> object, which is used to
  /// set up playing constraints. This initial <code>play()</code> method
  /// tells the <code>Builder</code> the animation that is the dependency for
  /// the succeeding commands to the <code>Builder</code>. For example,
  /// calling <code>play(a1).with(a2)</code> sets up the AnimatorSet to play
  /// <code>a1</code> and <code>a2</code> at the same time,
  /// <code>play(a1).before(a2)</code> sets up the AnimatorSet to play
  /// <code>a1</code> first, followed by <code>a2</code>, and
  /// <code>play(a1).after(a2)</code> sets up the AnimatorSet to play
  /// <code>a2</code> first, followed by <code>a1</code>.
  ///
  /// Note that <code>play()</code> is the only way to tell the
  /// <code>Builder</code> the animation upon which the dependency is created,
  /// so successive calls to the various functions in <code>Builder</code>
  /// will all refer to the initial parameter supplied in <code>play()</code>
  /// as the dependency of the other animations. For example, calling
  /// <code>play(a1).before(a2).before(a3)</code> will play both <code>a2</code>
  /// and <code>a3</code> when a1 ends; it does not set up a dependency between
  /// <code>a2</code> and <code>a3</code>.
  ///
  ///@param anim The animation that is the dependency used in later calls to the
  /// methods in the returned <code>Builder</code> object. A null parameter will result
  /// in a null <code>Builder</code> return value.
  ///@return Builder The object that constructs the AnimatorSet based on the dependencies
  /// outlined in the calls to <code>play</code> and the other methods in the
  /// <code>Builder</code object.
  AnimatorSet_Builder play(animator_.Animator anim) =>
      AnimatorSet_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_play, jni.JniType.objectType, [anim.reference]).object);

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public void cancel()
  ///
  /// {@inheritDoc}
  ///
  /// Note that canceling a <code>AnimatorSet</code> also cancels all of the animations that it
  /// is responsible for.
  ///
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();

  static final _id_end = jniAccessors.getMethodIDOf(_classRef, "end", "()V");

  /// from: public void end()
  ///
  /// {@inheritDoc}
  ///
  /// Note that ending a <code>AnimatorSet</code> also ends all of the animations that it is
  /// responsible for.
  ///
  void end() => jniAccessors
      .callMethodWithArgs(reference, _id_end, jni.JniType.voidType, []).check();

  static final _id_isRunning =
      jniAccessors.getMethodIDOf(_classRef, "isRunning", "()Z");

  /// from: public boolean isRunning()
  ///
  /// Returns true if any of the child animations of this AnimatorSet have been started and have
  /// not yet ended. Child animations will not be started until the AnimatorSet has gone past
  /// its initial delay set through \#setStartDelay(long).
  ///@return Whether this AnimatorSet has gone past the initial delay, and at least one child
  ///         animation has been started and not yet ended.
  bool isRunning() => jniAccessors.callMethodWithArgs(
      reference, _id_isRunning, jni.JniType.booleanType, []).boolean;

  static final _id_isStarted =
      jniAccessors.getMethodIDOf(_classRef, "isStarted", "()Z");

  /// from: public boolean isStarted()
  bool isStarted() => jniAccessors.callMethodWithArgs(
      reference, _id_isStarted, jni.JniType.booleanType, []).boolean;

  static final _id_getStartDelay =
      jniAccessors.getMethodIDOf(_classRef, "getStartDelay", "()J");

  /// from: public long getStartDelay()
  ///
  /// The amount of time, in milliseconds, to delay starting the animation after
  /// \#start() is called.
  ///@return the number of milliseconds to delay running the animation
  int getStartDelay() => jniAccessors.callMethodWithArgs(
      reference, _id_getStartDelay, jni.JniType.longType, []).long;

  static final _id_setStartDelay =
      jniAccessors.getMethodIDOf(_classRef, "setStartDelay", "(J)V");

  /// from: public void setStartDelay(long startDelay)
  ///
  /// The amount of time, in milliseconds, to delay starting the animation after
  /// \#start() is called. Note that the start delay should always be non-negative. Any
  /// negative start delay will be clamped to 0 on N and above.
  ///@param startDelay The amount of the delay, in milliseconds
  void setStartDelay(int startDelay) => jniAccessors.callMethodWithArgs(
      reference, _id_setStartDelay, jni.JniType.voidType, [startDelay]).check();

  static final _id_getDuration =
      jniAccessors.getMethodIDOf(_classRef, "getDuration", "()J");

  /// from: public long getDuration()
  ///
  /// Gets the length of each of the child animations of this AnimatorSet. This value may
  /// be less than 0, which indicates that no duration has been set on this AnimatorSet
  /// and each of the child animations will use their own duration.
  ///@return The length of the animation, in milliseconds, of each of the child
  /// animations of this AnimatorSet.
  int getDuration() => jniAccessors.callMethodWithArgs(
      reference, _id_getDuration, jni.JniType.longType, []).long;

  static final _id_setDuration1 = jniAccessors.getMethodIDOf(
      _classRef, "setDuration", "(J)Landroid/animation/AnimatorSet;");

  /// from: public android.animation.AnimatorSet setDuration(long duration)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the length of each of the current child animations of this AnimatorSet. By default,
  /// each child animation will use its own duration. If the duration is set on the AnimatorSet,
  /// then each child animation inherits this duration.
  ///@param duration The length of the animation, in milliseconds, of each of the child
  /// animations of this AnimatorSet.
  AnimatorSet setDuration1(int duration) =>
      AnimatorSet.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setDuration1, jni.JniType.objectType, [duration]).object);

  static final _id_setupStartValues =
      jniAccessors.getMethodIDOf(_classRef, "setupStartValues", "()V");

  /// from: public void setupStartValues()
  void setupStartValues() => jniAccessors.callMethodWithArgs(
      reference, _id_setupStartValues, jni.JniType.voidType, []).check();

  static final _id_setupEndValues =
      jniAccessors.getMethodIDOf(_classRef, "setupEndValues", "()V");

  /// from: public void setupEndValues()
  void setupEndValues() => jniAccessors.callMethodWithArgs(
      reference, _id_setupEndValues, jni.JniType.voidType, []).check();

  static final _id_pause =
      jniAccessors.getMethodIDOf(_classRef, "pause", "()V");

  /// from: public void pause()
  void pause() => jniAccessors.callMethodWithArgs(
      reference, _id_pause, jni.JniType.voidType, []).check();

  static final _id_resume =
      jniAccessors.getMethodIDOf(_classRef, "resume", "()V");

  /// from: public void resume()
  void resume() => jniAccessors.callMethodWithArgs(
      reference, _id_resume, jni.JniType.voidType, []).check();

  static final _id_start =
      jniAccessors.getMethodIDOf(_classRef, "start", "()V");

  /// from: public void start()
  ///
  /// {@inheritDoc}
  ///
  /// Starting this <code>AnimatorSet</code> will, in turn, start the animations for which
  /// it is responsible. The details of when exactly those animations are started depends on
  /// the dependency relationships that have been set up between the animations.
  ///
  /// __Note:__ Manipulating AnimatorSet's lifecycle in the child animators' listener callbacks
  /// will lead to undefined behaviors. Also, AnimatorSet will ignore any seeking in the child
  /// animators once \#start() is called.
  void start() => jniAccessors.callMethodWithArgs(
      reference, _id_start, jni.JniType.voidType, []).check();

  static final _id_setCurrentPlayTime =
      jniAccessors.getMethodIDOf(_classRef, "setCurrentPlayTime", "(J)V");

  /// from: public void setCurrentPlayTime(long playTime)
  ///
  /// Sets the position of the animation to the specified point in time. This time should
  /// be between 0 and the total duration of the animation, including any repetition. If
  /// the animation has not yet been started, then it will not advance forward after it is
  /// set to this time; it will simply set the time to this value and perform any appropriate
  /// actions based on that time. If the animation is already running, then setCurrentPlayTime()
  /// will set the current playing time to this value and continue playing from that point.
  ///@param playTime The time, in milliseconds, to which the animation is advanced or rewound.
  ///                 Unless the animation is reversing, the playtime is considered the time since
  ///                 the end of the start delay of the AnimatorSet in a forward playing direction.
  void setCurrentPlayTime(int playTime) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setCurrentPlayTime,
      jni.JniType.voidType,
      [playTime]).check();

  static final _id_getCurrentPlayTime =
      jniAccessors.getMethodIDOf(_classRef, "getCurrentPlayTime", "()J");

  /// from: public long getCurrentPlayTime()
  ///
  /// Returns the milliseconds elapsed since the start of the animation.
  ///
  /// For ongoing animations, this method returns the current progress of the animation in
  /// terms of play time. For an animation that has not yet been started: if the animation has been
  /// seeked to a certain time via \#setCurrentPlayTime(long), the seeked play time will
  /// be returned; otherwise, this method will return 0.
  ///@return the current position in time of the animation in milliseconds
  int getCurrentPlayTime() => jniAccessors.callMethodWithArgs(
      reference, _id_getCurrentPlayTime, jni.JniType.longType, []).long;

  static final _id_clone1 = jniAccessors.getMethodIDOf(
      _classRef, "clone", "()Landroid/animation/AnimatorSet;");

  /// from: public android.animation.AnimatorSet clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AnimatorSet clone1() => AnimatorSet.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_clone1, jni.JniType.objectType, []).object);

  static final _id_reverse =
      jniAccessors.getMethodIDOf(_classRef, "reverse", "()V");

  /// from: public void reverse()
  ///
  /// Plays the AnimatorSet in reverse. If the animation has been seeked to a specific play time
  /// using \#setCurrentPlayTime(long), it will play backwards from the point seeked when
  /// reverse was called. Otherwise, then it will start from the end and play backwards. This
  /// behavior is only set for the current animation; future playing of the animation will use the
  /// default behavior of playing forward.
  ///
  /// Note: reverse is not supported for infinite AnimatorSet.
  void reverse() => jniAccessors.callMethodWithArgs(
      reference, _id_reverse, jni.JniType.voidType, []).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_getTotalDuration =
      jniAccessors.getMethodIDOf(_classRef, "getTotalDuration", "()J");

  /// from: public long getTotalDuration()
  int getTotalDuration() => jniAccessors.callMethodWithArgs(
      reference, _id_getTotalDuration, jni.JniType.longType, []).long;
}

/// from: android.animation.AnimatorSet$Builder
///
/// The <code>Builder</code> object is a utility class to facilitate adding animations to a
/// <code>AnimatorSet</code> along with the relationships between the various animations. The
/// intention of the <code>Builder</code> methods, along with the AnimatorSet\#play(Animator) play() method of <code>AnimatorSet</code> is to make it possible
/// to express the dependency relationships of animations in a natural way. Developers can also
/// use the AnimatorSet\#playTogether(Animator[]) playTogether() and AnimatorSet\#playSequentially(Animator[]) playSequentially() methods if these suit the need,
/// but it might be easier in some situations to express the AnimatorSet of animations in pairs.
/// <p/>
/// The <code>Builder</code> object cannot be constructed directly, but is rather constructed
/// internally via a call to AnimatorSet\#play(Animator).
///
/// <p/>
/// For example, this sets up a AnimatorSet to play anim1 and anim2 at the same time, anim3 to
/// play when anim2 finishes, and anim4 to play when anim3 finishes:
///
/// <pre>
///     AnimatorSet s = new AnimatorSet();
///     s.play(anim1).with(anim2);
///     s.play(anim2).before(anim3);
///     s.play(anim4).after(anim3);
/// </pre>
/// <p/>
/// Note in the example that both Builder\#before(Animator) and Builder\#after(Animator) are used. These are just different ways of expressing the same
/// relationship and are provided to make it easier to say things in a way that is more natural,
/// depending on the situation.
///
/// <p/>
/// It is possible to make several calls into the same <code>Builder</code> object to express
/// multiple relationships. However, note that it is only the animation passed into the initial
/// AnimatorSet\#play(Animator) method that is the dependency in any of the successive
/// calls to the <code>Builder</code> object. For example, the following code starts both anim2
/// and anim3 when anim1 ends; there is no direct dependency relationship between anim2 and
/// anim3:
/// <pre>
///   AnimatorSet s = new AnimatorSet();
///   s.play(anim1).before(anim2).before(anim3);
/// </pre>
/// If the desired result is to play anim1 then anim2 then anim3, this code expresses the
/// relationship correctly:
///
/// <pre>
///   AnimatorSet s = new AnimatorSet();
///   s.play(anim1).before(anim2);
///   s.play(anim2).before(anim3);
/// </pre>
/// <p/>
/// Note that it is possible to express relationships that cannot be resolved and will not
/// result in sensible results. For example, <code>play(anim1).after(anim1)</code> makes no
/// sense. In general, circular dependencies like this one (or more indirect ones where a depends
/// on b, which depends on c, which depends on a) should be avoided. Only create AnimatorSets
/// that can boil down to a simple, one-way relationship of animations starting with, before, and
/// after other, different, animations.
///
class AnimatorSet_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/animation/AnimatorSet\$Builder");
  AnimatorSet_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/animation/Animator;)V");

  /// from: void <init>(android.animation.Animator anim)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// package-private constructor. Builders are only constructed by AnimatorSet, when the
  /// play() method is called.
  ///@param anim The animation that is the dependency for the other animations passed into
  /// the other methods of this Builder object.
  AnimatorSet_Builder(animator_.Animator anim)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [anim.reference]).object);

  static final _id_with0 = jniAccessors.getMethodIDOf(_classRef, "with",
      "(Landroid/animation/Animator;)Landroid/animation/AnimatorSet\$Builder;");

  /// from: public android.animation.AnimatorSet.Builder with(android.animation.Animator anim)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets up the given animation to play at the same time as the animation supplied in the
  /// AnimatorSet\#play(Animator) call that created this <code>Builder</code> object.
  ///@param anim The animation that will play when the animation supplied to the
  /// AnimatorSet\#play(Animator) method starts.
  AnimatorSet_Builder with0(animator_.Animator anim) =>
      AnimatorSet_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_with0, jni.JniType.objectType, [anim.reference]).object);

  static final _id_before = jniAccessors.getMethodIDOf(_classRef, "before",
      "(Landroid/animation/Animator;)Landroid/animation/AnimatorSet\$Builder;");

  /// from: public android.animation.AnimatorSet.Builder before(android.animation.Animator anim)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets up the given animation to play when the animation supplied in the
  /// AnimatorSet\#play(Animator) call that created this <code>Builder</code> object
  /// ends.
  ///@param anim The animation that will play when the animation supplied to the
  /// AnimatorSet\#play(Animator) method ends.
  AnimatorSet_Builder before(animator_.Animator anim) =>
      AnimatorSet_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_before, jni.JniType.objectType, [anim.reference]).object);

  static final _id_after = jniAccessors.getMethodIDOf(_classRef, "after",
      "(Landroid/animation/Animator;)Landroid/animation/AnimatorSet\$Builder;");

  /// from: public android.animation.AnimatorSet.Builder after(android.animation.Animator anim)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets up the given animation to play when the animation supplied in the
  /// AnimatorSet\#play(Animator) call that created this <code>Builder</code> object
  /// to start when the animation supplied in this method call ends.
  ///@param anim The animation whose end will cause the animation supplied to the
  /// AnimatorSet\#play(Animator) method to play.
  AnimatorSet_Builder after(animator_.Animator anim) =>
      AnimatorSet_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_after, jni.JniType.objectType, [anim.reference]).object);

  static final _id_after1 = jniAccessors.getMethodIDOf(
      _classRef, "after", "(J)Landroid/animation/AnimatorSet\$Builder;");

  /// from: public android.animation.AnimatorSet.Builder after(long delay)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets up the animation supplied in the
  /// AnimatorSet\#play(Animator) call that created this <code>Builder</code> object
  /// to play when the given amount of time elapses.
  ///@param delay The number of milliseconds that should elapse before the
  /// animation starts.
  AnimatorSet_Builder after1(int delay) =>
      AnimatorSet_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_after1, jni.JniType.objectType, [delay]).object);
}
