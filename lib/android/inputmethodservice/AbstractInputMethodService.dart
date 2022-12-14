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

import "../app/Service.dart" as service_;

import "../view/KeyEvent.dart" as keyevent_;

import "../os/IBinder.dart" as ibinder_;

import "../content/Intent.dart" as intent_;

import "../view/MotionEvent.dart" as motionevent_;

import "../view/inputmethod/InputMethodSession.dart" as inputmethodsession_;

import "../view/inputmethod/InputMethod.dart" as inputmethod_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.inputmethodservice.AbstractInputMethodService
///
/// AbstractInputMethodService provides a abstract base class for input methods.
/// Normal input method implementations will not derive from this directly,
/// instead building on top of InputMethodService or another more
/// complete base class.  Be sure to read InputMethod for more
/// information on the basics of writing input methods.
///
/// This class combines a Service (representing the input method component
/// to the system with the InputMethod interface that input methods must
/// implement.  This base class takes care of reporting your InputMethod from
/// the service when clients bind to it, but provides no standard implementation
/// of the InputMethod interface itself.  Derived classes must implement that
/// interface.
class AbstractInputMethodService extends service_.Service {
  static final _classRef = jniAccessors
      .getClassOf("android/inputmethodservice/AbstractInputMethodService");
  AbstractInputMethodService.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AbstractInputMethodService.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_getKeyDispatcherState = jniAccessors.getMethodIDOf(_classRef,
      "getKeyDispatcherState", "()Landroid/view/KeyEvent\$DispatcherState;");

  /// from: public android.view.KeyEvent.DispatcherState getKeyDispatcherState()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the global KeyEvent.DispatcherState KeyEvent.DispatcherState
  /// for used for processing events from the target application.
  /// Normally you will not need to use this directly, but
  /// just use the standard high-level event callbacks like \#onKeyDown.
  keyevent_.KeyEvent_DispatcherState getKeyDispatcherState() =>
      keyevent_.KeyEvent_DispatcherState.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getKeyDispatcherState,
              jni.JniType.objectType, []).object);

  static final _id_onCreateInputMethodInterface = jniAccessors.getMethodIDOf(
      _classRef,
      "onCreateInputMethodInterface",
      "()Landroid/inputmethodservice/AbstractInputMethodService\$AbstractInputMethodImpl;");

  /// from: public abstract android.inputmethodservice.AbstractInputMethodService.AbstractInputMethodImpl onCreateInputMethodInterface()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Called by the framework during initialization, when the InputMethod
  /// interface for this service needs to be created.
  AbstractInputMethodService_AbstractInputMethodImpl
      onCreateInputMethodInterface() =>
          AbstractInputMethodService_AbstractInputMethodImpl.fromRef(
              jniAccessors.callMethodWithArgs(
                  reference,
                  _id_onCreateInputMethodInterface,
                  jni.JniType.objectType, []).object);

  static final _id_onCreateInputMethodSessionInterface = jniAccessors.getMethodIDOf(
      _classRef,
      "onCreateInputMethodSessionInterface",
      "()Landroid/inputmethodservice/AbstractInputMethodService\$AbstractInputMethodSessionImpl;");

  /// from: public abstract android.inputmethodservice.AbstractInputMethodService.AbstractInputMethodSessionImpl onCreateInputMethodSessionInterface()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Called by the framework when a new InputMethodSession interface is
  /// needed for a new client of the input method.
  AbstractInputMethodService_AbstractInputMethodSessionImpl
      onCreateInputMethodSessionInterface() =>
          AbstractInputMethodService_AbstractInputMethodSessionImpl.fromRef(
              jniAccessors.callMethodWithArgs(
                  reference,
                  _id_onCreateInputMethodSessionInterface,
                  jni.JniType.objectType, []).object);

  static final _id_dump = jniAccessors.getMethodIDOf(_classRef, "dump",
      "(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V");

  /// from: protected void dump(java.io.FileDescriptor fd, java.io.PrintWriter fout, java.lang.String[] args)
  ///
  /// Implement this to handle android.os.Binder\#dump Binder.dump()
  /// calls on your input method.
  void dump(jni.JniObject fd, jni.JniObject fout, jni.JniObject args) =>
      jniAccessors.callMethodWithArgs(reference, _id_dump, jni.JniType.voidType,
          [fd.reference, fout.reference, args.reference]).check();

  static final _id_onBind = jniAccessors.getMethodIDOf(
      _classRef, "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;");

  /// from: public final android.os.IBinder onBind(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ibinder_.IBinder onBind(intent_.Intent intent) =>
      ibinder_.IBinder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onBind, jni.JniType.objectType, [intent.reference]).object);

  static final _id_onTrackballEvent = jniAccessors.getMethodIDOf(
      _classRef, "onTrackballEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onTrackballEvent(android.view.MotionEvent event)
  ///
  /// Implement this to handle trackball events on your input method.
  ///@param event The motion event being received.
  ///@return True if the event was handled in this function, false otherwise.
  ///@see android.view.View\#onTrackballEvent(MotionEvent)
  bool onTrackballEvent(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onTrackballEvent,
          jni.JniType.booleanType, [event.reference]).boolean;

  static final _id_onGenericMotionEvent = jniAccessors.getMethodIDOf(
      _classRef, "onGenericMotionEvent", "(Landroid/view/MotionEvent;)Z");

  /// from: public boolean onGenericMotionEvent(android.view.MotionEvent event)
  ///
  /// Implement this to handle generic motion events on your input method.
  ///@param event The motion event being received.
  ///@return True if the event was handled in this function, false otherwise.
  ///@see android.view.View\#onGenericMotionEvent(MotionEvent)
  bool onGenericMotionEvent(motionevent_.MotionEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onGenericMotionEvent,
          jni.JniType.booleanType, [event.reference]).boolean;
}

/// from: android.inputmethodservice.AbstractInputMethodService$AbstractInputMethodSessionImpl
///
/// Base class for derived classes to implement their InputMethodSession
/// interface.  This takes care of basic maintenance of the session,
/// but most behavior must be implemented in a derived class.
class AbstractInputMethodService_AbstractInputMethodSessionImpl
    extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/inputmethodservice/AbstractInputMethodService\$AbstractInputMethodSessionImpl");
  AbstractInputMethodService_AbstractInputMethodSessionImpl.fromRef(
      jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AbstractInputMethodService_AbstractInputMethodSessionImpl()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_isEnabled =
      jniAccessors.getMethodIDOf(_classRef, "isEnabled", "()Z");

  /// from: public boolean isEnabled()
  ///
  /// Check whether this session has been enabled by the system.  If not
  /// enabled, you should not execute any calls on to it.
  bool isEnabled() => jniAccessors.callMethodWithArgs(
      reference, _id_isEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_isRevoked =
      jniAccessors.getMethodIDOf(_classRef, "isRevoked", "()Z");

  /// from: public boolean isRevoked()
  ///
  /// Check whether this session has been revoked by the system.  Revoked
  /// session is also always disabled, so there is generally no need to
  /// explicitly check for this.
  bool isRevoked() => jniAccessors.callMethodWithArgs(
      reference, _id_isRevoked, jni.JniType.booleanType, []).boolean;

  static final _id_setEnabled =
      jniAccessors.getMethodIDOf(_classRef, "setEnabled", "(Z)V");

  /// from: public void setEnabled(boolean enabled)
  ///
  /// Change the enabled state of the session.  This only works if the
  /// session has not been revoked.
  void setEnabled(bool enabled) => jniAccessors.callMethodWithArgs(
      reference, _id_setEnabled, jni.JniType.voidType, [enabled]).check();

  static final _id_revokeSelf =
      jniAccessors.getMethodIDOf(_classRef, "revokeSelf", "()V");

  /// from: public void revokeSelf()
  ///
  /// Revoke the session from the client.  This disabled the session, and
  /// prevents it from ever being enabled again.
  void revokeSelf() => jniAccessors.callMethodWithArgs(
      reference, _id_revokeSelf, jni.JniType.voidType, []).check();

  static final _id_dispatchKeyEvent = jniAccessors.getMethodIDOf(
      _classRef,
      "dispatchKeyEvent",
      "(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession\$EventCallback;)V");

  /// from: public void dispatchKeyEvent(int seq, android.view.KeyEvent event, android.view.inputmethod.InputMethodSession.EventCallback callback)
  ///
  /// Take care of dispatching incoming key events to the appropriate
  /// callbacks on the service, and tell the client when this is done.
  void dispatchKeyEvent(int seq, keyevent_.KeyEvent event,
          inputmethodsession_.InputMethodSession_EventCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_dispatchKeyEvent,
          jni.JniType.voidType,
          [seq, event.reference, callback.reference]).check();

  static final _id_dispatchTrackballEvent = jniAccessors.getMethodIDOf(
      _classRef,
      "dispatchTrackballEvent",
      "(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession\$EventCallback;)V");

  /// from: public void dispatchTrackballEvent(int seq, android.view.MotionEvent event, android.view.inputmethod.InputMethodSession.EventCallback callback)
  ///
  /// Take care of dispatching incoming trackball events to the appropriate
  /// callbacks on the service, and tell the client when this is done.
  void dispatchTrackballEvent(int seq, motionevent_.MotionEvent event,
          inputmethodsession_.InputMethodSession_EventCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_dispatchTrackballEvent,
          jni.JniType.voidType,
          [seq, event.reference, callback.reference]).check();

  static final _id_dispatchGenericMotionEvent = jniAccessors.getMethodIDOf(
      _classRef,
      "dispatchGenericMotionEvent",
      "(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession\$EventCallback;)V");

  /// from: public void dispatchGenericMotionEvent(int seq, android.view.MotionEvent event, android.view.inputmethod.InputMethodSession.EventCallback callback)
  ///
  /// Take care of dispatching incoming generic motion events to the appropriate
  /// callbacks on the service, and tell the client when this is done.
  void dispatchGenericMotionEvent(int seq, motionevent_.MotionEvent event,
          inputmethodsession_.InputMethodSession_EventCallback callback) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_dispatchGenericMotionEvent,
          jni.JniType.voidType,
          [seq, event.reference, callback.reference]).check();
}

/// from: android.inputmethodservice.AbstractInputMethodService$AbstractInputMethodImpl
///
/// Base class for derived classes to implement their InputMethod
/// interface.  This takes care of basic maintenance of the input method,
/// but most behavior must be implemented in a derived class.
class AbstractInputMethodService_AbstractInputMethodImpl extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/inputmethodservice/AbstractInputMethodService\$AbstractInputMethodImpl");
  AbstractInputMethodService_AbstractInputMethodImpl.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AbstractInputMethodService_AbstractInputMethodImpl()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_createSession = jniAccessors.getMethodIDOf(
      _classRef,
      "createSession",
      "(Landroid/view/inputmethod/InputMethod\$SessionCallback;)V");

  /// from: public void createSession(android.view.inputmethod.InputMethod.SessionCallback callback)
  ///
  /// Instantiate a new client session for the input method, by calling
  /// back to AbstractInputMethodService\#onCreateInputMethodSessionInterface() AbstractInputMethodService.onCreateInputMethodSessionInterface().
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  void createSession(inputmethod_.InputMethod_SessionCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_createSession,
          jni.JniType.voidType, [callback.reference]).check();

  static final _id_setSessionEnabled = jniAccessors.getMethodIDOf(_classRef,
      "setSessionEnabled", "(Landroid/view/inputmethod/InputMethodSession;Z)V");

  /// from: public void setSessionEnabled(android.view.inputmethod.InputMethodSession session, boolean enabled)
  ///
  /// Take care of enabling or disabling an existing session by calling its
  /// AbstractInputMethodSessionImpl\#revokeSelf() AbstractInputMethodSessionImpl.setEnabled() method.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  void setSessionEnabled(
          inputmethodsession_.InputMethodSession session, bool enabled) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSessionEnabled,
          jni.JniType.voidType, [session.reference, enabled]).check();

  static final _id_revokeSession = jniAccessors.getMethodIDOf(_classRef,
      "revokeSession", "(Landroid/view/inputmethod/InputMethodSession;)V");

  /// from: public void revokeSession(android.view.inputmethod.InputMethodSession session)
  ///
  /// Take care of killing an existing session by calling its
  /// AbstractInputMethodSessionImpl\#revokeSelf() AbstractInputMethodSessionImpl.revokeSelf() method.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  void revokeSession(inputmethodsession_.InputMethodSession session) =>
      jniAccessors.callMethodWithArgs(reference, _id_revokeSession,
          jni.JniType.voidType, [session.reference]).check();
}
