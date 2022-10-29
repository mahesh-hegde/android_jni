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

import "AbsSeekBar.dart" as absseekbar_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.RatingBar
///
/// A RatingBar is an extension of SeekBar and ProgressBar that shows a rating in
/// stars. The user can touch/drag or use arrow keys to set the rating when using
/// the default size RatingBar. The smaller RatingBar style (
/// android.R.attr\#ratingBarStyleSmall) and the larger indicator-only
/// style (android.R.attr\#ratingBarStyleIndicator) do not support user
/// interaction and should only be used as indicators.
///
/// When using a RatingBar that supports user interaction, placing widgets to the
/// left or right of the RatingBar is discouraged.
///
/// The number of stars set (via \#setNumStars(int) or in an XML layout)
/// will be shown when the layout width is set to wrap content (if another layout
/// width is set, the results may be unpredictable).
///
/// The secondary progress should not be modified by the client as it is used
/// internally as the background for a fractionally filled star.
///@attr ref android.R.styleable\#RatingBar_numStars
///@attr ref android.R.styleable\#RatingBar_rating
///@attr ref android.R.styleable\#RatingBar_stepSize
///@attr ref android.R.styleable\#RatingBar_isIndicator
class RatingBar extends absseekbar_.AbsSeekBar {
  static final _classRef = jniAccessors.getClassOf("android/widget/RatingBar");
  RatingBar.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  RatingBar.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  RatingBar.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  RatingBar.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  RatingBar(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_setOnRatingBarChangeListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnRatingBarChangeListener",
      "(Landroid/widget/RatingBar\$OnRatingBarChangeListener;)V");

  /// from: public void setOnRatingBarChangeListener(android.widget.RatingBar.OnRatingBarChangeListener listener)
  ///
  /// Sets the listener to be called when the rating changes.
  ///@param listener The listener.
  void setOnRatingBarChangeListener(
          RatingBar_OnRatingBarChangeListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setOnRatingBarChangeListener,
          jni.JniType.voidType,
          [listener.reference]).check();

  static final _id_getOnRatingBarChangeListener = jniAccessors.getMethodIDOf(
      _classRef,
      "getOnRatingBarChangeListener",
      "()Landroid/widget/RatingBar\$OnRatingBarChangeListener;");

  /// from: public android.widget.RatingBar.OnRatingBarChangeListener getOnRatingBarChangeListener()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The listener (may be null) that is listening for rating change
  ///         events.
  RatingBar_OnRatingBarChangeListener getOnRatingBarChangeListener() =>
      RatingBar_OnRatingBarChangeListener.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getOnRatingBarChangeListener,
              jni.JniType.objectType, []).object);

  static final _id_setIsIndicator =
      jniAccessors.getMethodIDOf(_classRef, "setIsIndicator", "(Z)V");

  /// from: public void setIsIndicator(boolean isIndicator)
  ///
  /// Whether this rating bar should only be an indicator (thus non-changeable
  /// by the user).
  ///@param isIndicator Whether it should be an indicator.
  ///@attr ref android.R.styleable\#RatingBar_isIndicator
  void setIsIndicator(bool isIndicator) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setIsIndicator,
      jni.JniType.voidType,
      [isIndicator]).check();

  static final _id_isIndicator =
      jniAccessors.getMethodIDOf(_classRef, "isIndicator", "()Z");

  /// from: public boolean isIndicator()
  ///
  /// @return Whether this rating bar is only an indicator.
  ///@attr ref android.R.styleable\#RatingBar_isIndicator
  bool isIndicator() => jniAccessors.callMethodWithArgs(
      reference, _id_isIndicator, jni.JniType.booleanType, []).boolean;

  static final _id_setNumStars =
      jniAccessors.getMethodIDOf(_classRef, "setNumStars", "(I)V");

  /// from: public void setNumStars(int numStars)
  ///
  /// Sets the number of stars to show. In order for these to be shown
  /// properly, it is recommended the layout width of this widget be wrap
  /// content.
  ///@param numStars The number of stars.
  void setNumStars(int numStars) => jniAccessors.callMethodWithArgs(
      reference, _id_setNumStars, jni.JniType.voidType, [numStars]).check();

  static final _id_getNumStars =
      jniAccessors.getMethodIDOf(_classRef, "getNumStars", "()I");

  /// from: public int getNumStars()
  ///
  /// Returns the number of stars shown.
  ///@return The number of stars shown.
  int getNumStars() => jniAccessors.callMethodWithArgs(
      reference, _id_getNumStars, jni.JniType.intType, []).integer;

  static final _id_setRating =
      jniAccessors.getMethodIDOf(_classRef, "setRating", "(F)V");

  /// from: public void setRating(float rating)
  ///
  /// Sets the rating (the number of stars filled).
  ///@param rating The rating to set.
  void setRating(double rating) => jniAccessors.callMethodWithArgs(
      reference, _id_setRating, jni.JniType.voidType, [rating]).check();

  static final _id_getRating =
      jniAccessors.getMethodIDOf(_classRef, "getRating", "()F");

  /// from: public float getRating()
  ///
  /// Gets the current rating (number of stars filled).
  ///@return The current rating.
  double getRating() => jniAccessors.callMethodWithArgs(
      reference, _id_getRating, jni.JniType.floatType, []).float;

  static final _id_setStepSize =
      jniAccessors.getMethodIDOf(_classRef, "setStepSize", "(F)V");

  /// from: public void setStepSize(float stepSize)
  ///
  /// Sets the step size (granularity) of this rating bar.
  ///@param stepSize The step size of this rating bar. For example, if
  ///            half-star granularity is wanted, this would be 0.5.
  void setStepSize(double stepSize) => jniAccessors.callMethodWithArgs(
      reference, _id_setStepSize, jni.JniType.voidType, [stepSize]).check();

  static final _id_getStepSize =
      jniAccessors.getMethodIDOf(_classRef, "getStepSize", "()F");

  /// from: public float getStepSize()
  ///
  /// Gets the step size of this rating bar.
  ///@return The step size.
  double getStepSize() => jniAccessors.callMethodWithArgs(
      reference, _id_getStepSize, jni.JniType.floatType, []).float;

  static final _id_onMeasure =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: synchronized protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_setMax =
      jniAccessors.getMethodIDOf(_classRef, "setMax", "(I)V");

  /// from: synchronized public void setMax(int max)
  void setMax(int max) => jniAccessors.callMethodWithArgs(
      reference, _id_setMax, jni.JniType.voidType, [max]).check();

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);
}

/// from: android.widget.RatingBar$OnRatingBarChangeListener
///
/// A callback that notifies clients when the rating has been changed. This
/// includes changes that were initiated by the user through a touch gesture
/// or arrow key/trackball as well as changes that were initiated
/// programmatically.
class RatingBar_OnRatingBarChangeListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/RatingBar\$OnRatingBarChangeListener");
  RatingBar_OnRatingBarChangeListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onRatingChanged = jniAccessors.getMethodIDOf(
      _classRef, "onRatingChanged", "(Landroid/widget/RatingBar;FZ)V");

  /// from: public abstract void onRatingChanged(android.widget.RatingBar ratingBar, float rating, boolean fromUser)
  ///
  /// Notification that the rating has changed. Clients can use the
  /// fromUser parameter to distinguish user-initiated changes from those
  /// that occurred programmatically. This will not be called continuously
  /// while the user is dragging, only when the user finalizes a rating by
  /// lifting the touch.
  ///@param ratingBar The RatingBar whose rating has changed.
  ///@param rating The current rating. This will be in the range
  ///            0..numStars.
  ///@param fromUser True if the rating change was initiated by a user's
  ///            touch gesture or arrow key/horizontal trackbell movement.
  void onRatingChanged(RatingBar ratingBar, double rating, bool fromUser) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onRatingChanged,
          jni.JniType.voidType,
          [ratingBar.reference, rating, fromUser]).check();
}
