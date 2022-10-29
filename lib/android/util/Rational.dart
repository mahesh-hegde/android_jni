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

/// from: android.util.Rational
///
/// An immutable data type representation a rational number.
///
///
/// Contains a pair of {@code int}s representing the numerator and denominator of a
/// Rational number.
///
class Rational extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/util/Rational");
  Rational.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_NEGATIVE_INFINITY = jniAccessors.getStaticFieldIDOf(
      _classRef, "NEGATIVE_INFINITY", "Landroid/util/Rational;");

  /// from: static public final android.util.Rational NEGATIVE_INFINITY
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constant for the negative infinity value of the {@code Rational} type.
  ///
  /// Equivalent to constructing a new rational with a negative numerator and a denominator
  /// equal to {@code 0}.
  ///
  static Rational get NEGATIVE_INFINITY => Rational.fromRef(jniAccessors
      .getStaticField(_classRef, _id_NEGATIVE_INFINITY, jni.JniType.objectType)
      .object);

  static final _id_NaN = jniAccessors.getStaticFieldIDOf(
      _classRef, "NaN", "Landroid/util/Rational;");

  /// from: static public final android.util.Rational NaN
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constant for the _Not-a-Number (NaN)_ value of the {@code Rational} type.
  ///
  /// A {@code NaN} value is considered to be equal to itself (that is {@code NaN.equals(NaN)}
  /// will return {@code true}; it is always greater than any non-{@code NaN} value (that is
  /// {@code NaN.compareTo(notNaN)} will return a number greater than {@code 0}).
  ///
  ///
  /// Equivalent to constructing a new rational with both the numerator and denominator
  /// equal to {@code 0}.
  ///
  static Rational get NaN => Rational.fromRef(jniAccessors
      .getStaticField(_classRef, _id_NaN, jni.JniType.objectType)
      .object);

  static final _id_POSITIVE_INFINITY = jniAccessors.getStaticFieldIDOf(
      _classRef, "POSITIVE_INFINITY", "Landroid/util/Rational;");

  /// from: static public final android.util.Rational POSITIVE_INFINITY
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constant for the positive infinity value of the {@code Rational} type.
  ///
  /// Equivalent to constructing a new rational with a positive numerator and a denominator
  /// equal to {@code 0}.
  ///
  static Rational get POSITIVE_INFINITY => Rational.fromRef(jniAccessors
      .getStaticField(_classRef, _id_POSITIVE_INFINITY, jni.JniType.objectType)
      .object);

  static final _id_ZERO = jniAccessors.getStaticFieldIDOf(
      _classRef, "ZERO", "Landroid/util/Rational;");

  /// from: static public final android.util.Rational ZERO
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constant for the zero value of the {@code Rational} type.
  ///
  /// Equivalent to constructing a new rational with a numerator equal to {@code 0} and
  /// any non-zero denominator.
  ///
  static Rational get ZERO => Rational.fromRef(jniAccessors
      .getStaticField(_classRef, _id_ZERO, jni.JniType.objectType)
      .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(II)V");

  /// from: public void <init>(int numerator, int denominator)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a {@code Rational} with a given numerator and denominator.
  ///
  ///
  /// The signs of the numerator and the denominator may be flipped such that the denominator
  /// is always positive. Both the numerator and denominator will be converted to their reduced
  /// forms (see \#equals for more details).
  ///
  ///
  /// For example,
  /// <ul>
  /// <li>a rational of {@code 2/4} will be reduced to {@code 1/2}.
  /// <li>a rational of {@code 1/-1} will be flipped to {@code -1/1}
  /// <li>a rational of {@code 5/0} will be reduced to {@code 1/0}
  /// <li>a rational of {@code 0/5} will be reduced to {@code 0/1}
  /// </ul>
  ///
  ///
  ///@param numerator the numerator of the rational
  ///@param denominator the denominator of the rational
  ///@see \#equals
  Rational(int numerator, int denominator)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [numerator, denominator]).object);

  static final _id_getNumerator =
      jniAccessors.getMethodIDOf(_classRef, "getNumerator", "()I");

  /// from: public int getNumerator()
  ///
  /// Gets the numerator of the rational.
  ///
  /// The numerator will always return {@code 1} if this rational represents
  /// infinity (that is, the denominator is {@code 0}).
  ///
  int getNumerator() => jniAccessors.callMethodWithArgs(
      reference, _id_getNumerator, jni.JniType.intType, []).integer;

  static final _id_getDenominator =
      jniAccessors.getMethodIDOf(_classRef, "getDenominator", "()I");

  /// from: public int getDenominator()
  ///
  /// Gets the denominator of the rational
  ///
  /// The denominator may return {@code 0}, in which case the rational may represent
  /// positive infinity (if the numerator was positive), negative infinity (if the numerator
  /// was negative), or {@code NaN} (if the numerator was {@code 0}).
  ///
  ///
  /// The denominator will always return {@code 1} if the numerator is {@code 0}.
  int getDenominator() => jniAccessors.callMethodWithArgs(
      reference, _id_getDenominator, jni.JniType.intType, []).integer;

  static final _id_isNaN =
      jniAccessors.getMethodIDOf(_classRef, "isNaN", "()Z");

  /// from: public boolean isNaN()
  ///
  /// Indicates whether this rational is a _Not-a-Number (NaN)_ value.
  ///
  /// A {@code NaN} value occurs when both the numerator and the denominator are {@code 0}.
  ///
  ///@return {@code true} if this rational is a _Not-a-Number (NaN)_ value;
  ///         {@code false} if this is a (potentially infinite) number value
  bool isNaN() => jniAccessors.callMethodWithArgs(
      reference, _id_isNaN, jni.JniType.booleanType, []).boolean;

  static final _id_isInfinite =
      jniAccessors.getMethodIDOf(_classRef, "isInfinite", "()Z");

  /// from: public boolean isInfinite()
  ///
  /// Indicates whether this rational represents an infinite value.
  ///
  /// An infinite value occurs when the denominator is {@code 0} (but the numerator is not).
  ///
  ///@return {@code true} if this rational is a (positive or negative) infinite value;
  ///         {@code false} if this is a finite number value (or {@code NaN})
  bool isInfinite() => jniAccessors.callMethodWithArgs(
      reference, _id_isInfinite, jni.JniType.booleanType, []).boolean;

  static final _id_isFinite =
      jniAccessors.getMethodIDOf(_classRef, "isFinite", "()Z");

  /// from: public boolean isFinite()
  ///
  /// Indicates whether this rational represents a finite value.
  ///
  /// A finite value occurs when the denominator is not {@code 0}; in other words
  /// the rational is neither infinity or {@code NaN}.
  ///
  ///@return {@code true} if this rational is a (positive or negative) infinite value;
  ///         {@code false} if this is a finite number value (or {@code NaN})
  bool isFinite() => jniAccessors.callMethodWithArgs(
      reference, _id_isFinite, jni.JniType.booleanType, []).boolean;

  static final _id_isZero =
      jniAccessors.getMethodIDOf(_classRef, "isZero", "()Z");

  /// from: public boolean isZero()
  ///
  /// Indicates whether this rational represents a zero value.
  ///
  /// A zero value is a \#isFinite finite rational with a numerator of {@code 0}.
  ///
  ///@return {@code true} if this rational is finite zero value;
  ///         {@code false} otherwise
  bool isZero() => jniAccessors.callMethodWithArgs(
      reference, _id_isZero, jni.JniType.booleanType, []).boolean;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  ///
  /// Compare this Rational to another object and see if they are equal.
  ///
  ///
  /// A Rational object can only be equal to another Rational object (comparing against any
  /// other type will return {@code false}).
  ///
  ///
  /// A Rational object is considered equal to another Rational object if and only if one of
  /// the following holds:
  ///
  /// <ul><li>Both are {@code NaN}</li>
  ///     <li>Both are infinities of the same sign</li>
  ///     <li>Both have the same numerator and denominator in their reduced form</li>
  /// </ul>
  ///
  /// A reduced form of a Rational is calculated by dividing both the numerator and the
  /// denominator by their greatest common divisor.
  ///
  ///
  /// <pre>{@code
  /// (new Rational(1, 2)).equals(new Rational(1, 2)) == true   // trivially true
  /// (new Rational(2, 3)).equals(new Rational(1, 2)) == false  // trivially false
  /// (new Rational(1, 2)).equals(new Rational(2, 4)) == true   // true after reduction
  /// (new Rational(0, 0)).equals(new Rational(0, 0)) == true   // NaN.equals(NaN)
  /// (new Rational(1, 0)).equals(new Rational(5, 0)) == true   // both are +infinity
  /// (new Rational(1, 0)).equals(new Rational(-1, 0)) == false // +infinity != -infinity
  /// }</pre>
  ///@param obj a reference to another object
  ///@return A boolean that determines whether or not the two Rational objects are equal.
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a string representation of this rational, e.g.&nbsp;{@code "1/2"}.
  ///
  /// The following rules of conversion apply:
  /// <ul>
  /// <li>{@code NaN} values will return {@code "NaN"}
  /// <li>Positive infinity values will return {@code "Infinity"}
  /// <li>Negative infinity values will return {@code "-Infinity"}
  /// <li>All other values will return {@code "numerator/denominator"} where {@code numerator}
  /// and {@code denominator} are substituted with the appropriate numerator and denominator
  /// values.
  /// </ul>
  ///
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// {@inheritDoc}
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_doubleValue =
      jniAccessors.getMethodIDOf(_classRef, "doubleValue", "()D");

  /// from: public double doubleValue()
  ///
  /// Returns the value of the specified number as a {@code double}.
  ///
  /// The {@code double} is calculated by converting both the numerator and denominator
  /// to a {@code double}; then returning the result of dividing the numerator by the
  /// denominator.
  ///
  ///@return the divided value of the numerator and denominator as a {@code double}.
  double doubleValue() => jniAccessors.callMethodWithArgs(
      reference, _id_doubleValue, jni.JniType.doubleType, []).doubleFloat;

  static final _id_floatValue =
      jniAccessors.getMethodIDOf(_classRef, "floatValue", "()F");

  /// from: public float floatValue()
  ///
  /// Returns the value of the specified number as a {@code float}.
  ///
  /// The {@code float} is calculated by converting both the numerator and denominator
  /// to a {@code float}; then returning the result of dividing the numerator by the
  /// denominator.
  ///
  ///@return the divided value of the numerator and denominator as a {@code float}.
  double floatValue() => jniAccessors.callMethodWithArgs(
      reference, _id_floatValue, jni.JniType.floatType, []).float;

  static final _id_intValue =
      jniAccessors.getMethodIDOf(_classRef, "intValue", "()I");

  /// from: public int intValue()
  ///
  /// Returns the value of the specified number as a {@code int}.
  ///
  /// \#isInfinite Finite rationals are converted to an {@code int} value
  /// by dividing the numerator by the denominator; conversion for non-finite values happens
  /// identically to casting a floating point value to an {@code int}, in particular:
  ///
  ///
  /// <ul>
  /// <li>Positive infinity saturates to the largest maximum integer
  /// Integer\#MAX_VALUE</li>
  /// <li>Negative infinity saturates to the smallest maximum integer
  /// Integer\#MIN_VALUE</li>
  /// <li>_Not-A-Number (NaN)_ returns {@code 0}.</li>
  /// </ul>
  ///
  ///
  ///@return the divided value of the numerator and denominator as a {@code int}.
  int intValue() => jniAccessors.callMethodWithArgs(
      reference, _id_intValue, jni.JniType.intType, []).integer;

  static final _id_longValue =
      jniAccessors.getMethodIDOf(_classRef, "longValue", "()J");

  /// from: public long longValue()
  ///
  /// Returns the value of the specified number as a {@code long}.
  ///
  /// \#isInfinite Finite rationals are converted to an {@code long} value
  /// by dividing the numerator by the denominator; conversion for non-finite values happens
  /// identically to casting a floating point value to a {@code long}, in particular:
  ///
  ///
  /// <ul>
  /// <li>Positive infinity saturates to the largest maximum long
  /// Long\#MAX_VALUE</li>
  /// <li>Negative infinity saturates to the smallest maximum long
  /// Long\#MIN_VALUE</li>
  /// <li>_Not-A-Number (NaN)_ returns {@code 0}.</li>
  /// </ul>
  ///
  ///
  ///@return the divided value of the numerator and denominator as a {@code long}.
  int longValue() => jniAccessors.callMethodWithArgs(
      reference, _id_longValue, jni.JniType.longType, []).long;

  static final _id_shortValue =
      jniAccessors.getMethodIDOf(_classRef, "shortValue", "()S");

  /// from: public short shortValue()
  ///
  /// Returns the value of the specified number as a {@code short}.
  ///
  /// \#isInfinite Finite rationals are converted to a {@code short} value
  /// identically to \#intValue; the {@code int} result is then truncated to a
  /// {@code short} before returning the value.
  ///
  ///@return the divided value of the numerator and denominator as a {@code short}.
  int shortValue() => jniAccessors.callMethodWithArgs(
      reference, _id_shortValue, jni.JniType.shortType, []).short;

  static final _id_compareTo = jniAccessors.getMethodIDOf(
      _classRef, "compareTo", "(Landroid/util/Rational;)I");

  /// from: public int compareTo(android.util.Rational another)
  ///
  /// Compare this rational to the specified rational to determine their natural order.
  ///
  /// \#NaN is considered to be equal to itself and greater than all other
  /// {@code Rational} values. Otherwise, if the objects are not \#equals equal, then
  /// the following rules apply:
  ///
  ///
  /// <ul>
  /// <li>Positive infinity is greater than any other finite number (or negative infinity)
  /// <li>Negative infinity is less than any other finite number (or positive infinity)
  /// <li>The finite number represented by this rational is checked numerically
  /// against the other finite number by converting both rationals to a common denominator multiple
  /// and comparing their numerators.
  /// </ul>
  ///@param another the rational to be compared
  ///@return a negative integer, zero, or a positive integer as this object is less than,
  ///         equal to, or greater than the specified rational.
  ///@throws NullPointerException if {@code another} was {@code null}
  int compareTo(Rational another) => jniAccessors.callMethodWithArgs(reference,
      _id_compareTo, jni.JniType.intType, [another.reference]).integer;

  static final _id_parseRational = jniAccessors.getStaticMethodIDOf(_classRef,
      "parseRational", "(Ljava/lang/String;)Landroid/util/Rational;");

  /// from: static public android.util.Rational parseRational(java.lang.String string)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Parses the specified string as a rational value.
  /// The ASCII characters {@code \}{@code u003a} (':') and
  /// {@code \}{@code u002f} ('/') are recognized as separators between
  /// the numerator and denumerator.
  ///
  ///
  /// For any {@code Rational r}: {@code Rational.parseRational(r.toString()).equals(r)}.
  /// However, the method also handles rational numbers expressed in the
  /// following forms:
  ///
  ///
  /// "<i>num</i>{@code /}<i>den</i>" or
  /// "<i>num</i>{@code :}<i>den</i>" {@code => new Rational(num, den);},
  /// where <i>num</i> and <i>den</i> are string integers potentially
  /// containing a sign, such as "-10", "+7" or "5".
  ///
  ///
  /// <pre>{@code
  /// Rational.parseRational("3:+6").equals(new Rational(1, 2)) == true
  /// Rational.parseRational("-3/-6").equals(new Rational(1, 2)) == true
  /// Rational.parseRational("4.56") => throws NumberFormatException
  /// }</pre>
  ///@param string the string representation of a rational value.
  ///@return the rational value represented by {@code string}.
  ///@throws NumberFormatException if {@code string} cannot be parsed
  /// as a rational value.
  ///@throws NullPointerException if {@code string} was {@code null}
  static Rational parseRational(jni.JniString string) =>
      Rational.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_parseRational,
          jni.JniType.objectType,
          [string.reference]).object);
}
