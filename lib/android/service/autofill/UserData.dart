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

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;

import "../../os/Bundle.dart" as bundle_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.autofill.UserData
///
/// Defines the user data used for
/// <a href="AutofillService.html\#FieldClassification">field classification</a>.
class UserData extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/autofill/UserData");
  UserData.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.service.autofill.UserData> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getFieldClassificationAlgorithm = jniAccessors.getMethodIDOf(
      _classRef, "getFieldClassificationAlgorithm", "()Ljava/lang/String;");

  /// from: public java.lang.String getFieldClassificationAlgorithm()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the name of the algorithm that is used to calculate
  /// Match\#getScore() match scores.
  ///@return This value may be {@code null}.
  jni.JniString getFieldClassificationAlgorithm() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getFieldClassificationAlgorithm,
          jni.JniType.objectType, []).object);

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()Ljava/lang/String;");

  /// from: public java.lang.String getId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the id.
  jni.JniString getId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getId, jni.JniType.objectType, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel parcel, int flags)
  void writeToParcel(parcel_.Parcel parcel, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [parcel.reference, flags]).check();

  static final _id_getMaxUserDataSize =
      jniAccessors.getStaticMethodIDOf(_classRef, "getMaxUserDataSize", "()I");

  /// from: static public int getMaxUserDataSize()
  ///
  /// Gets the maximum number of values that can be added to a UserData.
  static int getMaxUserDataSize() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getMaxUserDataSize, jni.JniType.intType, []).integer;

  static final _id_getMaxFieldClassificationIdsSize =
      jniAccessors.getStaticMethodIDOf(
          _classRef, "getMaxFieldClassificationIdsSize", "()I");

  /// from: static public int getMaxFieldClassificationIdsSize()
  ///
  /// Gets the maximum number of ids that can be passed to FillResponse.Builder\#setFieldClassificationIds(android.view.autofill.AutofillId...).
  static int getMaxFieldClassificationIdsSize() =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getMaxFieldClassificationIdsSize,
          jni.JniType.intType, []).integer;

  static final _id_getMaxCategoryCount =
      jniAccessors.getStaticMethodIDOf(_classRef, "getMaxCategoryCount", "()I");

  /// from: static public int getMaxCategoryCount()
  ///
  /// Gets the maximum number of unique category ids that can be passed to
  /// the builder's constructor and Builder\#add(String, String).
  static int getMaxCategoryCount() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getMaxCategoryCount, jni.JniType.intType, []).integer;

  static final _id_getMinValueLength =
      jniAccessors.getStaticMethodIDOf(_classRef, "getMinValueLength", "()I");

  /// from: static public int getMinValueLength()
  ///
  /// Gets the minimum length of values passed to the builder's constructor or
  /// or Builder\#add(String, String).
  static int getMinValueLength() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getMinValueLength, jni.JniType.intType, []).integer;

  static final _id_getMaxValueLength =
      jniAccessors.getStaticMethodIDOf(_classRef, "getMaxValueLength", "()I");

  /// from: static public int getMaxValueLength()
  ///
  /// Gets the maximum length of values passed to the builder's constructor or
  /// or Builder\#add(String, String).
  static int getMaxValueLength() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getMaxValueLength, jni.JniType.intType, []).integer;
}

/// from: android.service.autofill.UserData$Builder
///
/// A builder for UserData objects.
class UserData_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/autofill/UserData\$Builder");
  UserData_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String id, java.lang.String value, java.lang.String categoryId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new builder for the user data used for <a href="\#FieldClassification">field
  /// classification</a>.
  ///
  /// The user data must contain at least one pair of {@code value} -> {@code categoryId},
  /// and more pairs can be added through the \#add(String, String) method. For example:
  ///
  /// <pre class="prettyprint">
  /// new UserData.Builder("v1", "Bart Simpson", "name")
  ///   .add("bart.simpson@example.com", "email")
  ///   .add("el_barto@example.com", "email")
  ///   .build();
  /// </pre>
  ///@param id id used to identify the whole UserData object. This id is also returned
  /// by AutofillManager\#getUserDataId(), which can be used to check if the
  /// UserData is up-to-date without fetching the whole object (through
  /// AutofillManager\#getUserData()).
  ///
  /// This value must never be {@code null}.
  ///@param value value of the user data.
  /// This value must never be {@code null}.
  ///@param categoryId string used to identify the category the value is associated with.
  ///
  /// This value must never be {@code null}.
  ///@throws IllegalArgumentException if any of the following occurs:
  /// <ul>
  ///   <li>{@code id} is empty</li>
  ///   <li>{@code categoryId} is empty</li>
  ///   <li>{@code value} is empty</li>
  ///   <li>the length of {@code value} is lower than UserData\#getMinValueLength()</li>
  ///   <li>the length of {@code value} is higher than
  ///       UserData\#getMaxValueLength()</li>
  /// </ul>
  UserData_Builder(
      jni.JniString id, jni.JniString value, jni.JniString categoryId)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [id.reference, value.reference, categoryId.reference]).object);

  static final _id_setFieldClassificationAlgorithm = jniAccessors.getMethodIDOf(
      _classRef,
      "setFieldClassificationAlgorithm",
      "(Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData\$Builder;");

  /// from: public android.service.autofill.UserData.Builder setFieldClassificationAlgorithm(java.lang.String name, android.os.Bundle args)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the algorithm used for <a href="\#FieldClassification">field classification</a>.
  ///
  /// The currently available algorithms can be retrieve through
  /// AutofillManager\#getAvailableFieldClassificationAlgorithms().
  ///
  /// If not set, the
  /// AutofillManager\#getDefaultFieldClassificationAlgorithm() default algorithm is
  /// used instead.
  ///@param name name of the algorithm or {@code null} to used default.
  /// This value may be {@code null}.
  ///@param args optional arguments to the algorithm.
  ///
  /// This value may be {@code null}.
  ///@return this builder
  UserData_Builder setFieldClassificationAlgorithm(
          jni.JniString name, bundle_.Bundle args) =>
      UserData_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setFieldClassificationAlgorithm,
          jni.JniType.objectType,
          [name.reference, args.reference]).object);

  static final _id_add = jniAccessors.getMethodIDOf(_classRef, "add",
      "(Ljava/lang/String;Ljava/lang/String;)Landroid/service/autofill/UserData\$Builder;");

  /// from: public android.service.autofill.UserData.Builder add(java.lang.String value, java.lang.String categoryId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds a new value for user data.
  ///@param value value of the user data.
  /// This value must never be {@code null}.
  ///@param categoryId string used to identify the category the value is associated with.
  ///
  /// This value must never be {@code null}.
  ///@throws IllegalStateException if:
  /// <ul>
  ///   <li>\#build() already called</li>
  ///   <li>the {@code value} has already been added</li>
  ///   <li>the number of unique {@code categoryId} values added so far is more than
  ///       UserData\#getMaxCategoryCount()</li>
  ///   <li>the number of {@code values} added so far is is more than
  ///       UserData\#getMaxUserDataSize()</li>
  /// </ul>
  ///@throws IllegalArgumentException if any of the following occurs:
  /// <ul>
  ///   <li>{@code id} is empty</li>
  ///   <li>{@code categoryId} is empty</li>
  ///   <li>{@code value} is empty</li>
  ///   <li>the length of {@code value} is lower than UserData\#getMinValueLength()</li>
  ///   <li>the length of {@code value} is higher than
  ///       UserData\#getMaxValueLength()</li>
  /// </ul>
  UserData_Builder add(jni.JniString value, jni.JniString categoryId) =>
      UserData_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_add,
          jni.JniType.objectType,
          [value.reference, categoryId.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/service/autofill/UserData;");

  /// from: public android.service.autofill.UserData build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new UserData instance.
  ///
  /// You should not interact with this builder once this method is called.
  ///@throws IllegalStateException if \#build() was already called.
  ///@return The built dataset.
  UserData build() => UserData.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_build, jni.JniType.objectType, []).object);
}
