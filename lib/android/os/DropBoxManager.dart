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

import "Parcelable.dart" as parcelable_;

import "ParcelFileDescriptor.dart" as parcelfiledescriptor_;

import "Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.DropBoxManager
///
/// Enqueues chunks of data (from various sources -- application crashes, kernel
/// log records, etc.).  The queue is size bounded and will drop old data if the
/// enqueued data exceeds the maximum size.  You can think of this as a
/// persistent, system-wide, blob-oriented "logcat".
///
/// DropBoxManager entries are not sent anywhere directly, but other system
/// services and debugging tools may scan and upload entries for processing.
class DropBoxManager extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/os/DropBoxManager");
  DropBoxManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_DROPBOX_ENTRY_ADDED
  ///
  /// Broadcast Action: This is broadcast when a new entry is added in the dropbox.
  /// You must hold the android.Manifest.permission\#READ_LOGS permission
  /// in order to receive this broadcast.
  ///
  /// <p class="note">This is a protected intent that can only be sent
  /// by the system.
  static const ACTION_DROPBOX_ENTRY_ADDED =
      "android.intent.action.DROPBOX_ENTRY_ADDED";

  /// from: static public final java.lang.String EXTRA_TAG
  ///
  /// Extra for android.os.DropBoxManager\#ACTION_DROPBOX_ENTRY_ADDED:
  /// string containing the dropbox tag.
  static const EXTRA_TAG = "tag";

  /// from: static public final java.lang.String EXTRA_TIME
  ///
  /// Extra for android.os.DropBoxManager\#ACTION_DROPBOX_ENTRY_ADDED:
  /// long integer value containing time (in milliseconds since January 1, 1970 00:00:00 UTC)
  /// when the entry was created.
  static const EXTRA_TIME = "time";

  /// from: static public final int IS_EMPTY
  ///
  /// Flag value: Entry's content was deleted to save space.
  static const IS_EMPTY = 1;

  /// from: static public final int IS_GZIPPED
  ///
  /// Flag value: Content can be decompressed with java.util.zip.GZIPOutputStream.
  static const IS_GZIPPED = 4;

  /// from: static public final int IS_TEXT
  ///
  /// Flag value: Content is human-readable UTF-8 text (can be combined with IS_GZIPPED).
  static const IS_TEXT = 2;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: protected void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a dummy instance for testing.  All methods will fail unless
  /// overridden with an appropriate mock implementation.  To obtain a
  /// functional instance, use android.content.Context\#getSystemService.
  DropBoxManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_addText = jniAccessors.getMethodIDOf(
      _classRef, "addText", "(Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void addText(java.lang.String tag, java.lang.String data)
  ///
  /// Stores human-readable text.  The data may be discarded eventually (or even
  /// immediately) if space is limited, or ignored entirely if the tag has been
  /// blocked (see \#isTagEnabled).
  ///@param tag describing the type of entry being stored
  ///@param data value to store
  void addText(jni.JniString tag, jni.JniString data) =>
      jniAccessors.callMethodWithArgs(reference, _id_addText,
          jni.JniType.voidType, [tag.reference, data.reference]).check();

  static final _id_addData = jniAccessors.getMethodIDOf(
      _classRef, "addData", "(Ljava/lang/String;[BI)V");

  /// from: public void addData(java.lang.String tag, byte[] data, int flags)
  ///
  /// Stores binary data, which may be ignored or discarded as with \#addText.
  ///@param tag describing the type of entry being stored
  ///@param data value to store
  ///@param flags describing the data
  void addData(jni.JniString tag, jni.JniObject data, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_addData,
          jni.JniType.voidType, [tag.reference, data.reference, flags]).check();

  static final _id_addFile = jniAccessors.getMethodIDOf(
      _classRef, "addFile", "(Ljava/lang/String;Ljava/io/File;I)V");

  /// from: public void addFile(java.lang.String tag, java.io.File file, int flags)
  ///
  /// Stores the contents of a file, which may be ignored or discarded as with
  /// \#addText.
  ///@param tag describing the type of entry being stored
  ///@param file to read from
  ///@param flags describing the data
  ///@throws IOException if the file can't be opened
  void addFile(jni.JniString tag, jni.JniObject file, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_addFile,
          jni.JniType.voidType, [tag.reference, file.reference, flags]).check();

  static final _id_isTagEnabled = jniAccessors.getMethodIDOf(
      _classRef, "isTagEnabled", "(Ljava/lang/String;)Z");

  /// from: public boolean isTagEnabled(java.lang.String tag)
  ///
  /// Checks any blacklists (set in system settings) to see whether a certain
  /// tag is allowed.  Entries with disabled tags will be dropped immediately,
  /// so you can save the work of actually constructing and sending the data.
  ///@param tag that would be used in \#addText or \#addFile
  ///@return whether events with that tag would be accepted
  bool isTagEnabled(jni.JniString tag) => jniAccessors.callMethodWithArgs(
      reference,
      _id_isTagEnabled,
      jni.JniType.booleanType,
      [tag.reference]).boolean;

  static final _id_getNextEntry = jniAccessors.getMethodIDOf(
      _classRef,
      "getNextEntry",
      "(Ljava/lang/String;J)Landroid/os/DropBoxManager\$Entry;");

  /// from: public android.os.DropBoxManager.Entry getNextEntry(java.lang.String tag, long msec)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the next entry from the drop box _after_ the specified time.
  /// Requires <code>android.permission.READ_LOGS</code>.  You must always call
  /// Entry\#close() on the return value!
  ///
  /// Requires android.Manifest.permission\#READ_LOGS and android.Manifest.permission\#PACKAGE_USAGE_STATS
  ///@param tag of entry to look for, null for all tags
  ///@param msec time of the last entry seen
  ///@return the next entry, or null if there are no more entries
  DropBoxManager_Entry getNextEntry(jni.JniString tag, int msec) =>
      DropBoxManager_Entry.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getNextEntry,
          jni.JniType.objectType,
          [tag.reference, msec]).object);
}

/// from: android.os.DropBoxManager$Entry
///
/// A single entry retrieved from the drop box.
/// This may include a reference to a stream, so you must call
/// \#close() when you are done using it.
class DropBoxManager_Entry extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/DropBoxManager\$Entry");
  DropBoxManager_Entry.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.os.DropBoxManager.Entry> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;J)V");

  /// from: public void <init>(java.lang.String tag, long millis)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new empty Entry with no contents.
  DropBoxManager_Entry(jni.JniString tag, int millis)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [tag.reference, millis]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;JLjava/lang/String;)V");

  /// from: public void <init>(java.lang.String tag, long millis, java.lang.String text)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new Entry with plain text contents.
  DropBoxManager_Entry.ctor1(jni.JniString tag, int millis, jni.JniString text)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [tag.reference, millis, text.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;J[BI)V");

  /// from: public void <init>(java.lang.String tag, long millis, byte[] data, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new Entry with byte array contents.
  /// The data array must not be modified after creating this entry.
  DropBoxManager_Entry.ctor2(
      jni.JniString tag, int millis, jni.JniObject data, int flags)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [tag.reference, millis, data.reference, flags]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V");

  /// from: public void <init>(java.lang.String tag, long millis, android.os.ParcelFileDescriptor data, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new Entry with streaming data contents.
  /// Takes ownership of the ParcelFileDescriptor.
  DropBoxManager_Entry.ctor3(jni.JniString tag, int millis,
      parcelfiledescriptor_.ParcelFileDescriptor data, int flags)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3,
            [tag.reference, millis, data.reference, flags]).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;JLjava/io/File;I)V");

  /// from: public void <init>(java.lang.String tag, long millis, java.io.File data, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new Entry with the contents read from a file.
  /// The file will be read when the entry's contents are requested.
  DropBoxManager_Entry.ctor4(
      jni.JniString tag, int millis, jni.JniObject data, int flags)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor4,
            [tag.reference, millis, data.reference, flags]).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Close the input stream associated with this entry.
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_getTag =
      jniAccessors.getMethodIDOf(_classRef, "getTag", "()Ljava/lang/String;");

  /// from: public java.lang.String getTag()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the tag originally attached to the entry.
  jni.JniString getTag() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTag, jni.JniType.objectType, []).object);

  static final _id_getTimeMillis =
      jniAccessors.getMethodIDOf(_classRef, "getTimeMillis", "()J");

  /// from: public long getTimeMillis()
  ///
  /// @return time when the entry was originally created.
  int getTimeMillis() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimeMillis, jni.JniType.longType, []).long;

  static final _id_getFlags =
      jniAccessors.getMethodIDOf(_classRef, "getFlags", "()I");

  /// from: public int getFlags()
  ///
  /// @return flags describing the content returned by \#getInputStream().
  int getFlags() => jniAccessors.callMethodWithArgs(
      reference, _id_getFlags, jni.JniType.intType, []).integer;

  static final _id_getText =
      jniAccessors.getMethodIDOf(_classRef, "getText", "(I)Ljava/lang/String;");

  /// from: public java.lang.String getText(int maxBytes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @param maxBytes of string to return (will truncate at this length).
  ///@return the uncompressed text contents of the entry, null if the entry is not text.
  jni.JniString getText(int maxBytes) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getText, jni.JniType.objectType, [maxBytes]).object);

  static final _id_getInputStream = jniAccessors.getMethodIDOf(
      _classRef, "getInputStream", "()Ljava/io/InputStream;");

  /// from: public java.io.InputStream getInputStream()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the uncompressed contents of the entry, or null if the contents were lost
  jni.JniObject getInputStream() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInputStream, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();
}
