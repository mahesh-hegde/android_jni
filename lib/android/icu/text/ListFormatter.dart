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

import "../util/ULocale.dart" as ulocale_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.ListFormatter
///
/// Immutable class for formatting a list, using data from CLDR (or supplied
/// separately). The class is not subclassable.
///@author Mark Davis
class ListFormatter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/ListFormatter");
  ListFormatter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Landroid/icu/util/ULocale;)Landroid/icu/text/ListFormatter;");

  /// from: static public android.icu.text.ListFormatter getInstance(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a list formatter that is appropriate for a locale.
  ///@param locale the locale in question.
  ///@return ListFormatter
  static ListFormatter getInstance(ulocale_.ULocale locale) =>
      ListFormatter.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getInstance, jni.JniType.objectType, [locale.reference]).object);

  static final _id_getInstance1 = jniAccessors.getStaticMethodIDOf(_classRef,
      "getInstance", "(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;");

  /// from: static public android.icu.text.ListFormatter getInstance(java.util.Locale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a list formatter that is appropriate for a locale.
  ///@param locale the locale in question.
  ///@return ListFormatter
  static ListFormatter getInstance1(jni.JniObject locale) =>
      ListFormatter.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getInstance1, jni.JniType.objectType, [locale.reference]).object);

  static final _id_getInstance2 = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "()Landroid/icu/text/ListFormatter;");

  /// from: static public android.icu.text.ListFormatter getInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a list formatter that is appropriate for the default FORMAT locale.
  ///@return ListFormatter
  static ListFormatter getInstance2() =>
      ListFormatter.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getInstance2, jni.JniType.objectType, []).object);

  static final _id_format = jniAccessors.getMethodIDOf(
      _classRef, "format", "([Ljava/lang/Object;)Ljava/lang/String;");

  /// from: public java.lang.String format(java.lang.Object[] items)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Format a list of objects.
  ///@param items items to format. The toString() method is called on each.
  ///@return items formatted into a string
  jni.JniString format(jni.JniObject items) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_format, jni.JniType.objectType, [items.reference]).object);

  static final _id_format1 = jniAccessors.getMethodIDOf(
      _classRef, "format", "(Ljava/util/Collection;)Ljava/lang/String;");

  /// from: public java.lang.String format(java.util.Collection<?> items)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Format a collection of objects. The toString() method is called on each.
  ///@param items items to format. The toString() method is called on each.
  ///@return items formatted into a string
  jni.JniString format1(jni.JniObject items) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_format1, jni.JniType.objectType, [items.reference]).object);

  static final _id_getPatternForNumItems = jniAccessors.getMethodIDOf(
      _classRef, "getPatternForNumItems", "(I)Ljava/lang/String;");

  /// from: public java.lang.String getPatternForNumItems(int count)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the pattern to use for a particular item count.
  ///@param count the item count.
  ///@return the pattern with {0}, {1}, {2}, etc. For English,
  /// getPatternForNumItems(3) == "{0}, {1}, and {2}"
  ///@throws IllegalArgumentException when count is 0 or negative.
  jni.JniString getPatternForNumItems(int count) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getPatternForNumItems, jni.JniType.objectType, [count]).object);
}
