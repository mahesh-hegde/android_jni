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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.provider.OpenableColumns
///
/// These are standard columns for openable URIs. Providers that serve openable
/// URIs _must_ support at least these columns when queried.
///
/// To find the content type of a URI, use
/// ContentResolver\#getType(android.net.Uri).
///@see Intent\#CATEGORY_OPENABLE
class OpenableColumns extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/provider/OpenableColumns");
  OpenableColumns.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String DISPLAY_NAME
  ///
  /// The human-friendly name of file. If this is not provided then the name should default to the
  /// the last segment of the file's URI.
  static const DISPLAY_NAME = "_display_name";

  /// from: static public final java.lang.String SIZE
  ///
  /// The number of bytes in the file identified by the openable URI. Null if unknown.
  static const SIZE = "_size";
}
