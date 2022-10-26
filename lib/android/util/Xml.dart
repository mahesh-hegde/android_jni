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

import "AttributeSet.dart" as attributeset_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.util.Xml
///
/// XML utility methods.
class Xml extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/util/Xml");
  Xml.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_FEATURE_RELAXED = jniAccessors.getStaticFieldIDOf(
      _classRef, "FEATURE_RELAXED", "Ljava/lang/String;");

  /// from: static public java.lang.String FEATURE_RELAXED
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// org.xmlpull.v1.XmlPullParser "relaxed" feature name.
  ///@see <a href="http://xmlpull.org/v1/doc/features.html\#relaxed">
  ///  specification</a>
  static jni.JniString get FEATURE_RELAXED => jni.JniString.fromRef(jniAccessors
      .getStaticField(_classRef, _id_FEATURE_RELAXED, jni.JniType.objectType)
      .object);

  /// from: static public java.lang.String FEATURE_RELAXED
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// org.xmlpull.v1.XmlPullParser "relaxed" feature name.
  ///@see <a href="http://xmlpull.org/v1/doc/features.html\#relaxed">
  ///  specification</a>
  static set FEATURE_RELAXED(jni.JniString value) =>
      jniEnv.SetStaticObjectField(
          _classRef, _id_FEATURE_RELAXED, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  Xml()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_parse = jniAccessors.getStaticMethodIDOf(
      _classRef, "parse", "(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V");

  /// from: static public void parse(java.lang.String xml, org.xml.sax.ContentHandler contentHandler)
  ///
  /// Parses the given xml string and fires events on the given SAX handler.
  static void parse(jni.JniString xml, jni.JniObject contentHandler) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_parse,
          jni.JniType.voidType,
          [xml.reference, contentHandler.reference]).check();

  static final _id_parse1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "parse", "(Ljava/io/Reader;Lorg/xml/sax/ContentHandler;)V");

  /// from: static public void parse(java.io.Reader in, org.xml.sax.ContentHandler contentHandler)
  ///
  /// Parses xml from the given reader and fires events on the given SAX
  /// handler.
  static void parse1(jni.JniObject in0, jni.JniObject contentHandler) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_parse1,
          jni.JniType.voidType,
          [in0.reference, contentHandler.reference]).check();

  static final _id_parse2 = jniAccessors.getStaticMethodIDOf(_classRef, "parse",
      "(Ljava/io/InputStream;Landroid/util/Xml\$Encoding;Lorg/xml/sax/ContentHandler;)V");

  /// from: static public void parse(java.io.InputStream in, android.util.Xml.Encoding encoding, org.xml.sax.ContentHandler contentHandler)
  ///
  /// Parses xml from the given input stream and fires events on the given SAX
  /// handler.
  static void parse2(jni.JniObject in0, Xml_Encoding encoding,
          jni.JniObject contentHandler) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_parse2, jni.JniType.voidType, [
        in0.reference,
        encoding.reference,
        contentHandler.reference
      ]).check();

  static final _id_newPullParser = jniAccessors.getStaticMethodIDOf(
      _classRef, "newPullParser", "()Lorg/xmlpull/v1/XmlPullParser;");

  /// from: static public org.xmlpull.v1.XmlPullParser newPullParser()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a new pull parser with namespace support.
  static jni.JniObject newPullParser() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_newPullParser, jni.JniType.objectType, []).object);

  static final _id_newSerializer = jniAccessors.getStaticMethodIDOf(
      _classRef, "newSerializer", "()Lorg/xmlpull/v1/XmlSerializer;");

  /// from: static public org.xmlpull.v1.XmlSerializer newSerializer()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new xml serializer.
  static jni.JniObject newSerializer() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_newSerializer, jni.JniType.objectType, []).object);

  static final _id_findEncodingByName = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "findEncodingByName",
      "(Ljava/lang/String;)Landroid/util/Xml\$Encoding;");

  /// from: static public android.util.Xml.Encoding findEncodingByName(java.lang.String encodingName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Finds an encoding by name. Returns UTF-8 if you pass {@code null}.
  static Xml_Encoding findEncodingByName(jni.JniString encodingName) =>
      Xml_Encoding.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_findEncodingByName,
          jni.JniType.objectType,
          [encodingName.reference]).object);

  static final _id_asAttributeSet = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "asAttributeSet",
      "(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;");

  /// from: static public android.util.AttributeSet asAttributeSet(org.xmlpull.v1.XmlPullParser parser)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return an AttributeSet interface for use with the given XmlPullParser.
  /// If the given parser itself implements AttributeSet, that implementation
  /// is simply returned.  Otherwise a wrapper class is
  /// instantiated on top of the XmlPullParser, as a proxy for retrieving its
  /// attributes, and returned to you.
  ///@param parser The existing parser for which you would like an
  ///               AttributeSet.
  ///@return An AttributeSet you can use to retrieve the
  ///         attribute values at each of the tags as the parser moves
  ///         through its XML document.
  ///@see AttributeSet
  static attributeset_.AttributeSet asAttributeSet(jni.JniObject parser) =>
      attributeset_.AttributeSet.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_asAttributeSet,
          jni.JniType.objectType,
          [parser.reference]).object);
}

/// from: android.util.Xml$Encoding
///
/// Supported character encodings.
class Xml_Encoding extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/util/Xml\$Encoding");
  Xml_Encoding.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/util/Xml\$Encoding;");

  /// from: static public android.util.Xml.Encoding[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef, "valueOf", "(Ljava/lang/String;)Landroid/util/Xml\$Encoding;");

  /// from: static public android.util.Xml.Encoding valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static Xml_Encoding valueOf(jni.JniString name) =>
      Xml_Encoding.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_valueOf, jni.JniType.objectType, [name.reference]).object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: private void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Xml_Encoding()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}