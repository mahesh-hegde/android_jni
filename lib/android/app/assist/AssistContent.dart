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

import "../../content/Intent.dart" as intent_;

import "../../content/ClipData.dart" as clipdata_;

import "../../net/Uri.dart" as uri_;

import "../../os/Bundle.dart" as bundle_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.assist.AssistContent
///
/// Holds information about the content an application is viewing, to hand to an
/// assistant at the user's request.  This is filled in by
/// android.app.Activity\#onProvideAssistContent Activity.onProvideAssistContent.
class AssistContent extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/assist/AssistContent");
  AssistContent.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.assist.AssistContent> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AssistContent()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setIntent = jniAccessors.getMethodIDOf(
      _classRef, "setIntent", "(Landroid/content/Intent;)V");

  /// from: public void setIntent(android.content.Intent intent)
  ///
  /// Sets the Intent associated with the content, describing the current top-level context of
  /// the activity.  If this contains a reference to a piece of data related to the activity,
  /// be sure to set Intent\#FLAG_GRANT_READ_URI_PERMISSION so the accessibility
  /// service can access it.
  void setIntent(intent_.Intent intent) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setIntent,
      jni.JniType.voidType,
      [intent.reference]).check();

  static final _id_getIntent = jniAccessors.getMethodIDOf(
      _classRef, "getIntent", "()Landroid/content/Intent;");

  /// from: public android.content.Intent getIntent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the current \#setIntent if one is set, else the default Intent obtained from
  /// android.app.Activity\#getIntent Activity.getIntent. Can be modified in-place.
  intent_.Intent getIntent() =>
      intent_.Intent.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getIntent, jni.JniType.objectType, []).object);

  static final _id_isAppProvidedIntent =
      jniAccessors.getMethodIDOf(_classRef, "isAppProvidedIntent", "()Z");

  /// from: public boolean isAppProvidedIntent()
  ///
  /// Returns whether or not the current Intent was explicitly provided in
  /// android.app.Activity\#onProvideAssistContent Activity.onProvideAssistContent. If not,
  /// the Intent was automatically set based on
  /// android.app.Activity\#getIntent Activity.getIntent.
  bool isAppProvidedIntent() => jniAccessors.callMethodWithArgs(
      reference, _id_isAppProvidedIntent, jni.JniType.booleanType, []).boolean;

  static final _id_setClipData = jniAccessors.getMethodIDOf(
      _classRef, "setClipData", "(Landroid/content/ClipData;)V");

  /// from: public void setClipData(android.content.ClipData clip)
  ///
  /// Optional additional content items that are involved with
  /// the current UI.  Access to this content will be granted to the assistant as if you
  /// are sending it through an Intent with Intent\#FLAG_GRANT_READ_URI_PERMISSION.
  void setClipData(clipdata_.ClipData clip) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setClipData,
      jni.JniType.voidType,
      [clip.reference]).check();

  static final _id_getClipData = jniAccessors.getMethodIDOf(
      _classRef, "getClipData", "()Landroid/content/ClipData;");

  /// from: public android.content.ClipData getClipData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the current \#setClipData, which you can modify in-place.
  clipdata_.ClipData getClipData() =>
      clipdata_.ClipData.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getClipData, jni.JniType.objectType, []).object);

  static final _id_setStructuredData = jniAccessors.getMethodIDOf(
      _classRef, "setStructuredData", "(Ljava/lang/String;)V");

  /// from: public void setStructuredData(java.lang.String structuredData)
  ///
  /// Sets optional structured data regarding the content being viewed. The provided data
  /// must be a string represented with <a href="http://json-ld.org/">JSON-LD</a> using the
  /// <a href="http://schema.org/">schema.org</a> vocabulary.
  void setStructuredData(jni.JniString structuredData) =>
      jniAccessors.callMethodWithArgs(reference, _id_setStructuredData,
          jni.JniType.voidType, [structuredData.reference]).check();

  static final _id_getStructuredData = jniAccessors.getMethodIDOf(
      _classRef, "getStructuredData", "()Ljava/lang/String;");

  /// from: public java.lang.String getStructuredData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the current \#setStructuredData.
  jni.JniString getStructuredData() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getStructuredData, jni.JniType.objectType, []).object);

  static final _id_setWebUri = jniAccessors.getMethodIDOf(
      _classRef, "setWebUri", "(Landroid/net/Uri;)V");

  /// from: public void setWebUri(android.net.Uri uri)
  ///
  /// Set a web URI associated with the current data being shown to the user.
  /// This URI could be opened in a web browser, or in the app as an
  /// Intent\#ACTION_VIEW Intent, to show the same data that is currently
  /// being displayed by it.  The URI here should be something that is transportable
  /// off the device into other environments to acesss the same data as is currently
  /// being shown in the app; if the app does not have such a representation, it should
  /// leave the null and only report the local intent and clip data.
  void setWebUri(uri_.Uri uri) => jniAccessors.callMethodWithArgs(
      reference, _id_setWebUri, jni.JniType.voidType, [uri.reference]).check();

  static final _id_getWebUri =
      jniAccessors.getMethodIDOf(_classRef, "getWebUri", "()Landroid/net/Uri;");

  /// from: public android.net.Uri getWebUri()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the content's web URI as per \#setWebUri(android.net.Uri), or null if
  /// there is none.
  uri_.Uri getWebUri() => uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getWebUri, jni.JniType.objectType, []).object);

  static final _id_isAppProvidedWebUri =
      jniAccessors.getMethodIDOf(_classRef, "isAppProvidedWebUri", "()Z");

  /// from: public boolean isAppProvidedWebUri()
  ///
  /// Returns whether or not the current \#getWebUri was explicitly provided in
  /// android.app.Activity\#onProvideAssistContent Activity.onProvideAssistContent. If not,
  /// the Intent was automatically set based on
  /// android.app.Activity\#getIntent Activity.getIntent.
  bool isAppProvidedWebUri() => jniAccessors.callMethodWithArgs(
      reference, _id_isAppProvidedWebUri, jni.JniType.booleanType, []).boolean;

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return Bundle for extra vendor-specific data that can be modified and examined.
  bundle_.Bundle getExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
