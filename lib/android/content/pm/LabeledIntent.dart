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

import "../Intent.dart" as intent_;

import "../../os/Parcelable.dart" as parcelable_;

import "PackageManager.dart" as packagemanager_;

import "../../graphics/drawable/Drawable.dart" as drawable_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.pm.LabeledIntent
///
/// A special subclass of Intent that can have a custom label/icon
/// associated with it.  Primarily for use with Intent\#ACTION_CHOOSER.
class LabeledIntent extends intent_.Intent {
  static final _classRef =
      jniAccessors.getClassOf("android/content/pm/LabeledIntent");
  LabeledIntent.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR1 = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.pm.LabeledIntent> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR1 =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR1, jni.JniType.objectType)
          .object);

  static final _id_ctor6 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Intent;Ljava/lang/String;II)V");

  /// from: public void <init>(android.content.Intent origIntent, java.lang.String sourcePackage, int labelRes, int icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a labeled intent from the given intent, supplying the label
  /// and icon resources for it.
  ///@param origIntent The original Intent to copy.
  ///@param sourcePackage The package in which the label and icon live.
  ///@param labelRes Resource containing the label, or 0 if none.
  ///@param icon Resource containing the icon, or 0 if none.
  LabeledIntent.ctor6(intent_.Intent origIntent, jni.JniString sourcePackage,
      int labelRes, int icon)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor6, [
          origIntent.reference,
          sourcePackage.reference,
          labelRes,
          icon
        ]).object);

  static final _id_ctor7 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V");

  /// from: public void <init>(android.content.Intent origIntent, java.lang.String sourcePackage, java.lang.CharSequence nonLocalizedLabel, int icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a labeled intent from the given intent, supplying a textual
  /// label and icon resource for it.
  ///@param origIntent The original Intent to copy.
  ///@param sourcePackage The package in which the label and icon live.
  ///@param nonLocalizedLabel Concrete text to use for the label.
  ///@param icon Resource containing the icon, or 0 if none.
  LabeledIntent.ctor7(intent_.Intent origIntent, jni.JniString sourcePackage,
      jni.JniObject nonLocalizedLabel, int icon)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor7, [
          origIntent.reference,
          sourcePackage.reference,
          nonLocalizedLabel.reference,
          icon
        ]).object);

  static final _id_ctor8 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;II)V");

  /// from: public void <init>(java.lang.String sourcePackage, int labelRes, int icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a labeled intent with no intent data but supplying the label
  /// and icon resources for it.
  ///@param sourcePackage The package in which the label and icon live.
  ///@param labelRes Resource containing the label, or 0 if none.
  ///@param icon Resource containing the icon, or 0 if none.
  LabeledIntent.ctor8(jni.JniString sourcePackage, int labelRes, int icon)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor8,
            [sourcePackage.reference, labelRes, icon]).object);

  static final _id_ctor9 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/CharSequence;I)V");

  /// from: public void <init>(java.lang.String sourcePackage, java.lang.CharSequence nonLocalizedLabel, int icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a labeled intent with no intent data but supplying a textual
  /// label and icon resource for it.
  ///@param sourcePackage The package in which the label and icon live.
  ///@param nonLocalizedLabel Concrete text to use for the label.
  ///@param icon Resource containing the icon, or 0 if none.
  LabeledIntent.ctor9(
      jni.JniString sourcePackage, jni.JniObject nonLocalizedLabel, int icon)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor9, [
          sourcePackage.reference,
          nonLocalizedLabel.reference,
          icon
        ]).object);

  static final _id_getSourcePackage = jniAccessors.getMethodIDOf(
      _classRef, "getSourcePackage", "()Ljava/lang/String;");

  /// from: public java.lang.String getSourcePackage()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the name of the package holding label and icon resources.
  jni.JniString getSourcePackage() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSourcePackage, jni.JniType.objectType, []).object);

  static final _id_getLabelResource =
      jniAccessors.getMethodIDOf(_classRef, "getLabelResource", "()I");

  /// from: public int getLabelResource()
  ///
  /// Return any resource identifier that has been given for the label text.
  int getLabelResource() => jniAccessors.callMethodWithArgs(
      reference, _id_getLabelResource, jni.JniType.intType, []).integer;

  static final _id_getNonLocalizedLabel = jniAccessors.getMethodIDOf(
      _classRef, "getNonLocalizedLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getNonLocalizedLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return any concrete text that has been given for the label text.
  jni.JniObject getNonLocalizedLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getNonLocalizedLabel, jni.JniType.objectType, []).object);

  static final _id_getIconResource =
      jniAccessors.getMethodIDOf(_classRef, "getIconResource", "()I");

  /// from: public int getIconResource()
  ///
  /// Return any resource identifier that has been given for the label icon.
  int getIconResource() => jniAccessors.callMethodWithArgs(
      reference, _id_getIconResource, jni.JniType.intType, []).integer;

  static final _id_loadLabel = jniAccessors.getMethodIDOf(
      _classRef,
      "loadLabel",
      "(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence loadLabel(android.content.pm.PackageManager pm)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the label associated with this object.  If the object does
  /// not have a label, null will be returned, in which case you will probably
  /// want to load the label from the underlying resolved info for the Intent.
  jni.JniObject loadLabel(packagemanager_.PackageManager pm) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_loadLabel, jni.JniType.objectType, [pm.reference]).object);

  static final _id_loadIcon = jniAccessors.getMethodIDOf(_classRef, "loadIcon",
      "(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable loadIcon(android.content.pm.PackageManager pm)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the icon associated with this object.  If the object does
  /// not have a icon, null will be returned, in which case you will probably
  /// want to load the icon from the underlying resolved info for the Intent.
  drawable_.Drawable loadIcon(packagemanager_.PackageManager pm) =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_loadIcon, jni.JniType.objectType, [pm.reference]).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int parcelableFlags)
  void writeToParcel(parcel_.Parcel dest, int parcelableFlags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, parcelableFlags]).check();

  static final _id_readFromParcel = jniAccessors.getMethodIDOf(
      _classRef, "readFromParcel", "(Landroid/os/Parcel;)V");

  /// from: public void readFromParcel(android.os.Parcel in)
  void readFromParcel(parcel_.Parcel in0) => jniAccessors.callMethodWithArgs(
      reference,
      _id_readFromParcel,
      jni.JniType.voidType,
      [in0.reference]).check();
}
