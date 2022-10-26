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

import "Validator.dart" as validator_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.autofill.Validators
///
/// Factory for Validator operations.
///
/// See SaveInfo.Builder\#setValidator(Validator) for examples.
class Validators extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/autofill/Validators");
  Validators.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Validators()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_and = jniAccessors.getStaticMethodIDOf(_classRef, "and",
      "([Landroid/service/autofill/Validator;)Landroid/service/autofill/Validator;");

  /// from: static public android.service.autofill.Validator and(android.service.autofill.Validator[] validators)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a validator that is only valid if all {@code validators} are valid.
  ///
  /// Used to represent an {@code AND} boolean operation in a chain of validators.
  ///@throws IllegalArgumentException if any element of {@code validators} is an instance of a
  /// class that is not provided by the Android System.
  ///@param validators This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  static validator_.Validator and(jni.JniObject validators) =>
      validator_.Validator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_and,
          jni.JniType.objectType,
          [validators.reference]).object);

  static final _id_or = jniAccessors.getStaticMethodIDOf(_classRef, "or",
      "([Landroid/service/autofill/Validator;)Landroid/service/autofill/Validator;");

  /// from: static public android.service.autofill.Validator or(android.service.autofill.Validator[] validators)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a validator that is valid if any of the {@code validators} is valid.
  ///
  /// Used to represent an {@code OR} boolean operation in a chain of validators.
  ///@throws IllegalArgumentException if any element of {@code validators} is an instance of a
  /// class that is not provided by the Android System.
  ///@param validators This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  static validator_.Validator or(jni.JniObject validators) =>
      validator_.Validator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_or,
          jni.JniType.objectType,
          [validators.reference]).object);

  static final _id_not = jniAccessors.getStaticMethodIDOf(_classRef, "not",
      "(Landroid/service/autofill/Validator;)Landroid/service/autofill/Validator;");

  /// from: static public android.service.autofill.Validator not(android.service.autofill.Validator validator)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a validator that is valid when {@code validator} is not, and vice versa.
  ///
  /// Used to represent a {@code NOT} boolean operation in a chain of validators.
  ///@throws IllegalArgumentException if {@code validator} is an instance of a class that is not
  /// provided by the Android System.
  ///@param validator This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  static validator_.Validator not(validator_.Validator validator) =>
      validator_.Validator.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_not,
          jni.JniType.objectType,
          [validator.reference]).object);
}