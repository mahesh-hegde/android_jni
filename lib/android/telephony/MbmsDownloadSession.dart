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

import "../content/Context.dart" as context_;

import "mbms/MbmsDownloadSessionCallback.dart" as mbmsdownloadsessioncallback_;

import "mbms/DownloadRequest.dart" as downloadrequest_;

import "mbms/DownloadStatusListener.dart" as downloadstatuslistener_;

import "mbms/DownloadProgressListener.dart" as downloadprogresslistener_;

import "mbms/FileInfo.dart" as fileinfo_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.MbmsDownloadSession
///
/// This class provides functionality for file download over MBMS.
class MbmsDownloadSession extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/MbmsDownloadSession");
  MbmsDownloadSession.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String DEFAULT_TOP_LEVEL_TEMP_DIRECTORY
  ///
  /// The default directory name for all MBMS temp files. If you call
  /// \#download(DownloadRequest) without first calling
  /// \#setTempFileRootDirectory(File), this directory will be created for you under the
  /// path returned by Context\#getFilesDir().
  static const DEFAULT_TOP_LEVEL_TEMP_DIRECTORY = "androidMbmsTempFileRoot";

  /// from: static public final java.lang.String EXTRA_MBMS_COMPLETED_FILE_URI
  ///
  /// Uri extra that Android will attach to the intent supplied via
  /// android.telephony.mbms.DownloadRequest.Builder\#setAppIntent(Intent)
  /// Indicates the location of the successfully downloaded file within the directory that the
  /// app provided via the builder.
  ///
  /// Will always be set to a non-null value if
  /// \#EXTRA_MBMS_DOWNLOAD_RESULT is set to \#RESULT_SUCCESSFUL.
  static const EXTRA_MBMS_COMPLETED_FILE_URI =
      "android.telephony.extra.MBMS_COMPLETED_FILE_URI";

  /// from: static public final java.lang.String EXTRA_MBMS_DOWNLOAD_REQUEST
  ///
  /// Extra containing the DownloadRequest for which the download result or file
  /// descriptor request is for. Must not be null.
  static const EXTRA_MBMS_DOWNLOAD_REQUEST =
      "android.telephony.extra.MBMS_DOWNLOAD_REQUEST";

  /// from: static public final java.lang.String EXTRA_MBMS_DOWNLOAD_RESULT
  ///
  /// Integer extra that Android will attach to the intent supplied via
  /// android.telephony.mbms.DownloadRequest.Builder\#setAppIntent(Intent)
  /// Indicates the result code of the download. One of
  /// \#RESULT_SUCCESSFUL, \#RESULT_EXPIRED, \#RESULT_CANCELLED,
  /// \#RESULT_IO_ERROR, \#RESULT_DOWNLOAD_FAILURE, \#RESULT_OUT_OF_STORAGE,
  /// \#RESULT_SERVICE_ID_NOT_DEFINED, or \#RESULT_FILE_ROOT_UNREACHABLE.
  ///
  /// This extra may also be used by the middleware when it is sending intents to the app.
  static const EXTRA_MBMS_DOWNLOAD_RESULT =
      "android.telephony.extra.MBMS_DOWNLOAD_RESULT";

  /// from: static public final java.lang.String EXTRA_MBMS_FILE_INFO
  ///
  /// FileInfo extra that Android will attach to the intent supplied via
  /// android.telephony.mbms.DownloadRequest.Builder\#setAppIntent(Intent)
  /// Indicates the file for which the download result is for. Never null.
  ///
  /// This extra may also be used by the middleware when it is sending intents to the app.
  static const EXTRA_MBMS_FILE_INFO = "android.telephony.extra.MBMS_FILE_INFO";

  /// from: static public final int RESULT_CANCELLED
  ///
  /// Indicates that the download was cancelled via \#cancelDownload(DownloadRequest).
  static const RESULT_CANCELLED = 2;

  /// from: static public final int RESULT_DOWNLOAD_FAILURE
  ///
  /// Indicates that there was an error while processing downloaded files, such as a file repair or
  /// file decoding error and is not due to a file I/O error.
  ///
  /// This is likely a transient error and another DownloadRequest should be sent to try
  /// the download again.
  static const RESULT_DOWNLOAD_FAILURE = 6;

  /// from: static public final int RESULT_EXPIRED
  ///
  /// Indicates that the download will not be completed due to the expiration of its download
  /// window on the carrier's network.
  static const RESULT_EXPIRED = 3;

  /// from: static public final int RESULT_FILE_ROOT_UNREACHABLE
  ///
  /// Indicates that the file root that was set is currently unreachable. This can happen if the
  /// temp files are set to be stored on external storage and the SD card was removed, for example.
  /// The temp file root should be changed before sending another DownloadRequest.
  static const RESULT_FILE_ROOT_UNREACHABLE = 8;

  /// from: static public final int RESULT_IO_ERROR
  ///
  /// Indicates that the download will not be completed due to an I/O error incurred while
  /// writing to temp files.
  ///
  /// This is likely a transient error and another DownloadRequest should be sent to try
  /// the download again.
  static const RESULT_IO_ERROR = 4;

  /// from: static public final int RESULT_OUT_OF_STORAGE
  ///
  /// Indicates that the file system is full and the DownloadRequest can not complete.
  /// Either space must be made on the current file system or the temp file root location must be
  /// changed to a location that is not full to download the temp files.
  static const RESULT_OUT_OF_STORAGE = 7;

  /// from: static public final int RESULT_SERVICE_ID_NOT_DEFINED
  ///
  /// Indicates that the Service ID specified in the DownloadRequest is incorrect due to
  /// the Id being incorrect, stale, expired, or similar.
  static const RESULT_SERVICE_ID_NOT_DEFINED = 5;

  /// from: static public final int RESULT_SUCCESSFUL
  ///
  /// Indicates that the download was successful.
  static const RESULT_SUCCESSFUL = 1;

  /// from: static public final int STATUS_ACTIVELY_DOWNLOADING
  ///
  /// Indicates that the file is actively being downloaded.
  static const STATUS_ACTIVELY_DOWNLOADING = 1;

  /// from: static public final int STATUS_PENDING_DOWNLOAD
  ///
  /// Indicates that the file is awaiting the next download or repair operations. When a more
  /// precise status is known, the status will change to either \#STATUS_PENDING_REPAIR or
  /// \#STATUS_PENDING_DOWNLOAD_WINDOW.
  static const STATUS_PENDING_DOWNLOAD = 2;

  /// from: static public final int STATUS_PENDING_DOWNLOAD_WINDOW
  ///
  /// Indicates that the file is waiting to download because its download window has not yet
  /// started and is scheduled for a future time.
  static const STATUS_PENDING_DOWNLOAD_WINDOW = 4;

  /// from: static public final int STATUS_PENDING_REPAIR
  ///
  /// Indicates that the file is awaiting file repair after the download has ended.
  static const STATUS_PENDING_REPAIR = 3;

  /// from: static public final int STATUS_UNKNOWN
  ///
  /// Indicates that the middleware has no information on the file.
  static const STATUS_UNKNOWN = 0;

  static final _id_create = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "create",
      "(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;");

  /// from: static public android.telephony.MbmsDownloadSession create(android.content.Context context, java.util.concurrent.Executor executor, android.telephony.mbms.MbmsDownloadSessionCallback callback)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new MbmsDownloadSession using the system default data subscription ID.
  /// See \#create(Context, Executor, int, MbmsDownloadSessionCallback)
  ///@param context This value must never be {@code null}.
  ///@param executor This value must never be {@code null}.
  ///@param callback This value must never be {@code null}.
  static MbmsDownloadSession create(
          context_.Context context,
          jni.JniObject executor,
          mbmsdownloadsessioncallback_.MbmsDownloadSessionCallback callback) =>
      MbmsDownloadSession.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_create,
          jni.JniType.objectType,
          [context.reference, executor.reference, callback.reference]).object);

  static final _id_create1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "create",
      "(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;");

  /// from: static public android.telephony.MbmsDownloadSession create(android.content.Context context, java.util.concurrent.Executor executor, int subscriptionId, android.telephony.mbms.MbmsDownloadSessionCallback callback)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new MbmsDownloadManager using the given subscription ID.
  ///
  /// Note that this call will bind a remote service and that may take a bit. The instance of
  /// MbmsDownloadSession that is returned will not be ready for use until
  /// MbmsDownloadSessionCallback\#onMiddlewareReady() is called on the provided callback.
  /// If you attempt to use the instance before it is ready, an IllegalStateException
  /// will be thrown or an error will be delivered through
  /// MbmsDownloadSessionCallback\#onError(int, String).
  ///
  /// This also may throw an IllegalArgumentException.
  ///
  /// You may only have one instance of MbmsDownloadSession per UID. If you call this
  /// method while there is an active instance of MbmsDownloadSession in your process
  /// (in other words, one that has not had \#close() called on it), this method will
  /// throw an IllegalStateException. If you call this method in a different process
  /// running under the same UID, an error will be indicated via
  /// MbmsDownloadSessionCallback\#onError(int, String).
  ///
  /// Note that initialization may fail asynchronously. If you wish to try again after you
  /// receive such an asynchronous error, you must call \#close() on the instance of
  /// MbmsDownloadSession that you received before calling this method again.
  ///@param context The instance of Context to use
  /// This value must never be {@code null}.
  ///@param executor The executor on which you wish to execute callbacks.
  /// This value must never be {@code null}.
  ///@param subscriptionId The data subscription ID to use
  ///@param callback A callback to get asynchronous error messages and file service updates.
  /// This value must never be {@code null}.
  ///@return A new instance of MbmsDownloadSession, or null if an error occurred during
  /// setup.
  static MbmsDownloadSession create1(
          context_.Context context,
          jni.JniObject executor,
          int subscriptionId,
          mbmsdownloadsessioncallback_.MbmsDownloadSessionCallback callback) =>
      MbmsDownloadSession.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_create1, jni.JniType.objectType, [
        context.reference,
        executor.reference,
        subscriptionId,
        callback.reference
      ]).object);

  static final _id_requestUpdateFileServices = jniAccessors.getMethodIDOf(
      _classRef, "requestUpdateFileServices", "(Ljava/util/List;)V");

  /// from: public void requestUpdateFileServices(java.util.List<java.lang.String> classList)
  ///
  /// An inspection API to retrieve the list of available
  /// android.telephony.mbms.FileServiceInfos currently being advertised.
  /// The results are returned asynchronously via a call to
  /// MbmsDownloadSessionCallback\#onFileServicesUpdated(List)
  ///
  /// Asynchronous error codes via the MbmsDownloadSessionCallback\#onError(int, String)
  /// callback may include any of the errors that are not specific to the streaming use-case.
  ///
  /// May throw an IllegalStateException or IllegalArgumentException.
  ///@param classList A list of service classes which the app wishes to receive
  ///                  MbmsDownloadSessionCallback\#onFileServicesUpdated(List) callbacks
  ///                  about. Subsequent calls to this method will replace this list of service
  ///                  classes (i.e. the middleware will no longer send updates for services
  ///                  matching classes only in the old list).
  ///                  Values in this list should be negotiated with the wireless carrier prior
  ///                  to using this API.
  ///
  /// This value must never be {@code null}.
  void requestUpdateFileServices(jni.JniObject classList) =>
      jniAccessors.callMethodWithArgs(reference, _id_requestUpdateFileServices,
          jni.JniType.voidType, [classList.reference]).check();

  static final _id_setTempFileRootDirectory = jniAccessors.getMethodIDOf(
      _classRef, "setTempFileRootDirectory", "(Ljava/io/File;)V");

  /// from: public void setTempFileRootDirectory(java.io.File tempFileRootDirectory)
  ///
  /// Sets the temp file root for downloads.
  /// All temp files created for the middleware to write to will be contained in the specified
  /// directory. Applications that wish to specify a location only need to call this method once
  /// as long their data is persisted in storage -- the argument will be stored both in a
  /// local instance of android.content.SharedPreferences and by the middleware.
  ///
  /// If this method is not called at least once before calling
  /// \#download(DownloadRequest), the framework
  /// will default to a directory formed by the concatenation of the app's files directory and
  /// MbmsDownloadSession\#DEFAULT_TOP_LEVEL_TEMP_DIRECTORY.
  ///
  /// Before calling this method, the app must cancel all of its pending
  /// DownloadRequests via \#cancelDownload(DownloadRequest). If this is not done,
  /// you will receive an asynchronous error with code
  /// MbmsErrors.DownloadErrors\#ERROR_CANNOT_CHANGE_TEMP_FILE_ROOT unless the
  /// provided directory is the same as what has been previously configured.
  ///
  /// The File supplied as a root temp file directory must already exist. If not, an
  /// IllegalArgumentException will be thrown. In addition, as an additional sanity
  /// check, an IllegalArgumentException will be thrown if you attempt to set the temp
  /// file root directory to one of your data roots (the value of Context\#getDataDir(),
  /// Context\#getFilesDir(), or Context\#getCacheDir()).
  ///@param tempFileRootDirectory A directory to place temp files in.
  ///
  /// This value must never be {@code null}.
  void setTempFileRootDirectory(jni.JniObject tempFileRootDirectory) =>
      jniAccessors.callMethodWithArgs(reference, _id_setTempFileRootDirectory,
          jni.JniType.voidType, [tempFileRootDirectory.reference]).check();

  static final _id_getTempFileRootDirectory = jniAccessors.getMethodIDOf(
      _classRef, "getTempFileRootDirectory", "()Ljava/io/File;");

  /// from: public java.io.File getTempFileRootDirectory()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Retrieves the currently configured temp file root directory. Returns the file that was
  /// configured via \#setTempFileRootDirectory(File) or the default directory
  /// \#download(DownloadRequest) was called without ever
  /// setting the temp file root. If neither method has been called since the last time the app's
  /// shared preferences were reset, returns {@code null}.
  ///@return A File pointing to the configured temp file directory, or null if not yet
  ///         configured.
  jni.JniObject getTempFileRootDirectory() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getTempFileRootDirectory, jni.JniType.objectType, []).object);

  static final _id_download = jniAccessors.getMethodIDOf(
      _classRef, "download", "(Landroid/telephony/mbms/DownloadRequest;)V");

  /// from: public void download(android.telephony.mbms.DownloadRequest request)
  ///
  /// Requests the download of a file or set of files that the carrier has indicated to be
  /// available.
  ///
  /// May throw an IllegalArgumentException
  ///
  /// If \#setTempFileRootDirectory(File) has not called after the app has been installed,
  /// this method will create a directory at the default location defined at
  /// MbmsDownloadSession\#DEFAULT_TOP_LEVEL_TEMP_DIRECTORY and store that as the temp
  /// file root directory.
  ///
  /// If the DownloadRequest has a destination that is not on the same filesystem as the
  /// temp file directory provided via \#getTempFileRootDirectory(), an
  /// IllegalArgumentException will be thrown.
  ///
  /// Asynchronous errors through the callback may include any error not specific to the
  /// streaming use-case.
  ///
  /// If no error is delivered via the callback after calling this method, that means that the
  /// middleware has successfully started the download or scheduled the download, if the download
  /// is at a future time.
  ///@param request The request that specifies what should be downloaded.
  ///
  /// This value must never be {@code null}.
  void download(downloadrequest_.DownloadRequest request) =>
      jniAccessors.callMethodWithArgs(reference, _id_download,
          jni.JniType.voidType, [request.reference]).check();

  static final _id_listPendingDownloads = jniAccessors.getMethodIDOf(
      _classRef, "listPendingDownloads", "()Ljava/util/List;");

  /// from: public java.util.List<android.telephony.mbms.DownloadRequest> listPendingDownloads()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a list of pending DownloadRequests that originated from this application.
  /// A pending request is one that was issued via
  /// \#download(DownloadRequest) but not cancelled through
  /// \#cancelDownload(DownloadRequest).
  ///@return A list, possibly empty, of DownloadRequests
  ///
  /// This value will never be {@code null}.
  jni.JniObject listPendingDownloads() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_listPendingDownloads, jni.JniType.objectType, []).object);

  static final _id_addStatusListener = jniAccessors.getMethodIDOf(
      _classRef,
      "addStatusListener",
      "(Landroid/telephony/mbms/DownloadRequest;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/DownloadStatusListener;)V");

  /// from: public void addStatusListener(android.telephony.mbms.DownloadRequest request, java.util.concurrent.Executor executor, android.telephony.mbms.DownloadStatusListener listener)
  ///
  /// Registers a download status listener for a DownloadRequest previously requested via
  /// \#download(DownloadRequest). This callback will only be called as long as both this
  /// app and the middleware are both running -- if either one stops, no further calls on the
  /// provided DownloadStatusListener will be enqueued.
  ///
  /// If the middleware is not aware of the specified download request,
  /// this method will throw an IllegalArgumentException.
  ///
  /// If the operation encountered an error, the error code will be delivered via
  /// MbmsDownloadSessionCallback\#onError.
  ///
  /// Repeated calls to this method for the same DownloadRequest will replace the
  /// previously registered listener.
  ///@param request The DownloadRequest that you want updates on.
  /// This value must never be {@code null}.
  ///@param executor The Executor on which calls to {@code listener } should be executed.
  /// This value must never be {@code null}.
  ///@param listener The listener that should be called when the middleware has information to
  ///                 share on the status download.
  ///
  /// This value must never be {@code null}.
  void addStatusListener(
          downloadrequest_.DownloadRequest request,
          jni.JniObject executor,
          downloadstatuslistener_.DownloadStatusListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addStatusListener,
          jni.JniType.voidType,
          [request.reference, executor.reference, listener.reference]).check();

  static final _id_removeStatusListener = jniAccessors.getMethodIDOf(
      _classRef,
      "removeStatusListener",
      "(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)V");

  /// from: public void removeStatusListener(android.telephony.mbms.DownloadRequest request, android.telephony.mbms.DownloadStatusListener listener)
  ///
  /// Un-register a listener previously registered via
  /// \#addStatusListener(DownloadRequest, Executor, DownloadStatusListener). After
  /// this method is called, no further calls will be enqueued on the Executor
  /// provided upon registration, even if this method throws an exception.
  ///
  /// If the middleware is not aware of the specified download request,
  /// this method will throw an IllegalArgumentException.
  ///
  /// If the operation encountered an error, the error code will be delivered via
  /// MbmsDownloadSessionCallback\#onError.
  ///@param request The DownloadRequest provided during registration
  /// This value must never be {@code null}.
  ///@param listener The listener provided during registration.
  ///
  /// This value must never be {@code null}.
  void removeStatusListener(downloadrequest_.DownloadRequest request,
          downloadstatuslistener_.DownloadStatusListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_removeStatusListener,
          jni.JniType.voidType,
          [request.reference, listener.reference]).check();

  static final _id_addProgressListener = jniAccessors.getMethodIDOf(
      _classRef,
      "addProgressListener",
      "(Landroid/telephony/mbms/DownloadRequest;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/DownloadProgressListener;)V");

  /// from: public void addProgressListener(android.telephony.mbms.DownloadRequest request, java.util.concurrent.Executor executor, android.telephony.mbms.DownloadProgressListener listener)
  ///
  /// Registers a progress listener for a DownloadRequest previously requested via
  /// \#download(DownloadRequest). This listener will only be called as long as both this
  /// app and the middleware are both running -- if either one stops, no further calls on the
  /// provided DownloadProgressListener will be enqueued.
  ///
  /// If the middleware is not aware of the specified download request,
  /// this method will throw an IllegalArgumentException.
  ///
  /// If the operation encountered an error, the error code will be delivered via
  /// MbmsDownloadSessionCallback\#onError.
  ///
  /// Repeated calls to this method for the same DownloadRequest will replace the
  /// previously registered listener.
  ///@param request The DownloadRequest that you want updates on.
  /// This value must never be {@code null}.
  ///@param executor The Executor on which calls to {@code listener} should be executed.
  /// This value must never be {@code null}.
  ///@param listener The listener that should be called when the middleware has information to
  ///                 share on the progress of the download.
  ///
  /// This value must never be {@code null}.
  void addProgressListener(
          downloadrequest_.DownloadRequest request,
          jni.JniObject executor,
          downloadprogresslistener_.DownloadProgressListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addProgressListener,
          jni.JniType.voidType,
          [request.reference, executor.reference, listener.reference]).check();

  static final _id_removeProgressListener = jniAccessors.getMethodIDOf(
      _classRef,
      "removeProgressListener",
      "(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)V");

  /// from: public void removeProgressListener(android.telephony.mbms.DownloadRequest request, android.telephony.mbms.DownloadProgressListener listener)
  ///
  /// Un-register a listener previously registered via
  /// \#addProgressListener(DownloadRequest, Executor, DownloadProgressListener). After
  /// this method is called, no further callbacks will be enqueued on the Handler
  /// provided upon registration, even if this method throws an exception.
  ///
  /// If the middleware is not aware of the specified download request,
  /// this method will throw an IllegalArgumentException.
  ///
  /// If the operation encountered an error, the error code will be delivered via
  /// MbmsDownloadSessionCallback\#onError.
  ///@param request The DownloadRequest provided during registration
  /// This value must never be {@code null}.
  ///@param listener The listener provided during registration.
  ///
  /// This value must never be {@code null}.
  void removeProgressListener(downloadrequest_.DownloadRequest request,
          downloadprogresslistener_.DownloadProgressListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_removeProgressListener,
          jni.JniType.voidType,
          [request.reference, listener.reference]).check();

  static final _id_cancelDownload = jniAccessors.getMethodIDOf(_classRef,
      "cancelDownload", "(Landroid/telephony/mbms/DownloadRequest;)V");

  /// from: public void cancelDownload(android.telephony.mbms.DownloadRequest downloadRequest)
  ///
  /// Attempts to cancel the specified DownloadRequest.
  ///
  /// If the operation encountered an error, the error code will be delivered via
  /// MbmsDownloadSessionCallback\#onError.
  ///@param downloadRequest The download request that you wish to cancel.
  ///
  /// This value must never be {@code null}.
  void cancelDownload(downloadrequest_.DownloadRequest downloadRequest) =>
      jniAccessors.callMethodWithArgs(reference, _id_cancelDownload,
          jni.JniType.voidType, [downloadRequest.reference]).check();

  static final _id_requestDownloadState = jniAccessors.getMethodIDOf(
      _classRef,
      "requestDownloadState",
      "(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)V");

  /// from: public void requestDownloadState(android.telephony.mbms.DownloadRequest downloadRequest, android.telephony.mbms.FileInfo fileInfo)
  ///
  /// Requests information about the state of a file pending download.
  ///
  /// The state will be delivered as a callback via
  /// DownloadStatusListener\#onStatusUpdated(DownloadRequest, FileInfo, int). If no such
  /// callback has been registered via
  /// \#addProgressListener(DownloadRequest, Executor, DownloadProgressListener), this
  /// method will be a no-op.
  ///
  /// If the middleware has no record of the
  /// file indicated by {@code fileInfo} being associated with {@code downloadRequest},
  /// an IllegalArgumentException will be thrown.
  ///@param downloadRequest The download request to query.
  ///@param fileInfo The particular file within the request to get information on.
  void requestDownloadState(downloadrequest_.DownloadRequest downloadRequest,
          fileinfo_.FileInfo fileInfo) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_requestDownloadState,
          jni.JniType.voidType,
          [downloadRequest.reference, fileInfo.reference]).check();

  static final _id_resetDownloadKnowledge = jniAccessors.getMethodIDOf(
      _classRef,
      "resetDownloadKnowledge",
      "(Landroid/telephony/mbms/DownloadRequest;)V");

  /// from: public void resetDownloadKnowledge(android.telephony.mbms.DownloadRequest downloadRequest)
  ///
  /// Resets the middleware's knowledge of previously-downloaded files in this download request.
  ///
  /// Normally, the middleware keeps track of the hashes of downloaded files and won't re-download
  /// files whose server-reported hash matches one of the already-downloaded files. This means
  /// that if the file is accidentally deleted by the user or by the app, the middleware will
  /// not try to download it again.
  /// This method will reset the middleware's cache of hashes for the provided
  /// DownloadRequest, so that previously downloaded content will be downloaded again
  /// when available.
  /// This will not interrupt in-progress downloads.
  ///
  /// This is distinct from cancelling and re-issuing the download request -- if you cancel and
  /// re-issue, the middleware will not clear its cache of download state information.
  ///
  /// If the middleware is not aware of the specified download request, an
  /// IllegalArgumentException will be thrown.
  ///@param downloadRequest The request to re-download files for.
  void resetDownloadKnowledge(
          downloadrequest_.DownloadRequest downloadRequest) =>
      jniAccessors.callMethodWithArgs(reference, _id_resetDownloadKnowledge,
          jni.JniType.voidType, [downloadRequest.reference]).check();

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Terminates this instance.
  ///
  /// After this method returns,
  /// no further callbacks originating from the middleware will be enqueued on the provided
  /// instance of MbmsDownloadSessionCallback, but callbacks that have already been
  /// enqueued will still be delivered.
  ///
  /// It is safe to call \#create(Context, Executor, int, MbmsDownloadSessionCallback) to
  /// obtain another instance of MbmsDownloadSession immediately after this method
  /// returns.
  ///
  /// May throw an IllegalStateException
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();
}
