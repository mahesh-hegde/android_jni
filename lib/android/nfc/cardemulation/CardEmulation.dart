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

import "../NfcAdapter.dart" as nfcadapter_;

import "../../content/ComponentName.dart" as componentname_;

import "../../app/Activity.dart" as activity_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.nfc.cardemulation.CardEmulation
///
/// This class can be used to query the state of
/// NFC card emulation services.
///
/// For a general introduction into NFC card emulation,
/// please read the <a href="{@docRoot}guide/topics/connectivity/nfc/hce.html">
/// NFC card emulation developer guide</a>.
///
///
/// <p class="note">Use of this class requires the
/// PackageManager\#FEATURE_NFC_HOST_CARD_EMULATION to be present
/// on the device.
class CardEmulation extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/nfc/cardemulation/CardEmulation");
  CardEmulation.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_CHANGE_DEFAULT
  ///
  /// Activity action: ask the user to change the default
  /// card emulation service for a certain category. This will
  /// show a dialog that asks the user whether he wants to
  /// replace the current default service with the service
  /// identified with the ComponentName specified in
  /// \#EXTRA_SERVICE_COMPONENT, for the category
  /// specified in \#EXTRA_CATEGORY
  static const ACTION_CHANGE_DEFAULT =
      "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT";

  /// from: static public final java.lang.String CATEGORY_OTHER
  ///
  /// Category that can be used for all other card emulation
  /// services.
  static const CATEGORY_OTHER = "other";

  /// from: static public final java.lang.String CATEGORY_PAYMENT
  ///
  /// Category used for NFC payment services.
  static const CATEGORY_PAYMENT = "payment";

  /// from: static public final java.lang.String EXTRA_CATEGORY
  ///
  /// The category extra for \#ACTION_CHANGE_DEFAULT.
  ///@see \#ACTION_CHANGE_DEFAULT
  static const EXTRA_CATEGORY = "category";

  /// from: static public final java.lang.String EXTRA_SERVICE_COMPONENT
  ///
  /// The service ComponentName object passed in as an
  /// extra for \#ACTION_CHANGE_DEFAULT.
  ///@see \#ACTION_CHANGE_DEFAULT
  static const EXTRA_SERVICE_COMPONENT = "component";

  /// from: static public final int SELECTION_MODE_ALWAYS_ASK
  ///
  /// Return value for \#getSelectionModeForCategory(String).
  ///
  /// In this mode, when using ISO-DEP card emulation with HostApduService
  ///    or OffHostApduService, whenever an Application ID (AID) of this category
  ///    is selected, the user is asked which service he wants to use to handle
  ///    the transaction, even if there is only one matching service.
  static const SELECTION_MODE_ALWAYS_ASK = 1;

  /// from: static public final int SELECTION_MODE_ASK_IF_CONFLICT
  ///
  /// Return value for \#getSelectionModeForCategory(String).
  ///
  /// In this mode, when using ISO-DEP card emulation with HostApduService
  ///    or OffHostApduService, the user will only be asked to select a service
  ///    if the Application ID (AID) selected by the reader has been registered by multiple
  ///    services. If there is only one service that has registered for the AID,
  ///    that service will be invoked directly.
  static const SELECTION_MODE_ASK_IF_CONFLICT = 2;

  /// from: static public final int SELECTION_MODE_PREFER_DEFAULT
  ///
  /// Return value for \#getSelectionModeForCategory(String).
  ///
  /// In this mode, the user has set a default service for this
  ///    category.
  ///
  /// When using ISO-DEP card emulation with HostApduService
  ///    or OffHostApduService, if a remote NFC device selects
  ///    any of the Application IDs (AIDs)
  ///    that the default service has registered in this category,
  ///    that service will automatically be bound to to handle
  ///    the transaction.
  static const SELECTION_MODE_PREFER_DEFAULT = 0;

  static final _id_getInstance = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getInstance",
      "(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;");

  /// from: synchronized static public android.nfc.cardemulation.CardEmulation getInstance(android.nfc.NfcAdapter adapter)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Helper to get an instance of this class.
  ///@param adapter A reference to an NfcAdapter object.
  ///@return
  static CardEmulation getInstance(nfcadapter_.NfcAdapter adapter) =>
      CardEmulation.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_getInstance, jni.JniType.objectType, [adapter.reference]).object);

  static final _id_isDefaultServiceForCategory = jniAccessors.getMethodIDOf(
      _classRef,
      "isDefaultServiceForCategory",
      "(Landroid/content/ComponentName;Ljava/lang/String;)Z");

  /// from: public boolean isDefaultServiceForCategory(android.content.ComponentName service, java.lang.String category)
  ///
  /// Allows an application to query whether a service is currently
  /// the default service to handle a card emulation category.
  ///
  /// Note that if \#getSelectionModeForCategory(String)
  /// returns \#SELECTION_MODE_ALWAYS_ASK or \#SELECTION_MODE_ASK_IF_CONFLICT,
  /// this method will always return false. That is because in these
  /// selection modes a default can't be set at the category level. For categories where
  /// the selection mode is \#SELECTION_MODE_ALWAYS_ASK or
  /// \#SELECTION_MODE_ASK_IF_CONFLICT, use
  /// \#isDefaultServiceForAid(ComponentName, String) to determine whether a service
  /// is the default for a specific AID.
  ///@param service The ComponentName of the service
  ///@param category The category
  ///@return whether service is currently the default service for the category.
  ///
  /// <p class="note">Requires the android.Manifest.permission\#NFC permission.
  bool isDefaultServiceForCategory(
          componentname_.ComponentName service, jni.JniString category) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_isDefaultServiceForCategory,
          jni.JniType.booleanType,
          [service.reference, category.reference]).boolean;

  static final _id_isDefaultServiceForAid = jniAccessors.getMethodIDOf(
      _classRef,
      "isDefaultServiceForAid",
      "(Landroid/content/ComponentName;Ljava/lang/String;)Z");

  /// from: public boolean isDefaultServiceForAid(android.content.ComponentName service, java.lang.String aid)
  ///
  /// Allows an application to query whether a service is currently
  /// the default handler for a specified ISO7816-4 Application ID.
  ///@param service The ComponentName of the service
  ///@param aid The ISO7816-4 Application ID
  ///@return whether the service is the default handler for the specified AID
  ///
  /// <p class="note">Requires the android.Manifest.permission\#NFC permission.
  bool isDefaultServiceForAid(
          componentname_.ComponentName service, jni.JniString aid) =>
      jniAccessors.callMethodWithArgs(reference, _id_isDefaultServiceForAid,
          jni.JniType.booleanType, [service.reference, aid.reference]).boolean;

  static final _id_categoryAllowsForegroundPreference =
      jniAccessors.getMethodIDOf(_classRef,
          "categoryAllowsForegroundPreference", "(Ljava/lang/String;)Z");

  /// from: public boolean categoryAllowsForegroundPreference(java.lang.String category)
  ///
  /// Returns whether the user has allowed AIDs registered in the
  /// specified category to be handled by a service that is preferred
  /// by the foreground application, instead of by a pre-configured default.
  ///
  /// Foreground applications can set such preferences using the
  /// \#setPreferredService(Activity, ComponentName) method.
  ///@param category The category, e.g. \#CATEGORY_PAYMENT
  ///@return whether AIDs in the category can be handled by a service
  ///         specified by the foreground app.
  bool categoryAllowsForegroundPreference(jni.JniString category) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_categoryAllowsForegroundPreference,
          jni.JniType.booleanType,
          [category.reference]).boolean;

  static final _id_getSelectionModeForCategory = jniAccessors.getMethodIDOf(
      _classRef, "getSelectionModeForCategory", "(Ljava/lang/String;)I");

  /// from: public int getSelectionModeForCategory(java.lang.String category)
  ///
  /// Returns the service selection mode for the passed in category.
  /// Valid return values are:
  /// \#SELECTION_MODE_PREFER_DEFAULT the user has requested a default
  ///    service for this category, which will be preferred.
  /// \#SELECTION_MODE_ALWAYS_ASK the user has requested to be asked
  ///    every time what service he would like to use in this category.
  /// \#SELECTION_MODE_ASK_IF_CONFLICT the user will only be asked
  ///    to pick a service if there is a conflict.
  ///@param category The category, for example \#CATEGORY_PAYMENT
  ///@return the selection mode for the passed in category
  int getSelectionModeForCategory(jni.JniString category) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_getSelectionModeForCategory,
          jni.JniType.intType,
          [category.reference]).integer;

  static final _id_registerAidsForService = jniAccessors.getMethodIDOf(
      _classRef,
      "registerAidsForService",
      "(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)Z");

  /// from: public boolean registerAidsForService(android.content.ComponentName service, java.lang.String category, java.util.List<java.lang.String> aids)
  ///
  /// Registers a list of AIDs for a specific category for the
  /// specified service.
  ///
  /// If a list of AIDs for that category was previously
  /// registered for this service (either statically
  /// through the manifest, or dynamically by using this API),
  /// that list of AIDs will be replaced with this one.
  ///
  /// Note that you can only register AIDs for a service that
  /// is running under the same UID as the caller of this API. Typically
  /// this means you need to call this from the same
  /// package as the service itself, though UIDs can also
  /// be shared between packages using shared UIDs.
  ///@param service The component name of the service
  ///@param category The category of AIDs to be registered
  ///@param aids A list containing the AIDs to be registered
  ///@return whether the registration was successful.
  bool registerAidsForService(componentname_.ComponentName service,
          jni.JniString category, jni.JniObject aids) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_registerAidsForService,
          jni.JniType.booleanType,
          [service.reference, category.reference, aids.reference]).boolean;

  static final _id_getAidsForService = jniAccessors.getMethodIDOf(
      _classRef,
      "getAidsForService",
      "(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;");

  /// from: public java.util.List<java.lang.String> getAidsForService(android.content.ComponentName service, java.lang.String category)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the currently registered AIDs for the specified
  /// category for a service.
  ///
  /// Note that this will only return AIDs that were dynamically
  /// registered using \#registerAidsForService(ComponentName, String, List)
  /// method. It will *not* return AIDs that were statically registered
  /// in the manifest.
  ///@param service The component name of the service
  ///@param category The category for which the AIDs were registered,
  ///                 e.g. \#CATEGORY_PAYMENT
  ///@return The list of AIDs registered for this category, or null if it couldn't be found.
  jni.JniObject getAidsForService(
          componentname_.ComponentName service, jni.JniString category) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getAidsForService,
          jni.JniType.objectType,
          [service.reference, category.reference]).object);

  static final _id_removeAidsForService = jniAccessors.getMethodIDOf(
      _classRef,
      "removeAidsForService",
      "(Landroid/content/ComponentName;Ljava/lang/String;)Z");

  /// from: public boolean removeAidsForService(android.content.ComponentName service, java.lang.String category)
  ///
  /// Removes a previously registered list of AIDs for the specified category for the
  /// service provided.
  ///
  /// Note that this will only remove AIDs that were dynamically
  /// registered using the \#registerAidsForService(ComponentName, String, List)
  /// method. It will *not* remove AIDs that were statically registered in
  /// the manifest. If dynamically registered AIDs are removed using
  /// this method, and a statically registered AID group for the same category
  /// exists in the manifest, the static AID group will become active again.
  ///@param service The component name of the service
  ///@param category The category of the AIDs to be removed, e.g. \#CATEGORY_PAYMENT
  ///@return whether the group was successfully removed.
  bool removeAidsForService(
          componentname_.ComponentName service, jni.JniString category) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_removeAidsForService,
          jni.JniType.booleanType,
          [service.reference, category.reference]).boolean;

  static final _id_setPreferredService = jniAccessors.getMethodIDOf(
      _classRef,
      "setPreferredService",
      "(Landroid/app/Activity;Landroid/content/ComponentName;)Z");

  /// from: public boolean setPreferredService(android.app.Activity activity, android.content.ComponentName service)
  ///
  /// Allows a foreground application to specify which card emulation service
  /// should be preferred while a specific Activity is in the foreground.
  ///
  /// The specified Activity must currently be in resumed state. A good
  /// paradigm is to call this method in your Activity\#onResume, and to call
  /// \#unsetPreferredService(Activity) in your Activity\#onPause.
  ///
  /// This method call will fail in two specific scenarios:
  /// <ul>
  /// <li> If the service registers one or more AIDs in the \#CATEGORY_PAYMENT
  /// category, but the user has indicated that foreground apps are not allowed
  /// to override the default payment service.
  /// <li> If the service registers one or more AIDs in the \#CATEGORY_OTHER
  /// category that are also handled by the default payment service, and the
  /// user has indicated that foreground apps are not allowed to override the
  /// default payment service.
  /// </ul>
  ///
  ///  Use \#categoryAllowsForegroundPreference(String) to determine
  /// whether foreground apps can override the default payment service.
  ///
  /// Note that this preference is not persisted by the OS, and hence must be
  /// called every time the Activity is resumed.
  ///@param activity The activity which prefers this service to be invoked
  ///@param service The service to be preferred while this activity is in the foreground
  ///@return whether the registration was successful
  bool setPreferredService(
          activity_.Activity activity, componentname_.ComponentName service) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setPreferredService,
          jni.JniType.booleanType,
          [activity.reference, service.reference]).boolean;

  static final _id_unsetPreferredService = jniAccessors.getMethodIDOf(
      _classRef, "unsetPreferredService", "(Landroid/app/Activity;)Z");

  /// from: public boolean unsetPreferredService(android.app.Activity activity)
  ///
  /// Unsets the preferred service for the specified Activity.
  ///
  /// Note that the specified Activity must still be in resumed
  /// state at the time of this call. A good place to call this method
  /// is in your Activity\#onPause implementation.
  ///@param activity The activity which the service was registered for
  ///@return true when successful
  bool unsetPreferredService(activity_.Activity activity) =>
      jniAccessors.callMethodWithArgs(reference, _id_unsetPreferredService,
          jni.JniType.booleanType, [activity.reference]).boolean;

  static final _id_supportsAidPrefixRegistration = jniAccessors.getMethodIDOf(
      _classRef, "supportsAidPrefixRegistration", "()Z");

  /// from: public boolean supportsAidPrefixRegistration()
  ///
  /// Some devices may allow an application to register all
  /// AIDs that starts with a certain prefix, e.g.
  /// "A000000004*" to register all MasterCard AIDs.
  ///
  /// Use this method to determine whether this device
  /// supports registering AID prefixes.
  ///@return whether AID prefix registering is supported on this device.
  bool supportsAidPrefixRegistration() => jniAccessors.callMethodWithArgs(
      reference,
      _id_supportsAidPrefixRegistration,
      jni.JniType.booleanType, []).boolean;
}
