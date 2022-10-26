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

import "SpellCheckerSession.dart" as spellcheckersession_;

import "../../os/Bundle.dart" as bundle_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.textservice.TextServicesManager
///
/// System API to the overall text services, which arbitrates interaction between applications
/// and text services.
///
/// The user can change the current text services in Settings. And also applications can specify
/// the target text services.
///
/// <h3>Architecture Overview</h3>
///
/// There are three primary parties involved in the text services
/// framework (TSF) architecture:
///
///
/// <ul>
/// <li> The <strong>text services manager</strong> as expressed by this class
/// is the central point of the system that manages interaction between all
/// other parts.  It is expressed as the client-side API here which exists
/// in each application context and communicates with a global system service
/// that manages the interaction across all processes.
/// <li> A <strong>text service</strong> implements a particular
/// interaction model allowing the client application to retrieve information of text.
/// The system binds to the current text service that is in use, causing it to be created and run.
/// <li> Multiple <strong>client applications</strong> arbitrate with the text service
/// manager for connections to text services.
/// </ul>
///
/// <h3>Text services sessions</h3>
/// <ul>
/// <li>The <strong>spell checker session</strong> is one of the text services.
/// android.view.textservice.SpellCheckerSession</li>
/// </ul>
class TextServicesManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/textservice/TextServicesManager");
  TextServicesManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  TextServicesManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_newSpellCheckerSession = jniAccessors.getMethodIDOf(
      _classRef,
      "newSpellCheckerSession",
      "(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession\$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;");

  /// from: public android.view.textservice.SpellCheckerSession newSpellCheckerSession(android.os.Bundle bundle, java.util.Locale locale, android.view.textservice.SpellCheckerSession.SpellCheckerSessionListener listener, boolean referToSpellCheckerLanguageSettings)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get a spell checker session for the specified spell checker
  ///@param locale the locale for the spell checker. If {@code locale} is null and
  /// referToSpellCheckerLanguageSettings is true, the locale specified in Settings will be
  /// returned. If {@code locale} is not null and referToSpellCheckerLanguageSettings is true,
  /// the locale specified in Settings will be returned only when it is same as {@code locale}.
  /// Exceptionally, when referToSpellCheckerLanguageSettings is true and {@code locale} is
  /// only language (e.g. "en"), the specified locale in Settings (e.g. "en_US") will be
  /// selected.
  ///@param listener a spell checker session lister for getting results from a spell checker.
  ///@param referToSpellCheckerLanguageSettings if true, the session for one of enabled
  /// languages in settings will be returned.
  ///@return the spell checker session of the spell checker
  spellcheckersession_.SpellCheckerSession newSpellCheckerSession(
          bundle_.Bundle bundle,
          jni.JniObject locale,
          spellcheckersession_.SpellCheckerSession_SpellCheckerSessionListener
              listener,
          bool referToSpellCheckerLanguageSettings) =>
      spellcheckersession_.SpellCheckerSession.fromRef(jniAccessors
          .callMethodWithArgs(
              reference, _id_newSpellCheckerSession, jni.JniType.objectType, [
        bundle.reference,
        locale.reference,
        listener.reference,
        referToSpellCheckerLanguageSettings
      ]).object);
}