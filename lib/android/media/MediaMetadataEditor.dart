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

import "../graphics/Bitmap.dart" as bitmap_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.MediaMetadataEditor
///
/// An abstract class for editing and storing metadata that can be published by
/// RemoteControlClient. See the RemoteControlClient\#editMetadata(boolean)
/// method to instantiate a RemoteControlClient.MetadataEditor object.
///@deprecated Use MediaMetadata instead together with MediaSession.
class MediaMetadataEditor extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/MediaMetadataEditor");
  MediaMetadataEditor.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int BITMAP_KEY_ARTWORK
  ///
  /// The metadata key for the content artwork / album art.
  static const BITMAP_KEY_ARTWORK = 100;

  /// from: static public final int RATING_KEY_BY_OTHERS
  ///
  /// The metadata key for the content's average rating, not the user's rating.
  /// The value associated with this key is a Rating instance.
  ///@see \#RATING_KEY_BY_USER
  static const RATING_KEY_BY_OTHERS = 101;

  /// from: static public final int RATING_KEY_BY_USER
  ///
  /// The metadata key for the content's user rating.
  /// The value associated with this key is a Rating instance.
  /// This key can be flagged as "editable" (with \#addEditableKey(int)) to enable
  /// receiving user rating values through the
  /// android.media.RemoteControlClient.OnMetadataUpdateListener interface.
  static const RATING_KEY_BY_USER = 268435457;

  static final _id_apply =
      jniAccessors.getMethodIDOf(_classRef, "apply", "()V");

  /// from: public abstract void apply()
  ///
  /// Applies all of the metadata changes that have been set since the MediaMetadataEditor instance
  /// was created or since \#clear() was called. Subclasses should synchronize on
  /// {@code this} for thread safety.
  void apply() => jniAccessors.callMethodWithArgs(
      reference, _id_apply, jni.JniType.voidType, []).check();

  static final _id_clear =
      jniAccessors.getMethodIDOf(_classRef, "clear", "()V");

  /// from: synchronized public void clear()
  ///
  /// Clears all the pending metadata changes set since the MediaMetadataEditor instance was
  /// created or since this method was last called.
  /// Note that clearing the metadata doesn't reset the editable keys
  /// (use \#removeEditableKeys() instead).
  void clear() => jniAccessors.callMethodWithArgs(
      reference, _id_clear, jni.JniType.voidType, []).check();

  static final _id_addEditableKey =
      jniAccessors.getMethodIDOf(_classRef, "addEditableKey", "(I)V");

  /// from: synchronized public void addEditableKey(int key)
  ///
  /// Flags the given key as being editable.
  /// This should only be used by metadata publishers, such as RemoteControlClient,
  /// which will declare the metadata field as eligible to be updated, with new values
  /// received through the RemoteControlClient.OnMetadataUpdateListener interface.
  ///@param key the type of metadata that can be edited. The supported key is
  ///     \#RATING_KEY_BY_USER.
  void addEditableKey(int key) => jniAccessors.callMethodWithArgs(
      reference, _id_addEditableKey, jni.JniType.voidType, [key]).check();

  static final _id_removeEditableKeys =
      jniAccessors.getMethodIDOf(_classRef, "removeEditableKeys", "()V");

  /// from: synchronized public void removeEditableKeys()
  ///
  /// Causes all metadata fields to be read-only.
  void removeEditableKeys() => jniAccessors.callMethodWithArgs(
      reference, _id_removeEditableKeys, jni.JniType.voidType, []).check();

  static final _id_getEditableKeys =
      jniAccessors.getMethodIDOf(_classRef, "getEditableKeys", "()[I");

  /// from: synchronized public int[] getEditableKeys()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the keys flagged as editable.
  ///@return null if there are no editable keys, or an array containing the keys.
  jni.JniObject getEditableKeys() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEditableKeys, jni.JniType.objectType, []).object);

  static final _id_putString = jniAccessors.getMethodIDOf(_classRef,
      "putString", "(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;");

  /// from: synchronized public android.media.MediaMetadataEditor putString(int key, java.lang.String value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds textual information.
  /// Note that none of the information added after \#apply() has been called,
  /// will be available to consumers of metadata stored by the MediaMetadataEditor.
  ///@param key The identifier of a the metadata field to set. Valid values are
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_ALBUM,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_ALBUMARTIST,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_TITLE,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_ARTIST,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_AUTHOR,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_COMPILATION,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_COMPOSER,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_DATE,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_GENRE,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_WRITER.
  ///@param value The text for the given key, or {@code null} to signify there is no valid
  ///      information for the field.
  ///@return Returns a reference to the same MediaMetadataEditor object, so you can chain put
  ///      calls together.
  MediaMetadataEditor putString(int key, jni.JniString value) =>
      MediaMetadataEditor.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_putString,
          jni.JniType.objectType,
          [key, value.reference]).object);

  static final _id_putLong = jniAccessors.getMethodIDOf(
      _classRef, "putLong", "(IJ)Landroid/media/MediaMetadataEditor;");

  /// from: synchronized public android.media.MediaMetadataEditor putLong(int key, long value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds numerical information.
  /// Note that none of the information added after \#apply() has been called
  /// will be available to consumers of metadata stored by the MediaMetadataEditor.
  ///@param key the identifier of a the metadata field to set. Valid values are
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_CD_TRACK_NUMBER,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_DISC_NUMBER,
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_DURATION (with a value
  ///      expressed in milliseconds),
  ///      android.media.MediaMetadataRetriever\#METADATA_KEY_YEAR.
  ///@param value The long value for the given key
  ///@return Returns a reference to the same MediaMetadataEditor object, so you can chain put
  ///      calls together.
  ///@throws IllegalArgumentException
  MediaMetadataEditor putLong(int key, int value) =>
      MediaMetadataEditor.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_putLong, jni.JniType.objectType, [key, value]).object);

  static final _id_putBitmap = jniAccessors.getMethodIDOf(
      _classRef,
      "putBitmap",
      "(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;");

  /// from: synchronized public android.media.MediaMetadataEditor putBitmap(int key, android.graphics.Bitmap bitmap)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds image.
  ///@param key the identifier of the bitmap to set. The only valid value is
  ///      \#BITMAP_KEY_ARTWORK
  ///@param bitmap The bitmap for the artwork, or null if there isn't any.
  ///@return Returns a reference to the same MediaMetadataEditor object, so you can chain put
  ///      calls together.
  ///@throws IllegalArgumentException
  ///@see android.graphics.Bitmap
  MediaMetadataEditor putBitmap(int key, bitmap_.Bitmap bitmap) =>
      MediaMetadataEditor.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_putBitmap,
          jni.JniType.objectType,
          [key, bitmap.reference]).object);

  static final _id_putObject = jniAccessors.getMethodIDOf(_classRef,
      "putObject", "(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;");

  /// from: synchronized public android.media.MediaMetadataEditor putObject(int key, java.lang.Object value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds information stored as an instance.
  /// Note that none of the information added after \#apply() has been called
  /// will be available to consumers of metadata stored by the MediaMetadataEditor.
  ///@param key the identifier of a the metadata field to set. Valid keys for a:
  ///     <ul>
  ///     <li>Bitmap object are \#BITMAP_KEY_ARTWORK,</li>
  ///     <li>String object are the same as for \#putString(int, String)</li>
  ///     <li>Long object are the same as for \#putLong(int, long)</li>
  ///     <li>Rating object are \#RATING_KEY_BY_OTHERS
  ///         and \#RATING_KEY_BY_USER.</li>
  ///     </ul>
  ///@param value the metadata to add.
  ///@return Returns a reference to the same MediaMetadataEditor object, so you can chain put
  ///      calls together.
  ///@throws IllegalArgumentException
  MediaMetadataEditor putObject(int key, jni.JniObject value) =>
      MediaMetadataEditor.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_putObject,
          jni.JniType.objectType,
          [key, value.reference]).object);

  static final _id_getLong =
      jniAccessors.getMethodIDOf(_classRef, "getLong", "(IJ)J");

  /// from: synchronized public long getLong(int key, long defaultValue)
  ///
  /// Returns the long value for the key.
  ///@param key one of the keys supported in \#putLong(int, long)
  ///@param defaultValue the value returned if the key is not present
  ///@return the long value for the key, or the supplied default value if the key is not present
  ///@throws IllegalArgumentException
  int getLong(int key, int defaultValue) => jniAccessors.callMethodWithArgs(
      reference, _id_getLong, jni.JniType.longType, [key, defaultValue]).long;

  static final _id_getString = jniAccessors.getMethodIDOf(
      _classRef, "getString", "(ILjava/lang/String;)Ljava/lang/String;");

  /// from: synchronized public java.lang.String getString(int key, java.lang.String defaultValue)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the String value for the key.
  ///@param key one of the keys supported in \#putString(int, String)
  ///@param defaultValue the value returned if the key is not present
  ///@return the String value for the key, or the supplied default value if the key is
  ///     not present
  ///@throws IllegalArgumentException
  jni.JniString getString(int key, jni.JniString defaultValue) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getString,
          jni.JniType.objectType,
          [key, defaultValue.reference]).object);

  static final _id_getBitmap = jniAccessors.getMethodIDOf(_classRef,
      "getBitmap", "(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;");

  /// from: synchronized public android.graphics.Bitmap getBitmap(int key, android.graphics.Bitmap defaultValue)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the Bitmap value for the key.
  ///@param key the \#BITMAP_KEY_ARTWORK key
  ///@param defaultValue the value returned if the key is not present
  ///@return the Bitmap value for the key, or the supplied default value if the key is
  ///     not present
  ///@throws IllegalArgumentException
  bitmap_.Bitmap getBitmap(int key, bitmap_.Bitmap defaultValue) =>
      bitmap_.Bitmap.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getBitmap,
          jni.JniType.objectType,
          [key, defaultValue.reference]).object);

  static final _id_getObject = jniAccessors.getMethodIDOf(
      _classRef, "getObject", "(ILjava/lang/Object;)Ljava/lang/Object;");

  /// from: synchronized public java.lang.Object getObject(int key, java.lang.Object defaultValue)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns an object representation of the value for the key
  ///@param key one of the keys supported in \#putObject(int, Object)
  ///@param defaultValue the value returned if the key is not present
  ///@return the object for the key, as a Long, Bitmap, String, or
  ///     Rating depending on the key value, or the supplied default value if the key is
  ///     not present
  ///@throws IllegalArgumentException
  jni.JniObject getObject(int key, jni.JniObject defaultValue) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getObject,
          jni.JniType.objectType,
          [key, defaultValue.reference]).object);
}
