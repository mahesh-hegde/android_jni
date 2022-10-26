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

import "Looper.dart" as looper_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.HandlerThread
///
/// Handy class for starting a new thread that has a looper. The looper can then be
/// used to create handler classes. Note that start() must still be called.
class HandlerThread extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/HandlerThread");
  HandlerThread.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  HandlerThread(jni.JniString name)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [name.reference]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;I)V");

  /// from: public void <init>(java.lang.String name, int priority)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a HandlerThread.
  ///@param name
  ///@param priority The priority to run the thread at. The value supplied must be from
  /// android.os.Process and not from java.lang.Thread.
  HandlerThread.ctor1(jni.JniString name, int priority)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [name.reference, priority]).object);

  static final _id_onLooperPrepared =
      jniAccessors.getMethodIDOf(_classRef, "onLooperPrepared", "()V");

  /// from: protected void onLooperPrepared()
  ///
  /// Call back method that can be explicitly overridden if needed to execute some
  /// setup before Looper loops.
  void onLooperPrepared() => jniAccessors.callMethodWithArgs(
      reference, _id_onLooperPrepared, jni.JniType.voidType, []).check();

  static final _id_run = jniAccessors.getMethodIDOf(_classRef, "run", "()V");

  /// from: public void run()
  void run() => jniAccessors
      .callMethodWithArgs(reference, _id_run, jni.JniType.voidType, []).check();

  static final _id_getLooper = jniAccessors.getMethodIDOf(
      _classRef, "getLooper", "()Landroid/os/Looper;");

  /// from: public android.os.Looper getLooper()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This method returns the Looper associated with this thread. If this thread not been started
  /// or for any reason isAlive() returns false, this method will return null. If this thread
  /// has been started, this method will block until the looper has been initialized.
  ///@return The looper.
  looper_.Looper getLooper() =>
      looper_.Looper.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLooper, jni.JniType.objectType, []).object);

  static final _id_quit = jniAccessors.getMethodIDOf(_classRef, "quit", "()Z");

  /// from: public boolean quit()
  ///
  /// Quits the handler thread's looper.
  ///
  /// Causes the handler thread's looper to terminate without processing any
  /// more messages in the message queue.
  ///
  ///
  /// Any attempt to post messages to the queue after the looper is asked to quit will fail.
  /// For example, the Handler\#sendMessage(Message) method will return false.
  ///
  ///<p class="note">
  /// Using this method may be unsafe because some messages may not be delivered
  /// before the looper terminates.  Consider using \#quitSafely instead to ensure
  /// that all pending work is completed in an orderly manner.
  ///
  ///
  ///@return True if the looper looper has been asked to quit or false if the
  /// thread had not yet started running.
  ///@see \#quitSafely
  bool quit() => jniAccessors.callMethodWithArgs(
      reference, _id_quit, jni.JniType.booleanType, []).boolean;

  static final _id_quitSafely =
      jniAccessors.getMethodIDOf(_classRef, "quitSafely", "()Z");

  /// from: public boolean quitSafely()
  ///
  /// Quits the handler thread's looper safely.
  ///
  /// Causes the handler thread's looper to terminate as soon as all remaining messages
  /// in the message queue that are already due to be delivered have been handled.
  /// Pending delayed messages with due times in the future will not be delivered.
  ///
  ///
  /// Any attempt to post messages to the queue after the looper is asked to quit will fail.
  /// For example, the Handler\#sendMessage(Message) method will return false.
  ///
  ///
  /// If the thread has not been started or has finished (that is if
  /// \#getLooper returns null), then false is returned.
  /// Otherwise the looper is asked to quit and true is returned.
  ///
  ///
  ///@return True if the looper looper has been asked to quit or false if the
  /// thread had not yet started running.
  bool quitSafely() => jniAccessors.callMethodWithArgs(
      reference, _id_quitSafely, jni.JniType.booleanType, []).boolean;

  static final _id_getThreadId =
      jniAccessors.getMethodIDOf(_classRef, "getThreadId", "()I");

  /// from: public int getThreadId()
  ///
  /// Returns the identifier of this thread. See Process.myTid().
  int getThreadId() => jniAccessors.callMethodWithArgs(
      reference, _id_getThreadId, jni.JniType.intType, []).integer;
}