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

import "../../os/Parcelable.dart" as parcelable_;

import "../../content/Context.dart" as context_;

import "../../content/pm/ResolveInfo.dart" as resolveinfo_;

import "../../content/pm/ServiceInfo.dart" as serviceinfo_;

import "../../content/ComponentName.dart" as componentname_;

import "../../content/pm/PackageManager.dart" as packagemanager_;

import "../../graphics/drawable/Drawable.dart" as drawable_;

import "InputMethodSubtype.dart" as inputmethodsubtype_;

import "../../util/Printer.dart" as printer_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.inputmethod.InputMethodInfo
///
/// This class is used to specify meta information of an input method.
///
/// It should be defined in an XML resource file with an {@code <input-method>} element.
/// For more information, see the guide to
/// <a href="{@docRoot}guide/topics/text/creating-input-method.html">
/// Creating an Input Method</a>.
///
///@see InputMethodSubtype
///@attr ref android.R.styleable\#InputMethod_settingsActivity
///@attr ref android.R.styleable\#InputMethod_isDefault
///@attr ref android.R.styleable\#InputMethod_supportsSwitchingToNextInputMethod
class InputMethodInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/inputmethod/InputMethodInfo");
  InputMethodInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.inputmethod.InputMethodInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Used to make this class parcelable.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V");

  /// from: public void <init>(android.content.Context context, android.content.pm.ResolveInfo service)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor.
  ///@param context The Context in which we are parsing the input method.
  ///@param service The ResolveInfo returned from the package manager about
  /// this input method's component.
  InputMethodInfo(context_.Context context, resolveinfo_.ResolveInfo service)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [context.reference, service.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String packageName, java.lang.String className, java.lang.CharSequence label, java.lang.String settingsActivity)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Temporary API for creating a built-in input method for test.
  InputMethodInfo.ctor1(jni.JniString packageName, jni.JniString className,
      jni.JniObject label, jni.JniString settingsActivity)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, [
          packageName.reference,
          className.reference,
          label.reference,
          settingsActivity.reference
        ]).object);

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()Ljava/lang/String;");

  /// from: public java.lang.String getId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a unique ID for this input method.  The ID is generated from
  /// the package and class name implementing the method.
  jni.JniString getId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getId, jni.JniType.objectType, []).object);

  static final _id_getPackageName = jniAccessors.getMethodIDOf(
      _classRef, "getPackageName", "()Ljava/lang/String;");

  /// from: public java.lang.String getPackageName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the .apk package that implements this input method.
  jni.JniString getPackageName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPackageName, jni.JniType.objectType, []).object);

  static final _id_getServiceName = jniAccessors.getMethodIDOf(
      _classRef, "getServiceName", "()Ljava/lang/String;");

  /// from: public java.lang.String getServiceName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the class name of the service component that implements
  /// this input method.
  jni.JniString getServiceName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getServiceName, jni.JniType.objectType, []).object);

  static final _id_getServiceInfo = jniAccessors.getMethodIDOf(
      _classRef, "getServiceInfo", "()Landroid/content/pm/ServiceInfo;");

  /// from: public android.content.pm.ServiceInfo getServiceInfo()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the raw information about the Service implementing this
  /// input method.  Do not modify the returned object.
  serviceinfo_.ServiceInfo getServiceInfo() =>
      serviceinfo_.ServiceInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getServiceInfo, jni.JniType.objectType, []).object);

  static final _id_getComponent = jniAccessors.getMethodIDOf(
      _classRef, "getComponent", "()Landroid/content/ComponentName;");

  /// from: public android.content.ComponentName getComponent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the component of the service that implements this input
  /// method.
  componentname_.ComponentName getComponent() =>
      componentname_.ComponentName.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getComponent, jni.JniType.objectType, []).object);

  static final _id_loadLabel = jniAccessors.getMethodIDOf(
      _classRef,
      "loadLabel",
      "(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence loadLabel(android.content.pm.PackageManager pm)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Load the user-displayed label for this input method.
  ///@param pm Supply a PackageManager used to load the input method's
  /// resources.
  jni.JniObject loadLabel(packagemanager_.PackageManager pm) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_loadLabel, jni.JniType.objectType, [pm.reference]).object);

  static final _id_loadIcon = jniAccessors.getMethodIDOf(_classRef, "loadIcon",
      "(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable loadIcon(android.content.pm.PackageManager pm)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Load the user-displayed icon for this input method.
  ///@param pm Supply a PackageManager used to load the input method's
  /// resources.
  drawable_.Drawable loadIcon(packagemanager_.PackageManager pm) =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_loadIcon, jni.JniType.objectType, [pm.reference]).object);

  static final _id_getSettingsActivity = jniAccessors.getMethodIDOf(
      _classRef, "getSettingsActivity", "()Ljava/lang/String;");

  /// from: public java.lang.String getSettingsActivity()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the class name of an activity that provides a settings UI for
  /// the input method.  You can launch this activity be starting it with
  /// an android.content.Intent whose action is MAIN and with an
  /// explicit android.content.ComponentName
  /// composed of \#getPackageName and the class name returned here.
  ///
  /// A null will be returned if there is no settings activity associated
  /// with the input method.
  ///
  jni.JniString getSettingsActivity() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getSettingsActivity, jni.JniType.objectType, []).object);

  static final _id_getSubtypeCount =
      jniAccessors.getMethodIDOf(_classRef, "getSubtypeCount", "()I");

  /// from: public int getSubtypeCount()
  ///
  /// Return the count of the subtypes of Input Method.
  int getSubtypeCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getSubtypeCount, jni.JniType.intType, []).integer;

  static final _id_getSubtypeAt = jniAccessors.getMethodIDOf(_classRef,
      "getSubtypeAt", "(I)Landroid/view/inputmethod/InputMethodSubtype;");

  /// from: public android.view.inputmethod.InputMethodSubtype getSubtypeAt(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the Input Method's subtype at the specified index.
  ///@param index the index of the subtype to return.
  inputmethodsubtype_.InputMethodSubtype getSubtypeAt(int index) =>
      inputmethodsubtype_.InputMethodSubtype.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getSubtypeAt,
              jni.JniType.objectType, [index]).object);

  static final _id_getIsDefaultResourceId =
      jniAccessors.getMethodIDOf(_classRef, "getIsDefaultResourceId", "()I");

  /// from: public int getIsDefaultResourceId()
  ///
  /// Return the resource identifier of a resource inside of this input
  /// method's .apk that determines whether it should be considered a
  /// default input method for the system.
  int getIsDefaultResourceId() => jniAccessors.callMethodWithArgs(
      reference, _id_getIsDefaultResourceId, jni.JniType.intType, []).integer;

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

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  ///
  /// Used to test whether the given parameter object is an
  /// InputMethodInfo and its Id is the same to this one.
  ///@return true if the given parameter object is an
  ///         InputMethodInfo and its Id is the same to this one.
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Used to package this object into a Parcel.
  ///@param dest The Parcel to be written.
  ///@param flags The flags used for parceling.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;
}
