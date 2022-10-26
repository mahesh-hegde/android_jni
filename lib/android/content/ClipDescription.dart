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

import "../os/Parcelable.dart" as parcelable_;

import "../os/PersistableBundle.dart" as persistablebundle_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.ClipDescription
///
/// Meta-data describing the contents of a ClipData.  Provides enough
/// information to know if you can handle the ClipData, but not the data
/// itself.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about using the clipboard framework, read the
/// <a href="{@docRoot}guide/topics/clipboard/copy-paste.html">Copy and Paste</a>
/// developer guide.
///
/// </div>
class ClipDescription extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/ClipDescription");
  ClipDescription.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.ClipDescription> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final java.lang.String MIMETYPE_TEXT_HTML
  ///
  /// The MIME type for a clip holding HTML text.
  static const MIMETYPE_TEXT_HTML = "text/html";

  /// from: static public final java.lang.String MIMETYPE_TEXT_INTENT
  ///
  /// The MIME type for a clip holding an Intent.
  static const MIMETYPE_TEXT_INTENT = "text/vnd.android.intent";

  /// from: static public final java.lang.String MIMETYPE_TEXT_PLAIN
  ///
  /// The MIME type for a clip holding plain text.
  static const MIMETYPE_TEXT_PLAIN = "text/plain";

  /// from: static public final java.lang.String MIMETYPE_TEXT_URILIST
  ///
  /// The MIME type for a clip holding one or more URIs.  This should be
  /// used for URIs that are meaningful to a user (such as an http: URI).
  /// It should _not_ be used for a content: URI that references some
  /// other piece of data; in that case the MIME type should be the type
  /// of the referenced data.
  static const MIMETYPE_TEXT_URILIST = "text/uri-list";

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/CharSequence;[Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.CharSequence label, java.lang.String[] mimeTypes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new clip.
  ///@param label Label to show to the user describing this clip.
  ///@param mimeTypes An array of MIME types this data is available as.
  ClipDescription(jni.JniObject label, jni.JniObject mimeTypes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [label.reference, mimeTypes.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/ClipDescription;)V");

  /// from: public void <init>(android.content.ClipDescription o)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a copy of a ClipDescription.
  ClipDescription.ctor1(ClipDescription o)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [o.reference]).object);

  static final _id_compareMimeTypes = jniAccessors.getStaticMethodIDOf(
      _classRef, "compareMimeTypes", "(Ljava/lang/String;Ljava/lang/String;)Z");

  /// from: static public boolean compareMimeTypes(java.lang.String concreteType, java.lang.String desiredType)
  ///
  /// Helper to compare two MIME types, where one may be a pattern.
  ///@param concreteType A fully-specified MIME type.
  ///@param desiredType A desired MIME type that may be a pattern such as *&\#47;*.
  ///@return Returns true if the two MIME types match.
  static bool compareMimeTypes(
          jni.JniString concreteType, jni.JniString desiredType) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_compareMimeTypes,
          jni.JniType.booleanType,
          [concreteType.reference, desiredType.reference]).boolean;

  static final _id_getTimestamp =
      jniAccessors.getMethodIDOf(_classRef, "getTimestamp", "()J");

  /// from: public long getTimestamp()
  ///
  /// Return the timestamp at which the associated ClipData is copied to global clipboard
  /// in the System\#currentTimeMillis() time base.
  ///@return timestamp at which the associated ClipData is copied to global clipboard
  ///         or {@code 0} if it is not copied to clipboard.
  int getTimestamp() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimestamp, jni.JniType.longType, []).long;

  static final _id_getLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the label for this clip.
  jni.JniObject getLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLabel, jni.JniType.objectType, []).object);

  static final _id_hasMimeType = jniAccessors.getMethodIDOf(
      _classRef, "hasMimeType", "(Ljava/lang/String;)Z");

  /// from: public boolean hasMimeType(java.lang.String mimeType)
  ///
  /// Check whether the clip description contains the given MIME type.
  ///@param mimeType The desired MIME type.  May be a pattern.
  ///@return Returns true if one of the MIME types in the clip description
  /// matches the desired MIME type, else false.
  bool hasMimeType(jni.JniString mimeType) => jniAccessors.callMethodWithArgs(
      reference,
      _id_hasMimeType,
      jni.JniType.booleanType,
      [mimeType.reference]).boolean;

  static final _id_filterMimeTypes = jniAccessors.getMethodIDOf(
      _classRef, "filterMimeTypes", "(Ljava/lang/String;)[Ljava/lang/String;");

  /// from: public java.lang.String[] filterMimeTypes(java.lang.String mimeType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Filter the clip description MIME types by the given MIME type.  Returns
  /// all MIME types in the clip that match the given MIME type.
  ///@param mimeType The desired MIME type.  May be a pattern.
  ///@return Returns an array of all matching MIME types.  If there are no
  /// matching MIME types, null is returned.
  jni.JniObject filterMimeTypes(jni.JniString mimeType) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_filterMimeTypes,
          jni.JniType.objectType,
          [mimeType.reference]).object);

  static final _id_getMimeTypeCount =
      jniAccessors.getMethodIDOf(_classRef, "getMimeTypeCount", "()I");

  /// from: public int getMimeTypeCount()
  ///
  /// Return the number of MIME types the clip is available in.
  int getMimeTypeCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getMimeTypeCount, jni.JniType.intType, []).integer;

  static final _id_getMimeType = jniAccessors.getMethodIDOf(
      _classRef, "getMimeType", "(I)Ljava/lang/String;");

  /// from: public java.lang.String getMimeType(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return one of the possible clip MIME types.
  jni.JniString getMimeType(int index) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMimeType, jni.JniType.objectType, [index]).object);

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/PersistableBundle;");

  /// from: public android.os.PersistableBundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve extended data from the clip description.
  ///@return the bundle containing extended data previously set with
  /// \#setExtras(PersistableBundle), or null if no extras have been set.
  ///@see \#setExtras(PersistableBundle)
  persistablebundle_.PersistableBundle getExtras() =>
      persistablebundle_.PersistableBundle.fromRef(jniAccessors
          .callMethodWithArgs(
              reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_setExtras = jniAccessors.getMethodIDOf(
      _classRef, "setExtras", "(Landroid/os/PersistableBundle;)V");

  /// from: public void setExtras(android.os.PersistableBundle extras)
  ///
  /// Add extended data to the clip description.
  ///@see \#getExtras()
  void setExtras(persistablebundle_.PersistableBundle extras) =>
      jniAccessors.callMethodWithArgs(reference, _id_setExtras,
          jni.JniType.voidType, [extras.reference]).check();

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
