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

/// from: android.icu.text.NumberingSystem
///
/// <code>NumberingSystem</code> is the base class for all number
/// systems. This class provides the interface for setting different numbering
/// system types, whether it be a simple alternate digit system such as
/// Thai digits or Devanagari digits, or an algorithmic numbering system such
/// as Hebrew numbering or Chinese numbering.
///@author John Emmons
class NumberingSystem extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/NumberingSystem");
  NumberingSystem.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Default constructor.  Returns a numbering system that uses the Western decimal
  /// digits 0 through 9.
  NumberingSystem()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;");

  /// from: static public android.icu.text.NumberingSystem getInstance(int radix_in, boolean isAlgorithmic_in, java.lang.String desc_in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Factory method for creating a numbering system.
  ///@param radix_in The radix for this numbering system.  ICU currently
  /// supports only numbering systems whose radix is 10.
  ///@param isAlgorithmic_in Specifies whether the numbering system is algorithmic
  /// (true) or numeric (false).
  ///@param desc_in String used to describe the characteristics of the numbering
  /// system.  For numeric systems, this string contains the digits used by the
  /// numbering system, in order, starting from zero.  For algorithmic numbering
  /// systems, the string contains the name of the RBNF ruleset in the locale's
  /// NumberingSystemRules section that will be used to format numbers using
  /// this numbering system.
  static NumberingSystem getInstance(
          int radix_in, bool isAlgorithmic_in, jni.JniString desc_in) =>
      NumberingSystem.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance,
          jni.JniType.objectType,
          [radix_in, isAlgorithmic_in, desc_in.reference]).object);

  static final _id_getInstance1 = jniAccessors.getStaticMethodIDOf(_classRef,
      "getInstance", "(Ljava/util/Locale;)Landroid/icu/text/NumberingSystem;");

  /// from: static public android.icu.text.NumberingSystem getInstance(java.util.Locale inLocale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the default numbering system for the specified locale.
  static NumberingSystem getInstance1(jni.JniObject inLocale) =>
      NumberingSystem.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstance1,
          jni.JniType.objectType,
          [inLocale.reference]).object);

  static final _id_getInstance2 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;");

  /// from: static public android.icu.text.NumberingSystem getInstance(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the default numbering system for the specified ULocale.
  static NumberingSystem getInstance2(ulocale_.ULocale locale) =>
      NumberingSystem.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getInstance2, jni.JniType.objectType, [locale.reference]).object);

  static final _id_getInstance3 = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "()Landroid/icu/text/NumberingSystem;");

  /// from: static public android.icu.text.NumberingSystem getInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the default numbering system for the default <code>FORMAT</code> locale.
  ///@see Category\#FORMAT
  static NumberingSystem getInstance3() =>
      NumberingSystem.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getInstance3, jni.JniType.objectType, []).object);

  static final _id_getInstanceByName = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstanceByName",
      "(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;");

  /// from: static public android.icu.text.NumberingSystem getInstanceByName(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a numbering system from one of the predefined numbering systems
  /// known to ICU.  Numbering system names are based on the numbering systems
  /// defined in CLDR.  To get a list of available numbering systems, use the
  /// getAvailableNames method.
  ///@param name The name of the desired numbering system.  Numbering system
  /// names often correspond with the name of the script they are associated
  /// with.  For example, "thai" for Thai digits, "hebr" for Hebrew numerals.
  static NumberingSystem getInstanceByName(jni.JniString name) =>
      NumberingSystem.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getInstanceByName,
          jni.JniType.objectType,
          [name.reference]).object);

  static final _id_getAvailableNames = jniAccessors.getStaticMethodIDOf(
      _classRef, "getAvailableNames", "()[Ljava/lang/String;");

  /// from: static public java.lang.String[] getAvailableNames()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a string array containing a list of the names of numbering systems
  /// currently known to ICU.
  static jni.JniObject getAvailableNames() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getAvailableNames, jni.JniType.objectType, []).object);

  static final _id_isValidDigitString = jniAccessors.getStaticMethodIDOf(
      _classRef, "isValidDigitString", "(Ljava/lang/String;)Z");

  /// from: static public boolean isValidDigitString(java.lang.String str)
  ///
  /// Convenience method to determine if a given digit string is valid for use as a
  /// descriptor of a numeric ( non-algorithmic ) numbering system.  In order for
  /// a digit string to be valid, it must contain exactly ten Unicode code points.
  static bool isValidDigitString(jni.JniString str) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isValidDigitString,
          jni.JniType.booleanType, [str.reference]).boolean;

  static final _id_getRadix =
      jniAccessors.getMethodIDOf(_classRef, "getRadix", "()I");

  /// from: public int getRadix()
  ///
  /// Returns the radix of the current numbering system.
  int getRadix() => jniAccessors.callMethodWithArgs(
      reference, _id_getRadix, jni.JniType.intType, []).integer;

  static final _id_getDescription = jniAccessors.getMethodIDOf(
      _classRef, "getDescription", "()Ljava/lang/String;");

  /// from: public java.lang.String getDescription()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the description string of the current numbering system.
  /// The description string describes the characteristics of the numbering
  /// system.  For numeric systems, this string contains the digits used by the
  /// numbering system, in order, starting from zero.  For algorithmic numbering
  /// systems, the string contains the name of the RBNF ruleset in the locale's
  /// NumberingSystemRules section that will be used to format numbers using
  /// this numbering system.
  jni.JniString getDescription() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDescription, jni.JniType.objectType, []).object);

  static final _id_getName =
      jniAccessors.getMethodIDOf(_classRef, "getName", "()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the string representing the name of the numbering system.
  jni.JniString getName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_isAlgorithmic =
      jniAccessors.getMethodIDOf(_classRef, "isAlgorithmic", "()Z");

  /// from: public boolean isAlgorithmic()
  ///
  /// Returns the numbering system's algorithmic status.  If true,
  /// the numbering system is algorithmic and uses an RBNF formatter to
  /// format numerals.  If false, the numbering system is numeric and
  /// uses a fixed set of digits.
  bool isAlgorithmic() => jniAccessors.callMethodWithArgs(
      reference, _id_isAlgorithmic, jni.JniType.booleanType, []).boolean;
}
