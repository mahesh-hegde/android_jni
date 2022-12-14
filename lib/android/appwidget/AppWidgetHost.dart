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

import "../content/Context.dart" as context_;

import "../app/Activity.dart" as activity_;

import "../os/Bundle.dart" as bundle_;

import "AppWidgetHostView.dart" as appwidgethostview_;

import "AppWidgetProviderInfo.dart" as appwidgetproviderinfo_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.appwidget.AppWidgetHost
///
/// AppWidgetHost provides the interaction with the AppWidget service for apps,
/// like the home screen, that want to embed AppWidgets in their UI.
class AppWidgetHost extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/appwidget/AppWidgetHost");
  AppWidgetHost.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;I)V");

  /// from: public void <init>(android.content.Context context, int hostId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AppWidgetHost(context_.Context context, int hostId)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference, hostId]).object);

  static final _id_startListening =
      jniAccessors.getMethodIDOf(_classRef, "startListening", "()V");

  /// from: public void startListening()
  ///
  /// Start receiving onAppWidgetChanged calls for your AppWidgets.  Call this when your activity
  /// becomes visible, i.e. from onStart() in your Activity.
  void startListening() => jniAccessors.callMethodWithArgs(
      reference, _id_startListening, jni.JniType.voidType, []).check();

  static final _id_stopListening =
      jniAccessors.getMethodIDOf(_classRef, "stopListening", "()V");

  /// from: public void stopListening()
  ///
  /// Stop receiving onAppWidgetChanged calls for your AppWidgets.  Call this when your activity is
  /// no longer visible, i.e. from onStop() in your Activity.
  void stopListening() => jniAccessors.callMethodWithArgs(
      reference, _id_stopListening, jni.JniType.voidType, []).check();

  static final _id_allocateAppWidgetId =
      jniAccessors.getMethodIDOf(_classRef, "allocateAppWidgetId", "()I");

  /// from: public int allocateAppWidgetId()
  ///
  /// Get a appWidgetId for a host in the calling process.
  ///@return a appWidgetId
  int allocateAppWidgetId() => jniAccessors.callMethodWithArgs(
      reference, _id_allocateAppWidgetId, jni.JniType.intType, []).integer;

  static final _id_startAppWidgetConfigureActivityForResult =
      jniAccessors.getMethodIDOf(
          _classRef,
          "startAppWidgetConfigureActivityForResult",
          "(Landroid/app/Activity;IIILandroid/os/Bundle;)V");

  /// from: public final void startAppWidgetConfigureActivityForResult(android.app.Activity activity, int appWidgetId, int intentFlags, int requestCode, android.os.Bundle options)
  ///
  /// Starts an app widget provider configure activity for result on behalf of the caller.
  /// Use this method if the provider is in another profile as you are not allowed to start
  /// an activity in another profile. You can optionally provide a request code that is
  /// returned in Activity\#onActivityResult(int, int, android.content.Intent) and
  /// an options bundle to be passed to the started activity.
  ///
  /// Note that the provided app widget has to be bound for this method to work.
  ///
  ///
  ///@param activity The activity from which to start the configure one.
  /// This value must never be {@code null}.
  ///@param appWidgetId The bound app widget whose provider's config activity to start.
  ///@param requestCode Optional request code retuned with the result.
  ///@param intentFlags Optional intent flags.
  ///@throws android.content.ActivityNotFoundException If the activity is not found.
  ///@see AppWidgetProviderInfo\#getProfile()
  ///@param options This value may be {@code null}.
  void startAppWidgetConfigureActivityForResult(
          activity_.Activity activity,
          int appWidgetId,
          int intentFlags,
          int requestCode,
          bundle_.Bundle options) =>
      jniAccessors.callMethodWithArgs(reference,
          _id_startAppWidgetConfigureActivityForResult, jni.JniType.voidType, [
        activity.reference,
        appWidgetId,
        intentFlags,
        requestCode,
        options.reference
      ]).check();

  static final _id_getAppWidgetIds =
      jniAccessors.getMethodIDOf(_classRef, "getAppWidgetIds", "()[I");

  /// from: public int[] getAppWidgetIds()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets a list of all the appWidgetIds that are bound to the current host
  jni.JniObject getAppWidgetIds() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAppWidgetIds, jni.JniType.objectType, []).object);

  static final _id_deleteAppWidgetId =
      jniAccessors.getMethodIDOf(_classRef, "deleteAppWidgetId", "(I)V");

  /// from: public void deleteAppWidgetId(int appWidgetId)
  ///
  /// Stop listening to changes for this AppWidget.
  void deleteAppWidgetId(int appWidgetId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_deleteAppWidgetId,
      jni.JniType.voidType,
      [appWidgetId]).check();

  static final _id_deleteHost =
      jniAccessors.getMethodIDOf(_classRef, "deleteHost", "()V");

  /// from: public void deleteHost()
  ///
  /// Remove all records about this host from the AppWidget manager.
  /// <ul>
  ///   <li>Call this when initializing your database, as it might be because of a data wipe.</li>
  ///   <li>Call this to have the AppWidget manager release all resources associated with your
  ///   host.  Any future calls about this host will cause the records to be re-allocated.</li>
  /// </ul>
  void deleteHost() => jniAccessors.callMethodWithArgs(
      reference, _id_deleteHost, jni.JniType.voidType, []).check();

  static final _id_deleteAllHosts =
      jniAccessors.getStaticMethodIDOf(_classRef, "deleteAllHosts", "()V");

  /// from: static public void deleteAllHosts()
  ///
  /// Remove all records about all hosts for your package.
  /// <ul>
  ///   <li>Call this when initializing your database, as it might be because of a data wipe.</li>
  ///   <li>Call this to have the AppWidget manager release all resources associated with your
  ///   host.  Any future calls about this host will cause the records to be re-allocated.</li>
  /// </ul>
  static void deleteAllHosts() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_deleteAllHosts, jni.JniType.voidType, []).check();

  static final _id_createView = jniAccessors.getMethodIDOf(
      _classRef,
      "createView",
      "(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;");

  /// from: public final android.appwidget.AppWidgetHostView createView(android.content.Context context, int appWidgetId, android.appwidget.AppWidgetProviderInfo appWidget)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create the AppWidgetHostView for the given widget.
  /// The AppWidgetHost retains a pointer to the newly-created View.
  appwidgethostview_.AppWidgetHostView createView(
          context_.Context context,
          int appWidgetId,
          appwidgetproviderinfo_.AppWidgetProviderInfo appWidget) =>
      appwidgethostview_.AppWidgetHostView.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_createView, jni.JniType.objectType,
              [context.reference, appWidgetId, appWidget.reference]).object);

  static final _id_onCreateView = jniAccessors.getMethodIDOf(
      _classRef,
      "onCreateView",
      "(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;");

  /// from: protected android.appwidget.AppWidgetHostView onCreateView(android.content.Context context, int appWidgetId, android.appwidget.AppWidgetProviderInfo appWidget)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Called to create the AppWidgetHostView.  Override to return a custom subclass if you
  /// need it.  {@more }
  appwidgethostview_.AppWidgetHostView onCreateView(
          context_.Context context,
          int appWidgetId,
          appwidgetproviderinfo_.AppWidgetProviderInfo appWidget) =>
      appwidgethostview_.AppWidgetHostView.fromRef(jniAccessors
          .callMethodWithArgs(
              reference,
              _id_onCreateView,
              jni.JniType.objectType,
              [context.reference, appWidgetId, appWidget.reference]).object);

  static final _id_onProviderChanged = jniAccessors.getMethodIDOf(_classRef,
      "onProviderChanged", "(ILandroid/appwidget/AppWidgetProviderInfo;)V");

  /// from: protected void onProviderChanged(int appWidgetId, android.appwidget.AppWidgetProviderInfo appWidget)
  ///
  /// Called when the AppWidget provider for a AppWidget has been upgraded to a new apk.
  void onProviderChanged(int appWidgetId,
          appwidgetproviderinfo_.AppWidgetProviderInfo appWidget) =>
      jniAccessors.callMethodWithArgs(reference, _id_onProviderChanged,
          jni.JniType.voidType, [appWidgetId, appWidget.reference]).check();

  static final _id_onProvidersChanged =
      jniAccessors.getMethodIDOf(_classRef, "onProvidersChanged", "()V");

  /// from: protected void onProvidersChanged()
  ///
  /// Called when the set of available widgets changes (ie. widget containing packages
  /// are added, updated or removed, or widget components are enabled or disabled.)
  void onProvidersChanged() => jniAccessors.callMethodWithArgs(
      reference, _id_onProvidersChanged, jni.JniType.voidType, []).check();

  static final _id_clearViews =
      jniAccessors.getMethodIDOf(_classRef, "clearViews", "()V");

  /// from: protected void clearViews()
  ///
  /// Clear the list of Views that have been created by this AppWidgetHost.
  void clearViews() => jniAccessors.callMethodWithArgs(
      reference, _id_clearViews, jni.JniType.voidType, []).check();
}
