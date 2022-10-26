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

import "../app/Service.dart" as service_;

import "../os/IBinder.dart" as ibinder_;

import "../content/Intent.dart" as intent_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.location.SettingInjectorService
///
/// Dynamically specifies the enabled status of a preference injected into
/// the list of app settings displayed by the system settings app
/// <p/>
/// For use only by apps that are included in the system image, for preferences that affect multiple
/// apps. Location settings that apply only to one app should be shown within that app,
/// rather than in the system settings.
/// <p/>
/// To add a preference to the list, a subclass of SettingInjectorService must be declared in
/// the manifest as so:
///
/// <pre>
///     &lt;service android:name="com.example.android.injector.MyInjectorService" &gt;
///         &lt;intent-filter&gt;
///             &lt;action android:name="android.location.SettingInjectorService" /&gt;
///         &lt;/intent-filter&gt;
///
///         &lt;meta-data
///             android:name="android.location.SettingInjectorService"
///             android:resource="@xml/my_injected_location_setting" /&gt;
///     &lt;/service&gt;
/// </pre>
/// The resource file specifies the static data for the setting:
/// <pre>
///     &lt;injected-location-setting xmlns:android="http://schemas.android.com/apk/res/android"
///         android:title="@string/injected_setting_title"
///         android:icon="@drawable/ic_acme_corp"
///         android:settingsActivity="com.example.android.injector.MySettingActivity"
///     /&gt;
/// </pre>
/// Here:
/// <ul>
///     <li>title: The android.preference.Preference\#getTitle() value. The title should make
///     it clear which apps are affected by the setting, typically by including the name of the
///     developer. For example, "Acme Corp. ads preferences." </li>
///
///     <li>icon: The android.preference.Preference\#getIcon() value. Typically this will be a
///     generic icon for the developer rather than the icon for an individual app.</li>
///
///     <li>settingsActivity: the activity which is launched to allow the user to modify the setting
///     value.  The activity must be in the same package as the subclass of
///     SettingInjectorService. The activity should use your own branding to help emphasize
///     to the user that it is not part of the system settings.</li>
/// </ul>
///
/// To ensure a good user experience, your android.app.Application\#onCreate(),
/// and \#onGetEnabled() methods must all be fast. If either is slow,
/// it can delay the display of settings values for other apps as well. Note further that these
/// methods are called on your app's UI thread.
/// <p/>
/// For compactness, only one copy of a given setting should be injected. If each account has a
/// distinct value for the setting, then only {@code settingsActivity} should display the value for
/// each account.
class SettingInjectorService extends service_.Service {
  static final _classRef =
      jniAccessors.getClassOf("android/location/SettingInjectorService");
  SettingInjectorService.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_INJECTED_SETTING_CHANGED
  ///
  /// Intent action a client should broadcast when the value of one of its injected settings has
  /// changed, so that the setting can be updated in the UI.
  static const ACTION_INJECTED_SETTING_CHANGED =
      "android.location.InjectedSettingChanged";

  /// from: static public final java.lang.String ACTION_SERVICE_INTENT
  ///
  /// Intent action that must be declared in the manifest for the subclass. Used to start the
  /// service to read the dynamic status for the setting.
  static const ACTION_SERVICE_INTENT =
      "android.location.SettingInjectorService";

  /// from: static public final java.lang.String ATTRIBUTES_NAME
  ///
  /// Name of the XML tag that includes the attributes for the setting.
  static const ATTRIBUTES_NAME = "injected-location-setting";

  /// from: static public final java.lang.String META_DATA_NAME
  ///
  /// Name of the meta-data tag used to specify the resource file that includes the settings
  /// attributes.
  static const META_DATA_NAME = "android.location.SettingInjectorService";

  static final _id_ctor3 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor.
  ///@param name used to identify your subclass in log messages
  SettingInjectorService.ctor3(jni.JniString name)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [name.reference]).object);

  static final _id_onBind = jniAccessors.getMethodIDOf(
      _classRef, "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;");

  /// from: public final android.os.IBinder onBind(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ibinder_.IBinder onBind(intent_.Intent intent) =>
      ibinder_.IBinder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onBind, jni.JniType.objectType, [intent.reference]).object);

  static final _id_onStart = jniAccessors.getMethodIDOf(
      _classRef, "onStart", "(Landroid/content/Intent;I)V");

  /// from: public final void onStart(android.content.Intent intent, int startId)
  void onStart(intent_.Intent intent, int startId) =>
      jniAccessors.callMethodWithArgs(reference, _id_onStart,
          jni.JniType.voidType, [intent.reference, startId]).check();

  static final _id_onStartCommand = jniAccessors.getMethodIDOf(
      _classRef, "onStartCommand", "(Landroid/content/Intent;II)I");

  /// from: public final int onStartCommand(android.content.Intent intent, int flags, int startId)
  int onStartCommand(intent_.Intent intent, int flags, int startId) =>
      jniAccessors.callMethodWithArgs(reference, _id_onStartCommand,
          jni.JniType.intType, [intent.reference, flags, startId]).integer;

  static final _id_onGetSummary = jniAccessors.getMethodIDOf(
      _classRef, "onGetSummary", "()Ljava/lang/String;");

  /// from: protected abstract java.lang.String onGetSummary()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// This method is no longer called, because status values are no longer shown for any injected
  /// setting.
  ///@return ignored
  ///@deprecated not called any more
  jni.JniString onGetSummary() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_onGetSummary, jni.JniType.objectType, []).object);

  static final _id_onGetEnabled =
      jniAccessors.getMethodIDOf(_classRef, "onGetEnabled", "()Z");

  /// from: protected abstract boolean onGetEnabled()
  ///
  /// Returns the android.preference.Preference\#isEnabled() value. Should not perform
  /// unpredictably-long operations such as network access--see the running-time comments in the
  /// class-level javadoc.
  /// <p/>
  /// Note that to prevent churn in the settings list, there is no support for dynamically choosing
  /// to hide a setting. Instead you should have this method return false, which will disable the
  /// setting and its link to your setting activity. One reason why you might choose to do this is
  /// if android.provider.Settings.Secure\#LOCATION_MODE is android.provider.Settings.Secure\#LOCATION_MODE_OFF.
  /// <p/>
  /// It is possible that the user may click on the setting before this method returns, so your
  /// settings activity must handle the case where it is invoked even though the setting is
  /// disabled. The simplest approach may be to simply call android.app.Activity\#finish()
  /// when disabled.
  ///@return the android.preference.Preference\#isEnabled() value
  bool onGetEnabled() => jniAccessors.callMethodWithArgs(
      reference, _id_onGetEnabled, jni.JniType.booleanType, []).boolean;
}
