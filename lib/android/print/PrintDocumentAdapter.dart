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

import "PrintAttributes.dart" as printattributes_;

import "../os/CancellationSignal.dart" as cancellationsignal_;

import "../os/Bundle.dart" as bundle_;

import "../os/ParcelFileDescriptor.dart" as parcelfiledescriptor_;

import "PrintDocumentInfo.dart" as printdocumentinfo_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.print.PrintDocumentAdapter
///
/// Base class that provides the content of a document to be printed.
///
/// <h3>Lifecycle</h3>
///
/// <ul>
/// <li>
/// Initially, you will receive a call to \#onStart(). This callback
/// can be used to allocate resources.
/// </li>
/// <li>
/// Next, you will get one or more calls to \#onLayout(PrintAttributes,
/// PrintAttributes, CancellationSignal, LayoutResultCallback, Bundle) to
/// inform you that the print attributes (page size, density, etc) changed
/// giving you an opportunity to layout the content to match the new constraints.
/// </li>
/// <li>
/// After every call to \#onLayout(PrintAttributes, PrintAttributes,
/// CancellationSignal, LayoutResultCallback, Bundle), you <strong>may</strong> get
/// a call to \#onWrite(PageRange[], ParcelFileDescriptor, CancellationSignal,
/// WriteResultCallback) asking you to write a PDF file with the content for
/// specific pages.
/// </li>
/// <li>
/// Finally, you will receive a call to \#onFinish(). You can use this
/// callback to release resources allocated in \#onStart().
/// </li>
/// </ul>
///
/// The \#onStart() callback is always the first call you will receive and
/// is useful for doing one time setup or resource allocation before printing. You
/// will not receive a subsequent call here.
///
///
///
/// The \#onLayout(PrintAttributes, PrintAttributes, CancellationSignal,
/// LayoutResultCallback, Bundle) callback requires that you layout the content
/// based on the current PrintAttributes. The execution of this method is
/// not considered completed until you invoke one of the methods on the passed in
/// callback instance. Hence, you will not receive a subsequent call to any other
/// method of this class until the execution of this method is complete by invoking
/// one of the callback methods.
///
///
///
/// The \#onWrite(PageRange[], ParcelFileDescriptor, CancellationSignal,
/// WriteResultCallback) requires that you render and write the content of some
/// pages to the provided destination. The execution of this method is not
/// considered complete until you invoke one of the methods on the passed in
/// callback instance. Hence, you will not receive a subsequent call to any other
/// method of this class until the execution of this method is complete by invoking
/// one of the callback methods. You will never receive a sequence of one or more
/// calls to this method without a previous call to \#onLayout(PrintAttributes,
/// PrintAttributes, CancellationSignal, LayoutResultCallback, Bundle).
///
///
///
/// The \#onFinish() callback is always the last call you will receive and
/// is useful for doing one time cleanup or resource deallocation after printing.
/// You will not receive a subsequent call here.
///
///
///
///
/// <h3>Implementation</h3>
///
/// The APIs defined in this class are designed to enable doing part or all
/// of the work on an arbitrary thread. For example, if the printed content
/// does not depend on the UI state, i.e. on what is shown on the screen, then
/// you can offload the entire work on a dedicated thread, thus making your
/// application interactive while the print work is being performed. Note that
/// while your activity is covered by the system print UI and a user cannot
/// interact with it, doing the printing work on the main application thread
/// may affect the performance of your other application components as they
/// are also executed on that thread.
///
///
///
/// You can also do work on different threads, for example if you print UI
/// content, you can handle \#onStart() and \#onLayout(PrintAttributes,
/// PrintAttributes, CancellationSignal, LayoutResultCallback, Bundle) on
/// the UI thread (assuming onStart initializes resources needed for layout).
/// This will ensure that the UI does not change while you are laying out the
/// printed content. Then you can handle \#onWrite(PageRange[], ParcelFileDescriptor,
/// CancellationSignal, WriteResultCallback) and \#onFinish() on another
/// thread. This will ensure that the main thread is busy for a minimal amount of
/// time. Also this assumes that you will generate the printed content in
/// \#onLayout(PrintAttributes, PrintAttributes, CancellationSignal,
/// LayoutResultCallback, Bundle) which is not mandatory. If you use multiple
/// threads, you are responsible for proper synchronization.
///
///
class PrintDocumentAdapter extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/print/PrintDocumentAdapter");
  PrintDocumentAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String EXTRA_PRINT_PREVIEW
  ///
  /// Extra: mapped to a boolean value that is <code>true</code> if
  /// the current layout is for a print preview, <code>false</code> otherwise.
  /// This extra is provided in the Bundle argument of the \#onLayout(PrintAttributes, PrintAttributes, CancellationSignal,
  /// LayoutResultCallback, Bundle) callback.
  ///@see \#onLayout(PrintAttributes, PrintAttributes, CancellationSignal,
  /// LayoutResultCallback, Bundle)
  static const EXTRA_PRINT_PREVIEW = "EXTRA_PRINT_PREVIEW";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  PrintDocumentAdapter()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onStart =
      jniAccessors.getMethodIDOf(_classRef, "onStart", "()V");

  /// from: public void onStart()
  ///
  /// Called when printing starts. You can use this callback to allocate
  /// resources. This method is invoked on the main thread.
  void onStart() => jniAccessors.callMethodWithArgs(
      reference, _id_onStart, jni.JniType.voidType, []).check();

  static final _id_onLayout = jniAccessors.getMethodIDOf(_classRef, "onLayout",
      "(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter\$LayoutResultCallback;Landroid/os/Bundle;)V");

  /// from: public abstract void onLayout(android.print.PrintAttributes oldAttributes, android.print.PrintAttributes newAttributes, android.os.CancellationSignal cancellationSignal, android.print.PrintDocumentAdapter.LayoutResultCallback callback, android.os.Bundle extras)
  ///
  /// Called when the print attributes (page size, density, etc) changed
  /// giving you a chance to layout the content such that it matches the
  /// new constraints. This method is invoked on the main thread.
  ///
  /// After you are done laying out, you <strong>must</strong> invoke: LayoutResultCallback\#onLayoutFinished(PrintDocumentInfo, boolean) with
  /// the last argument <code>true</code> or <code>false</code> depending on
  /// whether the layout changed the content or not, respectively; or LayoutResultCallback\#onLayoutFailed(CharSequence), if an error occurred;
  /// or LayoutResultCallback\#onLayoutCancelled() if layout was
  /// cancelled in a response to a cancellation request via the passed in
  /// CancellationSignal. Note that you <strong>must</strong> call one of
  /// the methods of the given callback for this method to be considered complete
  /// which is you will not receive any calls to this adapter until the current
  /// layout operation is complete by invoking a method on the callback instance.
  /// The callback methods can be invoked from an arbitrary thread.
  ///
  ///
  ///
  /// One of the arguments passed to this method is a CancellationSignal
  /// which is used to propagate requests from the system to your application for
  /// canceling the current layout operation. For example, a cancellation may be
  /// requested if the user changes a print option that may affect layout while
  /// you are performing a layout operation. In such a case the system will make
  /// an attempt to cancel the current layout as another one will have to be performed.
  /// Typically, you should register a cancellation callback in the cancellation
  /// signal. The cancellation callback <strong>will not</strong> be made on the
  /// main thread and can be registered as follows:
  ///
  ///
  /// <pre>
  /// cancellationSignal.setOnCancelListener(new OnCancelListener() {
  ///     &\#064;Override
  ///     public void onCancel() {
  ///         // Cancel layout
  ///     }
  /// });
  /// </pre>
  ///
  /// <strong>Note:</strong> If the content is large and a layout will be
  /// performed, it is a good practice to schedule the work on a dedicated
  /// thread and register an observer in the provided CancellationSignal upon invocation of which you should stop the
  /// layout.
  ///
  ///
  ///@param oldAttributes The old print attributes.
  ///@param newAttributes The new print attributes.
  ///@param cancellationSignal Signal for observing cancel layout requests.
  ///@param callback Callback to inform the system for the layout result.
  ///@param extras Additional information about how to layout the content.
  ///@see LayoutResultCallback
  ///@see CancellationSignal
  ///@see \#EXTRA_PRINT_PREVIEW
  void onLayout(
          printattributes_.PrintAttributes oldAttributes,
          printattributes_.PrintAttributes newAttributes,
          cancellationsignal_.CancellationSignal cancellationSignal,
          PrintDocumentAdapter_LayoutResultCallback callback,
          bundle_.Bundle extras) =>
      jniAccessors
          .callMethodWithArgs(reference, _id_onLayout, jni.JniType.voidType, [
        oldAttributes.reference,
        newAttributes.reference,
        cancellationSignal.reference,
        callback.reference,
        extras.reference
      ]).check();

  static final _id_onWrite = jniAccessors.getMethodIDOf(_classRef, "onWrite",
      "([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter\$WriteResultCallback;)V");

  /// from: public abstract void onWrite(android.print.PageRange[] pages, android.os.ParcelFileDescriptor destination, android.os.CancellationSignal cancellationSignal, android.print.PrintDocumentAdapter.WriteResultCallback callback)
  ///
  /// Called when specific pages of the content should be written in the
  /// form of a PDF file to the given file descriptor. This method is invoked
  /// on the main thread.
  ///
  /// After you are done writing, you should close the file descriptor and
  /// invoke WriteResultCallback\#onWriteFinished(PageRange[]), if writing
  /// completed successfully; or WriteResultCallback\#onWriteFailed(
  /// CharSequence), if an error occurred; or WriteResultCallback\#onWriteCancelled(),
  /// if writing was cancelled in a response to a cancellation request via the passed
  /// in CancellationSignal. Note that you <strong>must</strong> call one of
  /// the methods of the given callback for this method to be considered complete which
  /// is you will not receive any calls to this adapter until the current write
  /// operation is complete by invoking a method on the callback instance. The callback
  /// methods can be invoked from an arbitrary thread.
  ///
  ///
  ///
  /// One of the arguments passed to this method is a CancellationSignal
  /// which is used to propagate requests from the system to your application for
  /// canceling the current write operation. For example, a cancellation may be
  /// requested if the user changes a print option that may affect layout while
  /// you are performing a write operation. In such a case the system will make
  /// an attempt to cancel the current write as a layout will have to be performed
  /// which then may be followed by a write. Typically, you should register a
  /// cancellation callback in the cancellation signal. The cancellation callback
  /// <strong>will not</strong> be made on the main thread and can be registered
  /// as follows:
  ///
  ///
  /// <pre>
  /// cancellationSignal.setOnCancelListener(new OnCancelListener() {
  ///     &\#064;Override
  ///     public void onCancel() {
  ///         // Cancel write
  ///     }
  /// });
  /// </pre>
  ///
  /// <strong>Note:</strong> If the printed content is large, it is a good
  /// practice to schedule writing it on a dedicated thread and register an
  /// observer in the provided CancellationSignal upon invocation of
  /// which you should stop writing.
  ///
  ///
  ///@param pages The pages whose content to print - non-overlapping in ascending order.
  ///@param destination The destination file descriptor to which to write.
  ///@param cancellationSignal Signal for observing cancel writing requests.
  ///@param callback Callback to inform the system for the write result.
  ///@see WriteResultCallback
  ///@see CancellationSignal
  void onWrite(
          jni.JniObject pages,
          parcelfiledescriptor_.ParcelFileDescriptor destination,
          cancellationsignal_.CancellationSignal cancellationSignal,
          PrintDocumentAdapter_WriteResultCallback callback) =>
      jniAccessors
          .callMethodWithArgs(reference, _id_onWrite, jni.JniType.voidType, [
        pages.reference,
        destination.reference,
        cancellationSignal.reference,
        callback.reference
      ]).check();

  static final _id_onFinish =
      jniAccessors.getMethodIDOf(_classRef, "onFinish", "()V");

  /// from: public void onFinish()
  ///
  /// Called when printing finishes. You can use this callback to release
  /// resources acquired in \#onStart(). This method is invoked on
  /// the main thread.
  void onFinish() => jniAccessors.callMethodWithArgs(
      reference, _id_onFinish, jni.JniType.voidType, []).check();
}

/// from: android.print.PrintDocumentAdapter$WriteResultCallback
///
/// Base class for implementing a callback for the result of PrintDocumentAdapter\#onWrite(PageRange[], ParcelFileDescriptor, CancellationSignal,
/// WriteResultCallback).
class PrintDocumentAdapter_WriteResultCallback extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/print/PrintDocumentAdapter\$WriteResultCallback");
  PrintDocumentAdapter_WriteResultCallback.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  PrintDocumentAdapter_WriteResultCallback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onWriteFinished = jniAccessors.getMethodIDOf(
      _classRef, "onWriteFinished", "([Landroid/print/PageRange;)V");

  /// from: public void onWriteFinished(android.print.PageRange[] pages)
  ///
  /// Notifies that all the data was written.
  ///@param pages The pages that were written. Cannot be <code>null</code>
  ///        or empty. <br/>
  ///        Returning PageRange\#ALL_PAGES indicates that all pages that were
  ///        requested as the {@code pages} parameter in \#onWrite were written.
  void onWriteFinished(jni.JniObject pages) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onWriteFinished,
      jni.JniType.voidType,
      [pages.reference]).check();

  static final _id_onWriteFailed = jniAccessors.getMethodIDOf(
      _classRef, "onWriteFailed", "(Ljava/lang/CharSequence;)V");

  /// from: public void onWriteFailed(java.lang.CharSequence error)
  ///
  /// Notifies that an error occurred while writing the data.
  ///@param error The <strong>localized</strong> error message.
  /// shown to the user. May be <code>null</code> if error is unknown.
  void onWriteFailed(jni.JniObject error) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onWriteFailed,
      jni.JniType.voidType,
      [error.reference]).check();

  static final _id_onWriteCancelled =
      jniAccessors.getMethodIDOf(_classRef, "onWriteCancelled", "()V");

  /// from: public void onWriteCancelled()
  ///
  /// Notifies that write was cancelled as a result of a cancellation request.
  void onWriteCancelled() => jniAccessors.callMethodWithArgs(
      reference, _id_onWriteCancelled, jni.JniType.voidType, []).check();
}

/// from: android.print.PrintDocumentAdapter$LayoutResultCallback
///
/// Base class for implementing a callback for the result of PrintDocumentAdapter\#onLayout(PrintAttributes, PrintAttributes,
/// CancellationSignal, LayoutResultCallback, Bundle).
class PrintDocumentAdapter_LayoutResultCallback extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/print/PrintDocumentAdapter\$LayoutResultCallback");
  PrintDocumentAdapter_LayoutResultCallback.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  PrintDocumentAdapter_LayoutResultCallback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onLayoutFinished = jniAccessors.getMethodIDOf(
      _classRef, "onLayoutFinished", "(Landroid/print/PrintDocumentInfo;Z)V");

  /// from: public void onLayoutFinished(android.print.PrintDocumentInfo info, boolean changed)
  ///
  /// Notifies that the layout finished and whether the content changed.
  ///@param info An info object describing the document. Cannot be <code>null</code>.
  ///@param changed Whether the layout changed.
  ///@see PrintDocumentInfo
  void onLayoutFinished(
          printdocumentinfo_.PrintDocumentInfo info, bool changed) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLayoutFinished,
          jni.JniType.voidType, [info.reference, changed]).check();

  static final _id_onLayoutFailed = jniAccessors.getMethodIDOf(
      _classRef, "onLayoutFailed", "(Ljava/lang/CharSequence;)V");

  /// from: public void onLayoutFailed(java.lang.CharSequence error)
  ///
  /// Notifies that an error occurred while laying out the document.
  ///@param error The <strong>localized</strong> error message.
  /// shown to the user. May be <code>null</code> if error is unknown.
  void onLayoutFailed(jni.JniObject error) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onLayoutFailed,
      jni.JniType.voidType,
      [error.reference]).check();

  static final _id_onLayoutCancelled =
      jniAccessors.getMethodIDOf(_classRef, "onLayoutCancelled", "()V");

  /// from: public void onLayoutCancelled()
  ///
  /// Notifies that layout was cancelled as a result of a cancellation request.
  void onLayoutCancelled() => jniAccessors.callMethodWithArgs(
      reference, _id_onLayoutCancelled, jni.JniType.voidType, []).check();
}