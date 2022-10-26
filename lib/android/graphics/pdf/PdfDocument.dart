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

import "../Rect.dart" as rect_;

import "../Canvas.dart" as canvas_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.pdf.PdfDocument
///
///
/// This class enables generating a PDF document from native Android content. You
/// create a new document and then for every page you want to add you start a page,
/// write content to the page, and finish the page. After you are done with all
/// pages, you write the document to an output stream and close the document.
/// After a document is closed you should not use it anymore. Note that pages are
/// created one by one, i.e. you can have only a single page to which you are
/// writing at any given time. This class is not thread safe.
///
///
///
/// A typical use of the APIs looks like this:
///
///
/// <pre>
/// // create a new document
/// PdfDocument document = new PdfDocument();
///
/// // crate a page description
/// PageInfo pageInfo = new PageInfo.Builder(new Rect(0, 0, 100, 100), 1).create();
///
/// // start a page
/// Page page = document.startPage(pageInfo);
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
/// // close the document
/// document.close();
/// </pre>
class PdfDocument extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/pdf/PdfDocument");
  PdfDocument.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new instance.
  PdfDocument()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_startPage = jniAccessors.getMethodIDOf(
      _classRef,
      "startPage",
      "(Landroid/graphics/pdf/PdfDocument\$PageInfo;)Landroid/graphics/pdf/PdfDocument\$Page;");

  /// from: public android.graphics.pdf.PdfDocument.Page startPage(android.graphics.pdf.PdfDocument.PageInfo pageInfo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Starts a page using the provided PageInfo. After the page
  /// is created you can draw arbitrary content on the page's canvas which
  /// you can get by calling Page\#getCanvas(). After you are done
  /// drawing the content you should finish the page by calling
  /// \#finishPage(Page). After the page is finished you should
  /// no longer access the page or its canvas.
  ///
  /// <strong>Note:</strong> Do not call this method after \#close().
  /// Also do not call this method if the last page returned by this method
  /// is not finished by calling \#finishPage(Page).
  ///
  ///
  ///@param pageInfo The page info. Cannot be null.
  ///@return A blank page.
  ///@see \#finishPage(Page)
  PdfDocument_Page startPage(PdfDocument_PageInfo pageInfo) =>
      PdfDocument_Page.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_startPage, jni.JniType.objectType, [pageInfo.reference]).object);

  static final _id_finishPage = jniAccessors.getMethodIDOf(
      _classRef, "finishPage", "(Landroid/graphics/pdf/PdfDocument\$Page;)V");

  /// from: public void finishPage(android.graphics.pdf.PdfDocument.Page page)
  ///
  /// Finishes a started page. You should always finish the last started page.
  ///
  /// <strong>Note:</strong> Do not call this method after \#close().
  /// You should not finish the same page more than once.
  ///
  ///
  ///@param page The page. Cannot be null.
  ///@see \#startPage(PageInfo)
  void finishPage(PdfDocument_Page page) => jniAccessors.callMethodWithArgs(
      reference,
      _id_finishPage,
      jni.JniType.voidType,
      [page.reference]).check();

  static final _id_writeTo = jniAccessors.getMethodIDOf(
      _classRef, "writeTo", "(Ljava/io/OutputStream;)V");

  /// from: public void writeTo(java.io.OutputStream out)
  ///
  /// Writes the document to an output stream. You can call this method
  /// multiple times.
  ///
  /// <strong>Note:</strong> Do not call this method after \#close().
  /// Also do not call this method if a page returned by \#startPage(
  /// PageInfo) is not finished by calling \#finishPage(Page).
  ///
  ///
  ///@param out The output stream. Cannot be null.
  ///@throws IOException If an error occurs while writing.
  void writeTo(jni.JniObject out) => jniAccessors.callMethodWithArgs(
      reference, _id_writeTo, jni.JniType.voidType, [out.reference]).check();

  static final _id_getPages =
      jniAccessors.getMethodIDOf(_classRef, "getPages", "()Ljava/util/List;");

  /// from: public java.util.List<android.graphics.pdf.PdfDocument.PageInfo> getPages()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the pages of the document.
  ///@return The pages or an empty list.
  jni.JniObject getPages() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPages, jni.JniType.objectType, []).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Closes this document. This method should be called after you
  /// are done working with the document. After this call the document
  /// is considered closed and none of its methods should be called.
  ///
  /// <strong>Note:</strong> Do not call this method if the page
  /// returned by \#startPage(PageInfo) is not finished by
  /// calling \#finishPage(Page).
  ///
  ///
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();
}

/// from: android.graphics.pdf.PdfDocument$PageInfo
///
/// This class represents meta-data that describes a PDF Page.
class PdfDocument_PageInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/pdf/PdfDocument\$PageInfo");
  PdfDocument_PageInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new instance.
  PdfDocument_PageInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getPageWidth =
      jniAccessors.getMethodIDOf(_classRef, "getPageWidth", "()I");

  /// from: public int getPageWidth()
  ///
  /// Gets the page width in PostScript points (1/72th of an inch).
  ///@return The page width.
  int getPageWidth() => jniAccessors.callMethodWithArgs(
      reference, _id_getPageWidth, jni.JniType.intType, []).integer;

  static final _id_getPageHeight =
      jniAccessors.getMethodIDOf(_classRef, "getPageHeight", "()I");

  /// from: public int getPageHeight()
  ///
  /// Gets the page height in PostScript points (1/72th of an inch).
  ///@return The page height.
  int getPageHeight() => jniAccessors.callMethodWithArgs(
      reference, _id_getPageHeight, jni.JniType.intType, []).integer;

  static final _id_getContentRect = jniAccessors.getMethodIDOf(
      _classRef, "getContentRect", "()Landroid/graphics/Rect;");

  /// from: public android.graphics.Rect getContentRect()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the content rectangle in PostScript points (1/72th of an inch).
  /// This is the area that contains the page content and is relative to
  /// the page top left.
  ///@return The content rectangle.
  rect_.Rect getContentRect() =>
      rect_.Rect.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getContentRect, jni.JniType.objectType, []).object);

  static final _id_getPageNumber =
      jniAccessors.getMethodIDOf(_classRef, "getPageNumber", "()I");

  /// from: public int getPageNumber()
  ///
  /// Gets the page number.
  ///@return The page number.
  int getPageNumber() => jniAccessors.callMethodWithArgs(
      reference, _id_getPageNumber, jni.JniType.intType, []).integer;
}

/// from: android.graphics.pdf.PdfDocument$PageInfo$Builder
///
/// Builder for creating a PageInfo.
class PdfDocument_PageInfo_Builder extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/graphics/pdf/PdfDocument\$PageInfo\$Builder");
  PdfDocument_PageInfo_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(III)V");

  /// from: public void <init>(int pageWidth, int pageHeight, int pageNumber)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new builder with the mandatory page info attributes.
  ///@param pageWidth The page width in PostScript (1/72th of an inch).
  ///@param pageHeight The page height in PostScript (1/72th of an inch).
  ///@param pageNumber The page number.
  PdfDocument_PageInfo_Builder(int pageWidth, int pageHeight, int pageNumber)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [pageWidth, pageHeight, pageNumber]).object);

  static final _id_setContentRect = jniAccessors.getMethodIDOf(
      _classRef,
      "setContentRect",
      "(Landroid/graphics/Rect;)Landroid/graphics/pdf/PdfDocument\$PageInfo\$Builder;");

  /// from: public android.graphics.pdf.PdfDocument.PageInfo.Builder setContentRect(android.graphics.Rect contentRect)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the content rectangle in PostScript point (1/72th of an inch).
  /// This is the area that contains the page content and is relative to
  /// the page top left.
  ///@param contentRect The content rectangle. Must fit in the page.
  PdfDocument_PageInfo_Builder setContentRect(rect_.Rect contentRect) =>
      PdfDocument_PageInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setContentRect,
          jni.JniType.objectType,
          [contentRect.reference]).object);

  static final _id_create = jniAccessors.getMethodIDOf(
      _classRef, "create", "()Landroid/graphics/pdf/PdfDocument\$PageInfo;");

  /// from: public android.graphics.pdf.PdfDocument.PageInfo create()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new PageInfo.
  ///@return The new instance.
  PdfDocument_PageInfo create() =>
      PdfDocument_PageInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_create, jni.JniType.objectType, []).object);
}

/// from: android.graphics.pdf.PdfDocument$Page
///
/// This class represents a PDF document page. It has associated
/// a canvas on which you can draw content and is acquired by a
/// call to \#getCanvas(). It also has associated a
/// PageInfo instance that describes its attributes. Also
/// a page has
class PdfDocument_Page extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/pdf/PdfDocument\$Page");
  PdfDocument_Page.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/graphics/Canvas;Landroid/graphics/pdf/PdfDocument\$PageInfo;)V");

  /// from: void <init>(android.graphics.Canvas canvas, android.graphics.pdf.PdfDocument.PageInfo pageInfo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new instance.
  ///@param canvas The canvas of the page.
  ///@param pageInfo The info with meta-data.
  PdfDocument_Page(canvas_.Canvas canvas, PdfDocument_PageInfo pageInfo)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [canvas.reference, pageInfo.reference]).object);

  static final _id_getCanvas = jniAccessors.getMethodIDOf(
      _classRef, "getCanvas", "()Landroid/graphics/Canvas;");

  /// from: public android.graphics.Canvas getCanvas()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the Canvas of the page.
  ///
  ///
  /// <strong>Note: </strong> There are some draw operations that are not yet
  /// supported by the canvas returned by this method. More specifically:
  /// <ul>
  /// <li>Inverse path clipping performed via Canvas\#clipPath(android.graphics.Path,
  ///     android.graphics.Region.Op) Canvas.clipPath(android.graphics.Path,
  ///     android.graphics.Region.Op) for android.graphics.Region.Op\#REVERSE_DIFFERENCE Region.Op\#REVERSE_DIFFERENCE operations.</li>
  /// <li>Canvas\#drawVertices(android.graphics.Canvas.VertexMode, int,
  ///     float[], int, float[], int, int[], int, short[], int, int,
  ///     android.graphics.Paint) Canvas.drawVertices(
  ///     android.graphics.Canvas.VertexMode, int, float[], int, float[],
  ///     int, int[], int, short[], int, int, android.graphics.Paint)</li>
  /// <li>Color filters set via Paint\#setColorFilter(
  ///     android.graphics.ColorFilter)</li>
  /// <li>Mask filters set via Paint\#setMaskFilter(
  ///     android.graphics.MaskFilter)</li>
  /// <li>Some XFER modes such as
  ///     android.graphics.PorterDuff.Mode\#SRC_ATOP PorterDuff.Mode SRC,
  ///     android.graphics.PorterDuff.Mode\#DST_ATOP PorterDuff.DST_ATOP,
  ///     android.graphics.PorterDuff.Mode\#XOR PorterDuff.XOR,
  ///     android.graphics.PorterDuff.Mode\#ADD PorterDuff.ADD</li>
  /// </ul>
  ///@return The canvas if the page is not finished, null otherwise.
  ///@see PdfDocument\#finishPage(Page)
  canvas_.Canvas getCanvas() =>
      canvas_.Canvas.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCanvas, jni.JniType.objectType, []).object);

  static final _id_getInfo = jniAccessors.getMethodIDOf(
      _classRef, "getInfo", "()Landroid/graphics/pdf/PdfDocument\$PageInfo;");

  /// from: public android.graphics.pdf.PdfDocument.PageInfo getInfo()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the PageInfo with meta-data for the page.
  ///@return The page info.
  ///@see PdfDocument\#finishPage(Page)
  PdfDocument_PageInfo getInfo() =>
      PdfDocument_PageInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getInfo, jni.JniType.objectType, []).object);
}
