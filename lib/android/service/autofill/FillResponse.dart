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

import "../../content/IntentSender.dart" as intentsender_;

import "../../widget/RemoteViews.dart" as remoteviews_;

import "Dataset.dart" as dataset_;

import "SaveInfo.dart" as saveinfo_;

import "../../os/Bundle.dart" as bundle_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.autofill.FillResponse
///
/// Response for an AutofillService\#onFillRequest(FillRequest, android.os.CancellationSignal, FillCallback).
///
/// See the main AutofillService documentation for more details and examples.
class FillResponse extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/autofill/FillResponse");
  FillResponse.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.service.autofill.FillResponse> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int FLAG_DISABLE_ACTIVITY_ONLY
  ///
  /// Flag used to change the behavior of FillResponse.Builder\#disableAutofill(long)&mdash;
  /// when this flag is passed to Builder\#setFlags(int), autofill is disabled only for the
  /// activiy that generated the FillRequest, not the whole app.
  static const FLAG_DISABLE_ACTIVITY_ONLY = 2;

  /// from: static public final int FLAG_TRACK_CONTEXT_COMMITED
  ///
  /// Flag used to generate FillEventHistory.Event events of type
  /// FillEventHistory.Event\#TYPE_CONTEXT_COMMITTED&mdash;if this flag is not passed to
  /// Builder\#setFlags(int), these events are not generated.
  static const FLAG_TRACK_CONTEXT_COMMITED = 1;

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/service/autofill/FillResponse\$Builder;)V");

  /// from: void <init>(android.service.autofill.FillResponse.Builder builder)
  /// The returned object must be deleted after use, by calling the `delete` method.
  FillResponse(FillResponse_Builder builder)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [builder.reference]).object);

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

  /// from: public void writeToParcel(android.os.Parcel parcel, int flags)
  void writeToParcel(parcel_.Parcel parcel, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [parcel.reference, flags]).check();
}

/// from: android.service.autofill.FillResponse$Builder
///
/// Builder for FillResponse objects. You must to provide at least
/// one dataset or set an authentication intent with a presentation view.
class FillResponse_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/autofill/FillResponse\$Builder");
  FillResponse_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  FillResponse_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setAuthentication = jniAccessors.getMethodIDOf(
      _classRef,
      "setAuthentication",
      "([Landroid/view/autofill/AutofillId;Landroid/content/IntentSender;Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse\$Builder;");

  /// from: public android.service.autofill.FillResponse.Builder setAuthentication(android.view.autofill.AutofillId[] ids, android.content.IntentSender authentication, android.widget.RemoteViews presentation)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Triggers a custom UI before before autofilling the screen with any data set in this
  /// response.
  ///
  /// __Note:__ Although the name of this method suggests that it should be used just for
  /// authentication flow, it can be used for other advanced flows; see AutofillService
  /// for examples.
  ///
  /// This is typically useful when a user interaction is required to unlock their
  /// data vault if you encrypt the data set labels and data set data. It is recommended
  /// to encrypt only the sensitive data and not the data set labels which would allow
  /// auth on the data set level leading to a better user experience. Note that if you
  /// use sensitive data as a label, for example an email address, then it should also
  /// be encrypted. The provided android.app.PendingIntent intent must be an
  /// Activity which implements your authentication flow. Also if you provide an auth
  /// intent you also need to specify the presentation view to be shown in the fill UI
  /// for the user to trigger your authentication flow.
  ///
  /// When a user triggers autofill, the system launches the provided intent
  /// whose extras will have the
  /// android.view.autofill.AutofillManager\#EXTRA_ASSIST_STRUCTURE screen
  /// content and your android.view.autofill.AutofillManager\#EXTRA_CLIENT_STATE client state. Once you complete your authentication flow you should set the
  /// Activity result to android.app.Activity\#RESULT_OK and set the
  /// android.view.autofill.AutofillManager\#EXTRA_AUTHENTICATION_RESULT extra
  /// with the fully populated FillResponse response (or {@code null} if the screen
  /// cannot be autofilled).
  ///
  /// For example, if you provided an empty FillResponse response because the
  /// user's data was locked and marked that the response needs an authentication then
  /// in the response returned if authentication succeeds you need to provide all
  /// available data sets some of which may need to be further authenticated, for
  /// example a credit card whose CVV needs to be entered.
  ///
  /// If you provide an authentication intent you must also provide a presentation
  /// which is used to visualize visualize the response for triggering the authentication
  /// flow.
  ///
  /// __Note:__ Do not make the provided pending intent
  /// immutable by using android.app.PendingIntent\#FLAG_IMMUTABLE as the
  /// platform needs to fill in the authentication arguments.
  ///
  /// Theme does not work with RemoteViews layout. Avoid hardcoded text color
  /// or background color: Autofill on different platforms may have different themes.
  ///@param authentication Intent to an activity with your authentication flow.
  /// This value may be {@code null}.
  ///@param presentation The presentation to visualize the response.
  /// This value may be {@code null}.
  ///@param ids id of Views that when focused will display the authentication UI.
  ///
  /// This value must never be {@code null}.
  ///@return This builder.
  ///@throws IllegalArgumentException if any of the following occurs:
  /// <ul>
  ///   <li>{@code ids} is {@code null}</li>
  ///   <li>{@code ids} is empty</li>
  ///   <li>{@code ids} contains a {@code null} element</li>
  ///   <li>both {@code authentication} and {@code presentation} are {@code null}</li>
  ///   <li>both {@code authentication} and {@code presentation} are non-{@code null}</li>
  /// </ul>
  ///@throws IllegalStateException if a \#setHeader(RemoteViews) header or a
  /// \#setFooter(RemoteViews) footer are already set for this builder.
  ///@see android.app.PendingIntent\#getIntentSender()
  FillResponse_Builder setAuthentication(
          jni.JniObject ids,
          intentsender_.IntentSender authentication,
          remoteviews_.RemoteViews presentation) =>
      FillResponse_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setAuthentication, jni.JniType.objectType, [
        ids.reference,
        authentication.reference,
        presentation.reference
      ]).object);

  static final _id_setIgnoredIds = jniAccessors.getMethodIDOf(
      _classRef,
      "setIgnoredIds",
      "([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse\$Builder;");

  /// from: public android.service.autofill.FillResponse.Builder setIgnoredIds(android.view.autofill.AutofillId[] ids)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Specifies views that should not trigger new
  /// AutofillService\#onFillRequest(FillRequest, android.os.CancellationSignal,
  /// FillCallback) requests.
  ///
  /// This is typically used when the service cannot autofill the view; for example, a
  /// text field representing the result of a Captcha challenge.
  FillResponse_Builder setIgnoredIds(jni.JniObject ids) =>
      FillResponse_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setIgnoredIds, jni.JniType.objectType, [ids.reference]).object);

  static final _id_addDataset = jniAccessors.getMethodIDOf(
      _classRef,
      "addDataset",
      "(Landroid/service/autofill/Dataset;)Landroid/service/autofill/FillResponse\$Builder;");

  /// from: public android.service.autofill.FillResponse.Builder addDataset(android.service.autofill.Dataset dataset)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds a new Dataset to this response.
  ///
  /// __Note: __ on Android android.os.Build.VERSION_CODES\#O, the total number of
  /// datasets is limited by the Binder transaction size, so it's recommended to keep it
  /// small (in the range of 10-20 at most) and use pagination by adding a fake
  /// Dataset.Builder\#setAuthentication(IntentSender) authenticated dataset at the end
  /// with a presentation string like "Next 10" that would return a new FillResponse
  /// with the next 10 datasets, and so on. This limitation was lifted on
  /// Android android.os.Build.VERSION_CODES\#O_MR1, although the Binder transaction
  /// size can still be reached if each dataset itself is too big.
  ///@param dataset This value may be {@code null}.
  ///@return This builder.
  ///
  /// This value will never be {@code null}.
  FillResponse_Builder addDataset(dataset_.Dataset dataset) =>
      FillResponse_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_addDataset, jni.JniType.objectType, [dataset.reference]).object);

  static final _id_setSaveInfo = jniAccessors.getMethodIDOf(
      _classRef,
      "setSaveInfo",
      "(Landroid/service/autofill/SaveInfo;)Landroid/service/autofill/FillResponse\$Builder;");

  /// from: public android.service.autofill.FillResponse.Builder setSaveInfo(android.service.autofill.SaveInfo saveInfo)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the SaveInfo associated with this response.
  ///@param saveInfo This value must never be {@code null}.
  ///@return This builder.
  ///
  /// This value will never be {@code null}.
  FillResponse_Builder setSaveInfo(saveinfo_.SaveInfo saveInfo) =>
      FillResponse_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setSaveInfo,
          jni.JniType.objectType,
          [saveInfo.reference]).object);

  static final _id_setClientState = jniAccessors.getMethodIDOf(
      _classRef,
      "setClientState",
      "(Landroid/os/Bundle;)Landroid/service/autofill/FillResponse\$Builder;");

  /// from: public android.service.autofill.FillResponse.Builder setClientState(android.os.Bundle clientState)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets a bundle with state that is passed to subsequent APIs that manipulate this response.
  ///
  /// You can use this bundle to store intermediate state that is passed to subsequent calls
  /// to AutofillService\#onFillRequest(FillRequest, android.os.CancellationSignal,
  /// FillCallback) and AutofillService\#onSaveRequest(SaveRequest, SaveCallback), and
  /// you can also retrieve it by calling FillEventHistory.Event\#getClientState().
  ///
  /// If this method is called on multiple FillResponse objects for the same
  /// screen, just the latest bundle is passed back to the service.
  ///@param clientState The custom client state.
  /// This value may be {@code null}.
  ///@return This builder.
  FillResponse_Builder setClientState(bundle_.Bundle clientState) =>
      FillResponse_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setClientState,
          jni.JniType.objectType,
          [clientState.reference]).object);

  static final _id_setFieldClassificationIds = jniAccessors.getMethodIDOf(
      _classRef,
      "setFieldClassificationIds",
      "([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/FillResponse\$Builder;");

  /// from: public android.service.autofill.FillResponse.Builder setFieldClassificationIds(android.view.autofill.AutofillId[] ids)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets which fields are used for
  /// <a href="AutofillService.html\#FieldClassification">field classification</a>
  ///
  /// __Note:__ This method automatically adds the
  /// FillResponse\#FLAG_TRACK_CONTEXT_COMMITED to the \#setFlags(int) flags.
  ///@throws IllegalArgumentException is length of {@code ids} args is more than
  /// UserData\#getMaxFieldClassificationIdsSize().
  ///@throws IllegalStateException if \#build() or \#disableAutofill(long) was
  /// already called.
  ///@throws NullPointerException if {@code ids} or any element on it is {@code null}.
  ///@param ids This value must never be {@code null}.
  FillResponse_Builder setFieldClassificationIds(jni.JniObject ids) =>
      FillResponse_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setFieldClassificationIds,
          jni.JniType.objectType,
          [ids.reference]).object);

  static final _id_setFlags = jniAccessors.getMethodIDOf(_classRef, "setFlags",
      "(I)Landroid/service/autofill/FillResponse\$Builder;");

  /// from: public android.service.autofill.FillResponse.Builder setFlags(int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets flags changing the response behavior.
  ///@param flags a combination of \#FLAG_TRACK_CONTEXT_COMMITED and
  /// \#FLAG_DISABLE_ACTIVITY_ONLY, or {@code 0}.
  ///
  /// Value is either <code>0</code> or a combination of android.service.autofill.FillResponse\#FLAG_TRACK_CONTEXT_COMMITED, and android.service.autofill.FillResponse\#FLAG_DISABLE_ACTIVITY_ONLY
  ///@return This builder.
  FillResponse_Builder setFlags(int flags) =>
      FillResponse_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setFlags, jni.JniType.objectType, [flags]).object);

  static final _id_disableAutofill = jniAccessors.getMethodIDOf(_classRef,
      "disableAutofill", "(J)Landroid/service/autofill/FillResponse\$Builder;");

  /// from: public android.service.autofill.FillResponse.Builder disableAutofill(long duration)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Disables autofill for the app or activity.
  ///
  /// This method is useful to optimize performance in cases where the service knows it
  /// can not autofill an app&mdash;for example, when the service has a list of "blacklisted"
  /// apps such as office suites.
  ///
  /// By default, it disables autofill for all activities in the app, unless the response is
  /// \#setFlags(int) flagged with \#FLAG_DISABLE_ACTIVITY_ONLY.
  ///
  /// Autofill for the app or activity is automatically re-enabled after any of the
  /// following conditions:
  ///
  /// <ol>
  ///   <li>{@code duration} milliseconds have passed.
  ///   <li>The autofill service for the user has changed.
  ///   <li>The device has rebooted.
  /// </ol>
  ///
  /// __Note:__ Activities that are running when autofill is re-enabled remain
  /// disabled for autofill until they finish and restart.
  ///@param duration duration to disable autofill, in milliseconds.
  ///@return this builder
  ///@throws IllegalArgumentException if {@code duration} is not a positive number.
  ///@throws IllegalStateException if either \#addDataset(Dataset),
  ///       \#setAuthentication(AutofillId[], IntentSender, RemoteViews),
  ///       \#setSaveInfo(SaveInfo), \#setClientState(Bundle), or
  ///       \#setFieldClassificationIds(AutofillId...) was already called.
  FillResponse_Builder disableAutofill(int duration) =>
      FillResponse_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_disableAutofill, jni.JniType.objectType, [duration]).object);

  static final _id_setHeader = jniAccessors.getMethodIDOf(
      _classRef,
      "setHeader",
      "(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse\$Builder;");

  /// from: public android.service.autofill.FillResponse.Builder setHeader(android.widget.RemoteViews header)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets a header to be shown as the first element in the list of datasets.
  ///
  /// When this method is called, you must also \#addDataset(Dataset) add a dataset,
  /// otherwise \#build() throws an IllegalStateException. Similarly, this
  /// method should only be used on FillResponse FillResponses that do not require
  /// authentication (as the header could have been set directly in the main presentation in
  /// these cases).
  ///
  /// Theme does not work with RemoteViews layout. Avoid hardcoded text color
  /// or background color: Autofill on different platforms may have different themes.
  ///@param header a presentation to represent the header. This presentation is not clickable
  /// &mdash;calling
  /// RemoteViews\#setOnClickPendingIntent(int, android.app.PendingIntent) on it would
  /// have no effect.
  ///
  /// This value must never be {@code null}.
  ///@return this builder
  ///@throws IllegalStateException if an
  /// \#setAuthentication(AutofillId[], IntentSender, RemoteViews) authentication was
  /// already set for this builder.
  FillResponse_Builder setHeader(remoteviews_.RemoteViews header) =>
      FillResponse_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setHeader, jni.JniType.objectType, [header.reference]).object);

  static final _id_setFooter = jniAccessors.getMethodIDOf(
      _classRef,
      "setFooter",
      "(Landroid/widget/RemoteViews;)Landroid/service/autofill/FillResponse\$Builder;");

  /// from: public android.service.autofill.FillResponse.Builder setFooter(android.widget.RemoteViews footer)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets a footer to be shown as the last element in the list of datasets.
  ///
  /// When this method is called, you must also \#addDataset(Dataset) add a dataset,
  /// otherwise \#build() throws an IllegalStateException. Similarly, this
  /// method should only be used on FillResponse FillResponses that do not require
  /// authentication (as the footer could have been set directly in the main presentation in
  /// these cases).
  ///
  /// Theme does not work with RemoteViews layout. Avoid hardcoded text color
  /// or background color: Autofill on different platforms may have different themes.
  ///@param footer a presentation to represent the footer. This presentation is not clickable
  /// &mdash;calling
  /// RemoteViews\#setOnClickPendingIntent(int, android.app.PendingIntent) on it would
  /// have no effect.
  ///
  /// This value must never be {@code null}.
  ///@return this builder
  ///@throws IllegalStateException if the FillResponse
  /// \#setAuthentication(AutofillId[], IntentSender, RemoteViews) requires authentication.
  FillResponse_Builder setFooter(remoteviews_.RemoteViews footer) =>
      FillResponse_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setFooter, jni.JniType.objectType, [footer.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/service/autofill/FillResponse;");

  /// from: public android.service.autofill.FillResponse build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Builds a new FillResponse instance.
  ///@throws IllegalStateException if any of the following conditions occur:
  /// <ol>
  ///   <li>\#build() was already called.
  ///   <li>No call was made to \#addDataset(Dataset),
  ///       \#setAuthentication(AutofillId[], IntentSender, RemoteViews),
  ///       \#setSaveInfo(SaveInfo), \#disableAutofill(long),
  ///       \#setClientState(Bundle),
  ///       or \#setFieldClassificationIds(AutofillId...).
  ///   <li>\#setHeader(RemoteViews) or \#setFooter(RemoteViews) is called
  ///       without any previous calls to \#addDataset(Dataset).
  /// </ol>
  ///@return A built response.
  FillResponse build() => FillResponse.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_build, jni.JniType.objectType, []).object);
}