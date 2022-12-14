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

import "../../graphics/drawable/Icon.dart" as icon_;

import "../../content/ComponentName.dart" as componentname_;

import "../../os/Bundle.dart" as bundle_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.chooser.ChooserTarget
///
/// A ChooserTarget represents a deep-link into an application as returned by a
/// android.service.chooser.ChooserTargetService.
///
/// A chooser target represents a specific deep link target into an application exposed
/// for selection by the user. This might be a frequently emailed contact, a recently active
/// group messaging conversation, a folder in a cloud storage app, a collection of related
/// items published on a social media service or any other contextually relevant grouping
/// of target app + relevant metadata.
///
///
/// Creators of chooser targets should consult the relevant design guidelines for the type
/// of target they are presenting. For example, targets involving people should be presented
/// with a circular icon.
///
class ChooserTarget extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/chooser/ChooserTarget");
  ChooserTarget.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.service.chooser.ChooserTarget> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;FLandroid/content/ComponentName;Landroid/os/Bundle;)V");

  /// from: public void <init>(java.lang.CharSequence title, android.graphics.drawable.Icon icon, float score, android.content.ComponentName componentName, android.os.Bundle intentExtras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct a deep link target for presentation by a chooser UI.
  ///
  /// A target is composed of a title and an icon for presentation to the user.
  /// The UI presenting this target may truncate the title if it is too long to be presented
  /// in the available space, as well as crop, resize or overlay the supplied icon.
  ///
  ///
  /// The creator of a target may supply a ranking score. This score is assumed to be relative
  /// to the other targets supplied by the same
  /// ChooserTargetService\#onGetChooserTargets(ComponentName, IntentFilter) query.
  /// Scores should be in the range from 0.0f (unlikely match) to 1.0f (very relevant match).
  /// Scores for a set of targets do not need to sum to 1.
  ///
  ///
  /// The ComponentName must be the name of an Activity component in the creator's own
  /// package, or an exported component from any other package. You may provide an optional
  /// Bundle of extras that will be merged into the final intent before it is sent to the
  /// target Activity; use this to add any additional data about the deep link that the target
  /// activity will read. e.g. conversation IDs, email addresses, etc.
  ///
  ///
  /// Take care not to place custom android.os.Parcelable types into
  /// the extras bundle, as the system will not be able to unparcel them to merge them.
  ///
  ///@param title title of this target that will be shown to a user
  ///@param icon icon to represent this target
  ///@param score ranking score for this target between 0.0f and 1.0f, inclusive
  ///@param componentName Name of the component to be launched if this target is chosen
  ///@param intentExtras Bundle of extras to merge with the extras of the launched intent
  ///
  /// This value may be {@code null}.
  ChooserTarget(jni.JniObject title, icon_.Icon icon, double score,
      componentname_.ComponentName componentName, bundle_.Bundle intentExtras)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          title.reference,
          icon.reference,
          score,
          componentName.reference,
          intentExtras.reference
        ]).object);

  static final _id_getTitle = jniAccessors.getMethodIDOf(
      _classRef, "getTitle", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getTitle()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the title of this target for display to a user. The UI displaying the title
  /// may truncate this title if it is too long to be displayed in full.
  ///@return the title of this target, intended to be shown to a user
  jni.JniObject getTitle() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTitle, jni.JniType.objectType, []).object);

  static final _id_getIcon = jniAccessors.getMethodIDOf(
      _classRef, "getIcon", "()Landroid/graphics/drawable/Icon;");

  /// from: public android.graphics.drawable.Icon getIcon()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the icon representing this target for display to a user. The UI displaying the icon
  /// may crop, resize or overlay this icon.
  ///@return the icon representing this target, intended to be shown to a user
  icon_.Icon getIcon() => icon_.Icon.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getIcon, jni.JniType.objectType, []).object);

  static final _id_getScore =
      jniAccessors.getMethodIDOf(_classRef, "getScore", "()F");

  /// from: public float getScore()
  ///
  /// Returns the ranking score supplied by the creator of this ChooserTarget.
  /// Values are between 0.0f and 1.0f. The UI displaying the target may
  /// take this score into account when sorting and merging targets from multiple sources.
  ///@return the ranking score for this target between 0.0f and 1.0f, inclusive
  double getScore() => jniAccessors.callMethodWithArgs(
      reference, _id_getScore, jni.JniType.floatType, []).float;

  static final _id_getComponentName = jniAccessors.getMethodIDOf(
      _classRef, "getComponentName", "()Landroid/content/ComponentName;");

  /// from: public android.content.ComponentName getComponentName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the ComponentName of the Activity that should be launched for this ChooserTarget.
  ///@return the name of the target Activity to launch
  componentname_.ComponentName getComponentName() =>
      componentname_.ComponentName.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getComponentName, jni.JniType.objectType, []).object);

  static final _id_getIntentExtras = jniAccessors.getMethodIDOf(
      _classRef, "getIntentExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getIntentExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the Bundle of extras to be added to an intent launched to this target.
  ///@return the extras to merge with the extras of the intent being launched
  bundle_.Bundle getIntentExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getIntentExtras, jni.JniType.objectType, []).object);

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

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
