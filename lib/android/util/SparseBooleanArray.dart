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

/// from: android.util.SparseBooleanArray
///
/// SparseBooleanArrays map integers to booleans.
/// Unlike a normal array of booleans
/// there can be gaps in the indices.  It is intended to be more memory efficient
/// than using a HashMap to map Integers to Booleans, both because it avoids
/// auto-boxing keys and values and its data structure doesn't rely on an extra entry object
/// for each mapping.
///
/// Note that this container keeps its mappings in an array data structure,
/// using a binary search to find keys.  The implementation is not intended to be appropriate for
/// data structures
/// that may contain large numbers of items.  It is generally slower than a traditional
/// HashMap, since lookups require a binary search and adds and removes require inserting
/// and deleting entries in the array.  For containers holding up to hundreds of items,
/// the performance difference is not significant, less than 50%.
///
///
/// It is possible to iterate over the items in this container using
/// \#keyAt(int) and \#valueAt(int). Iterating over the keys using
/// <code>keyAt(int)</code> with ascending values of the index will return the
/// keys in ascending order, or the values corresponding to the keys in ascending
/// order in the case of <code>valueAt(int)</code>.
///
class SparseBooleanArray extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/util/SparseBooleanArray");
  SparseBooleanArray.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new SparseBooleanArray containing no mappings.
  SparseBooleanArray()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int initialCapacity)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new SparseBooleanArray containing no mappings that will not
  /// require any additional memory allocation to store the specified
  /// number of mappings.  If you supply an initial capacity of 0, the
  /// sparse array will be initialized with a light-weight representation
  /// not requiring any additional array allocations.
  SparseBooleanArray.ctor1(int initialCapacity)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [initialCapacity]).object);

  static final _id_clone = jniAccessors.getMethodIDOf(
      _classRef, "clone", "()Landroid/util/SparseBooleanArray;");

  /// from: public android.util.SparseBooleanArray clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SparseBooleanArray clone() =>
      SparseBooleanArray.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_clone, jni.JniType.objectType, []).object);

  static final _id_get0 = jniAccessors.getMethodIDOf(_classRef, "get", "(I)Z");

  /// from: public boolean get(int key)
  ///
  /// Gets the boolean mapped from the specified key, or <code>false</code>
  /// if no such mapping has been made.
  bool get0(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_get0, jni.JniType.booleanType, [key]).boolean;

  static final _id_get1 = jniAccessors.getMethodIDOf(_classRef, "get", "(IZ)Z");

  /// from: public boolean get(int key, boolean valueIfKeyNotFound)
  ///
  /// Gets the boolean mapped from the specified key, or the specified value
  /// if no such mapping has been made.
  bool get1(int key, bool valueIfKeyNotFound) =>
      jniAccessors.callMethodWithArgs(reference, _id_get1,
          jni.JniType.booleanType, [key, valueIfKeyNotFound]).boolean;

  static final _id_delete1 =
      jniAccessors.getMethodIDOf(_classRef, "delete", "(I)V");

  /// from: public void delete(int key)
  ///
  /// Removes the mapping from the specified key, if there was any.
  void delete1(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_delete1, jni.JniType.voidType, [key]).check();

  static final _id_removeAt =
      jniAccessors.getMethodIDOf(_classRef, "removeAt", "(I)V");

  /// from: public void removeAt(int index)
  ///
  /// Removes the mapping at the specified index.
  ///
  /// For indices outside of the range {@code 0...size()-1}, the behavior is undefined.
  void removeAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_removeAt, jni.JniType.voidType, [index]).check();

  static final _id_put = jniAccessors.getMethodIDOf(_classRef, "put", "(IZ)V");

  /// from: public void put(int key, boolean value)
  ///
  /// Adds a mapping from the specified key to the specified value,
  /// replacing the previous mapping from the specified key if there
  /// was one.
  void put(int key, bool value) => jniAccessors.callMethodWithArgs(
      reference, _id_put, jni.JniType.voidType, [key, value]).check();

  static final _id_size = jniAccessors.getMethodIDOf(_classRef, "size", "()I");

  /// from: public int size()
  ///
  /// Returns the number of key-value mappings that this SparseBooleanArray
  /// currently stores.
  int size() => jniAccessors
      .callMethodWithArgs(reference, _id_size, jni.JniType.intType, []).integer;

  static final _id_keyAt =
      jniAccessors.getMethodIDOf(_classRef, "keyAt", "(I)I");

  /// from: public int keyAt(int index)
  ///
  /// Given an index in the range <code>0...size()-1</code>, returns
  /// the key from the <code>index</code>th key-value mapping that this
  /// SparseBooleanArray stores.
  ///
  /// The keys corresponding to indices in ascending order are guaranteed to
  /// be in ascending order, e.g., <code>keyAt(0)</code> will return the
  /// smallest key and <code>keyAt(size()-1)</code> will return the largest
  /// key.
  ///
  int keyAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_keyAt, jni.JniType.intType, [index]).integer;

  static final _id_valueAt =
      jniAccessors.getMethodIDOf(_classRef, "valueAt", "(I)Z");

  /// from: public boolean valueAt(int index)
  ///
  /// Given an index in the range <code>0...size()-1</code>, returns
  /// the value from the <code>index</code>th key-value mapping that this
  /// SparseBooleanArray stores.
  ///
  /// The values corresponding to indices in ascending order are guaranteed
  /// to be associated with keys in ascending order, e.g.,
  /// <code>valueAt(0)</code> will return the value associated with the
  /// smallest key and <code>valueAt(size()-1)</code> will return the value
  /// associated with the largest key.
  ///
  bool valueAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_valueAt, jni.JniType.booleanType, [index]).boolean;

  static final _id_indexOfKey =
      jniAccessors.getMethodIDOf(_classRef, "indexOfKey", "(I)I");

  /// from: public int indexOfKey(int key)
  ///
  /// Returns the index for which \#keyAt would return the
  /// specified key, or a negative number if the specified
  /// key is not mapped.
  int indexOfKey(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_indexOfKey, jni.JniType.intType, [key]).integer;

  static final _id_indexOfValue =
      jniAccessors.getMethodIDOf(_classRef, "indexOfValue", "(Z)I");

  /// from: public int indexOfValue(boolean value)
  ///
  /// Returns an index for which \#valueAt would return the
  /// specified key, or a negative number if no keys map to the
  /// specified value.
  /// Beware that this is a linear search, unlike lookups by key,
  /// and that multiple keys can map to the same value and this will
  /// find only one of them.
  int indexOfValue(bool value) => jniAccessors.callMethodWithArgs(
      reference, _id_indexOfValue, jni.JniType.intType, [value]).integer;

  static final _id_clear =
      jniAccessors.getMethodIDOf(_classRef, "clear", "()V");

  /// from: public void clear()
  ///
  /// Removes all key-value mappings from this SparseBooleanArray.
  void clear() => jniAccessors.callMethodWithArgs(
      reference, _id_clear, jni.JniType.voidType, []).check();

  static final _id_append =
      jniAccessors.getMethodIDOf(_classRef, "append", "(IZ)V");

  /// from: public void append(int key, boolean value)
  ///
  /// Puts a key/value pair into the array, optimizing for the case where
  /// the key is greater than all existing keys in the array.
  void append(int key, bool value) => jniAccessors.callMethodWithArgs(
      reference, _id_append, jni.JniType.voidType, [key, value]).check();

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object that)
  bool equals1(jni.JniObject that) => jniAccessors.callMethodWithArgs(reference,
      _id_equals1, jni.JniType.booleanType, [that.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// {@inheritDoc}
  ///
  /// This implementation composes a string by iterating over its mappings.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
