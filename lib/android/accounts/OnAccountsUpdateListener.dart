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

/// from: android.accounts.OnAccountsUpdateListener
///
/// An interface that contains the callback used by the AccountManager
class OnAccountsUpdateListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/accounts/OnAccountsUpdateListener");
  OnAccountsUpdateListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onAccountsUpdated = jniAccessors.getMethodIDOf(
      _classRef, "onAccountsUpdated", "([Landroid/accounts/Account;)V");

  /// from: public abstract void onAccountsUpdated(android.accounts.Account[] accounts)
  ///
  /// This invoked when the AccountManager starts up and whenever the account
  /// set changes.
  ///@param accounts the current accounts
  void onAccountsUpdated(jni.JniObject accounts) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAccountsUpdated,
          jni.JniType.voidType, [accounts.reference]).check();
}
