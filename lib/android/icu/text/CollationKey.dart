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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.icu.text.CollationKey
///
/// A <code>CollationKey</code> represents a <code>String</code>
/// under the rules of a specific <code>Collator</code>
/// object. Comparing two <code>CollationKey</code>s returns the
/// relative order of the <code>String</code>s they represent.
///
/// Since the rule set of <code>Collator</code>s can differ, the
/// sort orders of the same string under two different
/// <code>Collator</code>s might differ.  Hence comparing
/// <code>CollationKey</code>s generated from different
/// <code>Collator</code>s can give incorrect results.
///
/// Both the method
/// <code>CollationKey.compareTo(CollationKey)</code> and the method
/// <code>Collator.compare(String, String)</code> compare two strings
/// and returns their relative order.  The performance characteristics
/// of these two approaches can differ.
/// Note that collation keys are often less efficient than simply doing comparison.
/// For more details, see the ICU User Guide.
///
/// During the construction of a <code>CollationKey</code>, the
/// entire source string is examined and processed into a series of
/// bits terminated by a null, that are stored in the <code>CollationKey</code>.
/// When <code>CollationKey.compareTo(CollationKey)</code> executes, it
/// performs bitwise comparison on the bit sequences.  This can incurs
/// startup cost when creating the <code>CollationKey</code>, but once
/// the key is created, binary comparisons are fast.  This approach is
/// recommended when the same strings are to be compared over and over
/// again.
///
/// On the other hand, implementations of
/// <code>Collator.compare(String, String)</code> can examine and
/// process the strings only until the first characters differing in
/// order.  This approach is recommended if the strings are to be
/// compared only once.
///
///
/// More information about the composition of the bit sequence can
/// be found in the
/// <a href="http://www.icu-project.org/userguide/Collate_ServiceArchitecture.html">
/// user guide</a>.
///
///
/// The following example shows how <code>CollationKey</code>s can be used
/// to sort a list of <code>String</code>s.
///
/// <blockquote>
/// <pre>
/// // Create an array of CollationKeys for the Strings to be sorted.
/// Collator myCollator = Collator.getInstance();
/// CollationKey[] keys = new CollationKey[3];
/// keys[0] = myCollator.getCollationKey("Tom");
/// keys[1] = myCollator.getCollationKey("Dick");
/// keys[2] = myCollator.getCollationKey("Harry");
/// sort( keys );
/// <br>
/// //...
/// <br>
/// // Inside body of sort routine, compare keys this way
/// if( keys[i].compareTo( keys[j] ) &gt; 0 )
///    // swap keys[i] and keys[j]
/// <br>
/// //...
/// <br>
/// // Finally, when we've returned from sort.
/// System.out.println( keys[0].getSourceString() );
/// System.out.println( keys[1].getSourceString() );
/// System.out.println( keys[2].getSourceString() );
/// </pre>
/// </blockquote>
///
/// This class is not subclassable
///@see Collator
///@see RuleBasedCollator
///@author Syn Wee Quek
class CollationKey extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/CollationKey");
  CollationKey.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Ljava/lang/String;[B)V");

  /// from: public void <init>(java.lang.String source, byte[] key)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// CollationKey constructor.
  /// This constructor is given public access, unlike the JDK version, to
  /// allow access to users extending the Collator class. See
  /// Collator\#getCollationKey(String).
  ///@param source string this CollationKey is to represent
  ///@param key array of bytes that represent the collation order of argument
  ///            source terminated by a null
  ///@see Collator
  CollationKey(jni.JniString source, jni.JniObject key)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [source.reference, key.reference]).object);

  static final _id_getSourceString = jniAccessors.getMethodIDOf(
      _classRef, "getSourceString", "()Ljava/lang/String;");

  /// from: public java.lang.String getSourceString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the source string that this CollationKey represents.
  ///@return source string that this CollationKey represents
  jni.JniString getSourceString() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSourceString, jni.JniType.objectType, []).object);

  static final _id_toByteArray =
      jniAccessors.getMethodIDOf(_classRef, "toByteArray", "()[B");

  /// from: public byte[] toByteArray()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Duplicates and returns the value of this CollationKey as a sequence
  /// of big-endian bytes terminated by a null.
  ///
  /// If two CollationKeys can be legitimately compared, then one can
  /// compare the byte arrays of each to obtain the same result, e.g.
  /// <pre>
  /// byte key1[] = collationkey1.toByteArray();
  /// byte key2[] = collationkey2.toByteArray();
  /// int key, targetkey;
  /// int i = 0;
  /// do {
  ///       key = key1[i] &amp; 0xFF;
  ///     targetkey = key2[i] &amp; 0xFF;
  ///     if (key &lt; targetkey) {
  ///         System.out.println("String 1 is less than string 2");
  ///         return;
  ///     }
  ///     if (targetkey &lt; key) {
  ///         System.out.println("String 1 is more than string 2");
  ///     }
  ///     i ++;
  /// } while (key != 0 &amp;&amp; targetKey != 0);
  ///
  /// System.out.println("Strings are equal.");
  /// </pre>
  ///@return CollationKey value in a sequence of big-endian byte bytes
  ///         terminated by a null.
  jni.JniObject toByteArray() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toByteArray, jni.JniType.objectType, []).object);

  static final _id_compareTo = jniAccessors.getMethodIDOf(
      _classRef, "compareTo", "(Landroid/icu/text/CollationKey;)I");

  /// from: public int compareTo(android.icu.text.CollationKey target)
  ///
  /// Compare this CollationKey to another CollationKey.  The
  /// collation rules of the Collator that created this key are
  /// applied.
  ///
  /// <strong>Note:</strong> Comparison between CollationKeys
  /// created by different Collators might return incorrect
  /// results.  See class documentation.
  ///@param target target CollationKey
  ///@return an integer value.  If the value is less than zero this CollationKey
  ///         is less than than target, if the value is zero they are equal, and
  ///         if the value is greater than zero this CollationKey is greater
  ///         than target.
  ///@exception NullPointerException is thrown if argument is null.
  ///@see Collator\#compare(String, String)
  int compareTo(CollationKey target) => jniAccessors.callMethodWithArgs(
      reference,
      _id_compareTo,
      jni.JniType.intType,
      [target.reference]).integer;

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object target)
  ///
  /// Compare this CollationKey and the specified Object for
  /// equality.  The collation rules of the Collator that created
  /// this key are applied.
  ///
  /// See note in compareTo(CollationKey) for warnings about
  /// possible incorrect results.
  ///@param target the object to compare to.
  ///@return true if the two keys compare as equal, false otherwise.
  ///@see \#compareTo(CollationKey)
  ///@exception ClassCastException is thrown when the argument is not
  ///            a CollationKey.  NullPointerException is thrown when the argument
  ///            is null.
  bool equals1(jni.JniObject target) => jniAccessors.callMethodWithArgs(
      reference,
      _id_equals1,
      jni.JniType.booleanType,
      [target.reference]).boolean;

  static final _id_equals2 = jniAccessors.getMethodIDOf(
      _classRef, "equals", "(Landroid/icu/text/CollationKey;)Z");

  /// from: public boolean equals(android.icu.text.CollationKey target)
  ///
  /// Compare this CollationKey and the argument target CollationKey for
  /// equality.
  /// The collation
  /// rules of the Collator object which created these objects are applied.
  ///
  /// See note in compareTo(CollationKey) for warnings of incorrect results
  ///@param target the CollationKey to compare to.
  ///@return true if two objects are equal, false otherwise.
  ///@exception NullPointerException is thrown when the argument is null.
  bool equals2(CollationKey target) => jniAccessors.callMethodWithArgs(
      reference,
      _id_equals2,
      jni.JniType.booleanType,
      [target.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  ///
  /// Returns a hash code for this CollationKey. The hash value is calculated
  /// on the key itself, not the String from which the key was created. Thus
  /// if x and y are CollationKeys, then x.hashCode(x) == y.hashCode()
  /// if x.equals(y) is true. This allows language-sensitive comparison in a
  /// hash table.
  ///@return the hash value.
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_getBound = jniAccessors.getMethodIDOf(
      _classRef, "getBound", "(II)Landroid/icu/text/CollationKey;");

  /// from: public android.icu.text.CollationKey getBound(int boundType, int noOfLevels)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Produces a bound for the sort order of a given collation key and a
  /// strength level. This API does not attempt to find a bound for the
  /// CollationKey String representation, hence null will be returned in its
  /// place.
  ///
  /// Resulting bounds can be used to produce a range of strings that are
  /// between upper and lower bounds. For example, if bounds are produced
  /// for a sortkey of string "smith", strings between upper and lower
  /// bounds with primary strength would include "Smith", "SMITH", "sMiTh".
  ///
  /// There are two upper bounds that can be produced. If BoundMode.UPPER
  /// is produced, strings matched would be as above. However, if a bound
  /// is produced using BoundMode.UPPER_LONG is used, the above example will
  /// also match "Smithsonian" and similar.
  ///
  /// For more on usage, see example in test procedure
  /// <a href="http://source.icu-project.org/repos/icu/icu4j/trunk/src/com/ibm/icu/dev/test/collator/CollationAPITest.java">
  /// src/com/ibm/icu/dev/test/collator/CollationAPITest/TestBounds.
  /// </a>
  ///
  /// Collation keys produced may be compared using the <TT>compare</TT> API.
  ///@param boundType Mode of bound required. It can be BoundMode.LOWER, which
  ///              produces a lower inclusive bound, BoundMode.UPPER, that
  ///              produces upper bound that matches strings of the same
  ///              length or BoundMode.UPPER_LONG that matches strings that
  ///              have the same starting substring as the source string.
  ///@param noOfLevels Strength levels required in the resulting bound
  ///                 (for most uses, the recommended value is PRIMARY). This
  ///                 strength should be less than the maximum strength of
  ///                 this CollationKey.
  ///                 See users guide for explanation on the strength levels a
  ///                 collation key can have.
  ///@return the result bounded CollationKey with a valid sort order but
  ///         a null String representation.
  ///@exception IllegalArgumentException thrown when the strength level
  ///            requested is higher than or equal to the strength in this
  ///            CollationKey.
  ///            In the case of an Exception, information
  ///            about the maximum strength to use will be returned in the
  ///            Exception. The user can then call getBound() again with the
  ///            appropriate strength.
  ///@see CollationKey
  ///@see CollationKey.BoundMode
  ///@see Collator\#PRIMARY
  ///@see Collator\#SECONDARY
  ///@see Collator\#TERTIARY
  ///@see Collator\#QUATERNARY
  ///@see Collator\#IDENTICAL
  CollationKey getBound(int boundType, int noOfLevels) =>
      CollationKey.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getBound,
          jni.JniType.objectType,
          [boundType, noOfLevels]).object);

  static final _id_merge = jniAccessors.getMethodIDOf(_classRef, "merge",
      "(Landroid/icu/text/CollationKey;)Landroid/icu/text/CollationKey;");

  /// from: public android.icu.text.CollationKey merge(android.icu.text.CollationKey source)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Merges this CollationKey with another.
  /// The levels are merged with their corresponding counterparts
  /// (primaries with primaries, secondaries with secondaries etc.).
  /// Between the values from the same level a separator is inserted.
  ///
  /// This is useful, for example, for combining sort keys from first and last names
  /// to sort such pairs.
  /// See http://www.unicode.org/reports/tr10/\#Merging_Sort_Keys
  ///
  /// The recommended way to achieve "merged" sorting is by
  /// concatenating strings with U+FFFE between them.
  /// The concatenation has the same sort order as the merged sort keys,
  /// but merge(getSortKey(str1), getSortKey(str2)) may differ from getSortKey(str1 + '\ufffe' + str2).
  /// Using strings with U+FFFE may yield shorter sort keys.
  ///
  /// For details about Sort Key Features see
  /// http://userguide.icu-project.org/collation/api\#TOC-Sort-Key-Features
  ///
  /// It is possible to merge multiple sort keys by consecutively merging
  /// another one with the intermediate result.
  ///
  /// Only the sort key bytes of the CollationKeys are merged.
  /// This API does not attempt to merge the
  /// String representations of the CollationKeys, hence null will be returned
  /// as the result's String representation.
  ///
  /// Example (uncompressed):
  /// <pre>191B1D 01 050505 01 910505 00
  /// 1F2123 01 050505 01 910505 00</pre>
  /// will be merged as
  /// <pre>191B1D 02 1F2123 01 050505 02 050505 01 910505 02 910505 00</pre>
  ///@param source CollationKey to merge with
  ///@return a CollationKey that contains the valid merged sort keys
  ///         with a null String representation,
  ///         i.e. <tt>new CollationKey(null, merged_sort_keys)</tt>
  ///@exception IllegalArgumentException thrown if source CollationKey
  ///            argument is null or of 0 length.
  CollationKey merge(CollationKey source) =>
      CollationKey.fromRef(jniAccessors.callMethodWithArgs(reference, _id_merge,
          jni.JniType.objectType, [source.reference]).object);
}

/// from: android.icu.text.CollationKey$BoundMode
///
/// Options that used in the API CollationKey.getBound() for getting a
/// CollationKey based on the bound mode requested.
class CollationKey_BoundMode extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/icu/text/CollationKey\$BoundMode");
  CollationKey_BoundMode.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int LOWER
  ///
  /// Lower bound
  static const LOWER = 0;

  /// from: static public final int UPPER
  ///
  /// Upper bound that will match strings of exact size
  static const UPPER = 1;

  /// from: static public final int UPPER_LONG
  ///
  /// Upper bound that will match all the strings that have the same
  /// initial substring as the given string
  static const UPPER_LONG = 2;
}
