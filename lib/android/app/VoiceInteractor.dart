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

import "../content/Context.dart" as context_;

import "Activity.dart" as activity_;

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;

import "../os/Bundle.dart" as bundle_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.VoiceInteractor
///
/// Interface for an Activity to interact with the user through voice.  Use
/// android.app.Activity\#getVoiceInteractor() Activity.getVoiceInteractor
/// to retrieve the interface, if the activity is currently involved in a voice interaction.
///
/// The voice interactor revolves around submitting voice interaction requests to the
/// back-end voice interaction service that is working with the user.  These requests are
/// submitted with \#submitRequest, providing a new instance of a
/// Request subclass describing the type of operation to perform -- currently the
/// possible requests are ConfirmationRequest and CommandRequest.
///
/// Once a request is submitted, the voice system will process it and eventually deliver
/// the result to the request object.  The application can cancel a pending request at any
/// time.
///
/// The VoiceInteractor is integrated with Activity's state saving mechanism, so that
/// if an activity is being restarted with retained state, it will retain the current
/// VoiceInteractor and any outstanding requests.  Because of this, you should always use
/// Request\#getActivity() Request.getActivity to get back to the activity of a
/// request, rather than holding on to the activity instance yourself, either explicitly
/// or implicitly through a non-static inner class.
class VoiceInteractor extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/VoiceInteractor");
  VoiceInteractor.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  VoiceInteractor()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_submitRequest = jniAccessors.getMethodIDOf(
      _classRef, "submitRequest", "(Landroid/app/VoiceInteractor\$Request;)Z");

  /// from: public boolean submitRequest(android.app.VoiceInteractor.Request request)
  bool submitRequest(VoiceInteractor_Request request) =>
      jniAccessors.callMethodWithArgs(reference, _id_submitRequest,
          jni.JniType.booleanType, [request.reference]).boolean;

  static final _id_submitRequest1 = jniAccessors.getMethodIDOf(
      _classRef,
      "submitRequest",
      "(Landroid/app/VoiceInteractor\$Request;Ljava/lang/String;)Z");

  /// from: public boolean submitRequest(android.app.VoiceInteractor.Request request, java.lang.String name)
  ///
  /// Submit a new Request to the voice interaction service.  The request must be
  /// one of the available subclasses -- ConfirmationRequest, PickOptionRequest,
  /// CompleteVoiceRequest, AbortVoiceRequest, or CommandRequest.
  ///@param request The desired request to submit.
  ///@param name An optional name for this request, or null. This can be used later with
  /// \#getActiveRequests and \#getActiveRequest to find the request.
  ///@return Returns true of the request was successfully submitted, else false.
  bool submitRequest1(VoiceInteractor_Request request, jni.JniString name) =>
      jniAccessors.callMethodWithArgs(reference, _id_submitRequest1,
          jni.JniType.booleanType, [request.reference, name.reference]).boolean;

  static final _id_getActiveRequests = jniAccessors.getMethodIDOf(_classRef,
      "getActiveRequests", "()[Landroid/app/VoiceInteractor\$Request;");

  /// from: public android.app.VoiceInteractor.Request[] getActiveRequests()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return all currently active requests.
  jni.JniObject getActiveRequests() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getActiveRequests, jni.JniType.objectType, []).object);

  static final _id_getActiveRequest = jniAccessors.getMethodIDOf(
      _classRef,
      "getActiveRequest",
      "(Ljava/lang/String;)Landroid/app/VoiceInteractor\$Request;");

  /// from: public android.app.VoiceInteractor.Request getActiveRequest(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return any currently active request that was submitted with the given name.
  ///@param name The name used to submit the request, as per
  /// \#submitRequest(android.app.VoiceInteractor.Request, String).
  ///@return Returns the active request with that name, or null if there was none.
  VoiceInteractor_Request getActiveRequest(jni.JniString name) =>
      VoiceInteractor_Request.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getActiveRequest,
          jni.JniType.objectType,
          [name.reference]).object);

  static final _id_supportsCommands = jniAccessors.getMethodIDOf(
      _classRef, "supportsCommands", "([Ljava/lang/String;)[Z");

  /// from: public boolean[] supportsCommands(java.lang.String[] commands)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Queries the supported commands available from the VoiceInteractionService.
  /// The command is a string that describes the generic operation to be performed.
  /// An example might be "org.example.commands.PICK_DATE" to ask the user to pick
  /// a date.  (Note: This is not an actual working example.)
  ///@param commands The array of commands to query for support.
  ///@return Array of booleans indicating whether each command is supported or not.
  jni.JniObject supportsCommands(jni.JniObject commands) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_supportsCommands,
          jni.JniType.objectType,
          [commands.reference]).object);
}

/// from: android.app.VoiceInteractor$Request
///
/// Base class for voice interaction requests that can be submitted to the interactor.
/// Do not instantiate this directly -- instead, use the appropriate subclass.
class VoiceInteractor_Request extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/VoiceInteractor\$Request");
  VoiceInteractor_Request.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  VoiceInteractor_Request()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getName =
      jniAccessors.getMethodIDOf(_classRef, "getName", "()Ljava/lang/String;");

  /// from: public java.lang.String getName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the name this request was submitted through
  /// \#submitRequest(android.app.VoiceInteractor.Request, String).
  jni.JniString getName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getName, jni.JniType.objectType, []).object);

  static final _id_cancel =
      jniAccessors.getMethodIDOf(_classRef, "cancel", "()V");

  /// from: public void cancel()
  ///
  /// Cancel this active request.
  void cancel() => jniAccessors.callMethodWithArgs(
      reference, _id_cancel, jni.JniType.voidType, []).check();

  static final _id_getContext = jniAccessors.getMethodIDOf(
      _classRef, "getContext", "()Landroid/content/Context;");

  /// from: public android.content.Context getContext()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the current Context this request is associated with.  May change
  /// if the activity hosting it goes through a configuration change.
  context_.Context getContext() =>
      context_.Context.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getContext, jni.JniType.objectType, []).object);

  static final _id_getActivity = jniAccessors.getMethodIDOf(
      _classRef, "getActivity", "()Landroid/app/Activity;");

  /// from: public android.app.Activity getActivity()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the current Activity this request is associated with.  Will change
  /// if the activity is restarted such as through a configuration change.
  activity_.Activity getActivity() =>
      activity_.Activity.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getActivity, jni.JniType.objectType, []).object);

  static final _id_onCancel =
      jniAccessors.getMethodIDOf(_classRef, "onCancel", "()V");

  /// from: public void onCancel()
  ///
  /// Report from voice interaction service: this operation has been canceled, typically
  /// as a completion of a previous call to \#cancel or when the user explicitly
  /// cancelled.
  void onCancel() => jniAccessors.callMethodWithArgs(
      reference, _id_onCancel, jni.JniType.voidType, []).check();

  static final _id_onAttached = jniAccessors.getMethodIDOf(
      _classRef, "onAttached", "(Landroid/app/Activity;)V");

  /// from: public void onAttached(android.app.Activity activity)
  ///
  /// The request is now attached to an activity, or being re-attached to a new activity
  /// after a configuration change.
  void onAttached(activity_.Activity activity) =>
      jniAccessors.callMethodWithArgs(reference, _id_onAttached,
          jni.JniType.voidType, [activity.reference]).check();

  static final _id_onDetached =
      jniAccessors.getMethodIDOf(_classRef, "onDetached", "()V");

  /// from: public void onDetached()
  ///
  /// The request is being detached from an activity.
  void onDetached() => jniAccessors.callMethodWithArgs(
      reference, _id_onDetached, jni.JniType.voidType, []).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.app.VoiceInteractor$Prompt
///
/// A set of voice prompts to use with the voice interaction system to confirm an action, select
/// an option, or do similar operations. Multiple voice prompts may be provided for variety. A
/// visual prompt must be provided, which might not match the spoken version. For example, the
/// confirmation "Are you sure you want to purchase this item?" might use a visual label like
/// "Purchase item".
class VoiceInteractor_Prompt extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/VoiceInteractor\$Prompt");
  VoiceInteractor_Prompt.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.VoiceInteractor.Prompt> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V");

  /// from: public void <init>(java.lang.CharSequence[] voicePrompts, java.lang.CharSequence visualPrompt)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a prompt set.
  ///@param voicePrompts An array of one or more voice prompts. Must not be empty or null.
  /// This value must never be {@code null}.
  ///@param visualPrompt A prompt to display on the screen. Must not be null.
  ///
  /// This value must never be {@code null}.
  VoiceInteractor_Prompt(jni.JniObject voicePrompts, jni.JniObject visualPrompt)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor,
            [voicePrompts.reference, visualPrompt.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/CharSequence;)V");

  /// from: public void <init>(java.lang.CharSequence prompt)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructs a prompt set with single prompt used for all interactions. This is most useful
  /// in test apps. Non-trivial apps should prefer the detailed constructor.
  ///@param prompt This value must never be {@code null}.
  VoiceInteractor_Prompt.ctor1(jni.JniObject prompt)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [prompt.reference]).object);

  static final _id_getVoicePromptAt = jniAccessors.getMethodIDOf(
      _classRef, "getVoicePromptAt", "(I)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getVoicePromptAt(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a prompt to use for voice interactions.
  ///@return This value will never be {@code null}.
  jni.JniObject getVoicePromptAt(int index) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getVoicePromptAt, jni.JniType.objectType, [index]).object);

  static final _id_countVoicePrompts =
      jniAccessors.getMethodIDOf(_classRef, "countVoicePrompts", "()I");

  /// from: public int countVoicePrompts()
  ///
  /// Returns the number of different voice prompts.
  int countVoicePrompts() => jniAccessors.callMethodWithArgs(
      reference, _id_countVoicePrompts, jni.JniType.intType, []).integer;

  static final _id_getVisualPrompt = jniAccessors.getMethodIDOf(
      _classRef, "getVisualPrompt", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getVisualPrompt()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the prompt to use for visual display.
  ///@return This value will never be {@code null}.
  jni.JniObject getVisualPrompt() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getVisualPrompt, jni.JniType.objectType, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}

/// from: android.app.VoiceInteractor$PickOptionRequest
///
/// Select a single option from multiple potential options with the user via the trusted system
/// VoiceInteractionService. Typically, the application would present this visually as
/// a list view to allow selecting the option by touch.
/// The result of the confirmation will be returned through an asynchronous call to
/// either \#onPickOptionResult or \#onCancel() - these methods should
/// be overridden to define the application specific behavior.
class VoiceInteractor_PickOptionRequest extends VoiceInteractor_Request {
  static final _classRef =
      jniAccessors.getClassOf("android/app/VoiceInteractor\$PickOptionRequest");
  VoiceInteractor_PickOptionRequest.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/app/VoiceInteractor\$Prompt;[Landroid/app/VoiceInteractor\$PickOptionRequest\$Option;Landroid/os/Bundle;)V");

  /// from: public void <init>(android.app.VoiceInteractor.Prompt prompt, android.app.VoiceInteractor.PickOptionRequest.Option[] options, android.os.Bundle extras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new pick option request.
  ///@param prompt Optional question to be asked of the user when the options are
  ///     presented or null if nothing should be asked.
  /// This value may be {@code null}.
  ///@param options The set of Options the user is selecting from.
  ///@param extras Additional optional information or null.
  ///
  /// This value may be {@code null}.
  VoiceInteractor_PickOptionRequest.ctor1(VoiceInteractor_Prompt prompt,
      jni.JniObject options, bundle_.Bundle extras)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1,
            [prompt.reference, options.reference, extras.reference]).object);

  static final _id_onPickOptionResult = jniAccessors.getMethodIDOf(
      _classRef,
      "onPickOptionResult",
      "(Z[Landroid/app/VoiceInteractor\$PickOptionRequest\$Option;Landroid/os/Bundle;)V");

  /// from: public void onPickOptionResult(boolean finished, android.app.VoiceInteractor.PickOptionRequest.Option[] selections, android.os.Bundle result)
  ///
  /// Called when a single option is confirmed or narrowed to one of several options. Override
  /// this method to define the behavior when the user selects an option or narrows down the
  /// set of options.
  ///@param finished True if the voice interaction has finished making a selection, in
  ///     which case {@code selections} contains the final result.  If false, this request is
  ///     still active and you will continue to get calls on it.
  ///@param selections Either a single Option or one of several Options the
  ///     user has narrowed the choices down to.
  ///@param result Additional optional information.
  void onPickOptionResult(
          bool finished, jni.JniObject selections, bundle_.Bundle result) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onPickOptionResult,
          jni.JniType.voidType,
          [finished, selections.reference, result.reference]).check();
}

/// from: android.app.VoiceInteractor$PickOptionRequest$Option
///
/// Represents a single option that the user may select using their voice. The
/// \#getIndex() method should be used as a unique ID to identify the option
/// when it is returned from the voice interactor.
class VoiceInteractor_PickOptionRequest_Option extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/app/VoiceInteractor\$PickOptionRequest\$Option");
  VoiceInteractor_PickOptionRequest_Option.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.app.VoiceInteractor.PickOptionRequest.Option> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/CharSequence;I)V");

  /// from: public void <init>(java.lang.CharSequence label, int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates an option that a user can select with their voice by matching the label
  /// or one of several synonyms.
  ///@param label The label that will both be matched against what the user speaks
  ///     and displayed visually.
  ///@param index The location of this option within the overall set of options.
  ///     Can be used to help identify the option when it is returned from the
  ///     voice interactor.
  VoiceInteractor_PickOptionRequest_Option(jni.JniObject label, int index)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [label.reference, index]).object);

  static final _id_addSynonym = jniAccessors.getMethodIDOf(
      _classRef,
      "addSynonym",
      "(Ljava/lang/CharSequence;)Landroid/app/VoiceInteractor\$PickOptionRequest\$Option;");

  /// from: public android.app.VoiceInteractor.PickOptionRequest.Option addSynonym(java.lang.CharSequence synonym)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a synonym term to the option to indicate an alternative way the content
  /// may be matched.
  ///@param synonym The synonym that will be matched against what the user speaks,
  ///     but not displayed.
  VoiceInteractor_PickOptionRequest_Option addSynonym(jni.JniObject synonym) =>
      VoiceInteractor_PickOptionRequest_Option.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_addSynonym, jni.JniType.objectType,
              [synonym.reference]).object);

  static final _id_getLabel = jniAccessors.getMethodIDOf(
      _classRef, "getLabel", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getLabel()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getLabel() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLabel, jni.JniType.objectType, []).object);

  static final _id_getIndex =
      jniAccessors.getMethodIDOf(_classRef, "getIndex", "()I");

  /// from: public int getIndex()
  ///
  /// Return the index that was supplied in the constructor.
  /// If the option was constructed without an index, -1 is returned.
  int getIndex() => jniAccessors.callMethodWithArgs(
      reference, _id_getIndex, jni.JniType.intType, []).integer;

  static final _id_countSynonyms =
      jniAccessors.getMethodIDOf(_classRef, "countSynonyms", "()I");

  /// from: public int countSynonyms()
  int countSynonyms() => jniAccessors.callMethodWithArgs(
      reference, _id_countSynonyms, jni.JniType.intType, []).integer;

  static final _id_getSynonymAt = jniAccessors.getMethodIDOf(
      _classRef, "getSynonymAt", "(I)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getSynonymAt(int index)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getSynonymAt(int index) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSynonymAt, jni.JniType.objectType, [index]).object);

  static final _id_setExtras = jniAccessors.getMethodIDOf(
      _classRef, "setExtras", "(Landroid/os/Bundle;)V");

  /// from: public void setExtras(android.os.Bundle extras)
  ///
  /// Set optional extra information associated with this option.  Note that this
  /// method takes ownership of the supplied extras Bundle.
  void setExtras(bundle_.Bundle extras) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setExtras,
      jni.JniType.voidType,
      [extras.reference]).check();

  static final _id_getExtras = jniAccessors.getMethodIDOf(
      _classRef, "getExtras", "()Landroid/os/Bundle;");

  /// from: public android.os.Bundle getExtras()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return any optional extras information associated with this option, or null
  /// if there is none.  Note that this method returns a reference to the actual
  /// extras Bundle in the option, so modifications to it will directly modify the
  /// extras in the option.
  bundle_.Bundle getExtras() =>
      bundle_.Bundle.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getExtras, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}

/// from: android.app.VoiceInteractor$ConfirmationRequest
///
/// Confirms an operation with the user via the trusted system
/// VoiceInteractionService.  This allows an Activity to complete an unsafe operation that
/// would require the user to touch the screen when voice interaction mode is not enabled.
/// The result of the confirmation will be returned through an asynchronous call to
/// either \#onConfirmationResult(boolean, android.os.Bundle) or
/// \#onCancel() - these methods should be overridden to define the application specific
///  behavior.
///
/// In some cases this may be a simple yes / no confirmation or the confirmation could
/// include context information about how the action will be completed
/// (e.g. booking a cab might include details about how long until the cab arrives)
/// so the user can give a confirmation.
class VoiceInteractor_ConfirmationRequest extends VoiceInteractor_Request {
  static final _classRef = jniAccessors
      .getClassOf("android/app/VoiceInteractor\$ConfirmationRequest");
  VoiceInteractor_ConfirmationRequest.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/app/VoiceInteractor\$Prompt;Landroid/os/Bundle;)V");

  /// from: public void <init>(android.app.VoiceInteractor.Prompt prompt, android.os.Bundle extras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new confirmation request.
  ///@param prompt Optional confirmation to speak to the user or null if nothing
  ///     should be spoken.
  /// This value may be {@code null}.
  ///@param extras Additional optional information or null.
  ///
  /// This value may be {@code null}.
  VoiceInteractor_ConfirmationRequest.ctor1(
      VoiceInteractor_Prompt prompt, bundle_.Bundle extras)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [prompt.reference, extras.reference]).object);

  static final _id_onConfirmationResult = jniAccessors.getMethodIDOf(
      _classRef, "onConfirmationResult", "(ZLandroid/os/Bundle;)V");

  /// from: public void onConfirmationResult(boolean confirmed, android.os.Bundle result)
  ///
  /// Handle the confirmation result. Override this method to define
  /// the behavior when the user confirms or rejects the operation.
  ///@param confirmed Whether the user confirmed or rejected the operation.
  ///@param result Additional result information or null.
  void onConfirmationResult(bool confirmed, bundle_.Bundle result) =>
      jniAccessors.callMethodWithArgs(reference, _id_onConfirmationResult,
          jni.JniType.voidType, [confirmed, result.reference]).check();
}

/// from: android.app.VoiceInteractor$CompleteVoiceRequest
///
/// Reports that the current interaction was successfully completed with voice, so the
/// application can report the final status to the user. When the response comes back, the
/// voice system has handled the request and is ready to switch; at that point the
/// application can start a new non-voice activity or finish.  Be sure when starting the new
/// activity to use android.content.Intent\#FLAG_ACTIVITY_NEW_TASK Intent.FLAG_ACTIVITY_NEW_TASK to keep the new activity out of the current voice
/// interaction task.
class VoiceInteractor_CompleteVoiceRequest extends VoiceInteractor_Request {
  static final _classRef = jniAccessors
      .getClassOf("android/app/VoiceInteractor\$CompleteVoiceRequest");
  VoiceInteractor_CompleteVoiceRequest.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/app/VoiceInteractor\$Prompt;Landroid/os/Bundle;)V");

  /// from: public void <init>(android.app.VoiceInteractor.Prompt prompt, android.os.Bundle extras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new completed voice interaction request.
  ///@param prompt Optional message to speak to the user about the completion status of
  ///     the task or null if nothing should be spoken.
  /// This value may be {@code null}.
  ///@param extras Additional optional information or null.
  ///
  /// This value may be {@code null}.
  VoiceInteractor_CompleteVoiceRequest.ctor1(
      VoiceInteractor_Prompt prompt, bundle_.Bundle extras)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [prompt.reference, extras.reference]).object);

  static final _id_onCompleteResult = jniAccessors.getMethodIDOf(
      _classRef, "onCompleteResult", "(Landroid/os/Bundle;)V");

  /// from: public void onCompleteResult(android.os.Bundle result)
  void onCompleteResult(bundle_.Bundle result) =>
      jniAccessors.callMethodWithArgs(reference, _id_onCompleteResult,
          jni.JniType.voidType, [result.reference]).check();
}

/// from: android.app.VoiceInteractor$CommandRequest
///
/// Execute a vendor-specific command using the trusted system VoiceInteractionService.
/// This allows an Activity to request additional information from the user needed to
/// complete an action (e.g. booking a table might have several possible times that the
/// user could select from or an app might need the user to agree to a terms of service).
/// The result of the confirmation will be returned through an asynchronous call to
/// either \#onCommandResult(boolean, android.os.Bundle) or
/// \#onCancel().
///
/// The command is a string that describes the generic operation to be performed.
/// The command will determine how the properties in extras are interpreted and the set of
/// available commands is expected to grow over time.  An example might be
/// "com.google.voice.commands.REQUEST_NUMBER_BAGS" to request the number of bags as part of
/// airline check-in.  (This is not an actual working example.)
class VoiceInteractor_CommandRequest extends VoiceInteractor_Request {
  static final _classRef =
      jniAccessors.getClassOf("android/app/VoiceInteractor\$CommandRequest");
  VoiceInteractor_CommandRequest.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;Landroid/os/Bundle;)V");

  /// from: public void <init>(java.lang.String command, android.os.Bundle args)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new generic command request.
  ///@param command The desired command to perform.
  ///@param args Additional arguments to control execution of the command.
  VoiceInteractor_CommandRequest.ctor1(
      jni.JniString command, bundle_.Bundle args)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [command.reference, args.reference]).object);

  static final _id_onCommandResult = jniAccessors.getMethodIDOf(
      _classRef, "onCommandResult", "(ZLandroid/os/Bundle;)V");

  /// from: public void onCommandResult(boolean isCompleted, android.os.Bundle result)
  ///
  /// Results for CommandRequest can be returned in partial chunks.
  /// The isCompleted is set to true iff all results have been returned, indicating the
  /// CommandRequest has completed.
  void onCommandResult(bool isCompleted, bundle_.Bundle result) =>
      jniAccessors.callMethodWithArgs(reference, _id_onCommandResult,
          jni.JniType.voidType, [isCompleted, result.reference]).check();
}

/// from: android.app.VoiceInteractor$AbortVoiceRequest
///
/// Reports that the current interaction can not be complete with voice, so the
/// application will need to switch to a traditional input UI.  Applications should
/// only use this when they need to completely bail out of the voice interaction
/// and switch to a traditional UI.  When the response comes back, the voice
/// system has handled the request and is ready to switch; at that point the application
/// can start a new non-voice activity.  Be sure when starting the new activity
/// to use android.content.Intent\#FLAG_ACTIVITY_NEW_TASK Intent.FLAG_ACTIVITY_NEW_TASK to keep the new activity out of the current voice
/// interaction task.
class VoiceInteractor_AbortVoiceRequest extends VoiceInteractor_Request {
  static final _classRef =
      jniAccessors.getClassOf("android/app/VoiceInteractor\$AbortVoiceRequest");
  VoiceInteractor_AbortVoiceRequest.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/app/VoiceInteractor\$Prompt;Landroid/os/Bundle;)V");

  /// from: public void <init>(android.app.VoiceInteractor.Prompt prompt, android.os.Bundle extras)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new voice abort request.
  ///@param prompt Optional message to speak to the user indicating why the task could
  ///     not be completed by voice or null if nothing should be spoken.
  /// This value may be {@code null}.
  ///@param extras Additional optional information or null.
  ///
  /// This value may be {@code null}.
  VoiceInteractor_AbortVoiceRequest.ctor1(
      VoiceInteractor_Prompt prompt, bundle_.Bundle extras)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [prompt.reference, extras.reference]).object);

  static final _id_onAbortResult = jniAccessors.getMethodIDOf(
      _classRef, "onAbortResult", "(Landroid/os/Bundle;)V");

  /// from: public void onAbortResult(android.os.Bundle result)
  void onAbortResult(bundle_.Bundle result) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onAbortResult,
      jni.JniType.voidType,
      [result.reference]).check();
}