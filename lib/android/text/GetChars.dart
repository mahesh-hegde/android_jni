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

/// from: android.text.GetChars
///
/// Please implement this interface if your CharSequence has a
/// getChars() method like the one in String that is faster than
/// calling charAt() multiple times.
class GetChars extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/text/GetChars");
  GetChars.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_getChars =
      jniAccessors.getMethodIDOf(_classRef, "getChars", "(II[CI)V");

  /// from: public abstract void getChars(int start, int end, char[] dest, int destoff)
  ///
  /// Exactly like String.getChars(): copy chars <code>start</code>
  /// through <code>end - 1</code> from this CharSequence into <code>dest</code>
  /// beginning at offset <code>destoff</code>.
  void getChars(int start, int end, jni.JniObject dest, int destoff) =>
      jniAccessors.callMethodWithArgs(reference, _id_getChars,
          jni.JniType.voidType, [start, end, dest.reference, destoff]).check();
}
