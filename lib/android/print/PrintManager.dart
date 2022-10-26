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

import "PrintJob.dart" as printjob_;

import "PrintDocumentAdapter.dart" as printdocumentadapter_;

import "PrintAttributes.dart" as printattributes_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.print.PrintManager
///
/// System level service for accessing the printing capabilities of the platform.
///
/// <h3>Print mechanics</h3>
///
/// The key idea behind printing on the platform is that the content to be printed
/// should be laid out for the currently selected print options resulting in an
/// optimized output and higher user satisfaction. To achieve this goal the platform
/// declares a contract that the printing application has to follow which is defined
/// by the PrintDocumentAdapter class. At a higher level the contract is that
/// when the user selects some options from the print UI that may affect the way
/// content is laid out, for example page size, the application receives a callback
/// allowing it to layout the content to better fit these new constraints. After a
/// layout pass the system may ask the application to render one or more pages one
/// or more times. For example, an application may produce a single column list for
/// smaller page sizes and a multi-column table for larger page sizes.
///
///
/// <h3>Print jobs</h3>
///
/// Print jobs are started by calling the \#print(String, PrintDocumentAdapter,
/// PrintAttributes) from an activity which results in bringing up the system print
/// UI. Once the print UI is up, when the user changes a selected print option that
/// affects the way content is laid out the system starts to interact with the
/// application following the mechanics described the section above.
///
///
///
/// Print jobs can be in PrintJobInfo\#STATE_CREATED created, PrintJobInfo\#STATE_QUEUED queued, PrintJobInfo\#STATE_STARTED started,
/// PrintJobInfo\#STATE_BLOCKED blocked, PrintJobInfo\#STATE_COMPLETED completed, PrintJobInfo\#STATE_FAILED failed, and PrintJobInfo\#STATE_CANCELED canceled state. Print jobs are stored in dedicated
/// system spooler until they are handled which is they are cancelled or completed.
/// Active print jobs, ones that are not cancelled or completed, are considered failed
/// if the device reboots as the new boot may be after a very long time. The user may
/// choose to restart such print jobs. Once a print job is queued all relevant content
/// is stored in the system spooler and its lifecycle becomes detached from this of
/// the application that created it.
///
///
///
/// An applications can query the print spooler for current print jobs it created
/// but not print jobs created by other applications.
///
///
///
/// Requires the android.content.pm.PackageManager\#FEATURE_PRINTING PackageManager\#FEATURE_PRINTING feature which can be detected using android.content.pm.PackageManager\#hasSystemFeature(String) PackageManager.hasSystemFeature(String).
///@see PrintJob
///@see PrintJobInfo
class PrintManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/print/PrintManager");
  PrintManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  PrintManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getPrintJobs = jniAccessors.getMethodIDOf(
      _classRef, "getPrintJobs", "()Ljava/util/List;");

  /// from: public java.util.List<android.print.PrintJob> getPrintJobs()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the print jobs for this application.
  ///@return The print job list.
  /// This value will never be {@code null}.
  ///@see PrintJob
  jni.JniObject getPrintJobs() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPrintJobs, jni.JniType.objectType, []).object);

  static final _id_print = jniAccessors.getMethodIDOf(_classRef, "print",
      "(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;");

  /// from: public android.print.PrintJob print(java.lang.String printJobName, android.print.PrintDocumentAdapter documentAdapter, android.print.PrintAttributes attributes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a print job for printing a PrintDocumentAdapter with
  /// default print attributes.
  ///
  /// Calling this method brings the print UI allowing the user to customize
  /// the print job and returns a PrintJob object without waiting for the
  /// user to customize or confirm the print job. The returned print job instance
  /// is in a PrintJobInfo\#STATE_CREATED created state.
  ///
  /// This method can be called only from an Activity. The rationale is that
  /// printing from a service will create an inconsistent user experience as the print
  /// UI would appear without any context.
  ///
  ///
  ///
  /// Also the passed in PrintDocumentAdapter will be considered invalid if
  /// your activity is finished. The rationale is that once the activity that
  /// initiated printing is finished, the provided adapter may be in an inconsistent
  /// state as it may depend on the UI presented by the activity.
  ///
  ///
  ///
  /// The default print attributes are a hint to the system how the data is to
  /// be printed. For example, a photo editor may look at the photo aspect ratio
  /// to determine the default orientation and provide a hint whether the printing
  /// should be in portrait or landscape. The system will do a best effort to
  /// selected the hinted options in the print dialog, given the current printer
  /// supports them.
  ///
  ///
  ///
  /// <strong>Note:</strong> Calling this method will bring the print dialog and
  /// the system will connect to the provided PrintDocumentAdapter. If a
  /// configuration change occurs that you application does not handle, for example
  /// a rotation change, the system will drop the connection to the adapter as the
  /// activity has to be recreated and the old adapter may be invalid in this context,
  /// hence a new adapter instance is required. As a consequence, if your activity
  /// does not handle configuration changes (default behavior), you have to save the
  /// state that you were printing and call this method again when your activity
  /// is recreated.
  ///
  ///
  ///@param printJobName A name for the new print job which is shown to the user.
  /// This value must never be {@code null}.
  ///@param documentAdapter An adapter that emits the document to print.
  /// This value must never be {@code null}.
  ///@param attributes The default print job attributes or <code>null</code>.
  /// This value may be {@code null}.
  ///@return The created print job on success or null on failure.
  ///@throws IllegalStateException If not called from an Activity.
  ///@throws IllegalArgumentException If the print job name is empty or the
  /// document adapter is null.
  ///@see PrintJob
  printjob_.PrintJob print(
          jni.JniString printJobName,
          printdocumentadapter_.PrintDocumentAdapter documentAdapter,
          printattributes_.PrintAttributes attributes) =>
      printjob_.PrintJob.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_print, jni.JniType.objectType, [
        printJobName.reference,
        documentAdapter.reference,
        attributes.reference
      ]).object);
}
