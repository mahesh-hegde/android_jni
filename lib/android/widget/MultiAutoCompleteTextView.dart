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

import "AutoCompleteTextView.dart" as autocompletetextview_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.MultiAutoCompleteTextView
///
/// An editable text view, extending AutoCompleteTextView, that
/// can show completion suggestions for the substring of the text where
/// the user is typing instead of necessarily for the entire thing.
///
/// You must provide a Tokenizer to distinguish the
/// various substrings.
///
/// The following code snippet shows how to create a text view which suggests
/// various countries names while the user is typing:
///
///
/// <pre class="prettyprint">
/// public class CountriesActivity extends Activity {
///     protected void onCreate(Bundle savedInstanceState) {
///         super.onCreate(savedInstanceState);
///         setContentView(R.layout.autocomplete_7);
///
///         ArrayAdapter&lt;String&gt; adapter = new ArrayAdapter&lt;String&gt;(this,
///                 android.R.layout.simple_dropdown_item_1line, COUNTRIES);
///         MultiAutoCompleteTextView textView = findViewById(R.id.edit);
///         textView.setAdapter(adapter);
///         textView.setTokenizer(new MultiAutoCompleteTextView.CommaTokenizer());
///     }
///
///     private static final String[] COUNTRIES = new String[] {
///         "Belgium", "France", "Italy", "Germany", "Spain"
///     };
/// }</pre>
class MultiAutoCompleteTextView
    extends autocompletetextview_.AutoCompleteTextView {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/MultiAutoCompleteTextView");
  MultiAutoCompleteTextView.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MultiAutoCompleteTextView(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MultiAutoCompleteTextView.ctor1(
      context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MultiAutoCompleteTextView.ctor2(context_.Context context,
      attributeset_.AttributeSet attrs, int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MultiAutoCompleteTextView.ctor3(context_.Context context,
      attributeset_.AttributeSet attrs, int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_setTokenizer = jniAccessors.getMethodIDOf(
      _classRef,
      "setTokenizer",
      "(Landroid/widget/MultiAutoCompleteTextView\$Tokenizer;)V");

  /// from: public void setTokenizer(android.widget.MultiAutoCompleteTextView.Tokenizer t)
  ///
  /// Sets the Tokenizer that will be used to determine the relevant
  /// range of the text where the user is typing.
  void setTokenizer(MultiAutoCompleteTextView_Tokenizer t) =>
      jniAccessors.callMethodWithArgs(reference, _id_setTokenizer,
          jni.JniType.voidType, [t.reference]).check();

  static final _id_performFiltering = jniAccessors.getMethodIDOf(
      _classRef, "performFiltering", "(Ljava/lang/CharSequence;I)V");

  /// from: protected void performFiltering(java.lang.CharSequence text, int keyCode)
  ///
  /// Instead of filtering on the entire contents of the edit box,
  /// this subclass method filters on the range from
  /// Tokenizer\#findTokenStart to \#getSelectionEnd
  /// if the length of that range meets or exceeds \#getThreshold.
  void performFiltering(jni.JniObject text, int keyCode) =>
      jniAccessors.callMethodWithArgs(reference, _id_performFiltering,
          jni.JniType.voidType, [text.reference, keyCode]).check();

  static final _id_enoughToFilter =
      jniAccessors.getMethodIDOf(_classRef, "enoughToFilter", "()Z");

  /// from: public boolean enoughToFilter()
  ///
  /// Instead of filtering whenever the total length of the text
  /// exceeds the threshhold, this subclass filters only when the
  /// length of the range from
  /// Tokenizer\#findTokenStart to \#getSelectionEnd
  /// meets or exceeds \#getThreshold.
  bool enoughToFilter() => jniAccessors.callMethodWithArgs(
      reference, _id_enoughToFilter, jni.JniType.booleanType, []).boolean;

  static final _id_performValidation =
      jniAccessors.getMethodIDOf(_classRef, "performValidation", "()V");

  /// from: public void performValidation()
  ///
  /// Instead of validating the entire text, this subclass method validates
  /// each token of the text individually.  Empty tokens are removed.
  void performValidation() => jniAccessors.callMethodWithArgs(
      reference, _id_performValidation, jni.JniType.voidType, []).check();

  static final _id_performFiltering1 = jniAccessors.getMethodIDOf(
      _classRef, "performFiltering", "(Ljava/lang/CharSequence;III)V");

  /// from: protected void performFiltering(java.lang.CharSequence text, int start, int end, int keyCode)
  ///
  /// Starts filtering the content of the drop down list. The filtering
  /// pattern is the specified range of text from the edit box. Subclasses may
  /// override this method to filter with a different pattern, for
  /// instance a smaller substring of <code>text</code>.
  ///
  void performFiltering1(jni.JniObject text, int start, int end, int keyCode) =>
      jniAccessors.callMethodWithArgs(reference, _id_performFiltering1,
          jni.JniType.voidType, [text.reference, start, end, keyCode]).check();

  static final _id_replaceText = jniAccessors.getMethodIDOf(
      _classRef, "replaceText", "(Ljava/lang/CharSequence;)V");

  /// from: protected void replaceText(java.lang.CharSequence text)
  ///
  /// Performs the text completion by replacing the range from
  /// Tokenizer\#findTokenStart to \#getSelectionEnd by the
  /// the result of passing <code>text</code> through
  /// Tokenizer\#terminateToken.
  /// In addition, the replaced region will be marked as an AutoText
  /// substition so that if the user immediately presses DEL, the
  /// completion will be undone.
  /// Subclasses may override this method to do some different
  /// insertion of the content into the edit box.
  ///
  ///@param text the selected suggestion in the drop down list
  void replaceText(jni.JniObject text) => jniAccessors.callMethodWithArgs(
      reference,
      _id_replaceText,
      jni.JniType.voidType,
      [text.reference]).check();

  static final _id_getAccessibilityClassName1 = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName1() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName1, jni.JniType.objectType, []).object);
}

/// from: android.widget.MultiAutoCompleteTextView$Tokenizer
class MultiAutoCompleteTextView_Tokenizer extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/MultiAutoCompleteTextView\$Tokenizer");
  MultiAutoCompleteTextView_Tokenizer.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_findTokenStart = jniAccessors.getMethodIDOf(
      _classRef, "findTokenStart", "(Ljava/lang/CharSequence;I)I");

  /// from: public abstract int findTokenStart(java.lang.CharSequence text, int cursor)
  ///
  /// Returns the start of the token that ends at offset
  /// <code>cursor</code> within <code>text</code>.
  int findTokenStart(jni.JniObject text, int cursor) =>
      jniAccessors.callMethodWithArgs(reference, _id_findTokenStart,
          jni.JniType.intType, [text.reference, cursor]).integer;

  static final _id_findTokenEnd = jniAccessors.getMethodIDOf(
      _classRef, "findTokenEnd", "(Ljava/lang/CharSequence;I)I");

  /// from: public abstract int findTokenEnd(java.lang.CharSequence text, int cursor)
  ///
  /// Returns the end of the token (minus trailing punctuation)
  /// that begins at offset <code>cursor</code> within <code>text</code>.
  int findTokenEnd(jni.JniObject text, int cursor) =>
      jniAccessors.callMethodWithArgs(reference, _id_findTokenEnd,
          jni.JniType.intType, [text.reference, cursor]).integer;

  static final _id_terminateToken = jniAccessors.getMethodIDOf(_classRef,
      "terminateToken", "(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;");

  /// from: public abstract java.lang.CharSequence terminateToken(java.lang.CharSequence text)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns <code>text</code>, modified, if necessary, to ensure that
  /// it ends with a token terminator (for example a space or comma).
  jni.JniObject terminateToken(jni.JniObject text) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_terminateToken, jni.JniType.objectType, [text.reference]).object);
}

/// from: android.widget.MultiAutoCompleteTextView$CommaTokenizer
///
/// This simple Tokenizer can be used for lists where the items are
/// separated by a comma and one or more spaces.
class MultiAutoCompleteTextView_CommaTokenizer extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/widget/MultiAutoCompleteTextView\$CommaTokenizer");
  MultiAutoCompleteTextView_CommaTokenizer.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  MultiAutoCompleteTextView_CommaTokenizer()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_findTokenStart = jniAccessors.getMethodIDOf(
      _classRef, "findTokenStart", "(Ljava/lang/CharSequence;I)I");

  /// from: public int findTokenStart(java.lang.CharSequence text, int cursor)
  int findTokenStart(jni.JniObject text, int cursor) =>
      jniAccessors.callMethodWithArgs(reference, _id_findTokenStart,
          jni.JniType.intType, [text.reference, cursor]).integer;

  static final _id_findTokenEnd = jniAccessors.getMethodIDOf(
      _classRef, "findTokenEnd", "(Ljava/lang/CharSequence;I)I");

  /// from: public int findTokenEnd(java.lang.CharSequence text, int cursor)
  int findTokenEnd(jni.JniObject text, int cursor) =>
      jniAccessors.callMethodWithArgs(reference, _id_findTokenEnd,
          jni.JniType.intType, [text.reference, cursor]).integer;

  static final _id_terminateToken = jniAccessors.getMethodIDOf(_classRef,
      "terminateToken", "(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence terminateToken(java.lang.CharSequence text)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject terminateToken(jni.JniObject text) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_terminateToken, jni.JniType.objectType, [text.reference]).object);
}
