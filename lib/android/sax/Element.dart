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

import "ElementListener.dart" as elementlistener_;

import "TextElementListener.dart" as textelementlistener_;

import "StartElementListener.dart" as startelementlistener_;

import "EndElementListener.dart" as endelementlistener_;

import "EndTextElementListener.dart" as endtextelementlistener_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.sax.Element
///
/// An XML element. Provides access to child elements and hooks to listen
/// for events related to this element.
///@see RootElement
class Element extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/sax/Element");
  Element.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V");

  /// from: void <init>(android.sax.Element parent, java.lang.String uri, java.lang.String localName, int depth)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Element(Element parent, jni.JniString uri, jni.JniString localName, int depth)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          parent.reference,
          uri.reference,
          localName.reference,
          depth
        ]).object);

  static final _id_getChild = jniAccessors.getMethodIDOf(
      _classRef, "getChild", "(Ljava/lang/String;)Landroid/sax/Element;");

  /// from: public android.sax.Element getChild(java.lang.String localName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the child element with the given name. Uses an empty string as the
  /// namespace.
  Element getChild(jni.JniString localName) =>
      Element.fromRef(jniAccessors.callMethodWithArgs(reference, _id_getChild,
          jni.JniType.objectType, [localName.reference]).object);

  static final _id_getChild1 = jniAccessors.getMethodIDOf(_classRef, "getChild",
      "(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;");

  /// from: public android.sax.Element getChild(java.lang.String uri, java.lang.String localName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the child element with the given name.
  Element getChild1(jni.JniString uri, jni.JniString localName) =>
      Element.fromRef(jniAccessors.callMethodWithArgs(reference, _id_getChild1,
          jni.JniType.objectType, [uri.reference, localName.reference]).object);

  static final _id_requireChild = jniAccessors.getMethodIDOf(
      _classRef, "requireChild", "(Ljava/lang/String;)Landroid/sax/Element;");

  /// from: public android.sax.Element requireChild(java.lang.String localName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the child element with the given name. Uses an empty string as the
  /// namespace. We will throw a org.xml.sax.SAXException at parsing
  /// time if the specified child is missing. This helps you ensure that your
  /// listeners are called.
  Element requireChild(jni.JniString localName) =>
      Element.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_requireChild,
          jni.JniType.objectType,
          [localName.reference]).object);

  static final _id_requireChild1 = jniAccessors.getMethodIDOf(
      _classRef,
      "requireChild",
      "(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;");

  /// from: public android.sax.Element requireChild(java.lang.String uri, java.lang.String localName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the child element with the given name. We will throw a
  /// org.xml.sax.SAXException at parsing time if the specified child
  /// is missing. This helps you ensure that your listeners are called.
  Element requireChild1(jni.JniString uri, jni.JniString localName) =>
      Element.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_requireChild1,
          jni.JniType.objectType,
          [uri.reference, localName.reference]).object);

  static final _id_setElementListener = jniAccessors.getMethodIDOf(
      _classRef, "setElementListener", "(Landroid/sax/ElementListener;)V");

  /// from: public void setElementListener(android.sax.ElementListener elementListener)
  ///
  /// Sets start and end element listeners at the same time.
  void setElementListener(elementlistener_.ElementListener elementListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setElementListener,
          jni.JniType.voidType, [elementListener.reference]).check();

  static final _id_setTextElementListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setTextElementListener",
      "(Landroid/sax/TextElementListener;)V");

  /// from: public void setTextElementListener(android.sax.TextElementListener elementListener)
  ///
  /// Sets start and end text element listeners at the same time.
  void setTextElementListener(
          textelementlistener_.TextElementListener elementListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setTextElementListener,
          jni.JniType.voidType, [elementListener.reference]).check();

  static final _id_setStartElementListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setStartElementListener",
      "(Landroid/sax/StartElementListener;)V");

  /// from: public void setStartElementListener(android.sax.StartElementListener startElementListener)
  ///
  /// Sets a listener for the start of this element.
  void setStartElementListener(
          startelementlistener_.StartElementListener startElementListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setStartElementListener,
          jni.JniType.voidType, [startElementListener.reference]).check();

  static final _id_setEndElementListener = jniAccessors.getMethodIDOf(_classRef,
      "setEndElementListener", "(Landroid/sax/EndElementListener;)V");

  /// from: public void setEndElementListener(android.sax.EndElementListener endElementListener)
  ///
  /// Sets a listener for the end of this element.
  void setEndElementListener(
          endelementlistener_.EndElementListener endElementListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setEndElementListener,
          jni.JniType.voidType, [endElementListener.reference]).check();

  static final _id_setEndTextElementListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setEndTextElementListener",
      "(Landroid/sax/EndTextElementListener;)V");

  /// from: public void setEndTextElementListener(android.sax.EndTextElementListener endTextElementListener)
  ///
  /// Sets a listener for the end of this text element.
  void setEndTextElementListener(
          endtextelementlistener_.EndTextElementListener
              endTextElementListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setEndTextElementListener,
          jni.JniType.voidType, [endTextElementListener.reference]).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}