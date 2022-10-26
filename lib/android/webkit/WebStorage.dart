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

import "ValueCallback.dart" as valuecallback_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.webkit.WebStorage
///
/// This class is used to manage the JavaScript storage APIs provided by the
/// WebView. It manages the Application Cache API, the Web SQL Database
/// API and the HTML5 Web Storage API.
///
/// The Application Cache API provides a mechanism to create and maintain an
/// application cache to power offline Web applications. Use of the Application
/// Cache API can be attributed to an origin WebStorage.Origin, however
/// it is not possible to set per-origin quotas. Note that there can be only
/// one application cache per application.
///
/// The Web SQL Database API provides storage which is private to a given origin.
/// Similar to the Application Cache, use of the Web SQL Database can be attributed
/// to an origin. It is also possible to set per-origin quotas.
class WebStorage extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/webkit/WebStorage");
  WebStorage.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This class should not be instantiated directly, applications must only use
  /// \#getInstance() to obtain the instance.
  /// Note this constructor was erroneously public and published in SDK levels prior to 16, but
  /// applications using it would receive a non-functional instance of this class (there was no
  /// way to call createHandler() and createUIHandler(), so it would not work).
  ///@hide
  WebStorage()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getOrigins = jniAccessors.getMethodIDOf(
      _classRef, "getOrigins", "(Landroid/webkit/ValueCallback;)V");

  /// from: public void getOrigins(android.webkit.ValueCallback<java.util.Map> callback)
  ///
  /// Gets the origins currently using either the Application Cache or Web SQL
  /// Database APIs. This method operates asynchronously, with the result
  /// being provided via a ValueCallback. The origins are provided as
  /// a map, of type {@code Map<String, WebStorage.Origin>}, from the string
  /// representation of the origin to a WebStorage.Origin object.
  void getOrigins(valuecallback_.ValueCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_getOrigins,
          jni.JniType.voidType, [callback.reference]).check();

  static final _id_getUsageForOrigin = jniAccessors.getMethodIDOf(
      _classRef,
      "getUsageForOrigin",
      "(Ljava/lang/String;Landroid/webkit/ValueCallback;)V");

  /// from: public void getUsageForOrigin(java.lang.String origin, android.webkit.ValueCallback<java.lang.Long> callback)
  ///
  /// Gets the amount of storage currently being used by both the Application
  /// Cache and Web SQL Database APIs by the given origin. The amount is given
  /// in bytes and the origin is specified using its string representation.
  /// This method operates asynchronously, with the result being provided via
  /// a ValueCallback.
  void getUsageForOrigin(
          jni.JniString origin, valuecallback_.ValueCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_getUsageForOrigin,
          jni.JniType.voidType, [origin.reference, callback.reference]).check();

  static final _id_getQuotaForOrigin = jniAccessors.getMethodIDOf(
      _classRef,
      "getQuotaForOrigin",
      "(Ljava/lang/String;Landroid/webkit/ValueCallback;)V");

  /// from: public void getQuotaForOrigin(java.lang.String origin, android.webkit.ValueCallback<java.lang.Long> callback)
  ///
  /// Gets the storage quota for the Web SQL Database API for the given origin.
  /// The quota is given in bytes and the origin is specified using its string
  /// representation. This method operates asynchronously, with the result
  /// being provided via a ValueCallback. Note that a quota is not
  /// enforced on a per-origin basis for the Application Cache API.
  void getQuotaForOrigin(
          jni.JniString origin, valuecallback_.ValueCallback callback) =>
      jniAccessors.callMethodWithArgs(reference, _id_getQuotaForOrigin,
          jni.JniType.voidType, [origin.reference, callback.reference]).check();

  static final _id_setQuotaForOrigin = jniAccessors.getMethodIDOf(
      _classRef, "setQuotaForOrigin", "(Ljava/lang/String;J)V");

  /// from: public void setQuotaForOrigin(java.lang.String origin, long quota)
  ///
  /// Sets the storage quota for the Web SQL Database API for the given origin.
  /// The quota is specified in bytes and the origin is specified using its string
  /// representation. Note that a quota is not enforced on a per-origin basis
  /// for the Application Cache API.
  ///@deprecated Controlling quota per-origin will not be supported in future.
  void setQuotaForOrigin(jni.JniString origin, int quota) =>
      jniAccessors.callMethodWithArgs(reference, _id_setQuotaForOrigin,
          jni.JniType.voidType, [origin.reference, quota]).check();

  static final _id_deleteOrigin = jniAccessors.getMethodIDOf(
      _classRef, "deleteOrigin", "(Ljava/lang/String;)V");

  /// from: public void deleteOrigin(java.lang.String origin)
  ///
  /// Clears the storage currently being used by both the Application Cache and
  /// Web SQL Database APIs by the given origin. The origin is specified using
  /// its string representation.
  void deleteOrigin(jni.JniString origin) => jniAccessors.callMethodWithArgs(
      reference,
      _id_deleteOrigin,
      jni.JniType.voidType,
      [origin.reference]).check();

  static final _id_deleteAllData =
      jniAccessors.getMethodIDOf(_classRef, "deleteAllData", "()V");

  /// from: public void deleteAllData()
  ///
  /// Clears all storage currently being used by the JavaScript storage APIs.
  /// This includes the Application Cache, Web SQL Database and the HTML5 Web
  /// Storage APIs.
  void deleteAllData() => jniAccessors.callMethodWithArgs(
      reference, _id_deleteAllData, jni.JniType.voidType, []).check();

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef, "getInstance", "()Landroid/webkit/WebStorage;");

  /// from: static public android.webkit.WebStorage getInstance()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the singleton instance of this class.
  ///@return the singleton WebStorage instance
  static WebStorage getInstance() =>
      WebStorage.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getInstance, jni.JniType.objectType, []).object);
}

/// from: android.webkit.WebStorage$QuotaUpdater
///
/// Encapsulates a callback function which is used to provide a new quota
/// for a JavaScript storage API.
/// See
/// WebChromeClient\#onExceededDatabaseQuota and
/// WebChromeClient\#onReachedMaxAppCacheSize.
///@deprecated This class is obsolete and no longer used.
class WebStorage_QuotaUpdater extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/WebStorage\$QuotaUpdater");
  WebStorage_QuotaUpdater.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_updateQuota =
      jniAccessors.getMethodIDOf(_classRef, "updateQuota", "(J)V");

  /// from: public abstract void updateQuota(long newQuota)
  ///
  /// Provides a new quota, specified in bytes.
  ///@param newQuota the new quota, in bytes
  void updateQuota(int newQuota) => jniAccessors.callMethodWithArgs(
      reference, _id_updateQuota, jni.JniType.voidType, [newQuota]).check();
}

/// from: android.webkit.WebStorage$Origin
///
/// This class encapsulates information about the amount of storage
/// currently used by an origin for the JavaScript storage APIs.
/// An origin comprises the host, scheme and port of a URI.
/// See WebStorage for details.
class WebStorage_Origin extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/WebStorage\$Origin");
  WebStorage_Origin.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;JJ)V");

  /// from: void <init>(java.lang.String origin, long quota, long usage)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  WebStorage_Origin(jni.JniString origin, int quota, int usage)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [origin.reference, quota, usage]).object);

  static final _id_getOrigin = jniAccessors.getMethodIDOf(
      _classRef, "getOrigin", "()Ljava/lang/String;");

  /// from: public java.lang.String getOrigin()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the string representation of this origin.
  ///@return the string representation of this origin
  jni.JniString getOrigin() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getOrigin, jni.JniType.objectType, []).object);

  static final _id_getQuota =
      jniAccessors.getMethodIDOf(_classRef, "getQuota", "()J");

  /// from: public long getQuota()
  ///
  /// Gets the quota for this origin, for the Web SQL Database API, in
  /// bytes. If this origin does not use the Web SQL Database API, this
  /// quota will be set to zero.
  ///@return the quota, in bytes
  int getQuota() => jniAccessors.callMethodWithArgs(
      reference, _id_getQuota, jni.JniType.longType, []).long;

  static final _id_getUsage =
      jniAccessors.getMethodIDOf(_classRef, "getUsage", "()J");

  /// from: public long getUsage()
  ///
  /// Gets the total amount of storage currently being used by this origin,
  /// for all JavaScript storage APIs, in bytes.
  ///@return the total amount of storage, in bytes
  int getUsage() => jniAccessors.callMethodWithArgs(
      reference, _id_getUsage, jni.JniType.longType, []).long;
}