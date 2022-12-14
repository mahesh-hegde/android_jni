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

/// from: android.text.InputType
///
/// Bit definitions for an integer defining the basic content type of text
/// held in an Editable object. Supported classes may be combined
/// with variations and flags to indicate desired behaviors.
///
/// <h3>Examples</h3>
///
/// <dl>
/// <dt>A password field with the password visible to the user:
/// <dd>inputType = TYPE_CLASS_TEXT |
///     TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
///
/// <dt>A multi-line postal address with automatic capitalization:
/// <dd>inputType = TYPE_CLASS_TEXT |
///     TYPE_TEXT_VARIATION_POSTAL_ADDRESS |
///     TYPE_TEXT_FLAG_MULTI_LINE
///
/// <dt>A time field:
/// <dd>inputType = TYPE_CLASS_DATETIME |
///     TYPE_DATETIME_VARIATION_TIME
/// </dl>
class InputType extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/text/InputType");
  InputType.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int TYPE_CLASS_DATETIME
  ///
  /// Class for dates and times.  It supports the
  /// following variations:
  /// \#TYPE_DATETIME_VARIATION_NORMAL
  /// \#TYPE_DATETIME_VARIATION_DATE, and
  /// \#TYPE_DATETIME_VARIATION_TIME.
  static const TYPE_CLASS_DATETIME = 4;

  /// from: static public final int TYPE_CLASS_NUMBER
  ///
  /// Class for numeric text.  This class supports the following flags:
  /// \#TYPE_NUMBER_FLAG_SIGNED and
  /// \#TYPE_NUMBER_FLAG_DECIMAL.  It also supports the following
  /// variations: \#TYPE_NUMBER_VARIATION_NORMAL and
  /// \#TYPE_NUMBER_VARIATION_PASSWORD.
  /// IME authors: If you do not recognize
  /// the variation, normal should be assumed.
  ///
  static const TYPE_CLASS_NUMBER = 2;

  /// from: static public final int TYPE_CLASS_PHONE
  ///
  /// Class for a phone number.  This class currently supports no variations
  /// or flags.
  static const TYPE_CLASS_PHONE = 3;

  /// from: static public final int TYPE_CLASS_TEXT
  ///
  /// Class for normal text.  This class supports the following flags (only
  /// one of which should be set):
  /// \#TYPE_TEXT_FLAG_CAP_CHARACTERS,
  /// \#TYPE_TEXT_FLAG_CAP_WORDS, and.
  /// \#TYPE_TEXT_FLAG_CAP_SENTENCES.  It also supports the
  /// following variations:
  /// \#TYPE_TEXT_VARIATION_NORMAL, and
  /// \#TYPE_TEXT_VARIATION_URI.  If you do not recognize the
  /// variation, normal should be assumed.
  static const TYPE_CLASS_TEXT = 1;

  /// from: static public final int TYPE_DATETIME_VARIATION_DATE
  ///
  /// Default variation of \#TYPE_CLASS_DATETIME: allows entering
  /// only a date.
  static const TYPE_DATETIME_VARIATION_DATE = 16;

  /// from: static public final int TYPE_DATETIME_VARIATION_NORMAL
  ///
  /// Default variation of \#TYPE_CLASS_DATETIME: allows entering
  /// both a date and time.
  static const TYPE_DATETIME_VARIATION_NORMAL = 0;

  /// from: static public final int TYPE_DATETIME_VARIATION_TIME
  ///
  /// Default variation of \#TYPE_CLASS_DATETIME: allows entering
  /// only a time.
  static const TYPE_DATETIME_VARIATION_TIME = 32;

  /// from: static public final int TYPE_MASK_CLASS
  ///
  /// Mask of bits that determine the overall class
  /// of text being given.  Currently supported classes are:
  /// \#TYPE_CLASS_TEXT, \#TYPE_CLASS_NUMBER,
  /// \#TYPE_CLASS_PHONE, \#TYPE_CLASS_DATETIME.
  /// IME authors: If the class is not one you
  /// understand, assume \#TYPE_CLASS_TEXT with NO variation
  /// or flags.
  static const TYPE_MASK_CLASS = 15;

  /// from: static public final int TYPE_MASK_FLAGS
  ///
  /// Mask of bits that provide addition bit flags
  /// of options.
  static const TYPE_MASK_FLAGS = 16773120;

  /// from: static public final int TYPE_MASK_VARIATION
  ///
  /// Mask of bits that determine the variation of
  /// the base content class.
  static const TYPE_MASK_VARIATION = 4080;

  /// from: static public final int TYPE_NULL
  ///
  /// Special content type for when no explicit type has been specified.
  /// This should be interpreted to mean that the target input connection
  /// is not rich, it can not process and show things like candidate text nor
  /// retrieve the current text, so the input method will need to run in a
  /// limited "generate key events" mode, if it supports it. Note that some
  /// input methods may not support it, for example a voice-based input
  /// method will likely not be able to generate key events even if this
  /// flag is set.
  static const TYPE_NULL = 0;

  /// from: static public final int TYPE_NUMBER_FLAG_DECIMAL
  ///
  /// Flag of \#TYPE_CLASS_NUMBER: the number is decimal, allowing
  /// a decimal point to provide fractional values.
  static const TYPE_NUMBER_FLAG_DECIMAL = 8192;

  /// from: static public final int TYPE_NUMBER_FLAG_SIGNED
  ///
  /// Flag of \#TYPE_CLASS_NUMBER: the number is signed, allowing
  /// a positive or negative sign at the start.
  static const TYPE_NUMBER_FLAG_SIGNED = 4096;

  /// from: static public final int TYPE_NUMBER_VARIATION_NORMAL
  ///
  /// Default variation of \#TYPE_CLASS_NUMBER: plain normal
  /// numeric text.  This was added in
  /// android.os.Build.VERSION_CODES\#HONEYCOMB.  An IME must target
  /// this API version or later to see this input type; if it doesn't, a request
  /// for this type will be dropped when passed through
  /// android.view.inputmethod.EditorInfo\#makeCompatible(int) EditorInfo.makeCompatible(int).
  static const TYPE_NUMBER_VARIATION_NORMAL = 0;

  /// from: static public final int TYPE_NUMBER_VARIATION_PASSWORD
  ///
  /// Variation of \#TYPE_CLASS_NUMBER: entering a numeric password.
  /// This was added in android.os.Build.VERSION_CODES\#HONEYCOMB.  An
  /// IME must target this API version or later to see this input type; if it
  /// doesn't, a request for this type will be dropped when passed
  /// through android.view.inputmethod.EditorInfo\#makeCompatible(int) EditorInfo.makeCompatible(int).
  static const TYPE_NUMBER_VARIATION_PASSWORD = 16;

  /// from: static public final int TYPE_TEXT_FLAG_AUTO_COMPLETE
  ///
  /// Flag for \#TYPE_CLASS_TEXT: the text editor (which means
  /// the application) is performing auto-completion of the text being entered
  /// based on its own semantics, which it will present to the user as they type.
  /// This generally means that the input method should not be showing
  /// candidates itself, but can expect the editor to supply its own
  /// completions/candidates from
  /// android.view.inputmethod.InputMethodSession\#displayCompletions InputMethodSession.displayCompletions() as a result of the editor calling
  /// android.view.inputmethod.InputMethodManager\#displayCompletions InputMethodManager.displayCompletions().
  /// Note the contrast with \#TYPE_TEXT_FLAG_AUTO_CORRECT and
  /// \#TYPE_TEXT_FLAG_NO_SUGGESTIONS:
  /// {@code TYPE_TEXT_FLAG_AUTO_COMPLETE} means the editor should show an
  /// interface for displaying suggestions, but instead of supplying its own
  /// it will rely on the Editor to pass completions/corrections.
  static const TYPE_TEXT_FLAG_AUTO_COMPLETE = 65536;

  /// from: static public final int TYPE_TEXT_FLAG_AUTO_CORRECT
  ///
  /// Flag for \#TYPE_CLASS_TEXT: the user is entering free-form
  /// text that should have auto-correction applied to it. Without this flag,
  /// the IME will not try to correct typos. You should always set this flag
  /// unless you really expect users to type non-words in this field, for
  /// example to choose a name for a character in a game.
  /// Contrast this with \#TYPE_TEXT_FLAG_AUTO_COMPLETE and
  /// \#TYPE_TEXT_FLAG_NO_SUGGESTIONS:
  /// {@code TYPE_TEXT_FLAG_AUTO_CORRECT} means that the IME will try to
  /// auto-correct typos as the user is typing, but does not define whether
  /// the IME offers an interface to show suggestions.
  static const TYPE_TEXT_FLAG_AUTO_CORRECT = 32768;

  /// from: static public final int TYPE_TEXT_FLAG_CAP_CHARACTERS
  ///
  /// Flag for \#TYPE_CLASS_TEXT: capitalize all characters.  Overrides
  /// \#TYPE_TEXT_FLAG_CAP_WORDS and
  /// \#TYPE_TEXT_FLAG_CAP_SENTENCES.  This value is explicitly defined
  /// to be the same as TextUtils\#CAP_MODE_CHARACTERS. Of course,
  /// this only affects languages where there are upper-case and lower-case letters.
  static const TYPE_TEXT_FLAG_CAP_CHARACTERS = 4096;

  /// from: static public final int TYPE_TEXT_FLAG_CAP_SENTENCES
  ///
  /// Flag for \#TYPE_CLASS_TEXT: capitalize the first character of
  /// each sentence.  This value is explicitly defined
  /// to be the same as TextUtils\#CAP_MODE_SENTENCES. For example
  /// in English it means to capitalize after a period and a space (note that other
  /// languages may have different characters for period, or not use spaces,
  /// or use different grammatical rules). Of course,
  /// this only affects languages where there are upper-case and lower-case letters.
  static const TYPE_TEXT_FLAG_CAP_SENTENCES = 16384;

  /// from: static public final int TYPE_TEXT_FLAG_CAP_WORDS
  ///
  /// Flag for \#TYPE_CLASS_TEXT: capitalize the first character of
  /// every word.  Overrides \#TYPE_TEXT_FLAG_CAP_SENTENCES.  This
  /// value is explicitly defined
  /// to be the same as TextUtils\#CAP_MODE_WORDS. Of course,
  /// this only affects languages where there are upper-case and lower-case letters.
  static const TYPE_TEXT_FLAG_CAP_WORDS = 8192;

  /// from: static public final int TYPE_TEXT_FLAG_IME_MULTI_LINE
  ///
  /// Flag for \#TYPE_CLASS_TEXT: the regular text view associated
  /// with this should not be multi-line, but when a fullscreen input method
  /// is providing text it should use multiple lines if it can.
  static const TYPE_TEXT_FLAG_IME_MULTI_LINE = 262144;

  /// from: static public final int TYPE_TEXT_FLAG_MULTI_LINE
  ///
  /// Flag for \#TYPE_CLASS_TEXT: multiple lines of text can be
  /// entered into the field.  If this flag is not set, the text field
  /// will be constrained to a single line. The IME may also choose not to
  /// display an enter key when this flag is not set, as there should be no
  /// need to create new lines.
  static const TYPE_TEXT_FLAG_MULTI_LINE = 131072;

  /// from: static public final int TYPE_TEXT_FLAG_NO_SUGGESTIONS
  ///
  /// Flag for \#TYPE_CLASS_TEXT: the input method does not need to
  /// display any dictionary-based candidates. This is useful for text views that
  /// do not contain words from the language and do not benefit from any
  /// dictionary-based completions or corrections. It overrides the
  /// \#TYPE_TEXT_FLAG_AUTO_CORRECT value when set.
  /// Please avoid using this unless you are certain this is what you want.
  /// Many input methods need suggestions to work well, for example the ones
  /// based on gesture typing. Consider clearing
  /// \#TYPE_TEXT_FLAG_AUTO_CORRECT instead if you just do not
  /// want the IME to correct typos.
  /// Note the contrast with \#TYPE_TEXT_FLAG_AUTO_CORRECT and
  /// \#TYPE_TEXT_FLAG_AUTO_COMPLETE:
  /// {@code TYPE_TEXT_FLAG_NO_SUGGESTIONS} means the IME does not need to
  /// show an interface to display suggestions. Most IMEs will also take this to
  /// mean they do not need to try to auto-correct what the user is typing.
  static const TYPE_TEXT_FLAG_NO_SUGGESTIONS = 524288;

  /// from: static public final int TYPE_TEXT_VARIATION_EMAIL_ADDRESS
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering an e-mail address.
  static const TYPE_TEXT_VARIATION_EMAIL_ADDRESS = 32;

  /// from: static public final int TYPE_TEXT_VARIATION_EMAIL_SUBJECT
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering the subject line of
  /// an e-mail.
  static const TYPE_TEXT_VARIATION_EMAIL_SUBJECT = 48;

  /// from: static public final int TYPE_TEXT_VARIATION_FILTER
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering text to filter contents
  /// of a list etc.
  static const TYPE_TEXT_VARIATION_FILTER = 176;

  /// from: static public final int TYPE_TEXT_VARIATION_LONG_MESSAGE
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering the content of a long, possibly
  /// formal message such as the body of an e-mail.
  static const TYPE_TEXT_VARIATION_LONG_MESSAGE = 80;

  /// from: static public final int TYPE_TEXT_VARIATION_NORMAL
  ///
  /// Default variation of \#TYPE_CLASS_TEXT: plain old normal text.
  static const TYPE_TEXT_VARIATION_NORMAL = 0;

  /// from: static public final int TYPE_TEXT_VARIATION_PASSWORD
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering a password.
  static const TYPE_TEXT_VARIATION_PASSWORD = 128;

  /// from: static public final int TYPE_TEXT_VARIATION_PERSON_NAME
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering the name of a person.
  static const TYPE_TEXT_VARIATION_PERSON_NAME = 96;

  /// from: static public final int TYPE_TEXT_VARIATION_PHONETIC
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering text for phonetic
  /// pronunciation, such as a phonetic name field in contacts. This is mostly
  /// useful for languages where one spelling may have several phonetic
  /// readings, like Japanese.
  static const TYPE_TEXT_VARIATION_PHONETIC = 192;

  /// from: static public final int TYPE_TEXT_VARIATION_POSTAL_ADDRESS
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering a postal mailing address.
  static const TYPE_TEXT_VARIATION_POSTAL_ADDRESS = 112;

  /// from: static public final int TYPE_TEXT_VARIATION_SHORT_MESSAGE
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering a short, possibly informal
  /// message such as an instant message or a text message.
  static const TYPE_TEXT_VARIATION_SHORT_MESSAGE = 64;

  /// from: static public final int TYPE_TEXT_VARIATION_URI
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering a URI.
  static const TYPE_TEXT_VARIATION_URI = 16;

  /// from: static public final int TYPE_TEXT_VARIATION_VISIBLE_PASSWORD
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering a password, which should
  /// be visible to the user.
  static const TYPE_TEXT_VARIATION_VISIBLE_PASSWORD = 144;

  /// from: static public final int TYPE_TEXT_VARIATION_WEB_EDIT_TEXT
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering text inside of a web form.
  static const TYPE_TEXT_VARIATION_WEB_EDIT_TEXT = 160;

  /// from: static public final int TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering e-mail address inside
  /// of a web form.  This was added in
  /// android.os.Build.VERSION_CODES\#HONEYCOMB.  An IME must target
  /// this API version or later to see this input type; if it doesn't, a request
  /// for this type will be seen as \#TYPE_TEXT_VARIATION_EMAIL_ADDRESS
  /// when passed through android.view.inputmethod.EditorInfo\#makeCompatible(int) EditorInfo.makeCompatible(int).
  static const TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS = 208;

  /// from: static public final int TYPE_TEXT_VARIATION_WEB_PASSWORD
  ///
  /// Variation of \#TYPE_CLASS_TEXT: entering password inside
  /// of a web form.  This was added in
  /// android.os.Build.VERSION_CODES\#HONEYCOMB.  An IME must target
  /// this API version or later to see this input type; if it doesn't, a request
  /// for this type will be seen as \#TYPE_TEXT_VARIATION_PASSWORD
  /// when passed through android.view.inputmethod.EditorInfo\#makeCompatible(int) EditorInfo.makeCompatible(int).
  static const TYPE_TEXT_VARIATION_WEB_PASSWORD = 224;
}
