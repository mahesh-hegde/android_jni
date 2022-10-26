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

import "../../graphics/pdf/PdfDocument.dart" as pdfdocument_;

import "../../content/Context.dart" as context_;

import "../PrintAttributes.dart" as printattributes_;

import "../../graphics/Rect.dart" as rect_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.print.pdf.PrintedPdfDocument
///
/// This class is a helper for creating a PDF file for given print attributes. It is useful for
/// implementing printing via the native Android graphics APIs.
///
/// This class computes the page width, page height, and content rectangle from the provided print
/// attributes and these precomputed values can be accessed via \#getPageWidth(),
/// \#getPageHeight(), and \#getPageContentRect(), respectively. The
/// \#startPage(int) methods creates pages whose
/// android.graphics.pdf.PdfDocument.PageInfo PageInfo is initialized with the precomputed
/// values for width, height, and content rectangle.
///
/// A typical use of the APIs looks like this:
///
///
/// <pre>
/// // open a new document
/// PrintedPdfDocument document = new PrintedPdfDocument(context,
///         printAttributes);
///
/// // start a page
/// Page page = document.startPage(0);
///
/// // draw something on the page
/// View content = getContentView();
/// content.draw(page.getCanvas());
///
/// // finish the page
/// document.finishPage(page);
/// . . .
/// // add more pages
/// . . .
/// // write the document content
/// document.writeTo(getOutputStream());
///
/// //close the document
/// document.close();
/// </pre>
class PrintedPdfDocument extends pdfdocument_.PdfDocument {
  static final _classRef =
      jniAccessors.getClassOf("android/print/pdf/PrintedPdfDocument");
  PrintedPdfDocument.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/print/PrintAttributes;)V");

  /// from: public void <init>(android.content.Context context, android.print.PrintAttributes attributes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new document.
  ///
  /// <strong>Note:</strong> You must close the document after you are
  /// done by calling \#close().
  ///
  ///
  ///@param context Context instance for accessing resources.
  /// This value must never be {@code null}.
  ///@param attributes The print attributes.
  ///
  /// This value must never be {@code null}.
  PrintedPdfDocument.ctor1(
      context_.Context context, printattributes_.PrintAttributes attributes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [context.reference, attributes.reference]).object);

  static final _id_startPage1 = jniAccessors.getMethodIDOf(
      _classRef, "startPage", "(I)Landroid/graphics/pdf/PdfDocument\$Page;");

  /// from: public android.graphics.pdf.PdfDocument.Page startPage(int pageNumber)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Starts a new page. The page is created using width, height and content rectangle computed
  /// from the print attributes passed in the constructor and the given page number to create an
  /// appropriate android.graphics.pdf.PdfDocument.PageInfo PageInfo.
  ///
  /// After the page is created you can draw arbitrary content on the page's canvas which you can
  /// get by calling android.graphics.pdf.PdfDocument.Page\#getCanvas() Page.getCanvas().
  /// After you are done drawing the content you should finish the page by calling
  /// \#finishPage(Page). After the page is finished you should no longer access the page or
  /// its canvas.
  ///
  ///
  ///
  /// <strong>Note:</strong> Do not call this method after \#close(). Also do not call this
  /// method if the last page returned by this method is not finished by calling
  /// \#finishPage(Page).
  ///
  ///
  ///@param pageNumber The page number. Must be a non negative.
  /// Value is 0 or greater
  ///@return A blank page.
  ///
  /// This value will never be {@code null}.
  ///@see \#finishPage(Page)
  pdfdocument_.PdfDocument_Page startPage1(int pageNumber) =>
      pdfdocument_.PdfDocument_Page.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_startPage1,
          jni.JniType.objectType,
          [pageNumber]).object);

  static final _id_getPageWidth =
      jniAccessors.getMethodIDOf(_classRef, "getPageWidth", "()I");

  /// from: public int getPageWidth()
  ///
  /// Gets the page width.
  ///@return The page width in PostScript points (1/72th of an inch).
  ///
  /// Value is 0 or greater
  int getPageWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getPageWidth, jni.JniType.intType, []).integer;

  static final _id_getPageHeight =
      jniAccessors.getMethodIDOf(_classRef, "getPageHeight", "()I");

  /// from: public int getPageHeight()
  ///
  /// Gets the page height.
  ///@return The page height in PostScript points (1/72th of an inch).
  ///
  /// Value is 0 or greater
  int getPageHeight() => jniAccessors.callMethodWithArgs(
      reference, _id_getPageHeight, jni.JniType.intType, []).integer;

  static final _id_getPageContentRect = jniAccessors.getMethodIDOf(
      _classRef, "getPageContentRect", "()Landroid/graphics/Rect;");

  /// from: public android.graphics.Rect getPageContentRect()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the content rectangle. This is the area of the page that
  /// contains printed data and is relative to the page top left.
  ///@return The content rectangle.
  ///
  /// This value will never be {@code null}.
  rect_.Rect getPageContentRect() =>
      rect_.Rect.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getPageContentRect, jni.JniType.objectType, []).object);
}