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

import "Property.dart" as property_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.util.FloatProperty
///
/// An implementation of android.util.Property to be used specifically with fields of type
/// <code>float</code>. This type-specific subclass enables performance benefit by allowing
/// calls to a \#setValue(Object, float) setValue() function that takes the primitive
/// <code>float</code> type and avoids autoboxing and other overhead associated with the
/// <code>Float</code> class.
///@param <T> The class on which the Property is declared.
class FloatProperty extends property_.Property {
  static final _classRef =
      jniAccessors.getClassOf("android/util/FloatProperty");
  FloatProperty.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  FloatProperty.ctor1(jni.JniString name)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [name.reference]).object);
}
