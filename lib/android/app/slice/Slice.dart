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

import "../../os/Parcel.dart" as parcel_;

import "SliceSpec.dart" as slicespec_;

import "../../net/Uri.dart" as uri_;

import "../PendingIntent.dart" as pendingintent_;

import "../../graphics/drawable/Icon.dart" as icon_;

import "../RemoteInput.dart" as remoteinput_;

import "../../os/Bundle.dart" as bundle_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.slice.Slice
///
/// A slice is a piece of app content and actions that can be surfaced outside of the app.
///
/// They are constructed using Builder in a tree structure
/// that provides the OS some information about how the content should be displayed.
class Slice extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/app/slice/Slice");
  Slice.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.slice.Slice> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final java.lang.String EXTRA_RANGE_VALUE
  ///
  /// Key to retrieve an extra added to an intent when the value of an input range is changed.
  static const EXTRA_RANGE_VALUE = "android.app.slice.extra.RANGE_VALUE";

  /// from: static public final java.lang.String EXTRA_TOGGLE_STATE
  ///
  /// Key to retrieve an extra added to an intent when a control is changed.
  static const EXTRA_TOGGLE_STATE = "android.app.slice.extra.TOGGLE_STATE";

  /// from: static public final java.lang.String HINT_ACTIONS
  ///
  /// Hint that this slice contains a number of actions that can be grouped together
  /// in a sort of controls area of the UI.
  static const HINT_ACTIONS = "actions";

  /// from: static public final java.lang.String HINT_ERROR
  ///
  /// A hint to indicate that this slice represents an error.
  static const HINT_ERROR = "error";

  /// from: static public final java.lang.String HINT_HORIZONTAL
  ///
  /// Hint that list items within this slice or subslice would appear better
  /// if organized horizontally.
  static const HINT_HORIZONTAL = "horizontal";

  /// from: static public final java.lang.String HINT_KEYWORDS
  ///
  /// A hint to indicate that the contents of this subslice represent a list of keywords
  /// related to the parent slice.
  /// Expected to be on an item of format SliceItem\#FORMAT_SLICE.
  static const HINT_KEYWORDS = "keywords";

  /// from: static public final java.lang.String HINT_LARGE
  ///
  /// Hint that this content is important and should be larger when displayed if
  /// possible.
  static const HINT_LARGE = "large";

  /// from: static public final java.lang.String HINT_LAST_UPDATED
  ///
  /// Hint indicating an item representing when the content was created or last updated.
  static const HINT_LAST_UPDATED = "last_updated";

  /// from: static public final java.lang.String HINT_LIST
  ///
  /// Hint that all sub-items/sub-slices within this content should be considered
  /// to have \#HINT_LIST_ITEM.
  static const HINT_LIST = "list";

  /// from: static public final java.lang.String HINT_LIST_ITEM
  ///
  /// Hint that this item is part of a list and should be formatted as if is part
  /// of a list.
  static const HINT_LIST_ITEM = "list_item";

  /// from: static public final java.lang.String HINT_NO_TINT
  ///
  /// Hint to indicate that this content should not be tinted.
  static const HINT_NO_TINT = "no_tint";

  /// from: static public final java.lang.String HINT_PARTIAL
  ///
  /// Hint to indicate that this slice is incomplete and an update will be sent once
  /// loading is complete. Slices which contain HINT_PARTIAL will not be cached by the
  /// OS and should not be cached by apps.
  static const HINT_PARTIAL = "partial";

  /// from: static public final java.lang.String HINT_PERMISSION_REQUEST
  ///
  /// A hint to indicate that this slice represents a permission request for showing
  /// slices.
  static const HINT_PERMISSION_REQUEST = "permission_request";

  /// from: static public final java.lang.String HINT_SEE_MORE
  ///
  /// A hint representing that this item should be used to indicate that there's more
  /// content associated with this slice.
  static const HINT_SEE_MORE = "see_more";

  /// from: static public final java.lang.String HINT_SELECTED
  ///
  /// Hint indicating that this item (and its sub-items) are the current selection.
  static const HINT_SELECTED = "selected";

  /// from: static public final java.lang.String HINT_SHORTCUT
  ///
  /// Hint to indicate that this content should only be displayed if the slice is presented
  /// as a shortcut.
  static const HINT_SHORTCUT = "shortcut";

  /// from: static public final java.lang.String HINT_SUMMARY
  ///
  /// Hint indicating this content should be shown instead of the normal content when the slice
  /// is in small format.
  static const HINT_SUMMARY = "summary";

  /// from: static public final java.lang.String HINT_TITLE
  ///
  /// Hint that this content is a title of other content in the slice. This can also indicate that
  /// the content should be used in the shortcut representation of the slice (icon, label, action),
  /// normally this should be indicated by adding the hint on the action containing that content.
  ///@see SliceItem\#FORMAT_ACTION
  static const HINT_TITLE = "title";

  /// from: static public final java.lang.String HINT_TTL
  ///
  /// Hint indicating an item representing a time-to-live for the content.
  static const HINT_TTL = "ttl";

  /// from: static public final java.lang.String SUBTYPE_COLOR
  ///
  /// Subtype to tag an item as representing a color.
  /// Expected to be on an item of format SliceItem\#FORMAT_INT.
  static const SUBTYPE_COLOR = "color";

  /// from: static public final java.lang.String SUBTYPE_CONTENT_DESCRIPTION
  ///
  /// Subtype to tag an item to use as a content description.
  /// Expected to be on an item of format SliceItem\#FORMAT_TEXT.
  static const SUBTYPE_CONTENT_DESCRIPTION = "content_description";

  /// from: static public final java.lang.String SUBTYPE_LAYOUT_DIRECTION
  ///
  /// Subtype to indicate that this item indicates the layout direction for content
  /// in the slice.
  /// Expected to be an item of format SliceItem\#FORMAT_INT.
  static const SUBTYPE_LAYOUT_DIRECTION = "layout_direction";

  /// from: static public final java.lang.String SUBTYPE_MAX
  ///
  /// Subtype to tag an item as representing the max int value for a \#SUBTYPE_RANGE.
  /// Expected to be on an item of format SliceItem\#FORMAT_INT.
  static const SUBTYPE_MAX = "max";

  /// from: static public final java.lang.String SUBTYPE_MESSAGE
  ///
  /// Subtype to indicate that this is a message as part of a communication
  /// sequence in this slice.
  /// Expected to be on an item of format SliceItem\#FORMAT_SLICE.
  static const SUBTYPE_MESSAGE = "message";

  /// from: static public final java.lang.String SUBTYPE_MILLIS
  ///
  /// Subtype to tag an item as representing a time in milliseconds since midnight,
  /// January 1, 1970 UTC.
  static const SUBTYPE_MILLIS = "millis";

  /// from: static public final java.lang.String SUBTYPE_PRIORITY
  ///
  /// Subtype to tag an item representing priority.
  /// Expected to be on an item of format SliceItem\#FORMAT_INT.
  static const SUBTYPE_PRIORITY = "priority";

  /// from: static public final java.lang.String SUBTYPE_RANGE
  ///
  /// Subtype to tag an item as representing a range.
  /// Expected to be on an item of format SliceItem\#FORMAT_SLICE containing
  /// a \#SUBTYPE_VALUE and possibly a \#SUBTYPE_MAX.
  static const SUBTYPE_RANGE = "range";

  /// from: static public final java.lang.String SUBTYPE_SOURCE
  ///
  /// Subtype to tag the source (i.e. sender) of a \#SUBTYPE_MESSAGE.
  /// Expected to be on an item of format SliceItem\#FORMAT_TEXT,
  /// SliceItem\#FORMAT_IMAGE or an SliceItem\#FORMAT_SLICE containing them.
  static const SUBTYPE_SOURCE = "source";

  /// from: static public final java.lang.String SUBTYPE_TOGGLE
  ///
  /// Subtype to indicate that this content has a toggle action associated with it. To indicate
  /// that the toggle is on, use \#HINT_SELECTED. When the toggle state changes, the
  /// intent associated with it will be sent along with an extra \#EXTRA_TOGGLE_STATE
  /// which can be retrieved to see the new state of the toggle.
  static const SUBTYPE_TOGGLE = "toggle";

  /// from: static public final java.lang.String SUBTYPE_VALUE
  ///
  /// Subtype to tag an item as representing the current int value for a \#SUBTYPE_RANGE.
  /// Expected to be on an item of format SliceItem\#FORMAT_INT.
  static const SUBTYPE_VALUE = "value";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: protected void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  Slice(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [in0.reference]).object);

  static final _id_getSpec = jniAccessors.getMethodIDOf(
      _classRef, "getSpec", "()Landroid/app/slice/SliceSpec;");

  /// from: public android.app.slice.SliceSpec getSpec()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The spec for this slice
  ///
  /// This value may be {@code null}.
  slicespec_.SliceSpec getSpec() =>
      slicespec_.SliceSpec.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSpec, jni.JniType.objectType, []).object);

  static final _id_getUri =
      jniAccessors.getMethodIDOf(_classRef, "getUri", "()Landroid/net/Uri;");

  /// from: public android.net.Uri getUri()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return The Uri that this Slice represents.
  uri_.Uri getUri() => uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_getUri, jni.JniType.objectType, []).object);

  static final _id_getItems =
      jniAccessors.getMethodIDOf(_classRef, "getItems", "()Ljava/util/List;");

  /// from: public java.util.List<android.app.slice.SliceItem> getItems()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return All child SliceItems that this Slice contains.
  jni.JniObject getItems() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getItems, jni.JniType.objectType, []).object);

  static final _id_getHints =
      jniAccessors.getMethodIDOf(_classRef, "getHints", "()Ljava/util/List;");

  /// from: public java.util.List<java.lang.String> getHints()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return All hints associated with this Slice.
  ///
  /// Value is android.app.slice.Slice\#HINT_TITLE, android.app.slice.Slice\#HINT_LIST, android.app.slice.Slice\#HINT_LIST_ITEM, android.app.slice.Slice\#HINT_LARGE, android.app.slice.Slice\#HINT_ACTIONS, android.app.slice.Slice\#HINT_SELECTED, android.app.slice.Slice\#HINT_NO_TINT, android.app.slice.Slice\#HINT_SHORTCUT, android.app.slice.Slice.HINT_TOGGLE, android.app.slice.Slice\#HINT_HORIZONTAL, android.app.slice.Slice\#HINT_PARTIAL, android.app.slice.Slice\#HINT_SEE_MORE, android.app.slice.Slice\#HINT_KEYWORDS, android.app.slice.Slice\#HINT_ERROR, android.app.slice.Slice\#HINT_TTL, android.app.slice.Slice\#HINT_LAST_UPDATED, or android.app.slice.Slice\#HINT_PERMISSION_REQUEST
  jni.JniObject getHints() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getHints, jni.JniType.objectType, []).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_isCallerNeeded =
      jniAccessors.getMethodIDOf(_classRef, "isCallerNeeded", "()Z");

  /// from: public boolean isCallerNeeded()
  ///
  /// Returns whether the caller for this slice matters.
  ///@see Builder\#setCallerNeeded
  bool isCallerNeeded() => jniAccessors.callMethodWithArgs(
      reference, _id_isCallerNeeded, jni.JniType.booleanType, []).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  ///@return A string representation of this slice.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.app.slice.Slice$Builder
///
/// A Builder used to construct Slices
class Slice_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/slice/Slice\$Builder");
  Slice_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V");

  /// from: public void <init>(android.net.Uri uri, android.app.slice.SliceSpec spec)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a builder which will construct a Slice for the given Uri.
  ///@param uri Uri to tag for this slice.
  /// This value must never be {@code null}.
  ///@param spec the spec for this slice.
  Slice_Builder(uri_.Uri uri, slicespec_.SliceSpec spec)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [uri.reference, spec.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/app/slice/Slice\$Builder;)V");

  /// from: public void <init>(android.app.slice.Slice.Builder parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a builder for a Slice that is a sub-slice of the slice
  /// being constructed by the provided builder.
  ///@param parent The builder constructing the parent slice
  ///
  /// This value must never be {@code null}.
  Slice_Builder.ctor1(Slice_Builder parent)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [parent.reference]).object);

  static final _id_setCallerNeeded = jniAccessors.getMethodIDOf(
      _classRef, "setCallerNeeded", "(Z)Landroid/app/slice/Slice\$Builder;");

  /// from: public android.app.slice.Slice.Builder setCallerNeeded(boolean callerNeeded)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Tells the system whether for this slice the return value of
  /// SliceProvider\#onBindSlice(Uri, java.util.Set) may be different depending on
  /// SliceProvider\#getCallingPackage() and should not be cached for multiple
  /// apps.
  Slice_Builder setCallerNeeded(bool callerNeeded) =>
      Slice_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setCallerNeeded, jni.JniType.objectType, [callerNeeded]).object);

  static final _id_addHints = jniAccessors.getMethodIDOf(_classRef, "addHints",
      "(Ljava/util/List;)Landroid/app/slice/Slice\$Builder;");

  /// from: public android.app.slice.Slice.Builder addHints(java.util.List<java.lang.String> hints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add hints to the Slice being constructed
  ///@param hints Value is android.app.slice.Slice\#HINT_TITLE, android.app.slice.Slice\#HINT_LIST, android.app.slice.Slice\#HINT_LIST_ITEM, android.app.slice.Slice\#HINT_LARGE, android.app.slice.Slice\#HINT_ACTIONS, android.app.slice.Slice\#HINT_SELECTED, android.app.slice.Slice\#HINT_NO_TINT, android.app.slice.Slice\#HINT_SHORTCUT, android.app.slice.Slice.HINT_TOGGLE, android.app.slice.Slice\#HINT_HORIZONTAL, android.app.slice.Slice\#HINT_PARTIAL, android.app.slice.Slice\#HINT_SEE_MORE, android.app.slice.Slice\#HINT_KEYWORDS, android.app.slice.Slice\#HINT_ERROR, android.app.slice.Slice\#HINT_TTL, android.app.slice.Slice\#HINT_LAST_UPDATED, or android.app.slice.Slice\#HINT_PERMISSION_REQUEST
  Slice_Builder addHints(jni.JniObject hints) =>
      Slice_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_addHints, jni.JniType.objectType, [hints.reference]).object);

  static final _id_addSubSlice = jniAccessors.getMethodIDOf(
      _classRef,
      "addSubSlice",
      "(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice\$Builder;");

  /// from: public android.app.slice.Slice.Builder addSubSlice(android.app.slice.Slice slice, java.lang.String subType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a sub-slice to the slice being constructed
  ///@param subType Optional template-specific type information
  /// This value may be {@code null}.
  /// Value is android.app.slice.Slice\#SUBTYPE_COLOR, android.app.slice.Slice\#SUBTYPE_CONTENT_DESCRIPTION, android.app.slice.Slice\#SUBTYPE_MAX, android.app.slice.Slice\#SUBTYPE_MESSAGE, android.app.slice.Slice\#SUBTYPE_PRIORITY, android.app.slice.Slice\#SUBTYPE_RANGE, android.app.slice.Slice\#SUBTYPE_SOURCE, android.app.slice.Slice\#SUBTYPE_TOGGLE, android.app.slice.Slice\#SUBTYPE_VALUE, or android.app.slice.Slice\#SUBTYPE_LAYOUT_DIRECTION
  ///@see SliceItem\#getSubType()
  ///@param slice This value must never be {@code null}.
  Slice_Builder addSubSlice(Slice slice, jni.JniString subType) =>
      Slice_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addSubSlice,
          jni.JniType.objectType,
          [slice.reference, subType.reference]).object);

  static final _id_addAction = jniAccessors.getMethodIDOf(
      _classRef,
      "addAction",
      "(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice\$Builder;");

  /// from: public android.app.slice.Slice.Builder addAction(android.app.PendingIntent action, android.app.slice.Slice s, java.lang.String subType)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add an action to the slice being constructed
  ///@param subType Optional template-specific type information
  /// This value may be {@code null}.
  /// Value is android.app.slice.Slice\#SUBTYPE_COLOR, android.app.slice.Slice\#SUBTYPE_CONTENT_DESCRIPTION, android.app.slice.Slice\#SUBTYPE_MAX, android.app.slice.Slice\#SUBTYPE_MESSAGE, android.app.slice.Slice\#SUBTYPE_PRIORITY, android.app.slice.Slice\#SUBTYPE_RANGE, android.app.slice.Slice\#SUBTYPE_SOURCE, android.app.slice.Slice\#SUBTYPE_TOGGLE, android.app.slice.Slice\#SUBTYPE_VALUE, or android.app.slice.Slice\#SUBTYPE_LAYOUT_DIRECTION
  ///@see SliceItem\#getSubType()
  ///@param action This value must never be {@code null}.
  ///@param s This value must never be {@code null}.
  Slice_Builder addAction(pendingintent_.PendingIntent action, Slice s,
          jni.JniString subType) =>
      Slice_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addAction,
          jni.JniType.objectType,
          [action.reference, s.reference, subType.reference]).object);

  static final _id_addText = jniAccessors.getMethodIDOf(_classRef, "addText",
      "(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice\$Builder;");

  /// from: public android.app.slice.Slice.Builder addText(java.lang.CharSequence text, java.lang.String subType, java.util.List<java.lang.String> hints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add text to the slice being constructed
  ///@param subType Optional template-specific type information
  /// This value may be {@code null}.
  /// Value is android.app.slice.Slice\#SUBTYPE_COLOR, android.app.slice.Slice\#SUBTYPE_CONTENT_DESCRIPTION, android.app.slice.Slice\#SUBTYPE_MAX, android.app.slice.Slice\#SUBTYPE_MESSAGE, android.app.slice.Slice\#SUBTYPE_PRIORITY, android.app.slice.Slice\#SUBTYPE_RANGE, android.app.slice.Slice\#SUBTYPE_SOURCE, android.app.slice.Slice\#SUBTYPE_TOGGLE, android.app.slice.Slice\#SUBTYPE_VALUE, or android.app.slice.Slice\#SUBTYPE_LAYOUT_DIRECTION
  ///@see SliceItem\#getSubType()
  ///@param hints Value is android.app.slice.Slice\#HINT_TITLE, android.app.slice.Slice\#HINT_LIST, android.app.slice.Slice\#HINT_LIST_ITEM, android.app.slice.Slice\#HINT_LARGE, android.app.slice.Slice\#HINT_ACTIONS, android.app.slice.Slice\#HINT_SELECTED, android.app.slice.Slice\#HINT_NO_TINT, android.app.slice.Slice\#HINT_SHORTCUT, android.app.slice.Slice.HINT_TOGGLE, android.app.slice.Slice\#HINT_HORIZONTAL, android.app.slice.Slice\#HINT_PARTIAL, android.app.slice.Slice\#HINT_SEE_MORE, android.app.slice.Slice\#HINT_KEYWORDS, android.app.slice.Slice\#HINT_ERROR, android.app.slice.Slice\#HINT_TTL, android.app.slice.Slice\#HINT_LAST_UPDATED, or android.app.slice.Slice\#HINT_PERMISSION_REQUEST
  Slice_Builder addText(
          jni.JniObject text, jni.JniString subType, jni.JniObject hints) =>
      Slice_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addText,
          jni.JniType.objectType,
          [text.reference, subType.reference, hints.reference]).object);

  static final _id_addIcon = jniAccessors.getMethodIDOf(_classRef, "addIcon",
      "(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice\$Builder;");

  /// from: public android.app.slice.Slice.Builder addIcon(android.graphics.drawable.Icon icon, java.lang.String subType, java.util.List<java.lang.String> hints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add an image to the slice being constructed
  ///@param subType Optional template-specific type information
  /// This value may be {@code null}.
  /// Value is android.app.slice.Slice\#SUBTYPE_COLOR, android.app.slice.Slice\#SUBTYPE_CONTENT_DESCRIPTION, android.app.slice.Slice\#SUBTYPE_MAX, android.app.slice.Slice\#SUBTYPE_MESSAGE, android.app.slice.Slice\#SUBTYPE_PRIORITY, android.app.slice.Slice\#SUBTYPE_RANGE, android.app.slice.Slice\#SUBTYPE_SOURCE, android.app.slice.Slice\#SUBTYPE_TOGGLE, android.app.slice.Slice\#SUBTYPE_VALUE, or android.app.slice.Slice\#SUBTYPE_LAYOUT_DIRECTION
  ///@see SliceItem\#getSubType()
  ///@param hints Value is android.app.slice.Slice\#HINT_TITLE, android.app.slice.Slice\#HINT_LIST, android.app.slice.Slice\#HINT_LIST_ITEM, android.app.slice.Slice\#HINT_LARGE, android.app.slice.Slice\#HINT_ACTIONS, android.app.slice.Slice\#HINT_SELECTED, android.app.slice.Slice\#HINT_NO_TINT, android.app.slice.Slice\#HINT_SHORTCUT, android.app.slice.Slice.HINT_TOGGLE, android.app.slice.Slice\#HINT_HORIZONTAL, android.app.slice.Slice\#HINT_PARTIAL, android.app.slice.Slice\#HINT_SEE_MORE, android.app.slice.Slice\#HINT_KEYWORDS, android.app.slice.Slice\#HINT_ERROR, android.app.slice.Slice\#HINT_TTL, android.app.slice.Slice\#HINT_LAST_UPDATED, or android.app.slice.Slice\#HINT_PERMISSION_REQUEST
  Slice_Builder addIcon(
          icon_.Icon icon, jni.JniString subType, jni.JniObject hints) =>
      Slice_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addIcon,
          jni.JniType.objectType,
          [icon.reference, subType.reference, hints.reference]).object);

  static final _id_addRemoteInput = jniAccessors.getMethodIDOf(
      _classRef,
      "addRemoteInput",
      "(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice\$Builder;");

  /// from: public android.app.slice.Slice.Builder addRemoteInput(android.app.RemoteInput remoteInput, java.lang.String subType, java.util.List<java.lang.String> hints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add remote input to the slice being constructed
  ///@param subType Optional template-specific type information
  /// This value may be {@code null}.
  /// Value is android.app.slice.Slice\#SUBTYPE_COLOR, android.app.slice.Slice\#SUBTYPE_CONTENT_DESCRIPTION, android.app.slice.Slice\#SUBTYPE_MAX, android.app.slice.Slice\#SUBTYPE_MESSAGE, android.app.slice.Slice\#SUBTYPE_PRIORITY, android.app.slice.Slice\#SUBTYPE_RANGE, android.app.slice.Slice\#SUBTYPE_SOURCE, android.app.slice.Slice\#SUBTYPE_TOGGLE, android.app.slice.Slice\#SUBTYPE_VALUE, or android.app.slice.Slice\#SUBTYPE_LAYOUT_DIRECTION
  ///@see SliceItem\#getSubType()
  ///@param hints Value is android.app.slice.Slice\#HINT_TITLE, android.app.slice.Slice\#HINT_LIST, android.app.slice.Slice\#HINT_LIST_ITEM, android.app.slice.Slice\#HINT_LARGE, android.app.slice.Slice\#HINT_ACTIONS, android.app.slice.Slice\#HINT_SELECTED, android.app.slice.Slice\#HINT_NO_TINT, android.app.slice.Slice\#HINT_SHORTCUT, android.app.slice.Slice.HINT_TOGGLE, android.app.slice.Slice\#HINT_HORIZONTAL, android.app.slice.Slice\#HINT_PARTIAL, android.app.slice.Slice\#HINT_SEE_MORE, android.app.slice.Slice\#HINT_KEYWORDS, android.app.slice.Slice\#HINT_ERROR, android.app.slice.Slice\#HINT_TTL, android.app.slice.Slice\#HINT_LAST_UPDATED, or android.app.slice.Slice\#HINT_PERMISSION_REQUEST
  Slice_Builder addRemoteInput(remoteinput_.RemoteInput remoteInput,
          jni.JniString subType, jni.JniObject hints) =>
      Slice_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addRemoteInput,
          jni.JniType.objectType,
          [remoteInput.reference, subType.reference, hints.reference]).object);

  static final _id_addInt = jniAccessors.getMethodIDOf(_classRef, "addInt",
      "(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice\$Builder;");

  /// from: public android.app.slice.Slice.Builder addInt(int value, java.lang.String subType, java.util.List<java.lang.String> hints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add an integer to the slice being constructed
  ///@param subType Optional template-specific type information
  /// This value may be {@code null}.
  /// Value is android.app.slice.Slice\#SUBTYPE_COLOR, android.app.slice.Slice\#SUBTYPE_CONTENT_DESCRIPTION, android.app.slice.Slice\#SUBTYPE_MAX, android.app.slice.Slice\#SUBTYPE_MESSAGE, android.app.slice.Slice\#SUBTYPE_PRIORITY, android.app.slice.Slice\#SUBTYPE_RANGE, android.app.slice.Slice\#SUBTYPE_SOURCE, android.app.slice.Slice\#SUBTYPE_TOGGLE, android.app.slice.Slice\#SUBTYPE_VALUE, or android.app.slice.Slice\#SUBTYPE_LAYOUT_DIRECTION
  ///@see SliceItem\#getSubType()
  ///@param hints Value is android.app.slice.Slice\#HINT_TITLE, android.app.slice.Slice\#HINT_LIST, android.app.slice.Slice\#HINT_LIST_ITEM, android.app.slice.Slice\#HINT_LARGE, android.app.slice.Slice\#HINT_ACTIONS, android.app.slice.Slice\#HINT_SELECTED, android.app.slice.Slice\#HINT_NO_TINT, android.app.slice.Slice\#HINT_SHORTCUT, android.app.slice.Slice.HINT_TOGGLE, android.app.slice.Slice\#HINT_HORIZONTAL, android.app.slice.Slice\#HINT_PARTIAL, android.app.slice.Slice\#HINT_SEE_MORE, android.app.slice.Slice\#HINT_KEYWORDS, android.app.slice.Slice\#HINT_ERROR, android.app.slice.Slice\#HINT_TTL, android.app.slice.Slice\#HINT_LAST_UPDATED, or android.app.slice.Slice\#HINT_PERMISSION_REQUEST
  Slice_Builder addInt(int value, jni.JniString subType, jni.JniObject hints) =>
      Slice_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addInt,
          jni.JniType.objectType,
          [value, subType.reference, hints.reference]).object);

  static final _id_addLong = jniAccessors.getMethodIDOf(_classRef, "addLong",
      "(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice\$Builder;");

  /// from: public android.app.slice.Slice.Builder addLong(long value, java.lang.String subType, java.util.List<java.lang.String> hints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a long to the slice being constructed
  ///@param subType Optional template-specific type information
  /// This value may be {@code null}.
  /// Value is android.app.slice.Slice\#SUBTYPE_COLOR, android.app.slice.Slice\#SUBTYPE_CONTENT_DESCRIPTION, android.app.slice.Slice\#SUBTYPE_MAX, android.app.slice.Slice\#SUBTYPE_MESSAGE, android.app.slice.Slice\#SUBTYPE_PRIORITY, android.app.slice.Slice\#SUBTYPE_RANGE, android.app.slice.Slice\#SUBTYPE_SOURCE, android.app.slice.Slice\#SUBTYPE_TOGGLE, android.app.slice.Slice\#SUBTYPE_VALUE, or android.app.slice.Slice\#SUBTYPE_LAYOUT_DIRECTION
  ///@see SliceItem\#getSubType()
  ///@param hints Value is android.app.slice.Slice\#HINT_TITLE, android.app.slice.Slice\#HINT_LIST, android.app.slice.Slice\#HINT_LIST_ITEM, android.app.slice.Slice\#HINT_LARGE, android.app.slice.Slice\#HINT_ACTIONS, android.app.slice.Slice\#HINT_SELECTED, android.app.slice.Slice\#HINT_NO_TINT, android.app.slice.Slice\#HINT_SHORTCUT, android.app.slice.Slice.HINT_TOGGLE, android.app.slice.Slice\#HINT_HORIZONTAL, android.app.slice.Slice\#HINT_PARTIAL, android.app.slice.Slice\#HINT_SEE_MORE, android.app.slice.Slice\#HINT_KEYWORDS, android.app.slice.Slice\#HINT_ERROR, android.app.slice.Slice\#HINT_TTL, android.app.slice.Slice\#HINT_LAST_UPDATED, or android.app.slice.Slice\#HINT_PERMISSION_REQUEST
  Slice_Builder addLong(
          int value, jni.JniString subType, jni.JniObject hints) =>
      Slice_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addLong,
          jni.JniType.objectType,
          [value, subType.reference, hints.reference]).object);

  static final _id_addBundle = jniAccessors.getMethodIDOf(
      _classRef,
      "addBundle",
      "(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice\$Builder;");

  /// from: public android.app.slice.Slice.Builder addBundle(android.os.Bundle bundle, java.lang.String subType, java.util.List<java.lang.String> hints)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a bundle to the slice being constructed.
  /// Expected to be used for support library extension, should not be used for general
  /// development
  ///@param subType Optional template-specific type information
  /// This value may be {@code null}.
  /// Value is android.app.slice.Slice\#SUBTYPE_COLOR, android.app.slice.Slice\#SUBTYPE_CONTENT_DESCRIPTION, android.app.slice.Slice\#SUBTYPE_MAX, android.app.slice.Slice\#SUBTYPE_MESSAGE, android.app.slice.Slice\#SUBTYPE_PRIORITY, android.app.slice.Slice\#SUBTYPE_RANGE, android.app.slice.Slice\#SUBTYPE_SOURCE, android.app.slice.Slice\#SUBTYPE_TOGGLE, android.app.slice.Slice\#SUBTYPE_VALUE, or android.app.slice.Slice\#SUBTYPE_LAYOUT_DIRECTION
  ///@see SliceItem\#getSubType()
  ///@param hints Value is android.app.slice.Slice\#HINT_TITLE, android.app.slice.Slice\#HINT_LIST, android.app.slice.Slice\#HINT_LIST_ITEM, android.app.slice.Slice\#HINT_LARGE, android.app.slice.Slice\#HINT_ACTIONS, android.app.slice.Slice\#HINT_SELECTED, android.app.slice.Slice\#HINT_NO_TINT, android.app.slice.Slice\#HINT_SHORTCUT, android.app.slice.Slice.HINT_TOGGLE, android.app.slice.Slice\#HINT_HORIZONTAL, android.app.slice.Slice\#HINT_PARTIAL, android.app.slice.Slice\#HINT_SEE_MORE, android.app.slice.Slice\#HINT_KEYWORDS, android.app.slice.Slice\#HINT_ERROR, android.app.slice.Slice\#HINT_TTL, android.app.slice.Slice\#HINT_LAST_UPDATED, or android.app.slice.Slice\#HINT_PERMISSION_REQUEST
  Slice_Builder addBundle(
          bundle_.Bundle bundle, jni.JniString subType, jni.JniObject hints) =>
      Slice_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addBundle,
          jni.JniType.objectType,
          [bundle.reference, subType.reference, hints.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/app/slice/Slice;");

  /// from: public android.app.slice.Slice build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Construct the slice.
  Slice build() => Slice.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_build, jni.JniType.objectType, []).object);
}
