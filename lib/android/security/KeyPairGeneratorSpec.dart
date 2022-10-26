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

import "../content/Context.dart" as context_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.security.KeyPairGeneratorSpec
///
/// This provides the required parameters needed for initializing the
/// {@code KeyPairGenerator} that works with
/// <a href="{@docRoot}training/articles/keystore.html">Android KeyStore
/// facility</a>. The Android KeyStore facility is accessed through a
/// java.security.KeyPairGenerator API using the {@code AndroidKeyStore}
/// provider. The {@code context} passed in may be used to pop up some UI to ask
/// the user to unlock or initialize the Android KeyStore facility.
///
/// After generation, the {@code keyStoreAlias} is used with the
/// java.security.KeyStore\#getEntry(String, java.security.KeyStore.ProtectionParameter)
/// interface to retrieve the PrivateKey and its associated
/// Certificate chain.
///
/// The KeyPair generator will create a self-signed certificate with the subject
/// as its X.509v3 Subject Distinguished Name and as its X.509v3 Issuer
/// Distinguished Name along with the other parameters specified with the
/// Builder.
///
/// The self-signed X.509 certificate may be replaced at a later time by a
/// certificate signed by a real Certificate Authority.
///@deprecated Use KeyGenParameterSpec instead.
class KeyPairGeneratorSpec extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/security/KeyPairGeneratorSpec");
  KeyPairGeneratorSpec.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/security/spec/AlgorithmParameterSpec;Ljavax/security/auth/x500/X500Principal;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;I)V");

  /// from: void <init>(android.content.Context context, java.lang.String keyStoreAlias, java.lang.String keyType, int keySize, java.security.spec.AlgorithmParameterSpec spec, javax.security.auth.x500.X500Principal subjectDN, java.math.BigInteger serialNumber, java.util.Date startDate, java.util.Date endDate, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Parameter specification for the "{@code AndroidKeyPairGenerator}"
  /// instance of the java.security.KeyPairGenerator API. The
  /// {@code context} passed in may be used to pop up some UI to ask the user
  /// to unlock or initialize the Android keystore facility.
  ///
  /// After generation, the {@code keyStoreAlias} is used with the
  /// java.security.KeyStore\#getEntry(String, java.security.KeyStore.ProtectionParameter)
  /// interface to retrieve the PrivateKey and its associated
  /// Certificate chain.
  ///
  /// The KeyPair generator will create a self-signed certificate with the
  /// properties of {@code subjectDN} as its X.509v3 Subject Distinguished Name
  /// and as its X.509v3 Issuer Distinguished Name, using the specified
  /// {@code serialNumber}, and the validity date starting at {@code startDate}
  /// and ending at {@code endDate}.
  ///@param context Android context for the activity
  ///@param keyStoreAlias name to use for the generated key in the Android
  ///            keystore
  ///@param keyType key algorithm to use (RSA, DSA, EC)
  ///@param keySize size of key to generate
  ///@param spec the underlying key type parameters
  ///@param subjectDN X.509 v3 Subject Distinguished Name
  ///@param serialNumber X509 v3 certificate serial number
  ///@param startDate the start of the self-signed certificate validity period
  ///@param endDate the end date of the self-signed certificate validity
  ///            period
  ///@throws IllegalArgumentException when any argument is {@code null} or
  ///             {@code endDate} is before {@code startDate}.
  ///@hide should be built with KeyPairGeneratorSpecBuilder
  KeyPairGeneratorSpec(
      context_.Context context,
      jni.JniString keyStoreAlias,
      jni.JniString keyType,
      int keySize,
      jni.JniObject spec,
      jni.JniObject subjectDN,
      jni.JniObject serialNumber,
      jni.JniObject startDate,
      jni.JniObject endDate,
      int flags)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          context.reference,
          keyStoreAlias.reference,
          keyType.reference,
          keySize,
          spec.reference,
          subjectDN.reference,
          serialNumber.reference,
          startDate.reference,
          endDate.reference,
          flags
        ]).object);

  static final _id_getContext = jniAccessors.getMethodIDOf(
      _classRef, "getContext", "()Landroid/content/Context;");

  /// from: public android.content.Context getContext()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the Android context used for operations with this instance.
  context_.Context getContext() =>
      context_.Context.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getContext, jni.JniType.objectType, []).object);

  static final _id_getKeystoreAlias = jniAccessors.getMethodIDOf(
      _classRef, "getKeystoreAlias", "()Ljava/lang/String;");

  /// from: public java.lang.String getKeystoreAlias()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the alias that will be used in the {@code java.security.KeyStore}
  /// in conjunction with the {@code AndroidKeyStore}.
  jni.JniString getKeystoreAlias() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getKeystoreAlias, jni.JniType.objectType, []).object);

  static final _id_getKeyType = jniAccessors.getMethodIDOf(
      _classRef, "getKeyType", "()Ljava/lang/String;");

  /// from: public java.lang.String getKeyType()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the type of key pair (e.g., {@code EC}, {@code RSA}) to be generated. See
  /// KeyProperties.{@code KEY_ALGORITHM} constants.
  ///@return This value may be {@code null}.
  ///
  /// Value is android.security.keystore.KeyProperties\#KEY_ALGORITHM_RSA, android.security.keystore.KeyProperties\#KEY_ALGORITHM_EC, android.security.keystore.KeyProperties\#KEY_ALGORITHM_AES, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA1, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA224, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA256, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA384, or android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA512
  jni.JniString getKeyType() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getKeyType, jni.JniType.objectType, []).object);

  static final _id_getKeySize =
      jniAccessors.getMethodIDOf(_classRef, "getKeySize", "()I");

  /// from: public int getKeySize()
  ///
  /// Returns the key size specified by this parameter. For instance, for RSA
  /// this will return the modulus size and for EC it will return the field
  /// size.
  int getKeySize() => jniAccessors.callMethodWithArgs(
      reference, _id_getKeySize, jni.JniType.intType, []).integer;

  static final _id_getAlgorithmParameterSpec = jniAccessors.getMethodIDOf(
      _classRef,
      "getAlgorithmParameterSpec",
      "()Ljava/security/spec/AlgorithmParameterSpec;");

  /// from: public java.security.spec.AlgorithmParameterSpec getAlgorithmParameterSpec()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the AlgorithmParameterSpec that will be used for creation
  /// of the key pair.
  ///@return This value will never be {@code null}.
  jni.JniObject getAlgorithmParameterSpec() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAlgorithmParameterSpec, jni.JniType.objectType, []).object);

  static final _id_getSubjectDN = jniAccessors.getMethodIDOf(
      _classRef, "getSubjectDN", "()Ljavax/security/auth/x500/X500Principal;");

  /// from: public javax.security.auth.x500.X500Principal getSubjectDN()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the subject distinguished name to be used on the X.509 certificate
  /// that will be put in the java.security.KeyStore.
  ///@return This value will never be {@code null}.
  jni.JniObject getSubjectDN() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSubjectDN, jni.JniType.objectType, []).object);

  static final _id_getSerialNumber = jniAccessors.getMethodIDOf(
      _classRef, "getSerialNumber", "()Ljava/math/BigInteger;");

  /// from: public java.math.BigInteger getSerialNumber()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the serial number to be used on the X.509 certificate that will be
  /// put in the java.security.KeyStore.
  ///@return This value will never be {@code null}.
  jni.JniObject getSerialNumber() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSerialNumber, jni.JniType.objectType, []).object);

  static final _id_getStartDate = jniAccessors.getMethodIDOf(
      _classRef, "getStartDate", "()Ljava/util/Date;");

  /// from: public java.util.Date getStartDate()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the start date to be used on the X.509 certificate that will be put
  /// in the java.security.KeyStore.
  ///@return This value will never be {@code null}.
  jni.JniObject getStartDate() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getStartDate, jni.JniType.objectType, []).object);

  static final _id_getEndDate =
      jniAccessors.getMethodIDOf(_classRef, "getEndDate", "()Ljava/util/Date;");

  /// from: public java.util.Date getEndDate()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the end date to be used on the X.509 certificate that will be put in
  /// the java.security.KeyStore.
  ///@return This value will never be {@code null}.
  jni.JniObject getEndDate() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEndDate, jni.JniType.objectType, []).object);

  static final _id_isEncryptionRequired =
      jniAccessors.getMethodIDOf(_classRef, "isEncryptionRequired", "()Z");

  /// from: public boolean isEncryptionRequired()
  ///
  /// Returns {@code true} if the key must be encrypted at rest. This will protect the key pair
  /// with the secure lock screen credential (e.g., password, PIN, or pattern).
  ///
  /// Note that encrypting the key at rest requires that the secure lock screen (e.g., password,
  /// PIN, pattern) is set up, otherwise key generation will fail. Moreover, this key will be
  /// deleted when the secure lock screen is disabled or reset (e.g., by the user or a Device
  /// Administrator). Finally, this key cannot be used until the user unlocks the secure lock
  /// screen after boot.
  ///@see KeyguardManager\#isDeviceSecure()
  bool isEncryptionRequired() => jniAccessors.callMethodWithArgs(
      reference, _id_isEncryptionRequired, jni.JniType.booleanType, []).boolean;
}

/// from: android.security.KeyPairGeneratorSpec$Builder
///
/// Builder class for KeyPairGeneratorSpec objects.
///
/// This will build a parameter spec for use with the
/// <a href="{@docRoot}training/articles/keystore.html">Android KeyStore
/// facility</a>.
///
/// The required fields must be filled in with the builder.
///
/// Example:
///
/// <pre class="prettyprint">
/// Calendar start = Calendar.getInstance();
/// Calendar end = Calendar.getInstance();
/// end.add(Calendar.YEAR, 1);
///
/// KeyPairGeneratorSpec spec =
///         new KeyPairGeneratorSpec.Builder(mContext).setAlias(&quot;myKey&quot;)
///                 .setSubject(new X500Principal(&quot;CN=myKey&quot;)).setSerialNumber(BigInteger.valueOf(1337))
///                 .setStartDate(start.getTime()).setEndDate(end.getTime()).build();
/// </pre>
///@deprecated Use KeyGenParameterSpec.Builder instead.
class KeyPairGeneratorSpec_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/security/KeyPairGeneratorSpec\$Builder");
  KeyPairGeneratorSpec_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new instance of the {@code Builder} with the given
  /// {@code context}. The {@code context} passed in may be used to pop up
  /// some UI to ask the user to unlock or initialize the Android KeyStore
  /// facility.
  ///@param context This value must never be {@code null}.
  KeyPairGeneratorSpec_Builder(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_setAlias = jniAccessors.getMethodIDOf(_classRef, "setAlias",
      "(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec\$Builder;");

  /// from: public android.security.KeyPairGeneratorSpec.Builder setAlias(java.lang.String alias)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the alias to be used to retrieve the key later from a
  /// java.security.KeyStore instance using the
  /// {@code AndroidKeyStore} provider.
  ///@param alias This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  KeyPairGeneratorSpec_Builder setAlias(jni.JniString alias) =>
      KeyPairGeneratorSpec_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setAlias,
          jni.JniType.objectType,
          [alias.reference]).object);

  static final _id_setKeyType = jniAccessors.getMethodIDOf(
      _classRef,
      "setKeyType",
      "(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec\$Builder;");

  /// from: public android.security.KeyPairGeneratorSpec.Builder setKeyType(java.lang.String keyType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the type of key pair (e.g., {@code EC}, {@code RSA}) of the key pair to be
  /// generated. See KeyProperties.{@code KEY_ALGORITHM} constants.
  ///@param keyType This value must never be {@code null}.
  /// Value is android.security.keystore.KeyProperties\#KEY_ALGORITHM_RSA, android.security.keystore.KeyProperties\#KEY_ALGORITHM_EC, android.security.keystore.KeyProperties\#KEY_ALGORITHM_AES, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA1, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA224, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA256, android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA384, or android.security.keystore.KeyProperties\#KEY_ALGORITHM_HMAC_SHA512
  ///@return This value will never be {@code null}.
  KeyPairGeneratorSpec_Builder setKeyType(jni.JniString keyType) =>
      KeyPairGeneratorSpec_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setKeyType,
          jni.JniType.objectType,
          [keyType.reference]).object);

  static final _id_setKeySize = jniAccessors.getMethodIDOf(_classRef,
      "setKeySize", "(I)Landroid/security/KeyPairGeneratorSpec\$Builder;");

  /// from: public android.security.KeyPairGeneratorSpec.Builder setKeySize(int keySize)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the key size for the keypair to be created. For instance, for a
  /// key type of RSA this will set the modulus size and for a key type of
  /// EC it will select a curve with a matching field size.
  ///@return This value will never be {@code null}.
  KeyPairGeneratorSpec_Builder setKeySize(int keySize) =>
      KeyPairGeneratorSpec_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setKeySize, jni.JniType.objectType, [keySize]).object);

  static final _id_setAlgorithmParameterSpec = jniAccessors.getMethodIDOf(
      _classRef,
      "setAlgorithmParameterSpec",
      "(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/KeyPairGeneratorSpec\$Builder;");

  /// from: public android.security.KeyPairGeneratorSpec.Builder setAlgorithmParameterSpec(java.security.spec.AlgorithmParameterSpec spec)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the algorithm-specific key generation parameters. For example, for RSA keys
  /// this may be an instance of java.security.spec.RSAKeyGenParameterSpec.
  ///@param spec This value must never be {@code null}.
  KeyPairGeneratorSpec_Builder setAlgorithmParameterSpec(jni.JniObject spec) =>
      KeyPairGeneratorSpec_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setAlgorithmParameterSpec,
          jni.JniType.objectType,
          [spec.reference]).object);

  static final _id_setSubject = jniAccessors.getMethodIDOf(
      _classRef,
      "setSubject",
      "(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec\$Builder;");

  /// from: public android.security.KeyPairGeneratorSpec.Builder setSubject(javax.security.auth.x500.X500Principal subject)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the subject used for the self-signed certificate of the
  /// generated key pair.
  ///@param subject This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  KeyPairGeneratorSpec_Builder setSubject(jni.JniObject subject) =>
      KeyPairGeneratorSpec_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setSubject,
          jni.JniType.objectType,
          [subject.reference]).object);

  static final _id_setSerialNumber = jniAccessors.getMethodIDOf(
      _classRef,
      "setSerialNumber",
      "(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec\$Builder;");

  /// from: public android.security.KeyPairGeneratorSpec.Builder setSerialNumber(java.math.BigInteger serialNumber)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the serial number used for the self-signed certificate of the
  /// generated key pair.
  ///@param serialNumber This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  KeyPairGeneratorSpec_Builder setSerialNumber(jni.JniObject serialNumber) =>
      KeyPairGeneratorSpec_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setSerialNumber,
          jni.JniType.objectType,
          [serialNumber.reference]).object);

  static final _id_setStartDate = jniAccessors.getMethodIDOf(
      _classRef,
      "setStartDate",
      "(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec\$Builder;");

  /// from: public android.security.KeyPairGeneratorSpec.Builder setStartDate(java.util.Date startDate)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the start of the validity period for the self-signed certificate
  /// of the generated key pair.
  ///@param startDate This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  KeyPairGeneratorSpec_Builder setStartDate(jni.JniObject startDate) =>
      KeyPairGeneratorSpec_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setStartDate,
          jni.JniType.objectType,
          [startDate.reference]).object);

  static final _id_setEndDate = jniAccessors.getMethodIDOf(
      _classRef,
      "setEndDate",
      "(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec\$Builder;");

  /// from: public android.security.KeyPairGeneratorSpec.Builder setEndDate(java.util.Date endDate)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the end of the validity period for the self-signed certificate
  /// of the generated key pair.
  ///@param endDate This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  KeyPairGeneratorSpec_Builder setEndDate(jni.JniObject endDate) =>
      KeyPairGeneratorSpec_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setEndDate,
          jni.JniType.objectType,
          [endDate.reference]).object);

  static final _id_setEncryptionRequired = jniAccessors.getMethodIDOf(
      _classRef,
      "setEncryptionRequired",
      "()Landroid/security/KeyPairGeneratorSpec\$Builder;");

  /// from: public android.security.KeyPairGeneratorSpec.Builder setEncryptionRequired()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Indicates that this key pair must be encrypted at rest. This will protect the key pair
  /// with the secure lock screen credential (e.g., password, PIN, or pattern).
  ///
  /// Note that this feature requires that the secure lock screen (e.g., password, PIN,
  /// pattern) is set up, otherwise key pair generation will fail. Moreover, this key pair will
  /// be deleted when the secure lock screen is disabled or reset (e.g., by the user or a
  /// Device Administrator). Finally, this key pair cannot be used until the user unlocks the
  /// secure lock screen after boot.
  ///@see KeyguardManager\#isDeviceSecure()
  ///@return This value will never be {@code null}.
  KeyPairGeneratorSpec_Builder setEncryptionRequired() =>
      KeyPairGeneratorSpec_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setEncryptionRequired,
          jni.JniType.objectType, []).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/security/KeyPairGeneratorSpec;");

  /// from: public android.security.KeyPairGeneratorSpec build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Builds the instance of the {@code KeyPairGeneratorSpec}.
  ///@throws IllegalArgumentException if a required field is missing
  ///@return built instance of {@code KeyPairGeneratorSpec}
  ///
  /// This value will never be {@code null}.
  KeyPairGeneratorSpec build() =>
      KeyPairGeneratorSpec.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}
