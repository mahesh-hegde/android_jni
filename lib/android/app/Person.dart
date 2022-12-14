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

import "../os/Parcelable.dart" as parcelable_;

import "../graphics/drawable/Icon.dart" as icon_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.Person
///
/// Provides an immutable reference to an entity that appears repeatedly on different surfaces of the
/// platform. For example, this could represent the sender of a message.
class Person extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/app/Person");
  Person.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.Person> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_toBuilder = jniAccessors.getMethodIDOf(
      _classRef, "toBuilder", "()Landroid/app/Person\$Builder;");

  /// from: public android.app.Person.Builder toBuilder()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates and returns a new Builder initialized with this Person's data.
  Person_Builder toBuilder() =>
      Person_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toBuilder, jni.JniType.objectType, []).object);

  static final _id_getUri =
      jniAccessors.getMethodIDOf(_classRef, "getUri", "()Ljava/lang/String;");

  /// from: public java.lang.String getUri()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the uri provided for this person or {@code null} if no Uri was provided.
  jni.JniString getUri() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUri, jni.JniType.objectType, []).object);

  static final _id_getName = jniAccessors.getMethodIDOf(
      _classRef, "getName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the name provided for this person or {@code null} if no name was provided.
  jni.JniObject getName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_getIcon = jniAccessors.getMethodIDOf(
      _classRef, "getIcon", "()Landroid/graphics/drawable/Icon;");

  /// from: public android.graphics.drawable.Icon getIcon()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the icon provided for this person or {@code null} if no icon was provided.
  icon_.Icon getIcon() => icon_.Icon.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getIcon, jni.JniType.objectType, []).object);

  static final _id_getKey =
      jniAccessors.getMethodIDOf(_classRef, "getKey", "()Ljava/lang/String;");

  /// from: public java.lang.String getKey()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the key provided for this person or {@code null} if no key was provided.
  jni.JniString getKey() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getKey, jni.JniType.objectType, []).object);

  static final _id_isBot =
      jniAccessors.getMethodIDOf(_classRef, "isBot", "()Z");

  /// from: public boolean isBot()
  ///
  /// @return whether this Person is a machine.
  bool isBot() => jniAccessors.callMethodWithArgs(
      reference, _id_isBot, jni.JniType.booleanType, []).boolean;

  static final _id_isImportant =
      jniAccessors.getMethodIDOf(_classRef, "isImportant", "()Z");

  /// from: public boolean isImportant()
  ///
  /// @return whether this Person is important.
  bool isImportant() => jniAccessors.callMethodWithArgs(
      reference, _id_isImportant, jni.JniType.booleanType, []).boolean;

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// @param flags Value is either <code>0</code> or a combination of android.os.Parcelable\#PARCELABLE_WRITE_RETURN_VALUE, and android.os.Parcelable.PARCELABLE_ELIDE_DUPLICATES
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}

/// from: android.app.Person$Builder
///
/// Builder for the immutable Person class.
class Person_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/Person\$Builder");
  Person_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new, empty Builder.
  Person_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setName = jniAccessors.getMethodIDOf(_classRef, "setName",
      "(Ljava/lang/CharSequence;)Landroid/app/Person\$Builder;");

  /// from: public android.app.Person.Builder setName(java.lang.CharSequence name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Give this person a name.
  ///@param name the name of this person.
  ///
  /// This value may be {@code null}.
  ///@return This value will never be {@code null}.
  Person_Builder setName(jni.JniObject name) =>
      Person_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setName, jni.JniType.objectType, [name.reference]).object);

  static final _id_setIcon = jniAccessors.getMethodIDOf(_classRef, "setIcon",
      "(Landroid/graphics/drawable/Icon;)Landroid/app/Person\$Builder;");

  /// from: public android.app.Person.Builder setIcon(android.graphics.drawable.Icon icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add an icon for this person.
  /// <br/>
  /// The system will prefer this icon over any images that are resolved from the URI.
  ///@param icon the icon of the person.
  ///
  /// This value may be {@code null}.
  ///@return This value will never be {@code null}.
  Person_Builder setIcon(icon_.Icon icon) =>
      Person_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setIcon, jni.JniType.objectType, [icon.reference]).object);

  static final _id_setUri = jniAccessors.getMethodIDOf(
      _classRef, "setUri", "(Ljava/lang/String;)Landroid/app/Person\$Builder;");

  /// from: public android.app.Person.Builder setUri(java.lang.String uri)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set a URI associated with this person.
  ///
  /// <P>
  /// The person should be specified by the {@code String} representation of a
  /// android.provider.ContactsContract.Contacts\#CONTENT_LOOKUP_URI.
  /// </P>
  ///
  /// <P>The system will also attempt to resolve {@code mailto:} and {@code tel:} schema
  /// URIs. The path part of these URIs must exist in the contacts database, in the
  /// appropriate column, or the reference will be discarded as invalid. Telephone schema
  /// URIs will be resolved by android.provider.ContactsContract.PhoneLookup.
  /// </P>
  ///@param uri a URI for the person.
  ///
  /// This value may be {@code null}.
  ///@return This value will never be {@code null}.
  Person_Builder setUri(jni.JniString uri) =>
      Person_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setUri, jni.JniType.objectType, [uri.reference]).object);

  static final _id_setKey = jniAccessors.getMethodIDOf(
      _classRef, "setKey", "(Ljava/lang/String;)Landroid/app/Person\$Builder;");

  /// from: public android.app.Person.Builder setKey(java.lang.String key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a key to this person in order to uniquely identify it.
  /// This is especially useful if the name doesn't uniquely identify this person or if the
  /// display name is a short handle of the actual name.
  ///
  /// <P>If no key is provided, the name serves as the key for the purpose of
  /// identification.</P>
  ///@param key the key that uniquely identifies this person.
  ///
  /// This value may be {@code null}.
  ///@return This value will never be {@code null}.
  Person_Builder setKey(jni.JniString key) =>
      Person_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setKey, jni.JniType.objectType, [key.reference]).object);

  static final _id_setImportant = jniAccessors.getMethodIDOf(
      _classRef, "setImportant", "(Z)Landroid/app/Person\$Builder;");

  /// from: public android.app.Person.Builder setImportant(boolean isImportant)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets whether this is an important person. Use this method to denote users who frequently
  /// interact with the user of this device when \#setUri(String) isn't provided with
  /// android.provider.ContactsContract.Contacts\#CONTENT_LOOKUP_URI, and instead with
  /// the {@code mailto:} or {@code tel:} schemas.
  ///@param isImportant {@code true} if this is an important person, {@code false} otherwise.
  ///@return This value will never be {@code null}.
  Person_Builder setImportant(bool isImportant) =>
      Person_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setImportant, jni.JniType.objectType, [isImportant]).object);

  static final _id_setBot = jniAccessors.getMethodIDOf(
      _classRef, "setBot", "(Z)Landroid/app/Person\$Builder;");

  /// from: public android.app.Person.Builder setBot(boolean isBot)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets whether this person is a machine rather than a human.
  ///@param isBot {@code true} if this person is a machine, {@code false} otherwise.
  ///@return This value will never be {@code null}.
  Person_Builder setBot(bool isBot) =>
      Person_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setBot, jni.JniType.objectType, [isBot]).object);

  static final _id_build =
      jniAccessors.getMethodIDOf(_classRef, "build", "()Landroid/app/Person;");

  /// from: public android.app.Person build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates and returns the Person this builder represents.
  ///@return This value will never be {@code null}.
  Person build() => Person.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_build, jni.JniType.objectType, []).object);
}
