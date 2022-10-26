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

import "MessageQueue.dart" as messagequeue_;

import "Message.dart" as message_;

import "Handler.dart" as handler_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.TestLooperManager
///
/// Blocks a looper from executing any messages, and allows the holder of this object
/// to control when and which messages get executed until it is released.
///
/// A TestLooperManager should be acquired using
/// android.app.Instrumentation\#acquireLooperManager. Until \#release() is called,
/// the Looper thread will not execute any messages except when \#execute(Message) is called.
/// The test code may use \#next() to acquire messages that have been queued to this
/// Looper/MessageQueue and then \#execute to run any that desires.
class TestLooperManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/TestLooperManager");
  TestLooperManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Looper;)V");

  /// from: void <init>(android.os.Looper looper)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  TestLooperManager(looper_.Looper looper)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [looper.reference]).object);

  static final _id_getMessageQueue = jniAccessors.getMethodIDOf(
      _classRef, "getMessageQueue", "()Landroid/os/MessageQueue;");

  /// from: public android.os.MessageQueue getMessageQueue()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the MessageQueue this object is wrapping.
  messagequeue_.MessageQueue getMessageQueue() =>
      messagequeue_.MessageQueue.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMessageQueue, jni.JniType.objectType, []).object);

  static final _id_next =
      jniAccessors.getMethodIDOf(_classRef, "next", "()Landroid/os/Message;");

  /// from: public android.os.Message next()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the next message that should be executed by this queue, may block
  /// if no messages are ready.
  ///
  /// Callers should always call \#recycle(Message) on the message when all
  /// interactions with it have completed.
  message_.Message next() =>
      message_.Message.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_next, jni.JniType.objectType, []).object);

  static final _id_release =
      jniAccessors.getMethodIDOf(_classRef, "release", "()V");

  /// from: public void release()
  ///
  /// Releases the looper to continue standard looping and processing of messages,
  /// no further interactions with TestLooperManager will be allowed after
  /// release() has been called.
  void release() => jniAccessors.callMethodWithArgs(
      reference, _id_release, jni.JniType.voidType, []).check();

  static final _id_execute = jniAccessors.getMethodIDOf(
      _classRef, "execute", "(Landroid/os/Message;)V");

  /// from: public void execute(android.os.Message message)
  ///
  /// Executes the given message on the Looper thread this wrapper is
  /// attached to.
  ///
  /// Execution will happen on the Looper's thread (whether it is the current thread
  /// or not), but all RuntimeExceptions encountered while executing the message will
  /// be thrown on the calling thread.
  void execute(message_.Message message) => jniAccessors.callMethodWithArgs(
      reference,
      _id_execute,
      jni.JniType.voidType,
      [message.reference]).check();

  static final _id_recycle = jniAccessors.getMethodIDOf(
      _classRef, "recycle", "(Landroid/os/Message;)V");

  /// from: public void recycle(android.os.Message msg)
  ///
  /// Called to indicate that a Message returned by \#next() has been parsed
  /// and should be recycled.
  void recycle(message_.Message msg) => jniAccessors.callMethodWithArgs(
      reference, _id_recycle, jni.JniType.voidType, [msg.reference]).check();

  static final _id_hasMessages = jniAccessors.getMethodIDOf(
      _classRef, "hasMessages", "(Landroid/os/Handler;Ljava/lang/Object;I)Z");

  /// from: public boolean hasMessages(android.os.Handler h, java.lang.Object object, int what)
  ///
  /// Returns true if there are any queued messages that match the parameters.
  ///@param h the value of Message\#getTarget()
  ///@param what the value of Message\#what
  ///@param object the value of Message\#obj, null for any
  bool hasMessages(handler_.Handler h, jni.JniObject object, int what) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_hasMessages,
          jni.JniType.booleanType,
          [h.reference, object.reference, what]).boolean;

  static final _id_hasMessages1 = jniAccessors.getMethodIDOf(
      _classRef,
      "hasMessages",
      "(Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/Runnable;)Z");

  /// from: public boolean hasMessages(android.os.Handler h, java.lang.Object object, java.lang.Runnable r)
  ///
  /// Returns true if there are any queued messages that match the parameters.
  ///@param h the value of Message\#getTarget()
  ///@param r the value of Message\#getCallback()
  ///@param object the value of Message\#obj, null for any
  bool hasMessages1(
          handler_.Handler h, jni.JniObject object, jni.JniObject r) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_hasMessages1,
          jni.JniType.booleanType,
          [h.reference, object.reference, r.reference]).boolean;
}