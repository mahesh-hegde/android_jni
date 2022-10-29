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

import "DynamicDrawableSpan.dart" as dynamicdrawablespan_;

import "../../graphics/Bitmap.dart" as bitmap_;

import "../../content/Context.dart" as context_;

import "../../graphics/drawable/Drawable.dart" as drawable_;

import "../../net/Uri.dart" as uri_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.text.style.ImageSpan
///
/// Span that replaces the text it's attached to with a Drawable that can be aligned with
/// the bottom or with the baseline of the surrounding text. The drawable can be constructed from
/// varied sources:
/// <ul>
/// <li>Bitmap - see \#ImageSpan(Context, Bitmap) and
/// \#ImageSpan(Context, Bitmap, int)
/// </li>
/// <li>Drawable - see \#ImageSpan(Drawable, int)</li>
/// <li>resource id - see \#ImageSpan(Context, int, int)</li>
/// <li>Uri - see \#ImageSpan(Context, Uri, int)</li>
/// </ul>
/// The default value for the vertical alignment is DynamicDrawableSpan\#ALIGN_BOTTOM
///
/// For example, an <code>ImagedSpan</code> can be used like this:
/// <pre>
/// SpannableString string = SpannableString("Bottom: span.\nBaseline: span.");
/// // using the default alignment: ALIGN_BOTTOM
/// string.setSpan(ImageSpan(this, R.mipmap.ic_launcher), 7, 8, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
/// string.setSpan(ImageSpan(this, R.mipmap.ic_launcher, DynamicDrawableSpan.ALIGN_BASELINE),
/// 22, 23, Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
/// </pre>
/// <img src="{@docRoot}reference/android/images/text/style/imagespan.png"/>
/// <figcaption>Text with <code>ImageSpan</code>s aligned bottom and baseline.</figcaption>
class ImageSpan extends dynamicdrawablespan_.DynamicDrawableSpan {
  static final _classRef =
      jniAccessors.getClassOf("android/text/style/ImageSpan");
  ImageSpan.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/Bitmap;)V");

  /// from: public void <init>(android.graphics.Bitmap b)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use \#ImageSpan(Context, Bitmap) instead.
  ///@param b This value must never be {@code null}.
  ImageSpan.ctor2(bitmap_.Bitmap b)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [b.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/Bitmap;I)V");

  /// from: public void <init>(android.graphics.Bitmap b, int verticalAlignment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use \#ImageSpan(Context, Bitmap, int) instead.
  ///@param b This value must never be {@code null}.
  ImageSpan.ctor3(bitmap_.Bitmap b, int verticalAlignment)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor3, [b.reference, verticalAlignment]).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/graphics/Bitmap;)V");

  /// from: public void <init>(android.content.Context context, android.graphics.Bitmap bitmap)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an ImageSpan from a Context and a Bitmap with the default
  /// alignment DynamicDrawableSpan\#ALIGN_BOTTOM
  ///@param context context used to create a drawable from {@param bitmap} based on the display
  ///                metrics of the resources
  /// This value must never be {@code null}.
  ///@param bitmap bitmap to be rendered
  ///
  /// This value must never be {@code null}.
  ImageSpan.ctor4(context_.Context context, bitmap_.Bitmap bitmap)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor4,
            [context.reference, bitmap.reference]).object);

  static final _id_ctor5 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/graphics/Bitmap;I)V");

  /// from: public void <init>(android.content.Context context, android.graphics.Bitmap bitmap, int verticalAlignment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an ImageSpan from a Context, a Bitmap and a vertical
  /// alignment.
  ///@param context context used to create a drawable from {@param bitmap} based on
  ///                          the display metrics of the resources
  /// This value must never be {@code null}.
  ///@param bitmap bitmap to be rendered
  /// This value must never be {@code null}.
  ///@param verticalAlignment one of DynamicDrawableSpan\#ALIGN_BOTTOM or
  ///                          DynamicDrawableSpan\#ALIGN_BASELINE
  ImageSpan.ctor5(
      context_.Context context, bitmap_.Bitmap bitmap, int verticalAlignment)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor5,
            [context.reference, bitmap.reference, verticalAlignment]).object);

  static final _id_ctor6 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void <init>(android.graphics.drawable.Drawable drawable)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an ImageSpan from a drawable with the default
  /// alignment DynamicDrawableSpan\#ALIGN_BOTTOM.
  ///@param drawable drawable to be rendered
  ///
  /// This value must never be {@code null}.
  ImageSpan.ctor6(drawable_.Drawable drawable)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor6, [drawable.reference]).object);

  static final _id_ctor7 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/drawable/Drawable;I)V");

  /// from: public void <init>(android.graphics.drawable.Drawable drawable, int verticalAlignment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an ImageSpan from a drawable and a vertical alignment.
  ///@param drawable drawable to be rendered
  /// This value must never be {@code null}.
  ///@param verticalAlignment one of DynamicDrawableSpan\#ALIGN_BOTTOM or
  ///                          DynamicDrawableSpan\#ALIGN_BASELINE
  ImageSpan.ctor7(drawable_.Drawable drawable, int verticalAlignment)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor7,
            [drawable.reference, verticalAlignment]).object);

  static final _id_ctor8 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V");

  /// from: public void <init>(android.graphics.drawable.Drawable drawable, java.lang.String source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an ImageSpan from a drawable and a source with the default
  /// alignment DynamicDrawableSpan\#ALIGN_BOTTOM
  ///@param drawable drawable to be rendered
  /// This value must never be {@code null}.
  ///@param source drawable's Uri source
  ///
  /// This value must never be {@code null}.
  ImageSpan.ctor8(drawable_.Drawable drawable, jni.JniString source)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor8,
            [drawable.reference, source.reference]).object);

  static final _id_ctor9 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V");

  /// from: public void <init>(android.graphics.drawable.Drawable drawable, java.lang.String source, int verticalAlignment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an ImageSpan from a drawable, a source and a vertical alignment.
  ///@param drawable drawable to be rendered
  /// This value must never be {@code null}.
  ///@param source drawable's uri source
  /// This value must never be {@code null}.
  ///@param verticalAlignment one of DynamicDrawableSpan\#ALIGN_BOTTOM or
  ///                          DynamicDrawableSpan\#ALIGN_BASELINE
  ImageSpan.ctor9(
      drawable_.Drawable drawable, jni.JniString source, int verticalAlignment)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor9,
            [drawable.reference, source.reference, verticalAlignment]).object);

  static final _id_ctor10 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;Landroid/net/Uri;)V");

  /// from: public void <init>(android.content.Context context, android.net.Uri uri)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an ImageSpan from a Context and a Uri with the default
  /// alignment DynamicDrawableSpan\#ALIGN_BOTTOM. The Uri source can be retrieved via
  /// \#getSource()
  ///@param context context used to create a drawable from {@param bitmap} based on the display
  ///                metrics of the resources
  /// This value must never be {@code null}.
  ///@param uri Uri used to construct the drawable that will be rendered
  ///
  /// This value must never be {@code null}.
  ImageSpan.ctor10(context_.Context context, uri_.Uri uri)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor10, [context.reference, uri.reference]).object);

  static final _id_ctor11 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;Landroid/net/Uri;I)V");

  /// from: public void <init>(android.content.Context context, android.net.Uri uri, int verticalAlignment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an ImageSpan from a Context, a Uri and a vertical
  /// alignment. The Uri source can be retrieved via \#getSource()
  ///@param context context used to create a drawable from {@param bitmap} based on
  ///                          the display
  ///                          metrics of the resources
  /// This value must never be {@code null}.
  ///@param uri Uri used to construct the drawable that will be rendered.
  /// This value must never be {@code null}.
  ///@param verticalAlignment one of DynamicDrawableSpan\#ALIGN_BOTTOM or
  ///                          DynamicDrawableSpan\#ALIGN_BASELINE
  ImageSpan.ctor11(
      context_.Context context, uri_.Uri uri, int verticalAlignment)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor11,
            [context.reference, uri.reference, verticalAlignment]).object);

  static final _id_ctor12 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;I)V");

  /// from: public void <init>(android.content.Context context, int resourceId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an ImageSpan from a Context and a resource id with the default
  /// alignment DynamicDrawableSpan\#ALIGN_BOTTOM
  ///@param context context used to retrieve the drawable from resources
  /// This value must never be {@code null}.
  ///@param resourceId drawable resource id based on which the drawable is retrieved
  ImageSpan.ctor12(context_.Context context, int resourceId)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor12, [context.reference, resourceId]).object);

  static final _id_ctor13 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;II)V");

  /// from: public void <init>(android.content.Context context, int resourceId, int verticalAlignment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs an ImageSpan from a Context, a resource id and a vertical
  /// alignment.
  ///@param context context used to retrieve the drawable from resources
  /// This value must never be {@code null}.
  ///@param resourceId drawable resource id based on which the drawable is retrieved.
  ///@param verticalAlignment one of DynamicDrawableSpan\#ALIGN_BOTTOM or
  ///                          DynamicDrawableSpan\#ALIGN_BASELINE
  ImageSpan.ctor13(
      context_.Context context, int resourceId, int verticalAlignment)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor13,
            [context.reference, resourceId, verticalAlignment]).object);

  static final _id_getDrawable = jniAccessors.getMethodIDOf(
      _classRef, "getDrawable", "()Landroid/graphics/drawable/Drawable;");

  /// from: public android.graphics.drawable.Drawable getDrawable()
  /// The returned object must be deleted after use, by calling the `delete` method.
  drawable_.Drawable getDrawable() =>
      drawable_.Drawable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDrawable, jni.JniType.objectType, []).object);

  static final _id_getSource = jniAccessors.getMethodIDOf(
      _classRef, "getSource", "()Ljava/lang/String;");

  /// from: public java.lang.String getSource()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the source string that was saved during construction.
  ///@return the source string that was saved during construction
  /// This value may be {@code null}.
  ///@see \#ImageSpan(Drawable, String) and this\#ImageSpan(Context, Uri)
  jni.JniString getSource() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSource, jni.JniType.objectType, []).object);
}
