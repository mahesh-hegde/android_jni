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

import "MediaCodecInfo.dart" as mediacodecinfo_;

import "MediaFormat.dart" as mediaformat_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.MediaCodecList
///
/// Allows you to enumerate available codecs, each specified as a MediaCodecInfo object,
/// find a codec supporting a given format and query the capabilities
/// of a given codec.
/// See MediaCodecInfo for sample usage.
class MediaCodecList extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/MediaCodecList");
  MediaCodecList.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ALL_CODECS
  ///
  /// Use in \#MediaCodecList to enumerate all codecs, even ones that are
  /// not suitable for regular (buffer-to-buffer) decoding or encoding.  These
  /// include codecs, for example, that only work with special input or output
  /// surfaces, such as secure-only or tunneled-only codecs.
  ///@see MediaCodecInfo.CodecCapabilities\#isFormatSupported
  ///@see MediaCodecInfo.CodecCapabilities\#FEATURE_SecurePlayback
  ///@see MediaCodecInfo.CodecCapabilities\#FEATURE_TunneledPlayback
  static const ALL_CODECS = 1;

  /// from: static public final int REGULAR_CODECS
  ///
  /// Use in \#MediaCodecList to enumerate only codecs that are suitable
  /// for regular (buffer-to-buffer) decoding or encoding.
  ///
  /// _NOTE:_ These are the codecs that are returned prior to API 21,
  /// using the now deprecated static methods.
  static const REGULAR_CODECS = 0;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int kind)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a list of media-codecs of a specific kind.
  ///@param kind Either {@code REGULAR_CODECS} or {@code ALL_CODECS}.
  MediaCodecList(int kind)
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [kind]).object);

  static final _id_getCodecCount =
      jniAccessors.getStaticMethodIDOf(_classRef, "getCodecCount", "()I");

  /// from: static public int getCodecCount()
  ///
  /// Count the number of available (regular) codecs.
  ///@deprecated Use \#getCodecInfos instead.
  ///@see \#REGULAR_CODECS
  static int getCodecCount() => jniAccessors.callStaticMethodWithArgs(
      _classRef, _id_getCodecCount, jni.JniType.intType, []).integer;

  static final _id_getCodecInfoAt = jniAccessors.getStaticMethodIDOf(
      _classRef, "getCodecInfoAt", "(I)Landroid/media/MediaCodecInfo;");

  /// from: static public android.media.MediaCodecInfo getCodecInfoAt(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the MediaCodecInfo object for the codec at
  /// the given {@code index} in the regular list.
  ///@deprecated Use \#getCodecInfos instead.
  ///@see \#REGULAR_CODECS
  static mediacodecinfo_.MediaCodecInfo getCodecInfoAt(int index) =>
      mediacodecinfo_.MediaCodecInfo.fromRef(jniAccessors
          .callStaticMethodWithArgs(_classRef, _id_getCodecInfoAt,
              jni.JniType.objectType, [index]).object);

  static final _id_getCodecInfos = jniAccessors.getMethodIDOf(
      _classRef, "getCodecInfos", "()[Landroid/media/MediaCodecInfo;");

  /// from: public android.media.MediaCodecInfo[] getCodecInfos()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the list of MediaCodecInfo objects for the list
  /// of media-codecs.
  jni.JniObject getCodecInfos() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getCodecInfos, jni.JniType.objectType, []).object);

  static final _id_findDecoderForFormat = jniAccessors.getMethodIDOf(
      _classRef,
      "findDecoderForFormat",
      "(Landroid/media/MediaFormat;)Ljava/lang/String;");

  /// from: public java.lang.String findDecoderForFormat(android.media.MediaFormat format)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Find a decoder supporting a given MediaFormat in the list
  /// of media-codecs.
  ///
  /// <p class=note>
  /// <strong>Note:</strong> On android.os.Build.VERSION_CODES\#LOLLIPOP,
  /// {@code format} must not contain a {@linkplain MediaFormat\#KEY_FRAME_RATE frame rate}. Use
  /// <code class=prettyprint>format.setString(MediaFormat.KEY_FRAME_RATE, null)</code>
  /// to clear any existing frame rate setting in the format.
  ///@see MediaCodecList.CodecCapabilities.isFormatSupported for format keys
  /// considered per android versions when evaluating suitable codecs.
  ///@param format A decoder media format with optional feature directives.
  ///@throws IllegalArgumentException if format is not a valid media format.
  ///@throws NullPointerException if format is null.
  ///@return the name of a decoder that supports the given format and feature
  ///         requests, or {@code null} if no such codec has been found.
  jni.JniString findDecoderForFormat(mediaformat_.MediaFormat format) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_findDecoderForFormat,
          jni.JniType.objectType,
          [format.reference]).object);

  static final _id_findEncoderForFormat = jniAccessors.getMethodIDOf(
      _classRef,
      "findEncoderForFormat",
      "(Landroid/media/MediaFormat;)Ljava/lang/String;");

  /// from: public java.lang.String findEncoderForFormat(android.media.MediaFormat format)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Find an encoder supporting a given MediaFormat in the list
  /// of media-codecs.
  ///
  /// <p class=note>
  /// <strong>Note:</strong> On android.os.Build.VERSION_CODES\#LOLLIPOP,
  /// {@code format} must not contain a {@linkplain MediaFormat\#KEY_FRAME_RATE frame rate}. Use
  /// <code class=prettyprint>format.setString(MediaFormat.KEY_FRAME_RATE, null)</code>
  /// to clear any existing frame rate setting in the format.
  ///@see MediaCodecList.CodecCapabilities.isFormatSupported for format keys
  /// considered per android versions when evaluating suitable codecs.
  ///@param format An encoder media format with optional feature directives.
  ///@throws IllegalArgumentException if format is not a valid media format.
  ///@throws NullPointerException if format is null.
  ///@return the name of an encoder that supports the given format and feature
  ///         requests, or {@code null} if no such codec has been found.
  jni.JniString findEncoderForFormat(mediaformat_.MediaFormat format) =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_findEncoderForFormat,
          jni.JniType.objectType,
          [format.reference]).object);
}
