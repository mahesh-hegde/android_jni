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

import "../content/Intent.dart" as intent_;

import "../app/Activity.dart" as activity_;

import "KeyChainAliasCallback.dart" as keychainaliascallback_;

import "../net/Uri.dart" as uri_;

import "../content/Context.dart" as context_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.security.KeyChain
///
/// The {@code KeyChain} class provides access to private keys and
/// their corresponding certificate chains in credential storage.
///
/// Applications accessing the {@code KeyChain} normally go through
/// these steps:
///
/// <ol>
///
/// <li>Receive a callback from an javax.net.ssl.X509KeyManager X509KeyManager that a private key is requested.
///
/// <li>Call \#choosePrivateKeyAlias choosePrivateKeyAlias to allow the user to select from a
/// list of currently available private keys and corresponding
/// certificate chains. The chosen alias will be returned by the
/// callback KeyChainAliasCallback\#alias, or null if no private
/// key is available or the user cancels the request.
///
/// <li>Call \#getPrivateKey and \#getCertificateChain to
/// retrieve the credentials to return to the corresponding javax.net.ssl.X509KeyManager callbacks.
///
/// </ol>
///
/// An application may remember the value of a selected alias to
/// avoid prompting the user with \#choosePrivateKeyAlias choosePrivateKeyAlias on subsequent connections. If the alias is
/// no longer valid, null will be returned on lookups using that value
///
/// An application can request the installation of private keys and
/// certificates via the {@code Intent} provided by \#createInstallIntent. Private keys installed via this {@code
/// Intent} will be accessible via \#choosePrivateKeyAlias while
/// Certificate Authority (CA) certificates will be trusted by all
/// applications through the default {@code X509TrustManager}.
class KeyChain extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/security/KeyChain");
  KeyChain.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_KEYCHAIN_CHANGED
  ///
  /// Broadcast Action: Indicates the contents of the keychain has changed. Sent when a KeyChain
  /// entry is added, modified or removed.
  static const ACTION_KEYCHAIN_CHANGED =
      "android.security.action.KEYCHAIN_CHANGED";

  /// from: static public final java.lang.String ACTION_KEY_ACCESS_CHANGED
  ///
  /// Broadcast Action: Indicates that the access permissions for a private key have changed.
  static const ACTION_KEY_ACCESS_CHANGED =
      "android.security.action.KEY_ACCESS_CHANGED";

  /// from: static public final java.lang.String ACTION_STORAGE_CHANGED
  ///
  /// Broadcast Action: Indicates the trusted storage has changed. Sent when
  /// one of this happens:
  ///
  /// <ul>
  /// <li>a new CA is added,
  /// <li>an existing CA is removed or disabled,
  /// <li>a disabled CA is enabled,
  /// <li>trusted storage is reset (all user certs are cleared),
  /// <li>when permission to access a private key is changed.
  /// </ul>
  ///@deprecated Use \#ACTION_KEYCHAIN_CHANGED, \#ACTION_TRUST_STORE_CHANGED or
  /// \#ACTION_KEY_ACCESS_CHANGED. Apps that target a version higher than
  /// Build.VERSION_CODES\#N_MR1 will only receive this broadcast if they register for it
  /// at runtime.
  static const ACTION_STORAGE_CHANGED = "android.security.STORAGE_CHANGED";

  /// from: static public final java.lang.String ACTION_TRUST_STORE_CHANGED
  ///
  /// Broadcast Action: Indicates the contents of the trusted certificate store has changed. Sent
  /// when one the following occurs:
  ///
  /// <ul>
  /// <li>A pre-installed CA is disabled or re-enabled</li>
  /// <li>A CA is added or removed from the trust store</li>
  /// </ul>
  static const ACTION_TRUST_STORE_CHANGED =
      "android.security.action.TRUST_STORE_CHANGED";

  /// from: static public final java.lang.String EXTRA_CERTIFICATE
  ///
  /// Optional extra to specify an X.509 certificate to install on
  /// the {@code Intent} returned by \#createInstallIntent.
  /// The extra value should be a PEM or ASN.1 DER encoded {@code
  /// byte[]}. An X509Certificate can be converted to DER
  /// encoded bytes with X509Certificate\#getEncoded.
  ///
  /// \#EXTRA_NAME may be used to provide a default alias
  /// name for the installed certificate.
  static const EXTRA_CERTIFICATE = "CERT";

  /// from: static public final java.lang.String EXTRA_KEY_ACCESSIBLE
  ///
  /// Used as a boolean extra field in \#ACTION_KEY_ACCESS_CHANGED to supply if the key is
  /// accessible to the application.
  static const EXTRA_KEY_ACCESSIBLE = "android.security.extra.KEY_ACCESSIBLE";

  /// from: static public final java.lang.String EXTRA_KEY_ALIAS
  ///
  /// Used as a String extra field in \#ACTION_KEY_ACCESS_CHANGED to supply the alias of
  /// the key.
  static const EXTRA_KEY_ALIAS = "android.security.extra.KEY_ALIAS";

  /// from: static public final java.lang.String EXTRA_NAME
  ///
  /// Optional extra to specify a {@code String} credential name on
  /// the {@code Intent} returned by \#createInstallIntent.
  static const EXTRA_NAME = "name";

  /// from: static public final java.lang.String EXTRA_PKCS12
  ///
  /// Optional extra for use with the {@code Intent} returned by
  /// \#createInstallIntent to specify a PKCS\#12 key store to
  /// install. The extra value should be a {@code byte[]}. The bytes
  /// may come from an external source or be generated with java.security.KeyStore\#store on a "PKCS12" instance.
  ///
  /// The user will be prompted for the password to load the key store.
  ///
  /// The key store will be scanned for java.security.KeyStore.PrivateKeyEntry entries and both the
  /// private key and associated certificate chain will be installed.
  ///
  /// \#EXTRA_NAME may be used to provide a default alias
  /// name for the installed credentials.
  static const EXTRA_PKCS12 = "PKCS12";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  KeyChain()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_createInstallIntent = jniAccessors.getStaticMethodIDOf(
      _classRef, "createInstallIntent", "()Landroid/content/Intent;");

  /// from: static public android.content.Intent createInstallIntent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an {@code Intent} that can be used for credential
  /// installation. The intent may be used without any extras, in
  /// which case the user will be able to install credentials from
  /// their own source.
  ///
  /// Alternatively, \#EXTRA_CERTIFICATE or \#EXTRA_PKCS12 maybe used to specify the bytes of an X.509
  /// certificate or a PKCS\#12 key store for installation. These
  /// extras may be combined with \#EXTRA_NAME to provide a
  /// default alias name for credentials being installed.
  ///
  /// When used with Activity\#startActivityForResult,
  /// Activity\#RESULT_OK will be returned if a credential was
  /// successfully installed, otherwise Activity\#RESULT_CANCELED will be returned.
  ///@return This value will never be {@code null}.
  static intent_.Intent createInstallIntent() =>
      intent_.Intent.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_createInstallIntent, jni.JniType.objectType, []).object);

  static final _id_choosePrivateKeyAlias = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "choosePrivateKeyAlias",
      "(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V");

  /// from: static public void choosePrivateKeyAlias(android.app.Activity activity, android.security.KeyChainAliasCallback response, java.lang.String[] keyTypes, java.security.Principal[] issuers, java.lang.String host, int port, java.lang.String alias)
  ///
  /// Launches an {@code Activity} for the user to select the alias
  /// for a private key and certificate pair for authentication. The
  /// selected alias or null will be returned via the
  /// KeyChainAliasCallback callback.
  ///
  /// A device policy controller (as a device or profile owner) can
  /// intercept the request before the activity is shown, to pick a
  /// specific private key alias by implementing
  /// android.app.admin.DeviceAdminReceiver\#onChoosePrivateKeyAlias onChoosePrivateKeyAlias.
  ///
  /// {@code keyTypes} and {@code issuers} may be used to
  /// highlight suggested choices to the user, although to cope with
  /// sometimes erroneous values provided by servers, the user may be
  /// able to override these suggestions.
  ///
  /// {@code host} and {@code port} may be used to give the user
  /// more context about the server requesting the credentials.
  ///
  /// {@code alias} allows the caller to preselect an existing
  /// alias which will still be subject to user confirmation.
  ///@param activity The Activity context to use for
  ///     launching the new sub-Activity to prompt the user to select
  ///     a private key; used only to call startActivity(); must not
  ///     be null.
  /// This value must never be {@code null}.
  ///@param response Callback to invoke when the request completes;
  ///     must not be null.
  /// This value must never be {@code null}.
  ///@param keyTypes The acceptable types of asymmetric keys such as
  ///     "RSA" or "DSA", or null.
  /// This value may be {@code null}.
  /// Value is android.security.keystore.KeyProperties\#KEY_ALGORITHM_RSA, android.security.keystore.KeyProperties\#KEY_ALGORITHM_EC, android.security.keystore.KeyProperties\#KEY_ALGORITHM_AES, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA1, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA224, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA256, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA384, or android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA512
  ///@param issuers The acceptable certificate issuers for the
  ///     certificate matching the private key, or null.
  /// This value may be {@code null}.
  ///@param host The host name of the server requesting the
  ///     certificate, or null if unavailable.
  /// This value may be {@code null}.
  ///@param port The port number of the server requesting the
  ///     certificate, or -1 if unavailable.
  ///@param alias The alias to preselect if available, or null if
  ///     unavailable.
  ///
  /// This value may be {@code null}.
  static void choosePrivateKeyAlias(
          activity_.Activity activity,
          keychainaliascallback_.KeyChainAliasCallback response,
          jni.JniObject keyTypes,
          jni.JniObject issuers,
          jni.JniString host,
          int port,
          jni.JniString alias) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_choosePrivateKeyAlias, jni.JniType.voidType, [
        activity.reference,
        response.reference,
        keyTypes.reference,
        issuers.reference,
        host.reference,
        port,
        alias.reference
      ]).check();

  static final _id_choosePrivateKeyAlias1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "choosePrivateKeyAlias",
      "(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Landroid/net/Uri;Ljava/lang/String;)V");

  /// from: static public void choosePrivateKeyAlias(android.app.Activity activity, android.security.KeyChainAliasCallback response, java.lang.String[] keyTypes, java.security.Principal[] issuers, android.net.Uri uri, java.lang.String alias)
  ///
  /// Launches an {@code Activity} for the user to select the alias
  /// for a private key and certificate pair for authentication. The
  /// selected alias or null will be returned via the
  /// KeyChainAliasCallback callback.
  ///
  /// A device policy controller (as a device or profile owner) can
  /// intercept the request before the activity is shown, to pick a
  /// specific private key alias by implementing
  /// android.app.admin.DeviceAdminReceiver\#onChoosePrivateKeyAlias onChoosePrivateKeyAlias.
  ///
  /// {@code keyTypes} and {@code issuers} may be used to
  /// highlight suggested choices to the user, although to cope with
  /// sometimes erroneous values provided by servers, the user may be
  /// able to override these suggestions.
  ///
  /// {@code uri} may be used to give the user more context about
  /// the server requesting the credentials.
  ///
  /// {@code alias} allows the caller to preselect an existing
  /// alias which will still be subject to user confirmation.
  ///@param activity The Activity context to use for
  ///     launching the new sub-Activity to prompt the user to select
  ///     a private key; used only to call startActivity(); must not
  ///     be null.
  /// This value must never be {@code null}.
  ///@param response Callback to invoke when the request completes;
  ///     must not be null.
  /// This value must never be {@code null}.
  ///@param keyTypes The acceptable types of asymmetric keys such as
  ///     "EC" or "RSA", or null.
  /// This value may be {@code null}.
  /// Value is android.security.keystore.KeyProperties\#KEY_ALGORITHM_RSA, android.security.keystore.KeyProperties\#KEY_ALGORITHM_EC, android.security.keystore.KeyProperties\#KEY_ALGORITHM_AES, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA1, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA224, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA256, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA384, or android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA512
  ///@param issuers The acceptable certificate issuers for the
  ///     certificate matching the private key, or null.
  /// This value may be {@code null}.
  ///@param uri The full URI the server is requesting the certificate
  ///     for, or null if unavailable.
  /// This value may be {@code null}.
  ///@param alias The alias to preselect if available, or null if
  ///     unavailable.
  ///
  /// This value may be {@code null}.
  static void choosePrivateKeyAlias1(
          activity_.Activity activity,
          keychainaliascallback_.KeyChainAliasCallback response,
          jni.JniObject keyTypes,
          jni.JniObject issuers,
          uri_.Uri uri,
          jni.JniString alias) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_choosePrivateKeyAlias1, jni.JniType.voidType, [
        activity.reference,
        response.reference,
        keyTypes.reference,
        issuers.reference,
        uri.reference,
        alias.reference
      ]).check();

  static final _id_getPrivateKey = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getPrivateKey",
      "(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;");

  /// from: static public java.security.PrivateKey getPrivateKey(android.content.Context context, java.lang.String alias)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the {@code PrivateKey} for the requested alias, or null
  /// if there is no result.
  ///
  ///  This method may block while waiting for a connection to another process, and must never
  /// be called from the main thread.
  ///  As Activity and Service contexts are short-lived and can be destroyed
  /// at any time from the main thread, it is safer to rely on a long-lived context such as one
  /// returned from Context\#getApplicationContext().
  ///
  /// This method may take several seconds to complete, so it should
  ///  *            only be called from a worker thread.
  ///@param alias The alias of the desired private key, typically returned via
  ///              KeyChainAliasCallback\#alias.
  /// This value must never be {@code null}.
  ///@throws KeyChainException if the alias was valid but there was some problem accessing it.
  ///@throws IllegalStateException if called from the main thread.
  ///@param context This value must never be {@code null}.
  static jni.JniObject getPrivateKey(
          context_.Context context, jni.JniString alias) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getPrivateKey,
          jni.JniType.objectType,
          [context.reference, alias.reference]).object);

  static final _id_getCertificateChain = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getCertificateChain",
      "(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;");

  /// from: static public java.security.cert.X509Certificate[] getCertificateChain(android.content.Context context, java.lang.String alias)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the {@code X509Certificate} chain for the requested
  /// alias, or null if there is no result.
  ///
  /// <strong>Note:</strong> If a certificate chain was explicitly specified when the alias was
  /// installed, this method will return that chain. If only the client certificate was specified
  /// at the installation time, this method will try to build a certificate chain using all
  /// available trust anchors (preinstalled and user-added).
  ///
  ///  This method may block while waiting for a connection to another process, and must never
  /// be called from the main thread.
  ///  As Activity and Service contexts are short-lived and can be destroyed
  /// at any time from the main thread, it is safer to rely on a long-lived context such as one
  /// returned from Context\#getApplicationContext().
  ///
  /// This method may take several seconds to complete, so it should
  ///  *            only be called from a worker thread.
  ///@param alias The alias of the desired certificate chain, typically
  /// returned via KeyChainAliasCallback\#alias.
  /// This value must never be {@code null}.
  ///@throws KeyChainException if the alias was valid but there was some problem accessing it.
  ///@throws IllegalStateException if called from the main thread.
  ///@param context This value must never be {@code null}.
  static jni.JniObject getCertificateChain(
          context_.Context context, jni.JniString alias) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getCertificateChain,
          jni.JniType.objectType,
          [context.reference, alias.reference]).object);

  static final _id_isKeyAlgorithmSupported = jniAccessors.getStaticMethodIDOf(
      _classRef, "isKeyAlgorithmSupported", "(Ljava/lang/String;)Z");

  /// from: static public boolean isKeyAlgorithmSupported(java.lang.String algorithm)
  ///
  /// Returns {@code true} if the current device's {@code KeyChain} supports a
  /// specific {@code PrivateKey} type indicated by {@code algorithm} (e.g.,
  /// "RSA").
  ///@param algorithm This value must never be {@code null}.
  ///
  /// Value is android.security.keystore.KeyProperties\#KEY_ALGORITHM_RSA, android.security.keystore.KeyProperties\#KEY_ALGORITHM_EC, android.security.keystore.KeyProperties\#KEY_ALGORITHM_AES, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA1, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA224, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA256, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA384, or android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA512
  static bool isKeyAlgorithmSupported(jni.JniString algorithm) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_isKeyAlgorithmSupported,
          jni.JniType.booleanType,
          [algorithm.reference]).boolean;

  static final _id_isBoundKeyAlgorithm = jniAccessors.getStaticMethodIDOf(
      _classRef, "isBoundKeyAlgorithm", "(Ljava/lang/String;)Z");

  /// from: static public boolean isBoundKeyAlgorithm(java.lang.String algorithm)
  ///
  /// Returns {@code true} if the current device's {@code KeyChain} binds any
  /// {@code PrivateKey} of the given {@code algorithm} to the device once
  /// imported or generated. This can be used to tell if there is special
  /// hardware support that can be used to bind keys to the device in a way
  /// that makes it non-exportable.
  ///@deprecated Whether the key is bound to the secure hardware is known only
  /// once the key has been imported. To find out, use:
  /// <pre>{@code
  /// PrivateKey key = ...; // private key from KeyChain
  ///
  /// KeyFactory keyFactory =
  ///     KeyFactory.getInstance(key.getAlgorithm(), "AndroidKeyStore");
  /// KeyInfo keyInfo = keyFactory.getKeySpec(key, KeyInfo.class);
  /// if (keyInfo.isInsideSecureHardware()) {
  ///     // The key is bound to the secure hardware of this Android
  /// }}</pre>
  ///@param algorithm This value must never be {@code null}.
  ///
  /// Value is android.security.keystore.KeyProperties\#KEY_ALGORITHM_RSA, android.security.keystore.KeyProperties\#KEY_ALGORITHM_EC, android.security.keystore.KeyProperties\#KEY_ALGORITHM_AES, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA1, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA224, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA256, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA384, or android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA512
  static bool isBoundKeyAlgorithm(jni.JniString algorithm) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isBoundKeyAlgorithm,
          jni.JniType.booleanType, [algorithm.reference]).boolean;
}
