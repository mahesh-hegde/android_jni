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

import "../../content/Context.dart" as context_;

import "../../graphics/Typeface.dart" as typeface_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.accessibility.CaptioningManager
///
/// Contains methods for accessing and monitoring preferred video captioning state and visual
/// properties.
class CaptioningManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/accessibility/CaptioningManager");
  CaptioningManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new captioning manager for the specified context.
  ///@hide
  CaptioningManager(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_isEnabled =
      jniAccessors.getMethodIDOf(_classRef, "isEnabled", "()Z");

  /// from: public final boolean isEnabled()
  ///
  /// @return the user's preferred captioning enabled state
  bool isEnabled() => jniAccessors.callMethodWithArgs(
      reference, _id_isEnabled, jni.JniType.booleanType, []).boolean;

  static final _id_getLocale = jniAccessors.getMethodIDOf(
      _classRef, "getLocale", "()Ljava/util/Locale;");

  /// from: public final java.util.Locale getLocale()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the locale for the user's preferred captioning language, or null
  ///         if not specified
  jni.JniObject getLocale() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocale, jni.JniType.objectType, []).object);

  static final _id_getFontScale =
      jniAccessors.getMethodIDOf(_classRef, "getFontScale", "()F");

  /// from: public final float getFontScale()
  ///
  /// @return the user's preferred font scaling factor for video captions, or 1 if not
  ///         specified
  double getFontScale() => jniAccessors.callMethodWithArgs(
      reference, _id_getFontScale, jni.JniType.floatType, []).float;

  static final _id_getUserStyle = jniAccessors.getMethodIDOf(
      _classRef,
      "getUserStyle",
      "()Landroid/view/accessibility/CaptioningManager\$CaptionStyle;");

  /// from: public android.view.accessibility.CaptioningManager.CaptionStyle getUserStyle()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the user's preferred visual properties for captions as a
  ///         CaptionStyle, or the default style if not specified
  ///
  /// This value will never be {@code null}.
  CaptioningManager_CaptionStyle getUserStyle() =>
      CaptioningManager_CaptionStyle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUserStyle, jni.JniType.objectType, []).object);

  static final _id_addCaptioningChangeListener = jniAccessors.getMethodIDOf(
      _classRef,
      "addCaptioningChangeListener",
      "(Landroid/view/accessibility/CaptioningManager\$CaptioningChangeListener;)V");

  /// from: public void addCaptioningChangeListener(android.view.accessibility.CaptioningManager.CaptioningChangeListener listener)
  ///
  /// Adds a listener for changes in the user's preferred captioning enabled
  /// state and visual properties.
  ///@param listener the listener to add
  ///
  /// This value must never be {@code null}.
  void addCaptioningChangeListener(
          CaptioningManager_CaptioningChangeListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addCaptioningChangeListener,
          jni.JniType.voidType,
          [listener.reference]).check();

  static final _id_removeCaptioningChangeListener = jniAccessors.getMethodIDOf(
      _classRef,
      "removeCaptioningChangeListener",
      "(Landroid/view/accessibility/CaptioningManager\$CaptioningChangeListener;)V");

  /// from: public void removeCaptioningChangeListener(android.view.accessibility.CaptioningManager.CaptioningChangeListener listener)
  ///
  /// Removes a listener previously added using
  /// \#addCaptioningChangeListener.
  ///@param listener the listener to remove
  ///
  /// This value must never be {@code null}.
  void removeCaptioningChangeListener(
          CaptioningManager_CaptioningChangeListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_removeCaptioningChangeListener,
          jni.JniType.voidType,
          [listener.reference]).check();
}

/// from: android.view.accessibility.CaptioningManager$CaptioningChangeListener
///
/// Listener for changes in captioning properties, including enabled state
/// and user style preferences.
class CaptioningManager_CaptioningChangeListener extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/view/accessibility/CaptioningManager\$CaptioningChangeListener");
  CaptioningManager_CaptioningChangeListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  CaptioningManager_CaptioningChangeListener()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_onEnabledChanged =
      jniAccessors.getMethodIDOf(_classRef, "onEnabledChanged", "(Z)V");

  /// from: public void onEnabledChanged(boolean enabled)
  ///
  /// Called when the captioning enabled state changes.
  ///@param enabled the user's new preferred captioning enabled state
  void onEnabledChanged(bool enabled) => jniAccessors.callMethodWithArgs(
      reference, _id_onEnabledChanged, jni.JniType.voidType, [enabled]).check();

  static final _id_onUserStyleChanged = jniAccessors.getMethodIDOf(
      _classRef,
      "onUserStyleChanged",
      "(Landroid/view/accessibility/CaptioningManager\$CaptionStyle;)V");

  /// from: public void onUserStyleChanged(android.view.accessibility.CaptioningManager.CaptionStyle userStyle)
  ///
  /// Called when the captioning user style changes.
  ///@param userStyle the user's new preferred style
  /// This value must never be {@code null}.
  ///@see CaptioningManager\#getUserStyle()
  void onUserStyleChanged(CaptioningManager_CaptionStyle userStyle) =>
      jniAccessors.callMethodWithArgs(reference, _id_onUserStyleChanged,
          jni.JniType.voidType, [userStyle.reference]).check();

  static final _id_onLocaleChanged = jniAccessors.getMethodIDOf(
      _classRef, "onLocaleChanged", "(Ljava/util/Locale;)V");

  /// from: public void onLocaleChanged(java.util.Locale locale)
  ///
  /// Called when the captioning locale changes.
  ///@param locale the preferred captioning locale, or {@code null} if not specified
  /// This value may be {@code null}.
  ///@see CaptioningManager\#getLocale()
  void onLocaleChanged(jni.JniObject locale) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onLocaleChanged,
      jni.JniType.voidType,
      [locale.reference]).check();

  static final _id_onFontScaleChanged =
      jniAccessors.getMethodIDOf(_classRef, "onFontScaleChanged", "(F)V");

  /// from: public void onFontScaleChanged(float fontScale)
  ///
  /// Called when the captioning font scaling factor changes.
  ///@param fontScale the preferred font scaling factor
  ///@see CaptioningManager\#getFontScale()
  void onFontScaleChanged(double fontScale) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onFontScaleChanged,
      jni.JniType.voidType,
      [fontScale]).check();
}

/// from: android.view.accessibility.CaptioningManager$CaptionStyle
///
/// Specifies visual properties for video captions, including foreground and
/// background colors, edge properties, and typeface.
class CaptioningManager_CaptionStyle extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/view/accessibility/CaptioningManager\$CaptionStyle");
  CaptioningManager_CaptionStyle.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int EDGE_TYPE_DEPRESSED
  ///
  /// Edge type value specifying depressed bevel character edges.
  static const EDGE_TYPE_DEPRESSED = 4;

  /// from: static public final int EDGE_TYPE_DROP_SHADOW
  ///
  /// Edge type value specifying drop-shadowed character edges.
  static const EDGE_TYPE_DROP_SHADOW = 2;

  /// from: static public final int EDGE_TYPE_NONE
  ///
  /// Edge type value specifying no character edges.
  static const EDGE_TYPE_NONE = 0;

  /// from: static public final int EDGE_TYPE_OUTLINE
  ///
  /// Edge type value specifying uniformly outlined character edges.
  static const EDGE_TYPE_OUTLINE = 1;

  /// from: static public final int EDGE_TYPE_RAISED
  ///
  /// Edge type value specifying raised bevel character edges.
  static const EDGE_TYPE_RAISED = 3;

  /// from: static public final int EDGE_TYPE_UNSPECIFIED
  ///
  /// Unspecified edge type value.
  static const EDGE_TYPE_UNSPECIFIED = -1;

  static final _id_backgroundColor =
      jniAccessors.getFieldIDOf(_classRef, "backgroundColor", "I");

  /// from: public final int backgroundColor
  ///
  /// The preferred background color for video captions.
  int get backgroundColor => jniAccessors
      .getField(reference, _id_backgroundColor, jni.JniType.intType)
      .integer;

  static final _id_edgeColor =
      jniAccessors.getFieldIDOf(_classRef, "edgeColor", "I");

  /// from: public final int edgeColor
  ///
  /// The preferred edge color for video captions, if using an edge type
  /// other than \#EDGE_TYPE_NONE.
  int get edgeColor => jniAccessors
      .getField(reference, _id_edgeColor, jni.JniType.intType)
      .integer;

  static final _id_edgeType =
      jniAccessors.getFieldIDOf(_classRef, "edgeType", "I");

  /// from: public final int edgeType
  ///
  /// The preferred edge type for video captions, one of:
  /// <ul>
  /// <li>\#EDGE_TYPE_UNSPECIFIED
  /// <li>\#EDGE_TYPE_NONE
  /// <li>\#EDGE_TYPE_OUTLINE
  /// <li>\#EDGE_TYPE_DROP_SHADOW
  /// <li>\#EDGE_TYPE_RAISED
  /// <li>\#EDGE_TYPE_DEPRESSED
  /// </ul>
  int get edgeType => jniAccessors
      .getField(reference, _id_edgeType, jni.JniType.intType)
      .integer;

  static final _id_foregroundColor =
      jniAccessors.getFieldIDOf(_classRef, "foregroundColor", "I");

  /// from: public final int foregroundColor
  ///
  /// The preferred foreground color for video captions.
  int get foregroundColor => jniAccessors
      .getField(reference, _id_foregroundColor, jni.JniType.intType)
      .integer;

  static final _id_windowColor =
      jniAccessors.getFieldIDOf(_classRef, "windowColor", "I");

  /// from: public final int windowColor
  ///
  /// The preferred window color for video captions.
  int get windowColor => jniAccessors
      .getField(reference, _id_windowColor, jni.JniType.intType)
      .integer;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(IIIIILjava/lang/String;)V");

  /// from: void <init>(int foregroundColor, int backgroundColor, int edgeType, int edgeColor, int windowColor, java.lang.String rawTypeface)
  /// The returned object must be deleted after use, by calling the `delete` method.
  CaptioningManager_CaptionStyle(int foregroundColor, int backgroundColor,
      int edgeType, int edgeColor, int windowColor, jni.JniString rawTypeface)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          foregroundColor,
          backgroundColor,
          edgeType,
          edgeColor,
          windowColor,
          rawTypeface.reference
        ]).object);

  static final _id_hasBackgroundColor =
      jniAccessors.getMethodIDOf(_classRef, "hasBackgroundColor", "()Z");

  /// from: public boolean hasBackgroundColor()
  ///
  /// @return {@code true} if the user has specified a background color
  ///         that should override the application default, {@code false}
  ///         otherwise
  bool hasBackgroundColor() => jniAccessors.callMethodWithArgs(
      reference, _id_hasBackgroundColor, jni.JniType.booleanType, []).boolean;

  static final _id_hasForegroundColor =
      jniAccessors.getMethodIDOf(_classRef, "hasForegroundColor", "()Z");

  /// from: public boolean hasForegroundColor()
  ///
  /// @return {@code true} if the user has specified a foreground color
  ///         that should override the application default, {@code false}
  ///         otherwise
  bool hasForegroundColor() => jniAccessors.callMethodWithArgs(
      reference, _id_hasForegroundColor, jni.JniType.booleanType, []).boolean;

  static final _id_hasEdgeType =
      jniAccessors.getMethodIDOf(_classRef, "hasEdgeType", "()Z");

  /// from: public boolean hasEdgeType()
  ///
  /// @return {@code true} if the user has specified an edge type that
  ///         should override the application default, {@code false}
  ///         otherwise
  bool hasEdgeType() => jniAccessors.callMethodWithArgs(
      reference, _id_hasEdgeType, jni.JniType.booleanType, []).boolean;

  static final _id_hasEdgeColor =
      jniAccessors.getMethodIDOf(_classRef, "hasEdgeColor", "()Z");

  /// from: public boolean hasEdgeColor()
  ///
  /// @return {@code true} if the user has specified an edge color that
  ///         should override the application default, {@code false}
  ///         otherwise
  bool hasEdgeColor() => jniAccessors.callMethodWithArgs(
      reference, _id_hasEdgeColor, jni.JniType.booleanType, []).boolean;

  static final _id_hasWindowColor =
      jniAccessors.getMethodIDOf(_classRef, "hasWindowColor", "()Z");

  /// from: public boolean hasWindowColor()
  ///
  /// @return {@code true} if the user has specified a window color that
  ///         should override the application default, {@code false}
  ///         otherwise
  bool hasWindowColor() => jniAccessors.callMethodWithArgs(
      reference, _id_hasWindowColor, jni.JniType.booleanType, []).boolean;

  static final _id_getTypeface = jniAccessors.getMethodIDOf(
      _classRef, "getTypeface", "()Landroid/graphics/Typeface;");

  /// from: public android.graphics.Typeface getTypeface()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return the preferred Typeface for video captions, or null if
  ///         not specified
  typeface_.Typeface getTypeface() =>
      typeface_.Typeface.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTypeface, jni.JniType.objectType, []).object);
}
