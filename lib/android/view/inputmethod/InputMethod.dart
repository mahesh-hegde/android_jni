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

import "../../os/IBinder.dart" as ibinder_;

import "InputBinding.dart" as inputbinding_;

import "InputConnection.dart" as inputconnection_;

import "EditorInfo.dart" as editorinfo_;

import "InputMethodSession.dart" as inputmethodsession_;

import "../../os/ResultReceiver.dart" as resultreceiver_;

import "InputMethodSubtype.dart" as inputmethodsubtype_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.inputmethod.InputMethod
///
/// The InputMethod interface represents an input method which can generate key
/// events and text, such as digital, email addresses, CJK characters, other
/// language characters, and etc., while handling various input events, and send
/// the text back to the application that requests text input.  See
/// InputMethodManager for more general information about the
/// architecture.
///
/// Applications will not normally use this interface themselves, instead
/// relying on the standard interaction provided by
/// android.widget.TextView and android.widget.EditText.
///
/// Those implementing input methods should normally do so by deriving from
/// InputMethodService or one of its subclasses.  When implementing
/// an input method, the service component containing it must also supply
/// a \#SERVICE_META_DATA meta-data field, referencing an XML resource
/// providing details about the input method.  All input methods also must
/// require that clients hold the
/// android.Manifest.permission\#BIND_INPUT_METHOD in order to interact
/// with the service; if this is not required, the system will not use that
/// input method, because it can not trust that it is not compromised.
///
/// The InputMethod interface is actually split into two parts: the interface
/// here is the top-level interface to the input method, providing all
/// access to it, which only the system can access (due to the BIND_INPUT_METHOD
/// permission requirement).  In addition its method
/// \#createSession(android.view.inputmethod.InputMethod.SessionCallback)
/// can be called to instantate a secondary InputMethodSession interface
/// which is what clients use to communicate with the input method.
class InputMethod extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/inputmethod/InputMethod");
  InputMethod.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String SERVICE_INTERFACE
  ///
  /// This is the interface name that a service implementing an input
  /// method should say that it supports -- that is, this is the action it
  /// uses for its intent filter.
  /// To be supported, the service must also require the
  /// android.Manifest.permission\#BIND_INPUT_METHOD permission so
  /// that other applications can not abuse it.
  static const SERVICE_INTERFACE = "android.view.InputMethod";

  /// from: static public final java.lang.String SERVICE_META_DATA
  ///
  /// Name under which an InputMethod service component publishes information
  /// about itself.  This meta-data must reference an XML resource containing
  /// an
  /// <code>&lt;android.R.styleable\#InputMethod input-method&gt;</code>
  /// tag.
  static const SERVICE_META_DATA = "android.view.im";

  /// from: static public final int SHOW_EXPLICIT
  ///
  /// Flag for \#showSoftInput: this show has been explicitly
  /// requested by the user.  If not set, the system has decided it may be
  /// a good idea to show the input method based on a navigation operation
  /// in the UI.
  static const SHOW_EXPLICIT = 1;

  /// from: static public final int SHOW_FORCED
  ///
  /// Flag for \#showSoftInput: this show has been forced to
  /// happen by the user.  If set, the input method should remain visible
  /// until deliberated dismissed by the user in its UI.
  static const SHOW_FORCED = 2;

  static final _id_attachToken = jniAccessors.getMethodIDOf(
      _classRef, "attachToken", "(Landroid/os/IBinder;)V");

  /// from: public abstract void attachToken(android.os.IBinder token)
  ///
  /// Called first thing after an input method is created, this supplies a
  /// unique token for the session it has with the system service.  It is
  /// needed to identify itself with the service to validate its operations.
  /// This token <strong>must not</strong> be passed to applications, since
  /// it grants special priviledges that should not be given to applications.
  ///
  /// Note: to protect yourself from malicious clients, you should only
  /// accept the first token given to you.  Any after that may come from the
  /// client.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  void attachToken(ibinder_.IBinder token) => jniAccessors.callMethodWithArgs(
      reference,
      _id_attachToken,
      jni.JniType.voidType,
      [token.reference]).check();

  static final _id_bindInput = jniAccessors.getMethodIDOf(
      _classRef, "bindInput", "(Landroid/view/inputmethod/InputBinding;)V");

  /// from: public abstract void bindInput(android.view.inputmethod.InputBinding binding)
  ///
  /// Bind a new application environment in to the input method, so that it
  /// can later start and stop input processing.
  /// Typically this method is called when this input method is enabled in an
  /// application for the first time.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param binding Information about the application window that is binding
  /// to the input method.
  ///@see InputBinding
  ///@see \#unbindInput()
  void bindInput(inputbinding_.InputBinding binding) =>
      jniAccessors.callMethodWithArgs(reference, _id_bindInput,
          jni.JniType.voidType, [binding.reference]).check();

  static final _id_unbindInput =
      jniAccessors.getMethodIDOf(_classRef, "unbindInput", "()V");

  /// from: public abstract void unbindInput()
  ///
  /// Unbind an application environment, called when the information previously
  /// set by \#bindInput is no longer valid for this input method.
  ///
  ///
  /// Typically this method is called when the application changes to be
  /// non-foreground.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  void unbindInput() => jniAccessors.callMethodWithArgs(
      reference, _id_unbindInput, jni.JniType.voidType, []).check();

  static final _id_startInput = jniAccessors.getMethodIDOf(
      _classRef,
      "startInput",
      "(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V");

  /// from: public abstract void startInput(android.view.inputmethod.InputConnection inputConnection, android.view.inputmethod.EditorInfo info)
  ///
  /// This method is called when the application starts to receive text and it
  /// is ready for this input method to process received events and send result
  /// text back to the application.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param inputConnection Optional specific input connection for
  /// communicating with the text box; if null, you should use the generic
  /// bound input connection.
  ///@param info Information about the text box (typically, an EditText)
  ///        that requests input.
  ///@see EditorInfo
  void startInput(inputconnection_.InputConnection inputConnection,
          editorinfo_.EditorInfo info) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_startInput,
          jni.JniType.voidType,
          [inputConnection.reference, info.reference]).check();

  static final _id_restartInput = jniAccessors.getMethodIDOf(
      _classRef,
      "restartInput",
      "(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V");

  /// from: public abstract void restartInput(android.view.inputmethod.InputConnection inputConnection, android.view.inputmethod.EditorInfo attribute)
  ///
  /// This method is called when the state of this input method needs to be
  /// reset.
  ///
  ///
  /// Typically, this method is called when the input focus is moved from one
  /// text box to another.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param inputConnection Optional specific input connection for
  /// communicating with the text box; if null, you should use the generic
  /// bound input connection.
  ///@param attribute The attribute of the text box (typically, a EditText)
  ///        that requests input.
  ///@see EditorInfo
  void restartInput(inputconnection_.InputConnection inputConnection,
          editorinfo_.EditorInfo attribute) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_restartInput,
          jni.JniType.voidType,
          [inputConnection.reference, attribute.reference]).check();

  static final _id_createSession = jniAccessors.getMethodIDOf(
      _classRef,
      "createSession",
      "(Landroid/view/inputmethod/InputMethod\$SessionCallback;)V");

  /// from: public abstract void createSession(android.view.inputmethod.InputMethod.SessionCallback callback)
  ///
  /// Create a new InputMethodSession that can be handed to client
  /// applications for interacting with the input method.  You can later
  /// use \#revokeSession(InputMethodSession) to destroy the session
  /// so that it can no longer be used by any clients.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param callback Interface that is called with the newly created session.
  void createSession(InputMethod_SessionCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_createSession,
          jni.JniType.voidType, [callback.reference]).check();

  static final _id_setSessionEnabled = jniAccessors.getMethodIDOf(_classRef,
      "setSessionEnabled", "(Landroid/view/inputmethod/InputMethodSession;Z)V");

  /// from: public abstract void setSessionEnabled(android.view.inputmethod.InputMethodSession session, boolean enabled)
  ///
  /// Control whether a particular input method session is active.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param session The InputMethodSession previously provided through
  /// SessionCallback.sessionCreated() that is to be changed.
  void setSessionEnabled(
          inputmethodsession_.InputMethodSession session, bool enabled) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSessionEnabled,
          jni.JniType.voidType, [session.reference, enabled]).check();

  static final _id_revokeSession = jniAccessors.getMethodIDOf(_classRef,
      "revokeSession", "(Landroid/view/inputmethod/InputMethodSession;)V");

  /// from: public abstract void revokeSession(android.view.inputmethod.InputMethodSession session)
  ///
  /// Disable and destroy a session that was previously created with
  /// \#createSession(android.view.inputmethod.InputMethod.SessionCallback).
  /// After this call, the given session interface is no longer active and
  /// calls on it will fail.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param session The InputMethodSession previously provided through
  /// SessionCallback.sessionCreated() that is to be revoked.
  void revokeSession(inputmethodsession_.InputMethodSession session) =>
      jniAccessors.callMethodWithArgs(reference, _id_revokeSession,
          jni.JniType.voidType, [session.reference]).check();

  static final _id_showSoftInput = jniAccessors.getMethodIDOf(
      _classRef, "showSoftInput", "(ILandroid/os/ResultReceiver;)V");

  /// from: public abstract void showSoftInput(int flags, android.os.ResultReceiver resultReceiver)
  ///
  /// Request that any soft input part of the input method be shown to the user.
  ///
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param flags Provides additional information about the show request.
  /// Currently may be 0 or have the bit \#SHOW_EXPLICIT set.
  ///@param resultReceiver The client requesting the show may wish to
  /// be told the impact of their request, which should be supplied here.
  /// The result code should be
  /// InputMethodManager\#RESULT_UNCHANGED_SHOWN InputMethodManager.RESULT_UNCHANGED_SHOWN,
  /// InputMethodManager\#RESULT_UNCHANGED_HIDDEN InputMethodManager.RESULT_UNCHANGED_HIDDEN,
  /// InputMethodManager\#RESULT_SHOWN InputMethodManager.RESULT_SHOWN, or
  /// InputMethodManager\#RESULT_HIDDEN InputMethodManager.RESULT_HIDDEN.
  void showSoftInput(
          int flags, resultreceiver_.ResultReceiver resultReceiver) =>
      jniAccessors.callMethodWithArgs(reference, _id_showSoftInput,
          jni.JniType.voidType, [flags, resultReceiver.reference]).check();

  static final _id_hideSoftInput = jniAccessors.getMethodIDOf(
      _classRef, "hideSoftInput", "(ILandroid/os/ResultReceiver;)V");

  /// from: public abstract void hideSoftInput(int flags, android.os.ResultReceiver resultReceiver)
  ///
  /// Request that any soft input part of the input method be hidden from the user.
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param flags Provides additional information about the show request.
  /// Currently always 0.
  ///@param resultReceiver The client requesting the show may wish to
  /// be told the impact of their request, which should be supplied here.
  /// The result code should be
  /// InputMethodManager\#RESULT_UNCHANGED_SHOWN InputMethodManager.RESULT_UNCHANGED_SHOWN,
  /// InputMethodManager\#RESULT_UNCHANGED_HIDDEN InputMethodManager.RESULT_UNCHANGED_HIDDEN,
  /// InputMethodManager\#RESULT_SHOWN InputMethodManager.RESULT_SHOWN, or
  /// InputMethodManager\#RESULT_HIDDEN InputMethodManager.RESULT_HIDDEN.
  void hideSoftInput(
          int flags, resultreceiver_.ResultReceiver resultReceiver) =>
      jniAccessors.callMethodWithArgs(reference, _id_hideSoftInput,
          jni.JniType.voidType, [flags, resultReceiver.reference]).check();

  static final _id_changeInputMethodSubtype = jniAccessors.getMethodIDOf(
      _classRef,
      "changeInputMethodSubtype",
      "(Landroid/view/inputmethod/InputMethodSubtype;)V");

  /// from: public abstract void changeInputMethodSubtype(android.view.inputmethod.InputMethodSubtype subtype)
  ///
  /// Notify that the input method subtype is being changed in the same input method.
  /// This method must be called from the
  ///  *            {@linkplain Looper\#getMainLooper() main thread} of your app.
  ///@param subtype New subtype of the notified input method
  void changeInputMethodSubtype(
          inputmethodsubtype_.InputMethodSubtype subtype) =>
      jniAccessors.callMethodWithArgs(reference, _id_changeInputMethodSubtype,
          jni.JniType.voidType, [subtype.reference]).check();
}

/// from: android.view.inputmethod.InputMethod$SessionCallback
class InputMethod_SessionCallback extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/view/inputmethod/InputMethod\$SessionCallback");
  InputMethod_SessionCallback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_sessionCreated = jniAccessors.getMethodIDOf(_classRef,
      "sessionCreated", "(Landroid/view/inputmethod/InputMethodSession;)V");

  /// from: public abstract void sessionCreated(android.view.inputmethod.InputMethodSession session)
  void sessionCreated(inputmethodsession_.InputMethodSession session) =>
      jniAccessors.callMethodWithArgs(reference, _id_sessionCreated,
          jni.JniType.voidType, [session.reference]).check();
}
