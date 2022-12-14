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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.SystemClock
///
/// Core timekeeping facilities.
///
///  Three different clocks are available, and they should not be confused:
///
/// <ul>
///     <li>  System\#currentTimeMillis System.currentTimeMillis()
///     is the standard "wall" clock (time and date) expressing milliseconds
///     since the epoch.  The wall clock can be set by the user or the phone
///     network (see \#setCurrentTimeMillis), so the time may jump
///     backwards or forwards unpredictably.  This clock should only be used
///     when correspondence with real-world dates and times is important, such
///     as in a calendar or alarm clock application.  Interval or elapsed
///     time measurements should use a different clock.  If you are using
///     System.currentTimeMillis(), consider listening to the
///     android.content.Intent\#ACTION_TIME_TICK ACTION_TIME_TICK,
///     android.content.Intent\#ACTION_TIME_CHANGED ACTION_TIME_CHANGED
///     and android.content.Intent\#ACTION_TIMEZONE_CHANGED ACTION_TIMEZONE_CHANGED android.content.Intent Intent
///     broadcasts to find out when the time changes.
///
///     <li>  \#uptimeMillis is counted in milliseconds since the
///     system was booted.  This clock stops when the system enters deep
///     sleep (CPU off, display dark, device waiting for external input),
///     but is not affected by clock scaling, idle, or other power saving
///     mechanisms.  This is the basis for most interval timing
///     such as Thread\#sleep(long) Thread.sleep(millls),
///     Object\#wait(long) Object.wait(millis), and
///     System\#nanoTime System.nanoTime().  This clock is guaranteed
///     to be monotonic, and is suitable for interval timing when the
///     interval does not span device sleep.  Most methods that accept a
///     timestamp value currently expect the \#uptimeMillis clock.
///
///     <li>  \#elapsedRealtime and \#elapsedRealtimeNanos
///     return the time since the system was booted, and include deep sleep.
///     This clock is guaranteed to be monotonic, and continues to tick even
///     when the CPU is in power saving modes, so is the recommend basis
///     for general purpose interval timing.
///
/// </ul>
///
/// There are several mechanisms for controlling the timing of events:
///
/// <ul>
///     <li>  Standard functions like Thread\#sleep(long) Thread.sleep(millis) and Object\#wait(long) Object.wait(millis)
///     are always available.  These functions use the \#uptimeMillis
///     clock; if the device enters sleep, the remainder of the time will be
///     postponed until the device wakes up.  These synchronous functions may
///     be interrupted with Thread\#interrupt Thread.interrupt(), and
///     you must handle InterruptedException.
///
///     <li>  \#sleep SystemClock.sleep(millis) is a utility function
///     very similar to Thread\#sleep(long) Thread.sleep(millis), but it
///     ignores InterruptedException.  Use this function for delays if
///     you do not use Thread\#interrupt Thread.interrupt(), as it will
///     preserve the interrupted state of the thread.
///
///     <li>  The android.os.Handler class can schedule asynchronous
///     callbacks at an absolute or relative time.  Handler objects also use the
///     \#uptimeMillis clock, and require an android.os.Looper event loop (normally present in any GUI application).
///
///     <li>  The android.app.AlarmManager can trigger one-time or
///     recurring events which occur even when the device is in deep sleep
///     or your application is not running.  Events may be scheduled with your
///     choice of java.lang.System\#currentTimeMillis (RTC) or
///     \#elapsedRealtime (ELAPSED_REALTIME), and cause an
///     android.content.Intent broadcast when they occur.
/// </ul>
class SystemClock extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/SystemClock");
  SystemClock.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_sleep =
      jniAccessors.getStaticMethodIDOf(_classRef, "sleep", "(J)V");

  /// from: static public void sleep(long ms)
  ///
  /// Waits a given number of milliseconds (of uptimeMillis) before returning.
  /// Similar to java.lang.Thread\#sleep(long), but does not throw
  /// InterruptedException; Thread\#interrupt() events are
  /// deferred until the next interruptible operation.  Does not return until
  /// at least the specified number of milliseconds has elapsed.
  ///@param ms to sleep before returning, in milliseconds of uptime.
  static void sleep(int ms) => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_sleep, jni.JniType.voidType, [ms]).check();

  static final _id_setCurrentTimeMillis = jniAccessors.getStaticMethodIDOf(
      _classRef, "setCurrentTimeMillis", "(J)Z");

  /// from: static public boolean setCurrentTimeMillis(long millis)
  ///
  /// Sets the current wall time, in milliseconds.  Requires the calling
  /// process to have appropriate permissions.
  ///@return if the clock was successfully set to the specified time.
  static bool setCurrentTimeMillis(int millis) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_setCurrentTimeMillis,
          jni.JniType.booleanType, [millis]).boolean;

  static final _id_uptimeMillis =
      jniAccessors.getStaticMethodIDOf(_classRef, "uptimeMillis", "()J");

  /// from: static public native long uptimeMillis()
  ///
  /// Returns milliseconds since boot, not counting time spent in deep sleep.
  ///@return milliseconds of non-sleep uptime since boot.
  static int uptimeMillis() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_uptimeMillis, jni.JniType.longType, []).long;

  static final _id_elapsedRealtime =
      jniAccessors.getStaticMethodIDOf(_classRef, "elapsedRealtime", "()J");

  /// from: static public native long elapsedRealtime()
  ///
  /// Returns milliseconds since boot, including time spent in sleep.
  ///@return elapsed milliseconds since boot.
  static int elapsedRealtime() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_elapsedRealtime, jni.JniType.longType, []).long;

  static final _id_elapsedRealtimeNanos = jniAccessors.getStaticMethodIDOf(
      _classRef, "elapsedRealtimeNanos", "()J");

  /// from: static public native long elapsedRealtimeNanos()
  ///
  /// Returns nanoseconds since boot, including time spent in sleep.
  ///@return elapsed nanoseconds since boot.
  static int elapsedRealtimeNanos() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_elapsedRealtimeNanos, jni.JniType.longType, []).long;

  static final _id_currentThreadTimeMillis = jniAccessors.getStaticMethodIDOf(
      _classRef, "currentThreadTimeMillis", "()J");

  /// from: static public native long currentThreadTimeMillis()
  ///
  /// Returns milliseconds running in the current thread.
  ///@return elapsed milliseconds in the thread
  static int currentThreadTimeMillis() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_currentThreadTimeMillis, jni.JniType.longType, []).long;
}
