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

import "ProgressBar.dart" as progressbar_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../graphics/drawable/Drawable.dart" as drawable_;

import "../content/res/ColorStateList.dart" as colorstatelist_;

import "../graphics/PorterDuff.dart" as porterduff_;

import "../graphics/Canvas.dart" as canvas_;

import "../view/MotionEvent.dart" as motionevent_;

import "../view/KeyEvent.dart" as keyevent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.AbsSeekBar
///
/// AbsSeekBar extends the capabilities of ProgressBar by adding a draggable thumb.
class AbsSeekBar extends progressbar_.ProgressBar {
  static final _classRef = jniAccessors.getClassOf("android/widget/AbsSeekBar");
  AbsSeekBar.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AbsSeekBar(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AbsSeekBar.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AbsSeekBar.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AbsSeekBar.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_setThumb = jniAccessors.getMethodIDOf(
      _classRef, "setThumb", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setThumb(android.graphics.drawable.Drawable thumb)
  ///
  /// Sets the thumb that will be drawn at the end of the progress meter within the SeekBar.
  ///
  /// If the thumb is a valid drawable (i.e. not null), half its width will be
  /// used as the new thumb offset (@see \#setThumbOffset(int)).
  ///@param thumb Drawable representing the thumb
  void setThumb(drawable_.Drawable thumb) => jniAccessors.callMethodWithArgs(
      reference, _id_setThumb, jni.JniType.voidType, [thumb.reference]).check();

  static final _id_getThumb = jniAccessors.getMethodIDOf(
      _classRef, "getThumb", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getThumb()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the drawable used to represent the scroll thumb - the component that
  /// the user can drag back and forth indicating the current value by its position.
  ///@return The current thumb drawable
  drawable_.Drawable getThumb() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getThumb, jni.JniType.objectType, []).object);

  static final _id_setThumbTintList = jniAccessors.getMethodIDOf(
      _classRef, "setThumbTintList", "(Landroid/content/res/ColorStateList;)V");

  /// from: public void setThumbTintList(android.content.res.ColorStateList tint)
  ///
  /// Applies a tint to the thumb drawable. Does not modify the current tint
  /// mode, which is PorterDuff.Mode\#SRC_IN by default.
  ///
  /// Subsequent calls to \#setThumb(Drawable) will automatically
  /// mutate the drawable and apply the specified tint and tint mode using
  /// Drawable\#setTintList(ColorStateList).
  ///@param tint the tint to apply, may be {@code null} to clear tint
  ///
  /// This value may be {@code null}.
  ///@attr ref android.R.styleable\#SeekBar_thumbTint
  ///@see \#getThumbTintList()
  ///@see Drawable\#setTintList(ColorStateList)
  void setThumbTintList(colorstatelist_.ColorStateList tint) =>
      jniAccessors.callMethodWithArgs(reference, _id_setThumbTintList,
          jni.JniType.voidType, [tint.reference]).check();

  static final _id_getThumbTintList = jniAccessors.getMethodIDOf(
      _classRef, "getThumbTintList", "()Landroid/content/res/ColorStateList;");

  /// from: public android.content.res.ColorStateList getThumbTintList()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the tint applied to the thumb drawable, if specified.
  ///@return the tint applied to the thumb drawable
  /// This value may be {@code null}.
  ///@attr ref android.R.styleable\#SeekBar_thumbTint
  ///@see \#setThumbTintList(ColorStateList)
  colorstatelist_.ColorStateList getThumbTintList() =>
      colorstatelist_.ColorStateList.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getThumbTintList, jni.JniType.objectType, []).object);

  static final _id_setThumbTintMode = jniAccessors.getMethodIDOf(
      _classRef, "setThumbTintMode", "(Landroid/graphics/PorterDuff\$Mode;)V");

  /// from: public void setThumbTintMode(android.graphics.PorterDuff.Mode tintMode)
  ///
  /// Specifies the blending mode used to apply the tint specified by
  /// \#setThumbTintList(ColorStateList)} to the thumb drawable. The
  /// default mode is PorterDuff.Mode\#SRC_IN.
  ///@param tintMode the blending mode used to apply the tint, may be
  ///                 {@code null} to clear tint
  ///
  /// This value may be {@code null}.
  ///@attr ref android.R.styleable\#SeekBar_thumbTintMode
  ///@see \#getThumbTintMode()
  ///@see Drawable\#setTintMode(PorterDuff.Mode)
  void setThumbTintMode(porterduff_.PorterDuff_Mode tintMode) =>
      jniAccessors.callMethodWithArgs(reference, _id_setThumbTintMode,
          jni.JniType.voidType, [tintMode.reference]).check();

  static final _id_getThumbTintMode = jniAccessors.getMethodIDOf(
      _classRef, "getThumbTintMode", "()Landroid/graphics/PorterDuff\$Mode;");

  /// from: public android.graphics.PorterDuff.Mode getThumbTintMode()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the blending mode used to apply the tint to the thumb drawable,
  /// if specified.
  ///@return the blending mode used to apply the tint to the thumb drawable
  /// This value may be {@code null}.
  ///@attr ref android.R.styleable\#SeekBar_thumbTintMode
  ///@see \#setThumbTintMode(PorterDuff.Mode)
  porterduff_.PorterDuff_Mode getThumbTintMode() =>
      porterduff_.PorterDuff_Mode.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getThumbTintMode, jni.JniType.objectType, []).object);

  static final _id_getThumbOffset =
      jniAccessors.getMethodIDOf(_classRef, "getThumbOffset", "()I");

  /// from: public int getThumbOffset()
  ///
  /// @see \#setThumbOffset(int)
  int getThumbOffset() => jniAccessors.callMethodWithArgs(
      reference, _id_getThumbOffset, jni.JniType.intType, []).integer;

  static final _id_setThumbOffset =
      jniAccessors.getMethodIDOf(_classRef, "setThumbOffset", "(I)V");

  /// from: public void setThumbOffset(int thumbOffset)
  ///
  /// Sets the thumb offset that allows the thumb to extend out of the range of
  /// the track.
  ///@param thumbOffset The offset amount in pixels.
  void setThumbOffset(int thumbOffset) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setThumbOffset,
      jni.JniType.voidType,
      [thumbOffset]).check();

  static final _id_setSplitTrack =
      jniAccessors.getMethodIDOf(_classRef, "setSplitTrack", "(Z)V");

  /// from: public void setSplitTrack(boolean splitTrack)
  ///
  /// Specifies whether the track should be split by the thumb. When true,
  /// the thumb's optical bounds will be clipped out of the track drawable,
  /// then the thumb will be drawn into the resulting gap.
  ///@param splitTrack Whether the track should be split by the thumb
  void setSplitTrack(bool splitTrack) => jniAccessors.callMethodWithArgs(
      reference, _id_setSplitTrack, jni.JniType.voidType, [splitTrack]).check();

  static final _id_getSplitTrack =
      jniAccessors.getMethodIDOf(_classRef, "getSplitTrack", "()Z");

  /// from: public boolean getSplitTrack()
  ///
  /// Returns whether the track should be split by the thumb.
  bool getSplitTrack() => jniAccessors.callMethodWithArgs(
      reference, _id_getSplitTrack, jni.JniType.booleanType, []).boolean;

  static final _id_setTickMark = jniAccessors.getMethodIDOf(
      _classRef, "setTickMark", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setTickMark(android.graphics.drawable.Drawable tickMark)
  ///
  /// Sets the drawable displayed at each progress position, e.g.&nbsp;at each
  /// possible thumb position.
  ///@param tickMark the drawable to display at each progress position
  void setTickMark(drawable_.Drawable tickMark) =>
      jniAccessors.callMethodWithArgs(reference, _id_setTickMark,
          jni.JniType.voidType, [tickMark.reference]).check();

  static final _id_getTickMark = jniAccessors.getMethodIDOf(
      _classRef, "getTickMark", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getTickMark()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the drawable displayed at each progress position
  drawable_.Drawable getTickMark() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTickMark, jni.JniType.objectType, []).object);

  static final _id_setTickMarkTintList = jniAccessors.getMethodIDOf(_classRef,
      "setTickMarkTintList", "(Landroid/content/res/ColorStateList;)V");

  /// from: public void setTickMarkTintList(android.content.res.ColorStateList tint)
  ///
  /// Applies a tint to the tick mark drawable. Does not modify the current tint
  /// mode, which is PorterDuff.Mode\#SRC_IN by default.
  ///
  /// Subsequent calls to \#setTickMark(Drawable) will automatically
  /// mutate the drawable and apply the specified tint and tint mode using
  /// Drawable\#setTintList(ColorStateList).
  ///@param tint the tint to apply, may be {@code null} to clear tint
  ///
  /// This value may be {@code null}.
  ///@attr ref android.R.styleable\#SeekBar_tickMarkTint
  ///@see \#getTickMarkTintList()
  ///@see Drawable\#setTintList(ColorStateList)
  void setTickMarkTintList(colorstatelist_.ColorStateList tint) =>
      jniAccessors.callMethodWithArgs(reference, _id_setTickMarkTintList,
          jni.JniType.voidType, [tint.reference]).check();

  static final _id_getTickMarkTintList = jniAccessors.getMethodIDOf(_classRef,
      "getTickMarkTintList", "()Landroid/content/res/ColorStateList;");

  /// from: public android.content.res.ColorStateList getTickMarkTintList()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the tint applied to the tick mark drawable, if specified.
  ///@return the tint applied to the tick mark drawable
  /// This value may be {@code null}.
  ///@attr ref android.R.styleable\#SeekBar_tickMarkTint
  ///@see \#setTickMarkTintList(ColorStateList)
  colorstatelist_.ColorStateList getTickMarkTintList() =>
      colorstatelist_.ColorStateList.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getTickMarkTintList,
          jni.JniType.objectType, []).object);

  static final _id_setTickMarkTintMode = jniAccessors.getMethodIDOf(_classRef,
      "setTickMarkTintMode", "(Landroid/graphics/PorterDuff\$Mode;)V");

  /// from: public void setTickMarkTintMode(android.graphics.PorterDuff.Mode tintMode)
  ///
  /// Specifies the blending mode used to apply the tint specified by
  /// \#setTickMarkTintList(ColorStateList)} to the tick mark drawable. The
  /// default mode is PorterDuff.Mode\#SRC_IN.
  ///@param tintMode the blending mode used to apply the tint, may be
  ///                 {@code null} to clear tint
  ///
  /// This value may be {@code null}.
  ///@attr ref android.R.styleable\#SeekBar_tickMarkTintMode
  ///@see \#getTickMarkTintMode()
  ///@see Drawable\#setTintMode(PorterDuff.Mode)
  void setTickMarkTintMode(porterduff_.PorterDuff_Mode tintMode) =>
      jniAccessors.callMethodWithArgs(reference, _id_setTickMarkTintMode,
          jni.JniType.voidType, [tintMode.reference]).check();

  static final _id_getTickMarkTintMode = jniAccessors.getMethodIDOf(_classRef,
      "getTickMarkTintMode", "()Landroid/graphics/PorterDuff\$Mode;");

  /// from: public android.graphics.PorterDuff.Mode getTickMarkTintMode()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the blending mode used to apply the tint to the tick mark drawable,
  /// if specified.
  ///@return the blending mode used to apply the tint to the tick mark drawable
  /// This value may be {@code null}.
  ///@attr ref android.R.styleable\#SeekBar_tickMarkTintMode
  ///@see \#setTickMarkTintMode(PorterDuff.Mode)
  porterduff_.PorterDuff_Mode getTickMarkTintMode() =>
      porterduff_.PorterDuff_Mode.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getTickMarkTintMode,
          jni.JniType.objectType, []).object);

  static final _id_setKeyProgressIncrement =
      jniAccessors.getMethodIDOf(_classRef, "setKeyProgressIncrement", "(I)V");

  /// from: public void setKeyProgressIncrement(int increment)
  ///
  /// Sets the amount of progress changed via the arrow keys.
  ///@param increment The amount to increment or decrement when the user
  ///            presses the arrow keys.
  void setKeyProgressIncrement(int increment) =>
      jniAccessors.callMethodWithArgs(reference, _id_setKeyProgressIncrement,
          jni.JniType.voidType, [increment]).check();

  static final _id_getKeyProgressIncrement =
      jniAccessors.getMethodIDOf(_classRef, "getKeyProgressIncrement", "()I");

  /// from: public int getKeyProgressIncrement()
  ///
  /// Returns the amount of progress changed via the arrow keys.
  ///
  /// By default, this will be a value that is derived from the progress range.
  ///@return The amount to increment or decrement when the user presses the
  ///         arrow keys. This will be positive.
  int getKeyProgressIncrement() => jniAccessors.callMethodWithArgs(
      reference, _id_getKeyProgressIncrement, jni.JniType.intType, []).integer;

  static final _id_setMin =
      jniAccessors.getMethodIDOf(_classRef, "setMin", "(I)V");

  /// from: synchronized public void setMin(int min)
  void setMin(int min) => jniAccessors.callMethodWithArgs(
      reference, _id_setMin, jni.JniType.voidType, [min]).check();

  static final _id_setMax =
      jniAccessors.getMethodIDOf(_classRef, "setMax", "(I)V");

  /// from: synchronized public void setMax(int max)
  void setMax(int max) => jniAccessors.callMethodWithArgs(
      reference, _id_setMax, jni.JniType.voidType, [max]).check();

  static final _id_verifyDrawable = jniAccessors.getMethodIDOf(
      _classRef, "verifyDrawable", "(Landroid/graphics/drawable/Drawable;)Z");

  /// from: protected boolean verifyDrawable(android.graphics.drawable.Drawable who)
  ///
  /// @param who This value must never be {@code null}.
  bool verifyDrawable(drawable_.Drawable who) =>
      jniAccessors.callMethodWithArgs(reference, _id_verifyDrawable,
          jni.JniType.booleanType, [who.reference]).boolean;

  static final _id_jumpDrawablesToCurrentState = jniAccessors.getMethodIDOf(
      _classRef, "jumpDrawablesToCurrentState", "()V");

  /// from: public void jumpDrawablesToCurrentState()
  void jumpDrawablesToCurrentState() => jniAccessors.callMethodWithArgs(
      reference,
      _id_jumpDrawablesToCurrentState,
      jni.JniType.voidType, []).check();

  static final _id_drawableStateChanged =
      jniAccessors.getMethodIDOf(_classRef, "drawableStateChanged", "()V");

  /// from: protected void drawableStateChanged()
  void drawableStateChanged() => jniAccessors.callMethodWithArgs(
      reference, _id_drawableStateChanged, jni.JniType.voidType, []).check();

  static final _id_drawableHotspotChanged =
      jniAccessors.getMethodIDOf(_classRef, "drawableHotspotChanged", "(FF)V");

  /// from: public void drawableHotspotChanged(float x, float y)
  void drawableHotspotChanged(double x, double y) =>
      jniAccessors.callMethodWithArgs(reference, _id_drawableHotspotChanged,
          jni.JniType.voidType, [x, y]).check();

  static final _id_onSizeChanged =
      jniAccessors.getMethodIDOf(_classRef, "onSizeChanged", "(IIII)V");

  /// from: protected void onSizeChanged(int w, int h, int oldw, int oldh)
  void onSizeChanged(int w, int h, int oldw, int oldh) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSizeChanged,
          jni.JniType.voidType, [w, h, oldw, oldh]).check();

  static final _id_onDraw = jniAccessors.getMethodIDOf(
      _classRef, "onDraw", "(Landroid/graphics/Canvas;)V");

  /// from: synchronized protected void onDraw(android.graphics.Canvas canvas)
  void onDraw(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference, _id_onDraw, jni.JniType.voidType, [canvas.reference]).check();

  static final _id_onMeasure =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: synchronized protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_onTouchEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "onTouchEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onTouchEvent(android.view.MotionEvent event)
  bool onTouchEvent1(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTouchEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_onKeyDown1 = jniAccessors.getMethodIDOf(
      _classRef, "onKeyDown", "(ILandroid/view/KeyEvent;)Z");

  /// from: public boolean onKeyDown(int keyCode, android.view.KeyEvent event)
  bool onKeyDown1(int keyCode, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onKeyDown1,
          jni.JniType.booleanType, [keyCode, event.reference]).boolean;

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);

  static final _id_onRtlPropertiesChanged1 =
      jniAccessors.getMethodIDOf(_classRef, "onRtlPropertiesChanged", "(I)V");

  /// from: public void onRtlPropertiesChanged(int layoutDirection)
  void onRtlPropertiesChanged1(int layoutDirection) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRtlPropertiesChanged1,
          jni.JniType.voidType, [layoutDirection]).check();
}
