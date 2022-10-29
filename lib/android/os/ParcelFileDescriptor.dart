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

import "Parcelable.dart" as parcelable_;

import "Handler.dart" as handler_;

import "Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.os.ParcelFileDescriptor
///
/// The FileDescriptor returned by Parcel\#readFileDescriptor, allowing
/// you to close it when done with it.
class ParcelFileDescriptor extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/os/ParcelFileDescriptor");
  ParcelFileDescriptor.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.os.ParcelFileDescriptor> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int MODE_APPEND
  ///
  /// For use with \#open: append to end of file while writing.
  static const MODE_APPEND = 33554432;

  /// from: static public final int MODE_CREATE
  ///
  /// For use with \#open: create the file if it doesn't already exist.
  static const MODE_CREATE = 134217728;

  /// from: static public final int MODE_READ_ONLY
  ///
  /// For use with \#open: open the file with read-only access.
  static const MODE_READ_ONLY = 268435456;

  /// from: static public final int MODE_READ_WRITE
  ///
  /// For use with \#open: open the file with read and write access.
  static const MODE_READ_WRITE = 805306368;

  /// from: static public final int MODE_TRUNCATE
  ///
  /// For use with \#open: erase contents of file when opening.
  static const MODE_TRUNCATE = 67108864;

  /// from: static public final int MODE_WORLD_READABLE
  ///
  /// For use with \#open: if \#MODE_CREATE has been supplied and
  /// this file doesn't already exist, then create the file with permissions
  /// such that any application can read it.
  ///@deprecated Creating world-readable files is very dangerous, and likely
  ///             to cause security holes in applications. It is strongly
  ///             discouraged; instead, applications should use more formal
  ///             mechanism for interactions such as ContentProvider,
  ///             BroadcastReceiver, and android.app.Service.
  ///             There are no guarantees that this access mode will remain on
  ///             a file, such as when it goes through a backup and restore.
  static const MODE_WORLD_READABLE = 1;

  /// from: static public final int MODE_WORLD_WRITEABLE
  ///
  /// For use with \#open: if \#MODE_CREATE has been supplied and
  /// this file doesn't already exist, then create the file with permissions
  /// such that any application can write it.
  ///@deprecated Creating world-writable files is very dangerous, and likely
  ///             to cause security holes in applications. It is strongly
  ///             discouraged; instead, applications should use more formal
  ///             mechanism for interactions such as ContentProvider,
  ///             BroadcastReceiver, and android.app.Service.
  ///             There are no guarantees that this access mode will remain on
  ///             a file, such as when it goes through a backup and restore.
  static const MODE_WORLD_WRITEABLE = 2;

  /// from: static public final int MODE_WRITE_ONLY
  ///
  /// For use with \#open: open the file with write-only access.
  static const MODE_WRITE_ONLY = 536870912;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/os/ParcelFileDescriptor;)V");

  /// from: public void <init>(android.os.ParcelFileDescriptor wrapped)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new ParcelFileDescriptor wrapped around another descriptor. By
  /// default all method calls are delegated to the wrapped descriptor.
  ParcelFileDescriptor(ParcelFileDescriptor wrapped)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [wrapped.reference]).object);

  static final _id_open = jniAccessors.getStaticMethodIDOf(
      _classRef, "open", "(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor open(java.io.File file, int mode)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new ParcelFileDescriptor accessing a given file.
  ///@param file The file to be opened.
  ///@param mode The desired access mode, must be one of
  ///            \#MODE_READ_ONLY, \#MODE_WRITE_ONLY, or
  ///            \#MODE_READ_WRITE; may also be any combination of
  ///            \#MODE_CREATE, \#MODE_TRUNCATE,
  ///            \#MODE_WORLD_READABLE, and
  ///            \#MODE_WORLD_WRITEABLE.
  ///@return a new ParcelFileDescriptor pointing to the given file.
  ///@throws FileNotFoundException if the given file does not exist or can not
  ///             be opened with the requested mode.
  ///@see \#parseMode(String)
  static ParcelFileDescriptor open(jni.JniObject file, int mode) =>
      ParcelFileDescriptor.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_open,
          jni.JniType.objectType,
          [file.reference, mode]).object);

  static final _id_open1 = jniAccessors.getStaticMethodIDOf(_classRef, "open",
      "(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor\$OnCloseListener;)Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor open(java.io.File file, int mode, android.os.Handler handler, android.os.ParcelFileDescriptor.OnCloseListener listener)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new ParcelFileDescriptor accessing a given file.
  ///@param file The file to be opened.
  ///@param mode The desired access mode, must be one of
  ///            \#MODE_READ_ONLY, \#MODE_WRITE_ONLY, or
  ///            \#MODE_READ_WRITE; may also be any combination of
  ///            \#MODE_CREATE, \#MODE_TRUNCATE,
  ///            \#MODE_WORLD_READABLE, and
  ///            \#MODE_WORLD_WRITEABLE.
  ///@param handler to call listener from; must not be null.
  ///@param listener to be invoked when the returned descriptor has been
  ///            closed; must not be null.
  ///@return a new ParcelFileDescriptor pointing to the given file.
  ///@throws FileNotFoundException if the given file does not exist or can not
  ///             be opened with the requested mode.
  ///@see \#parseMode(String)
  static ParcelFileDescriptor open1(
          jni.JniObject file,
          int mode,
          handler_.Handler handler,
          ParcelFileDescriptor_OnCloseListener listener) =>
      ParcelFileDescriptor.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_open1, jni.JniType.objectType, [
        file.reference,
        mode,
        handler.reference,
        listener.reference
      ]).object);

  static final _id_dup = jniAccessors.getStaticMethodIDOf(_classRef, "dup",
      "(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor dup(java.io.FileDescriptor orig)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new ParcelFileDescriptor that is a dup of an existing
  /// FileDescriptor.  This obeys standard POSIX semantics, where the
  /// new file descriptor shared state such as file position with the
  /// original file descriptor.
  static ParcelFileDescriptor dup(jni.JniObject orig) =>
      ParcelFileDescriptor.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_dup, jni.JniType.objectType, [orig.reference]).object);

  static final _id_dup1 = jniAccessors.getMethodIDOf(
      _classRef, "dup", "()Landroid/os/ParcelFileDescriptor;");

  /// from: public android.os.ParcelFileDescriptor dup()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new ParcelFileDescriptor that is a dup of the existing
  /// FileDescriptor.  This obeys standard POSIX semantics, where the
  /// new file descriptor shared state such as file position with the
  /// original file descriptor.
  ParcelFileDescriptor dup1() =>
      ParcelFileDescriptor.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_dup1, jni.JniType.objectType, []).object);

  static final _id_fromFd = jniAccessors.getStaticMethodIDOf(
      _classRef, "fromFd", "(I)Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor fromFd(int fd)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new ParcelFileDescriptor from a raw native fd.  The new
  /// ParcelFileDescriptor holds a dup of the original fd passed in here,
  /// so you must still close that fd as well as the new ParcelFileDescriptor.
  ///@param fd The native fd that the ParcelFileDescriptor should dup.
  ///@return Returns a new ParcelFileDescriptor holding a FileDescriptor
  /// for a dup of the given fd.
  static ParcelFileDescriptor fromFd(int fd) =>
      ParcelFileDescriptor.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_fromFd, jni.JniType.objectType, [fd]).object);

  static final _id_adoptFd = jniAccessors.getStaticMethodIDOf(
      _classRef, "adoptFd", "(I)Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor adoptFd(int fd)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Take ownership of a raw native fd in to a new ParcelFileDescriptor.
  /// The returned ParcelFileDescriptor now owns the given fd, and will be
  /// responsible for closing it.  You must not close the fd yourself.
  ///@param fd The native fd that the ParcelFileDescriptor should adopt.
  ///@return Returns a new ParcelFileDescriptor holding a FileDescriptor
  /// for the given fd.
  static ParcelFileDescriptor adoptFd(int fd) =>
      ParcelFileDescriptor.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_adoptFd, jni.JniType.objectType, [fd]).object);

  static final _id_fromSocket = jniAccessors.getStaticMethodIDOf(_classRef,
      "fromSocket", "(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor fromSocket(java.net.Socket socket)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new ParcelFileDescriptor from the specified Socket.  The new
  /// ParcelFileDescriptor holds a dup of the original FileDescriptor in
  /// the Socket, so you must still close the Socket as well as the new
  /// ParcelFileDescriptor.
  ///@param socket The Socket whose FileDescriptor is used to create
  ///               a new ParcelFileDescriptor.
  ///@return A new ParcelFileDescriptor with the FileDescriptor of the
  ///         specified Socket.
  static ParcelFileDescriptor fromSocket(jni.JniObject socket) =>
      ParcelFileDescriptor.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_fromSocket,
          jni.JniType.objectType,
          [socket.reference]).object);

  static final _id_fromDatagramSocket = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "fromDatagramSocket",
      "(Ljava/net/DatagramSocket;)Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor fromDatagramSocket(java.net.DatagramSocket datagramSocket)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new ParcelFileDescriptor from the specified DatagramSocket.
  ///@param datagramSocket The DatagramSocket whose FileDescriptor is used
  ///               to create a new ParcelFileDescriptor.
  ///@return A new ParcelFileDescriptor with the FileDescriptor of the
  ///         specified DatagramSocket.
  static ParcelFileDescriptor fromDatagramSocket(
          jni.JniObject datagramSocket) =>
      ParcelFileDescriptor.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_fromDatagramSocket,
          jni.JniType.objectType,
          [datagramSocket.reference]).object);

  static final _id_createPipe = jniAccessors.getStaticMethodIDOf(
      _classRef, "createPipe", "()[Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor[] createPipe()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create two ParcelFileDescriptors structured as a data pipe.  The first
  /// ParcelFileDescriptor in the returned array is the read side; the second
  /// is the write side.
  static jni.JniObject createPipe() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_createPipe, jni.JniType.objectType, []).object);

  static final _id_createReliablePipe = jniAccessors.getStaticMethodIDOf(
      _classRef, "createReliablePipe", "()[Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor[] createReliablePipe()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create two ParcelFileDescriptors structured as a data pipe. The first
  /// ParcelFileDescriptor in the returned array is the read side; the second
  /// is the write side.
  ///
  /// The write end has the ability to deliver an error message through
  /// \#closeWithError(String) which can be handled by the read end
  /// calling \#checkError(), usually after detecting an EOF.
  /// This can also be used to detect remote crashes.
  static jni.JniObject createReliablePipe() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_createReliablePipe, jni.JniType.objectType, []).object);

  static final _id_createSocketPair = jniAccessors.getStaticMethodIDOf(
      _classRef, "createSocketPair", "()[Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor[] createSocketPair()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create two ParcelFileDescriptors structured as a pair of sockets
  /// connected to each other. The two sockets are indistinguishable.
  static jni.JniObject createSocketPair() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_createSocketPair, jni.JniType.objectType, []).object);

  static final _id_createReliableSocketPair = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "createReliableSocketPair",
      "()[Landroid/os/ParcelFileDescriptor;");

  /// from: static public android.os.ParcelFileDescriptor[] createReliableSocketPair()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create two ParcelFileDescriptors structured as a pair of sockets
  /// connected to each other. The two sockets are indistinguishable.
  ///
  /// Both ends have the ability to deliver an error message through
  /// \#closeWithError(String) which can be detected by the other end
  /// calling \#checkError(), usually after detecting an EOF.
  /// This can also be used to detect remote crashes.
  static jni.JniObject createReliableSocketPair() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_createReliableSocketPair, jni.JniType.objectType, []).object);

  static final _id_parseMode = jniAccessors.getStaticMethodIDOf(
      _classRef, "parseMode", "(Ljava/lang/String;)I");

  /// from: static public int parseMode(java.lang.String mode)
  ///
  /// Converts a string representing a file mode, such as "rw", into a bitmask suitable for use
  /// with \#open.
  ///
  ///@param mode The string representation of the file mode. Can be "r", "w", "wt", "wa", "rw"
  ///             or "rwt".
  ///@return A bitmask representing the given file mode.
  ///@throws IllegalArgumentException if the given string does not match a known file mode.
  static int parseMode(jni.JniString mode) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_parseMode,
          jni.JniType.intType, [mode.reference]).integer;

  static final _id_getFileDescriptor = jniAccessors.getMethodIDOf(
      _classRef, "getFileDescriptor", "()Ljava/io/FileDescriptor;");

  /// from: public java.io.FileDescriptor getFileDescriptor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieve the actual FileDescriptor associated with this object.
  ///@return Returns the FileDescriptor associated with this object.
  jni.JniObject getFileDescriptor() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFileDescriptor, jni.JniType.objectType, []).object);

  static final _id_getStatSize =
      jniAccessors.getMethodIDOf(_classRef, "getStatSize", "()J");

  /// from: public long getStatSize()
  ///
  /// Return the total size of the file representing this fd, as determined by
  /// {@code stat()}. Returns -1 if the fd is not a file.
  int getStatSize() => jniAccessors.callMethodWithArgs(
      reference, _id_getStatSize, jni.JniType.longType, []).long;

  static final _id_getFd =
      jniAccessors.getMethodIDOf(_classRef, "getFd", "()I");

  /// from: public int getFd()
  ///
  /// Return the native fd int for this ParcelFileDescriptor.  The
  /// ParcelFileDescriptor still owns the fd, and it still must be closed
  /// through this API.
  int getFd() => jniAccessors.callMethodWithArgs(
      reference, _id_getFd, jni.JniType.intType, []).integer;

  static final _id_detachFd =
      jniAccessors.getMethodIDOf(_classRef, "detachFd", "()I");

  /// from: public int detachFd()
  ///
  /// Return the native fd int for this ParcelFileDescriptor and detach it from
  /// the object here. You are now responsible for closing the fd in native
  /// code.
  ///
  /// You should not detach when the original creator of the descriptor is
  /// expecting a reliable signal through \#close() or
  /// \#closeWithError(String).
  ///@see \#canDetectErrors()
  int detachFd() => jniAccessors.callMethodWithArgs(
      reference, _id_detachFd, jni.JniType.intType, []).integer;

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Close the ParcelFileDescriptor. This implementation closes the underlying
  /// OS resources allocated to represent this stream.
  ///@throws IOException If an error occurs attempting to close this ParcelFileDescriptor.
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_closeWithError = jniAccessors.getMethodIDOf(
      _classRef, "closeWithError", "(Ljava/lang/String;)V");

  /// from: public void closeWithError(java.lang.String msg)
  ///
  /// Close the ParcelFileDescriptor, informing any peer that an error occurred
  /// while processing. If the creator of this descriptor is not observing
  /// errors, it will close normally.
  ///@param msg describing the error; must not be null.
  void closeWithError(jni.JniString msg) => jniAccessors.callMethodWithArgs(
      reference,
      _id_closeWithError,
      jni.JniType.voidType,
      [msg.reference]).check();

  static final _id_canDetectErrors =
      jniAccessors.getMethodIDOf(_classRef, "canDetectErrors", "()Z");

  /// from: public boolean canDetectErrors()
  ///
  /// Indicates if this ParcelFileDescriptor can communicate and detect remote
  /// errors/crashes.
  ///@see \#checkError()
  bool canDetectErrors() => jniAccessors.callMethodWithArgs(
      reference, _id_canDetectErrors, jni.JniType.booleanType, []).boolean;

  static final _id_checkError =
      jniAccessors.getMethodIDOf(_classRef, "checkError", "()V");

  /// from: public void checkError()
  ///
  /// Detect and throw if the other end of a pipe or socket pair encountered an
  /// error or crashed. This allows a reader to distinguish between a valid EOF
  /// and an error/crash.
  ///
  /// If this ParcelFileDescriptor is unable to detect remote errors, it will
  /// return silently.
  ///@throws IOException for normal errors.
  ///@throws FileDescriptorDetachedException if the remote side called \#detachFd(). Once detached, the remote
  ///            side is unable to communicate any errors through
  ///            \#closeWithError(String).
  ///@see \#canDetectErrors()
  void checkError() => jniAccessors.callMethodWithArgs(
      reference, _id_checkError, jni.JniType.voidType, []).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  ///
  /// {@inheritDoc}
  /// If Parcelable\#PARCELABLE_WRITE_RETURN_VALUE is set in flags,
  /// the file descriptor will be closed after a copy is written to the Parcel.
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();
}

/// from: android.os.ParcelFileDescriptor$OnCloseListener
///
/// Callback indicating that a ParcelFileDescriptor has been closed.
class ParcelFileDescriptor_OnCloseListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/os/ParcelFileDescriptor\$OnCloseListener");
  ParcelFileDescriptor_OnCloseListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onClose = jniAccessors.getMethodIDOf(
      _classRef, "onClose", "(Ljava/io/IOException;)V");

  /// from: public abstract void onClose(java.io.IOException e)
  ///
  /// Event indicating the ParcelFileDescriptor to which this listener was
  /// attached has been closed.
  ///@param e error state, or {@code null} if closed cleanly.
  ///        If the close event was the result of
  ///        ParcelFileDescriptor\#detachFd(), this will be a
  ///        FileDescriptorDetachedException. After detach the
  ///        remote side may continue reading/writing to the underlying
  ///        FileDescriptor, but they can no longer deliver
  ///        reliable close/error events.
  void onClose(jni.JniObject e) => jniAccessors.callMethodWithArgs(
      reference, _id_onClose, jni.JniType.voidType, [e.reference]).check();
}

/// from: android.os.ParcelFileDescriptor$FileDescriptorDetachedException
///
/// Exception that indicates that the file descriptor was detached.
class ParcelFileDescriptor_FileDescriptorDetachedException
    extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/os/ParcelFileDescriptor\$FileDescriptorDetachedException");
  ParcelFileDescriptor_FileDescriptorDetachedException.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ParcelFileDescriptor_FileDescriptorDetachedException()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.os.ParcelFileDescriptor$AutoCloseOutputStream
///
/// An OutputStream you can create on a ParcelFileDescriptor, which will
/// take care of calling ParcelFileDescriptor\#close ParcelFileDescriptor.close() for you when the stream is closed.
class ParcelFileDescriptor_AutoCloseOutputStream extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/os/ParcelFileDescriptor\$AutoCloseOutputStream");
  ParcelFileDescriptor_AutoCloseOutputStream.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/os/ParcelFileDescriptor;)V");

  /// from: public void <init>(android.os.ParcelFileDescriptor pfd)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ParcelFileDescriptor_AutoCloseOutputStream(ParcelFileDescriptor pfd)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [pfd.reference]).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();
}

/// from: android.os.ParcelFileDescriptor$AutoCloseInputStream
///
/// An InputStream you can create on a ParcelFileDescriptor, which will
/// take care of calling ParcelFileDescriptor\#close ParcelFileDescriptor.close() for you when the stream is closed.
class ParcelFileDescriptor_AutoCloseInputStream extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/os/ParcelFileDescriptor\$AutoCloseInputStream");
  ParcelFileDescriptor_AutoCloseInputStream.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/os/ParcelFileDescriptor;)V");

  /// from: public void <init>(android.os.ParcelFileDescriptor pfd)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ParcelFileDescriptor_AutoCloseInputStream(ParcelFileDescriptor pfd)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [pfd.reference]).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_read = jniAccessors.getMethodIDOf(_classRef, "read", "()I");

  /// from: public int read()
  int read() => jniAccessors
      .callMethodWithArgs(reference, _id_read, jni.JniType.intType, []).integer;

  static final _id_read1 =
      jniAccessors.getMethodIDOf(_classRef, "read", "([B)I");

  /// from: public int read(byte[] b)
  int read1(jni.JniObject b) => jniAccessors.callMethodWithArgs(
      reference, _id_read1, jni.JniType.intType, [b.reference]).integer;

  static final _id_read2 =
      jniAccessors.getMethodIDOf(_classRef, "read", "([BII)I");

  /// from: public int read(byte[] b, int off, int len)
  int read2(jni.JniObject b, int off, int len) =>
      jniAccessors.callMethodWithArgs(reference, _id_read2, jni.JniType.intType,
          [b.reference, off, len]).integer;
}
