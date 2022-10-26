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

import "Gesture.dart" as gesture_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.gesture.GestureStore
///
/// GestureLibrary maintains gesture examples and makes predictions on a new
/// gesture
class GestureStore extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/gesture/GestureStore");
  GestureStore.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ORIENTATION_INVARIANT
  static const ORIENTATION_INVARIANT = 1;

  /// from: static public final int ORIENTATION_SENSITIVE
  static const ORIENTATION_SENSITIVE = 2;

  /// from: static public final int SEQUENCE_INVARIANT
  static const SEQUENCE_INVARIANT = 1;

  /// from: static public final int SEQUENCE_SENSITIVE
  static const SEQUENCE_SENSITIVE = 2;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  GestureStore()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setOrientationStyle =
      jniAccessors.getMethodIDOf(_classRef, "setOrientationStyle", "(I)V");

  /// from: public void setOrientationStyle(int style)
  ///
  /// Specify how the gesture library will handle orientation.
  /// Use ORIENTATION_INVARIANT or ORIENTATION_SENSITIVE
  ///@param style
  void setOrientationStyle(int style) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setOrientationStyle,
      jni.JniType.voidType,
      [style]).check();

  static final _id_getOrientationStyle =
      jniAccessors.getMethodIDOf(_classRef, "getOrientationStyle", "()I");

  /// from: public int getOrientationStyle()
  int getOrientationStyle() => jniAccessors.callMethodWithArgs(
      reference, _id_getOrientationStyle, jni.JniType.intType, []).integer;

  static final _id_setSequenceType =
      jniAccessors.getMethodIDOf(_classRef, "setSequenceType", "(I)V");

  /// from: public void setSequenceType(int type)
  ///
  /// @param type SEQUENCE_INVARIANT or SEQUENCE_SENSITIVE
  void setSequenceType(int type) => jniAccessors.callMethodWithArgs(
      reference, _id_setSequenceType, jni.JniType.voidType, [type]).check();

  static final _id_getSequenceType =
      jniAccessors.getMethodIDOf(_classRef, "getSequenceType", "()I");

  /// from: public int getSequenceType()
  ///
  /// @return SEQUENCE_INVARIANT or SEQUENCE_SENSITIVE
  int getSequenceType() => jniAccessors.callMethodWithArgs(
      reference, _id_getSequenceType, jni.JniType.intType, []).integer;

  static final _id_getGestureEntries = jniAccessors.getMethodIDOf(
      _classRef, "getGestureEntries", "()Ljava/util/Set;");

  /// from: public java.util.Set<java.lang.String> getGestureEntries()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get all the gesture entry names in the library
  ///@return a set of strings
  jni.JniObject getGestureEntries() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getGestureEntries, jni.JniType.objectType, []).object);

  static final _id_recognize = jniAccessors.getMethodIDOf(_classRef,
      "recognize", "(Landroid/gesture/Gesture;)Ljava/util/ArrayList;");

  /// from: public java.util.ArrayList<android.gesture.Prediction> recognize(android.gesture.Gesture gesture)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Recognize a gesture
  ///@param gesture the query
  ///@return a list of predictions of possible entries for a given gesture
  jni.JniObject recognize(gesture_.Gesture gesture) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_recognize, jni.JniType.objectType, [gesture.reference]).object);

  static final _id_addGesture = jniAccessors.getMethodIDOf(_classRef,
      "addGesture", "(Ljava/lang/String;Landroid/gesture/Gesture;)V");

  /// from: public void addGesture(java.lang.String entryName, android.gesture.Gesture gesture)
  ///
  /// Add a gesture for the entry
  ///@param entryName entry name
  ///@param gesture
  void addGesture(jni.JniString entryName, gesture_.Gesture gesture) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addGesture,
          jni.JniType.voidType,
          [entryName.reference, gesture.reference]).check();

  static final _id_removeGesture = jniAccessors.getMethodIDOf(_classRef,
      "removeGesture", "(Ljava/lang/String;Landroid/gesture/Gesture;)V");

  /// from: public void removeGesture(java.lang.String entryName, android.gesture.Gesture gesture)
  ///
  /// Remove a gesture from the library. If there are no more gestures for the
  /// given entry, the gesture entry will be removed.
  ///@param entryName entry name
  ///@param gesture
  void removeGesture(jni.JniString entryName, gesture_.Gesture gesture) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_removeGesture,
          jni.JniType.voidType,
          [entryName.reference, gesture.reference]).check();

  static final _id_removeEntry = jniAccessors.getMethodIDOf(
      _classRef, "removeEntry", "(Ljava/lang/String;)V");

  /// from: public void removeEntry(java.lang.String entryName)
  ///
  /// Remove a entry of gestures
  ///@param entryName the entry name
  void removeEntry(jni.JniString entryName) => jniAccessors.callMethodWithArgs(
      reference,
      _id_removeEntry,
      jni.JniType.voidType,
      [entryName.reference]).check();

  static final _id_getGestures = jniAccessors.getMethodIDOf(
      _classRef, "getGestures", "(Ljava/lang/String;)Ljava/util/ArrayList;");

  /// from: public java.util.ArrayList<android.gesture.Gesture> getGestures(java.lang.String entryName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get all the gestures of an entry
  ///@param entryName
  ///@return the list of gestures that is under this name
  jni.JniObject getGestures(jni.JniString entryName) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getGestures,
          jni.JniType.objectType,
          [entryName.reference]).object);

  static final _id_hasChanged =
      jniAccessors.getMethodIDOf(_classRef, "hasChanged", "()Z");

  /// from: public boolean hasChanged()
  bool hasChanged() => jniAccessors.callMethodWithArgs(
      reference, _id_hasChanged, jni.JniType.booleanType, []).boolean;

  static final _id_save = jniAccessors.getMethodIDOf(
      _classRef, "save", "(Ljava/io/OutputStream;)V");

  /// from: public void save(java.io.OutputStream stream)
  ///
  /// Save the gesture library
  void save(jni.JniObject stream) => jniAccessors.callMethodWithArgs(
      reference, _id_save, jni.JniType.voidType, [stream.reference]).check();

  static final _id_save1 = jniAccessors.getMethodIDOf(
      _classRef, "save", "(Ljava/io/OutputStream;Z)V");

  /// from: public void save(java.io.OutputStream stream, boolean closeStream)
  void save1(jni.JniObject stream, bool closeStream) =>
      jniAccessors.callMethodWithArgs(reference, _id_save1,
          jni.JniType.voidType, [stream.reference, closeStream]).check();

  static final _id_load =
      jniAccessors.getMethodIDOf(_classRef, "load", "(Ljava/io/InputStream;)V");

  /// from: public void load(java.io.InputStream stream)
  ///
  /// Load the gesture library
  void load(jni.JniObject stream) => jniAccessors.callMethodWithArgs(
      reference, _id_load, jni.JniType.voidType, [stream.reference]).check();

  static final _id_load1 = jniAccessors.getMethodIDOf(
      _classRef, "load", "(Ljava/io/InputStream;Z)V");

  /// from: public void load(java.io.InputStream stream, boolean closeStream)
  void load1(jni.JniObject stream, bool closeStream) =>
      jniAccessors.callMethodWithArgs(reference, _id_load1,
          jni.JniType.voidType, [stream.reference, closeStream]).check();
}