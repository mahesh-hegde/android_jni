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

import "../net/Uri.dart" as uri_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.content.UriMatcher
///
/// Utility class to aid in matching URIs in content providers.
///
/// To use this class, build up a tree of <code>UriMatcher</code> objects.
/// For example:
/// <pre>
///    private static final int PEOPLE = 1;
///    private static final int PEOPLE_ID = 2;
///    private static final int PEOPLE_PHONES = 3;
///    private static final int PEOPLE_PHONES_ID = 4;
///    private static final int PEOPLE_CONTACTMETHODS = 7;
///    private static final int PEOPLE_CONTACTMETHODS_ID = 8;
///
///    private static final int DELETED_PEOPLE = 20;
///
///    private static final int PHONES = 9;
///    private static final int PHONES_ID = 10;
///    private static final int PHONES_FILTER = 14;
///
///    private static final int CONTACTMETHODS = 18;
///    private static final int CONTACTMETHODS_ID = 19;
///
///    private static final int CALLS = 11;
///    private static final int CALLS_ID = 12;
///    private static final int CALLS_FILTER = 15;
///
///    private static final UriMatcher sURIMatcher = new UriMatcher(UriMatcher.NO_MATCH);
///
///    static
///    {
///        sURIMatcher.addURI("contacts", "people", PEOPLE);
///        sURIMatcher.addURI("contacts", "people/\#", PEOPLE_ID);
///        sURIMatcher.addURI("contacts", "people/\#/phones", PEOPLE_PHONES);
///        sURIMatcher.addURI("contacts", "people/\#/phones/\#", PEOPLE_PHONES_ID);
///        sURIMatcher.addURI("contacts", "people/\#/contact_methods", PEOPLE_CONTACTMETHODS);
///        sURIMatcher.addURI("contacts", "people/\#/contact_methods/\#", PEOPLE_CONTACTMETHODS_ID);
///        sURIMatcher.addURI("contacts", "deleted_people", DELETED_PEOPLE);
///        sURIMatcher.addURI("contacts", "phones", PHONES);
///        sURIMatcher.addURI("contacts", "phones/filter/*", PHONES_FILTER);
///        sURIMatcher.addURI("contacts", "phones/\#", PHONES_ID);
///        sURIMatcher.addURI("contacts", "contact_methods", CONTACTMETHODS);
///        sURIMatcher.addURI("contacts", "contact_methods/\#", CONTACTMETHODS_ID);
///        sURIMatcher.addURI("call_log", "calls", CALLS);
///        sURIMatcher.addURI("call_log", "calls/filter/*", CALLS_FILTER);
///        sURIMatcher.addURI("call_log", "calls/\#", CALLS_ID);
///    }
/// </pre>
/// Starting from API level android.os.Build.VERSION_CODES\#JELLY_BEAN_MR2, paths can start
/// with a leading slash.  For example:
/// <pre>
///        sURIMatcher.addURI("contacts", "/people", PEOPLE);
/// </pre>
/// Then when you need to match against a URI, call \#match, providing
/// the URL that you have been given.  You can use the result to build a query,
/// return a type, insert or delete a row, or whatever you need, without duplicating
/// all of the if-else logic that you would otherwise need.  For example:
/// <pre>
///    public String getType(Uri url)
///    {
///        int match = sURIMatcher.match(url);
///        switch (match)
///        {
///            case PEOPLE:
///                return "vnd.android.cursor.dir/person";
///            case PEOPLE_ID:
///                return "vnd.android.cursor.item/person";
/// ... snip ...
///                return "vnd.android.cursor.dir/snail-mail";
///            case PEOPLE_ADDRESS_ID:
///                return "vnd.android.cursor.item/snail-mail";
///            default:
///                return null;
///        }
///    }
/// </pre>
/// instead of:
/// <pre>
///    public String getType(Uri url)
///    {
///        List<String> pathSegments = url.getPathSegments();
///        if (pathSegments.size() >= 2) {
///            if ("people".equals(pathSegments.get(1))) {
///                if (pathSegments.size() == 2) {
///                    return "vnd.android.cursor.dir/person";
///                } else if (pathSegments.size() == 3) {
///                    return "vnd.android.cursor.item/person";
/// ... snip ...
///                    return "vnd.android.cursor.dir/snail-mail";
///                } else if (pathSegments.size() == 3) {
///                    return "vnd.android.cursor.item/snail-mail";
///                }
///            }
///        }
///        return null;
///    }
/// </pre>
class UriMatcher extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/content/UriMatcher");
  UriMatcher.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int NO_MATCH
  static const NO_MATCH = -1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int code)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates the root node of the URI tree.
  ///@param code the code to match for the root URI
  UriMatcher(int code)
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [code]).object);

  static final _id_addURI = jniAccessors.getMethodIDOf(
      _classRef, "addURI", "(Ljava/lang/String;Ljava/lang/String;I)V");

  /// from: public void addURI(java.lang.String authority, java.lang.String path, int code)
  ///
  /// Add a URI to match, and the code to return when this URI is
  /// matched. URI nodes may be exact match string, the token "*"
  /// that matches any text, or the token "\#" that matches only
  /// numbers.
  ///
  /// Starting from API level android.os.Build.VERSION_CODES\#JELLY_BEAN_MR2,
  /// this method will accept a leading slash in the path.
  ///@param authority the authority to match
  ///@param path the path to match. * may be used as a wild card for
  /// any text, and \# may be used as a wild card for numbers.
  ///@param code the code that is returned when a URI is matched
  /// against the given components. Must be positive.
  void addURI(jni.JniString authority, jni.JniString path, int code) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_addURI,
          jni.JniType.voidType,
          [authority.reference, path.reference, code]).check();

  static final _id_match =
      jniAccessors.getMethodIDOf(_classRef, "match", "(Landroid/net/Uri;)I");

  /// from: public int match(android.net.Uri uri)
  ///
  /// Try to match against the path in a url.
  ///@param uri The url whose path we will match against.
  ///@return The code for the matched node (added using addURI),
  /// or -1 if there is no matched node.
  int match(uri_.Uri uri) => jniAccessors.callMethodWithArgs(
      reference, _id_match, jni.JniType.intType, [uri.reference]).integer;
}