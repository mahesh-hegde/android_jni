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

import "../../os/ParcelFileDescriptor.dart" as parcelfiledescriptor_;

import "../../os/Bundle.dart" as bundle_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.res.AssetFileDescriptor
///
/// File descriptor of an entry in the AssetManager.  This provides your own
/// opened FileDescriptor that can be used to read the data, as well as the
/// offset and length of that entry's data in the file.
class AssetFileDescriptor extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/res/AssetFileDescriptor");
  AssetFileDescriptor.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.content.res.AssetFileDescriptor> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final long UNKNOWN_LENGTH
  ///
  /// Length used with \#AssetFileDescriptor(ParcelFileDescriptor, long, long)
  /// and \#getDeclaredLength when a length has not been declared.  This means
  /// the data extends to the end of the file.
  static const UNKNOWN_LENGTH = -1;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/os/ParcelFileDescriptor;JJ)V");

  /// from: public void <init>(android.os.ParcelFileDescriptor fd, long startOffset, long length)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new AssetFileDescriptor from the given values.
  ///@param fd The underlying file descriptor.
  ///@param startOffset The location within the file that the asset starts.
  ///            This must be 0 if length is UNKNOWN_LENGTH.
  ///@param length The number of bytes of the asset, or
  ///            \#UNKNOWN_LENGTH if it extends to the end of the file.
  AssetFileDescriptor(parcelfiledescriptor_.ParcelFileDescriptor fd,
      int startOffset, int length)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [fd.reference, startOffset, length]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V");

  /// from: public void <init>(android.os.ParcelFileDescriptor fd, long startOffset, long length, android.os.Bundle extras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new AssetFileDescriptor from the given values.
  ///@param fd The underlying file descriptor.
  ///@param startOffset The location within the file that the asset starts.
  ///            This must be 0 if length is UNKNOWN_LENGTH.
  ///@param length The number of bytes of the asset, or
  ///            \#UNKNOWN_LENGTH if it extends to the end of the file.
  ///@param extras additional details that can be used to interpret the
  ///            underlying file descriptor. May be null.
  AssetFileDescriptor.ctor1(parcelfiledescriptor_.ParcelFileDescriptor fd,
      int startOffset, int length, bundle_.Bundle extras)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [fd.reference, startOffset, length, extras.reference]).object);

  static final _id_getParcelFileDescriptor = jniAccessors.getMethodIDOf(
      _classRef,
      "getParcelFileDescriptor",
      "()Landroid/os/ParcelFileDescriptor;");

  /// from: public android.os.ParcelFileDescriptor getParcelFileDescriptor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The AssetFileDescriptor contains its own ParcelFileDescriptor, which
  /// in addition to the normal FileDescriptor object also allows you to close
  /// the descriptor when you are done with it.
  parcelfiledescriptor_.ParcelFileDescriptor getParcelFileDescriptor() =>
      parcelfiledescriptor_.ParcelFileDescriptor.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getParcelFileDescriptor,
              jni.JniType.objectType, []).object);

  static final _id_getFileDescriptor = jniAccessors.getMethodIDOf(
      _classRef, "getFileDescriptor", "()Ljava/io/FileDescriptor;");

  /// from: public java.io.FileDescriptor getFileDescriptor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the FileDescriptor that can be used to read the data in the
  /// file.
  jni.JniObject getFileDescriptor() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFileDescriptor, jni.JniType.objectType, []).object);

  static final _id_getStartOffset =
      jniAccessors.getMethodIDOf(_classRef, "getStartOffset", "()J");

  /// from: public long getStartOffset()
  ///
  /// Returns the byte offset where this asset entry's data starts.
  int getStartOffset() => jniAccessors.callMethodWithArgs(
      reference, _id_getStartOffset, jni.JniType.longType, []).long;

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns any additional details that can be used to interpret the
  /// underlying file descriptor. May be null.
  bundle_.Bundle getExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_getLength =
      jniAccessors.getMethodIDOf(_classRef, "getLength", "()J");

  /// from: public long getLength()
  ///
  /// Returns the total number of bytes of this asset entry's data.  May be
  /// \#UNKNOWN_LENGTH if the asset extends to the end of the file.
  /// If the AssetFileDescriptor was constructed with \#UNKNOWN_LENGTH,
  /// this will use ParcelFileDescriptor\#getStatSize() ParcelFileDescriptor.getStatSize() to find the total size of the file,
  /// returning that number if found or \#UNKNOWN_LENGTH if it could
  /// not be determined.
  ///@see \#getDeclaredLength()
  int getLength() => jniAccessors.callMethodWithArgs(
      reference, _id_getLength, jni.JniType.longType, []).long;

  static final _id_getDeclaredLength =
      jniAccessors.getMethodIDOf(_classRef, "getDeclaredLength", "()J");

  /// from: public long getDeclaredLength()
  ///
  /// Return the actual number of bytes that were declared when the
  /// AssetFileDescriptor was constructed.  Will be
  /// \#UNKNOWN_LENGTH if the length was not declared, meaning data
  /// should be read to the end of the file.
  ///@see \#getDeclaredLength()
  int getDeclaredLength() => jniAccessors.callMethodWithArgs(
      reference, _id_getDeclaredLength, jni.JniType.longType, []).long;

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Convenience for calling <code>getParcelFileDescriptor().close()</code>.
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_createInputStream = jniAccessors.getMethodIDOf(
      _classRef, "createInputStream", "()Ljava/io/FileInputStream;");

  /// from: public java.io.FileInputStream createInputStream()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create and return a new auto-close input stream for this asset.  This
  /// will either return a full asset AutoCloseInputStream, or
  /// an underlying ParcelFileDescriptor.AutoCloseInputStream ParcelFileDescriptor.AutoCloseInputStream depending on whether the
  /// the object represents a complete file or sub-section of a file.  You
  /// should only call this once for a particular asset.
  jni.JniObject createInputStream() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_createInputStream, jni.JniType.objectType, []).object);

  static final _id_createOutputStream = jniAccessors.getMethodIDOf(
      _classRef, "createOutputStream", "()Ljava/io/FileOutputStream;");

  /// from: public java.io.FileOutputStream createOutputStream()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create and return a new auto-close output stream for this asset.  This
  /// will either return a full asset AutoCloseOutputStream, or
  /// an underlying ParcelFileDescriptor.AutoCloseOutputStream ParcelFileDescriptor.AutoCloseOutputStream depending on whether the
  /// the object represents a complete file or sub-section of a file.  You
  /// should only call this once for a particular asset.
  jni.JniObject createOutputStream() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_createOutputStream, jni.JniType.objectType, []).object);

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

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();
}

/// from: android.content.res.AssetFileDescriptor$AutoCloseOutputStream
///
/// An OutputStream you can create on a ParcelFileDescriptor, which will
/// take care of calling ParcelFileDescriptor\#close ParcelFileDescriptor.close() for you when the stream is closed.
class AssetFileDescriptor_AutoCloseOutputStream
    extends parcelfiledescriptor_.ParcelFileDescriptor_AutoCloseOutputStream {
  static final _classRef = jniAccessors.getClassOf(
      "android/content/res/AssetFileDescriptor\$AutoCloseOutputStream");
  AssetFileDescriptor_AutoCloseOutputStream.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/res/AssetFileDescriptor;)V");

  /// from: public void <init>(android.content.res.AssetFileDescriptor fd)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AssetFileDescriptor_AutoCloseOutputStream.ctor1(AssetFileDescriptor fd)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [fd.reference]).object);

  static final _id_write =
      jniAccessors.getMethodIDOf(_classRef, "write", "([BII)V");

  /// from: public void write(byte[] buffer, int offset, int count)
  void write(jni.JniObject buffer, int offset, int count) =>
      jniAccessors.callMethodWithArgs(reference, _id_write,
          jni.JniType.voidType, [buffer.reference, offset, count]).check();

  static final _id_write1 =
      jniAccessors.getMethodIDOf(_classRef, "write", "([B)V");

  /// from: public void write(byte[] buffer)
  void write1(jni.JniObject buffer) => jniAccessors.callMethodWithArgs(
      reference, _id_write1, jni.JniType.voidType, [buffer.reference]).check();

  static final _id_write2 =
      jniAccessors.getMethodIDOf(_classRef, "write", "(I)V");

  /// from: public void write(int oneByte)
  void write2(int oneByte) => jniAccessors.callMethodWithArgs(
      reference, _id_write2, jni.JniType.voidType, [oneByte]).check();
}

/// from: android.content.res.AssetFileDescriptor$AutoCloseInputStream
///
/// An InputStream you can create on a ParcelFileDescriptor, which will
/// take care of calling ParcelFileDescriptor\#close ParcelFileDescriptor.close() for you when the stream is closed.
class AssetFileDescriptor_AutoCloseInputStream
    extends parcelfiledescriptor_.ParcelFileDescriptor_AutoCloseInputStream {
  static final _classRef = jniAccessors.getClassOf(
      "android/content/res/AssetFileDescriptor\$AutoCloseInputStream");
  AssetFileDescriptor_AutoCloseInputStream.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/res/AssetFileDescriptor;)V");

  /// from: public void <init>(android.content.res.AssetFileDescriptor fd)
  /// The returned object must be deleted after use, by calling the `delete` method.
  AssetFileDescriptor_AutoCloseInputStream.ctor1(AssetFileDescriptor fd)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [fd.reference]).object);

  static final _id_available =
      jniAccessors.getMethodIDOf(_classRef, "available", "()I");

  /// from: public int available()
  int available() => jniAccessors.callMethodWithArgs(
      reference, _id_available, jni.JniType.intType, []).integer;

  static final _id_read = jniAccessors.getMethodIDOf(_classRef, "read", "()I");

  /// from: public int read()
  int read() => jniAccessors
      .callMethodWithArgs(reference, _id_read, jni.JniType.intType, []).integer;

  static final _id_read2 =
      jniAccessors.getMethodIDOf(_classRef, "read", "([BII)I");

  /// from: public int read(byte[] buffer, int offset, int count)
  int read2(jni.JniObject buffer, int offset, int count) =>
      jniAccessors.callMethodWithArgs(reference, _id_read2, jni.JniType.intType,
          [buffer.reference, offset, count]).integer;

  static final _id_read1 =
      jniAccessors.getMethodIDOf(_classRef, "read", "([B)I");

  /// from: public int read(byte[] buffer)
  int read1(jni.JniObject buffer) => jniAccessors.callMethodWithArgs(
      reference, _id_read1, jni.JniType.intType, [buffer.reference]).integer;

  static final _id_skip = jniAccessors.getMethodIDOf(_classRef, "skip", "(J)J");

  /// from: public long skip(long count)
  int skip(int count) => jniAccessors.callMethodWithArgs(
      reference, _id_skip, jni.JniType.longType, [count]).long;

  static final _id_mark = jniAccessors.getMethodIDOf(_classRef, "mark", "(I)V");

  /// from: public void mark(int readlimit)
  void mark(int readlimit) => jniAccessors.callMethodWithArgs(
      reference, _id_mark, jni.JniType.voidType, [readlimit]).check();

  static final _id_markSupported =
      jniAccessors.getMethodIDOf(_classRef, "markSupported", "()Z");

  /// from: public boolean markSupported()
  bool markSupported() => jniAccessors.callMethodWithArgs(
      reference, _id_markSupported, jni.JniType.booleanType, []).boolean;

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, "reset", "()V");

  /// from: synchronized public void reset()
  void reset() => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniType.voidType, []).check();
}
