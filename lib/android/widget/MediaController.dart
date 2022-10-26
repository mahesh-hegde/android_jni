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

import "FrameLayout.dart" as framelayout_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../view/View.dart" as view_;

import "../view/MotionEvent.dart" as motionevent_;

import "../view/KeyEvent.dart" as keyevent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.MediaController
///
/// A view containing controls for a MediaPlayer. Typically contains the
/// buttons like "Play/Pause", "Rewind", "Fast Forward" and a progress
/// slider. It takes care of synchronizing the controls with the state
/// of the MediaPlayer.
///
/// The way to use this class is to instantiate it programmatically.
/// The MediaController will create a default set of controls
/// and put them in a window floating above your application. Specifically,
/// the controls will float above the view specified with setAnchorView().
/// The window will disappear if left idle for three seconds and reappear
/// when the user touches the anchor view.
///
/// Functions like show() and hide() have no effect when MediaController
/// is created in an xml layout.
///
/// MediaController will hide and
/// show the buttons according to these rules:
/// <ul>
/// <li> The "previous" and "next" buttons are hidden until setPrevNextListeners()
///   has been called
/// <li> The "previous" and "next" buttons are visible but disabled if
///   setPrevNextListeners() was called with null listeners
/// <li> The "rewind" and "fastforward" buttons are shown unless requested
///   otherwise by using the MediaController(Context, boolean) constructor
///   with the boolean set to false
/// </ul>
class MediaController extends framelayout_.FrameLayout {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/MediaController");
  MediaController.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MediaController.ctor1(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;Z)V");

  /// from: public void <init>(android.content.Context context, boolean useFastForward)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MediaController.ctor4(context_.Context context, bool useFastForward)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [context.reference, useFastForward]).object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MediaController(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_onFinishInflate1 =
      jniAccessors.getMethodIDOf(_classRef, "onFinishInflate", "()V");

  /// from: public void onFinishInflate()
  void onFinishInflate1() => jniAccessors.callMethodWithArgs(
      reference, _id_onFinishInflate1, jni.JniType.voidType, []).check();

  static final _id_setMediaPlayer = jniAccessors.getMethodIDOf(
      _classRef,
      "setMediaPlayer",
      "(Landroid/widget/MediaController\$MediaPlayerControl;)V");

  /// from: public void setMediaPlayer(android.widget.MediaController.MediaPlayerControl player)
  void setMediaPlayer(MediaController_MediaPlayerControl player) =>
      jniAccessors.callMethodWithArgs(reference, _id_setMediaPlayer,
          jni.JniType.voidType, [player.reference]).check();

  static final _id_setAnchorView = jniAccessors.getMethodIDOf(
      _classRef, "setAnchorView", "(Landroid/view/View;)V");

  /// from: public void setAnchorView(android.view.View view)
  ///
  /// Set the view that acts as the anchor for the control view.
  /// This can for example be a VideoView, or your Activity's main view.
  /// When VideoView calls this method, it will use the VideoView's parent
  /// as the anchor.
  ///@param view The view to which to anchor the controller when it is visible.
  void setAnchorView(view_.View view) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setAnchorView,
      jni.JniType.voidType,
      [view.reference]).check();

  static final _id_show0 = jniAccessors.getMethodIDOf(_classRef, "show", "()V");

  /// from: public void show()
  ///
  /// Show the controller on screen. It will go away
  /// automatically after 3 seconds of inactivity.
  void show0() => jniAccessors.callMethodWithArgs(
      reference, _id_show0, jni.JniType.voidType, []).check();

  static final _id_show1 =
      jniAccessors.getMethodIDOf(_classRef, "show", "(I)V");

  /// from: public void show(int timeout)
  ///
  /// Show the controller on screen. It will go away
  /// automatically after 'timeout' milliseconds of inactivity.
  ///@param timeout The timeout in milliseconds. Use 0 to show
  /// the controller until hide() is called.
  void show1(int timeout) => jniAccessors.callMethodWithArgs(
      reference, _id_show1, jni.JniType.voidType, [timeout]).check();

  static final _id_isShowing =
      jniAccessors.getMethodIDOf(_classRef, "isShowing", "()Z");

  /// from: public boolean isShowing()
  bool isShowing() => jniAccessors.callMethodWithArgs(
      reference, _id_isShowing, jni.JniType.booleanType, []).boolean;

  static final _id_hide0 = jniAccessors.getMethodIDOf(_classRef, "hide", "()V");

  /// from: public void hide()
  ///
  /// Remove the controller from the screen.
  void hide0() => jniAccessors.callMethodWithArgs(
      reference, _id_hide0, jni.JniType.voidType, []).check();

  static final _id_onTouchEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "onTouchEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onTouchEvent(android.view.MotionEvent event)
  bool onTouchEvent1(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTouchEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_onTrackballEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "onTrackballEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onTrackballEvent(android.view.MotionEvent ev)
  bool onTrackballEvent1(motionevent_.MotionEvent ev) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTrackballEvent1,
          jni.JniType.booleanType, [ev.reference]).boolean;

  static final _id_dispatchKeyEvent1 = jniAccessors.getMethodIDOf(
      _classRef, "dispatchKeyEvent", "(Landroid/view/KeyEvent;)Z");

  /// from: public boolean dispatchKeyEvent(android.view.KeyEvent event)
  bool dispatchKeyEvent1(keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_dispatchKeyEvent1,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_setEnabled1 =
      jniAccessors.getMethodIDOf(_classRef, "setEnabled", "(Z)V");

  /// from: public void setEnabled(boolean enabled)
  void setEnabled1(bool enabled) => jniAccessors.callMethodWithArgs(
      reference, _id_setEnabled1, jni.JniType.voidType, [enabled]).check();

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);

  static final _id_setPrevNextListeners = jniAccessors.getMethodIDOf(
      _classRef,
      "setPrevNextListeners",
      "(Landroid/view/View\$OnClickListener;Landroid/view/View\$OnClickListener;)V");

  /// from: public void setPrevNextListeners(android.view.View.OnClickListener next, android.view.View.OnClickListener prev)
  void setPrevNextListeners(
          view_.View_OnClickListener next, view_.View_OnClickListener prev) =>
      jniAccessors.callMethodWithArgs(reference, _id_setPrevNextListeners,
          jni.JniType.voidType, [next.reference, prev.reference]).check();
}

/// from: android.widget.MediaController$MediaPlayerControl
class MediaController_MediaPlayerControl extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/MediaController\$MediaPlayerControl");
  MediaController_MediaPlayerControl.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_start =
      jniAccessors.getMethodIDOf(_classRef, "start", "()V");

  /// from: public abstract void start()
  void start() => jniAccessors.callMethodWithArgs(
      reference, _id_start, jni.JniType.voidType, []).check();

  static final _id_pause =
      jniAccessors.getMethodIDOf(_classRef, "pause", "()V");

  /// from: public abstract void pause()
  void pause() => jniAccessors.callMethodWithArgs(
      reference, _id_pause, jni.JniType.voidType, []).check();

  static final _id_getDuration =
      jniAccessors.getMethodIDOf(_classRef, "getDuration", "()I");

  /// from: public abstract int getDuration()
  int getDuration() => jniAccessors.callMethodWithArgs(
      reference, _id_getDuration, jni.JniType.intType, []).integer;

  static final _id_getCurrentPosition =
      jniAccessors.getMethodIDOf(_classRef, "getCurrentPosition", "()I");

  /// from: public abstract int getCurrentPosition()
  int getCurrentPosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getCurrentPosition, jni.JniType.intType, []).integer;

  static final _id_seekTo =
      jniAccessors.getMethodIDOf(_classRef, "seekTo", "(I)V");

  /// from: public abstract void seekTo(int pos)
  void seekTo(int pos) => jniAccessors.callMethodWithArgs(
      reference, _id_seekTo, jni.JniType.voidType, [pos]).check();

  static final _id_isPlaying =
      jniAccessors.getMethodIDOf(_classRef, "isPlaying", "()Z");

  /// from: public abstract boolean isPlaying()
  bool isPlaying() => jniAccessors.callMethodWithArgs(
      reference, _id_isPlaying, jni.JniType.booleanType, []).boolean;

  static final _id_getBufferPercentage =
      jniAccessors.getMethodIDOf(_classRef, "getBufferPercentage", "()I");

  /// from: public abstract int getBufferPercentage()
  int getBufferPercentage() => jniAccessors.callMethodWithArgs(
      reference, _id_getBufferPercentage, jni.JniType.intType, []).integer;

  static final _id_canPause =
      jniAccessors.getMethodIDOf(_classRef, "canPause", "()Z");

  /// from: public abstract boolean canPause()
  bool canPause() => jniAccessors.callMethodWithArgs(
      reference, _id_canPause, jni.JniType.booleanType, []).boolean;

  static final _id_canSeekBackward =
      jniAccessors.getMethodIDOf(_classRef, "canSeekBackward", "()Z");

  /// from: public abstract boolean canSeekBackward()
  bool canSeekBackward() => jniAccessors.callMethodWithArgs(
      reference, _id_canSeekBackward, jni.JniType.booleanType, []).boolean;

  static final _id_canSeekForward =
      jniAccessors.getMethodIDOf(_classRef, "canSeekForward", "()Z");

  /// from: public abstract boolean canSeekForward()
  bool canSeekForward() => jniAccessors.callMethodWithArgs(
      reference, _id_canSeekForward, jni.JniType.booleanType, []).boolean;

  static final _id_getAudioSessionId =
      jniAccessors.getMethodIDOf(_classRef, "getAudioSessionId", "()I");

  /// from: public abstract int getAudioSessionId()
  ///
  /// Get the audio session id for the player used by this VideoView. This can be used to
  /// apply audio effects to the audio track of a video.
  ///@return The audio session, or 0 if there was an error.
  int getAudioSessionId() => jniAccessors.callMethodWithArgs(
      reference, _id_getAudioSessionId, jni.JniType.intType, []).integer;
}