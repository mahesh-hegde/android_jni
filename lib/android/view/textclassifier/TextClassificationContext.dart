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

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.textclassifier.TextClassificationContext
///
/// A representation of the context in which text classification would be performed.
///@see TextClassificationManager\#createTextClassificationSession(TextClassificationContext)
class TextClassificationContext extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/view/textclassifier/TextClassificationContext");
  TextClassificationContext.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.textclassifier.TextClassificationContext> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_getPackageName = jniAccessors.getMethodIDOf(
      _classRef, "getPackageName", "()Ljava/lang/String;");

  /// from: public java.lang.String getPackageName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the package name for the calling package.
  ///@return This value will never be {@code null}.
  jni.JniString getPackageName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPackageName, jni.JniType.objectType, []).object);

  static final _id_getWidgetType = jniAccessors.getMethodIDOf(
      _classRef, "getWidgetType", "()Ljava/lang/String;");

  /// from: public java.lang.String getWidgetType()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the widget type for this classification context.
  ///@return This value will never be {@code null}.
  ///
  /// Value is android.view.textclassifier.TextClassifier\#WIDGET_TYPE_TEXTVIEW, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_EDITTEXT, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_UNSELECTABLE_TEXTVIEW, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_WEBVIEW, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_EDIT_WEBVIEW, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_CUSTOM_TEXTVIEW, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_CUSTOM_EDITTEXT, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_CUSTOM_UNSELECTABLE_TEXTVIEW, or android.view.textclassifier.TextClassifier\#WIDGET_TYPE_UNKNOWN
  jni.JniString getWidgetType() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getWidgetType, jni.JniType.objectType, []).object);

  static final _id_getWidgetVersion = jniAccessors.getMethodIDOf(
      _classRef, "getWidgetVersion", "()Ljava/lang/String;");

  /// from: public java.lang.String getWidgetVersion()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a custom version string for the widget type.
  ///@see \#getWidgetType()
  ///@return This value may be {@code null}.
  jni.JniString getWidgetVersion() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getWidgetVersion, jni.JniType.objectType, []).object);

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

  /// from: public void writeToParcel(android.os.Parcel parcel, int flags)
  void writeToParcel(parcel_.Parcel parcel, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [parcel.reference, flags]).check();
}

/// from: android.view.textclassifier.TextClassificationContext$Builder
///
/// A builder for building a TextClassification context.
class TextClassificationContext_Builder extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/view/textclassifier/TextClassificationContext\$Builder");
  TextClassificationContext_Builder.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String packageName, java.lang.String widgetType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Initializes a new builder for text classification context objects.
  ///@param packageName the name of the calling package
  /// This value must never be {@code null}.
  ///@param widgetType the type of widget e.g. TextClassifier\#WIDGET_TYPE_TEXTVIEW
  ///
  /// This value must never be {@code null}.
  /// Value is android.view.textclassifier.TextClassifier\#WIDGET_TYPE_TEXTVIEW, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_EDITTEXT, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_UNSELECTABLE_TEXTVIEW, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_WEBVIEW, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_EDIT_WEBVIEW, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_CUSTOM_TEXTVIEW, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_CUSTOM_EDITTEXT, android.view.textclassifier.TextClassifier\#WIDGET_TYPE_CUSTOM_UNSELECTABLE_TEXTVIEW, or android.view.textclassifier.TextClassifier\#WIDGET_TYPE_UNKNOWN
  ///@return this builder
  TextClassificationContext_Builder(
      jni.JniString packageName, jni.JniString widgetType)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [packageName.reference, widgetType.reference]).object);

  static final _id_setWidgetVersion = jniAccessors.getMethodIDOf(
      _classRef,
      "setWidgetVersion",
      "(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationContext\$Builder;");

  /// from: public android.view.textclassifier.TextClassificationContext.Builder setWidgetVersion(java.lang.String widgetVersion)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets an optional custom version string for the widget type.
  ///@param widgetVersion This value may be {@code null}.
  ///@return this builder
  TextClassificationContext_Builder setWidgetVersion(
          jni.JniString widgetVersion) =>
      TextClassificationContext_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setWidgetVersion,
          jni.JniType.objectType,
          [widgetVersion.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(_classRef, "build",
      "()Landroid/view/textclassifier/TextClassificationContext;");

  /// from: public android.view.textclassifier.TextClassificationContext build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Builds the text classification context object.
  ///@return the built TextClassificationContext object
  ///
  /// This value will never be {@code null}.
  TextClassificationContext build() =>
      TextClassificationContext.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}
