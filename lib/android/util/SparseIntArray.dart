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

/// from: android.util.SparseIntArray
///
/// SparseIntArrays map integers to integers.  Unlike a normal array of integers,
/// there can be gaps in the indices.  It is intended to be more memory efficient
/// than using a HashMap to map Integers to Integers, both because it avoids
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
class SparseIntArray extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/util/SparseIntArray");
  SparseIntArray.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new SparseIntArray containing no mappings.
  SparseIntArray()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int initialCapacity)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new SparseIntArray containing no mappings that will not
  /// require any additional memory allocation to store the specified
  /// number of mappings.  If you supply an initial capacity of 0, the
  /// sparse array will be initialized with a light-weight representation
  /// not requiring any additional array allocations.
  SparseIntArray.ctor1(int initialCapacity)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [initialCapacity]).object);

  static final _id_clone = jniAccessors.getMethodIDOf(
      _classRef, "clone", "()Landroid/util/SparseIntArray;");

  /// from: public android.util.SparseIntArray clone()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SparseIntArray clone() =>
      SparseIntArray.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_clone, jni.JniType.objectType, []).object);

  static final _id_get0 = jniAccessors.getMethodIDOf(_classRef, "get", "(I)I");

  /// from: public int get(int key)
  ///
  /// Gets the int mapped from the specified key, or <code>0</code>
  /// if no such mapping has been made.
  int get0(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_get0, jni.JniType.intType, [key]).integer;

  static final _id_get1 = jniAccessors.getMethodIDOf(_classRef, "get", "(II)I");

  /// from: public int get(int key, int valueIfKeyNotFound)
  ///
  /// Gets the int mapped from the specified key, or the specified value
  /// if no such mapping has been made.
  int get1(int key, int valueIfKeyNotFound) => jniAccessors.callMethodWithArgs(
      reference,
      _id_get1,
      jni.JniType.intType,
      [key, valueIfKeyNotFound]).integer;

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
  /// Removes the mapping at the given index.
  void removeAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_removeAt, jni.JniType.voidType, [index]).check();

  static final _id_put = jniAccessors.getMethodIDOf(_classRef, "put", "(II)V");

  /// from: public void put(int key, int value)
  ///
  /// Adds a mapping from the specified key to the specified value,
  /// replacing the previous mapping from the specified key if there
  /// was one.
  void put(int key, int value) => jniAccessors.callMethodWithArgs(
      reference, _id_put, jni.JniType.voidType, [key, value]).check();

  static final _id_size = jniAccessors.getMethodIDOf(_classRef, "size", "()I");

  /// from: public int size()
  ///
  /// Returns the number of key-value mappings that this SparseIntArray
  /// currently stores.
  int size() => jniAccessors
      .callMethodWithArgs(reference, _id_size, jni.JniType.intType, []).integer;

  static final _id_keyAt =
      jniAccessors.getMethodIDOf(_classRef, "keyAt", "(I)I");

  /// from: public int keyAt(int index)
  ///
  /// Given an index in the range <code>0...size()-1</code>, returns
  /// the key from the <code>index</code>th key-value mapping that this
  /// SparseIntArray stores.
  ///
  /// The keys corresponding to indices in ascending order are guaranteed to
  /// be in ascending order, e.g., <code>keyAt(0)</code> will return the
  /// smallest key and <code>keyAt(size()-1)</code> will return the largest
  /// key.
  ///
  int keyAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_keyAt, jni.JniType.intType, [index]).integer;

  static final _id_valueAt =
      jniAccessors.getMethodIDOf(_classRef, "valueAt", "(I)I");

  /// from: public int valueAt(int index)
  ///
  /// Given an index in the range <code>0...size()-1</code>, returns
  /// the value from the <code>index</code>th key-value mapping that this
  /// SparseIntArray stores.
  ///
  /// The values corresponding to indices in ascending order are guaranteed
  /// to be associated with keys in ascending order, e.g.,
  /// <code>valueAt(0)</code> will return the value associated with the
  /// smallest key and <code>valueAt(size()-1)</code> will return the value
  /// associated with the largest key.
  ///
  int valueAt(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_valueAt, jni.JniType.intType, [index]).integer;

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
      jniAccessors.getMethodIDOf(_classRef, "indexOfValue", "(I)I");

  /// from: public int indexOfValue(int value)
  ///
  /// Returns an index for which \#valueAt would return the
  /// specified key, or a negative number if no keys map to the
  /// specified value.
  /// Beware that this is a linear search, unlike lookups by key,
  /// and that multiple keys can map to the same value and this will
  /// find only one of them.
  int indexOfValue(int value) => jniAccessors.callMethodWithArgs(
      reference, _id_indexOfValue, jni.JniType.intType, [value]).integer;

  static final _id_clear =
      jniAccessors.getMethodIDOf(_classRef, "clear", "()V");

  /// from: public void clear()
  ///
  /// Removes all key-value mappings from this SparseIntArray.
  void clear() => jniAccessors.callMethodWithArgs(
      reference, _id_clear, jni.JniType.voidType, []).check();

  static final _id_append =
      jniAccessors.getMethodIDOf(_classRef, "append", "(II)V");

  /// from: public void append(int key, int value)
  ///
  /// Puts a key/value pair into the array, optimizing for the case where
  /// the key is greater than all existing keys in the array.
  void append(int key, int value) => jniAccessors.callMethodWithArgs(
      reference, _id_append, jni.JniType.voidType, [key, value]).check();

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
