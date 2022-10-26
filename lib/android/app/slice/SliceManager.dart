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

import "../../net/Uri.dart" as uri_;

import "Slice.dart" as slice_;

import "../../content/Intent.dart" as intent_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.slice.SliceManager
///
/// Class to handle interactions with Slices.
///
/// The SliceManager manages permissions and pinned state for slices.
class SliceManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/slice/SliceManager");
  SliceManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String CATEGORY_SLICE
  ///
  /// Category used to resolve intents that can be rendered as slices.
  ///
  /// This category should be included on intent filters on providers that extend
  /// SliceProvider.
  ///@see SliceProvider
  ///@see SliceProvider\#onMapIntentToUri(Intent)
  ///@see \#mapIntentToUri(Intent)
  static const CATEGORY_SLICE = "android.app.slice.category.SLICE";

  /// from: static public final java.lang.String SLICE_METADATA_KEY
  ///
  /// The meta-data key that allows an activity to easily be linked directly to a slice.
  ///
  /// An activity can be statically linked to a slice uri by including a meta-data item
  /// for this key that contains a valid slice uri for the same application declaring
  /// the activity.
  ///
  /// <pre class="prettyprint">
  /// {@literal
  /// <activity android:name="com.example.mypkg.MyActivity">
  ///     <meta-data android:name="android.metadata.SLICE_URI"
  ///                android:value="content://com.example.mypkg/main_slice" />
  ///  </activity>}
  /// </pre>
  ///@see \#mapIntentToUri(Intent)
  ///@see SliceProvider\#onMapIntentToUri(Intent)
  static const SLICE_METADATA_KEY = "android.metadata.SLICE_URI";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SliceManager()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_pinSlice = jniAccessors.getMethodIDOf(
      _classRef, "pinSlice", "(Landroid/net/Uri;Ljava/util/Set;)V");

  /// from: public void pinSlice(android.net.Uri uri, java.util.Set<android.app.slice.SliceSpec> specs)
  ///
  /// Ensures that a slice is in a pinned state.
  ///
  /// Pinned state is not persisted across reboots, so apps are expected to re-pin any slices
  /// they still care about after a reboot.
  ///
  /// This may only be called by apps that are the default launcher for the device
  /// or the default voice interaction service. Otherwise will throw SecurityException.
  ///@param uri The uri of the slice being pinned.
  /// This value must never be {@code null}.
  ///@param specs The list of supported SliceSpecs of the callback.
  /// This value must never be {@code null}.
  ///@see SliceProvider\#onSlicePinned(Uri)
  ///@see Intent\#ACTION_ASSIST
  ///@see Intent\#CATEGORY_HOME
  void pinSlice(uri_.Uri uri, jni.JniObject specs) =>
      jniAccessors.callMethodWithArgs(reference, _id_pinSlice,
          jni.JniType.voidType, [uri.reference, specs.reference]).check();

  static final _id_unpinSlice = jniAccessors.getMethodIDOf(
      _classRef, "unpinSlice", "(Landroid/net/Uri;)V");

  /// from: public void unpinSlice(android.net.Uri uri)
  ///
  /// Remove a pin for a slice.
  ///
  /// If the slice has no other pins/callbacks then the slice will be unpinned.
  ///
  /// This may only be called by apps that are the default launcher for the device
  /// or the default voice interaction service. Otherwise will throw SecurityException.
  ///@param uri The uri of the slice being unpinned.
  /// This value must never be {@code null}.
  ///@see \#pinSlice
  ///@see SliceProvider\#onSliceUnpinned(Uri)
  ///@see Intent\#ACTION_ASSIST
  ///@see Intent\#CATEGORY_HOME
  void unpinSlice(uri_.Uri uri) => jniAccessors.callMethodWithArgs(
      reference, _id_unpinSlice, jni.JniType.voidType, [uri.reference]).check();

  static final _id_getPinnedSpecs = jniAccessors.getMethodIDOf(
      _classRef, "getPinnedSpecs", "(Landroid/net/Uri;)Ljava/util/Set;");

  /// from: public java.util.Set<android.app.slice.SliceSpec> getPinnedSpecs(android.net.Uri uri)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the current set of specs for a pinned slice.
  ///
  /// This is the set of specs supported for a specific pinned slice. It will take
  /// into account all clients and returns only specs supported by all.
  ///@see SliceSpec
  ///@return This value will never be {@code null}.
  jni.JniObject getPinnedSpecs(uri_.Uri uri) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getPinnedSpecs, jni.JniType.objectType, [uri.reference]).object);

  static final _id_getPinnedSlices = jniAccessors.getMethodIDOf(
      _classRef, "getPinnedSlices", "()Ljava/util/List;");

  /// from: public java.util.List<android.net.Uri> getPinnedSlices()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the list of currently pinned slices for this app.
  ///@see SliceProvider\#onSlicePinned
  ///@return This value will never be {@code null}.
  jni.JniObject getPinnedSlices() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPinnedSlices, jni.JniType.objectType, []).object);

  static final _id_getSliceDescendants = jniAccessors.getMethodIDOf(_classRef,
      "getSliceDescendants", "(Landroid/net/Uri;)Ljava/util/Collection;");

  /// from: public java.util.Collection<android.net.Uri> getSliceDescendants(android.net.Uri uri)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Obtains a list of slices that are descendants of the specified Uri.
  ///
  /// Not all slice providers will implement this functionality, in which case,
  /// an empty collection will be returned.
  ///
  /// This method may take several seconds to complete, so it should
  ///  *            only be called from a worker thread.
  ///@param uri The uri to look for descendants under.
  /// This value must never be {@code null}.
  ///@return All slices within the space.
  /// This value will never be {@code null}.
  ///@see SliceProvider\#onGetSliceDescendants(Uri)
  jni.JniObject getSliceDescendants(uri_.Uri uri) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getSliceDescendants,
          jni.JniType.objectType,
          [uri.reference]).object);

  static final _id_bindSlice = jniAccessors.getMethodIDOf(
      _classRef,
      "bindSlice",
      "(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;");

  /// from: public android.app.slice.Slice bindSlice(android.net.Uri uri, java.util.Set<android.app.slice.SliceSpec> supportedSpecs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Turns a slice Uri into slice content.
  ///@param uri The URI to a slice provider
  /// This value must never be {@code null}.
  ///@param supportedSpecs List of supported specs.
  /// This value must never be {@code null}.
  ///@return The Slice provided by the app or null if none is given.
  ///@see Slice
  slice_.Slice bindSlice(uri_.Uri uri, jni.JniObject supportedSpecs) =>
      slice_.Slice.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_bindSlice,
          jni.JniType.objectType,
          [uri.reference, supportedSpecs.reference]).object);

  static final _id_mapIntentToUri = jniAccessors.getMethodIDOf(_classRef,
      "mapIntentToUri", "(Landroid/content/Intent;)Landroid/net/Uri;");

  /// from: public android.net.Uri mapIntentToUri(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Turns a slice intent into a slice uri. Expects an explicit intent.
  ///
  /// This goes through a several stage resolution process to determine if any slice
  /// can represent this intent.
  /// <ol>
  ///  <li> If the intent contains data that ContentResolver\#getType is
  ///  SliceProvider\#SLICE_TYPE then the data will be returned.</li>
  ///  <li>If the intent explicitly points at an activity, and that activity has
  ///  meta-data for key \#SLICE_METADATA_KEY, then the Uri specified there will be
  ///  returned.</li>
  ///  <li>Lastly, if the intent with \#CATEGORY_SLICE added resolves to a provider, then
  ///  the provider will be asked to SliceProvider\#onMapIntentToUri and that result
  ///  will be returned.</li>
  ///  <li>If no slice is found, then {@code null} is returned.</li>
  /// </ol>
  ///@param intent The intent associated with a slice.
  /// This value must never be {@code null}.
  ///@return The Slice Uri provided by the app or null if none exists.
  ///@see Slice
  ///@see SliceProvider\#onMapIntentToUri(Intent)
  ///@see Intent
  uri_.Uri mapIntentToUri(intent_.Intent intent) =>
      uri_.Uri.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_mapIntentToUri,
          jni.JniType.objectType,
          [intent.reference]).object);

  static final _id_bindSlice1 = jniAccessors.getMethodIDOf(
      _classRef,
      "bindSlice",
      "(Landroid/content/Intent;Ljava/util/Set;)Landroid/app/slice/Slice;");

  /// from: public android.app.slice.Slice bindSlice(android.content.Intent intent, java.util.Set<android.app.slice.SliceSpec> supportedSpecs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Turns a slice intent into slice content. Is a shortcut to perform the action
  /// of both \#mapIntentToUri(Intent) and \#bindSlice(Uri, Set) at once.
  ///@param intent The intent associated with a slice.
  /// This value must never be {@code null}.
  ///@param supportedSpecs List of supported specs.
  /// This value must never be {@code null}.
  ///@return The Slice provided by the app or null if none is given.
  ///@see Slice
  ///@see SliceProvider\#onMapIntentToUri(Intent)
  ///@see Intent
  slice_.Slice bindSlice1(
          intent_.Intent intent, jni.JniObject supportedSpecs) =>
      slice_.Slice.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_bindSlice1,
          jni.JniType.objectType,
          [intent.reference, supportedSpecs.reference]).object);

  static final _id_checkSlicePermission = jniAccessors.getMethodIDOf(
      _classRef, "checkSlicePermission", "(Landroid/net/Uri;II)I");

  /// from: public int checkSlicePermission(android.net.Uri uri, int pid, int uid)
  ///
  /// Determine whether a particular process and user ID has been granted
  /// permission to access a specific slice URI.
  ///@param uri The uri that is being checked.
  /// This value must never be {@code null}.
  ///@param pid The process ID being checked against.  Must be &gt; 0.
  ///@param uid The user ID being checked against.  A uid of 0 is the root
  /// user, which will pass every permission check.
  ///@return PackageManager\#PERMISSION_GRANTED if the given
  /// pid/uid is allowed to access that uri, or
  /// PackageManager\#PERMISSION_DENIED if it is not.
  ///
  /// Value is android.content.pm.PackageManager\#PERMISSION_GRANTED, or android.content.pm.PackageManager\#PERMISSION_DENIED
  ///@see \#grantSlicePermission(String, Uri)
  int checkSlicePermission(uri_.Uri uri, int pid, int uid) =>
      jniAccessors.callMethodWithArgs(reference, _id_checkSlicePermission,
          jni.JniType.intType, [uri.reference, pid, uid]).integer;

  static final _id_grantSlicePermission = jniAccessors.getMethodIDOf(_classRef,
      "grantSlicePermission", "(Ljava/lang/String;Landroid/net/Uri;)V");

  /// from: public void grantSlicePermission(java.lang.String toPackage, android.net.Uri uri)
  ///
  /// Grant permission to access a specific slice Uri to another package.
  ///@param toPackage The package you would like to allow to access the Uri.
  /// This value must never be {@code null}.
  ///@param uri The Uri you would like to grant access to.
  ///
  /// This value must never be {@code null}.
  ///@see \#revokeSlicePermission
  void grantSlicePermission(jni.JniString toPackage, uri_.Uri uri) =>
      jniAccessors.callMethodWithArgs(reference, _id_grantSlicePermission,
          jni.JniType.voidType, [toPackage.reference, uri.reference]).check();

  static final _id_revokeSlicePermission = jniAccessors.getMethodIDOf(_classRef,
      "revokeSlicePermission", "(Ljava/lang/String;Landroid/net/Uri;)V");

  /// from: public void revokeSlicePermission(java.lang.String toPackage, android.net.Uri uri)
  ///
  /// Remove permissions to access a particular content provider Uri
  /// that were previously added with \#grantSlicePermission for a specific target
  /// package.  The given Uri will match all previously granted Uris that are the same or a
  /// sub-path of the given Uri.  That is, revoking "content://foo/target" will
  /// revoke both "content://foo/target" and "content://foo/target/sub", but not
  /// "content://foo".  It will not remove any prefix grants that exist at a
  /// higher level.
  ///@param toPackage The package you would like to allow to access the Uri.
  /// This value must never be {@code null}.
  ///@param uri The Uri you would like to revoke access to.
  ///
  /// This value must never be {@code null}.
  ///@see \#grantSlicePermission
  void revokeSlicePermission(jni.JniString toPackage, uri_.Uri uri) =>
      jniAccessors.callMethodWithArgs(reference, _id_revokeSlicePermission,
          jni.JniType.voidType, [toPackage.reference, uri.reference]).check();
}