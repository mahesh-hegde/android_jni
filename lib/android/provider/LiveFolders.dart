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

/// from: android.provider.LiveFolders
///
/// A LiveFolder is a special folder whose content is provided by a
/// android.content.ContentProvider. To create a live folder, two components
/// are required:
///
/// <ul>
///  <li>An activity that can respond to the intent action \#ACTION_CREATE_LIVE_FOLDER. The
///  activity is responsible for creating the live folder.</li>
///  <li>A android.content.ContentProvider to provide the live folder items.</li>
/// </ul>
///
/// <h3>Lifecycle</h3>
/// When a user wants to create a live folder, the system looks for all activities with the
/// intent filter action \#ACTION_CREATE_LIVE_FOLDER and presents the list to the user.
/// When the user chooses one of the activities, the activity is invoked with the
/// \#ACTION_CREATE_LIVE_FOLDER action. The activity then creates the live folder and
/// passes it back to the system by setting it as an
/// android.app.Activity\#setResult(int, android.content.Intent) activity result. The
/// live folder is described by a content provider URI, a name, an icon and a display mode.
/// Finally, when the user opens the live folder, the system queries the content provider
/// to retrieve the folder's content.
///
///
/// <h3>Setting up the live folder activity</h3>
/// The following code sample shows how to write an activity that creates a live folder:
///
/// <pre>
/// public static class MyLiveFolder extends Activity {
///     public static final Uri CONTENT_URI = Uri.parse("content://my.app/live");
///
///     protected void onCreate(Bundle savedInstanceState) {
///         super.onCreate(savedInstanceState);
///
///         final Intent intent = getIntent();
///         final String action = intent.getAction();
///
///         if (LiveFolders.ACTION_CREATE_LIVE_FOLDER.equals(action)) {
///             setResult(RESULT_OK, createLiveFolder(this, CONTENT_URI, "My LiveFolder",
///                     R.drawable.ic_launcher_contacts_phones));
///         } else {
///             setResult(RESULT_CANCELED);
///         }
///
///         finish();
///     }
///
///     private static Intent createLiveFolder(Context context, Uri uri, String name,
///             int icon) {
///
///         final Intent intent = new Intent();
///
///         intent.setData(uri);
///         intent.putExtra(LiveFolders.EXTRA_LIVE_FOLDER_NAME, name);
///         intent.putExtra(LiveFolders.EXTRA_LIVE_FOLDER_ICON,
///                 Intent.ShortcutIconResource.fromContext(context, icon));
///         intent.putExtra(LiveFolders.EXTRA_LIVE_FOLDER_DISPLAY_MODE, LiveFolders.DISPLAY_MODE_LIST);
///
///         return intent;
///     }
/// }
/// </pre>
/// The live folder is described by an android.content.Intent as follows:
///
/// <table border="2"width="85%"align="center"frame="hsides"rules="rows">
///     <thead>
///     <tr><th>Component</th> <th>Type</th> <th>Description</th> <th>Required</th></tr>
///     </thead>
///
///     <tbody>
///     <tr><th>URI</th>
///         <td>URI</td>
///         <td>The ContentProvider URI</td>
///         <td align="center">Yes</td>
///     </tr>
///     <tr><th>\#EXTRA_LIVE_FOLDER_NAME</th>
///         <td>Extra String</td>
///         <td>The name of the live folder</td>
///         <td align="center">Yes</td>
///     </tr>
///     <tr><th>\#EXTRA_LIVE_FOLDER_ICON</th>
///         <td>Extra android.content.Intent.ShortcutIconResource</td>
///         <td>The icon of the live folder</td>
///         <td align="center">Yes</td>
///     </tr>
///     <tr><th>\#EXTRA_LIVE_FOLDER_DISPLAY_MODE</th>
///         <td>Extra int</td>
///         <td>The display mode of the live folder. The value must be either
///         \#DISPLAY_MODE_GRID or \#DISPLAY_MODE_LIST.</td>
///         <td align="center">Yes</td>
///     </tr>
///     <tr><th>\#EXTRA_LIVE_FOLDER_BASE_INTENT</th>
///         <td>Extra Intent</td>
///         <td>When the user clicks an item inside a live folder, the system will either fire
///         the intent associated with that item or, if present, the live folder's base intent
///         with the id of the item appended to the base intent's URI.</td>
///         <td align="center">No</td>
///     </tr>
///     </tbody>
/// </table>
///
/// <h3>Setting up the content provider</h3>
/// The live folder's content provider must, upon query, return a android.database.Cursor
/// whose columns match the following names:
///
/// <table border="2"width="85%"align="center"frame="hsides"rules="rows">
///     <thead>
///     <tr><th>Column</th> <th>Type</th> <th>Description</th> <th>Required</th></tr>
///     </thead>
///
///     <tbody>
///     <tr><th>\#NAME</th>
///         <td>String</td>
///         <td>The name of the item</td>
///         <td align="center">Yes</td>
///     </tr>
///     <tr><th>\#DESCRIPTION</th>
///         <td>String</td>
///         <td>The description of the item. The description is ignored when the live folder's
///         display mode is \#DISPLAY_MODE_GRID.</td>
///         <td align="center">No</td>
///     </tr>
///     <tr><th>\#INTENT</th>
///         <td>android.content.Intent</td>
///         <td>The intent to fire when the item is clicked. Ignored when the live folder defines
///         a base intent.</td>
///         <td align="center">No</td>
///     </tr>
///     <tr><th>\#ICON_BITMAP</th>
///         <td>Bitmap</td>
///         <td>The icon for the item. When this column value is not null, the values for the
///         columns \#ICON_PACKAGE and \#ICON_RESOURCE must be null.</td>
///         <td align="center">No</td>
///     </tr>
///     <tr><th>\#ICON_PACKAGE</th>
///         <td>String</td>
///         <td>The package of the item's icon. When this value is not null, the value for the
///         column \#ICON_RESOURCE must be specified and the value for the column
///         \#ICON_BITMAP must be null.</td>
///         <td align="center">No</td>
///     </tr>
///     <tr><th>\#ICON_RESOURCE</th>
///         <td>String</td>
///         <td>The resource name of the item's icon. When this value is not null, the value for the
///         column \#ICON_PACKAGE must be specified and the value for the column
///         \#ICON_BITMAP must be null.</td>
///         <td align="center">No</td>
///     </tr>
///     </tbody>
/// </table>
///@deprecated Live folders are no longer supported by Android.  These have been
/// replaced by the new
/// <a href="{@docRoot}guide/topics/appwidgets/index.html\#collections">AppWidget Collection</a>
/// APIs introduced in android.os.Build.VERSION_CODES\#HONEYCOMB.  These provide
/// all of the features of live folders plus many more.  The use of live folders is greatly
/// discouraged because of security issues they introduce -- publishing a live folder requires
/// making all data show for the live folder available to all applications with no
/// permissions protecting it.
class LiveFolders extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/provider/LiveFolders");
  LiveFolders.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_CREATE_LIVE_FOLDER
  ///
  /// Activity Action: Creates a live folder.
  /// Input: Nothing.
  ///
  /// Output: An Intent representing the live folder. The intent must contain four
  /// extras: EXTRA_LIVE_FOLDER_NAME (value: String),
  /// EXTRA_LIVE_FOLDER_ICON (value: ShortcutIconResource),
  /// EXTRA_LIVE_FOLDER_URI (value: String) and
  /// EXTRA_LIVE_FOLDER_DISPLAY_MODE (value: int). The Intent can optionnally contain
  /// EXTRA_LIVE_FOLDER_BASE_INTENT (value: Intent).
  ///
  ///@see \#EXTRA_LIVE_FOLDER_NAME
  ///@see \#EXTRA_LIVE_FOLDER_ICON
  ///@see \#EXTRA_LIVE_FOLDER_DISPLAY_MODE
  ///@see \#EXTRA_LIVE_FOLDER_BASE_INTENT
  ///@see android.content.Intent.ShortcutIconResource
  static const ACTION_CREATE_LIVE_FOLDER =
      "android.intent.action.CREATE_LIVE_FOLDER";

  /// from: static public final java.lang.String DESCRIPTION
  ///
  /// Content provider column.
  ///
  /// Description of the live folder item. This value is ignored if the
  /// live folder's display mode is LiveFolders\#DISPLAY_MODE_GRID.
  ///
  /// Optional.
  ///
  /// Type: String.
  ///
  ///@see LiveFolders\#EXTRA_LIVE_FOLDER_DISPLAY_MODE
  static const DESCRIPTION = "description";

  /// from: static public final int DISPLAY_MODE_GRID
  ///
  /// Displays a live folder's content in a grid.
  ///@see LiveFolders\#EXTRA_LIVE_FOLDER_DISPLAY_MODE
  static const DISPLAY_MODE_GRID = 1;

  /// from: static public final int DISPLAY_MODE_LIST
  ///
  /// Displays a live folder's content in a list.
  ///@see LiveFolders\#EXTRA_LIVE_FOLDER_DISPLAY_MODE
  static const DISPLAY_MODE_LIST = 2;

  /// from: static public final java.lang.String EXTRA_LIVE_FOLDER_BASE_INTENT
  ///
  /// The name of the extra used to define the base Intent of a live folder.
  ///@see \#ACTION_CREATE_LIVE_FOLDER
  static const EXTRA_LIVE_FOLDER_BASE_INTENT =
      "android.intent.extra.livefolder.BASE_INTENT";

  /// from: static public final java.lang.String EXTRA_LIVE_FOLDER_DISPLAY_MODE
  ///
  /// The name of the extra used to define the display mode of a live folder.
  ///@see \#ACTION_CREATE_LIVE_FOLDER
  ///@see \#DISPLAY_MODE_GRID
  ///@see \#DISPLAY_MODE_LIST
  static const EXTRA_LIVE_FOLDER_DISPLAY_MODE =
      "android.intent.extra.livefolder.DISPLAY_MODE";

  /// from: static public final java.lang.String EXTRA_LIVE_FOLDER_ICON
  ///
  /// The name of the extra used to define the icon of a live folder.
  ///@see \#ACTION_CREATE_LIVE_FOLDER
  static const EXTRA_LIVE_FOLDER_ICON = "android.intent.extra.livefolder.ICON";

  /// from: static public final java.lang.String EXTRA_LIVE_FOLDER_NAME
  ///
  /// The name of the extra used to define the name of a live folder.
  ///@see \#ACTION_CREATE_LIVE_FOLDER
  static const EXTRA_LIVE_FOLDER_NAME = "android.intent.extra.livefolder.NAME";

  /// from: static public final java.lang.String ICON_BITMAP
  ///
  /// Content provider column.
  ///
  /// Icon of the live folder item, as a custom bitmap.
  ///
  /// Optional.
  ///
  /// Type: android.graphics.Bitmap.
  ///
  static const ICON_BITMAP = "icon_bitmap";

  /// from: static public final java.lang.String ICON_PACKAGE
  ///
  /// Content provider column.
  ///
  /// Package where to find the icon of the live folder item. This value can be
  /// obtained easily using
  /// android.content.Intent.ShortcutIconResource\#fromContext(android.content.Context, int).
  ///
  /// Optional.
  ///
  /// Type: String.
  ///
  ///@see \#ICON_RESOURCE
  ///@see android.content.Intent.ShortcutIconResource
  static const ICON_PACKAGE = "icon_package";

  /// from: static public final java.lang.String ICON_RESOURCE
  ///
  /// Content provider column.
  ///
  /// Resource name of the live folder item. This value can be obtained easily using
  /// android.content.Intent.ShortcutIconResource\#fromContext(android.content.Context, int).
  ///
  /// Optional.
  ///
  /// Type: String.
  ///
  ///@see \#ICON_PACKAGE
  ///@see android.content.Intent.ShortcutIconResource
  static const ICON_RESOURCE = "icon_resource";

  /// from: static public final java.lang.String INTENT
  ///
  /// Content provider column.
  ///
  /// Intent of the live folder item.
  ///
  /// Optional if the live folder has a base intent.
  ///
  /// Type: android.content.Intent.
  ///
  ///@see LiveFolders\#EXTRA_LIVE_FOLDER_BASE_INTENT
  static const INTENT = "intent";

  /// from: static public final java.lang.String NAME
  ///
  /// Content provider column.
  ///
  /// Name of the live folder item.
  ///
  /// Required.
  ///
  /// Type: String.
  ///
  static const NAME = "name";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  LiveFolders()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}