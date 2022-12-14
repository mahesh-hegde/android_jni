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

import "Context.dart" as context_;

import "Intent.dart" as intent_;

import "../os/IBinder.dart" as ibinder_;

import "../os/Bundle.dart" as bundle_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.BroadcastReceiver
///
/// Base class for code that receives and handles broadcast intents sent by
/// android.content.Context\#sendBroadcast(Intent).
///
/// You can either dynamically register an instance of this class with
/// Context\#registerReceiver Context.registerReceiver()
/// or statically declare an implementation with the
/// android.R.styleable\#AndroidManifestReceiver &lt;receiver&gt;
/// tag in your <code>AndroidManifest.xml</code>.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about using BroadcastReceiver, read the
/// <a href="{@docRoot}guide/components/broadcasts.html">Broadcasts</a> developer guide.
///</div>
class BroadcastReceiver extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/BroadcastReceiver");
  BroadcastReceiver.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  BroadcastReceiver()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onReceive = jniAccessors.getMethodIDOf(_classRef,
      "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V");

  /// from: public abstract void onReceive(android.content.Context context, android.content.Intent intent)
  ///
  /// This method is called when the BroadcastReceiver is receiving an Intent
  /// broadcast.  During this time you can use the other methods on
  /// BroadcastReceiver to view/modify the current result values.  This method
  /// is always called within the main thread of its process, unless you
  /// explicitly asked for it to be scheduled on a different thread using
  /// android.content.Context\#registerReceiver(BroadcastReceiver,
  /// IntentFilter, String, android.os.Handler). When it runs on the main
  /// thread you should
  /// never perform long-running operations in it (there is a timeout of
  /// 10 seconds that the system allows before considering the receiver to
  /// be blocked and a candidate to be killed). You cannot launch a popup dialog
  /// in your implementation of onReceive().
  ///
  /// __If this BroadcastReceiver was launched through a &lt;receiver&gt; tag,
  /// then the object is no longer alive after returning from this
  /// function.__ This means you should not perform any operations that
  /// return a result to you asynchronously. If you need to perform any follow up
  /// background work, schedule a android.app.job.JobService with
  /// android.app.job.JobScheduler.
  ///
  /// If you wish to interact with a service that is already running and previously
  /// bound using android.content.Context\#bindService(Intent, ServiceConnection, int) bindService(),
  /// you can use \#peekService.
  ///
  /// The Intent filters used in android.content.Context\#registerReceiver
  /// and in application manifests are _not_ guaranteed to be exclusive. They
  /// are hints to the operating system about how to find suitable recipients. It is
  /// possible for senders to force delivery to specific recipients, bypassing filter
  /// resolution.  For this reason, \#onReceive(Context, Intent) onReceive()
  /// implementations should respond only to known actions, ignoring any unexpected
  /// Intents that they may receive.
  ///@param context The Context in which the receiver is running.
  ///@param intent The Intent being received.
  void onReceive(context_.Context context, intent_.Intent intent) =>
      jniAccessors.callMethodWithArgs(reference, _id_onReceive,
          jni.JniType.voidType, [context.reference, intent.reference]).check();

  static final _id_goAsync = jniAccessors.getMethodIDOf(_classRef, "goAsync",
      "()Landroid/content/BroadcastReceiver\$PendingResult;");

  /// from: public final android.content.BroadcastReceiver.PendingResult goAsync()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This can be called by an application in \#onReceive to allow
  /// it to keep the broadcast active after returning from that function.
  /// This does _not_ change the expectation of being relatively
  /// responsive to the broadcast, but does allow
  /// the implementation to move work related to it over to another thread
  /// to avoid glitching the main UI thread due to disk IO.
  ///
  /// As a general rule, broadcast receivers are allowed to run for up to 10 seconds
  /// before they system will consider them non-responsive and ANR the app.  Since these usually
  /// execute on the app's main thread, they are already bound by the ~5 second time limit
  /// of various operations that can happen there (not to mention just avoiding UI jank), so
  /// the receive limit is generally not of concern.  However, once you use {@code goAsync}, though
  /// able to be off the main thread, the broadcast execution limit still applies, and that
  /// includes the time spent between calling this method and ultimately
  /// PendingResult\#finish() PendingResult.finish().
  ///
  ///
  /// If you are taking advantage of this method to have more time to execute, it is useful
  /// to know that the available time can be longer in certain situations.  In particular, if
  /// the broadcast you are receiving is not a foreground broadcast (that is, the sender has not
  /// used Intent\#FLAG_RECEIVER_FOREGROUND), then more time is allowed for the receivers
  /// to run, allowing them to execute for 30 seconds or even a bit more.  This is something that
  /// receivers should rarely take advantage of (long work should be punted to another system
  /// facility such as android.app.job.JobScheduler, android.app.Service, or
  /// see especially android.support.v4.app.JobIntentService), but can be useful in
  /// certain rare cases where it is necessary to do some work as soon as the broadcast is
  /// delivered.  Keep in mind that the work you do here will block further broadcasts until
  /// it completes, so taking advantage of this at all excessively can be counter-productive
  /// and cause later events to be received more slowly.
  ///
  ///@return Returns a PendingResult representing the result of
  /// the active broadcast.  The BroadcastRecord itself is no longer active;
  /// all data and other interaction must go through PendingResult
  /// APIs.  The PendingResult\#finish PendingResult.finish() method
  /// must be called once processing of the broadcast is done.
  BroadcastReceiver_PendingResult goAsync() =>
      BroadcastReceiver_PendingResult.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_goAsync, jni.JniType.objectType, []).object);

  static final _id_peekService = jniAccessors.getMethodIDOf(
      _classRef,
      "peekService",
      "(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;");

  /// from: public android.os.IBinder peekService(android.content.Context myContext, android.content.Intent service)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Provide a binder to an already-bound service.  This method is synchronous
  /// and will not start the target service if it is not present, so it is safe
  /// to call from \#onReceive.
  ///
  /// For peekService() to return a non null android.os.IBinder interface
  /// the service must have published it before. In other words some component
  /// must have called android.content.Context\#bindService(Intent, ServiceConnection, int) on it.
  ///@param myContext The Context that had been passed to \#onReceive(Context, Intent)
  ///@param service Identifies the already-bound service you wish to use. See
  /// android.content.Context\#bindService(Intent, ServiceConnection, int)
  /// for more information.
  ibinder_.IBinder peekService(
          context_.Context myContext, intent_.Intent service) =>
      ibinder_.IBinder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_peekService,
          jni.JniType.objectType,
          [myContext.reference, service.reference]).object);

  static final _id_setResultCode =
      jniAccessors.getMethodIDOf(_classRef, "setResultCode", "(I)V");

  /// from: public final void setResultCode(int code)
  ///
  /// Change the current result code of this broadcast; only works with
  /// broadcasts sent through
  /// Context\#sendOrderedBroadcast(Intent, String) Context.sendOrderedBroadcast.  Often uses the
  /// Activity android.app.Activity\#RESULT_CANCELED and
  /// android.app.Activity\#RESULT_OK constants, though the
  /// actual meaning of this value is ultimately up to the broadcaster.
  ///
  /// <p class="note">This method does not work with non-ordered broadcasts such
  /// as those sent with Context\#sendBroadcast(Intent) Context.sendBroadcast
  ///
  ///@param code The new result code.
  ///@see \#setResult(int, String, Bundle)
  void setResultCode(int code) => jniAccessors.callMethodWithArgs(
      reference, _id_setResultCode, jni.JniType.voidType, [code]).check();

  static final _id_getResultCode =
      jniAccessors.getMethodIDOf(_classRef, "getResultCode", "()I");

  /// from: public final int getResultCode()
  ///
  /// Retrieve the current result code, as set by the previous receiver.
  ///@return int The current result code.
  int getResultCode() => jniAccessors.callMethodWithArgs(
      reference, _id_getResultCode, jni.JniType.intType, []).integer;

  static final _id_setResultData = jniAccessors.getMethodIDOf(
      _classRef, "setResultData", "(Ljava/lang/String;)V");

  /// from: public final void setResultData(java.lang.String data)
  ///
  /// Change the current result data of this broadcast; only works with
  /// broadcasts sent through
  /// Context\#sendOrderedBroadcast(Intent, String) Context.sendOrderedBroadcast.  This is an arbitrary
  /// string whose interpretation is up to the broadcaster.
  ///
  /// <strong>This method does not work with non-ordered broadcasts such
  /// as those sent with Context\#sendBroadcast(Intent) Context.sendBroadcast</strong>
  ///
  ///@param data The new result data; may be null.
  ///@see \#setResult(int, String, Bundle)
  void setResultData(jni.JniString data) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setResultData,
      jni.JniType.voidType,
      [data.reference]).check();

  static final _id_getResultData = jniAccessors.getMethodIDOf(
      _classRef, "getResultData", "()Ljava/lang/String;");

  /// from: public final java.lang.String getResultData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the current result data, as set by the previous receiver.
  /// Often this is null.
  ///@return String The current result data; may be null.
  jni.JniString getResultData() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getResultData, jni.JniType.objectType, []).object);

  static final _id_setResultExtras = jniAccessors.getMethodIDOf(
      _classRef, "setResultExtras", "(Landroid/os/Bundle;)V");

  /// from: public final void setResultExtras(android.os.Bundle extras)
  ///
  /// Change the current result extras of this broadcast; only works with
  /// broadcasts sent through
  /// Context\#sendOrderedBroadcast(Intent, String) Context.sendOrderedBroadcast.  This is a Bundle
  /// holding arbitrary data, whose interpretation is up to the
  /// broadcaster.  Can be set to null.  Calling this method completely
  /// replaces the current map (if any).
  ///
  /// <strong>This method does not work with non-ordered broadcasts such
  /// as those sent with Context\#sendBroadcast(Intent) Context.sendBroadcast</strong>
  ///
  ///@param extras The new extra data map; may be null.
  ///@see \#setResult(int, String, Bundle)
  void setResultExtras(bundle_.Bundle extras) =>
      jniAccessors.callMethodWithArgs(reference, _id_setResultExtras,
          jni.JniType.voidType, [extras.reference]).check();

  static final _id_getResultExtras = jniAccessors.getMethodIDOf(
      _classRef, "getResultExtras", "(Z)Landroid/os/Bundle;");

  /// from: public final android.os.Bundle getResultExtras(boolean makeMap)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the current result extra data, as set by the previous receiver.
  /// Any changes you make to the returned Map will be propagated to the next
  /// receiver.
  ///@param makeMap If true then a new empty Map will be made for you if the
  ///                current Map is null; if false you should be prepared to
  ///                receive a null Map.
  ///@return Map The current extras map.
  bundle_.Bundle getResultExtras(bool makeMap) =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getResultExtras, jni.JniType.objectType, [makeMap]).object);

  static final _id_setResult = jniAccessors.getMethodIDOf(
      _classRef, "setResult", "(ILjava/lang/String;Landroid/os/Bundle;)V");

  /// from: public final void setResult(int code, java.lang.String data, android.os.Bundle extras)
  ///
  /// Change all of the result data returned from this broadcasts; only works
  /// with broadcasts sent through
  /// Context\#sendOrderedBroadcast(Intent, String) Context.sendOrderedBroadcast.  All current result data is replaced
  /// by the value given to this method.
  ///
  /// <strong>This method does not work with non-ordered broadcasts such
  /// as those sent with Context\#sendBroadcast(Intent) Context.sendBroadcast</strong>
  ///
  ///@param code The new result code.  Often uses the
  /// Activity android.app.Activity\#RESULT_CANCELED and
  /// android.app.Activity\#RESULT_OK constants, though the
  /// actual meaning of this value is ultimately up to the broadcaster.
  ///@param data The new result data.  This is an arbitrary
  /// string whose interpretation is up to the broadcaster; may be null.
  ///@param extras The new extra data map.  This is a Bundle
  /// holding arbitrary data, whose interpretation is up to the
  /// broadcaster.  Can be set to null.  This completely
  /// replaces the current map (if any).
  void setResult(int code, jni.JniString data, bundle_.Bundle extras) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setResult,
          jni.JniType.voidType,
          [code, data.reference, extras.reference]).check();

  static final _id_getAbortBroadcast =
      jniAccessors.getMethodIDOf(_classRef, "getAbortBroadcast", "()Z");

  /// from: public final boolean getAbortBroadcast()
  ///
  /// Returns the flag indicating whether or not this receiver should
  /// abort the current broadcast.
  ///@return True if the broadcast should be aborted.
  bool getAbortBroadcast() => jniAccessors.callMethodWithArgs(
      reference, _id_getAbortBroadcast, jni.JniType.booleanType, []).boolean;

  static final _id_abortBroadcast =
      jniAccessors.getMethodIDOf(_classRef, "abortBroadcast", "()V");

  /// from: public final void abortBroadcast()
  ///
  /// Sets the flag indicating that this receiver should abort the
  /// current broadcast; only works with broadcasts sent through
  /// Context\#sendOrderedBroadcast(Intent, String) Context.sendOrderedBroadcast.  This will prevent
  /// any other broadcast receivers from receiving the broadcast. It will still
  /// call \#onReceive of the BroadcastReceiver that the caller of
  /// Context\#sendOrderedBroadcast(Intent, String) Context.sendOrderedBroadcast passed in.
  ///
  /// <strong>This method does not work with non-ordered broadcasts such
  /// as those sent with Context\#sendBroadcast(Intent) Context.sendBroadcast</strong>
  ///
  void abortBroadcast() => jniAccessors.callMethodWithArgs(
      reference, _id_abortBroadcast, jni.JniType.voidType, []).check();

  static final _id_clearAbortBroadcast =
      jniAccessors.getMethodIDOf(_classRef, "clearAbortBroadcast", "()V");

  /// from: public final void clearAbortBroadcast()
  ///
  /// Clears the flag indicating that this receiver should abort the current
  /// broadcast.
  void clearAbortBroadcast() => jniAccessors.callMethodWithArgs(
      reference, _id_clearAbortBroadcast, jni.JniType.voidType, []).check();

  static final _id_isOrderedBroadcast =
      jniAccessors.getMethodIDOf(_classRef, "isOrderedBroadcast", "()Z");

  /// from: public final boolean isOrderedBroadcast()
  ///
  /// Returns true if the receiver is currently processing an ordered
  /// broadcast.
  bool isOrderedBroadcast() => jniAccessors.callMethodWithArgs(
      reference, _id_isOrderedBroadcast, jni.JniType.booleanType, []).boolean;

  static final _id_isInitialStickyBroadcast =
      jniAccessors.getMethodIDOf(_classRef, "isInitialStickyBroadcast", "()Z");

  /// from: public final boolean isInitialStickyBroadcast()
  ///
  /// Returns true if the receiver is currently processing the initial
  /// value of a sticky broadcast -- that is, the value that was last
  /// broadcast and is currently held in the sticky cache, so this is
  /// not directly the result of a broadcast right now.
  bool isInitialStickyBroadcast() => jniAccessors.callMethodWithArgs(reference,
      _id_isInitialStickyBroadcast, jni.JniType.booleanType, []).boolean;

  static final _id_setOrderedHint =
      jniAccessors.getMethodIDOf(_classRef, "setOrderedHint", "(Z)V");

  /// from: public final void setOrderedHint(boolean isOrdered)
  ///
  /// For internal use, sets the hint about whether this BroadcastReceiver is
  /// running in ordered mode.
  void setOrderedHint(bool isOrdered) => jniAccessors.callMethodWithArgs(
      reference, _id_setOrderedHint, jni.JniType.voidType, [isOrdered]).check();

  static final _id_setDebugUnregister =
      jniAccessors.getMethodIDOf(_classRef, "setDebugUnregister", "(Z)V");

  /// from: public final void setDebugUnregister(boolean debug)
  ///
  /// Control inclusion of debugging help for mismatched
  /// calls to Context\#registerReceiver(BroadcastReceiver, IntentFilter) Context.registerReceiver().
  /// If called with true, before given to registerReceiver(), then the
  /// callstack of the following Context\#unregisterReceiver(BroadcastReceiver) Context.unregisterReceiver() call is retained, to be printed if a later
  /// incorrect unregister call is made.  Note that doing this requires retaining
  /// information about the BroadcastReceiver for the lifetime of the app,
  /// resulting in a leak -- this should only be used for debugging.
  void setDebugUnregister(bool debug) => jniAccessors.callMethodWithArgs(
      reference, _id_setDebugUnregister, jni.JniType.voidType, [debug]).check();

  static final _id_getDebugUnregister =
      jniAccessors.getMethodIDOf(_classRef, "getDebugUnregister", "()Z");

  /// from: public final boolean getDebugUnregister()
  ///
  /// Return the last value given to \#setDebugUnregister.
  bool getDebugUnregister() => jniAccessors.callMethodWithArgs(
      reference, _id_getDebugUnregister, jni.JniType.booleanType, []).boolean;
}

/// from: android.content.BroadcastReceiver$PendingResult
///
/// State for a result that is pending for a broadcast receiver.  Returned
/// by BroadcastReceiver\#goAsync() goAsync()
/// while in BroadcastReceiver\#onReceive BroadcastReceiver.onReceive().
/// This allows you to return from onReceive() without having the broadcast
/// terminate; you must call \#finish() once you are done with the
/// broadcast.  This allows you to process the broadcast off of the main
/// thread of your app.
///
/// Note on threading: the state inside of this class is not itself
/// thread-safe, however you can use it from any thread if you properly
/// sure that you do not have races.  Typically this means you will hand
/// the entire object to another thread, which will be solely responsible
/// for setting any results and finally calling \#finish().
class BroadcastReceiver_PendingResult extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/content/BroadcastReceiver\$PendingResult");
  BroadcastReceiver_PendingResult.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_setResultCode =
      jniAccessors.getMethodIDOf(_classRef, "setResultCode", "(I)V");

  /// from: public final void setResultCode(int code)
  ///
  /// Version of BroadcastReceiver\#setResultCode(int) BroadcastReceiver.setResultCode(int) for
  /// asynchronous broadcast handling.
  void setResultCode(int code) => jniAccessors.callMethodWithArgs(
      reference, _id_setResultCode, jni.JniType.voidType, [code]).check();

  static final _id_getResultCode =
      jniAccessors.getMethodIDOf(_classRef, "getResultCode", "()I");

  /// from: public final int getResultCode()
  ///
  /// Version of BroadcastReceiver\#getResultCode() BroadcastReceiver.getResultCode() for
  /// asynchronous broadcast handling.
  int getResultCode() => jniAccessors.callMethodWithArgs(
      reference, _id_getResultCode, jni.JniType.intType, []).integer;

  static final _id_setResultData = jniAccessors.getMethodIDOf(
      _classRef, "setResultData", "(Ljava/lang/String;)V");

  /// from: public final void setResultData(java.lang.String data)
  ///
  /// Version of BroadcastReceiver\#setResultData(String) BroadcastReceiver.setResultData(String) for
  /// asynchronous broadcast handling.
  void setResultData(jni.JniString data) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setResultData,
      jni.JniType.voidType,
      [data.reference]).check();

  static final _id_getResultData = jniAccessors.getMethodIDOf(
      _classRef, "getResultData", "()Ljava/lang/String;");

  /// from: public final java.lang.String getResultData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Version of BroadcastReceiver\#getResultData() BroadcastReceiver.getResultData() for
  /// asynchronous broadcast handling.
  jni.JniString getResultData() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getResultData, jni.JniType.objectType, []).object);

  static final _id_setResultExtras = jniAccessors.getMethodIDOf(
      _classRef, "setResultExtras", "(Landroid/os/Bundle;)V");

  /// from: public final void setResultExtras(android.os.Bundle extras)
  ///
  /// Version of BroadcastReceiver\#setResultExtras(Bundle) BroadcastReceiver.setResultExtras(Bundle) for
  /// asynchronous broadcast handling.
  void setResultExtras(bundle_.Bundle extras) =>
      jniAccessors.callMethodWithArgs(reference, _id_setResultExtras,
          jni.JniType.voidType, [extras.reference]).check();

  static final _id_getResultExtras = jniAccessors.getMethodIDOf(
      _classRef, "getResultExtras", "(Z)Landroid/os/Bundle;");

  /// from: public final android.os.Bundle getResultExtras(boolean makeMap)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Version of BroadcastReceiver\#getResultExtras(boolean) BroadcastReceiver.getResultExtras(boolean) for
  /// asynchronous broadcast handling.
  bundle_.Bundle getResultExtras(bool makeMap) =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getResultExtras, jni.JniType.objectType, [makeMap]).object);

  static final _id_setResult = jniAccessors.getMethodIDOf(
      _classRef, "setResult", "(ILjava/lang/String;Landroid/os/Bundle;)V");

  /// from: public final void setResult(int code, java.lang.String data, android.os.Bundle extras)
  ///
  /// Version of BroadcastReceiver\#setResult(int, String, Bundle) BroadcastReceiver.setResult(int, String, Bundle) for
  /// asynchronous broadcast handling.
  void setResult(int code, jni.JniString data, bundle_.Bundle extras) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setResult,
          jni.JniType.voidType,
          [code, data.reference, extras.reference]).check();

  static final _id_getAbortBroadcast =
      jniAccessors.getMethodIDOf(_classRef, "getAbortBroadcast", "()Z");

  /// from: public final boolean getAbortBroadcast()
  ///
  /// Version of BroadcastReceiver\#getAbortBroadcast() BroadcastReceiver.getAbortBroadcast() for
  /// asynchronous broadcast handling.
  bool getAbortBroadcast() => jniAccessors.callMethodWithArgs(
      reference, _id_getAbortBroadcast, jni.JniType.booleanType, []).boolean;

  static final _id_abortBroadcast =
      jniAccessors.getMethodIDOf(_classRef, "abortBroadcast", "()V");

  /// from: public final void abortBroadcast()
  ///
  /// Version of BroadcastReceiver\#abortBroadcast() BroadcastReceiver.abortBroadcast() for
  /// asynchronous broadcast handling.
  void abortBroadcast() => jniAccessors.callMethodWithArgs(
      reference, _id_abortBroadcast, jni.JniType.voidType, []).check();

  static final _id_clearAbortBroadcast =
      jniAccessors.getMethodIDOf(_classRef, "clearAbortBroadcast", "()V");

  /// from: public final void clearAbortBroadcast()
  ///
  /// Version of BroadcastReceiver\#clearAbortBroadcast() BroadcastReceiver.clearAbortBroadcast() for
  /// asynchronous broadcast handling.
  void clearAbortBroadcast() => jniAccessors.callMethodWithArgs(
      reference, _id_clearAbortBroadcast, jni.JniType.voidType, []).check();

  static final _id_finish =
      jniAccessors.getMethodIDOf(_classRef, "finish", "()V");

  /// from: public final void finish()
  ///
  /// Finish the broadcast.  The current result will be sent and the
  /// next broadcast will proceed.
  void finish() => jniAccessors.callMethodWithArgs(
      reference, _id_finish, jni.JniType.voidType, []).check();
}
