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

import "Session.dart" as session_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.se.omapi.Channel
///
/// Instances of this class represent an ISO/IEC 7816-4 channel opened to a
/// Secure Element. It can be either a logical channel or the basic channel. They
/// can be used to send APDUs to the secure element. Channels are opened by
/// calling the Session.openBasicChannel(byte[]) or
/// Session.openLogicalChannel(byte[]) methods.
///@see <a href="http://globalplatform.org">GlobalPlatform Open Mobile API</a>
class Channel extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/se/omapi/Channel");
  Channel.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  Channel()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Closes this channel to the Secure Element. If the method is called when
  /// the channel is already closed, this method will be ignored. The close()
  /// method shall wait for completion of any pending transmit(byte[] command)
  /// before closing the channel.
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();

  static final _id_isOpen =
      jniAccessors.getMethodIDOf(_classRef, "isOpen", "()Z");

  /// from: public boolean isOpen()
  ///
  /// Tells if this channel is open.
  ///@return <code>false</code> if the channel is closed or in case of an error.
  ///         <code>true</code> otherwise.
  bool isOpen() => jniAccessors.callMethodWithArgs(
      reference, _id_isOpen, jni.JniType.booleanType, []).boolean;

  static final _id_isBasicChannel =
      jniAccessors.getMethodIDOf(_classRef, "isBasicChannel", "()Z");

  /// from: public boolean isBasicChannel()
  ///
  /// Returns a boolean telling if this channel is the basic channel.
  ///@return <code>true</code> if this channel is a basic channel. <code>false</code> if
  ///         this channel is a logical channel.
  bool isBasicChannel() => jniAccessors.callMethodWithArgs(
      reference, _id_isBasicChannel, jni.JniType.booleanType, []).boolean;

  static final _id_transmit =
      jniAccessors.getMethodIDOf(_classRef, "transmit", "([B)[B");

  /// from: public byte[] transmit(byte[] command)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Transmit an APDU command (as per ISO/IEC 7816-4) to the Secure Element. The
  /// underlying layers generate as many TPDUs as necessary to transport this APDU. The
  /// API shall ensure that all available data returned from Secure Element, including
  /// concatenated responses, are retrieved and made available to the calling application. If a
  /// warning status code is received the API wont check for further response data but will
  /// return all data received so far and the warning status code.<br>
  /// The transport part is invisible from the application. The generated response is the
  /// response of the APDU which means that all protocols related responses are handled
  /// inside the API or the underlying implementation.<br>
  /// The transmit method shall support extended length APDU commands independently of
  /// the coding within the ATR.<br>
  /// For status word '61 XX' the API or underlying implementation shall issue a GET
  /// RESPONSE command as specified by ISO 7816-4 standard with LE=XX; for the status
  /// word '6C XX', the API or underlying implementation shall reissue the input command
  /// with LE=XX. For other status words, the API (or underlying implementation) shall return
  /// the complete response including data and status word to the device application. The API
  /// (or underlying implementation) shall not handle internally the received status words. The
  /// channel shall not be closed even if the Secure Element answered with an error code.
  /// The system ensures the synchronization between all the concurrent calls to this method,
  /// and that only one APDU will be sent at a time, irrespective of the number of TPDUs that
  /// might be required to transport it to the SE. The entire APDU communication to this SE is
  /// locked to the APDU.<br>
  /// The channel information in the class byte in the APDU will be ignored. The system will
  /// add any required information to ensure the APDU is transported on this channel.
  /// The only restrictions on the set of commands that can be sent is defined below, the API
  /// implementation shall be able to send all other commands: <br>
  /// <ul>
  /// <li>MANAGE_CHANNEL commands are not allowed.</li>
  /// <li>SELECT by DF Name (p1=04) are not allowed.</li>
  /// <li>CLA bytes with channel numbers are de-masked.</li>
  /// </ul>
  ///@param command the APDU command to be transmitted, as a byte array.
  ///
  /// This value must never be {@code null}.
  ///@return the response received, as a byte array. The returned byte array contains the data
  /// bytes in the following order:
  /// [&lt;first data byte&gt;, ..., &lt;last data byte&gt;, &lt;sw1&gt;, &lt;sw2&gt;]
  ///
  /// This value will never be {@code null}.
  ///@throws IOException if there is a communication problem to the reader or the Secure Element.
  ///@throws IllegalStateException if the channel is used after being closed.
  ///@throws IllegalArgumentException if the command byte array is less than 4 bytes long.
  ///@throws IllegalArgumentException if Lc byte is inconsistent with length of the byte array.
  ///@throws IllegalArgumentException if CLA byte is invalid according to [2] (0xff).
  ///@throws IllegalArgumentException if INS byte is invalid according to [2] (0x6x or 0x9x).
  ///@throws SecurityException if the command is filtered by the security policy.
  ///@throws NullPointerException if command is NULL.
  jni.JniObject transmit(jni.JniObject command) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_transmit, jni.JniType.objectType, [command.reference]).object);

  static final _id_getSession = jniAccessors.getMethodIDOf(
      _classRef, "getSession", "()Landroid/se/omapi/Session;");

  /// from: public android.se.omapi.Session getSession()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get the session that has opened this channel.
  ///@return the session object this channel is bound to.
  ///
  /// This value will never be {@code null}.
  session_.Session getSession() =>
      session_.Session.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSession, jni.JniType.objectType, []).object);

  static final _id_getSelectResponse =
      jniAccessors.getMethodIDOf(_classRef, "getSelectResponse", "()[B");

  /// from: public byte[] getSelectResponse()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the data as received from the application select command inclusively the status word
  /// received at applet selection.
  /// The returned byte array contains the data bytes in the following order:
  /// [&lt;first data byte&gt;, ..., &lt;last data byte&gt;, &lt;sw1&gt;, &lt;sw2&gt;]
  ///@return The data as returned by the application select command inclusively the status word.
  /// Only the status word if the application select command has no returned data.
  /// Returns null if an application select command has not been performed or the selection
  /// response can not be retrieved by the reader implementation.
  jni.JniObject getSelectResponse() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSelectResponse, jni.JniType.objectType, []).object);

  static final _id_selectNext =
      jniAccessors.getMethodIDOf(_classRef, "selectNext", "()Z");

  /// from: public boolean selectNext()
  ///
  /// Performs a selection of the next Applet on this channel that matches to the partial AID
  /// specified in the openBasicChannel(byte[] aid) or openLogicalChannel(byte[] aid) method.
  /// This mechanism can be used by a device application to iterate through all Applets
  /// matching to the same partial AID.
  /// If selectNext() returns true a new Applet was successfully selected on this channel.
  /// If no further Applet exists with matches to the partial AID this method returns false
  /// and the already selected Applet stays selected. <br>
  ///
  /// Since the API cannot distinguish between a partial and full AID the API shall rely on the
  /// response of the Secure Element for the return value of this method. <br>
  /// The implementation of the underlying SELECT command within this method shall use
  /// the same values as the corresponding openBasicChannel(byte[] aid) or
  /// openLogicalChannel(byte[] aid) command with the option: <br>
  /// P2='02' (Next occurrence) <br>
  /// The select response stored in the Channel object shall be updated with the APDU
  /// response of the SELECT command.
  ///@return <code>true</code> if new Applet was selected on this channel.
  ///          <code>false</code> he already selected Applet stays selected on this channel.
  ///@throws IOException if there is a communication problem to the reader or the Secure Element.
  ///@throws IllegalStateException if the channel is used after being closed.
  ///@throws UnsupportedOperationException if this operation is not supported by the card.
  bool selectNext() => jniAccessors.callMethodWithArgs(
      reference, _id_selectNext, jni.JniType.booleanType, []).boolean;
}
