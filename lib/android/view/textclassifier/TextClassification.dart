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

import "../../os/Parcel.dart" as parcel_;

import "../../graphics/drawable/Drawable.dart" as drawable_;

import "../../content/Intent.dart" as intent_;

import "../View.dart" as view_;

import "../../os/LocaleList.dart" as localelist_;

import "../../app/RemoteAction.dart" as remoteaction_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.textclassifier.TextClassification
///
/// Information for generating a widget to handle classified text.
///
/// A TextClassification object contains icons, labels, onClickListeners and intents that may
/// be used to build a widget that can be used to act on classified text. There is the concept of a
/// <i>primary action</i> and other <i>secondary actions</i>.
///
/// e.g. building a view that, when clicked, shares the classified text with the preferred app:
///
/// <pre>{@code
///   // Called preferably outside the UiThread.
///   TextClassification classification = textClassifier.classifyText(allText, 10, 25);
///
///   // Called on the UiThread.
///   Button button = new Button(context);
///   button.setCompoundDrawablesWithIntrinsicBounds(classification.getIcon(), null, null, null);
///   button.setText(classification.getLabel());
///   button.setOnClickListener(v -> classification.getActions().get(0).getActionIntent().send());
/// }</pre>
///
/// e.g. starting an action mode with menu items that can handle the classified text:
///
/// <pre>{@code
///   // Called preferably outside the UiThread.
///   final TextClassification classification = textClassifier.classifyText(allText, 10, 25);
///
///   // Called on the UiThread.
///   view.startActionMode(new ActionMode.Callback() {
///
///       public boolean onCreateActionMode(ActionMode mode, Menu menu) {
///           for (int i = 0; i < classification.getActions().size(); ++i) {
///              RemoteAction action = classification.getActions().get(i);
///              menu.add(Menu.NONE, i, 20, action.getTitle())
///                 .setIcon(action.getIcon());
///           }
///           return true;
///       }
///
///       public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
///           classification.getActions().get(item.getItemId()).getActionIntent().send();
///           return true;
///       }
///
///       ...
///   });
/// }</pre>
class TextClassification extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/textclassifier/TextClassification");
  TextClassification.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.textclassifier.TextClassification> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TextClassification(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [in0.reference]).object);

  static final _id_getText =
      jniAccessors.getMethodIDOf(_classRef, "getText", "()Ljava/lang/String;");

  /// from: public java.lang.String getText()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the classified text.
  ///@return This value may be {@code null}.
  jni.JniString getText() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getText, jni.JniType.objectType, []).object);

  static final _id_getEntityCount =
      jniAccessors.getMethodIDOf(_classRef, "getEntityCount", "()I");

  /// from: public int getEntityCount()
  ///
  /// Returns the number of entities found in the classified text.
  ///@return Value is 0 or greater
  int getEntityCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getEntityCount, jni.JniType.intType, []).integer;

  static final _id_getEntity = jniAccessors.getMethodIDOf(
      _classRef, "getEntity", "(I)Ljava/lang/String;");

  /// from: public java.lang.String getEntity(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the entity at the specified index. Entities are ordered from high confidence
  /// to low confidence.
  ///@throws IndexOutOfBoundsException if the specified index is out of range.
  ///@see \#getEntityCount() for the number of entities available.
  ///@return This value will never be {@code null}.
  ///
  /// Value is android.view.textclassifier.TextClassifier\#TYPE_UNKNOWN, android.view.textclassifier.TextClassifier\#TYPE_OTHER, android.view.textclassifier.TextClassifier\#TYPE_EMAIL, android.view.textclassifier.TextClassifier\#TYPE_PHONE, android.view.textclassifier.TextClassifier\#TYPE_ADDRESS, android.view.textclassifier.TextClassifier\#TYPE_URL, android.view.textclassifier.TextClassifier\#TYPE_DATE, android.view.textclassifier.TextClassifier\#TYPE_DATE_TIME, or android.view.textclassifier.TextClassifier\#TYPE_FLIGHT_NUMBER
  jni.JniString getEntity(int index) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEntity, jni.JniType.objectType, [index]).object);

  static final _id_getConfidenceScore = jniAccessors.getMethodIDOf(
      _classRef, "getConfidenceScore", "(Ljava/lang/String;)F");

  /// from: public float getConfidenceScore(java.lang.String entity)
  ///
  /// Returns the confidence score for the specified entity. The value ranges from
  /// 0 (low confidence) to 1 (high confidence). 0 indicates that the entity was not found for the
  /// classified text.
  ///@param entity Value is android.view.textclassifier.TextClassifier\#TYPE_UNKNOWN, android.view.textclassifier.TextClassifier\#TYPE_OTHER, android.view.textclassifier.TextClassifier\#TYPE_EMAIL, android.view.textclassifier.TextClassifier\#TYPE_PHONE, android.view.textclassifier.TextClassifier\#TYPE_ADDRESS, android.view.textclassifier.TextClassifier\#TYPE_URL, android.view.textclassifier.TextClassifier\#TYPE_DATE, android.view.textclassifier.TextClassifier\#TYPE_DATE_TIME, or android.view.textclassifier.TextClassifier\#TYPE_FLIGHT_NUMBER
  ///@return Value is between 0.0 and 1.0 inclusive
  double getConfidenceScore(jni.JniString entity) =>
      jniAccessors.callMethodWithArgs(reference, _id_getConfidenceScore,
          jni.JniType.floatType, [entity.reference]).float;

  static final _id_getActions =
      jniAccessors.getMethodIDOf(_classRef, "getActions", "()Ljava/util/List;");

  /// from: public java.util.List<android.app.RemoteAction> getActions()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a list of actions that may be performed on the text. The list is ordered based on
  /// the likelihood that a user will use the action, with the most likely action appearing first.
  jni.JniObject getActions() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getActions, jni.JniType.objectType, []).object);

  static final _id_getIcon = jniAccessors.getMethodIDOf(
      _classRef, "getIcon", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getIcon()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an icon that may be rendered on a widget used to act on the classified text.
  ///
  /// <strong>NOTE: </strong>This field is not parcelable and only represents the icon of the
  /// first RemoteAction (if one exists) when this object is read from a parcel.
  ///@deprecated Use \#getActions() instead.
  ///@return This value may be {@code null}.
  drawable_.Drawable getIcon() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getIcon, jni.JniType.objectType, []).object);

  static final _id_getLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a label that may be rendered on a widget used to act on the classified text.
  ///
  /// <strong>NOTE: </strong>This field is not parcelable and only represents the label of the
  /// first RemoteAction (if one exists) when this object is read from a parcel.
  ///@deprecated Use \#getActions() instead.
  ///@return This value may be {@code null}.
  jni.JniObject getLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLabel, jni.JniType.objectType, []).object);

  static final _id_getIntent = jniAccessors.getMethodIDOf(
      _classRef, "getIntent", "()Landroid/content/Intent;");

  /// from: public android.content.Intent getIntent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an intent that may be fired to act on the classified text.
  ///
  /// <strong>NOTE: </strong>This field is not parcelled and will always return null when this
  /// object is read from a parcel.
  ///@deprecated Use \#getActions() instead.
  intent_.Intent getIntent() =>
      intent_.Intent.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getIntent, jni.JniType.objectType, []).object);

  static final _id_getOnClickListener = jniAccessors.getMethodIDOf(_classRef,
      "getOnClickListener", "()Landroid/view/View\$OnClickListener;");

  /// from: public android.view.View.OnClickListener getOnClickListener()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the OnClickListener that may be triggered to act on the classified text.
  ///
  /// <strong>NOTE: </strong>This field is not parcelable and only represents the first
  /// RemoteAction (if one exists) when this object is read from a parcel.
  ///@deprecated Use \#getActions() instead.
  ///@return This value may be {@code null}.
  view_.View_OnClickListener getOnClickListener() =>
      view_.View_OnClickListener.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getOnClickListener,
          jni.JniType.objectType, []).object);

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()Ljava/lang/String;");

  /// from: public java.lang.String getId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the id, if one exists, for this object.
  ///@return This value may be {@code null}.
  jni.JniString getId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getId, jni.JniType.objectType, []).object);

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

/// from: android.view.textclassifier.TextClassification$Request
///
/// A request object for generating TextClassification.
class TextClassification_Request extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/view/textclassifier/TextClassification\$Request");
  TextClassification_Request.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.textclassifier.TextClassification.Request> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  TextClassification_Request(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [in0.reference]).object);

  static final _id_getText = jniAccessors.getMethodIDOf(
      _classRef, "getText", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getText()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the text providing context for the text to classify (which is specified
  ///      by the sub sequence starting at startIndex and ending at endIndex)
  ///@return This value will never be {@code null}.
  jni.JniObject getText() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getText, jni.JniType.objectType, []).object);

  static final _id_getStartIndex =
      jniAccessors.getMethodIDOf(_classRef, "getStartIndex", "()I");

  /// from: public int getStartIndex()
  ///
  /// Returns start index of the text to classify.
  ///@return Value is 0 or greater
  int getStartIndex() => jniAccessors.callMethodWithArgs(
      reference, _id_getStartIndex, jni.JniType.intType, []).integer;

  static final _id_getEndIndex =
      jniAccessors.getMethodIDOf(_classRef, "getEndIndex", "()I");

  /// from: public int getEndIndex()
  ///
  /// Returns end index of the text to classify.
  ///@return Value is 0 or greater
  int getEndIndex() => jniAccessors.callMethodWithArgs(
      reference, _id_getEndIndex, jni.JniType.intType, []).integer;

  static final _id_getDefaultLocales = jniAccessors.getMethodIDOf(
      _classRef, "getDefaultLocales", "()Landroid/os/LocaleList;");

  /// from: public android.os.LocaleList getDefaultLocales()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return ordered list of locale preferences that can be used to disambiguate
  ///      the provided text.
  ///
  /// This value may be {@code null}.
  localelist_.LocaleList getDefaultLocales() =>
      localelist_.LocaleList.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDefaultLocales, jni.JniType.objectType, []).object);

  static final _id_getReferenceTime = jniAccessors.getMethodIDOf(
      _classRef, "getReferenceTime", "()Ljava/time/ZonedDateTime;");

  /// from: public java.time.ZonedDateTime getReferenceTime()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return reference time based on which relative dates (e.g.&nbsp;"tomorrow") should be
  ///      interpreted.
  ///
  /// This value may be {@code null}.
  jni.JniObject getReferenceTime() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getReferenceTime, jni.JniType.objectType, []).object);

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

/// from: android.view.textclassifier.TextClassification$Request$Builder
///
/// A builder for building TextClassification requests.
class TextClassification_Request_Builder extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/view/textclassifier/TextClassification\$Request\$Builder");
  TextClassification_Request_Builder.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/CharSequence;II)V");

  /// from: public void <init>(java.lang.CharSequence text, int startIndex, int endIndex)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param text text providing context for the text to classify (which is specified
  ///      by the sub sequence starting at startIndex and ending at endIndex)
  /// This value must never be {@code null}.
  ///@param startIndex start index of the text to classify
  /// Value is 0 or greater
  ///@param endIndex end index of the text to classify
  ///
  /// Value is 0 or greater
  TextClassification_Request_Builder(
      jni.JniObject text, int startIndex, int endIndex)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [text.reference, startIndex, endIndex]).object);

  static final _id_setDefaultLocales = jniAccessors.getMethodIDOf(
      _classRef,
      "setDefaultLocales",
      "(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification\$Request\$Builder;");

  /// from: public android.view.textclassifier.TextClassification.Request.Builder setDefaultLocales(android.os.LocaleList defaultLocales)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param defaultLocales ordered list of locale preferences that may be used to
  ///      disambiguate the provided text. If no locale preferences exist, set this to null
  ///      or an empty locale list.
  ///
  /// This value may be {@code null}.
  ///@return this builder
  TextClassification_Request_Builder setDefaultLocales(
          localelist_.LocaleList defaultLocales) =>
      TextClassification_Request_Builder.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_setDefaultLocales,
              jni.JniType.objectType, [defaultLocales.reference]).object);

  static final _id_setReferenceTime = jniAccessors.getMethodIDOf(
      _classRef,
      "setReferenceTime",
      "(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/TextClassification\$Request\$Builder;");

  /// from: public android.view.textclassifier.TextClassification.Request.Builder setReferenceTime(java.time.ZonedDateTime referenceTime)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param referenceTime reference time based on which relative dates (e.g.&nbsp;"tomorrow"
  ///      should be interpreted. This should usually be the time when the text was
  ///      originally composed. If no reference time is set, now is used.
  ///
  /// This value may be {@code null}.
  ///@return this builder
  ///
  /// This value will never be {@code null}.
  TextClassification_Request_Builder setReferenceTime(
          jni.JniObject referenceTime) =>
      TextClassification_Request_Builder.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_setReferenceTime,
              jni.JniType.objectType, [referenceTime.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(_classRef, "build",
      "()Landroid/view/textclassifier/TextClassification\$Request;");

  /// from: public android.view.textclassifier.TextClassification.Request build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Builds and returns the request object.
  ///@return This value will never be {@code null}.
  TextClassification_Request build() =>
      TextClassification_Request.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}

/// from: android.view.textclassifier.TextClassification$Builder
///
/// Builder for building TextClassification objects.
///
/// e.g.
///
/// <pre>{@code
///   TextClassification classification = new TextClassification.Builder()
///          .setText(classifiedText)
///          .setEntityType(TextClassifier.TYPE_EMAIL, 0.9)
///          .setEntityType(TextClassifier.TYPE_OTHER, 0.1)
///          .addAction(remoteAction1)
///          .addAction(remoteAction2)
///          .build();
/// }</pre>
class TextClassification_Builder extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/view/textclassifier/TextClassification\$Builder");
  TextClassification_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  TextClassification_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setText = jniAccessors.getMethodIDOf(_classRef, "setText",
      "(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification\$Builder;");

  /// from: public android.view.textclassifier.TextClassification.Builder setText(java.lang.String text)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the classified text.
  ///@param text This value may be {@code null}.
  ///@return This value will never be {@code null}.
  TextClassification_Builder setText(jni.JniString text) =>
      TextClassification_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setText,
          jni.JniType.objectType,
          [text.reference]).object);

  static final _id_setEntityType = jniAccessors.getMethodIDOf(
      _classRef,
      "setEntityType",
      "(Ljava/lang/String;F)Landroid/view/textclassifier/TextClassification\$Builder;");

  /// from: public android.view.textclassifier.TextClassification.Builder setEntityType(java.lang.String type, float confidenceScore)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets an entity type for the classification result and assigns a confidence score.
  /// If a confidence score had already been set for the specified entity type, this will
  /// override that score.
  ///@param confidenceScore a value from 0 (low confidence) to 1 (high confidence).
  ///      0 implies the entity does not exist for the classified text.
  ///      Values greater than 1 are clamped to 1.
  ///
  /// Value is between 0.0 and 1.0 inclusive
  ///@param type This value must never be {@code null}.
  /// Value is android.view.textclassifier.TextClassifier\#TYPE_UNKNOWN, android.view.textclassifier.TextClassifier\#TYPE_OTHER, android.view.textclassifier.TextClassifier\#TYPE_EMAIL, android.view.textclassifier.TextClassifier\#TYPE_PHONE, android.view.textclassifier.TextClassifier\#TYPE_ADDRESS, android.view.textclassifier.TextClassifier\#TYPE_URL, android.view.textclassifier.TextClassifier\#TYPE_DATE, android.view.textclassifier.TextClassifier\#TYPE_DATE_TIME, or android.view.textclassifier.TextClassifier\#TYPE_FLIGHT_NUMBER
  ///@return This value will never be {@code null}.
  TextClassification_Builder setEntityType(
          jni.JniString type, double confidenceScore) =>
      TextClassification_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setEntityType,
          jni.JniType.objectType,
          [type.reference, confidenceScore]).object);

  static final _id_addAction = jniAccessors.getMethodIDOf(
      _classRef,
      "addAction",
      "(Landroid/app/RemoteAction;)Landroid/view/textclassifier/TextClassification\$Builder;");

  /// from: public android.view.textclassifier.TextClassification.Builder addAction(android.app.RemoteAction action)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds an action that may be performed on the classified text. Actions should be added in
  /// order of likelihood that the user will use them, with the most likely action being added
  /// first.
  ///@param action This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  TextClassification_Builder addAction(remoteaction_.RemoteAction action) =>
      TextClassification_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addAction,
          jni.JniType.objectType,
          [action.reference]).object);

  static final _id_setIcon = jniAccessors.getMethodIDOf(_classRef, "setIcon",
      "(Landroid/graphics/drawable/Drawable;)Landroid/view/textclassifier/TextClassification\$Builder;");

  /// from: public android.view.textclassifier.TextClassification.Builder setIcon(android.graphics.drawable.Drawable icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the icon for the <i>primary</i> action that may be rendered on a widget used to act
  /// on the classified text.
  ///
  /// <strong>NOTE: </strong>This field is not parcelled. If read from a parcel, the
  /// returned icon represents the icon of the first RemoteAction (if one exists).
  ///@deprecated Use \#addAction(RemoteAction) instead.
  ///@param icon This value may be {@code null}.
  ///@return This value will never be {@code null}.
  TextClassification_Builder setIcon(drawable_.Drawable icon) =>
      TextClassification_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setIcon,
          jni.JniType.objectType,
          [icon.reference]).object);

  static final _id_setLabel = jniAccessors.getMethodIDOf(_classRef, "setLabel",
      "(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification\$Builder;");

  /// from: public android.view.textclassifier.TextClassification.Builder setLabel(java.lang.String label)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the label for the <i>primary</i> action that may be rendered on a widget used to
  /// act on the classified text.
  ///
  /// <strong>NOTE: </strong>This field is not parcelled. If read from a parcel, the
  /// returned label represents the label of the first RemoteAction (if one exists).
  ///@deprecated Use \#addAction(RemoteAction) instead.
  ///@param label This value may be {@code null}.
  ///@return This value will never be {@code null}.
  TextClassification_Builder setLabel(jni.JniString label) =>
      TextClassification_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setLabel,
          jni.JniType.objectType,
          [label.reference]).object);

  static final _id_setIntent = jniAccessors.getMethodIDOf(
      _classRef,
      "setIntent",
      "(Landroid/content/Intent;)Landroid/view/textclassifier/TextClassification\$Builder;");

  /// from: public android.view.textclassifier.TextClassification.Builder setIntent(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the intent for the <i>primary</i> action that may be fired to act on the classified
  /// text.
  ///
  /// <strong>NOTE: </strong>This field is not parcelled.
  ///@deprecated Use \#addAction(RemoteAction) instead.
  ///@param intent This value may be {@code null}.
  ///@return This value will never be {@code null}.
  TextClassification_Builder setIntent(intent_.Intent intent) =>
      TextClassification_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setIntent,
          jni.JniType.objectType,
          [intent.reference]).object);

  static final _id_setOnClickListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setOnClickListener",
      "(Landroid/view/View\$OnClickListener;)Landroid/view/textclassifier/TextClassification\$Builder;");

  /// from: public android.view.textclassifier.TextClassification.Builder setOnClickListener(android.view.View.OnClickListener onClickListener)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the OnClickListener for the <i>primary</i> action that may be triggered to act on
  /// the classified text.
  ///
  /// <strong>NOTE: </strong>This field is not parcelable. If read from a parcel, the
  /// returned OnClickListener represents the first RemoteAction (if one exists).
  ///@deprecated Use \#addAction(RemoteAction) instead.
  ///@param onClickListener This value may be {@code null}.
  ///@return This value will never be {@code null}.
  TextClassification_Builder setOnClickListener(
          view_.View_OnClickListener onClickListener) =>
      TextClassification_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setOnClickListener,
          jni.JniType.objectType,
          [onClickListener.reference]).object);

  static final _id_setId = jniAccessors.getMethodIDOf(_classRef, "setId",
      "(Ljava/lang/String;)Landroid/view/textclassifier/TextClassification\$Builder;");

  /// from: public android.view.textclassifier.TextClassification.Builder setId(java.lang.String id)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets an id for the TextClassification object.
  ///@param id This value may be {@code null}.
  ///@return This value will never be {@code null}.
  TextClassification_Builder setId(jni.JniString id) =>
      TextClassification_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setId, jni.JniType.objectType, [id.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/view/textclassifier/TextClassification;");

  /// from: public android.view.textclassifier.TextClassification build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Builds and returns a TextClassification object.
  ///@return This value will never be {@code null}.
  TextClassification build() =>
      TextClassification.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}