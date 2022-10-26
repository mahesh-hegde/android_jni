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

/// from: android.drm.DrmInfoRequest
///
/// An entity class that is used to pass information to an online DRM server. An instance of this
/// class is passed to the DrmManagerClient\#acquireDrmInfo acquireDrmInfo() method to get an
/// instance of a DrmInfo.
class DrmInfoRequest extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/drm/DrmInfoRequest");
  DrmInfoRequest.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACCOUNT_ID
  ///
  /// Key that is used to pass the unique session ID for the account or the user.
  static const ACCOUNT_ID = "account_id";

  /// from: static public final java.lang.String SUBSCRIPTION_ID
  ///
  /// Key that is used to pass the unique session ID for the subscription.
  static const SUBSCRIPTION_ID = "subscription_id";

  /// from: static public final int TYPE_REGISTRATION_INFO
  ///
  /// Acquires DRM server registration information.
  static const TYPE_REGISTRATION_INFO = 1;

  /// from: static public final int TYPE_RIGHTS_ACQUISITION_INFO
  ///
  /// Acquires rights information.
  static const TYPE_RIGHTS_ACQUISITION_INFO = 3;

  /// from: static public final int TYPE_RIGHTS_ACQUISITION_PROGRESS_INFO
  ///
  /// Acquires the progress of the rights acquisition.
  static const TYPE_RIGHTS_ACQUISITION_PROGRESS_INFO = 4;

  /// from: static public final int TYPE_UNREGISTRATION_INFO
  ///
  /// Acquires information for unregistering the DRM server.
  static const TYPE_UNREGISTRATION_INFO = 2;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(ILjava/lang/String;)V");

  /// from: public void <init>(int infoType, java.lang.String mimeType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a <code>DrmInfoRequest</code> object with type and MIME type.
  ///@param infoType Type of information.
  ///@param mimeType MIME type.
  DrmInfoRequest(int infoType, jni.JniString mimeType)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [infoType, mimeType.reference]).object);

  static final _id_getMimeType = jniAccessors.getMethodIDOf(
      _classRef, "getMimeType", "()Ljava/lang/String;");

  /// from: public java.lang.String getMimeType()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the MIME type associated with this object.
  ///@return The MIME type.
  jni.JniString getMimeType() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMimeType, jni.JniType.objectType, []).object);

  static final _id_getInfoType =
      jniAccessors.getMethodIDOf(_classRef, "getInfoType", "()I");

  /// from: public int getInfoType()
  ///
  /// Retrieves the information type associated with this object.
  ///@return The information type.
  int getInfoType() => jniAccessors.callMethodWithArgs(
      reference, _id_getInfoType, jni.JniType.intType, []).integer;

  static final _id_put = jniAccessors.getMethodIDOf(
      _classRef, "put", "(Ljava/lang/String;Ljava/lang/Object;)V");

  /// from: public void put(java.lang.String key, java.lang.Object value)
  ///
  /// Adds optional information as key-value pairs to this object.
  ///@param key The key to add.
  ///@param value The value to add.
  void put(jni.JniString key, jni.JniObject value) =>
      jniAccessors.callMethodWithArgs(reference, _id_put, jni.JniType.voidType,
          [key.reference, value.reference]).check();

  static final _id_get0 = jniAccessors.getMethodIDOf(
      _classRef, "get", "(Ljava/lang/String;)Ljava/lang/Object;");

  /// from: public java.lang.Object get(java.lang.String key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the value of a given key.
  ///@param key The key whose value is being retrieved.
  ///@return The value of the key that is being retrieved. Returns null if the key cannot be
  /// found.
  jni.JniObject get0(jni.JniString key) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_get0, jni.JniType.objectType, [key.reference]).object);

  static final _id_keyIterator = jniAccessors.getMethodIDOf(
      _classRef, "keyIterator", "()Ljava/util/Iterator;");

  /// from: public java.util.Iterator<java.lang.String> keyIterator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves an iterator object that you can use to iterate over the keys associated with
  /// this <code>DrmInfoRequest</code> object.
  ///@return The iterator object.
  jni.JniObject keyIterator() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_keyIterator, jni.JniType.objectType, []).object);

  static final _id_iterator = jniAccessors.getMethodIDOf(
      _classRef, "iterator", "()Ljava/util/Iterator;");

  /// from: public java.util.Iterator<java.lang.Object> iterator()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves an iterator object that you can use to iterate over the values associated with
  /// this <code>DrmInfoRequest</code> object.
  ///@return The iterator object.
  jni.JniObject iterator() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_iterator, jni.JniType.objectType, []).object);
}
