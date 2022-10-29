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

import "Scene.dart" as scene_;

import "Transition.dart" as transition_;

import "../view/ViewGroup.dart" as viewgroup_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.transition.TransitionManager
///
/// This class manages the set of transitions that fire when there is a
/// change of Scene. To use the manager, add scenes along with
/// transition objects with calls to \#setTransition(Scene, Transition)
/// or \#setTransition(Scene, Scene, Transition). Setting specific
/// transitions for scene changes is not required; by default, a Scene change
/// will use AutoTransition to do something reasonable for most
/// situations. Specifying other transitions for particular scene changes is
/// only necessary if the application wants different transition behavior
/// in these situations.
///
/// TransitionManagers can be declared in XML resource files inside the
/// <code>res/transition</code> directory. TransitionManager resources consist of
/// the <code>transitionManager</code>tag name, containing one or more
/// <code>transition</code> tags, each of which describe the relationship of
/// that transition to the from/to scene information in that tag.
/// For example, here is a resource file that declares several scene
/// transitions:
///
///
/// {@sample development/samples/ApiDemos/res/transition/transitions_mgr.xml TransitionManager}
///
/// For each of the <code>fromScene</code> and <code>toScene</code> attributes,
/// there is a reference to a standard XML layout file. This is equivalent to
/// creating a scene from a layout in code by calling
/// Scene\#getSceneForLayout(ViewGroup, int, Context). For the
/// <code>transition</code> attribute, there is a reference to a resource
/// file in the <code>res/transition</code> directory which describes that
/// transition.
///
///
/// Information on XML resource descriptions for transitions can be found for
/// android.R.styleable\#Transition, android.R.styleable\#TransitionSet,
/// android.R.styleable\#TransitionTarget, android.R.styleable\#Fade,
/// and android.R.styleable\#TransitionManager.
class TransitionManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/transition/TransitionManager");
  TransitionManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  TransitionManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setTransition = jniAccessors.getMethodIDOf(
      _classRef,
      "setTransition",
      "(Landroid/transition/Scene;Landroid/transition/Transition;)V");

  /// from: public void setTransition(android.transition.Scene scene, android.transition.Transition transition)
  ///
  /// Sets a specific transition to occur when the given scene is entered.
  ///@param scene The scene which, when applied, will cause the given
  /// transition to run.
  ///@param transition The transition that will play when the given scene is
  /// entered. A value of null will result in the default behavior of
  /// using the default transition instead.
  void setTransition(scene_.Scene scene, transition_.Transition transition) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setTransition,
          jni.JniType.voidType,
          [scene.reference, transition.reference]).check();

  static final _id_setTransition1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setTransition",
      "(Landroid/transition/Scene;Landroid/transition/Scene;Landroid/transition/Transition;)V");

  /// from: public void setTransition(android.transition.Scene fromScene, android.transition.Scene toScene, android.transition.Transition transition)
  ///
  /// Sets a specific transition to occur when the given pair of scenes is
  /// exited/entered.
  ///@param fromScene The scene being exited when the given transition will
  /// be run
  ///@param toScene The scene being entered when the given transition will
  /// be run
  ///@param transition The transition that will play when the given scene is
  /// entered. A value of null will result in the default behavior of
  /// using the default transition instead.
  void setTransition1(scene_.Scene fromScene, scene_.Scene toScene,
          transition_.Transition transition) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_setTransition1, jni.JniType.voidType, [
        fromScene.reference,
        toScene.reference,
        transition.reference
      ]).check();

  static final _id_transitionTo = jniAccessors.getMethodIDOf(
      _classRef, "transitionTo", "(Landroid/transition/Scene;)V");

  /// from: public void transitionTo(android.transition.Scene scene)
  ///
  /// Change to the given scene, using the
  /// appropriate transition for this particular scene change
  /// (as specified to the TransitionManager, or the default
  /// if no such transition exists).
  ///@param scene The Scene to change to
  void transitionTo(scene_.Scene scene) => jniAccessors.callMethodWithArgs(
      reference,
      _id_transitionTo,
      jni.JniType.voidType,
      [scene.reference]).check();

  static final _id_go = jniAccessors.getStaticMethodIDOf(
      _classRef, "go", "(Landroid/transition/Scene;)V");

  /// from: static public void go(android.transition.Scene scene)
  ///
  /// Convenience method to simply change to the given scene using
  /// the default transition for TransitionManager.
  ///@param scene The Scene to change to
  static void go(scene_.Scene scene) => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_go, jni.JniType.voidType, [scene.reference]).check();

  static final _id_go1 = jniAccessors.getStaticMethodIDOf(_classRef, "go",
      "(Landroid/transition/Scene;Landroid/transition/Transition;)V");

  /// from: static public void go(android.transition.Scene scene, android.transition.Transition transition)
  ///
  /// Convenience method to simply change to the given scene using
  /// the given transition.
  ///
  /// Passing in <code>null</code> for the transition parameter will
  /// result in the scene changing without any transition running, and is
  /// equivalent to calling Scene\#exit() on the scene root's
  /// current scene, followed by Scene\#enter() on the scene
  /// specified by the <code>scene</code> parameter.
  ///
  ///@param scene The Scene to change to
  ///@param transition The transition to use for this scene change. A
  /// value of null causes the scene change to happen with no transition.
  static void go1(scene_.Scene scene, transition_.Transition transition) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_go1,
          jni.JniType.voidType,
          [scene.reference, transition.reference]).check();

  static final _id_beginDelayedTransition = jniAccessors.getStaticMethodIDOf(
      _classRef, "beginDelayedTransition", "(Landroid/view/ViewGroup;)V");

  /// from: static public void beginDelayedTransition(android.view.ViewGroup sceneRoot)
  ///
  /// Convenience method to animate, using the default transition,
  /// to a new scene defined by all changes within the given scene root between
  /// calling this method and the next rendering frame.
  /// Equivalent to calling \#beginDelayedTransition(ViewGroup, Transition)
  /// with a value of <code>null</code> for the <code>transition</code> parameter.
  ///@param sceneRoot The root of the View hierarchy to run the transition on.
  static void beginDelayedTransition(viewgroup_.ViewGroup sceneRoot) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_beginDelayedTransition,
          jni.JniType.voidType,
          [sceneRoot.reference]).check();

  static final _id_beginDelayedTransition1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "beginDelayedTransition",
      "(Landroid/view/ViewGroup;Landroid/transition/Transition;)V");

  /// from: static public void beginDelayedTransition(android.view.ViewGroup sceneRoot, android.transition.Transition transition)
  ///
  /// Convenience method to animate to a new scene defined by all changes within
  /// the given scene root between calling this method and the next rendering frame.
  /// Calling this method causes TransitionManager to capture current values in the
  /// scene root and then post a request to run a transition on the next frame.
  /// At that time, the new values in the scene root will be captured and changes
  /// will be animated. There is no need to create a Scene; it is implied by
  /// changes which take place between calling this method and the next frame when
  /// the transition begins.
  ///
  /// Calling this method several times before the next frame (for example, if
  /// unrelated code also wants to make dynamic changes and run a transition on
  /// the same scene root), only the first call will trigger capturing values
  /// and exiting the current scene. Subsequent calls to the method with the
  /// same scene root during the same frame will be ignored.
  ///
  ///
  /// Passing in <code>null</code> for the transition parameter will
  /// cause the TransitionManager to use its default transition.
  ///
  ///@param sceneRoot The root of the View hierarchy to run the transition on.
  ///@param transition The transition to use for this change. A
  /// value of null causes the TransitionManager to use the default transition.
  static void beginDelayedTransition1(
          viewgroup_.ViewGroup sceneRoot, transition_.Transition transition) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_beginDelayedTransition1,
          jni.JniType.voidType,
          [sceneRoot.reference, transition.reference]).check();

  static final _id_endTransitions = jniAccessors.getStaticMethodIDOf(
      _classRef, "endTransitions", "(Landroid/view/ViewGroup;)V");

  /// from: static public void endTransitions(android.view.ViewGroup sceneRoot)
  ///
  /// Ends all pending and ongoing transitions on the specified scene root.
  ///@param sceneRoot The root of the View hierarchy to end transitions on.
  static void endTransitions(viewgroup_.ViewGroup sceneRoot) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_endTransitions,
          jni.JniType.voidType, [sceneRoot.reference]).check();
}
