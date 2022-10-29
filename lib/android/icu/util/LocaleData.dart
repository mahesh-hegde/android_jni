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

import "ULocale.dart" as ulocale_;

import "VersionInfo.dart" as versioninfo_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.util.LocaleData
///
/// A class for accessing miscellaneous data in the locale bundles
///@author ram
class LocaleData extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/util/LocaleData");
  LocaleData.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ALT_QUOTATION_END
  ///
  /// Delimiter type for \#getDelimiter(int).
  static const ALT_QUOTATION_END = 3;

  /// from: static public final int ALT_QUOTATION_START
  ///
  /// Delimiter type for \#getDelimiter(int).
  static const ALT_QUOTATION_START = 2;

  /// from: static public final int QUOTATION_END
  ///
  /// Delimiter type for \#getDelimiter(int).
  static const QUOTATION_END = 1;

  /// from: static public final int QUOTATION_START
  ///
  /// Delimiter type for \#getDelimiter(int).
  static const QUOTATION_START = 0;

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData;");

  /// from: static public android.icu.util.LocaleData getInstance(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the LocaleData object associated with the ULocale specified in locale
  ///@param locale Locale with thich the locale data object is associated.
  ///@return A locale data object.
  static LocaleData getInstance(ulocale_.ULocale locale) =>
      LocaleData.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getInstance, jni.JniType.objectType, [locale.reference]).object);

  static final _id_getInstance1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "()Landroid/icu/util/LocaleData;");

  /// from: static public android.icu.util.LocaleData getInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the LocaleData object associated with the default <code>FORMAT</code> locale
  ///@return A locale data object.
  ///@see Category\#FORMAT
  static LocaleData getInstance1() =>
      LocaleData.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getInstance1, jni.JniType.objectType, []).object);

  static final _id_setNoSubstitute =
      jniAccessors.getMethodIDOf(_classRef, "setNoSubstitute", "(Z)V");

  /// from: public void setNoSubstitute(boolean setting)
  ///
  /// Sets the "no substitute" behavior of this locale data object.
  ///@param setting Value for the no substitute behavior.  If TRUE,
  ///                  methods of this locale data object will return
  ///                  an error when no data is available for that method,
  ///                  given the locale ID supplied to the constructor.
  void setNoSubstitute(bool setting) => jniAccessors.callMethodWithArgs(
      reference, _id_setNoSubstitute, jni.JniType.voidType, [setting]).check();

  static final _id_getNoSubstitute =
      jniAccessors.getMethodIDOf(_classRef, "getNoSubstitute", "()Z");

  /// from: public boolean getNoSubstitute()
  ///
  /// Gets the "no substitute" behavior of this locale data object.
  ///@return Value for the no substitute behavior.  If TRUE,
  ///                  methods of this locale data object will return
  ///                  an error when no data is available for that method,
  ///                  given the locale ID supplied to the constructor.
  bool getNoSubstitute() => jniAccessors.callMethodWithArgs(
      reference, _id_getNoSubstitute, jni.JniType.booleanType, []).boolean;

  static final _id_getDelimiter = jniAccessors.getMethodIDOf(
      _classRef, "getDelimiter", "(I)Ljava/lang/String;");

  /// from: public java.lang.String getDelimiter(int type)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves a delimiter string from the locale data.
  ///@param type The type of delimiter string desired.  Currently,
  ///                  the valid choices are QUOTATION_START, QUOTATION_END,
  ///                  ALT_QUOTATION_START, or ALT_QUOTATION_END.
  ///@return The desired delimiter string.
  jni.JniString getDelimiter(int type) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDelimiter, jni.JniType.objectType, [type]).object);

  static final _id_getMeasurementSystem = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getMeasurementSystem",
      "(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData\$MeasurementSystem;");

  /// from: static public android.icu.util.LocaleData.MeasurementSystem getMeasurementSystem(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the measurement system used in the locale specified by the locale.
  ///@param locale The locale for which the measurement system to be retrieved.
  ///@return MeasurementSystem the measurement system used in the locale.
  static LocaleData_MeasurementSystem getMeasurementSystem(
          ulocale_.ULocale locale) =>
      LocaleData_MeasurementSystem.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_getMeasurementSystem,
              jni.JniType.objectType, [locale.reference]).object);

  static final _id_getPaperSize = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getPaperSize",
      "(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleData\$PaperSize;");

  /// from: static public android.icu.util.LocaleData.PaperSize getPaperSize(android.icu.util.ULocale locale)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the size of paper used in the locale. The paper sizes returned are always in
  /// _milli-meters_.
  ///@param locale The locale for which the measurement system to be retrieved.
  ///@return The paper size used in the locale
  static LocaleData_PaperSize getPaperSize(ulocale_.ULocale locale) =>
      LocaleData_PaperSize.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getPaperSize,
          jni.JniType.objectType,
          [locale.reference]).object);

  static final _id_getCLDRVersion = jniAccessors.getStaticMethodIDOf(
      _classRef, "getCLDRVersion", "()Landroid/icu/util/VersionInfo;");

  /// from: static public android.icu.util.VersionInfo getCLDRVersion()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the current CLDR version
  static versioninfo_.VersionInfo getCLDRVersion() =>
      versioninfo_.VersionInfo.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getCLDRVersion, jni.JniType.objectType, []).object);
}

/// from: android.icu.util.LocaleData$PaperSize
///
/// A class that represents the size of letter head
/// used in the country
class LocaleData_PaperSize extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/util/LocaleData\$PaperSize");
  LocaleData_PaperSize.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getHeight =
      jniAccessors.getMethodIDOf(_classRef, "getHeight", "()I");

  /// from: public int getHeight()
  ///
  /// Retruns the height of the paper
  ///@return the height
  int getHeight() => jniAccessors.callMethodWithArgs(
      reference, _id_getHeight, jni.JniType.intType, []).integer;

  static final _id_getWidth =
      jniAccessors.getMethodIDOf(_classRef, "getWidth", "()I");

  /// from: public int getWidth()
  ///
  /// Returns the width of the paper
  ///@return the width
  int getWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getWidth, jni.JniType.intType, []).integer;
}

/// from: android.icu.util.LocaleData$MeasurementSystem
///
/// Enumeration for representing the measurement systems.
class LocaleData_MeasurementSystem extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/util/LocaleData\$MeasurementSystem");
  LocaleData_MeasurementSystem.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_SI = jniAccessors.getStaticFieldIDOf(
      _classRef, "SI", "Landroid/icu/util/LocaleData\$MeasurementSystem;");

  /// from: static public final android.icu.util.LocaleData.MeasurementSystem SI
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Measurement system specified by Le Syst&\#x00E8;me International d'Unit&\#x00E9;s (SI)
  /// otherwise known as Metric system.
  static LocaleData_MeasurementSystem get SI =>
      LocaleData_MeasurementSystem.fromRef(jniAccessors
          .getStaticField(_classRef, _id_SI, jni.JniType.objectType)
          .object);

  static final _id_UK = jniAccessors.getStaticFieldIDOf(
      _classRef, "UK", "Landroid/icu/util/LocaleData\$MeasurementSystem;");

  /// from: static public final android.icu.util.LocaleData.MeasurementSystem UK
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Mix of metric and imperial units used in Great Britain.
  static LocaleData_MeasurementSystem get UK =>
      LocaleData_MeasurementSystem.fromRef(jniAccessors
          .getStaticField(_classRef, _id_UK, jni.JniType.objectType)
          .object);

  static final _id_US = jniAccessors.getStaticFieldIDOf(
      _classRef, "US", "Landroid/icu/util/LocaleData\$MeasurementSystem;");

  /// from: static public final android.icu.util.LocaleData.MeasurementSystem US
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Measurement system followed in the United States of America.
  static LocaleData_MeasurementSystem get US =>
      LocaleData_MeasurementSystem.fromRef(jniAccessors
          .getStaticField(_classRef, _id_US, jni.JniType.objectType)
          .object);
}
