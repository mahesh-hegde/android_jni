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

import "../../os/Parcelable.dart" as parcelable_;

import "AccessibilityNodeInfo.dart" as accessibilitynodeinfo_;

import "../../graphics/Rect.dart" as rect_;

import "../../os/Parcel.dart" as parcel_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.accessibility.AccessibilityWindowInfo
///
/// This class represents a state snapshot of a window for accessibility
/// purposes. The screen content contains one or more windows where some
/// windows can be descendants of other windows, which is the windows are
/// hierarchically ordered. Note that there is no root window. Hence, the
/// screen content can be seen as a collection of window trees.
class AccessibilityWindowInfo extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/view/accessibility/AccessibilityWindowInfo");
  AccessibilityWindowInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.accessibility.AccessibilityWindowInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int TYPE_ACCESSIBILITY_OVERLAY
  ///
  /// Window type: Windows that are overlaid _only_ by an android.accessibilityservice.AccessibilityService for interception of
  /// user interactions without changing the windows an accessibility service
  /// can introspect. In particular, an accessibility service can introspect
  /// only windows that a sighted user can interact with which they can touch
  /// these windows or can type into these windows. For example, if there
  /// is a full screen accessibility overlay that is touchable, the windows
  /// below it will be introspectable by an accessibility service regardless
  /// they are covered by a touchable window.
  static const TYPE_ACCESSIBILITY_OVERLAY = 4;

  /// from: static public final int TYPE_APPLICATION
  ///
  /// Window type: This is an application window. Such a window shows UI for
  /// interacting with an application.
  static const TYPE_APPLICATION = 1;

  /// from: static public final int TYPE_INPUT_METHOD
  ///
  /// Window type: This is an input method window. Such a window shows UI for
  /// inputting text such as keyboard, suggestions, etc.
  static const TYPE_INPUT_METHOD = 2;

  /// from: static public final int TYPE_SPLIT_SCREEN_DIVIDER
  ///
  /// Window type: A system window used to divide the screen in split-screen mode.
  /// This type of window is present only in split-screen mode.
  static const TYPE_SPLIT_SCREEN_DIVIDER = 5;

  /// from: static public final int TYPE_SYSTEM
  ///
  /// Window type: This is an system window. Such a window shows UI for
  /// interacting with the system.
  static const TYPE_SYSTEM = 3;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AccessibilityWindowInfo()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getTitle = jniAccessors.getMethodIDOf(
      _classRef, "getTitle", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getTitle()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the title of the window.
  ///@return The title of the window, or {@code null} if none is available.
  jni.JniObject getTitle() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getTitle, jni.JniType.objectType, []).object);

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "()I");

  /// from: public int getType()
  ///
  /// Gets the type of the window.
  ///@return The type.
  ///@see \#TYPE_APPLICATION
  ///@see \#TYPE_INPUT_METHOD
  ///@see \#TYPE_SYSTEM
  ///@see \#TYPE_ACCESSIBILITY_OVERLAY
  int getType() => jniAccessors.callMethodWithArgs(
      reference, _id_getType, jni.JniType.intType, []).integer;

  static final _id_getLayer =
      jniAccessors.getMethodIDOf(_classRef, "getLayer", "()I");

  /// from: public int getLayer()
  ///
  /// Gets the layer which determines the Z-order of the window. Windows
  /// with greater layer appear on top of windows with lesser layer.
  ///@return The window layer.
  int getLayer() => jniAccessors.callMethodWithArgs(
      reference, _id_getLayer, jni.JniType.intType, []).integer;

  static final _id_getRoot = jniAccessors.getMethodIDOf(_classRef, "getRoot",
      "()Landroid/view/accessibility/AccessibilityNodeInfo;");

  /// from: public android.view.accessibility.AccessibilityNodeInfo getRoot()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the root node in the window's hierarchy.
  ///@return The root node.
  accessibilitynodeinfo_.AccessibilityNodeInfo getRoot() =>
      accessibilitynodeinfo_.AccessibilityNodeInfo.fromRef(jniAccessors
          .callMethodWithArgs(
              reference, _id_getRoot, jni.JniType.objectType, []).object);

  static final _id_getAnchor = jniAccessors.getMethodIDOf(_classRef,
      "getAnchor", "()Landroid/view/accessibility/AccessibilityNodeInfo;");

  /// from: public android.view.accessibility.AccessibilityNodeInfo getAnchor()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the node that anchors this window to another.
  ///@return The anchor node, or {@code null} if none exists.
  accessibilitynodeinfo_.AccessibilityNodeInfo getAnchor() =>
      accessibilitynodeinfo_.AccessibilityNodeInfo.fromRef(jniAccessors
          .callMethodWithArgs(
              reference, _id_getAnchor, jni.JniType.objectType, []).object);

  static final _id_isInPictureInPictureMode =
      jniAccessors.getMethodIDOf(_classRef, "isInPictureInPictureMode", "()Z");

  /// from: public boolean isInPictureInPictureMode()
  ///
  /// Check if the window is in picture-in-picture mode.
  ///@return {@code true} if the window is in picture-in-picture mode, {@code false} otherwise.
  bool isInPictureInPictureMode() => jniAccessors.callMethodWithArgs(reference,
      _id_isInPictureInPictureMode, jni.JniType.booleanType, []).boolean;

  static final _id_getParent = jniAccessors.getMethodIDOf(_classRef,
      "getParent", "()Landroid/view/accessibility/AccessibilityWindowInfo;");

  /// from: public android.view.accessibility.AccessibilityWindowInfo getParent()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the parent window.
  ///@return The parent window, or {@code null} if none exists.
  AccessibilityWindowInfo getParent() =>
      AccessibilityWindowInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getParent, jni.JniType.objectType, []).object);

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()I");

  /// from: public int getId()
  ///
  /// Gets the unique window id.
  ///@return windowId The window id.
  int getId() => jniAccessors.callMethodWithArgs(
      reference, _id_getId, jni.JniType.intType, []).integer;

  static final _id_getBoundsInScreen = jniAccessors.getMethodIDOf(
      _classRef, "getBoundsInScreen", "(Landroid/graphics/Rect;)V");

  /// from: public void getBoundsInScreen(android.graphics.Rect outBounds)
  ///
  /// Gets the bounds of this window in the screen.
  ///@param outBounds The out window bounds.
  void getBoundsInScreen(rect_.Rect outBounds) =>
      jniAccessors.callMethodWithArgs(reference, _id_getBoundsInScreen,
          jni.JniType.voidType, [outBounds.reference]).check();

  static final _id_isActive =
      jniAccessors.getMethodIDOf(_classRef, "isActive", "()Z");

  /// from: public boolean isActive()
  ///
  /// Gets if this window is active. An active window is the one
  /// the user is currently touching or the window has input focus
  /// and the user is not touching any window.
  ///@return Whether this is the active window.
  bool isActive() => jniAccessors.callMethodWithArgs(
      reference, _id_isActive, jni.JniType.booleanType, []).boolean;

  static final _id_isFocused =
      jniAccessors.getMethodIDOf(_classRef, "isFocused", "()Z");

  /// from: public boolean isFocused()
  ///
  /// Gets if this window has input focus.
  ///@return Whether has input focus.
  bool isFocused() => jniAccessors.callMethodWithArgs(
      reference, _id_isFocused, jni.JniType.booleanType, []).boolean;

  static final _id_isAccessibilityFocused =
      jniAccessors.getMethodIDOf(_classRef, "isAccessibilityFocused", "()Z");

  /// from: public boolean isAccessibilityFocused()
  ///
  /// Gets if this window has accessibility focus.
  ///@return Whether has accessibility focus.
  bool isAccessibilityFocused() => jniAccessors.callMethodWithArgs(reference,
      _id_isAccessibilityFocused, jni.JniType.booleanType, []).boolean;

  static final _id_getChildCount =
      jniAccessors.getMethodIDOf(_classRef, "getChildCount", "()I");

  /// from: public int getChildCount()
  ///
  /// Gets the number of child windows.
  ///@return The child count.
  int getChildCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getChildCount, jni.JniType.intType, []).integer;

  static final _id_getChild = jniAccessors.getMethodIDOf(_classRef, "getChild",
      "(I)Landroid/view/accessibility/AccessibilityWindowInfo;");

  /// from: public android.view.accessibility.AccessibilityWindowInfo getChild(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets the child window at a given index.
  ///@param index The index.
  ///@return The child.
  AccessibilityWindowInfo getChild(int index) =>
      AccessibilityWindowInfo.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getChild, jni.JniType.objectType, [index]).object);

  static final _id_obtain = jniAccessors.getStaticMethodIDOf(_classRef,
      "obtain", "()Landroid/view/accessibility/AccessibilityWindowInfo;");

  /// from: static public android.view.accessibility.AccessibilityWindowInfo obtain()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a cached instance if such is available or a new one is
  /// created.
  ///@return An instance.
  static AccessibilityWindowInfo obtain() =>
      AccessibilityWindowInfo.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_obtain, jni.JniType.objectType, []).object);

  static final _id_obtain1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "obtain",
      "(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;");

  /// from: static public android.view.accessibility.AccessibilityWindowInfo obtain(android.view.accessibility.AccessibilityWindowInfo info)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a cached instance if such is available or a new one is
  /// created. The returned instance is initialized from the given
  /// <code>info</code>.
  ///@param info The other info.
  ///@return An instance.
  static AccessibilityWindowInfo obtain1(AccessibilityWindowInfo info) =>
      AccessibilityWindowInfo.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_obtain1,
          jni.JniType.objectType,
          [info.reference]).object);

  static final _id_recycle =
      jniAccessors.getMethodIDOf(_classRef, "recycle", "()V");

  /// from: public void recycle()
  ///
  /// Return an instance back to be reused.
  ///
  /// <strong>Note:</strong> You must not touch the object after calling this function.
  ///
  ///
  ///@throws IllegalStateException If the info is already recycled.
  void recycle() => jniAccessors.callMethodWithArgs(
      reference, _id_recycle, jni.JniType.voidType, []).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel parcel, int flags)
  void writeToParcel(parcel_.Parcel parcel, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [parcel.reference, flags]).check();

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
