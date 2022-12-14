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

import "LayerDrawable.dart" as layerdrawable_;

import "../../content/res/ColorStateList.dart" as colorstatelist_;

import "Drawable.dart" as drawable_;

import "../Rect.dart" as rect_;

import "../../content/res/Resources.dart" as resources_;

import "../../util/AttributeSet.dart" as attributeset_;

import "../Outline.dart" as outline_;

import "../Canvas.dart" as canvas_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.drawable.RippleDrawable
///
/// Drawable that shows a ripple effect in response to state changes. The
/// anchoring position of the ripple for a given state may be specified by
/// calling \#setHotspot(float, float) with the corresponding state
/// attribute identifier.
///
/// A touch feedback drawable may contain multiple child layers, including a
/// special mask layer that is not drawn to the screen. A single layer may be
/// set as the mask from XML by specifying its {@code android:id} value as
/// android.R.id\#mask. At run time, a single layer may be set as the
/// mask using {@code setId(..., android.R.id.mask)} or an existing mask layer
/// may be replaced using {@code setDrawableByLayerId(android.R.id.mask, ...)}.
/// <pre>
/// <code>&lt;!-- A red ripple masked against an opaque rectangle. --/>
/// &lt;ripple android:color="\#ffff0000">
///   &lt;item android:id="@android:id/mask"
///         android:drawable="@android:color/white" />
/// &lt;/ripple></code>
/// </pre>
///
/// If a mask layer is set, the ripple effect will be masked against that layer
/// before it is drawn over the composite of the remaining child layers.
///
/// If no mask layer is set, the ripple effect is masked against the composite
/// of the child layers.
/// <pre>
/// <code>&lt;!-- A green ripple drawn atop a black rectangle. --/>
/// &lt;ripple android:color="\#ff00ff00">
///   &lt;item android:drawable="@android:color/black" />
/// &lt;/ripple>
///
/// &lt;!-- A blue ripple drawn atop a drawable resource. --/>
/// &lt;ripple android:color="\#ff0000ff">
///   &lt;item android:drawable="@drawable/my_drawable" />
/// &lt;/ripple></code>
/// </pre>
///
/// If no child layers or mask is specified and the ripple is set as a View
/// background, the ripple will be drawn atop the first available parent
/// background within the View's hierarchy. In this case, the drawing region
/// may extend outside of the Drawable bounds.
/// <pre>
/// <code>&lt;!-- An unbounded red ripple. --/>
/// &lt;ripple android:color="\#ffff0000" /></code>
/// </pre>
///@attr ref android.R.styleable\#RippleDrawable_color
class RippleDrawable extends layerdrawable_.LayerDrawable {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/drawable/RippleDrawable");
  RippleDrawable.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int RADIUS_AUTO
  ///
  /// Radius value that specifies the ripple radius should be computed based
  /// on the size of the ripple's container.
  static const RADIUS_AUTO = -1;

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V");

  /// from: public void <init>(android.content.res.ColorStateList color, android.graphics.drawable.Drawable content, android.graphics.drawable.Drawable mask)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new ripple drawable with the specified ripple color and
  /// optional content and mask drawables.
  ///@param color The ripple color
  /// This value must never be {@code null}.
  ///@param content The content drawable, may be {@code null}
  /// This value may be {@code null}.
  ///@param mask The mask drawable, may be {@code null}
  ///
  /// This value may be {@code null}.
  RippleDrawable.ctor2(colorstatelist_.ColorStateList color,
      drawable_.Drawable content, drawable_.Drawable mask)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [color.reference, content.reference, mask.reference]).object);

  static final _id_jumpToCurrentState =
      jniAccessors.getMethodIDOf(_classRef, "jumpToCurrentState", "()V");

  /// from: public void jumpToCurrentState()
  void jumpToCurrentState() => jniAccessors.callMethodWithArgs(
      reference, _id_jumpToCurrentState, jni.JniType.voidType, []).check();

  static final _id_getOpacity =
      jniAccessors.getMethodIDOf(_classRef, "getOpacity", "()I");

  /// from: public int getOpacity()
  int getOpacity() => jniAccessors.callMethodWithArgs(
      reference, _id_getOpacity, jni.JniType.intType, []).integer;

  static final _id_onStateChange =
      jniAccessors.getMethodIDOf(_classRef, "onStateChange", "([I)Z");

  /// from: protected boolean onStateChange(int[] stateSet)
  bool onStateChange(jni.JniObject stateSet) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onStateChange,
      jni.JniType.booleanType,
      [stateSet.reference]).boolean;

  static final _id_onBoundsChange = jniAccessors.getMethodIDOf(
      _classRef, "onBoundsChange", "(Landroid/graphics/Rect;)V");

  /// from: protected void onBoundsChange(android.graphics.Rect bounds)
  void onBoundsChange(rect_.Rect bounds) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onBoundsChange,
      jni.JniType.voidType,
      [bounds.reference]).check();

  static final _id_setVisible =
      jniAccessors.getMethodIDOf(_classRef, "setVisible", "(ZZ)Z");

  /// from: public boolean setVisible(boolean visible, boolean restart)
  bool setVisible(bool visible, bool restart) =>
      jniAccessors.callMethodWithArgs(reference, _id_setVisible,
          jni.JniType.booleanType, [visible, restart]).boolean;

  static final _id_isStateful =
      jniAccessors.getMethodIDOf(_classRef, "isStateful", "()Z");

  /// from: public boolean isStateful()
  bool isStateful() => jniAccessors.callMethodWithArgs(
      reference, _id_isStateful, jni.JniType.booleanType, []).boolean;

  static final _id_setColor = jniAccessors.getMethodIDOf(
      _classRef, "setColor", "(Landroid/content/res/ColorStateList;)V");

  /// from: public void setColor(android.content.res.ColorStateList color)
  ///
  /// Sets the ripple color.
  ///@param color Ripple color as a color state list.
  ///@attr ref android.R.styleable\#RippleDrawable_color
  void setColor(colorstatelist_.ColorStateList color) =>
      jniAccessors.callMethodWithArgs(reference, _id_setColor,
          jni.JniType.voidType, [color.reference]).check();

  static final _id_setRadius =
      jniAccessors.getMethodIDOf(_classRef, "setRadius", "(I)V");

  /// from: public void setRadius(int radius)
  ///
  /// Sets the radius in pixels of the fully expanded ripple.
  ///@param radius ripple radius in pixels, or \#RADIUS_AUTO to
  ///               compute the radius based on the container size
  ///@attr ref android.R.styleable\#RippleDrawable_radius
  void setRadius(int radius) => jniAccessors.callMethodWithArgs(
      reference, _id_setRadius, jni.JniType.voidType, [radius]).check();

  static final _id_getRadius =
      jniAccessors.getMethodIDOf(_classRef, "getRadius", "()I");

  /// from: public int getRadius()
  ///
  /// @return the radius in pixels of the fully expanded ripple if an explicit
  ///         radius has been set, or \#RADIUS_AUTO if the radius is
  ///         computed based on the container size
  ///@attr ref android.R.styleable\#RippleDrawable_radius
  int getRadius() => jniAccessors.callMethodWithArgs(
      reference, _id_getRadius, jni.JniType.intType, []).integer;

  static final _id_inflate1 = jniAccessors.getMethodIDOf(_classRef, "inflate",
      "(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources\$Theme;)V");

  /// from: public void inflate(android.content.res.Resources r, org.xmlpull.v1.XmlPullParser parser, android.util.AttributeSet attrs, android.content.res.Resources.Theme theme)
  ///
  /// @param r This value must never be {@code null}.
  ///@param parser This value must never be {@code null}.
  ///@param attrs This value must never be {@code null}.
  ///@param theme This value may be {@code null}.
  void inflate1(resources_.Resources r, jni.JniObject parser,
          attributeset_.AttributeSet attrs, resources_.Resources_Theme theme) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_inflate1, jni.JniType.voidType, [
        r.reference,
        parser.reference,
        attrs.reference,
        theme.reference
      ]).check();

  static final _id_setDrawableByLayerId = jniAccessors.getMethodIDOf(_classRef,
      "setDrawableByLayerId", "(ILandroid/graphics/drawable/Drawable;)Z");

  /// from: public boolean setDrawableByLayerId(int id, android.graphics.drawable.Drawable drawable)
  bool setDrawableByLayerId(int id, drawable_.Drawable drawable) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDrawableByLayerId,
          jni.JniType.booleanType, [id, drawable.reference]).boolean;

  static final _id_setPaddingMode =
      jniAccessors.getMethodIDOf(_classRef, "setPaddingMode", "(I)V");

  /// from: public void setPaddingMode(int mode)
  ///
  /// Specifies how layer padding should affect the bounds of subsequent
  /// layers. The default and recommended value for RippleDrawable is
  /// \#PADDING_MODE_STACK.
  ///@param mode padding mode, one of:
  ///            <ul>
  ///            <li>\#PADDING_MODE_NEST to nest each layer inside the
  ///            padding of the previous layer
  ///            <li>\#PADDING_MODE_STACK to stack each layer directly
  ///            atop the previous layer
  ///            </ul>
  ///@see \#getPaddingMode()
  void setPaddingMode(int mode) => jniAccessors.callMethodWithArgs(
      reference, _id_setPaddingMode, jni.JniType.voidType, [mode]).check();

  static final _id_applyTheme = jniAccessors.getMethodIDOf(
      _classRef, "applyTheme", "(Landroid/content/res/Resources\$Theme;)V");

  /// from: public void applyTheme(android.content.res.Resources.Theme t)
  ///
  /// @param t This value must never be {@code null}.
  void applyTheme(resources_.Resources_Theme t) =>
      jniAccessors.callMethodWithArgs(reference, _id_applyTheme,
          jni.JniType.voidType, [t.reference]).check();

  static final _id_canApplyTheme =
      jniAccessors.getMethodIDOf(_classRef, "canApplyTheme", "()Z");

  /// from: public boolean canApplyTheme()
  bool canApplyTheme() => jniAccessors.callMethodWithArgs(
      reference, _id_canApplyTheme, jni.JniType.booleanType, []).boolean;

  static final _id_setHotspot =
      jniAccessors.getMethodIDOf(_classRef, "setHotspot", "(FF)V");

  /// from: public void setHotspot(float x, float y)
  void setHotspot(double x, double y) => jniAccessors.callMethodWithArgs(
      reference, _id_setHotspot, jni.JniType.voidType, [x, y]).check();

  static final _id_setHotspotBounds =
      jniAccessors.getMethodIDOf(_classRef, "setHotspotBounds", "(IIII)V");

  /// from: public void setHotspotBounds(int left, int top, int right, int bottom)
  void setHotspotBounds(int left, int top, int right, int bottom) =>
      jniAccessors.callMethodWithArgs(reference, _id_setHotspotBounds,
          jni.JniType.voidType, [left, top, right, bottom]).check();

  static final _id_getHotspotBounds = jniAccessors.getMethodIDOf(
      _classRef, "getHotspotBounds", "(Landroid/graphics/Rect;)V");

  /// from: public void getHotspotBounds(android.graphics.Rect outRect)
  void getHotspotBounds(rect_.Rect outRect) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getHotspotBounds,
      jni.JniType.voidType,
      [outRect.reference]).check();

  static final _id_getOutline = jniAccessors.getMethodIDOf(
      _classRef, "getOutline", "(Landroid/graphics/Outline;)V");

  /// from: public void getOutline(android.graphics.Outline outline)
  ///
  /// Populates <code>outline</code> with the first available layer outline,
  /// excluding the mask layer.
  ///@param outline Outline in which to place the first available layer outline
  ///
  /// This value must never be {@code null}.
  void getOutline(outline_.Outline outline) => jniAccessors.callMethodWithArgs(
      reference,
      _id_getOutline,
      jni.JniType.voidType,
      [outline.reference]).check();

  static final _id_draw = jniAccessors.getMethodIDOf(
      _classRef, "draw", "(Landroid/graphics/Canvas;)V");

  /// from: public void draw(android.graphics.Canvas canvas)
  ///
  /// Optimized for drawing ripples with a mask layer and optional content.
  ///@param canvas This value must never be {@code null}.
  void draw(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference, _id_draw, jni.JniType.voidType, [canvas.reference]).check();

  static final _id_invalidateSelf1 =
      jniAccessors.getMethodIDOf(_classRef, "invalidateSelf", "()V");

  /// from: public void invalidateSelf()
  void invalidateSelf1() => jniAccessors.callMethodWithArgs(
      reference, _id_invalidateSelf1, jni.JniType.voidType, []).check();

  static final _id_getDirtyBounds1 = jniAccessors.getMethodIDOf(
      _classRef, "getDirtyBounds", "()Landroid/graphics/Rect;");

  /// from: public android.graphics.Rect getDirtyBounds()
  /// The returned object must be deleted after use, by calling the `delete` method.
  rect_.Rect getDirtyBounds1() =>
      rect_.Rect.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDirtyBounds1, jni.JniType.objectType, []).object);

  static final _id_getConstantState = jniAccessors.getMethodIDOf(
      _classRef,
      "getConstantState",
      "()Landroid/graphics/drawable/Drawable\$ConstantState;");

  /// from: public android.graphics.drawable.Drawable.ConstantState getConstantState()
  /// The returned object must be deleted after use, by calling the `delete` method.
  drawable_.Drawable_ConstantState getConstantState() =>
      drawable_.Drawable_ConstantState.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getConstantState, jni.JniType.objectType, []).object);

  static final _id_mutate = jniAccessors.getMethodIDOf(
      _classRef, "mutate", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable mutate()
  /// The returned object must be deleted after use, by calling the `delete` method.
  drawable_.Drawable mutate() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_mutate, jni.JniType.objectType, []).object);
}
