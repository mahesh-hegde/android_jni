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

import "Handler.dart" as handler_;

import "IBinder.dart" as ibinder_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.TokenWatcher
///
/// A TokenWatcher watches a collection of IBinders. IBinders are added
/// to the collection by calling \#acquire, and removed by calling \#release. IBinders are also implicitly removed when they become weakly
/// reachable. Each IBinder may be added at most once.
///
/// The \#acquired method is invoked by posting to the specified handler
/// whenever the size of the watched collection becomes nonzero.  The \#released method is invoked on the specified handler whenever the size of
/// the watched collection becomes zero.
class TokenWatcher extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/TokenWatcher");
  TokenWatcher.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/os/Handler;Ljava/lang/String;)V");

  /// from: public void <init>(android.os.Handler h, java.lang.String tag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct the TokenWatcher
  ///@param h A handler to call \#acquired and \#released
  /// on.  If you don't care, just call it like this, although your thread
  /// will have to be a Looper thread.
  /// <code>new TokenWatcher(new Handler())</code>
  ///@param tag A debugging tag for this TokenWatcher
  TokenWatcher(handler_.Handler h, jni.JniString tag)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [h.reference, tag.reference]).object);

  static final _id_acquired =
      jniAccessors.getMethodIDOf(_classRef, "acquired", "()V");

  /// from: public abstract void acquired()
  ///
  /// Called when the number of active tokens goes from 0 to 1.
  void acquired() => jniAccessors.callMethodWithArgs(
      reference, _id_acquired, jni.JniType.voidType, []).check();

  static final _id_released =
      jniAccessors.getMethodIDOf(_classRef, "released", "()V");

  /// from: public abstract void released()
  ///
  /// Called when the number of active tokens goes from 1 to 0.
  void released() => jniAccessors.callMethodWithArgs(
      reference, _id_released, jni.JniType.voidType, []).check();

  static final _id_acquire = jniAccessors.getMethodIDOf(
      _classRef, "acquire", "(Landroid/os/IBinder;Ljava/lang/String;)V");

  /// from: public void acquire(android.os.IBinder token, java.lang.String tag)
  ///
  /// Record that this token has been acquired.  When acquire is called, and
  /// the current count is 0, the acquired method is called on the given
  /// handler.
  ///
  /// Note that the same {@code token} can only be acquired once. If this
  /// {@code token} has already been acquired, no action is taken. The first
  /// subsequent call to \#release will release this {@code token}
  /// immediately.
  ///@param token An IBinder object.
  ///@param tag A string used by the \#dump method for debugging,
  ///              to see who has references.
  void acquire(ibinder_.IBinder token, jni.JniString tag) =>
      jniAccessors.callMethodWithArgs(reference, _id_acquire,
          jni.JniType.voidType, [token.reference, tag.reference]).check();

  static final _id_cleanup = jniAccessors.getMethodIDOf(
      _classRef, "cleanup", "(Landroid/os/IBinder;Z)V");

  /// from: public void cleanup(android.os.IBinder token, boolean unlink)
  void cleanup(ibinder_.IBinder token, bool unlink) =>
      jniAccessors.callMethodWithArgs(reference, _id_cleanup,
          jni.JniType.voidType, [token.reference, unlink]).check();

  static final _id_release = jniAccessors.getMethodIDOf(
      _classRef, "release", "(Landroid/os/IBinder;)V");

  /// from: public void release(android.os.IBinder token)
  void release(ibinder_.IBinder token) => jniAccessors.callMethodWithArgs(
      reference, _id_release, jni.JniType.voidType, [token.reference]).check();

  static final _id_isAcquired =
      jniAccessors.getMethodIDOf(_classRef, "isAcquired", "()Z");

  /// from: public boolean isAcquired()
  bool isAcquired() => jniAccessors.callMethodWithArgs(
      reference, _id_isAcquired, jni.JniType.booleanType, []).boolean;

  static final _id_dump = jniAccessors.getMethodIDOf(_classRef, "dump", "()V");

  /// from: public void dump()
  void dump() => jniAccessors.callMethodWithArgs(
      reference, _id_dump, jni.JniType.voidType, []).check();

  static final _id_dump1 =
      jniAccessors.getMethodIDOf(_classRef, "dump", "(Ljava/io/PrintWriter;)V");

  /// from: public void dump(java.io.PrintWriter pw)
  void dump1(jni.JniObject pw) => jniAccessors.callMethodWithArgs(
      reference, _id_dump1, jni.JniType.voidType, [pw.reference]).check();
}