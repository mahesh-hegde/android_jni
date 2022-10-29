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

import "../../os/Parcelable.dart" as parcelable_;

import "../../os/Parcel.dart" as parcel_;

import "CustomDescription.dart" as customdescription_;

import "../../content/IntentSender.dart" as intentsender_;

import "Validator.dart" as validator_;

import "Sanitizer.dart" as sanitizer_;

import "../../view/autofill/AutofillId.dart" as autofillid_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.service.autofill.SaveInfo
///
/// Information used to indicate that an AutofillService is interested on saving the
/// user-inputed data for future use, through a
/// AutofillService\#onSaveRequest(SaveRequest, SaveCallback)
/// call.
///
/// A SaveInfo is always associated with a FillResponse, and it contains at least
/// two pieces of information:
///
/// <ol>
///   <li>The type(s) of user data (like password or credit card info) that would be saved.
///   <li>The minimum set of views (represented by their AutofillId) that need to be changed
///       to trigger a save request.
/// </ol>
///
/// Typically, the SaveInfo contains the same {@code id}s as the Dataset:
///
/// <pre class="prettyprint">
///   new FillResponse.Builder()
///       .addDataset(new Dataset.Builder()
///           .setValue(id1, AutofillValue.forText("homer"), createPresentation("homer")) // username
///           .setValue(id2, AutofillValue.forText("D'OH!"), createPresentation("password for homer")) // password
///           .build())
///       .setSaveInfo(new SaveInfo.Builder(
///           SaveInfo.SAVE_DATA_TYPE_USERNAME | SaveInfo.SAVE_DATA_TYPE_PASSWORD,
///           new AutofillId[] { id1, id2 }).build())
///       .build();
/// </pre>
///
/// The save type flags are used to display the appropriate strings in the autofill save UI.
/// You can pass multiple values, but try to keep it short if possible. In the above example, just
/// {@code SaveInfo.SAVE_DATA_TYPE_PASSWORD} would be enough.
///
/// There might be cases where the AutofillService knows how to fill the screen,
/// but the user has no data for it. In that case, the FillResponse should contain just the
/// SaveInfo, but no Dataset Datasets:
///
/// <pre class="prettyprint">
///   new FillResponse.Builder()
///       .setSaveInfo(new SaveInfo.Builder(SaveInfo.SAVE_DATA_TYPE_PASSWORD,
///           new AutofillId[] { id1, id2 }).build())
///       .build();
/// </pre>
///
/// There might be cases where the user data in the AutofillService is enough
/// to populate some fields but not all, and the service would still be interested on saving the
/// other fields. In that case, the service could set the
/// SaveInfo.Builder\#setOptionalIds(AutofillId[]) as well:
///
/// <pre class="prettyprint">
///   new FillResponse.Builder()
///       .addDataset(new Dataset.Builder()
///           .setValue(id1, AutofillValue.forText("742 Evergreen Terrace"),
///               createPresentation("742 Evergreen Terrace")) // street
///           .setValue(id2, AutofillValue.forText("Springfield"),
///               createPresentation("Springfield")) // city
///           .build())
///       .setSaveInfo(new SaveInfo.Builder(SaveInfo.SAVE_DATA_TYPE_ADDRESS,
///           new AutofillId[] { id1, id2 }) // street and  city
///           .setOptionalIds(new AutofillId[] { id3, id4 }) // state and zipcode
///           .build())
///       .build();
/// </pre>
///
/// <a name="TriggeringSaveRequest"></a>
/// <h3>Triggering a save request</h3>
///
/// The AutofillService\#onSaveRequest(SaveRequest, SaveCallback) can be triggered after
/// any of the following events:
/// <ul>
///   <li>The Activity finishes.
///   <li>The app explicitly calls AutofillManager\#commit().
///   <li>All required views become invisible (if the SaveInfo was created with the
///       \#FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE flag).
///   <li>The user clicks a specific view (defined by Builder\#setTriggerId(AutofillId).
/// </ul>
///
/// But it is only triggered when all conditions below are met:
/// <ul>
///   <li>The SaveInfo associated with the FillResponse is not {@code null}.
///   <li>The AutofillValues of all required views (as set by the {@code requiredIds} passed
///       to the SaveInfo.Builder constructor are not empty.
///   <li>The AutofillValue of at least one view (be it required or optional) has changed
///       (i.e., it's neither the same value passed in a Dataset, nor the initial value
///       presented in the view).
///   <li>There is no Dataset in the last FillResponse that completely matches the
///       screen state (i.e., all required and optional fields in the dataset have the same value as
///       the fields in the screen).
///   <li>The user explicitly tapped the autofill save UI asking to save data for autofill.
/// </ul>
///
/// <a name="CustomizingSaveUI"></a>
/// <h3>Customizing the autofill save UI</h3>
///
/// The service can also customize some aspects of the autofill save UI:
/// <ul>
///   <li>Add a simple subtitle by calling Builder\#setDescription(CharSequence).
///   <li>Add a customized subtitle by calling
///       Builder\#setCustomDescription(CustomDescription).
///   <li>Customize the button used to reject the save request by calling
///       Builder\#setNegativeAction(int, IntentSender).
///   <li>Decide whether the UI should be shown based on the user input validation by calling
///       Builder\#setValidator(Validator).
/// </ul>
class SaveInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/autofill/SaveInfo");
  SaveInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.service.autofill.SaveInfo> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int FLAG_DONT_SAVE_ON_FINISH
  ///
  /// By default, a save request is automatically <a href="\#TriggeringSaveRequest">triggered</a>
  /// once the Activity finishes. If this flag is set, finishing the activity doesn't
  /// trigger a save request.
  ///
  /// This flag is typically used in conjunction with Builder\#setTriggerId(AutofillId).
  static const FLAG_DONT_SAVE_ON_FINISH = 2;

  /// from: static public final int FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE
  ///
  /// Usually, a save request is only automatically <a href="\#TriggeringSaveRequest">triggered</a>
  /// once the Activity finishes. If this flag is set, it is triggered once all saved views
  /// become invisible.
  static const FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE = 1;

  /// from: static public final int NEGATIVE_BUTTON_STYLE_CANCEL
  ///
  /// Style for the negative button of the save UI to cancel the
  /// save operation. In this case, the user tapping the negative
  /// button signals that they would prefer to not save the filled
  /// content.
  static const NEGATIVE_BUTTON_STYLE_CANCEL = 0;

  /// from: static public final int NEGATIVE_BUTTON_STYLE_REJECT
  ///
  /// Style for the negative button of the save UI to reject the
  /// save operation. This could be useful if the user needs to
  /// opt-in your service and the save prompt is an advertisement
  /// of the potential value you can add to the user. In this
  /// case, the user tapping the negative button sends a strong
  /// signal that the feature may not be useful and you may
  /// consider some backoff strategy.
  static const NEGATIVE_BUTTON_STYLE_REJECT = 1;

  /// from: static public final int SAVE_DATA_TYPE_ADDRESS
  ///
  /// Type used on when the FillResponse represents a physical address (such as street,
  /// city, state, etc).
  static const SAVE_DATA_TYPE_ADDRESS = 2;

  /// from: static public final int SAVE_DATA_TYPE_CREDIT_CARD
  ///
  /// Type used when the FillResponse represents a credit card.
  static const SAVE_DATA_TYPE_CREDIT_CARD = 4;

  /// from: static public final int SAVE_DATA_TYPE_EMAIL_ADDRESS
  ///
  /// Type used when the FillResponse represents just an email address, without a password.
  static const SAVE_DATA_TYPE_EMAIL_ADDRESS = 16;

  /// from: static public final int SAVE_DATA_TYPE_GENERIC
  ///
  /// Type used when the service can save the contents of a screen, but cannot describe what
  /// the content is for.
  static const SAVE_DATA_TYPE_GENERIC = 0;

  /// from: static public final int SAVE_DATA_TYPE_PASSWORD
  ///
  /// Type used when the FillResponse represents user credentials that have a password.
  static const SAVE_DATA_TYPE_PASSWORD = 1;

  /// from: static public final int SAVE_DATA_TYPE_USERNAME
  ///
  /// Type used when the FillResponse represents just an username, without a password.
  static const SAVE_DATA_TYPE_USERNAME = 8;

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

/// from: android.service.autofill.SaveInfo$Builder
///
/// A builder for SaveInfo objects.
class SaveInfo_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/service/autofill/SaveInfo\$Builder");
  SaveInfo_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(I[Landroid/view/autofill/AutofillId;)V");

  /// from: public void <init>(int type, android.view.autofill.AutofillId[] requiredIds)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new builder.
  ///@param type the type of information the associated FillResponse represents. It
  /// can be any combination of SaveInfo\#SAVE_DATA_TYPE_GENERIC,
  /// SaveInfo\#SAVE_DATA_TYPE_PASSWORD,
  /// SaveInfo\#SAVE_DATA_TYPE_ADDRESS, SaveInfo\#SAVE_DATA_TYPE_CREDIT_CARD,
  /// SaveInfo\#SAVE_DATA_TYPE_USERNAME, or
  /// SaveInfo\#SAVE_DATA_TYPE_EMAIL_ADDRESS.
  /// Value is either <code>0</code> or a combination of android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_GENERIC, android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_PASSWORD, android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_ADDRESS, android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_CREDIT_CARD, android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_USERNAME, and android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_EMAIL_ADDRESS
  ///@param requiredIds ids of all required views that will trigger a save request.
  ///
  /// See SaveInfo for more info.
  ///
  /// This value must never be {@code null}.
  ///@throws IllegalArgumentException if {@code requiredIds} is {@code null} or empty, or if
  /// it contains any {@code null} entry.
  SaveInfo_Builder(int type, jni.JniObject requiredIds)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [type, requiredIds.reference]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int type)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new builder when no id is required.
  ///
  /// When using this builder, caller must call \#setOptionalIds(AutofillId[]) before
  /// calling \#build().
  ///@param type the type of information the associated FillResponse represents. It
  /// can be any combination of SaveInfo\#SAVE_DATA_TYPE_GENERIC,
  /// SaveInfo\#SAVE_DATA_TYPE_PASSWORD,
  /// SaveInfo\#SAVE_DATA_TYPE_ADDRESS, SaveInfo\#SAVE_DATA_TYPE_CREDIT_CARD,
  /// SaveInfo\#SAVE_DATA_TYPE_USERNAME, or
  /// SaveInfo\#SAVE_DATA_TYPE_EMAIL_ADDRESS.
  ///
  /// See SaveInfo for more info.
  ///
  /// Value is either <code>0</code> or a combination of android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_GENERIC, android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_PASSWORD, android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_ADDRESS, android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_CREDIT_CARD, android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_USERNAME, and android.service.autofill.SaveInfo\#SAVE_DATA_TYPE_EMAIL_ADDRESS
  SaveInfo_Builder.ctor1(int type)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [type]).object);

  static final _id_setFlags = jniAccessors.getMethodIDOf(
      _classRef, "setFlags", "(I)Landroid/service/autofill/SaveInfo\$Builder;");

  /// from: public android.service.autofill.SaveInfo.Builder setFlags(int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets flags changing the save behavior.
  ///@param flags \#FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE,
  /// \#FLAG_DONT_SAVE_ON_FINISH, or {@code 0}.
  /// Value is either <code>0</code> or a combination of android.service.autofill.SaveInfo\#FLAG_SAVE_ON_ALL_VIEWS_INVISIBLE, and android.service.autofill.SaveInfo\#FLAG_DONT_SAVE_ON_FINISH
  ///@return This builder.
  ///
  /// This value will never be {@code null}.
  SaveInfo_Builder setFlags(int flags) =>
      SaveInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setFlags, jni.JniType.objectType, [flags]).object);

  static final _id_setOptionalIds = jniAccessors.getMethodIDOf(
      _classRef,
      "setOptionalIds",
      "([Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo\$Builder;");

  /// from: public android.service.autofill.SaveInfo.Builder setOptionalIds(android.view.autofill.AutofillId[] ids)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the ids of additional, optional views the service would be interested to save.
  ///
  /// See SaveInfo for more info.
  ///@param ids The ids of the optional views.
  /// This value must never be {@code null}.
  ///@return This builder.
  ///@throws IllegalArgumentException if {@code ids} is {@code null} or empty, or if
  /// it contains any {@code null} entry.
  SaveInfo_Builder setOptionalIds(jni.JniObject ids) =>
      SaveInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setOptionalIds, jni.JniType.objectType, [ids.reference]).object);

  static final _id_setDescription = jniAccessors.getMethodIDOf(
      _classRef,
      "setDescription",
      "(Ljava/lang/CharSequence;)Landroid/service/autofill/SaveInfo\$Builder;");

  /// from: public android.service.autofill.SaveInfo.Builder setDescription(java.lang.CharSequence description)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets an optional description to be shown in the UI when the user is asked to save.
  ///
  /// Typically, it describes how the data will be stored by the service, so it can help
  /// users to decide whether they can trust the service to save their data.
  ///@param description a succint description.
  /// This value may be {@code null}.
  ///@return This Builder.
  ///
  /// This value will never be {@code null}.
  ///@throws IllegalStateException if this call was made after calling
  /// \#setCustomDescription(CustomDescription).
  SaveInfo_Builder setDescription(jni.JniObject description) =>
      SaveInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setDescription,
          jni.JniType.objectType,
          [description.reference]).object);

  static final _id_setCustomDescription = jniAccessors.getMethodIDOf(
      _classRef,
      "setCustomDescription",
      "(Landroid/service/autofill/CustomDescription;)Landroid/service/autofill/SaveInfo\$Builder;");

  /// from: public android.service.autofill.SaveInfo.Builder setCustomDescription(android.service.autofill.CustomDescription customDescription)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets a custom description to be shown in the UI when the user is asked to save.
  ///
  /// Typically used when the service must show more info about the object being saved,
  /// like a credit card logo, masked number, and expiration date.
  ///@param customDescription the custom description.
  /// This value must never be {@code null}.
  ///@return This Builder.
  ///
  /// This value will never be {@code null}.
  ///@throws IllegalStateException if this call was made after calling
  /// \#setDescription(CharSequence).
  SaveInfo_Builder setCustomDescription(
          customdescription_.CustomDescription customDescription) =>
      SaveInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setCustomDescription,
          jni.JniType.objectType,
          [customDescription.reference]).object);

  static final _id_setNegativeAction = jniAccessors.getMethodIDOf(
      _classRef,
      "setNegativeAction",
      "(ILandroid/content/IntentSender;)Landroid/service/autofill/SaveInfo\$Builder;");

  /// from: public android.service.autofill.SaveInfo.Builder setNegativeAction(int style, android.content.IntentSender listener)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the style and listener for the negative save action.
  ///
  /// This allows an autofill service to customize the style and be
  /// notified when the user selects the negative action in the save
  /// UI. Note that selecting the negative action regardless of its style
  /// and listener being customized would dismiss the save UI and if a
  /// custom listener intent is provided then this intent is
  /// started. The default style is \#NEGATIVE_BUTTON_STYLE_CANCEL
  ///
  ///@param style The action style.
  /// Value is android.service.autofill.SaveInfo\#NEGATIVE_BUTTON_STYLE_CANCEL, or android.service.autofill.SaveInfo\#NEGATIVE_BUTTON_STYLE_REJECT
  ///@param listener The action listener.
  /// This value may be {@code null}.
  ///@return This builder.
  ///
  /// This value will never be {@code null}.
  ///@see \#NEGATIVE_BUTTON_STYLE_CANCEL
  ///@see \#NEGATIVE_BUTTON_STYLE_REJECT
  ///@throws IllegalArgumentException If the style is invalid
  SaveInfo_Builder setNegativeAction(
          int style, intentsender_.IntentSender listener) =>
      SaveInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setNegativeAction,
          jni.JniType.objectType,
          [style, listener.reference]).object);

  static final _id_setValidator = jniAccessors.getMethodIDOf(
      _classRef,
      "setValidator",
      "(Landroid/service/autofill/Validator;)Landroid/service/autofill/SaveInfo\$Builder;");

  /// from: public android.service.autofill.SaveInfo.Builder setValidator(android.service.autofill.Validator validator)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets an object used to validate the user input - if the input is not valid, the
  /// autofill save UI is not shown.
  ///
  /// Typically used to validate credit card numbers. Examples:
  ///
  /// Validator for a credit number that must have exactly 16 digits:
  ///
  /// <pre class="prettyprint">
  /// Validator validator = new RegexValidator(ccNumberId, Pattern.compile(""^\\d{16}$"))
  /// </pre>
  ///
  /// Validator for a credit number that must pass a Luhn checksum and either have
  /// 16 digits, or 15 digits starting with 108:
  ///
  /// <pre class="prettyprint">
  /// import static android.service.autofill.Validators.and;
  /// import static android.service.autofill.Validators.or;
  ///
  /// Validator validator =
  ///   and(
  ///     new LuhnChecksumValidator(ccNumberId),
  ///     or(
  ///       new RegexValidator(ccNumberId, Pattern.compile("^\\d{16}$")),
  ///       new RegexValidator(ccNumberId, Pattern.compile("^108\\d{12}$"))
  ///     )
  ///   );
  /// </pre>
  ///
  /// __Note:__ the example above is just for illustrative purposes; the same validator
  /// could be created using a single regex for the {@code OR} part:
  ///
  /// <pre class="prettyprint">
  /// Validator validator =
  ///   and(
  ///     new LuhnChecksumValidator(ccNumberId),
  ///     new RegexValidator(ccNumberId, Pattern.compile(""^(\\d{16}|108\\d{12})$"))
  ///   );
  /// </pre>
  ///
  /// Validator for a credit number contained in just 4 fields and that must have exactly
  /// 4 digits on each field:
  ///
  /// <pre class="prettyprint">
  /// import static android.service.autofill.Validators.and;
  ///
  /// Validator validator =
  ///   and(
  ///     new RegexValidator(ccNumberId1, Pattern.compile("^\\d{4}$")),
  ///     new RegexValidator(ccNumberId2, Pattern.compile("^\\d{4}$")),
  ///     new RegexValidator(ccNumberId3, Pattern.compile("^\\d{4}$")),
  ///     new RegexValidator(ccNumberId4, Pattern.compile("^\\d{4}$"))
  ///   );
  /// </pre>
  ///@param validator an implementation provided by the Android System.
  /// This value must never be {@code null}.
  ///@return this builder.
  ///
  /// This value will never be {@code null}.
  ///@throws IllegalArgumentException if {@code validator} is not a class provided
  /// by the Android System.
  SaveInfo_Builder setValidator(validator_.Validator validator) =>
      SaveInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setValidator,
          jni.JniType.objectType,
          [validator.reference]).object);

  static final _id_addSanitizer = jniAccessors.getMethodIDOf(
      _classRef,
      "addSanitizer",
      "(Landroid/service/autofill/Sanitizer;[Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo\$Builder;");

  /// from: public android.service.autofill.SaveInfo.Builder addSanitizer(android.service.autofill.Sanitizer sanitizer, android.view.autofill.AutofillId[] ids)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds a sanitizer for one or more field.
  ///
  /// When a sanitizer is set for a field, the AutofillValue is sent to the
  /// sanitizer before a save request is <a href="\#TriggeringSaveRequest">triggered</a>.
  ///
  /// Typically used to avoid displaying the save UI for values that are autofilled but
  /// reformattedby the app. For example, to remove spaces between every 4 digits of a
  /// credit card number:
  ///
  /// <pre class="prettyprint">
  /// builder.addSanitizer(new TextValueSanitizer(
  ///     Pattern.compile("^(\\d{4})\\s?(\\d{4})\\s?(\\d{4})\\s?(\\d{4})$", "$1$2$3$4")),
  ///     ccNumberId);
  /// </pre>
  ///
  /// The same sanitizer can be reused to sanitize multiple fields. For example, to trim
  /// both the username and password fields:
  ///
  /// <pre class="prettyprint">
  /// builder.addSanitizer(
  ///     new TextValueSanitizer(Pattern.compile("^\\s*(.*)\\s*$"), "$1"),
  ///         usernameId, passwordId);
  /// </pre>
  ///
  /// The sanitizer can also be used as an alternative for a
  /// \#setValidator(Validator) validator. If any of the {@code ids} is a
  /// \#SaveInfo.Builder(int, AutofillId[]) required id and the {@code sanitizer} fails
  /// because of it, then the save UI is not shown.
  ///@param sanitizer an implementation provided by the Android System.
  /// This value must never be {@code null}.
  ///@param ids id of fields whose value will be sanitized.
  /// This value must never be {@code null}.
  ///@return this builder.
  ///
  /// This value will never be {@code null}.
  ///@throws IllegalArgumentException if a sanitizer for any of the {@code ids} has already
  /// been added or if {@code ids} is empty.
  SaveInfo_Builder addSanitizer(
          sanitizer_.Sanitizer sanitizer, jni.JniObject ids) =>
      SaveInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addSanitizer,
          jni.JniType.objectType,
          [sanitizer.reference, ids.reference]).object);

  static final _id_setTriggerId = jniAccessors.getMethodIDOf(
      _classRef,
      "setTriggerId",
      "(Landroid/view/autofill/AutofillId;)Landroid/service/autofill/SaveInfo\$Builder;");

  /// from: public android.service.autofill.SaveInfo.Builder setTriggerId(android.view.autofill.AutofillId id)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Explicitly defines the view that should commit the autofill context when clicked.
  ///
  /// Usually, the save request is only automatically
  /// <a href="\#TriggeringSaveRequest">triggered</a> after the activity is
  /// finished or all relevant views become invisible, but there are scenarios where the
  /// autofill context is automatically commited too late
  /// &mdash;for example, when the activity manually clears the autofillable views when a
  /// button is tapped. This method can be used to trigger the autofill save UI earlier in
  /// these scenarios.
  ///
  /// __Note:__ This method should only be used in scenarios where the automatic workflow
  /// is not enough, otherwise it could trigger the autofill save UI when it should not&mdash;
  /// for example, when the user entered invalid credentials for the autofillable views.
  ///@param id This value must never be {@code null}.
  ///@return This value will never be {@code null}.
  SaveInfo_Builder setTriggerId(autofillid_.AutofillId id) =>
      SaveInfo_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setTriggerId, jni.JniType.objectType, [id.reference]).object);

  static final _id_build = jniAccessors.getMethodIDOf(
      _classRef, "build", "()Landroid/service/autofill/SaveInfo;");

  /// from: public android.service.autofill.SaveInfo build()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Builds a new SaveInfo instance.
  ///@throws IllegalStateException if no
  /// \#SaveInfo.Builder(int, AutofillId[]) required ids
  /// or \#setOptionalIds(AutofillId[]) optional ids were set
  SaveInfo build() => SaveInfo.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_build, jni.JniType.objectType, []).object);
}
