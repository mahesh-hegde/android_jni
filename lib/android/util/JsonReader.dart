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

import "JsonToken.dart" as jsontoken_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.util.JsonReader
///
/// Reads a JSON (<a href="http://www.ietf.org/rfc/rfc4627.txt">RFC 4627</a>)
/// encoded value as a stream of tokens. This stream includes both literal
/// values (strings, numbers, booleans, and nulls) as well as the begin and
/// end delimiters of objects and arrays. The tokens are traversed in
/// depth-first order, the same order that they appear in the JSON document.
/// Within JSON objects, name/value pairs are represented by a single token.
///
/// <h3>Parsing JSON</h3>
/// To create a recursive descent parser for your own JSON streams, first create
/// an entry point method that creates a {@code JsonReader}.
///
/// Next, create handler methods for each structure in your JSON text. You'll
/// need a method for each object type and for each array type.
/// <ul>
///   <li>Within <strong>array handling</strong> methods, first call \#beginArray to consume the array's opening bracket. Then create a
///       while loop that accumulates values, terminating when \#hasNext
///       is false. Finally, read the array's closing bracket by calling \#endArray.
///   <li>Within <strong>object handling</strong> methods, first call \#beginObject to consume the object's opening brace. Then create a
///       while loop that assigns values to local variables based on their name.
///       This loop should terminate when \#hasNext is false. Finally,
///       read the object's closing brace by calling \#endObject.
/// </ul>
/// When a nested object or array is encountered, delegate to the
/// corresponding handler method.
///
/// When an unknown name is encountered, strict parsers should fail with an
/// exception. Lenient parsers should call \#skipValue() to recursively
/// skip the value's nested tokens, which may otherwise conflict.
///
/// If a value may be null, you should first check using \#peek().
/// Null literals can be consumed using either \#nextNull() or \#skipValue().
///
/// <h3>Example</h3>
/// Suppose we'd like to parse a stream of messages such as the following: <pre> {@code
/// [
///   {
///     "id": 912345678901,
///     "text": "How do I read JSON on Android?",
///     "geo": null,
///     "user": {
///       "name": "android_newb",
///       "followers_count": 41
///      }
///   },
///   {
///     "id": 912345678902,
///     "text": "@android_newb just use android.util.JsonReader!",
///     "geo": [50.454722, -104.606667],
///     "user": {
///       "name": "jesse",
///       "followers_count": 2
///     }
///   }
/// ]}</pre>
/// This code implements the parser for the above structure: <pre>   {@code
///
///   public List<Message> readJsonStream(InputStream in) throws IOException {
///     JsonReader reader = new JsonReader(new InputStreamReader(in, "UTF-8"));
///     try {
///       return readMessagesArray(reader);
///     } finally {
///       reader.close();
///     }
///   }
///
///   public List<Message> readMessagesArray(JsonReader reader) throws IOException {
///     List<Message> messages = new ArrayList<Message>();
///
///     reader.beginArray();
///     while (reader.hasNext()) {
///       messages.add(readMessage(reader));
///     }
///     reader.endArray();
///     return messages;
///   }
///
///   public Message readMessage(JsonReader reader) throws IOException {
///     long id = -1;
///     String text = null;
///     User user = null;
///     List<Double> geo = null;
///
///     reader.beginObject();
///     while (reader.hasNext()) {
///       String name = reader.nextName();
///       if (name.equals("id")) {
///         id = reader.nextLong();
///       } else if (name.equals("text")) {
///         text = reader.nextString();
///       } else if (name.equals("geo") && reader.peek() != JsonToken.NULL) {
///         geo = readDoublesArray(reader);
///       } else if (name.equals("user")) {
///         user = readUser(reader);
///       } else {
///         reader.skipValue();
///       }
///     }
///     reader.endObject();
///     return new Message(id, text, user, geo);
///   }
///
///   public List<Double> readDoublesArray(JsonReader reader) throws IOException {
///     List<Double> doubles = new ArrayList<Double>();
///
///     reader.beginArray();
///     while (reader.hasNext()) {
///       doubles.add(reader.nextDouble());
///     }
///     reader.endArray();
///     return doubles;
///   }
///
///   public User readUser(JsonReader reader) throws IOException {
///     String username = null;
///     int followersCount = -1;
///
///     reader.beginObject();
///     while (reader.hasNext()) {
///       String name = reader.nextName();
///       if (name.equals("name")) {
///         username = reader.nextString();
///       } else if (name.equals("followers_count")) {
///         followersCount = reader.nextInt();
///       } else {
///         reader.skipValue();
///       }
///     }
///     reader.endObject();
///     return new User(username, followersCount);
///   }}</pre>
///
/// <h3>Number Handling</h3>
/// This reader permits numeric values to be read as strings and string values to
/// be read as numbers. For example, both elements of the JSON array {@code
/// [1, "1"]} may be read using either \#nextInt or \#nextString.
/// This behavior is intended to prevent lossy numeric conversions: double is
/// JavaScript's only numeric type and very large values like {@code
/// 9007199254740993} cannot be represented exactly on that platform. To minimize
/// precision loss, extremely large values should be written and read as strings
/// in JSON.
///
/// Each {@code JsonReader} may be used to read a single JSON stream. Instances
/// of this class are not thread safe.
class JsonReader extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/util/JsonReader");
  JsonReader.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(Ljava/io/Reader;)V");

  /// from: public void <init>(java.io.Reader in)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new instance that reads a JSON-encoded stream from {@code in}.
  JsonReader(jni.JniObject in0)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [in0.reference]).object);

  static final _id_setLenient =
      jniAccessors.getMethodIDOf(_classRef, "setLenient", "(Z)V");

  /// from: public void setLenient(boolean lenient)
  ///
  /// Configure this parser to be  be liberal in what it accepts. By default,
  /// this parser is strict and only accepts JSON as specified by <a href="http://www.ietf.org/rfc/rfc4627.txt">RFC 4627</a>. Setting the
  /// parser to lenient causes it to ignore the following syntax errors:
  ///
  /// <ul>
  ///   <li>End of line comments starting with {@code //} or {@code \#} and
  ///       ending with a newline character.
  ///   <li>C-style comments starting with {@code /*} and ending with
  ///       {@code *}{@code /}. Such comments may not be nested.
  ///   <li>Names that are unquoted or {@code 'single quoted'}.
  ///   <li>Strings that are unquoted or {@code 'single quoted'}.
  ///   <li>Array elements separated by {@code ;} instead of {@code ,}.
  ///   <li>Unnecessary array separators. These are interpreted as if null
  ///       was the omitted value.
  ///   <li>Names and values separated by {@code =} or {@code =>} instead of
  ///       {@code :}.
  ///   <li>Name/value pairs separated by {@code ;} instead of {@code ,}.
  /// </ul>
  void setLenient(bool lenient) => jniAccessors.callMethodWithArgs(
      reference, _id_setLenient, jni.JniType.voidType, [lenient]).check();

  static final _id_isLenient =
      jniAccessors.getMethodIDOf(_classRef, "isLenient", "()Z");

  /// from: public boolean isLenient()
  ///
  /// Returns true if this parser is liberal in what it accepts.
  bool isLenient() => jniAccessors.callMethodWithArgs(
      reference, _id_isLenient, jni.JniType.booleanType, []).boolean;

  static final _id_beginArray =
      jniAccessors.getMethodIDOf(_classRef, "beginArray", "()V");

  /// from: public void beginArray()
  ///
  /// Consumes the next token from the JSON stream and asserts that it is the
  /// beginning of a new array.
  void beginArray() => jniAccessors.callMethodWithArgs(
      reference, _id_beginArray, jni.JniType.voidType, []).check();

  static final _id_endArray =
      jniAccessors.getMethodIDOf(_classRef, "endArray", "()V");

  /// from: public void endArray()
  ///
  /// Consumes the next token from the JSON stream and asserts that it is the
  /// end of the current array.
  void endArray() => jniAccessors.callMethodWithArgs(
      reference, _id_endArray, jni.JniType.voidType, []).check();

  static final _id_beginObject =
      jniAccessors.getMethodIDOf(_classRef, "beginObject", "()V");

  /// from: public void beginObject()
  ///
  /// Consumes the next token from the JSON stream and asserts that it is the
  /// beginning of a new object.
  void beginObject() => jniAccessors.callMethodWithArgs(
      reference, _id_beginObject, jni.JniType.voidType, []).check();

  static final _id_endObject =
      jniAccessors.getMethodIDOf(_classRef, "endObject", "()V");

  /// from: public void endObject()
  ///
  /// Consumes the next token from the JSON stream and asserts that it is the
  /// end of the current array.
  void endObject() => jniAccessors.callMethodWithArgs(
      reference, _id_endObject, jni.JniType.voidType, []).check();

  static final _id_hasNext =
      jniAccessors.getMethodIDOf(_classRef, "hasNext", "()Z");

  /// from: public boolean hasNext()
  ///
  /// Returns true if the current array or object has another element.
  bool hasNext() => jniAccessors.callMethodWithArgs(
      reference, _id_hasNext, jni.JniType.booleanType, []).boolean;

  static final _id_peek = jniAccessors.getMethodIDOf(
      _classRef, "peek", "()Landroid/util/JsonToken;");

  /// from: public android.util.JsonToken peek()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the type of the next token without consuming it.
  jsontoken_.JsonToken peek() =>
      jsontoken_.JsonToken.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_peek, jni.JniType.objectType, []).object);

  static final _id_nextName =
      jniAccessors.getMethodIDOf(_classRef, "nextName", "()Ljava/lang/String;");

  /// from: public java.lang.String nextName()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the next token, a JsonToken\#NAME property name, and
  /// consumes it.
  ///@throws IOException if the next token in the stream is not a property
  ///     name.
  jni.JniString nextName() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_nextName, jni.JniType.objectType, []).object);

  static final _id_nextString = jniAccessors.getMethodIDOf(
      _classRef, "nextString", "()Ljava/lang/String;");

  /// from: public java.lang.String nextString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the JsonToken\#STRING string value of the next token,
  /// consuming it. If the next token is a number, this method will return its
  /// string form.
  ///@throws IllegalStateException if the next token is not a string or if
  ///     this reader is closed.
  jni.JniString nextString() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_nextString, jni.JniType.objectType, []).object);

  static final _id_nextBoolean =
      jniAccessors.getMethodIDOf(_classRef, "nextBoolean", "()Z");

  /// from: public boolean nextBoolean()
  ///
  /// Returns the JsonToken\#BOOLEAN boolean value of the next token,
  /// consuming it.
  ///@throws IllegalStateException if the next token is not a boolean or if
  ///     this reader is closed.
  bool nextBoolean() => jniAccessors.callMethodWithArgs(
      reference, _id_nextBoolean, jni.JniType.booleanType, []).boolean;

  static final _id_nextNull =
      jniAccessors.getMethodIDOf(_classRef, "nextNull", "()V");

  /// from: public void nextNull()
  ///
  /// Consumes the next token from the JSON stream and asserts that it is a
  /// literal null.
  ///@throws IllegalStateException if the next token is not null or if this
  ///     reader is closed.
  void nextNull() => jniAccessors.callMethodWithArgs(
      reference, _id_nextNull, jni.JniType.voidType, []).check();

  static final _id_nextDouble =
      jniAccessors.getMethodIDOf(_classRef, "nextDouble", "()D");

  /// from: public double nextDouble()
  ///
  /// Returns the JsonToken\#NUMBER double value of the next token,
  /// consuming it. If the next token is a string, this method will attempt to
  /// parse it as a double using Double\#parseDouble(String).
  ///@throws IllegalStateException if the next token is not a literal value.
  double nextDouble() => jniAccessors.callMethodWithArgs(
      reference, _id_nextDouble, jni.JniType.doubleType, []).doubleFloat;

  static final _id_nextLong =
      jniAccessors.getMethodIDOf(_classRef, "nextLong", "()J");

  /// from: public long nextLong()
  ///
  /// Returns the JsonToken\#NUMBER long value of the next token,
  /// consuming it. If the next token is a string, this method will attempt to
  /// parse it as a long. If the next token's numeric value cannot be exactly
  /// represented by a Java {@code long}, this method throws.
  ///@throws IllegalStateException if the next token is not a literal value.
  ///@throws NumberFormatException if the next literal value cannot be parsed
  ///     as a number, or exactly represented as a long.
  int nextLong() => jniAccessors.callMethodWithArgs(
      reference, _id_nextLong, jni.JniType.longType, []).long;

  static final _id_nextInt =
      jniAccessors.getMethodIDOf(_classRef, "nextInt", "()I");

  /// from: public int nextInt()
  ///
  /// Returns the JsonToken\#NUMBER int value of the next token,
  /// consuming it. If the next token is a string, this method will attempt to
  /// parse it as an int. If the next token's numeric value cannot be exactly
  /// represented by a Java {@code int}, this method throws.
  ///@throws IllegalStateException if the next token is not a literal value.
  ///@throws NumberFormatException if the next literal value cannot be parsed
  ///     as a number, or exactly represented as an int.
  int nextInt() => jniAccessors.callMethodWithArgs(
      reference, _id_nextInt, jni.JniType.intType, []).integer;

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Closes this JSON reader and the underlying Reader.
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_skipValue =
      jniAccessors.getMethodIDOf(_classRef, "skipValue", "()V");

  /// from: public void skipValue()
  ///
  /// Skips the next value recursively. If it is an object or array, all nested
  /// elements are skipped. This method is intended for use when the JSON token
  /// stream contains unrecognized or unhandled values.
  void skipValue() => jniAccessors.callMethodWithArgs(
      reference, _id_skipValue, jni.JniType.voidType, []).check();

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}
