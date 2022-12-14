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

import "../../os/Parcelable.dart" as parcelable_;

import "ActivityInfo.dart" as activityinfo_;

import "../IntentFilter.dart" as intentfilter_;

import "ProviderInfo.dart" as providerinfo_;

import "ServiceInfo.dart" as serviceinfo_;

import "PackageManager.dart" as packagemanager_;

import "../../graphics/drawable/Drawable.dart" as drawable_;

import "../../util/Printer.dart" as printer_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.pm.ResolveInfo
///
/// Information that is returned from resolving an intent
/// against an IntentFilter. This partially corresponds to
/// information collected from the AndroidManifest.xml's
/// &lt;intent&gt; tags.
class ResolveInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/pm/ResolveInfo");
  ResolveInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.pm.ResolveInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_activityInfo = jniAccessors.getFieldIDOf(
      _classRef, "activityInfo", "Landroid/content/pm/ActivityInfo;");

  /// from: public android.content.pm.ActivityInfo activityInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The activity or broadcast receiver that corresponds to this resolution
  /// match, if this resolution is for an activity or broadcast receiver.
  /// Exactly one of \#activityInfo, \#serviceInfo, or
  /// \#providerInfo will be non-null.
  activityinfo_.ActivityInfo get activityInfo =>
      activityinfo_.ActivityInfo.fromRef(jniAccessors
          .getField(reference, _id_activityInfo, jni.JniType.objectType)
          .object);

  /// from: public android.content.pm.ActivityInfo activityInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The activity or broadcast receiver that corresponds to this resolution
  /// match, if this resolution is for an activity or broadcast receiver.
  /// Exactly one of \#activityInfo, \#serviceInfo, or
  /// \#providerInfo will be non-null.
  set activityInfo(activityinfo_.ActivityInfo value) =>
      jniEnv.SetObjectField(reference, _id_activityInfo, value.reference);

  static final _id_filter = jniAccessors.getFieldIDOf(
      _classRef, "filter", "Landroid/content/IntentFilter;");

  /// from: public android.content.IntentFilter filter
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The IntentFilter that was matched for this ResolveInfo.
  intentfilter_.IntentFilter get filter =>
      intentfilter_.IntentFilter.fromRef(jniAccessors
          .getField(reference, _id_filter, jni.JniType.objectType)
          .object);

  /// from: public android.content.IntentFilter filter
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The IntentFilter that was matched for this ResolveInfo.
  set filter(intentfilter_.IntentFilter value) =>
      jniEnv.SetObjectField(reference, _id_filter, value.reference);

  static final _id_icon = jniAccessors.getFieldIDOf(_classRef, "icon", "I");

  /// from: public int icon
  ///
  /// A drawable resource identifier (in the package's resources) of this
  /// match's icon.  From the "icon" attribute or, if not set, 0. It is
  /// set only if the icon can be obtained by resource id alone.
  int get icon =>
      jniAccessors.getField(reference, _id_icon, jni.JniType.intType).integer;

  /// from: public int icon
  ///
  /// A drawable resource identifier (in the package's resources) of this
  /// match's icon.  From the "icon" attribute or, if not set, 0. It is
  /// set only if the icon can be obtained by resource id alone.
  set icon(int value) => jniEnv.SetIntField(reference, _id_icon, value);

  static final _id_isDefault =
      jniAccessors.getFieldIDOf(_classRef, "isDefault", "Z");

  /// from: public boolean isDefault
  ///
  /// This filter has specified the Intent.CATEGORY_DEFAULT, meaning it
  /// would like to be considered a default action that the user can
  /// perform on this data.
  bool get isDefault => jniAccessors
      .getField(reference, _id_isDefault, jni.JniType.booleanType)
      .boolean;

  /// from: public boolean isDefault
  ///
  /// This filter has specified the Intent.CATEGORY_DEFAULT, meaning it
  /// would like to be considered a default action that the user can
  /// perform on this data.
  set isDefault(bool value) =>
      jniEnv.SetBooleanField(reference, _id_isDefault, value ? 1 : 0);

  static final _id_isInstantAppAvailable =
      jniAccessors.getFieldIDOf(_classRef, "isInstantAppAvailable", "Z");

  /// from: public boolean isInstantAppAvailable
  ///
  /// Whether or not an instant app is available for the resolved intent.
  bool get isInstantAppAvailable => jniAccessors
      .getField(reference, _id_isInstantAppAvailable, jni.JniType.booleanType)
      .boolean;

  /// from: public boolean isInstantAppAvailable
  ///
  /// Whether or not an instant app is available for the resolved intent.
  set isInstantAppAvailable(bool value) => jniEnv.SetBooleanField(
      reference, _id_isInstantAppAvailable, value ? 1 : 0);

  static final _id_labelRes =
      jniAccessors.getFieldIDOf(_classRef, "labelRes", "I");

  /// from: public int labelRes
  ///
  /// A string resource identifier (in the package's resources) of this
  /// match's label.  From the "label" attribute or, if not set, 0.
  int get labelRes => jniAccessors
      .getField(reference, _id_labelRes, jni.JniType.intType)
      .integer;

  /// from: public int labelRes
  ///
  /// A string resource identifier (in the package's resources) of this
  /// match's label.  From the "label" attribute or, if not set, 0.
  set labelRes(int value) => jniEnv.SetIntField(reference, _id_labelRes, value);

  static final _id_match = jniAccessors.getFieldIDOf(_classRef, "match", "I");

  /// from: public int match
  ///
  /// The system's evaluation of how well the activity matches the
  /// IntentFilter.  This is a match constant, a combination of
  /// IntentFilter\#MATCH_CATEGORY_MASK IntentFilter.MATCH_CATEGORY_MASK
  /// and IntentFilter\#MATCH_ADJUSTMENT_MASK IntentFiler.MATCH_ADJUSTMENT_MASK.
  int get match =>
      jniAccessors.getField(reference, _id_match, jni.JniType.intType).integer;

  /// from: public int match
  ///
  /// The system's evaluation of how well the activity matches the
  /// IntentFilter.  This is a match constant, a combination of
  /// IntentFilter\#MATCH_CATEGORY_MASK IntentFilter.MATCH_CATEGORY_MASK
  /// and IntentFilter\#MATCH_ADJUSTMENT_MASK IntentFiler.MATCH_ADJUSTMENT_MASK.
  set match(int value) => jniEnv.SetIntField(reference, _id_match, value);

  static final _id_nonLocalizedLabel = jniAccessors.getFieldIDOf(
      _classRef, "nonLocalizedLabel", "Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence nonLocalizedLabel
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The actual string retrieve from <var>labelRes</var> or null if none
  /// was provided.
  jni.JniObject get nonLocalizedLabel => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_nonLocalizedLabel, jni.JniType.objectType)
      .object);

  /// from: public java.lang.CharSequence nonLocalizedLabel
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The actual string retrieve from <var>labelRes</var> or null if none
  /// was provided.
  set nonLocalizedLabel(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_nonLocalizedLabel, value.reference);

  static final _id_preferredOrder =
      jniAccessors.getFieldIDOf(_classRef, "preferredOrder", "I");

  /// from: public int preferredOrder
  ///
  /// Order of result according to the user's preference.  If the user
  /// has not set a preference for this result, the value is 0; higher
  /// values are a higher priority.
  int get preferredOrder => jniAccessors
      .getField(reference, _id_preferredOrder, jni.JniType.intType)
      .integer;

  /// from: public int preferredOrder
  ///
  /// Order of result according to the user's preference.  If the user
  /// has not set a preference for this result, the value is 0; higher
  /// values are a higher priority.
  set preferredOrder(int value) =>
      jniEnv.SetIntField(reference, _id_preferredOrder, value);

  static final _id_priority =
      jniAccessors.getFieldIDOf(_classRef, "priority", "I");

  /// from: public int priority
  ///
  /// The declared priority of this match.  Comes from the "priority"
  /// attribute or, if not set, defaults to 0.  Higher values are a higher
  /// priority.
  int get priority => jniAccessors
      .getField(reference, _id_priority, jni.JniType.intType)
      .integer;

  /// from: public int priority
  ///
  /// The declared priority of this match.  Comes from the "priority"
  /// attribute or, if not set, defaults to 0.  Higher values are a higher
  /// priority.
  set priority(int value) => jniEnv.SetIntField(reference, _id_priority, value);

  static final _id_providerInfo = jniAccessors.getFieldIDOf(
      _classRef, "providerInfo", "Landroid/content/pm/ProviderInfo;");

  /// from: public android.content.pm.ProviderInfo providerInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The provider that corresponds to this resolution match, if this
  /// resolution is for a provider. Exactly one of \#activityInfo,
  /// \#serviceInfo, or \#providerInfo will be non-null.
  providerinfo_.ProviderInfo get providerInfo =>
      providerinfo_.ProviderInfo.fromRef(jniAccessors
          .getField(reference, _id_providerInfo, jni.JniType.objectType)
          .object);

  /// from: public android.content.pm.ProviderInfo providerInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The provider that corresponds to this resolution match, if this
  /// resolution is for a provider. Exactly one of \#activityInfo,
  /// \#serviceInfo, or \#providerInfo will be non-null.
  set providerInfo(providerinfo_.ProviderInfo value) =>
      jniEnv.SetObjectField(reference, _id_providerInfo, value.reference);

  static final _id_resolvePackageName = jniAccessors.getFieldIDOf(
      _classRef, "resolvePackageName", "Ljava/lang/String;");

  /// from: public java.lang.String resolvePackageName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Optional -- if non-null, the \#labelRes and \#icon
  /// resources will be loaded from this package, rather than the one
  /// containing the resolved component.
  jni.JniString get resolvePackageName => jni.JniString.fromRef(jniAccessors
      .getField(reference, _id_resolvePackageName, jni.JniType.objectType)
      .object);

  /// from: public java.lang.String resolvePackageName
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Optional -- if non-null, the \#labelRes and \#icon
  /// resources will be loaded from this package, rather than the one
  /// containing the resolved component.
  set resolvePackageName(jni.JniString value) =>
      jniEnv.SetObjectField(reference, _id_resolvePackageName, value.reference);

  static final _id_serviceInfo = jniAccessors.getFieldIDOf(
      _classRef, "serviceInfo", "Landroid/content/pm/ServiceInfo;");

  /// from: public android.content.pm.ServiceInfo serviceInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The service that corresponds to this resolution match, if this resolution
  /// is for a service. Exactly one of \#activityInfo,
  /// \#serviceInfo, or \#providerInfo will be non-null.
  serviceinfo_.ServiceInfo get serviceInfo =>
      serviceinfo_.ServiceInfo.fromRef(jniAccessors
          .getField(reference, _id_serviceInfo, jni.JniType.objectType)
          .object);

  /// from: public android.content.pm.ServiceInfo serviceInfo
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The service that corresponds to this resolution match, if this resolution
  /// is for a service. Exactly one of \#activityInfo,
  /// \#serviceInfo, or \#providerInfo will be non-null.
  set serviceInfo(serviceinfo_.ServiceInfo value) =>
      jniEnv.SetObjectField(reference, _id_serviceInfo, value.reference);

  static final _id_specificIndex =
      jniAccessors.getFieldIDOf(_classRef, "specificIndex", "I");

  /// from: public int specificIndex
  ///
  /// Only set when returned by
  /// PackageManager\#queryIntentActivityOptions, this tells you
  /// which of the given specific intents this result came from.  0 is the
  /// first in the list, < 0 means it came from the generic Intent query.
  int get specificIndex => jniAccessors
      .getField(reference, _id_specificIndex, jni.JniType.intType)
      .integer;

  /// from: public int specificIndex
  ///
  /// Only set when returned by
  /// PackageManager\#queryIntentActivityOptions, this tells you
  /// which of the given specific intents this result came from.  0 is the
  /// first in the list, < 0 means it came from the generic Intent query.
  set specificIndex(int value) =>
      jniEnv.SetIntField(reference, _id_specificIndex, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ResolveInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/pm/ResolveInfo;)V");

  /// from: public void <init>(android.content.pm.ResolveInfo orig)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ResolveInfo.ctor1(ResolveInfo orig)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [orig.reference]).object);

  static final _id_loadLabel = jniAccessors.getMethodIDOf(
      _classRef,
      "loadLabel",
      "(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence loadLabel(android.content.pm.PackageManager pm)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the current textual label associated with this resolution.  This
  /// will call back on the given PackageManager to load the label from
  /// the application.
  ///@param pm A PackageManager from which the label can be loaded; usually
  /// the PackageManager from which you originally retrieved this item.
  ///@return Returns a CharSequence containing the resolutions's label.  If the
  /// item does not have a label, its name is returned.
  jni.JniObject loadLabel(packagemanager_.PackageManager pm) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_loadLabel, jni.JniType.objectType, [pm.reference]).object);

  static final _id_loadIcon = jniAccessors.getMethodIDOf(_classRef, "loadIcon",
      "(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable loadIcon(android.content.pm.PackageManager pm)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the current graphical icon associated with this resolution.  This
  /// will call back on the given PackageManager to load the icon from
  /// the application.
  ///@param pm A PackageManager from which the icon can be loaded; usually
  /// the PackageManager from which you originally retrieved this item.
  ///@return Returns a Drawable containing the resolution's icon.  If the
  /// item does not have an icon, the default activity icon is returned.
  drawable_.Drawable loadIcon(packagemanager_.PackageManager pm) =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_loadIcon, jni.JniType.objectType, [pm.reference]).object);

  static final _id_getIconResource =
      jniAccessors.getMethodIDOf(_classRef, "getIconResource", "()I");

  /// from: public final int getIconResource()
  ///
  /// Return the icon resource identifier to use for this match.  If the
  /// match defines an icon, that is used; else if the activity defines
  /// an icon, that is used; else, the application icon is used.
  ///@return The icon associated with this match.
  int getIconResource() => jniAccessors.callMethodWithArgs(
      reference, _id_getIconResource, jni.JniType.intType, []).integer;

  static final _id_dump = jniAccessors.getMethodIDOf(
      _classRef, "dump", "(Landroid/util/Printer;Ljava/lang/String;)V");

  /// from: public void dump(android.util.Printer pw, java.lang.String prefix)
  void dump(printer_.Printer pw, jni.JniString prefix) =>
      jniAccessors.callMethodWithArgs(reference, _id_dump, jni.JniType.voidType,
          [pw.reference, prefix.reference]).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int parcelableFlags)
  void writeToParcel(parcel_.Parcel dest, int parcelableFlags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, parcelableFlags]).check();
}

/// from: android.content.pm.ResolveInfo$DisplayNameComparator
class ResolveInfo_DisplayNameComparator extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/content/pm/ResolveInfo\$DisplayNameComparator");
  ResolveInfo_DisplayNameComparator.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/pm/PackageManager;)V");

  /// from: public void <init>(android.content.pm.PackageManager pm)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ResolveInfo_DisplayNameComparator(packagemanager_.PackageManager pm)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [pm.reference]).object);

  static final _id_compare = jniAccessors.getMethodIDOf(_classRef, "compare",
      "(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I");

  /// from: public final int compare(android.content.pm.ResolveInfo a, android.content.pm.ResolveInfo b)
  int compare(ResolveInfo a, ResolveInfo b) => jniAccessors.callMethodWithArgs(
      reference,
      _id_compare,
      jni.JniType.intType,
      [a.reference, b.reference]).integer;
}
