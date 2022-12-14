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

import "../os/Parcelable.dart" as parcelable_;

import "../graphics/Bitmap.dart" as bitmap_;

import "../net/Uri.dart" as uri_;

import "../os/Bundle.dart" as bundle_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.MediaDescription
///
/// A simple set of metadata for a media item suitable for display. This can be
/// created using the Builder or retrieved from existing metadata using
/// MediaMetadata\#getDescription().
class MediaDescription extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/MediaDescription");
  MediaDescription.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final long BT_FOLDER_TYPE_ALBUMS
  ///
  /// The type of folder that contains folders categorized by album as specified in the section
  /// 6.10.2.2 of the Bluetooth AVRCP 1.5.
  static const BT_FOLDER_TYPE_ALBUMS = 2;

  /// from: static public final long BT_FOLDER_TYPE_ARTISTS
  ///
  /// The type of folder that contains folders categorized by artist as specified in the section
  /// 6.10.2.2 of the Bluetooth AVRCP 1.5.
  static const BT_FOLDER_TYPE_ARTISTS = 3;

  /// from: static public final long BT_FOLDER_TYPE_GENRES
  ///
  /// The type of folder that contains folders categorized by genre as specified in the section
  /// 6.10.2.2 of the Bluetooth AVRCP 1.5.
  static const BT_FOLDER_TYPE_GENRES = 4;

  /// from: static public final long BT_FOLDER_TYPE_MIXED
  ///
  /// The type of folder that is unknown or contains media elements of mixed types as specified in
  /// the section 6.10.2.2 of the Bluetooth AVRCP 1.5.
  static const BT_FOLDER_TYPE_MIXED = 0;

  /// from: static public final long BT_FOLDER_TYPE_PLAYLISTS
  ///
  /// The type of folder that contains folders categorized by playlist as specified in the section
  /// 6.10.2.2 of the Bluetooth AVRCP 1.5.
  static const BT_FOLDER_TYPE_PLAYLISTS = 5;

  /// from: static public final long BT_FOLDER_TYPE_TITLES
  ///
  /// The type of folder that contains media elements only as specified in the section 6.10.2.2 of
  /// the Bluetooth AVRCP 1.5.
  static const BT_FOLDER_TYPE_TITLES = 1;

  /// from: static public final long BT_FOLDER_TYPE_YEARS
  ///
  /// The type of folder that contains folders categorized by year as specified in the section
  /// 6.10.2.2 of the Bluetooth AVRCP 1.5.
  static const BT_FOLDER_TYPE_YEARS = 6;

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.media.MediaDescription> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final java.lang.String EXTRA_BT_FOLDER_TYPE
  ///
  /// Used as a long extra field to indicate the bluetooth folder type of the media item as
  /// specified in the section 6.10.2.2 of the Bluetooth AVRCP 1.5. This is valid only for
  /// MediaBrowser.MediaItem with MediaBrowser.MediaItem\#FLAG_BROWSABLE. The value
  /// should be one of the following:
  /// <ul>
  /// <li>\#BT_FOLDER_TYPE_MIXED</li>
  /// <li>\#BT_FOLDER_TYPE_TITLES</li>
  /// <li>\#BT_FOLDER_TYPE_ALBUMS</li>
  /// <li>\#BT_FOLDER_TYPE_ARTISTS</li>
  /// <li>\#BT_FOLDER_TYPE_GENRES</li>
  /// <li>\#BT_FOLDER_TYPE_PLAYLISTS</li>
  /// <li>\#BT_FOLDER_TYPE_YEARS</li>
  /// </ul>
  ///@see \#getExtras()
  static const EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";

  static final _id_getMediaId = jniAccessors.getMethodIDOf(
      _classRef, "getMediaId", "()Ljava/lang/String;");

  /// from: public java.lang.String getMediaId()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the media id or null. See
  /// MediaMetadata\#METADATA_KEY_MEDIA_ID.
  jni.JniString getMediaId() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMediaId, jni.JniType.objectType, []).object);

  static final _id_getTitle = jniAccessors.getMethodIDOf(
      _classRef, "getTitle", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getTitle()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a title suitable for display or null.
  ///@return A title or null.
  jni.JniObject getTitle() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTitle, jni.JniType.objectType, []).object);

  static final _id_getSubtitle = jniAccessors.getMethodIDOf(
      _classRef, "getSubtitle", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getSubtitle()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a subtitle suitable for display or null.
  ///@return A subtitle or null.
  jni.JniObject getSubtitle() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSubtitle, jni.JniType.objectType, []).object);

  static final _id_getDescription = jniAccessors.getMethodIDOf(
      _classRef, "getDescription", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getDescription()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a description suitable for display or null.
  ///@return A description or null.
  jni.JniObject getDescription() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDescription, jni.JniType.objectType, []).object);

  static final _id_getIconBitmap = jniAccessors.getMethodIDOf(
      _classRef, "getIconBitmap", "()Landroid/graphics/Bitmap;");

  /// from: public android.graphics.Bitmap getIconBitmap()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a bitmap icon suitable for display or null.
  ///@return An icon or null.
  bitmap_.Bitmap getIconBitmap() =>
      bitmap_.Bitmap.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getIconBitmap, jni.JniType.objectType, []).object);

  static final _id_getIconUri = jniAccessors.getMethodIDOf(
      _classRef, "getIconUri", "()Landroid/net/Uri;");

  /// from: public android.net.Uri getIconUri()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a Uri for an icon suitable for display or null.
  ///@return An icon uri or null.
  uri_.Uri getIconUri() => uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getIconUri, jni.JniType.objectType, []).object);

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns any extras that were added to the description.
  ///@return A bundle of extras or null.
  bundle_.Bundle getExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_getMediaUri = jniAccessors.getMethodIDOf(
      _classRef, "getMediaUri", "()Landroid/net/Uri;");

  /// from: public android.net.Uri getMediaUri()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a Uri representing this content or null.
  ///@return A media Uri or null.
  uri_.Uri getMediaUri() => uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getMediaUri, jni.JniType.objectType, []).object);

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

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.media.MediaDescription$Builder
///
/// Builder for MediaDescription objects.
class MediaDescription_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/MediaDescription\$Builder");
  MediaDescription_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an initially empty builder.
  MediaDescription_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setMediaId = jniAccessors.getMethodIDOf(
      _classRef,
      "setMediaId",
      "(Ljava/lang/String;)Landroid/media/MediaDescription\$Builder;");

  /// from: public android.media.MediaDescription.Builder setMediaId(java.lang.String mediaId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the media id.
  ///@param mediaId The unique id for the item or null.
  /// This value may be {@code null}.
  ///@return this
  MediaDescription_Builder setMediaId(jni.JniString mediaId) =>
      MediaDescription_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setMediaId,
          jni.JniType.objectType,
          [mediaId.reference]).object);

  static final _id_setTitle = jniAccessors.getMethodIDOf(_classRef, "setTitle",
      "(Ljava/lang/CharSequence;)Landroid/media/MediaDescription\$Builder;");

  /// from: public android.media.MediaDescription.Builder setTitle(java.lang.CharSequence title)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the title.
  ///@param title A title suitable for display to the user or null.
  /// This value may be {@code null}.
  ///@return this
  MediaDescription_Builder setTitle(jni.JniObject title) =>
      MediaDescription_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setTitle,
          jni.JniType.objectType,
          [title.reference]).object);

  static final _id_setSubtitle = jniAccessors.getMethodIDOf(
      _classRef,
      "setSubtitle",
      "(Ljava/lang/CharSequence;)Landroid/media/MediaDescription\$Builder;");

  /// from: public android.media.MediaDescription.Builder setSubtitle(java.lang.CharSequence subtitle)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the subtitle.
  ///@param subtitle A subtitle suitable for display to the user or null.
  /// This value may be {@code null}.
  ///@return this
  MediaDescription_Builder setSubtitle(jni.JniObject subtitle) =>
      MediaDescription_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setSubtitle,
          jni.JniType.objectType,
          [subtitle.reference]).object);

  static final _id_setDescription = jniAccessors.getMethodIDOf(
      _classRef,
      "setDescription",
      "(Ljava/lang/CharSequence;)Landroid/media/MediaDescription\$Builder;");

  /// from: public android.media.MediaDescription.Builder setDescription(java.lang.CharSequence description)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the description.
  ///@param description A description suitable for display to the user or
  ///            null.
  /// This value may be {@code null}.
  ///@return this
  MediaDescription_Builder setDescription(jni.JniObject description) =>
      MediaDescription_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setDescription,
          jni.JniType.objectType,
          [description.reference]).object);

  static final _id_setIconBitmap = jniAccessors.getMethodIDOf(
      _classRef,
      "setIconBitmap",
      "(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription\$Builder;");

  /// from: public android.media.MediaDescription.Builder setIconBitmap(android.graphics.Bitmap icon)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the icon.
  ///@param icon A Bitmap icon suitable for display to the user or
  ///            null.
  /// This value may be {@code null}.
  ///@return this
  MediaDescription_Builder setIconBitmap(bitmap_.Bitmap icon) =>
      MediaDescription_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setIconBitmap,
          jni.JniType.objectType,
          [icon.reference]).object);

  static final _id_setIconUri = jniAccessors.getMethodIDOf(
      _classRef,
      "setIconUri",
      "(Landroid/net/Uri;)Landroid/media/MediaDescription\$Builder;");

  /// from: public android.media.MediaDescription.Builder setIconUri(android.net.Uri iconUri)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the icon uri.
  ///@param iconUri A Uri for an icon suitable for display to the
  ///            user or null.
  /// This value may be {@code null}.
  ///@return this
  MediaDescription_Builder setIconUri(uri_.Uri iconUri) =>
      MediaDescription_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setIconUri,
          jni.JniType.objectType,
          [iconUri.reference]).object);

  static final _id_setExtras = jniAccessors.getMethodIDOf(
      _classRef,
      "setExtras",
      "(Landroid/os/Bundle;)Landroid/media/MediaDescription\$Builder;");

  /// from: public android.media.MediaDescription.Builder setExtras(android.os.Bundle extras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets a bundle of extras.
  ///@param extras The extras to include with this description or null.
  /// This value may be {@code null}.
  ///@return this
  MediaDescription_Builder setExtras(bundle_.Bundle extras) =>
      MediaDescription_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setExtras,
          jni.JniType.objectType,
          [extras.reference]).object);

  static final _id_setMediaUri = jniAccessors.getMethodIDOf(
      _classRef,
      "setMediaUri",
      "(Landroid/net/Uri;)Landroid/media/MediaDescription\$Builder;");

  /// from: public android.media.MediaDescription.Builder setMediaUri(android.net.Uri mediaUri)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the media uri.
  ///@param mediaUri The content's Uri for the item or null.
  /// This value may be {@code null}.
  ///@return this
  MediaDescription_Builder setMediaUri(uri_.Uri mediaUri) =>
      MediaDescription_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setMediaUri,
          jni.JniType.objectType,
          [mediaUri.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/media/MediaDescription;");

  /// from: public android.media.MediaDescription build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  MediaDescription build() =>
      MediaDescription.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_build, jni.JniType.objectType, []).object);
}
