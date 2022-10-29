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

import "Element.dart" as element_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.sax.RootElement
///
/// The root XML element. The entry point for this API. Not safe for concurrent
/// use.
///
/// For example, passing this XML:
///
/// <pre>
/// &lt;feed xmlns='http://www.w3.org/2005/Atom'>
///   &lt;entry>
///     &lt;id>bob&lt;/id>
///   &lt;/entry>
/// &lt;/feed>
/// </pre>
///
/// to this code:
///
/// <pre>
/// static final String ATOM_NAMESPACE = "http://www.w3.org/2005/Atom";
///
/// ...
///
/// RootElement root = new RootElement(ATOM_NAMESPACE, "feed");
/// Element entry = root.getChild(ATOM_NAMESPACE, "entry");
/// entry.getChild(ATOM_NAMESPACE, "id").setEndTextElementListener(
///   new EndTextElementListener() {
///     public void end(String body) {
///       System.out.println("Entry ID: " + body);
///     }
///   });
///
/// XMLReader reader = ...;
/// reader.setContentHandler(root.getContentHandler());
/// reader.parse(...);
/// </pre>
///
/// would output:
///
/// <pre>
/// Entry ID: bob
/// </pre>
class RootElement extends element_.Element {
  static final _classRef = jniAccessors.getClassOf("android/sax/RootElement");
  RootElement.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String uri, java.lang.String localName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new root element with the given name.
  ///@param uri the namespace
  ///@param localName the local name
  RootElement(jni.JniString uri, jni.JniString localName)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [uri.reference, localName.reference]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String localName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a new root element with the given name. Uses an empty string
  /// as the namespace.
  ///@param localName the local name
  RootElement.ctor1(jni.JniString localName)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [localName.reference]).object);

  static final _id_getContentHandler = jniAccessors.getMethodIDOf(
      _classRef, "getContentHandler", "()Lorg/xml/sax/ContentHandler;");

  /// from: public org.xml.sax.ContentHandler getContentHandler()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the SAX {@code ContentHandler}. Pass this to your SAX parser.
  jni.JniObject getContentHandler() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getContentHandler, jni.JniType.objectType, []).object);
}
