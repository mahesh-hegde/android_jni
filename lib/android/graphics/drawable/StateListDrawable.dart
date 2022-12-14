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

import "DrawableContainer.dart" as drawablecontainer_;

import "Drawable.dart" as drawable_;

import "../../content/res/Resources.dart" as resources_;

import "../../util/AttributeSet.dart" as attributeset_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.drawable.StateListDrawable
///
/// Lets you assign a number of graphic images to a single Drawable and swap out the visible item by a string
/// ID value.
/// <p/>
/// It can be defined in an XML file with the <code>&lt;selector></code> element.
/// Each state Drawable is defined in a nested <code>&lt;item></code> element. For more
/// information, see the guide to <a href="{@docRoot}guide/topics/resources/drawable-resource.html">Drawable Resources</a>.
///
///@attr ref android.R.styleable\#StateListDrawable_visible
///@attr ref android.R.styleable\#StateListDrawable_variablePadding
///@attr ref android.R.styleable\#StateListDrawable_constantSize
///@attr ref android.R.styleable\#DrawableStates_state_focused
///@attr ref android.R.styleable\#DrawableStates_state_window_focused
///@attr ref android.R.styleable\#DrawableStates_state_enabled
///@attr ref android.R.styleable\#DrawableStates_state_checkable
///@attr ref android.R.styleable\#DrawableStates_state_checked
///@attr ref android.R.styleable\#DrawableStates_state_selected
///@attr ref android.R.styleable\#DrawableStates_state_activated
///@attr ref android.R.styleable\#DrawableStates_state_active
///@attr ref android.R.styleable\#DrawableStates_state_single
///@attr ref android.R.styleable\#DrawableStates_state_first
///@attr ref android.R.styleable\#DrawableStates_state_middle
///@attr ref android.R.styleable\#DrawableStates_state_last
///@attr ref android.R.styleable\#DrawableStates_state_pressed
class StateListDrawable extends drawablecontainer_.DrawableContainer {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/drawable/StateListDrawable");
  StateListDrawable.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  StateListDrawable()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_addState = jniAccessors.getMethodIDOf(
      _classRef, "addState", "([ILandroid/graphics/drawable/Drawable;)V");

  /// from: public void addState(int[] stateSet, android.graphics.drawable.Drawable drawable)
  ///
  /// Add a new image/string ID to the set of images.
  ///@param stateSet - An array of resource Ids to associate with the image.
  ///                 Switch to this image by calling setState().
  ///@param drawable -The image to show.
  void addState(jni.JniObject stateSet, drawable_.Drawable drawable) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addState,
          jni.JniType.voidType,
          [stateSet.reference, drawable.reference]).check();

  static final _id_isStateful =
      jniAccessors.getMethodIDOf(_classRef, "isStateful", "()Z");

  /// from: public boolean isStateful()
  bool isStateful() => jniAccessors.callMethodWithArgs(
      reference, _id_isStateful, jni.JniType.booleanType, []).boolean;

  static final _id_onStateChange =
      jniAccessors.getMethodIDOf(_classRef, "onStateChange", "([I)Z");

  /// from: protected boolean onStateChange(int[] stateSet)
  bool onStateChange(jni.JniObject stateSet) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onStateChange,
      jni.JniType.booleanType,
      [stateSet.reference]).boolean;

  static final _id_inflate2 = jniAccessors.getMethodIDOf(_classRef, "inflate",
      "(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources\$Theme;)V");

  /// from: public void inflate(android.content.res.Resources r, org.xmlpull.v1.XmlPullParser parser, android.util.AttributeSet attrs, android.content.res.Resources.Theme theme)
  void inflate2(resources_.Resources r, jni.JniObject parser,
          attributeset_.AttributeSet attrs, resources_.Resources_Theme theme) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_inflate2, jni.JniType.voidType, [
        r.reference,
        parser.reference,
        attrs.reference,
        theme.reference
      ]).check();

  static final _id_mutate = jniAccessors.getMethodIDOf(
      _classRef, "mutate", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable mutate()
  /// The returned object must be deleted after use, by calling the `delete` method.
  drawable_.Drawable mutate() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_mutate, jni.JniType.objectType, []).object);

  static final _id_applyTheme = jniAccessors.getMethodIDOf(
      _classRef, "applyTheme", "(Landroid/content/res/Resources\$Theme;)V");

  /// from: public void applyTheme(android.content.res.Resources.Theme theme)
  void applyTheme(resources_.Resources_Theme theme) =>
      jniAccessors.callMethodWithArgs(reference, _id_applyTheme,
          jni.JniType.voidType, [theme.reference]).check();

  static final _id_setConstantState = jniAccessors.getMethodIDOf(
      _classRef,
      "setConstantState",
      "(Landroid/graphics/drawable/DrawableContainer\$DrawableContainerState;)V");

  /// from: protected void setConstantState(android.graphics.drawable.DrawableContainer.DrawableContainerState state)
  ///
  /// @param state This value must never be {@code null}.
  void setConstantState(
          drawablecontainer_.DrawableContainer_DrawableContainerState state) =>
      jniAccessors.callMethodWithArgs(reference, _id_setConstantState,
          jni.JniType.voidType, [state.reference]).check();
}
