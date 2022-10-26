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

import "../content/Context.dart" as context_;

import "../os/Looper.dart" as looper_;

import "../view/KeyEvent.dart" as keyevent_;

import "MediaMetadataEditor.dart" as mediametadataeditor_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.RemoteController
///
/// The RemoteController class is used to control media playback, display and update media metadata
/// and playback status, published by applications using the RemoteControlClient class.
///
/// A RemoteController shall be registered through
/// AudioManager\#registerRemoteController(RemoteController) in order for the system to send
/// media event updates to the OnClientUpdateListener listener set in the class constructor.
/// Implement the methods of the interface to receive the information published by the active
/// RemoteControlClient instances.
/// <br>By default an OnClientUpdateListener implementation will not receive bitmaps for
/// album art. Use \#setArtworkConfiguration(int, int) to receive images as well.
///
/// Registration requires the OnClientUpdateListener listener to be one of the enabled
/// notification listeners (see android.service.notification.NotificationListenerService).
///@deprecated Use MediaController instead.
class RemoteController extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/RemoteController");
  RemoteController.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int POSITION_SYNCHRONIZATION_CHECK
  ///
  /// The playback position synchronization mode where the RemoteControlClient instances which
  /// expose their playback position to the framework, will be regularly polled to check
  /// whether any drift has been noticed between their estimated position and the one they report.
  /// Note that this mode should only ever be used when needing to display very accurate playback
  /// position, as regularly polling a RemoteControlClient for its position may have an impact
  /// on battery life (if applicable) when this query will trigger network transactions in the
  /// case of remote playback.
  static const POSITION_SYNCHRONIZATION_CHECK = 1;

  /// from: static public final int POSITION_SYNCHRONIZATION_NONE
  ///
  /// Default playback position synchronization mode where the RemoteControlClient is not
  /// asked regularly for its playback position to see if it has drifted from the estimated
  /// position.
  static const POSITION_SYNCHRONIZATION_NONE = 0;

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/media/RemoteController\$OnClientUpdateListener;)V");

  /// from: public void <init>(android.content.Context context, android.media.RemoteController.OnClientUpdateListener updateListener)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Class constructor.
  ///@param context the Context, must be non-null.
  ///@param updateListener the listener to be called whenever new client information is available,
  ///     must be non-null.
  ///@throws IllegalArgumentException
  RemoteController(context_.Context context,
      RemoteController_OnClientUpdateListener updateListener)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [context.reference, updateListener.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/media/RemoteController\$OnClientUpdateListener;Landroid/os/Looper;)V");

  /// from: public void <init>(android.content.Context context, android.media.RemoteController.OnClientUpdateListener updateListener, android.os.Looper looper)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Class constructor.
  ///@param context the Context, must be non-null.
  ///@param updateListener the listener to be called whenever new client information is available,
  ///     must be non-null.
  ///@param looper the Looper on which to run the event loop,
  ///     or null to use the current thread's looper.
  ///@throws java.lang.IllegalArgumentException
  RemoteController.ctor1(
      context_.Context context,
      RemoteController_OnClientUpdateListener updateListener,
      looper_.Looper looper)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, [
          context.reference,
          updateListener.reference,
          looper.reference
        ]).object);

  static final _id_getEstimatedMediaPosition =
      jniAccessors.getMethodIDOf(_classRef, "getEstimatedMediaPosition", "()J");

  /// from: public long getEstimatedMediaPosition()
  ///
  /// Return the estimated playback position of the current media track or a negative value
  /// if not available.
  ///
  /// The value returned is estimated by the current process and may not be perfect.
  /// The time returned by this method is calculated from the last state change time based
  /// on the current play position at that time and the last known playback speed.
  /// An application may call \#setSynchronizationMode(int) to apply
  /// a synchronization policy that will periodically re-sync the estimated position
  /// with the RemoteControlClient.
  ///
  ///@return the current estimated playback position in milliseconds or a negative value
  ///         if not available
  ///@see OnClientUpdateListener\#onClientPlaybackStateUpdate(int, long, long, float)
  int getEstimatedMediaPosition() => jniAccessors.callMethodWithArgs(
      reference, _id_getEstimatedMediaPosition, jni.JniType.longType, []).long;

  static final _id_sendMediaKeyEvent = jniAccessors.getMethodIDOf(
      _classRef, "sendMediaKeyEvent", "(Landroid/view/KeyEvent;)Z");

  /// from: public boolean sendMediaKeyEvent(android.view.KeyEvent keyEvent)
  ///
  /// Send a simulated key event for a media button to be received by the current client.
  /// To simulate a key press, you must first send a KeyEvent built with
  /// a KeyEvent\#ACTION_DOWN action, then another event with the KeyEvent\#ACTION_UP
  /// action.
  /// The key event will be sent to the registered receiver
  /// (see AudioManager\#registerMediaButtonEventReceiver(PendingIntent)) whose associated
  /// RemoteControlClient's metadata and playback state is published (there may be
  /// none under some circumstances).
  ///@param keyEvent a KeyEvent instance whose key code is one of
  ///     KeyEvent\#KEYCODE_MUTE,
  ///     KeyEvent\#KEYCODE_HEADSETHOOK,
  ///     KeyEvent\#KEYCODE_MEDIA_PLAY,
  ///     KeyEvent\#KEYCODE_MEDIA_PAUSE,
  ///     KeyEvent\#KEYCODE_MEDIA_PLAY_PAUSE,
  ///     KeyEvent\#KEYCODE_MEDIA_STOP,
  ///     KeyEvent\#KEYCODE_MEDIA_NEXT,
  ///     KeyEvent\#KEYCODE_MEDIA_PREVIOUS,
  ///     KeyEvent\#KEYCODE_MEDIA_REWIND,
  ///     KeyEvent\#KEYCODE_MEDIA_RECORD,
  ///     KeyEvent\#KEYCODE_MEDIA_FAST_FORWARD,
  ///     KeyEvent\#KEYCODE_MEDIA_CLOSE,
  ///     KeyEvent\#KEYCODE_MEDIA_EJECT,
  ///     or KeyEvent\#KEYCODE_MEDIA_AUDIO_TRACK.
  ///@return true if the event was successfully sent, false otherwise.
  ///@throws IllegalArgumentException
  bool sendMediaKeyEvent(keyevent_.KeyEvent keyEvent) =>
      jniAccessors.callMethodWithArgs(reference, _id_sendMediaKeyEvent,
          jni.JniType.booleanType, [keyEvent.reference]).boolean;

  static final _id_seekTo =
      jniAccessors.getMethodIDOf(_classRef, "seekTo", "(J)Z");

  /// from: public boolean seekTo(long timeMs)
  ///
  /// Sets the new playback position.
  /// This method can only be called on a registered RemoteController.
  ///@param timeMs a 0 or positive value for the new playback position, expressed in ms.
  ///@return true if the command to set the playback position was successfully sent.
  ///@throws IllegalArgumentException
  bool seekTo(int timeMs) => jniAccessors.callMethodWithArgs(
      reference, _id_seekTo, jni.JniType.booleanType, [timeMs]).boolean;

  static final _id_setArtworkConfiguration =
      jniAccessors.getMethodIDOf(_classRef, "setArtworkConfiguration", "(II)Z");

  /// from: public boolean setArtworkConfiguration(int width, int height)
  ///
  /// Set the maximum artwork image dimensions to be received in the metadata.
  /// No bitmaps will be received unless this has been specified.
  ///@param width the maximum width in pixels
  ///@param height the maximum height in pixels
  ///@return true if the artwork dimension was successfully set.
  ///@throws IllegalArgumentException
  bool setArtworkConfiguration(int width, int height) =>
      jniAccessors.callMethodWithArgs(reference, _id_setArtworkConfiguration,
          jni.JniType.booleanType, [width, height]).boolean;

  static final _id_clearArtworkConfiguration =
      jniAccessors.getMethodIDOf(_classRef, "clearArtworkConfiguration", "()Z");

  /// from: public boolean clearArtworkConfiguration()
  ///
  /// Prevents this RemoteController from receiving artwork images.
  ///@return true if receiving artwork images was successfully disabled.
  bool clearArtworkConfiguration() => jniAccessors.callMethodWithArgs(reference,
      _id_clearArtworkConfiguration, jni.JniType.booleanType, []).boolean;

  static final _id_setSynchronizationMode =
      jniAccessors.getMethodIDOf(_classRef, "setSynchronizationMode", "(I)Z");

  /// from: public boolean setSynchronizationMode(int sync)
  ///
  /// Set the playback position synchronization mode.
  /// Must be called on a registered RemoteController.
  ///@param sync \#POSITION_SYNCHRONIZATION_NONE or \#POSITION_SYNCHRONIZATION_CHECK
  ///@return true if the synchronization mode was successfully set.
  ///@throws IllegalArgumentException
  bool setSynchronizationMode(int sync0) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setSynchronizationMode,
      jni.JniType.booleanType,
      [sync0]).boolean;

  static final _id_editMetadata = jniAccessors.getMethodIDOf(_classRef,
      "editMetadata", "()Landroid/media/RemoteController\$MetadataEditor;");

  /// from: public android.media.RemoteController.MetadataEditor editMetadata()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a MetadataEditor for updating metadata values of the editable keys of
  /// the current RemoteControlClient.
  /// This method can only be called on a registered RemoteController.
  ///@return a new MetadataEditor instance.
  RemoteController_MetadataEditor editMetadata() =>
      RemoteController_MetadataEditor.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_editMetadata, jni.JniType.objectType, []).object);
}

/// from: android.media.RemoteController$OnClientUpdateListener
///
/// Interface definition for the callbacks to be invoked whenever media events, metadata
/// and playback status are available.
class RemoteController_OnClientUpdateListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/media/RemoteController\$OnClientUpdateListener");
  RemoteController_OnClientUpdateListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onClientChange =
      jniAccessors.getMethodIDOf(_classRef, "onClientChange", "(Z)V");

  /// from: public abstract void onClientChange(boolean clearing)
  ///
  /// Called whenever all information, previously received through the other
  /// methods of the listener, is no longer valid and is about to be refreshed.
  /// This is typically called whenever a new RemoteControlClient has been selected
  /// by the system to have its media information published.
  ///@param clearing true if there is no selected RemoteControlClient and no information
  ///     is available.
  void onClientChange(bool clearing) => jniAccessors.callMethodWithArgs(
      reference, _id_onClientChange, jni.JniType.voidType, [clearing]).check();

  static final _id_onClientPlaybackStateUpdate = jniAccessors.getMethodIDOf(
      _classRef, "onClientPlaybackStateUpdate", "(I)V");

  /// from: public abstract void onClientPlaybackStateUpdate(int state)
  ///
  /// Called whenever the playback state has changed.
  /// It is called when no information is known about the playback progress in the media and
  /// the playback speed.
  ///@param state one of the playback states authorized
  ///     in RemoteControlClient\#setPlaybackState(int).
  void onClientPlaybackStateUpdate(int state) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onClientPlaybackStateUpdate,
          jni.JniType.voidType,
          [state]).check();

  static final _id_onClientPlaybackStateUpdate1 = jniAccessors.getMethodIDOf(
      _classRef, "onClientPlaybackStateUpdate", "(IJJF)V");

  /// from: public abstract void onClientPlaybackStateUpdate(int state, long stateChangeTimeMs, long currentPosMs, float speed)
  ///
  /// Called whenever the playback state has changed, and playback position
  /// and speed are known.
  ///@param state one of the playback states authorized
  ///     in RemoteControlClient\#setPlaybackState(int).
  ///@param stateChangeTimeMs the system time at which the state change was reported,
  ///     expressed in ms. Based on android.os.SystemClock\#elapsedRealtime().
  ///@param currentPosMs a positive value for the current media playback position expressed
  ///     in ms, a negative value if the position is temporarily unknown.
  ///@param speed a value expressed as a ratio of 1x playback: 1.0f is normal playback,
  ///    2.0f is 2x, 0.5f is half-speed, -2.0f is rewind at 2x speed. 0.0f means nothing is
  ///    playing (e.g. when state is RemoteControlClient\#PLAYSTATE_ERROR).
  void onClientPlaybackStateUpdate1(
          int state, int stateChangeTimeMs, int currentPosMs, double speed) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onClientPlaybackStateUpdate1,
          jni.JniType.voidType,
          [state, stateChangeTimeMs, currentPosMs, speed]).check();

  static final _id_onClientTransportControlUpdate = jniAccessors.getMethodIDOf(
      _classRef, "onClientTransportControlUpdate", "(I)V");

  /// from: public abstract void onClientTransportControlUpdate(int transportControlFlags)
  ///
  /// Called whenever the transport control flags have changed.
  ///@param transportControlFlags one of the flags authorized
  ///     in RemoteControlClient\#setTransportControlFlags(int).
  void onClientTransportControlUpdate(int transportControlFlags) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onClientTransportControlUpdate,
          jni.JniType.voidType,
          [transportControlFlags]).check();

  static final _id_onClientMetadataUpdate = jniAccessors.getMethodIDOf(
      _classRef,
      "onClientMetadataUpdate",
      "(Landroid/media/RemoteController\$MetadataEditor;)V");

  /// from: public abstract void onClientMetadataUpdate(android.media.RemoteController.MetadataEditor metadataEditor)
  ///
  /// Called whenever new metadata is available.
  /// See the MediaMetadataEditor\#putLong(int, long),
  ///  MediaMetadataEditor\#putString(int, String),
  ///  MediaMetadataEditor\#putBitmap(int, Bitmap), and
  ///  MediaMetadataEditor\#putObject(int, Object) methods for the various keys that
  ///  can be queried.
  ///@param metadataEditor the container of the new metadata.
  void onClientMetadataUpdate(RemoteController_MetadataEditor metadataEditor) =>
      jniAccessors.callMethodWithArgs(reference, _id_onClientMetadataUpdate,
          jni.JniType.voidType, [metadataEditor.reference]).check();
}

/// from: android.media.RemoteController$MetadataEditor
///
/// A class to read the metadata published by a RemoteControlClient, or send a
/// RemoteControlClient new values for keys that can be edited.
class RemoteController_MetadataEditor
    extends mediametadataeditor_.MediaMetadataEditor {
  static final _classRef =
      jniAccessors.getClassOf("android/media/RemoteController\$MetadataEditor");
  RemoteController_MetadataEditor.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  RemoteController_MetadataEditor()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_apply =
      jniAccessors.getMethodIDOf(_classRef, "apply", "()V");

  /// from: synchronized public void apply()
  ///
  /// Applies all of the metadata changes that have been set since the MediaMetadataEditor
  /// instance was created with RemoteController\#editMetadata()
  /// or since \#clear() was called.
  void apply() => jniAccessors.callMethodWithArgs(
      reference, _id_apply, jni.JniType.voidType, []).check();
}
