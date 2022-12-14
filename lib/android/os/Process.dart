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

import "UserHandle.dart" as userhandle_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.Process
///
/// Tools for managing OS processes.
class Process extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/Process");
  Process.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int FIRST_APPLICATION_UID
  ///
  /// Defines the start of a range of UIDs (and GIDs), going from this
  /// number to \#LAST_APPLICATION_UID that are reserved for assigning
  /// to applications.
  static const FIRST_APPLICATION_UID = 10000;

  /// from: static public final int LAST_APPLICATION_UID
  ///
  /// Last of application-specific UIDs starting at
  /// \#FIRST_APPLICATION_UID.
  static const LAST_APPLICATION_UID = 19999;

  /// from: static public final int PHONE_UID
  ///
  /// Defines the UID/GID under which the telephony code runs.
  static const PHONE_UID = 1001;

  /// from: static public final int SIGNAL_KILL
  static const SIGNAL_KILL = 9;

  /// from: static public final int SIGNAL_QUIT
  static const SIGNAL_QUIT = 3;

  /// from: static public final int SIGNAL_USR1
  static const SIGNAL_USR1 = 10;

  /// from: static public final int SYSTEM_UID
  ///
  /// Defines the UID/GID under which system code runs.
  static const SYSTEM_UID = 1000;

  /// from: static public final int THREAD_PRIORITY_AUDIO
  ///
  /// Standard priority of audio threads.  Applications can not normally
  /// change to this priority.
  /// Use with \#setThreadPriority(int) and
  /// \#setThreadPriority(int, int), __not__ with the normal
  /// java.lang.Thread class.
  static const THREAD_PRIORITY_AUDIO = -16;

  /// from: static public final int THREAD_PRIORITY_BACKGROUND
  ///
  /// Standard priority background threads.  This gives your thread a slightly
  /// lower than normal priority, so that it will have less chance of impacting
  /// the responsiveness of the user interface.
  /// Use with \#setThreadPriority(int) and
  /// \#setThreadPriority(int, int), __not__ with the normal
  /// java.lang.Thread class.
  static const THREAD_PRIORITY_BACKGROUND = 10;

  /// from: static public final int THREAD_PRIORITY_DEFAULT
  ///
  /// Standard priority of application threads.
  /// Use with \#setThreadPriority(int) and
  /// \#setThreadPriority(int, int), __not__ with the normal
  /// java.lang.Thread class.
  static const THREAD_PRIORITY_DEFAULT = 0;

  /// from: static public final int THREAD_PRIORITY_DISPLAY
  ///
  /// Standard priority of system display threads, involved in updating
  /// the user interface.  Applications can not
  /// normally change to this priority.
  /// Use with \#setThreadPriority(int) and
  /// \#setThreadPriority(int, int), __not__ with the normal
  /// java.lang.Thread class.
  static const THREAD_PRIORITY_DISPLAY = -4;

  /// from: static public final int THREAD_PRIORITY_FOREGROUND
  ///
  /// Standard priority of threads that are currently running a user interface
  /// that the user is interacting with.  Applications can not normally
  /// change to this priority; the system will automatically adjust your
  /// application threads as the user moves through the UI.
  /// Use with \#setThreadPriority(int) and
  /// \#setThreadPriority(int, int), __not__ with the normal
  /// java.lang.Thread class.
  static const THREAD_PRIORITY_FOREGROUND = -2;

  /// from: static public final int THREAD_PRIORITY_LESS_FAVORABLE
  ///
  /// Minimum increment to make a priority less favorable.
  static const THREAD_PRIORITY_LESS_FAVORABLE = 1;

  /// from: static public final int THREAD_PRIORITY_LOWEST
  ///
  /// Lowest available thread priority.  Only for those who really, really
  /// don't want to run if anything else is happening.
  /// Use with \#setThreadPriority(int) and
  /// \#setThreadPriority(int, int), __not__ with the normal
  /// java.lang.Thread class.
  static const THREAD_PRIORITY_LOWEST = 19;

  /// from: static public final int THREAD_PRIORITY_MORE_FAVORABLE
  ///
  /// Minimum increment to make a priority more favorable.
  static const THREAD_PRIORITY_MORE_FAVORABLE = -1;

  /// from: static public final int THREAD_PRIORITY_URGENT_AUDIO
  ///
  /// Standard priority of the most important audio threads.
  /// Applications can not normally change to this priority.
  /// Use with \#setThreadPriority(int) and
  /// \#setThreadPriority(int, int), __not__ with the normal
  /// java.lang.Thread class.
  static const THREAD_PRIORITY_URGENT_AUDIO = -19;

  /// from: static public final int THREAD_PRIORITY_URGENT_DISPLAY
  ///
  /// Standard priority of the most important display threads, for compositing
  /// the screen and retrieving input events.  Applications can not normally
  /// change to this priority.
  /// Use with \#setThreadPriority(int) and
  /// \#setThreadPriority(int, int), __not__ with the normal
  /// java.lang.Thread class.
  static const THREAD_PRIORITY_URGENT_DISPLAY = -8;

  /// from: static public final int THREAD_PRIORITY_VIDEO
  ///
  /// Standard priority of video threads.  Applications can not normally
  /// change to this priority.
  /// Use with \#setThreadPriority(int) and
  /// \#setThreadPriority(int, int), __not__ with the normal
  /// java.lang.Thread class.
  static const THREAD_PRIORITY_VIDEO = -10;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Process()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getElapsedCpuTime =
      jniAccessors.getStaticMethodIDOf(_classRef, "getElapsedCpuTime", "()J");

  /// from: static public native final long getElapsedCpuTime()
  ///
  /// Returns elapsed milliseconds of the time this process has run.
  ///@return Returns the number of milliseconds this process has return.
  static int getElapsedCpuTime() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getElapsedCpuTime, jni.JniType.longType, []).long;

  static final _id_getStartElapsedRealtime = jniAccessors.getStaticMethodIDOf(
      _classRef, "getStartElapsedRealtime", "()J");

  /// from: static public final long getStartElapsedRealtime()
  ///
  /// Return the SystemClock\#elapsedRealtime() at which this process was started.
  static int getStartElapsedRealtime() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getStartElapsedRealtime, jni.JniType.longType, []).long;

  static final _id_getStartUptimeMillis = jniAccessors.getStaticMethodIDOf(
      _classRef, "getStartUptimeMillis", "()J");

  /// from: static public final long getStartUptimeMillis()
  ///
  /// Return the SystemClock\#uptimeMillis() at which this process was started.
  static int getStartUptimeMillis() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getStartUptimeMillis, jni.JniType.longType, []).long;

  static final _id_is64Bit =
      jniAccessors.getStaticMethodIDOf(_classRef, "is64Bit", "()Z");

  /// from: static public final boolean is64Bit()
  ///
  /// Returns true if the current process is a 64-bit runtime.
  static bool is64Bit() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_is64Bit, jni.JniType.booleanType, []).boolean;

  static final _id_myPid =
      jniAccessors.getStaticMethodIDOf(_classRef, "myPid", "()I");

  /// from: static public final int myPid()
  ///
  /// Returns the identifier of this process, which can be used with
  /// \#killProcess and \#sendSignal.
  static int myPid() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_myPid, jni.JniType.intType, []).integer;

  static final _id_myTid =
      jniAccessors.getStaticMethodIDOf(_classRef, "myTid", "()I");

  /// from: static public final int myTid()
  ///
  /// Returns the identifier of the calling thread, which be used with
  /// \#setThreadPriority(int, int).
  static int myTid() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_myTid, jni.JniType.intType, []).integer;

  static final _id_myUid =
      jniAccessors.getStaticMethodIDOf(_classRef, "myUid", "()I");

  /// from: static public final int myUid()
  ///
  /// Returns the identifier of this process's uid.  This is the kernel uid
  /// that the process is running under, which is the identity of its
  /// app-specific sandbox.  It is different from \#myUserHandle in that
  /// a uid identifies a specific app sandbox in a specific user.
  static int myUid() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_myUid, jni.JniType.intType, []).integer;

  static final _id_myUserHandle = jniAccessors.getStaticMethodIDOf(
      _classRef, "myUserHandle", "()Landroid/os/UserHandle;");

  /// from: static public android.os.UserHandle myUserHandle()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns this process's user handle.  This is the
  /// user the process is running under.  It is distinct from
  /// \#myUid() in that a particular user will have multiple
  /// distinct apps running under it each with their own uid.
  static userhandle_.UserHandle myUserHandle() =>
      userhandle_.UserHandle.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_myUserHandle, jni.JniType.objectType, []).object);

  static final _id_isApplicationUid =
      jniAccessors.getStaticMethodIDOf(_classRef, "isApplicationUid", "(I)Z");

  /// from: static public boolean isApplicationUid(int uid)
  ///
  /// Returns whether the given uid belongs to an application.
  ///@param uid A kernel uid.
  ///@return Whether the uid corresponds to an application sandbox running in
  ///     a specific user.
  static bool isApplicationUid(int uid) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isApplicationUid,
          jni.JniType.booleanType, [uid]).boolean;

  static final _id_isIsolated =
      jniAccessors.getStaticMethodIDOf(_classRef, "isIsolated", "()Z");

  /// from: static public final boolean isIsolated()
  ///
  /// Returns whether the current process is in an isolated sandbox.
  static bool isIsolated() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_isIsolated, jni.JniType.booleanType, []).boolean;

  static final _id_getUidForName = jniAccessors.getStaticMethodIDOf(
      _classRef, "getUidForName", "(Ljava/lang/String;)I");

  /// from: static public native final int getUidForName(java.lang.String name)
  ///
  /// Returns the UID assigned to a particular user name, or -1 if there is
  /// none.  If the given string consists of only numbers, it is converted
  /// directly to a uid.
  static int getUidForName(jni.JniString name) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getUidForName,
          jni.JniType.intType, [name.reference]).integer;

  static final _id_getGidForName = jniAccessors.getStaticMethodIDOf(
      _classRef, "getGidForName", "(Ljava/lang/String;)I");

  /// from: static public native final int getGidForName(java.lang.String name)
  ///
  /// Returns the GID assigned to a particular user name, or -1 if there is
  /// none.  If the given string consists of only numbers, it is converted
  /// directly to a gid.
  static int getGidForName(jni.JniString name) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getGidForName,
          jni.JniType.intType, [name.reference]).integer;

  static final _id_setThreadPriority =
      jniAccessors.getStaticMethodIDOf(_classRef, "setThreadPriority", "(II)V");

  /// from: static public native final void setThreadPriority(int tid, int priority)
  ///
  /// Set the priority of a thread, based on Linux priorities.
  ///@param tid The identifier of the thread/process to change.
  ///@param priority A Linux priority level, from -20 for highest scheduling
  /// priority to 19 for lowest scheduling priority.
  ///@throws IllegalArgumentException Throws IllegalArgumentException if
  /// <var>tid</var> does not exist.
  ///@throws SecurityException Throws SecurityException if your process does
  /// not have permission to modify the given thread, or to use the given
  /// priority.
  static void setThreadPriority(int tid, int priority) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_setThreadPriority,
          jni.JniType.voidType, [tid, priority]).check();

  static final _id_getExclusiveCores =
      jniAccessors.getStaticMethodIDOf(_classRef, "getExclusiveCores", "()[I");

  /// from: static public native final int[] getExclusiveCores()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// On some devices, the foreground process may have one or more CPU
  /// cores exclusively reserved for it. This method can be used to
  /// retrieve which cores that are (if any), so the calling process
  /// can then use sched_setaffinity() to lock a thread to these cores.
  /// Note that the calling process must currently be running in the
  /// foreground for this method to return any cores.
  ///
  /// The CPU core(s) exclusively reserved for the foreground process will
  /// stay reserved for as long as the process stays in the foreground.
  ///
  /// As soon as a process leaves the foreground, those CPU cores will
  /// no longer be reserved for it, and will most likely be reserved for
  /// the new foreground process. It's not necessary to change the affinity
  /// of your process when it leaves the foreground (if you had previously
  /// set it to use a reserved core); the OS will automatically take care
  /// of resetting the affinity at that point.
  ///@return an array of integers, indicating the CPU cores exclusively
  /// reserved for this process. The array will have length zero if no
  /// CPU cores are exclusively reserved for this process at this point
  /// in time.
  static jni.JniObject getExclusiveCores() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getExclusiveCores, jni.JniType.objectType, []).object);

  static final _id_setThreadPriority1 =
      jniAccessors.getStaticMethodIDOf(_classRef, "setThreadPriority", "(I)V");

  /// from: static public native final void setThreadPriority(int priority)
  ///
  /// Set the priority of the calling thread, based on Linux priorities.  See
  /// \#setThreadPriority(int, int) for more information.
  ///@param priority A Linux priority level, from -20 for highest scheduling
  /// priority to 19 for lowest scheduling priority.
  ///@throws IllegalArgumentException Throws IllegalArgumentException if
  /// <var>tid</var> does not exist.
  ///@throws SecurityException Throws SecurityException if your process does
  /// not have permission to modify the given thread, or to use the given
  /// priority.
  ///@see \#setThreadPriority(int, int)
  static void setThreadPriority1(int priority) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_setThreadPriority1,
          jni.JniType.voidType, [priority]).check();

  static final _id_getThreadPriority =
      jniAccessors.getStaticMethodIDOf(_classRef, "getThreadPriority", "(I)I");

  /// from: static public native final int getThreadPriority(int tid)
  ///
  /// Return the current priority of a thread, based on Linux priorities.
  ///@param tid The identifier of the thread/process. If tid equals zero, the priority of the
  /// calling process/thread will be returned.
  ///@return Returns the current priority, as a Linux priority level,
  /// from -20 for highest scheduling priority to 19 for lowest scheduling
  /// priority.
  ///@throws IllegalArgumentException Throws IllegalArgumentException if
  /// <var>tid</var> does not exist.
  static int getThreadPriority(int tid) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getThreadPriority, jni.JniType.intType, [tid]).integer;

  static final _id_supportsProcesses =
      jniAccessors.getStaticMethodIDOf(_classRef, "supportsProcesses", "()Z");

  /// from: static public final boolean supportsProcesses()
  ///
  /// Determine whether the current environment supports multiple processes.
  ///@return Returns true if the system can run in multiple processes, else
  /// false if everything is running in a single process.
  ///@deprecated This method always returns true.  Do not use.
  static bool supportsProcesses() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_supportsProcesses, jni.JniType.booleanType, []).boolean;

  static final _id_killProcess =
      jniAccessors.getStaticMethodIDOf(_classRef, "killProcess", "(I)V");

  /// from: static public final void killProcess(int pid)
  ///
  /// Kill the process with the given PID.
  /// Note that, though this API allows us to request to
  /// kill any process based on its PID, the kernel will
  /// still impose standard restrictions on which PIDs you
  /// are actually able to kill.  Typically this means only
  /// the process running the caller's packages/application
  /// and any additional processes created by that app; packages
  /// sharing a common UID will also be able to kill each
  /// other's processes.
  static void killProcess(int pid) => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_killProcess, jni.JniType.voidType, [pid]).check();

  static final _id_sendSignal =
      jniAccessors.getStaticMethodIDOf(_classRef, "sendSignal", "(II)V");

  /// from: static public native final void sendSignal(int pid, int signal)
  ///
  /// Send a signal to the given process.
  ///@param pid The pid of the target process.
  ///@param signal The signal to send.
  static void sendSignal(int pid, int signal) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_sendSignal,
          jni.JniType.voidType, [pid, signal]).check();
}
