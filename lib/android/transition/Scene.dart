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

import "../view/ViewGroup.dart" as viewgroup_;

import "../view/View.dart" as view_;

import "../content/Context.dart" as context_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.transition.Scene
///
/// A scene represents the collection of values that various properties in the
/// View hierarchy will have when the scene is applied. A Scene can be
/// configured to automatically run a Transition when it is applied, which will
/// animate the various property changes that take place during the
/// scene change.
class Scene extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/transition/Scene");
  Scene.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/ViewGroup;)V");

  /// from: public void <init>(android.view.ViewGroup sceneRoot)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a Scene with no information about how values will change
  /// when this scene is applied. This constructor might be used when
  /// a Scene is created with the intention of being dynamically configured,
  /// through setting \#setEnterAction(Runnable) and possibly
  /// \#setExitAction(Runnable).
  ///@param sceneRoot The root of the hierarchy in which scene changes
  /// and transitions will take place.
  Scene(viewgroup_.ViewGroup sceneRoot)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [sceneRoot.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/view/ViewGroup;Landroid/view/View;)V");

  /// from: public void <init>(android.view.ViewGroup sceneRoot, android.view.View layout)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a Scene which, when entered, will remove any
  /// children from the sceneRoot container and add the layout
  /// object as a new child of that container.
  ///@param sceneRoot The root of the hierarchy in which scene changes
  /// and transitions will take place.
  ///@param layout The view hierarchy of this scene, added as a child
  /// of sceneRoot when this scene is entered.
  Scene.ctor1(viewgroup_.ViewGroup sceneRoot, view_.View layout)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [sceneRoot.reference, layout.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V");

  /// from: public void <init>(android.view.ViewGroup sceneRoot, android.view.ViewGroup layout)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated use \#Scene(ViewGroup, View).
  Scene.ctor2(viewgroup_.ViewGroup sceneRoot, viewgroup_.ViewGroup layout)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [sceneRoot.reference, layout.reference]).object);

  static final _id_getSceneForLayout = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getSceneForLayout",
      "(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;");

  /// from: static public android.transition.Scene getSceneForLayout(android.view.ViewGroup sceneRoot, int layoutId, android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a Scene described by the resource file associated with the given
  /// <code>layoutId</code> parameter. If such a Scene has already been created for
  /// the given <code>sceneRoot</code>, that same Scene will be returned.
  /// This caching of layoutId-based scenes enables sharing of common scenes
  /// between those created in code and those referenced by TransitionManager
  /// XML resource files.
  ///@param sceneRoot The root of the hierarchy in which scene changes
  /// and transitions will take place.
  ///@param layoutId The id of a standard layout resource file.
  ///@param context The context used in the process of inflating
  /// the layout resource.
  ///@return The scene for the given root and layout id
  static Scene getSceneForLayout(viewgroup_.ViewGroup sceneRoot, int layoutId,
          context_.Context context) =>
      Scene.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getSceneForLayout,
          jni.JniType.objectType,
          [sceneRoot.reference, layoutId, context.reference]).object);

  static final _id_getSceneRoot = jniAccessors.getMethodIDOf(
      _classRef, "getSceneRoot", "()Landroid/view/ViewGroup;");

  /// from: public android.view.ViewGroup getSceneRoot()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the root of the scene, which is the root of the view hierarchy
  /// affected by changes due to this scene, and which will be animated
  /// when this scene is entered.
  ///@return The root of the view hierarchy affected by this scene.
  viewgroup_.ViewGroup getSceneRoot() =>
      viewgroup_.ViewGroup.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSceneRoot, jni.JniType.objectType, []).object);

  static final _id_exit = jniAccessors.getMethodIDOf(_classRef, "exit", "()V");

  /// from: public void exit()
  ///
  /// Exits this scene, if it is the current scene
  /// on the scene's \#getSceneRoot() scene root. The current scene is
  /// set when \#enter() entering a scene.
  /// Exiting a scene runs the \#setExitAction(Runnable) exit action
  /// if there is one.
  void exit() => jniAccessors.callMethodWithArgs(
      reference, _id_exit, jni.JniType.voidType, []).check();

  static final _id_enter =
      jniAccessors.getMethodIDOf(_classRef, "enter", "()V");

  /// from: public void enter()
  ///
  /// Enters this scene, which entails changing all values that
  /// are specified by this scene. These may be values associated
  /// with a layout view group or layout resource file which will
  /// now be added to the scene root, or it may be values changed by
  /// an \#setEnterAction(Runnable) enter action}, or a
  /// combination of the these. No transition will be run when the
  /// scene is entered. To get transition behavior in scene changes,
  /// use one of the methods in TransitionManager instead.
  void enter() => jniAccessors.callMethodWithArgs(
      reference, _id_enter, jni.JniType.voidType, []).check();

  static final _id_setEnterAction = jniAccessors.getMethodIDOf(
      _classRef, "setEnterAction", "(Ljava/lang/Runnable;)V");

  /// from: public void setEnterAction(java.lang.Runnable action)
  ///
  /// Scenes that are not defined with layout resources or
  /// hierarchies, or which need to perform additional steps
  /// after those hierarchies are changed to, should set an enter
  /// action, and possibly an exit action as well. An enter action
  /// will cause Scene to call back into application code to do
  /// anything else the application needs after transitions have
  /// captured pre-change values and after any other scene changes
  /// have been applied, such as the layout (if any) being added to
  /// the view hierarchy. After this method is called, Transitions will
  /// be played.
  ///@param action The runnable whose Runnable\#run() run() method will
  /// be called when this scene is entered
  ///@see \#setExitAction(Runnable)
  ///@see Scene\#Scene(ViewGroup, int, Context)
  ///@see Scene\#Scene(ViewGroup, ViewGroup)
  void setEnterAction(jni.JniObject action) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setEnterAction,
      jni.JniType.voidType,
      [action.reference]).check();

  static final _id_setExitAction = jniAccessors.getMethodIDOf(
      _classRef, "setExitAction", "(Ljava/lang/Runnable;)V");

  /// from: public void setExitAction(java.lang.Runnable action)
  ///
  /// Scenes that are not defined with layout resources or
  /// hierarchies, or which need to perform additional steps
  /// after those hierarchies are changed to, should set an enter
  /// action, and possibly an exit action as well. An exit action
  /// will cause Scene to call back into application code to do
  /// anything the application needs to do after applicable transitions have
  /// captured pre-change values, but before any other scene changes
  /// have been applied, such as the new layout (if any) being added to
  /// the view hierarchy. After this method is called, the next scene
  /// will be entered, including a call to \#setEnterAction(Runnable)
  /// if an enter action is set.
  ///@see \#setEnterAction(Runnable)
  ///@see Scene\#Scene(ViewGroup, int, Context)
  ///@see Scene\#Scene(ViewGroup, ViewGroup)
  void setExitAction(jni.JniObject action) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setExitAction,
      jni.JniType.voidType,
      [action.reference]).check();
}
