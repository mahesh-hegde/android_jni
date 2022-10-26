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

import "../os/Parcelable.dart" as parcelable_;

import "../os/Parcel.dart" as parcel_;

import "../util/AndroidRuntimeException.dart" as androidruntimeexception_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.KeyCharacterMap
///
/// Describes the keys provided by a keyboard device and their associated labels.
class KeyCharacterMap extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/KeyCharacterMap");
  KeyCharacterMap.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ALPHA
  ///
  /// A keyboard with all the letters, and maybe some numbers.
  ///
  /// An alphabetic keyboard supports text entry directly but may have a condensed
  /// layout with a small form factor.  In contrast to a \#FULL full keyboard, some
  /// symbols may only be accessible using special on-screen character pickers.
  /// In addition, to improve typing speed and accuracy, the framework provides
  /// special affordances for alphabetic keyboards such as auto-capitalization
  /// and toggled / locked shift and alt keys.
  ///
  ///
  /// This type of keyboard is generally designed for thumb typing.
  ///
  ///
  static const ALPHA = 3;

  /// from: static public final int BUILT_IN_KEYBOARD
  ///
  /// The id of the device's primary built in keyboard is always 0.
  ///@deprecated This constant should no longer be used because there is no
  /// guarantee that a device has a built-in keyboard that can be used for
  /// typing text.  There might not be a built-in keyboard, the built-in keyboard
  /// might be a \#NUMERIC or \#SPECIAL_FUNCTION keyboard, or there
  /// might be multiple keyboards installed including external keyboards.
  /// When interpreting key presses received from the framework, applications should
  /// use the device id specified in the KeyEvent received.
  /// When synthesizing key presses for delivery elsewhere or when translating key presses
  /// from unknown keyboards, applications should use the special \#VIRTUAL_KEYBOARD
  /// device id.
  static const BUILT_IN_KEYBOARD = 0;

  /// from: static public final int COMBINING_ACCENT
  static const COMBINING_ACCENT = -2147483648;

  /// from: static public final int COMBINING_ACCENT_MASK
  ///
  /// Mask the return value from \#get(int, int) with this value to get
  /// a printable representation of the accent character of a "dead key."
  static const COMBINING_ACCENT_MASK = 2147483647;

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.KeyCharacterMap> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  /// from: static public final int FULL
  ///
  /// A full PC-style keyboard.
  ///
  /// A full keyboard behaves like a PC keyboard.  All symbols are accessed directly
  /// by pressing keys on the keyboard without on-screen support or affordances such
  /// as auto-capitalization.
  ///
  ///
  /// This type of keyboard is generally designed for full two hand typing.
  ///
  ///
  static const FULL = 4;

  /// from: static public final char HEX_INPUT
  ///
  /// This private-use character is used to trigger Unicode character
  /// input by hex digits.
  static const HEX_INPUT = "";

  /// from: static public final int MODIFIER_BEHAVIOR_CHORDED
  ///
  /// Modifier keys may be chorded with character keys.
  ///@see {\#link \#getModifierBehavior()} for more details.
  static const MODIFIER_BEHAVIOR_CHORDED = 0;

  /// from: static public final int MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED
  ///
  /// Modifier keys may be chorded with character keys or they may toggle
  /// into latched or locked states when pressed independently.
  ///@see {\#link \#getModifierBehavior()} for more details.
  static const MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED = 1;

  /// from: static public final int NUMERIC
  ///
  /// A numeric (12-key) keyboard.
  ///
  /// A numeric keyboard supports text entry using a multi-tap approach.
  /// It may be necessary to tap a key multiple times to generate the desired letter
  /// or symbol.
  ///
  ///
  /// This type of keyboard is generally designed for thumb typing.
  ///
  ///
  static const NUMERIC = 1;

  /// from: static public final char PICKER_DIALOG_INPUT
  ///
  /// This private-use character is used to bring up a character picker for
  /// miscellaneous symbols.
  static const PICKER_DIALOG_INPUT = "";

  /// from: static public final int PREDICTIVE
  ///
  /// A keyboard with all the letters, but with more than one letter per key.
  ///
  /// This type of keyboard is generally designed for thumb typing.
  ///
  ///
  static const PREDICTIVE = 2;

  /// from: static public final int SPECIAL_FUNCTION
  ///
  /// A keyboard that is only used to control special functions rather than for typing.
  ///
  /// A special function keyboard consists only of non-printing keys such as
  /// HOME and POWER that are not actually used for typing.
  ///
  ///
  static const SPECIAL_FUNCTION = 5;

  /// from: static public final int VIRTUAL_KEYBOARD
  ///
  /// The id of a generic virtual keyboard with a full layout that can be used to
  /// synthesize key events.  Typically used with \#getEvents.
  static const VIRTUAL_KEYBOARD = -1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Landroid/os/Parcel;)V");

  /// from: void <init>(android.os.Parcel in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  KeyCharacterMap(parcel_.Parcel in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [in0.reference]).object);

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();

  static final _id_load = jniAccessors.getStaticMethodIDOf(
      _classRef, "load", "(I)Landroid/view/KeyCharacterMap;");

  /// from: static public android.view.KeyCharacterMap load(int deviceId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Loads the key character maps for the keyboard with the specified device id.
  ///@param deviceId The device id of the keyboard.
  ///@return The associated key character map.
  ///@throws UnavailableException if the key character map
  /// could not be loaded because it was malformed or the default key character map
  /// is missing from the system.
  static KeyCharacterMap load(int deviceId) =>
      KeyCharacterMap.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_load, jni.JniType.objectType, [deviceId]).object);

  static final _id_get0 = jniAccessors.getMethodIDOf(_classRef, "get", "(II)I");

  /// from: public int get(int keyCode, int metaState)
  ///
  /// Gets the Unicode character generated by the specified key and meta
  /// key state combination.
  ///
  /// Returns the Unicode character that the specified key would produce
  /// when the specified meta bits (see MetaKeyKeyListener)
  /// were active.
  ///
  ///
  /// Returns 0 if the key is not one that is used to type Unicode
  /// characters.
  ///
  ///
  /// If the return value has bit \#COMBINING_ACCENT set, the
  /// key is a "dead key" that should be combined with another to
  /// actually produce a character -- see \#getDeadChar --
  /// after masking with \#COMBINING_ACCENT_MASK.
  ///
  ///
  ///@param keyCode The key code.
  ///@param metaState The meta key modifier state.
  ///@return The associated character or combining accent, or 0 if none.
  int get0(int keyCode, int metaState) => jniAccessors.callMethodWithArgs(
      reference, _id_get0, jni.JniType.intType, [keyCode, metaState]).integer;

  static final _id_getNumber =
      jniAccessors.getMethodIDOf(_classRef, "getNumber", "(I)C");

  /// from: public char getNumber(int keyCode)
  ///
  /// Gets the number or symbol associated with the key.
  ///
  /// The character value is returned, not the numeric value.
  /// If the key is not a number, but is a symbol, the symbol is retuned.
  ///
  ///
  /// This method is intended to to support dial pads and other numeric or
  /// symbolic entry on keyboards where certain keys serve dual function
  /// as alphabetic and symbolic keys.  This method returns the number
  /// or symbol associated with the key independent of whether the user
  /// has pressed the required modifier.
  ///
  ///
  /// For example, on one particular keyboard the keys on the top QWERTY row generate
  /// numbers when ALT is pressed such that ALT-Q maps to '1'.  So for that keyboard
  /// when \#getNumber is called with KeyEvent\#KEYCODE_Q it returns '1'
  /// so that the user can type numbers without pressing ALT when it makes sense.
  ///
  ///
  ///@param keyCode The key code.
  ///@return The associated numeric or symbolic character, or 0 if none.
  int getNumber(int keyCode) => jniAccessors.callMethodWithArgs(
      reference, _id_getNumber, jni.JniType.charType, [keyCode]).char;

  static final _id_getMatch =
      jniAccessors.getMethodIDOf(_classRef, "getMatch", "(I[C)C");

  /// from: public char getMatch(int keyCode, char[] chars)
  ///
  /// Gets the first character in the character array that can be generated
  /// by the specified key code.
  ///
  /// This is a convenience function that returns the same value as
  /// \#getMatch(int,char[],int) getMatch(keyCode, chars, 0).
  ///
  ///
  ///@param keyCode The keycode.
  ///@param chars The array of matching characters to consider.
  ///@return The matching associated character, or 0 if none.
  ///@throws IllegalArgumentException if the passed array of characters is null.
  int getMatch(int keyCode, jni.JniObject chars) =>
      jniAccessors.callMethodWithArgs(reference, _id_getMatch,
          jni.JniType.charType, [keyCode, chars.reference]).char;

  static final _id_getMatch1 =
      jniAccessors.getMethodIDOf(_classRef, "getMatch", "(I[CI)C");

  /// from: public char getMatch(int keyCode, char[] chars, int metaState)
  ///
  /// Gets the first character in the character array that can be generated
  /// by the specified key code.  If there are multiple choices, prefers
  /// the one that would be generated with the specified meta key modifier state.
  ///@param keyCode The key code.
  ///@param chars The array of matching characters to consider.
  ///@param metaState The preferred meta key modifier state.
  ///@return The matching associated character, or 0 if none.
  ///@throws IllegalArgumentException if the passed array of characters is null.
  int getMatch1(int keyCode, jni.JniObject chars, int metaState) =>
      jniAccessors.callMethodWithArgs(reference, _id_getMatch1,
          jni.JniType.charType, [keyCode, chars.reference, metaState]).char;

  static final _id_getDisplayLabel =
      jniAccessors.getMethodIDOf(_classRef, "getDisplayLabel", "(I)C");

  /// from: public char getDisplayLabel(int keyCode)
  ///
  /// Gets the primary character for this key.
  /// In other words, the label that is physically printed on it.
  ///@param keyCode The key code.
  ///@return The display label character, or 0 if none (eg. for non-printing keys).
  int getDisplayLabel(int keyCode) => jniAccessors.callMethodWithArgs(
      reference, _id_getDisplayLabel, jni.JniType.charType, [keyCode]).char;

  static final _id_getDeadChar =
      jniAccessors.getStaticMethodIDOf(_classRef, "getDeadChar", "(II)I");

  /// from: static public int getDeadChar(int accent, int c)
  ///
  /// Get the character that is produced by combining the dead key producing accent
  /// with the key producing character c.
  /// For example, getDeadChar('`', 'e') returns &egrave;.
  /// getDeadChar('^', ' ') returns '^' and getDeadChar('^', '^') returns '^'.
  ///@param accent The accent character.  eg. '`'
  ///@param c The basic character.
  ///@return The combined character, or 0 if the characters cannot be combined.
  static int getDeadChar(int accent, int c) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getDeadChar, jni.JniType.intType, [accent, c]).integer;

  static final _id_getKeyData = jniAccessors.getMethodIDOf(
      _classRef, "getKeyData", "(ILandroid/view/KeyCharacterMap\$KeyData;)Z");

  /// from: public boolean getKeyData(int keyCode, android.view.KeyCharacterMap.KeyData results)
  ///
  /// Get the character conversion data for a given key code.
  ///@param keyCode The keyCode to query.
  ///@param results A KeyData instance that will be filled with the results.
  ///@return True if the key was mapped.  If the key was not mapped, results is not modified.
  ///@deprecated instead use KeyCharacterMap\#getDisplayLabel(int),
  /// KeyCharacterMap\#getNumber(int) or KeyCharacterMap\#get(int, int).
  bool getKeyData(int keyCode, KeyCharacterMap_KeyData results) =>
      jniAccessors.callMethodWithArgs(reference, _id_getKeyData,
          jni.JniType.booleanType, [keyCode, results.reference]).boolean;

  static final _id_getEvents = jniAccessors.getMethodIDOf(
      _classRef, "getEvents", "([C)[Landroid/view/KeyEvent;");

  /// from: public android.view.KeyEvent[] getEvents(char[] chars)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get an array of KeyEvent objects that if put into the input stream
  /// could plausibly generate the provided sequence of characters.  It is
  /// not guaranteed that the sequence is the only way to generate these
  /// events or that it is optimal.
  ///
  /// This function is primarily offered for instrumentation and testing purposes.
  /// It may fail to map characters to key codes.  In particular, the key character
  /// map for the \#BUILT_IN_KEYBOARD built-in keyboard device id may be empty.
  /// Consider using the key character map associated with the
  /// \#VIRTUAL_KEYBOARD virtual keyboard device id instead.
  ///
  ///
  /// For robust text entry, do not use this function.  Instead construct a
  /// KeyEvent with action code KeyEvent\#ACTION_MULTIPLE that contains
  /// the desired string using KeyEvent\#KeyEvent(long, String, int, int).
  ///
  ///
  ///@param chars The sequence of characters to generate.
  ///@return An array of KeyEvent objects, or null if the given char array
  ///         can not be generated using the current key character map.
  ///@throws IllegalArgumentException if the passed array of characters is null.
  jni.JniObject getEvents(jni.JniObject chars) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getEvents, jni.JniType.objectType, [chars.reference]).object);

  static final _id_isPrintingKey =
      jniAccessors.getMethodIDOf(_classRef, "isPrintingKey", "(I)Z");

  /// from: public boolean isPrintingKey(int keyCode)
  ///
  /// Returns true if the specified key produces a glyph.
  ///@param keyCode The key code.
  ///@return True if the key is a printing key.
  bool isPrintingKey(int keyCode) => jniAccessors.callMethodWithArgs(
      reference, _id_isPrintingKey, jni.JniType.booleanType, [keyCode]).boolean;

  static final _id_getKeyboardType =
      jniAccessors.getMethodIDOf(_classRef, "getKeyboardType", "()I");

  /// from: public int getKeyboardType()
  ///
  /// Gets the keyboard type.
  /// Returns \#NUMERIC, \#PREDICTIVE, \#ALPHA, \#FULL
  /// or \#SPECIAL_FUNCTION.
  ///
  /// Different keyboard types have different semantics.  Refer to the documentation
  /// associated with the keyboard type constants for details.
  ///
  ///
  ///@return The keyboard type.
  int getKeyboardType() => jniAccessors.callMethodWithArgs(
      reference, _id_getKeyboardType, jni.JniType.intType, []).integer;

  static final _id_getModifierBehavior =
      jniAccessors.getMethodIDOf(_classRef, "getModifierBehavior", "()I");

  /// from: public int getModifierBehavior()
  ///
  /// Gets a constant that describes the behavior of this keyboard's modifier keys
  /// such as KeyEvent\#KEYCODE_SHIFT_LEFT.
  ///
  /// Currently there are two behaviors that may be combined:
  ///
  ///
  /// <ul>
  /// <li>Chorded behavior: When the modifier key is pressed together with one or more
  /// character keys, the keyboard inserts the modified keys and
  /// then resets the modifier state when the modifier key is released.</li>
  /// <li>Toggled behavior: When the modifier key is pressed and released on its own
  /// it first toggles into a latched state.  When latched, the modifier will apply
  /// to next character key that is pressed and will then reset itself to the initial state.
  /// If the modifier is already latched and the modifier key is pressed and release on
  /// its own again, then it toggles into a locked state.  When locked, the modifier will
  /// apply to all subsequent character keys that are pressed until unlocked by pressing
  /// the modifier key on its own one more time to reset it to the initial state.
  /// Toggled behavior is useful for small profile keyboards designed for thumb typing.
  /// </ul>
  ///
  /// This function currently returns \#MODIFIER_BEHAVIOR_CHORDED when the
  /// \#getKeyboardType() keyboard type is \#FULL or \#SPECIAL_FUNCTION and
  /// \#MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED otherwise.
  /// In the future, the function may also take into account global keyboard
  /// accessibility settings, other user preferences, or new device capabilities.
  ///
  ///
  ///@return The modifier behavior for this keyboard.
  ///@see \#MODIFIER_BEHAVIOR_CHORDED
  ///@see \#MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED
  int getModifierBehavior() => jniAccessors.callMethodWithArgs(
      reference, _id_getModifierBehavior, jni.JniType.intType, []).integer;

  static final _id_deviceHasKey =
      jniAccessors.getStaticMethodIDOf(_classRef, "deviceHasKey", "(I)Z");

  /// from: static public boolean deviceHasKey(int keyCode)
  ///
  /// Queries the framework about whether any physical keys exist on the
  /// any keyboard attached to the device that are capable of producing the given key code.
  ///@param keyCode The key code to query.
  ///@return True if at least one attached keyboard supports the specified key code.
  static bool deviceHasKey(int keyCode) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_deviceHasKey,
          jni.JniType.booleanType, [keyCode]).boolean;

  static final _id_deviceHasKeys =
      jniAccessors.getStaticMethodIDOf(_classRef, "deviceHasKeys", "([I)[Z");

  /// from: static public boolean[] deviceHasKeys(int[] keyCodes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Queries the framework about whether any physical keys exist on the
  /// any keyboard attached to the device that are capable of producing the given
  /// array of key codes.
  ///@param keyCodes The array of key codes to query.
  ///@return A new array of the same size as the key codes array whose elements
  /// are set to true if at least one attached keyboard supports the corresponding key code
  /// at the same index in the key codes array.
  static jni.JniObject deviceHasKeys(jni.JniObject keyCodes) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_deviceHasKeys,
          jni.JniType.objectType,
          [keyCodes.reference]).object);

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;
}

/// from: android.view.KeyCharacterMap$UnavailableException
///
/// Thrown by KeyCharacterMap\#load when a key character map could not be loaded.
class KeyCharacterMap_UnavailableException
    extends androidruntimeexception_.AndroidRuntimeException {
  static final _classRef = jniAccessors
      .getClassOf("android/view/KeyCharacterMap\$UnavailableException");
  KeyCharacterMap_UnavailableException.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/lang/String;)V");

  /// from: public void <init>(java.lang.String msg)
  /// The returned object must be deleted after use, by calling the `delete` method.
  KeyCharacterMap_UnavailableException.ctor1(jni.JniString msg)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [msg.reference]).object);
}

/// from: android.view.KeyCharacterMap$KeyData
///
/// Describes the character mappings associated with a key.
///@deprecated instead use KeyCharacterMap\#getDisplayLabel(int),
/// KeyCharacterMap\#getNumber(int) and KeyCharacterMap\#get(int, int).
class KeyCharacterMap_KeyData extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/KeyCharacterMap\$KeyData");
  KeyCharacterMap_KeyData.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int META_LENGTH
  static const META_LENGTH = 4;

  static final _id_displayLabel =
      jniAccessors.getFieldIDOf(_classRef, "displayLabel", "C");

  /// from: public char displayLabel
  ///
  /// The display label (see \#getDisplayLabel).
  int get displayLabel => jniAccessors
      .getField(reference, _id_displayLabel, jni.JniType.charType)
      .char;

  /// from: public char displayLabel
  ///
  /// The display label (see \#getDisplayLabel).
  set displayLabel(int value) =>
      jniEnv.SetCharField(reference, _id_displayLabel, value);

  static final _id_meta = jniAccessors.getFieldIDOf(_classRef, "meta", "[C");

  /// from: public char[] meta
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The character that will be generated in various meta states
  /// (the same ones used for \#get and defined as
  /// KeyEvent\#META_SHIFT_ON and KeyEvent\#META_ALT_ON).
  ///      <table>
  ///          <tr><th>Index</th><th align="left">Value</th></tr>
  ///          <tr><td>0</td><td>no modifiers</td></tr>
  ///          <tr><td>1</td><td>caps</td></tr>
  ///          <tr><td>2</td><td>alt</td></tr>
  ///          <tr><td>3</td><td>caps + alt</td></tr>
  ///      </table>
  jni.JniObject get meta => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_meta, jni.JniType.objectType)
      .object);

  /// from: public char[] meta
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// The character that will be generated in various meta states
  /// (the same ones used for \#get and defined as
  /// KeyEvent\#META_SHIFT_ON and KeyEvent\#META_ALT_ON).
  ///      <table>
  ///          <tr><th>Index</th><th align="left">Value</th></tr>
  ///          <tr><td>0</td><td>no modifiers</td></tr>
  ///          <tr><td>1</td><td>caps</td></tr>
  ///          <tr><td>2</td><td>alt</td></tr>
  ///          <tr><td>3</td><td>caps + alt</td></tr>
  ///      </table>
  set meta(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_meta, value.reference);

  static final _id_number = jniAccessors.getFieldIDOf(_classRef, "number", "C");

  /// from: public char number
  ///
  /// The "number" value (see \#getNumber).
  int get number =>
      jniAccessors.getField(reference, _id_number, jni.JniType.charType).char;

  /// from: public char number
  ///
  /// The "number" value (see \#getNumber).
  set number(int value) => jniEnv.SetCharField(reference, _id_number, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  KeyCharacterMap_KeyData()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}