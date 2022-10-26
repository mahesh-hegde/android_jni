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

import "EffectContext.dart" as effectcontext_;

import "Effect.dart" as effect_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.effect.EffectFactory
///
/// The EffectFactory class defines the list of available Effects, and provides functionality to
/// inspect and instantiate them. Some effects may not be available on all platforms, so before
/// creating a certain effect, the application should confirm that the effect is supported on this
/// platform by calling \#isEffectSupported(String).
///
class EffectFactory extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/effect/EffectFactory");
  EffectFactory.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String EFFECT_AUTOFIX
  ///
  /// Attempts to auto-fix the image based on histogram equalization.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>scale</code></td>
  ///     <td>The scale of the adjustment.</td>
  ///     <td>Float, between 0 and 1. Zero means no adjustment, while 1 indicates the maximum
  ///     amount of adjustment.</td>
  /// </tr>
  /// </table>
  static const EFFECT_AUTOFIX = "android.media.effect.effects.AutoFixEffect";

  /// from: static public final java.lang.String EFFECT_BACKDROPPER
  ///
  /// Replaces the background of the input frames with frames from a
  /// selected video.  Requires an initial learning period with only the
  /// background visible before the effect becomes active. The effect will wait
  /// until it does not see any motion in the scene before learning the
  /// background and starting the effect.
  ///
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>source</code></td>
  ///     <td>A URI for the background video to use. This parameter must be
  ///         supplied before calling apply() for the first time.</td>
  ///     <td>String, such as from
  ///         android.net.Uri\#toString Uri.toString()</td>
  /// </tr>
  /// </table>
  ///
  /// If the update listener is set for this effect using
  /// Effect\#setUpdateListener, it will be called when the effect has
  /// finished learning the background, with a null value for the info
  /// parameter.
  ///
  static const EFFECT_BACKDROPPER =
      "android.media.effect.effects.BackDropperEffect";

  /// from: static public final java.lang.String EFFECT_BITMAPOVERLAY
  ///
  /// Overlays a bitmap (with premultiplied alpha channel) onto the input image. The bitmap
  /// is stretched to fit the input image.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>bitmap</code></td>
  ///     <td>The overlay bitmap.</td>
  ///     <td>A non-null Bitmap instance.</td>
  /// </tr>
  /// </table>
  static const EFFECT_BITMAPOVERLAY =
      "android.media.effect.effects.BitmapOverlayEffect";

  /// from: static public final java.lang.String EFFECT_BLACKWHITE
  ///
  /// Adjusts the range of minimal and maximal color pixel intensities.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>black</code></td>
  ///     <td>The value of the minimal pixel.</td>
  ///     <td>Float, between 0 and 1.</td>
  /// </tr>
  /// <tr><td><code>white</code></td>
  ///     <td>The value of the maximal pixel.</td>
  ///     <td>Float, between 0 and 1.</td>
  /// </tr>
  /// </table>
  static const EFFECT_BLACKWHITE =
      "android.media.effect.effects.BlackWhiteEffect";

  /// from: static public final java.lang.String EFFECT_BRIGHTNESS
  ///
  /// Adjusts the brightness of the image.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>brightness</code></td>
  ///     <td>The brightness multiplier.</td>
  ///     <td>Positive float. 1.0 means no change;
  ///          larger values will increase brightness.</td>
  /// </tr>
  /// </table>
  static const EFFECT_BRIGHTNESS =
      "android.media.effect.effects.BrightnessEffect";

  /// from: static public final java.lang.String EFFECT_CONTRAST
  ///
  /// Adjusts the contrast of the image.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>contrast</code></td>
  ///     <td>The contrast multiplier.</td>
  ///     <td>Float. 1.0 means no change;
  ///          larger values will increase contrast.</td>
  /// </tr>
  /// </table>
  static const EFFECT_CONTRAST = "android.media.effect.effects.ContrastEffect";

  /// from: static public final java.lang.String EFFECT_CROP
  ///
  /// Crops an upright rectangular area from the image. If the crop region falls outside of
  /// the image bounds, the results are undefined.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>xorigin</code></td>
  ///     <td>The origin's x-value.</td>
  ///     <td>Integer, between 0 and width of the image.</td>
  /// </tr>
  /// <tr><td><code>yorigin</code></td>
  ///     <td>The origin's y-value.</td>
  ///     <td>Integer, between 0 and height of the image.</td>
  /// </tr>
  /// <tr><td><code>width</code></td>
  ///     <td>The width of the cropped image.</td>
  ///     <td>Integer, between 1 and the width of the image minus xorigin.</td>
  /// </tr>
  /// <tr><td><code>height</code></td>
  ///     <td>The height of the cropped image.</td>
  ///     <td>Integer, between 1 and the height of the image minus yorigin.</td>
  /// </tr>
  /// </table>
  static const EFFECT_CROP = "android.media.effect.effects.CropEffect";

  /// from: static public final java.lang.String EFFECT_CROSSPROCESS
  ///
  /// Applies a cross process effect on image, in which the red and green channels are
  /// enhanced while the blue channel is restricted.
  ///
  /// Available parameters: None
  ///
  static const EFFECT_CROSSPROCESS =
      "android.media.effect.effects.CrossProcessEffect";

  /// from: static public final java.lang.String EFFECT_DOCUMENTARY
  ///
  /// Applies black and white documentary style effect on image..
  ///
  /// Available parameters: None
  ///
  static const EFFECT_DOCUMENTARY =
      "android.media.effect.effects.DocumentaryEffect";

  /// from: static public final java.lang.String EFFECT_DUOTONE
  ///
  /// Representation of photo using only two color tones.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>first_color</code></td>
  ///     <td>The first color tone.</td>
  ///     <td>Integer, representing an ARGB color with 8 bits per channel. May be created using
  ///     android.graphics.Color Color class.</td>
  /// </tr>
  /// <tr><td><code>second_color</code></td>
  ///     <td>The second color tone.</td>
  ///     <td>Integer, representing an ARGB color with 8 bits per channel. May be created using
  ///     android.graphics.Color Color class.</td>
  /// </tr>
  /// </table>
  static const EFFECT_DUOTONE = "android.media.effect.effects.DuotoneEffect";

  /// from: static public final java.lang.String EFFECT_FILLLIGHT
  ///
  /// Applies back-light filling to the image.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>strength</code></td>
  ///     <td>The strength of the backlight.</td>
  ///     <td>Float, between 0 and 1. Zero means no change.</td>
  /// </tr>
  /// </table>
  static const EFFECT_FILLLIGHT =
      "android.media.effect.effects.FillLightEffect";

  /// from: static public final java.lang.String EFFECT_FISHEYE
  ///
  /// Applies a fisheye lens distortion to the image.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>scale</code></td>
  ///     <td>The scale of the distortion.</td>
  ///     <td>Float, between 0 and 1. Zero means no distortion.</td>
  /// </tr>
  /// </table>
  static const EFFECT_FISHEYE = "android.media.effect.effects.FisheyeEffect";

  /// from: static public final java.lang.String EFFECT_FLIP
  ///
  /// Flips image vertically and/or horizontally.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>vertical</code></td>
  ///     <td>Whether to flip image vertically.</td>
  ///     <td>Boolean</td>
  /// </tr>
  /// <tr><td><code>horizontal</code></td>
  ///     <td>Whether to flip image horizontally.</td>
  ///     <td>Boolean</td>
  /// </tr>
  /// </table>
  static const EFFECT_FLIP = "android.media.effect.effects.FlipEffect";

  /// from: static public final java.lang.String EFFECT_GRAIN
  ///
  /// Applies film grain effect to image.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>strength</code></td>
  ///     <td>The strength of the grain effect.</td>
  ///     <td>Float, between 0 and 1. Zero means no change.</td>
  /// </tr>
  /// </table>
  static const EFFECT_GRAIN = "android.media.effect.effects.GrainEffect";

  /// from: static public final java.lang.String EFFECT_GRAYSCALE
  ///
  /// Converts image to grayscale.
  ///
  /// Available parameters: None
  ///
  static const EFFECT_GRAYSCALE =
      "android.media.effect.effects.GrayscaleEffect";

  /// from: static public final java.lang.String EFFECT_LOMOISH
  ///
  /// Applies lomo-camera style effect to image.
  ///
  /// Available parameters: None
  ///
  static const EFFECT_LOMOISH = "android.media.effect.effects.LomoishEffect";

  /// from: static public final java.lang.String EFFECT_NEGATIVE
  ///
  /// Inverts the image colors.
  ///
  /// Available parameters: None
  ///
  static const EFFECT_NEGATIVE = "android.media.effect.effects.NegativeEffect";

  /// from: static public final java.lang.String EFFECT_POSTERIZE
  ///
  /// Applies posterization effect to image.
  ///
  /// Available parameters: None
  ///
  static const EFFECT_POSTERIZE =
      "android.media.effect.effects.PosterizeEffect";

  /// from: static public final java.lang.String EFFECT_REDEYE
  ///
  /// Removes red eyes on specified region.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>centers</code></td>
  ///     <td>Multiple center points (x, y) of the red eye regions.</td>
  ///     <td>An array of floats, where (f[2*i], f[2*i+1]) specifies the center of the i'th eye.
  ///     Coordinate values are expected to be normalized between 0 and 1.</td>
  /// </tr>
  /// </table>
  static const EFFECT_REDEYE = "android.media.effect.effects.RedEyeEffect";

  /// from: static public final java.lang.String EFFECT_ROTATE
  ///
  /// Rotates the image. The output frame size must be able to fit the rotated version of
  /// the input image. Note that the rotation snaps to a the closest multiple of 90 degrees.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>angle</code></td>
  ///     <td>The angle of rotation in degrees.</td>
  ///     <td>Integer value. This will be rounded to the nearest multiple of 90.</td>
  /// </tr>
  /// </table>
  static const EFFECT_ROTATE = "android.media.effect.effects.RotateEffect";

  /// from: static public final java.lang.String EFFECT_SATURATE
  ///
  /// Adjusts color saturation of image.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>scale</code></td>
  ///     <td>The scale of color saturation.</td>
  ///     <td>Float, between -1 and 1. 0 means no change, while -1 indicates full desaturation,
  ///     i.e. grayscale.</td>
  /// </tr>
  /// </table>
  static const EFFECT_SATURATE = "android.media.effect.effects.SaturateEffect";

  /// from: static public final java.lang.String EFFECT_SEPIA
  ///
  /// Converts image to sepia tone.
  ///
  /// Available parameters: None
  ///
  static const EFFECT_SEPIA = "android.media.effect.effects.SepiaEffect";

  /// from: static public final java.lang.String EFFECT_SHARPEN
  ///
  /// Sharpens the image.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>scale</code></td>
  ///     <td>The degree of sharpening.</td>
  ///     <td>Float, between 0 and 1. 0 means no change.</td>
  /// </tr>
  /// </table>
  static const EFFECT_SHARPEN = "android.media.effect.effects.SharpenEffect";

  /// from: static public final java.lang.String EFFECT_STRAIGHTEN
  ///
  /// Rotates the image according to the specified angle, and crops the image so that no
  /// non-image portions are visible.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>angle</code></td>
  ///     <td>The angle of rotation.</td>
  ///     <td>Float, between -45 and +45.</td>
  /// </tr>
  /// </table>
  static const EFFECT_STRAIGHTEN =
      "android.media.effect.effects.StraightenEffect";

  /// from: static public final java.lang.String EFFECT_TEMPERATURE
  ///
  /// Adjusts color temperature of the image.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>scale</code></td>
  ///     <td>The value of color temperature.</td>
  ///     <td>Float, between 0 and 1, with 0 indicating cool, and 1 indicating warm. A value of
  ///     of 0.5 indicates no change.</td>
  /// </tr>
  /// </table>
  static const EFFECT_TEMPERATURE =
      "android.media.effect.effects.ColorTemperatureEffect";

  /// from: static public final java.lang.String EFFECT_TINT
  ///
  /// Tints the photo with specified color.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>tint</code></td>
  ///     <td>The color of the tint.</td>
  ///     <td>Integer, representing an ARGB color with 8 bits per channel. May be created using
  ///     android.graphics.Color Color class.</td>
  /// </tr>
  /// </table>
  static const EFFECT_TINT = "android.media.effect.effects.TintEffect";

  /// from: static public final java.lang.String EFFECT_VIGNETTE
  ///
  /// Adds a vignette effect to image, i.e. fades away the outer image edges.
  ///
  /// Available parameters:
  ///
  /// <table>
  /// <tr><td>Parameter name</td><td>Meaning</td><td>Valid values</td></tr>
  /// <tr><td><code>scale</code></td>
  ///     <td>The scale of vignetting.</td>
  ///     <td>Float, between 0 and 1. 0 means no change.</td>
  /// </tr>
  /// </table>
  static const EFFECT_VIGNETTE = "android.media.effect.effects.VignetteEffect";

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/media/effect/EffectContext;)V");

  /// from: void <init>(android.media.effect.EffectContext effectContext)
  /// The returned object must be deleted after use, by calling the `delete` method.
  EffectFactory(effectcontext_.EffectContext effectContext)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [effectContext.reference]).object);

  static final _id_createEffect = jniAccessors.getMethodIDOf(_classRef,
      "createEffect", "(Ljava/lang/String;)Landroid/media/effect/Effect;");

  /// from: public android.media.effect.Effect createEffect(java.lang.String effectName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Instantiate a new effect with the given effect name.
  ///
  /// The effect's parameters will be set to their default values.
  ///
  ///
  /// Note that the EGL context associated with the current EffectContext need not be made
  /// current when creating an effect. This allows the host application to instantiate effects
  /// before any EGL context has become current.
  ///
  ///@param effectName The name of the effect to create.
  ///@return A new Effect instance.
  ///@throws IllegalArgumentException if the effect with the specified name is not supported or
  ///         not known.
  effect_.Effect createEffect(jni.JniString effectName) =>
      effect_.Effect.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_createEffect,
          jni.JniType.objectType,
          [effectName.reference]).object);

  static final _id_isEffectSupported = jniAccessors.getStaticMethodIDOf(
      _classRef, "isEffectSupported", "(Ljava/lang/String;)Z");

  /// from: static public boolean isEffectSupported(java.lang.String effectName)
  ///
  /// Check if an effect is supported on this platform.
  ///
  /// Some effects may only be available on certain platforms. Use this method before
  /// instantiating an effect to make sure it is supported.
  ///
  ///@param effectName The name of the effect.
  ///@return true, if the effect is supported on this platform.
  ///@throws IllegalArgumentException if the effect name is not known.
  static bool isEffectSupported(jni.JniString effectName) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_isEffectSupported,
          jni.JniType.booleanType, [effectName.reference]).boolean;
}