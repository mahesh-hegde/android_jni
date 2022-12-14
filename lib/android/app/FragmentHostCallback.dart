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

import "FragmentContainer.dart" as fragmentcontainer_;

import "../content/Context.dart" as context_;

import "../os/Handler.dart" as handler_;

import "Fragment.dart" as fragment_;

import "../view/LayoutInflater.dart" as layoutinflater_;

import "../content/Intent.dart" as intent_;

import "../os/Bundle.dart" as bundle_;

import "../content/IntentSender.dart" as intentsender_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.FragmentHostCallback
///
/// Integration points with the Fragment host.
///
/// Fragments may be hosted by any object; such as an Activity. In order to
/// host fragments, implement FragmentHostCallback, overriding the methods
/// applicable to the host.
///@deprecated Use the <a href="{@docRoot}tools/extras/support-library.html">Support Library</a>
///      android.support.v4.app.FragmentHostCallback
class FragmentHostCallback extends fragmentcontainer_.FragmentContainer {
  static final _classRef =
      jniAccessors.getClassOf("android/app/FragmentHostCallback");
  FragmentHostCallback.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;Landroid/os/Handler;I)V");

  /// from: public void <init>(android.content.Context context, android.os.Handler handler, int windowAnimations)
  /// The returned object must be deleted after use, by calling the `delete` method.
  FragmentHostCallback.ctor1(
      context_.Context context, handler_.Handler handler, int windowAnimations)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [context.reference, handler.reference, windowAnimations]).object);

  static final _id_onDump = jniAccessors.getMethodIDOf(_classRef, "onDump",
      "(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V");

  /// from: public void onDump(java.lang.String prefix, java.io.FileDescriptor fd, java.io.PrintWriter writer, java.lang.String[] args)
  ///
  /// Print internal state into the given stream.
  ///@param prefix Desired prefix to prepend at each line of output.
  ///@param fd The raw file descriptor that the dump is being sent to.
  ///@param writer The PrintWriter to which you should dump your state. This will be closed
  ///                  for you after you return.
  ///@param args additional arguments to the dump request.
  void onDump(jni.JniString prefix, jni.JniObject fd, jni.JniObject writer,
          jni.JniObject args) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onDump, jni.JniType.voidType, [
        prefix.reference,
        fd.reference,
        writer.reference,
        args.reference
      ]).check();

  static final _id_onShouldSaveFragmentState = jniAccessors.getMethodIDOf(
      _classRef, "onShouldSaveFragmentState", "(Landroid/app/Fragment;)Z");

  /// from: public boolean onShouldSaveFragmentState(android.app.Fragment fragment)
  ///
  /// Return {@code true} if the fragment's state needs to be saved.
  bool onShouldSaveFragmentState(fragment_.Fragment fragment) =>
      jniAccessors.callMethodWithArgs(reference, _id_onShouldSaveFragmentState,
          jni.JniType.booleanType, [fragment.reference]).boolean;

  static final _id_onGetLayoutInflater = jniAccessors.getMethodIDOf(
      _classRef, "onGetLayoutInflater", "()Landroid/view/LayoutInflater;");

  /// from: public android.view.LayoutInflater onGetLayoutInflater()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a LayoutInflater.
  /// See Activity\#getLayoutInflater().
  layoutinflater_.LayoutInflater onGetLayoutInflater() =>
      layoutinflater_.LayoutInflater.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_onGetLayoutInflater,
          jni.JniType.objectType, []).object);

  static final _id_onUseFragmentManagerInflaterFactory = jniAccessors
      .getMethodIDOf(_classRef, "onUseFragmentManagerInflaterFactory", "()Z");

  /// from: public boolean onUseFragmentManagerInflaterFactory()
  ///
  /// Return {@code true} if the FragmentManager's LayoutInflaterFactory should be used.
  bool onUseFragmentManagerInflaterFactory() => jniAccessors.callMethodWithArgs(
      reference,
      _id_onUseFragmentManagerInflaterFactory,
      jni.JniType.booleanType, []).boolean;

  static final _id_onInvalidateOptionsMenu =
      jniAccessors.getMethodIDOf(_classRef, "onInvalidateOptionsMenu", "()V");

  /// from: public void onInvalidateOptionsMenu()
  ///
  /// Invalidates the activity's options menu.
  /// See Activity\#invalidateOptionsMenu()
  void onInvalidateOptionsMenu() => jniAccessors.callMethodWithArgs(
      reference, _id_onInvalidateOptionsMenu, jni.JniType.voidType, []).check();

  static final _id_onStartActivityFromFragment = jniAccessors.getMethodIDOf(
      _classRef,
      "onStartActivityFromFragment",
      "(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V");

  /// from: public void onStartActivityFromFragment(android.app.Fragment fragment, android.content.Intent intent, int requestCode, android.os.Bundle options)
  ///
  /// Starts a new Activity from the given fragment.
  /// See Activity\#startActivityForResult(Intent, int).
  void onStartActivityFromFragment(fragment_.Fragment fragment,
          intent_.Intent intent, int requestCode, bundle_.Bundle options) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onStartActivityFromFragment, jni.JniType.voidType, [
        fragment.reference,
        intent.reference,
        requestCode,
        options.reference
      ]).check();

  static final _id_onStartIntentSenderFromFragment = jniAccessors.getMethodIDOf(
      _classRef,
      "onStartIntentSenderFromFragment",
      "(Landroid/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V");

  /// from: public void onStartIntentSenderFromFragment(android.app.Fragment fragment, android.content.IntentSender intent, int requestCode, android.content.Intent fillInIntent, int flagsMask, int flagsValues, int extraFlags, android.os.Bundle options)
  ///
  /// Starts a new IntentSender from the given fragment.
  /// See Activity\#startIntentSender(IntentSender, Intent, int, int, int, Bundle).
  ///@param fillInIntent This value may be {@code null}.
  void onStartIntentSenderFromFragment(
          fragment_.Fragment fragment,
          intentsender_.IntentSender intent,
          int requestCode,
          intent_.Intent fillInIntent,
          int flagsMask,
          int flagsValues,
          int extraFlags,
          bundle_.Bundle options) =>
      jniAccessors.callMethodWithArgs(reference,
          _id_onStartIntentSenderFromFragment, jni.JniType.voidType, [
        fragment.reference,
        intent.reference,
        requestCode,
        fillInIntent.reference,
        flagsMask,
        flagsValues,
        extraFlags,
        options.reference
      ]).check();

  static final _id_onRequestPermissionsFromFragment =
      jniAccessors.getMethodIDOf(_classRef, "onRequestPermissionsFromFragment",
          "(Landroid/app/Fragment;[Ljava/lang/String;I)V");

  /// from: public void onRequestPermissionsFromFragment(android.app.Fragment fragment, java.lang.String[] permissions, int requestCode)
  ///
  /// Requests permissions from the given fragment.
  /// See Activity\#requestPermissions(String[], int)
  ///@param fragment This value must never be {@code null}.
  ///@param permissions This value must never be {@code null}.
  void onRequestPermissionsFromFragment(fragment_.Fragment fragment,
          jni.JniObject permissions, int requestCode) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onRequestPermissionsFromFragment,
          jni.JniType.voidType,
          [fragment.reference, permissions.reference, requestCode]).check();

  static final _id_onHasWindowAnimations =
      jniAccessors.getMethodIDOf(_classRef, "onHasWindowAnimations", "()Z");

  /// from: public boolean onHasWindowAnimations()
  ///
  /// Return {@code true} if there are window animations.
  bool onHasWindowAnimations() => jniAccessors.callMethodWithArgs(reference,
      _id_onHasWindowAnimations, jni.JniType.booleanType, []).boolean;

  static final _id_onGetWindowAnimations =
      jniAccessors.getMethodIDOf(_classRef, "onGetWindowAnimations", "()I");

  /// from: public int onGetWindowAnimations()
  ///
  /// Return the window animations.
  int onGetWindowAnimations() => jniAccessors.callMethodWithArgs(
      reference, _id_onGetWindowAnimations, jni.JniType.intType, []).integer;

  static final _id_onAttachFragment = jniAccessors.getMethodIDOf(
      _classRef, "onAttachFragment", "(Landroid/app/Fragment;)V");

  /// from: public void onAttachFragment(android.app.Fragment fragment)
  ///
  /// Called when a Fragment is being attached to this host, immediately
  /// after the call to its Fragment\#onAttach(Context) method and before
  /// Fragment\#onCreate(Bundle).
  void onAttachFragment(fragment_.Fragment fragment) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAttachFragment,
          jni.JniType.voidType, [fragment.reference]).check();

  static final _id_onHasView =
      jniAccessors.getMethodIDOf(_classRef, "onHasView", "()Z");

  /// from: public boolean onHasView()
  bool onHasView() => jniAccessors.callMethodWithArgs(
      reference, _id_onHasView, jni.JniType.booleanType, []).boolean;
}
