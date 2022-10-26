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

/// from: android.drm.DrmSupportInfo
///
/// An entity class that wraps the capability of each DRM plug-in (agent),
/// such as the MIME type and file suffix the DRM plug-in can handle.
///
/// Plug-in developers can expose the capability of their plug-in by passing an instance of this
/// class to an application.
class DrmSupportInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/drm/DrmSupportInfo");
  DrmSupportInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  DrmSupportInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_addMimeType = jniAccessors.getMethodIDOf(
      _classRef, "addMimeType", "(Ljava/lang/String;)V");

  /// from: public void addMimeType(java.lang.String mimeType)
  ///
  /// Adds the specified MIME type to the list of MIME types this DRM plug-in supports.
  ///@param mimeType MIME type that can be handles by this DRM plug-in.
  /// Must not be null or an empty string.
  void addMimeType(jni.JniString mimeType) => jniAccessors.callMethodWithArgs(
      reference,
      _id_addMimeType,
      jni.JniType.voidType,
      [mimeType.reference]).check();

  static final _id_addFileSuffix = jniAccessors.getMethodIDOf(
      _classRef, "addFileSuffix", "(Ljava/lang/String;)V");

  /// from: public void addFileSuffix(java.lang.String fileSuffix)
  ///
  /// Adds the specified file suffix to the list of file suffixes this DRM plug-in supports.
  ///@param fileSuffix File suffix that can be handled by this DRM plug-in.
  /// it could be null but not an empty string. When it is null, it indicates
  /// that some DRM content comes with no file suffix.
  void addFileSuffix(jni.JniString fileSuffix) =>
      jniAccessors.callMethodWithArgs(reference, _id_addFileSuffix,
          jni.JniType.voidType, [fileSuffix.reference]).check();

  static final _id_getMimeTypeIterator = jniAccessors.getMethodIDOf(
      _classRef, "getMimeTypeIterator", "()Ljava/util/Iterator;");

  /// from: public java.util.Iterator<java.lang.String> getMimeTypeIterator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves an iterator object that you can use to iterate over the MIME types that
  /// this DRM plug-in supports.
  ///@return The iterator object
  jni.JniObject getMimeTypeIterator() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getMimeTypeIterator, jni.JniType.objectType, []).object);

  static final _id_getFileSuffixIterator = jniAccessors.getMethodIDOf(
      _classRef, "getFileSuffixIterator", "()Ljava/util/Iterator;");

  /// from: public java.util.Iterator<java.lang.String> getFileSuffixIterator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves an iterator object that you can use to iterate over the file suffixes that
  /// this DRM plug-in supports.
  ///@return The iterator object.
  jni.JniObject getFileSuffixIterator() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getFileSuffixIterator, jni.JniType.objectType, []).object);

  static final _id_setDescription = jniAccessors.getMethodIDOf(
      _classRef, "setDescription", "(Ljava/lang/String;)V");

  /// from: public void setDescription(java.lang.String description)
  ///
  /// Sets a description for the DRM plug-in (agent).
  ///@param description Unique description of plug-in. Must not be null
  /// or an empty string.
  void setDescription(jni.JniString description) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDescription,
          jni.JniType.voidType, [description.reference]).check();

  static final _id_getDescriprition = jniAccessors.getMethodIDOf(
      _classRef, "getDescriprition", "()Ljava/lang/String;");

  /// from: public java.lang.String getDescriprition()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the DRM plug-in (agent) description.
  ///@return The plug-in description.
  ///@deprecated The method name is mis-spelled, and it is replaced by
  /// \#getDescription().
  jni.JniString getDescriprition() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDescriprition, jni.JniType.objectType, []).object);

  static final _id_getDescription = jniAccessors.getMethodIDOf(
      _classRef, "getDescription", "()Ljava/lang/String;");

  /// from: public java.lang.String getDescription()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the DRM plug-in (agent) description. Even if null or an empty
  /// string is not allowed in \#setDescription(String), if
  /// \#setDescription(String) is not called, description returned
  /// from this method is an empty string.
  ///@return The plug-in description.
  jni.JniString getDescription() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDescription, jni.JniType.objectType, []).object);

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// Overridden hash code implementation.
  ///@return The hash code value.
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object object)
  ///
  /// Overridden <code>equals</code> implementation. Two DrmSupportInfo objects
  /// are considered being equal if they support exactly the same set of mime
  /// types, file suffixes, and has exactly the same description.
  ///@param object The object to be compared.
  ///@return True if equal; false if not equal.
  bool equals1(jni.JniObject object) => jniAccessors.callMethodWithArgs(
      reference,
      _id_equals1,
      jni.JniType.booleanType,
      [object.reference]).boolean;
}