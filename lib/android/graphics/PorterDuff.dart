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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.PorterDuff
///
/// This class contains the list of alpha compositing and blending modes
/// that can be passed to PorterDuffXfermode, a specialized implementation
/// of Paint's Paint\#setXfermode(Xfermode) transfer mode.
/// All the available modes can be found in the Mode enum.
///
class PorterDuff extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/PorterDuff");
  PorterDuff.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  PorterDuff()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.graphics.PorterDuff$Mode
///
/// {@usesMathJax }
///
/// <h3>Porter-Duff</h3>
///
/// The name of the parent class is an homage to the work of Thomas Porter and
/// Tom Duff, presented in their seminal 1984 paper titled "Compositing Digital Images".
/// In this paper, the authors describe 12 compositing operators that govern how to
/// compute the color resulting of the composition of a source (the graphics object
/// to render) with a destination (the content of the render target).
///
///
/// "Compositing Digital Images" was published in _Computer Graphics_
/// Volume 18, Number 3 dated July 1984.
///
///
/// Because the work of Porter and Duff focuses solely on the effects of the alpha
/// channel of the source and destination, the 12 operators described in the original
/// paper are called alpha compositing modes here.
///
///
/// For convenience, this class also provides several blending modes, which similarly
/// define the result of compositing a source and a destination but without being
/// constrained to the alpha channel. These blending modes are not defined by Porter
/// and Duff but have been included in this class for convenience purposes.
///
///
/// <h3>Diagrams</h3>
///
/// All the example diagrams presented below use the same source and destination
/// images:
///
///
/// <table summary="Source and Destination"style="background-color: transparent;">
///     <tr>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_SRC.png"/>
///             <figcaption>Source image</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_DST.png"/>
///             <figcaption>Destination image</figcaption>
///         </td>
///     </tr>
/// </table>
///
/// The order of drawing operations used to generate each diagram is shown in the
/// following code snippet:
///
///
/// <pre class="prettyprint">
/// Paint paint = new Paint();
/// canvas.drawBitmap(destinationImage, 0, 0, paint);
///
/// PorterDuff.Mode mode = // choose a mode
/// paint.setXfermode(new PorterDuffXfermode(mode));
///
/// canvas.drawBitmap(sourceImage, 0, 0, paint);
/// </pre>
///
///
/// <h3>Alpha compositing modes</h3>
///
/// <table summary="Alpha compositing modes"style="background-color: transparent;">
///     <tr>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_SRC.png"/>
///             <figcaption>\#SRC Source</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_SRC_OVER.png"/>
///             <figcaption>\#SRC_OVER Source Over</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_SRC_IN.png"/>
///             <figcaption>\#SRC_IN Source In</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_SRC_ATOP.png"/>
///             <figcaption>\#SRC_ATOP Source Atop</figcaption>
///         </td>
///     </tr>
///     <tr>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_DST.png"/>
///             <figcaption>\#DST Destination</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_DST_OVER.png"/>
///             <figcaption>\#DST_OVER Destination Over</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_DST_IN.png"/>
///             <figcaption>\#DST_IN Destination In</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_DST_ATOP.png"/>
///             <figcaption>\#DST_ATOP Destination Atop</figcaption>
///         </td>
///     </tr>
///     <tr>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_CLEAR.png"/>
///             <figcaption>\#CLEAR Clear</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_SRC_OUT.png"/>
///             <figcaption>\#SRC_OUT Source Out</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_DST_OUT.png"/>
///             <figcaption>\#DST_OUT Destination Out</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_XOR.png"/>
///             <figcaption>\#XOR Exclusive Or</figcaption>
///         </td>
///     </tr>
/// </table>
///
/// <h3>Blending modes</h3>
///
/// <table summary="Blending modes"style="background-color: transparent;">
///     <tr>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_DARKEN.png"/>
///             <figcaption>\#DARKEN Darken</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_LIGHTEN.png"/>
///             <figcaption>\#LIGHTEN Lighten</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_MULTIPLY.png"/>
///             <figcaption>\#MULTIPLY Multiply</figcaption>
///         </td>
///     </tr>
///     <tr>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_SCREEN.png"/>
///             <figcaption>\#SCREEN Screen</figcaption>
///         </td>
///         <td style="border: none; text-align: center;">
///             <img src="{@docRoot}reference/android/images/graphics/composite_OVERLAY.png"/>
///             <figcaption>\#OVERLAY Overlay</figcaption>
///         </td>
///     </tr>
/// </table>
///
/// <h3>Compositing equations</h3>
///
/// The documentation of each individual alpha compositing or blending mode below
/// provides the exact equation used to compute alpha and color value of the result
/// of the composition of a source and destination.
///
///
/// The result (or output) alpha value is noted \(\alpha_{out}\). The result (or output)
/// color value is noted \(C_{out}\).
///
class PorterDuff_Mode extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/graphics/PorterDuff\$Mode");
  PorterDuff_Mode.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(
      _classRef, "values", "()[Landroid/graphics/PorterDuff\$Mode;");

  /// from: static public android.graphics.PorterDuff.Mode[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(_classRef,
      "valueOf", "(Ljava/lang/String;)Landroid/graphics/PorterDuff\$Mode;");

  /// from: static public android.graphics.PorterDuff.Mode valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static PorterDuff_Mode valueOf(jni.JniString name) =>
      PorterDuff_Mode.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_valueOf, jni.JniType.objectType, [name.reference]).object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: private void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  PorterDuff_Mode()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}
