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

import "TextView.dart" as textview_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../text/method/MovementMethod.dart" as movementmethod_;

import "../text/Editable.dart" as editable_;

import "../text/TextUtils.dart" as textutils_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.EditText
///
/// A user interface element for entering and modifying text.
/// When you define an edit text widget, you must specify the
/// android.R.styleable\#TextView_inputType
/// attribute. For example, for plain text input set inputType to "text":
///
/// <pre>
/// &lt;EditText
///     android:id="@+id/plain_text_input"
///     android:layout_height="wrap_content"
///     android:layout_width="match_parent"
///     android:inputType="text"/&gt;</pre>
///
/// Choosing the input type configures the keyboard type that is shown, acceptable characters,
/// and appearance of the edit text.
/// For example, if you want to accept a secret number, like a unique pin or serial number,
/// you can set inputType to "numericPassword".
/// An inputType of "numericPassword" results in an edit text that accepts numbers only,
/// shows a numeric keyboard when focused, and masks the text that is entered for privacy.
///
/// See the <a href="{@docRoot}guide/topics/ui/controls/text.html">Text Fields</a>
/// guide for examples of other
/// android.R.styleable\#TextView_inputType settings.
///
///
/// You also can receive callbacks as a user changes text by
/// adding a android.text.TextWatcher to the edit text.
/// This is useful when you want to add auto-save functionality as changes are made,
/// or validate the format of user input, for example.
/// You add a text watcher using the TextView\#addTextChangedListener method.
///
///
///
/// This widget does not support auto-sizing text.
///
/// __XML attributes__
///
/// See android.R.styleable\#EditText EditText Attributes,
/// android.R.styleable\#TextView TextView Attributes,
/// android.R.styleable\#View View Attributes
class EditText extends textview_.TextView {
  static final _classRef = jniAccessors.getClassOf("android/widget/EditText");
  EditText.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  EditText(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  EditText.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  EditText.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  EditText.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_getFreezesText =
      jniAccessors.getMethodIDOf(_classRef, "getFreezesText", "()Z");

  /// from: public boolean getFreezesText()
  bool getFreezesText() => jniAccessors.callMethodWithArgs(
      reference, _id_getFreezesText, jni.JniType.booleanType, []).boolean;

  static final _id_getDefaultEditable =
      jniAccessors.getMethodIDOf(_classRef, "getDefaultEditable", "()Z");

  /// from: protected boolean getDefaultEditable()
  bool getDefaultEditable() => jniAccessors.callMethodWithArgs(
      reference, _id_getDefaultEditable, jni.JniType.booleanType, []).boolean;

  static final _id_getDefaultMovementMethod = jniAccessors.getMethodIDOf(
      _classRef,
      "getDefaultMovementMethod",
      "()Landroid/text/method/MovementMethod;");

  /// from: protected android.text.method.MovementMethod getDefaultMovementMethod()
  /// The returned object must be deleted after use, by calling the `delete` method.
  movementmethod_.MovementMethod getDefaultMovementMethod() =>
      movementmethod_.MovementMethod.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDefaultMovementMethod,
          jni.JniType.objectType, []).object);

  static final _id_getText1 = jniAccessors.getMethodIDOf(
      _classRef, "getText", "()Landroid/text/Editable;");

  /// from: public android.text.Editable getText()
  /// The returned object must be deleted after use, by calling the `delete` method.
  editable_.Editable getText1() =>
      editable_.Editable.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getText1, jni.JniType.objectType, []).object);

  static final _id_setText1 = jniAccessors.getMethodIDOf(_classRef, "setText",
      "(Ljava/lang/CharSequence;Landroid/widget/TextView\$BufferType;)V");

  /// from: public void setText(java.lang.CharSequence text, android.widget.TextView.BufferType type)
  void setText1(jni.JniObject text, textview_.TextView_BufferType type) =>
      jniAccessors.callMethodWithArgs(reference, _id_setText1,
          jni.JniType.voidType, [text.reference, type.reference]).check();

  static final _id_setSelection =
      jniAccessors.getMethodIDOf(_classRef, "setSelection", "(II)V");

  /// from: public void setSelection(int start, int stop)
  ///
  /// Convenience for Selection\#setSelection(Spannable, int, int).
  void setSelection(int start, int stop) => jniAccessors.callMethodWithArgs(
      reference, _id_setSelection, jni.JniType.voidType, [start, stop]).check();

  static final _id_setSelection1 =
      jniAccessors.getMethodIDOf(_classRef, "setSelection", "(I)V");

  /// from: public void setSelection(int index)
  ///
  /// Convenience for Selection\#setSelection(Spannable, int).
  void setSelection1(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_setSelection1, jni.JniType.voidType, [index]).check();

  static final _id_selectAll =
      jniAccessors.getMethodIDOf(_classRef, "selectAll", "()V");

  /// from: public void selectAll()
  ///
  /// Convenience for Selection\#selectAll.
  void selectAll() => jniAccessors.callMethodWithArgs(
      reference, _id_selectAll, jni.JniType.voidType, []).check();

  static final _id_extendSelection =
      jniAccessors.getMethodIDOf(_classRef, "extendSelection", "(I)V");

  /// from: public void extendSelection(int index)
  ///
  /// Convenience for Selection\#extendSelection.
  void extendSelection(int index) => jniAccessors.callMethodWithArgs(
      reference, _id_extendSelection, jni.JniType.voidType, [index]).check();

  static final _id_setEllipsize = jniAccessors.getMethodIDOf(
      _classRef, "setEllipsize", "(Landroid/text/TextUtils\$TruncateAt;)V");

  /// from: public void setEllipsize(android.text.TextUtils.TruncateAt ellipsis)
  ///
  /// Causes words in the text that are longer than the view's width to be ellipsized instead of
  /// broken in the middle. TextUtils.TruncateAt\#MARQUEE TextUtils.TruncateAt\#MARQUEE is not supported.
  ///@param ellipsis Type of ellipsis to be applied.
  ///@throws IllegalArgumentException When the value of <code>ellipsis</code> parameter is
  ///      TextUtils.TruncateAt\#MARQUEE.
  ///@see TextView\#setEllipsize(TextUtils.TruncateAt)
  void setEllipsize(textutils_.TextUtils_TruncateAt ellipsis) =>
      jniAccessors.callMethodWithArgs(reference, _id_setEllipsize,
          jni.JniType.voidType, [ellipsis.reference]).check();

  static final _id_getAccessibilityClassName = jniAccessors.getMethodIDOf(
      _classRef, "getAccessibilityClassName", "()Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence getAccessibilityClassName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getAccessibilityClassName() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getAccessibilityClassName, jni.JniType.objectType, []).object);
}
