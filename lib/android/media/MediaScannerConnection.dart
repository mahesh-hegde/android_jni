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

import "../content/ComponentName.dart" as componentname_;

import "../os/IBinder.dart" as ibinder_;

import "../net/Uri.dart" as uri_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.MediaScannerConnection
///
/// MediaScannerConnection provides a way for applications to pass a
/// newly created or downloaded media file to the media scanner service.
/// The media scanner service will read metadata from the file and add
/// the file to the media content provider.
/// The MediaScannerConnectionClient provides an interface for the
/// media scanner service to return the Uri for a newly scanned file
/// to the client of the MediaScannerConnection class.
class MediaScannerConnection extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/MediaScannerConnection");
  MediaScannerConnection.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/media/MediaScannerConnection\$MediaScannerConnectionClient;)V");

  /// from: public void <init>(android.content.Context context, android.media.MediaScannerConnection.MediaScannerConnectionClient client)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new MediaScannerConnection object.
  ///@param context the Context object, required for establishing a connection to
  /// the media scanner service.
  ///@param client an optional object implementing the MediaScannerConnectionClient
  /// interface, for receiving notifications from the media scanner.
  MediaScannerConnection(context_.Context context,
      MediaScannerConnection_MediaScannerConnectionClient client)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference, client.reference]).object);

  static final _id_connect =
      jniAccessors.getMethodIDOf(_classRef, "connect", "()V");

  /// from: public void connect()
  ///
  /// Initiates a connection to the media scanner service.
  /// MediaScannerConnectionClient\#onMediaScannerConnected()
  /// will be called when the connection is established.
  void connect() => jniAccessors.callMethodWithArgs(
      reference, _id_connect, jni.JniType.voidType, []).check();

  static final _id_disconnect =
      jniAccessors.getMethodIDOf(_classRef, "disconnect", "()V");

  /// from: public void disconnect()
  ///
  /// Releases the connection to the media scanner service.
  void disconnect() => jniAccessors.callMethodWithArgs(
      reference, _id_disconnect, jni.JniType.voidType, []).check();

  static final _id_isConnected =
      jniAccessors.getMethodIDOf(_classRef, "isConnected", "()Z");

  /// from: synchronized public boolean isConnected()
  ///
  /// Returns whether we are connected to the media scanner service
  ///@return true if we are connected, false otherwise
  bool isConnected() => jniAccessors.callMethodWithArgs(
      reference, _id_isConnected, jni.JniType.booleanType, []).boolean;

  static final _id_scanFile = jniAccessors.getMethodIDOf(
      _classRef, "scanFile", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void scanFile(java.lang.String path, java.lang.String mimeType)
  ///
  /// Requests the media scanner to scan a file.
  /// Success or failure of the scanning operation cannot be determined until
  /// MediaScannerConnectionClient\#onScanCompleted(String, Uri) is called.
  ///@param path the path to the file to be scanned.
  ///@param mimeType an optional mimeType for the file.
  /// If mimeType is null, then the mimeType will be inferred from the file extension.
  void scanFile(jni.JniString path, jni.JniString mimeType) =>
      jniAccessors.callMethodWithArgs(reference, _id_scanFile,
          jni.JniType.voidType, [path.reference, mimeType.reference]).check();

  static final _id_scanFile1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "scanFile",
      "(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection\$OnScanCompletedListener;)V");

  /// from: static public void scanFile(android.content.Context context, java.lang.String[] paths, java.lang.String[] mimeTypes, android.media.MediaScannerConnection.OnScanCompletedListener callback)
  ///
  /// Convenience for constructing a MediaScannerConnection, calling
  /// \#connect on it, and calling \#scanFile with the given
  /// <var>path</var> and <var>mimeType</var> when the connection is
  /// established.
  ///@param context The caller's Context, required for establishing a connection to
  /// the media scanner service.
  /// Success or failure of the scanning operation cannot be determined until
  /// MediaScannerConnectionClient\#onScanCompleted(String, Uri) is called.
  ///@param paths Array of paths to be scanned.
  ///@param mimeTypes Optional array of MIME types for each path.
  /// If mimeType is null, then the mimeType will be inferred from the file extension.
  ///@param callback Optional callback through which you can receive the
  /// scanned URI and MIME type; If null, the file will be scanned but
  /// you will not get a result back.
  ///@see \#scanFile(String, String)
  static void scanFile1(
          context_.Context context,
          jni.JniObject paths,
          jni.JniObject mimeTypes,
          MediaScannerConnection_OnScanCompletedListener callback) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_scanFile1, jni.JniType.voidType, [
        context.reference,
        paths.reference,
        mimeTypes.reference,
        callback.reference
      ]).check();

  static final _id_onServiceConnected = jniAccessors.getMethodIDOf(
      _classRef,
      "onServiceConnected",
      "(Landroid/content/ComponentName;Landroid/os/IBinder;)V");

  /// from: public void onServiceConnected(android.content.ComponentName className, android.os.IBinder service)
  ///
  /// Part of the ServiceConnection interface.  Do not call.
  void onServiceConnected(
          componentname_.ComponentName className, ibinder_.IBinder service) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onServiceConnected,
          jni.JniType.voidType,
          [className.reference, service.reference]).check();

  static final _id_onServiceDisconnected = jniAccessors.getMethodIDOf(
      _classRef, "onServiceDisconnected", "(Landroid/content/ComponentName;)V");

  /// from: public void onServiceDisconnected(android.content.ComponentName className)
  ///
  /// Part of the ServiceConnection interface.  Do not call.
  void onServiceDisconnected(componentname_.ComponentName className) =>
      jniAccessors.callMethodWithArgs(reference, _id_onServiceDisconnected,
          jni.JniType.voidType, [className.reference]).check();
}

/// from: android.media.MediaScannerConnection$OnScanCompletedListener
///
/// Interface for notifying clients of the result of scanning a
/// requested media file.
class MediaScannerConnection_OnScanCompletedListener extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/media/MediaScannerConnection\$OnScanCompletedListener");
  MediaScannerConnection_OnScanCompletedListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onScanCompleted = jniAccessors.getMethodIDOf(
      _classRef, "onScanCompleted", "(Ljava/lang/String;Landroid/net/Uri;)V");

  /// from: public abstract void onScanCompleted(java.lang.String path, android.net.Uri uri)
  ///
  /// Called to notify the client when the media scanner has finished
  /// scanning a file.
  ///@param path the path to the file that has been scanned.
  ///@param uri the Uri for the file if the scanning operation succeeded
  /// and the file was added to the media database, or null if scanning failed.
  void onScanCompleted(jni.JniString path, uri_.Uri uri) =>
      jniAccessors.callMethodWithArgs(reference, _id_onScanCompleted,
          jni.JniType.voidType, [path.reference, uri.reference]).check();
}

/// from: android.media.MediaScannerConnection$MediaScannerConnectionClient
///
/// An interface for notifying clients of MediaScannerConnection
/// when a connection to the MediaScanner service has been established
/// and when the scanning of a file has completed.
class MediaScannerConnection_MediaScannerConnectionClient
    extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/media/MediaScannerConnection\$MediaScannerConnectionClient");
  MediaScannerConnection_MediaScannerConnectionClient.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onMediaScannerConnected =
      jniAccessors.getMethodIDOf(_classRef, "onMediaScannerConnected", "()V");

  /// from: public abstract void onMediaScannerConnected()
  ///
  /// Called to notify the client when a connection to the
  /// MediaScanner service has been established.
  void onMediaScannerConnected() => jniAccessors.callMethodWithArgs(
      reference, _id_onMediaScannerConnected, jni.JniType.voidType, []).check();

  static final _id_onScanCompleted = jniAccessors.getMethodIDOf(
      _classRef, "onScanCompleted", "(Ljava/lang/String;Landroid/net/Uri;)V");

  /// from: public abstract void onScanCompleted(java.lang.String path, android.net.Uri uri)
  ///
  /// Called to notify the client when the media scanner has finished
  /// scanning a file.
  ///@param path the path to the file that has been scanned.
  ///@param uri the Uri for the file if the scanning operation succeeded
  /// and the file was added to the media database, or null if scanning failed.
  void onScanCompleted(jni.JniString path, uri_.Uri uri) =>
      jniAccessors.callMethodWithArgs(reference, _id_onScanCompleted,
          jni.JniType.voidType, [path.reference, uri.reference]).check();
}
