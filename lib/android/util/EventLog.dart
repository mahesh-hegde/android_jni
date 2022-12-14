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

/// from: android.util.EventLog
///
/// Access to the system diagnostic event record.  System diagnostic events are
/// used to record certain system-level events (such as garbage collection,
/// activity manager state, system watchdogs, and other low level activity),
/// which may be automatically collected and analyzed during system development.
///
/// This is __not__ the main "logcat" debugging log (android.util.Log)!
/// These diagnostic events are for system integrators, not application authors.
///
/// Events use integer tag codes corresponding to /system/etc/event-log-tags.
/// They carry a payload of one or more int, long, or String values.  The
/// event-log-tags file defines the payload contents for each type code.
class EventLog extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/util/EventLog");
  EventLog.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_writeEvent =
      jniAccessors.getStaticMethodIDOf(_classRef, "writeEvent", "(II)I");

  /// from: static public native int writeEvent(int tag, int value)
  ///
  /// Record an event log message.
  ///@param tag The event type tag code
  ///@param value A value to log
  ///@return The number of bytes written
  static int writeEvent(int tag, int value) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_writeEvent, jni.JniType.intType, [tag, value]).integer;

  static final _id_writeEvent1 =
      jniAccessors.getStaticMethodIDOf(_classRef, "writeEvent", "(IJ)I");

  /// from: static public native int writeEvent(int tag, long value)
  ///
  /// Record an event log message.
  ///@param tag The event type tag code
  ///@param value A value to log
  ///@return The number of bytes written
  static int writeEvent1(int tag, int value) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_writeEvent1,
          jni.JniType.intType, [tag, value]).integer;

  static final _id_writeEvent2 =
      jniAccessors.getStaticMethodIDOf(_classRef, "writeEvent", "(IF)I");

  /// from: static public native int writeEvent(int tag, float value)
  ///
  /// Record an event log message.
  ///@param tag The event type tag code
  ///@param value A value to log
  ///@return The number of bytes written
  static int writeEvent2(int tag, double value) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_writeEvent2,
          jni.JniType.intType, [tag, value]).integer;

  static final _id_writeEvent3 = jniAccessors.getStaticMethodIDOf(
      _classRef, "writeEvent", "(ILjava/lang/String;)I");

  /// from: static public native int writeEvent(int tag, java.lang.String str)
  ///
  /// Record an event log message.
  ///@param tag The event type tag code
  ///@param str A value to log
  ///@return The number of bytes written
  static int writeEvent3(int tag, jni.JniString str) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_writeEvent3,
          jni.JniType.intType, [tag, str.reference]).integer;

  static final _id_writeEvent4 = jniAccessors.getStaticMethodIDOf(
      _classRef, "writeEvent", "(I[Ljava/lang/Object;)I");

  /// from: static public native int writeEvent(int tag, java.lang.Object[] list)
  ///
  /// Record an event log message.
  ///@param tag The event type tag code
  ///@param list A list of values to log
  ///@return The number of bytes written
  static int writeEvent4(int tag, jni.JniObject list) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_writeEvent4,
          jni.JniType.intType, [tag, list.reference]).integer;

  static final _id_readEvents = jniAccessors.getStaticMethodIDOf(
      _classRef, "readEvents", "([ILjava/util/Collection;)V");

  /// from: static public native void readEvents(int[] tags, java.util.Collection<android.util.EventLog.Event> output)
  ///
  /// Read events from the log, filtered by type.
  ///@param tags to search for
  ///@param output container to add events into
  ///@throws IOException if something goes wrong reading events
  static void readEvents(jni.JniObject tags, jni.JniObject output) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_readEvents,
          jni.JniType.voidType, [tags.reference, output.reference]).check();

  static final _id_getTagName = jniAccessors.getStaticMethodIDOf(
      _classRef, "getTagName", "(I)Ljava/lang/String;");

  /// from: static public java.lang.String getTagName(int tag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the name associated with an event type tag code.
  ///@param tag code to look up
  ///@return the name of the tag, or null if no tag has that number
  static jni.JniString getTagName(int tag) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getTagName, jni.JniType.objectType, [tag]).object);

  static final _id_getTagCode = jniAccessors.getStaticMethodIDOf(
      _classRef, "getTagCode", "(Ljava/lang/String;)I");

  /// from: static public int getTagCode(java.lang.String name)
  ///
  /// Get the event type tag code associated with an event name.
  ///@param name of event to look up
  ///@return the tag code, or -1 if no tag has that name
  static int getTagCode(jni.JniString name) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_getTagCode,
          jni.JniType.intType, [name.reference]).integer;
}

/// from: android.util.EventLog$Event
///
/// A previously logged event read from the logs. Instances are thread safe.
class EventLog_Event extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/util/EventLog\$Event");
  EventLog_Event.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getProcessId =
      jniAccessors.getMethodIDOf(_classRef, "getProcessId", "()I");

  /// from: public int getProcessId()
  ///
  /// @return the process ID which wrote the log entry
  int getProcessId() => jniAccessors.callMethodWithArgs(
      reference, _id_getProcessId, jni.JniType.intType, []).integer;

  static final _id_getThreadId =
      jniAccessors.getMethodIDOf(_classRef, "getThreadId", "()I");

  /// from: public int getThreadId()
  ///
  /// @return the thread ID which wrote the log entry
  int getThreadId() => jniAccessors.callMethodWithArgs(
      reference, _id_getThreadId, jni.JniType.intType, []).integer;

  static final _id_getTimeNanos =
      jniAccessors.getMethodIDOf(_classRef, "getTimeNanos", "()J");

  /// from: public long getTimeNanos()
  ///
  /// @return the wall clock time when the entry was written
  int getTimeNanos() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimeNanos, jni.JniType.longType, []).long;

  static final _id_getTag =
      jniAccessors.getMethodIDOf(_classRef, "getTag", "()I");

  /// from: public int getTag()
  ///
  /// @return the type tag code of the entry
  int getTag() => jniAccessors.callMethodWithArgs(
      reference, _id_getTag, jni.JniType.intType, []).integer;

  static final _id_getData =
      jniAccessors.getMethodIDOf(_classRef, "getData", "()Ljava/lang/Object;");

  /// from: synchronized public java.lang.Object getData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return one of Integer, Long, Float, String, null, or Object[] of same.
  jni.JniObject getData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getData, jni.JniType.objectType, []).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  ///
  /// @hide
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// @hide
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;
}
