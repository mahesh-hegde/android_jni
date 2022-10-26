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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.util.Patterns
///
/// Commonly used regular expression patterns.
class Patterns extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/util/Patterns");
  Patterns.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_DOMAIN_NAME = jniAccessors.getStaticFieldIDOf(
      _classRef, "DOMAIN_NAME", "Ljava/util/regex/Pattern;");

  /// from: static public final java.util.regex.Pattern DOMAIN_NAME
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get DOMAIN_NAME => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_DOMAIN_NAME, jni.JniType.objectType)
      .object);

  static final _id_EMAIL_ADDRESS = jniAccessors.getStaticFieldIDOf(
      _classRef, "EMAIL_ADDRESS", "Ljava/util/regex/Pattern;");

  /// from: static public final java.util.regex.Pattern EMAIL_ADDRESS
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get EMAIL_ADDRESS => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_EMAIL_ADDRESS, jni.JniType.objectType)
      .object);

  /// from: static public final java.lang.String GOOD_IRI_CHAR
  ///
  /// Kept for backward compatibility reasons.
  ///@deprecated Deprecated since it does not include all IRI characters defined in RFC 3987
  static const GOOD_IRI_CHAR = "a-zA-Z0-9 -퟿豈-﷏ﷰ-￯";

  static final _id_IP_ADDRESS = jniAccessors.getStaticFieldIDOf(
      _classRef, "IP_ADDRESS", "Ljava/util/regex/Pattern;");

  /// from: static public final java.util.regex.Pattern IP_ADDRESS
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject get IP_ADDRESS => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_IP_ADDRESS, jni.JniType.objectType)
      .object);

  static final _id_PHONE = jniAccessors.getStaticFieldIDOf(
      _classRef, "PHONE", "Ljava/util/regex/Pattern;");

  /// from: static public final java.util.regex.Pattern PHONE
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This pattern is intended for searching for things that look like they
  /// might be phone numbers in arbitrary text, not for validating whether
  /// something is in fact a phone number.  It will miss many things that
  /// are legitimate phone numbers.
  ///
  ///  The pattern matches the following:
  /// <ul>
  /// <li>Optionally, a + sign followed immediately by one or more digits. Spaces, dots, or dashes
  /// may follow.
  /// <li>Optionally, sets of digits in parentheses, separated by spaces, dots, or dashes.
  /// <li>A string starting and ending with a digit, containing digits, spaces, dots, and/or dashes.
  /// </ul>
  static jni.JniObject get PHONE => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_PHONE, jni.JniType.objectType)
      .object);

  static final _id_TOP_LEVEL_DOMAIN = jniAccessors.getStaticFieldIDOf(
      _classRef, "TOP_LEVEL_DOMAIN", "Ljava/util/regex/Pattern;");

  /// from: static public final java.util.regex.Pattern TOP_LEVEL_DOMAIN
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Regular expression pattern to match all IANA top-level domains.
  ///@deprecated This API is deprecated. See \#TOP_LEVEL_DOMAIN_STR.
  static jni.JniObject get TOP_LEVEL_DOMAIN =>
      jni.JniObject.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_TOP_LEVEL_DOMAIN, jni.JniType.objectType)
          .object);

  /// from: static public final java.lang.String TOP_LEVEL_DOMAIN_STR
  ///
  /// Regular expression to match all IANA top-level domains.
  ///  List accurate as of 2011/07/18.  List taken from:
  ///  http://data.iana.org/TLD/tlds-alpha-by-domain.txt
  ///  This pattern is auto-generated by frameworks/ex/common/tools/make-iana-tld-pattern.py
  ///@deprecated Due to the recent profileration of gTLDs, this API is
  ///  expected to become out-of-date very quickly. Therefore it is now
  ///  deprecated.
  static const TOP_LEVEL_DOMAIN_STR =
      "((aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(biz|b[abdefghijmnorstvwyz])|(cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(edu|e[cegrstu])|f[ijkmor]|(gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(info|int|i[delmnoqrst])|(jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(name|net|n[acefgilopruz])|(org|om)|(pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(δοκιμή|испытание|рф|срб|טעסט|آزمایشی|إختبار|الاردن|الجزائر|السعودية|المغرب|امارات|بھارت|تونس|سورية|فلسطين|قطر|مصر|परीक्षा|भारत|ভারত|ਭਾਰਤ|ભારત|இந்தியா|இலங்கை|சிங்கப்பூர்|பரிட்சை|భారత్|ලංකා|ไทย|テスト|中国|中國|台湾|台灣|新加坡|测试|測試|香港|테스트|한국|xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-3e0b707e|xn\\-\\-45brj9c|xn\\-\\-80akhbyknj4f|xn\\-\\-90a3ac|xn\\-\\-9t4b11yi5a|xn\\-\\-clchc0ea0b2g2a9gcd|xn\\-\\-deba0ad|xn\\-\\-fiqs8s|xn\\-\\-fiqz9s|xn\\-\\-fpcrj9c3d|xn\\-\\-fzc2c9e2c|xn\\-\\-g6w251d|xn\\-\\-gecrj9c|xn\\-\\-h2brj9c|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-j6w193g|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-kprw13d|xn\\-\\-kpry57d|xn\\-\\-lgbbat1ad8j|xn\\-\\-mgbaam7a8h|xn\\-\\-mgbayh7gpa|xn\\-\\-mgbbh1a71e|xn\\-\\-mgbc0a9azcg|xn\\-\\-mgberp4a5d4ar|xn\\-\\-o3cw4h|xn\\-\\-ogbpf8fl|xn\\-\\-p1ai|xn\\-\\-pgbs0dh|xn\\-\\-s9brj9c|xn\\-\\-wgbh1c|xn\\-\\-wgbl6a|xn\\-\\-xkc2al3hye2a|xn\\-\\-xkc2dl3a5ee0h|xn\\-\\-yfro4i67o|xn\\-\\-ygbi2ammx|xn\\-\\-zckzah|xxx)|y[et]|z[amw])";

  static final _id_WEB_URL = jniAccessors.getStaticFieldIDOf(
      _classRef, "WEB_URL", "Ljava/util/regex/Pattern;");

  /// from: static public final java.util.regex.Pattern WEB_URL
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Regular expression pattern to match most part of RFC 3987
  ///  Internationalized URLs, aka IRIs.
  static jni.JniObject get WEB_URL => jni.JniObject.fromRef(jniAccessors
      .getStaticField(_classRef, _id_WEB_URL, jni.JniType.objectType)
      .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Do not create this static utility class.
  Patterns()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_concatGroups = jniAccessors.getStaticMethodIDOf(_classRef,
      "concatGroups", "(Ljava/util/regex/Matcher;)Ljava/lang/String;");

  /// from: static public final java.lang.String concatGroups(java.util.regex.Matcher matcher)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Convenience method to take all of the non-null matching groups in a
  ///  regex Matcher and return them as a concatenated string.
  ///@param matcher The Matcher object from which grouped text will
  ///                      be extracted
  ///@return A String comprising all of the non-null matched
  ///                      groups concatenated together
  static jni.JniString concatGroups(jni.JniObject matcher) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_concatGroups,
          jni.JniType.objectType,
          [matcher.reference]).object);

  static final _id_digitsAndPlusOnly = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "digitsAndPlusOnly",
      "(Ljava/util/regex/Matcher;)Ljava/lang/String;");

  /// from: static public final java.lang.String digitsAndPlusOnly(java.util.regex.Matcher matcher)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Convenience method to return only the digits and plus signs
  /// in the matching string.
  ///@param matcher The Matcher object from which digits and plus will
  ///                     be extracted
  ///@return A String comprising all of the digits and plus in
  ///                     the match
  static jni.JniString digitsAndPlusOnly(jni.JniObject matcher) =>
      jni.JniString.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_digitsAndPlusOnly,
          jni.JniType.objectType,
          [matcher.reference]).object);
}
