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

import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.telephony.gsm.SmsMessage
///
/// A Short Message Service message.
///@deprecated Replaced by android.telephony.SmsMessage that supports both GSM and CDMA.
class SmsMessage extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/gsm/SmsMessage");
  SmsMessage.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ENCODING_16BIT
  ///
  /// 16-bit encoding scheme (see TS 23.038)
  ///@deprecated Use android.telephony.SmsMessage.
  static const ENCODING_16BIT = 3;

  /// from: static public final int ENCODING_7BIT
  ///
  /// 7-bit encoding scheme (see TS 23.038)
  ///@deprecated Use android.telephony.SmsMessage.
  static const ENCODING_7BIT = 1;

  /// from: static public final int ENCODING_8BIT
  ///
  /// 8-bit encoding scheme (see TS 23.038)
  ///@deprecated Use android.telephony.SmsMessage.
  static const ENCODING_8BIT = 2;

  /// from: static public final int ENCODING_UNKNOWN
  ///
  /// Unknown encoding scheme (see TS 23.038)
  ///@deprecated Use android.telephony.SmsMessage.
  static const ENCODING_UNKNOWN = 0;

  /// from: static public final int MAX_USER_DATA_BYTES
  ///
  /// The maximum number of payload bytes per message
  ///@deprecated Use android.telephony.SmsMessage.
  static const MAX_USER_DATA_BYTES = 140;

  /// from: static public final int MAX_USER_DATA_SEPTETS
  ///
  /// The maximum number of payload septets per message
  ///@deprecated Use android.telephony.SmsMessage.
  static const MAX_USER_DATA_SEPTETS = 160;

  /// from: static public final int MAX_USER_DATA_SEPTETS_WITH_HEADER
  ///
  /// The maximum number of payload septets per message if a user data header
  /// is present.  This assumes the header only contains the
  /// CONCATENATED_8_BIT_REFERENCE element.
  ///@deprecated Use android.telephony.SmsMessage.
  static const MAX_USER_DATA_SEPTETS_WITH_HEADER = 153;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use android.telephony.SmsMessage.
  SmsMessage()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_createFromPdu = jniAccessors.getStaticMethodIDOf(
      _classRef, "createFromPdu", "([B)Landroid/telephony/gsm/SmsMessage;");

  /// from: static public android.telephony.gsm.SmsMessage createFromPdu(byte[] pdu)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create an SmsMessage from a raw PDU.
  ///@deprecated Use android.telephony.SmsMessage.
  static SmsMessage createFromPdu(jni.JniObject pdu) =>
      SmsMessage.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_createFromPdu, jni.JniType.objectType, [pdu.reference]).object);

  static final _id_getTPLayerLengthForPDU = jniAccessors.getStaticMethodIDOf(
      _classRef, "getTPLayerLengthForPDU", "(Ljava/lang/String;)I");

  /// from: static public int getTPLayerLengthForPDU(java.lang.String pdu)
  ///
  /// Get the TP-Layer-Length for the given SMS-SUBMIT PDU Basically, the
  /// length in bytes (not hex chars) less the SMSC header
  ///@deprecated Use android.telephony.SmsMessage.
  static int getTPLayerLengthForPDU(jni.JniString pdu) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_getTPLayerLengthForPDU,
          jni.JniType.intType,
          [pdu.reference]).integer;

  static final _id_calculateLength = jniAccessors.getStaticMethodIDOf(
      _classRef, "calculateLength", "(Ljava/lang/CharSequence;Z)[I");

  /// from: static public int[] calculateLength(java.lang.CharSequence messageBody, boolean use7bitOnly)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Calculates the number of SMS's required to encode the message body and
  /// the number of characters remaining until the next message, given the
  /// current encoding.
  ///@param messageBody the message to encode
  ///@param use7bitOnly if true, characters that are not part of the GSM
  ///         alphabet are counted as a single space char.  If false, a
  ///         messageBody containing non-GSM alphabet characters is calculated
  ///         for 16-bit encoding.
  ///@return an int[4] with int[0] being the number of SMS's required, int[1]
  ///         the number of code units used, and int[2] is the number of code
  ///         units remaining until the next message. int[3] is the encoding
  ///         type that should be used for the message.
  ///@deprecated Use android.telephony.SmsMessage.
  static jni.JniObject calculateLength(
          jni.JniObject messageBody, bool use7bitOnly) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_calculateLength,
          jni.JniType.objectType,
          [messageBody.reference, use7bitOnly]).object);

  static final _id_calculateLength1 = jniAccessors.getStaticMethodIDOf(
      _classRef, "calculateLength", "(Ljava/lang/String;Z)[I");

  /// from: static public int[] calculateLength(java.lang.String messageBody, boolean use7bitOnly)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Calculates the number of SMS's required to encode the message body and
  /// the number of characters remaining until the next message, given the
  /// current encoding.
  ///@param messageBody the message to encode
  ///@param use7bitOnly if true, characters that are not part of the GSM
  ///         alphabet are counted as a single space char.  If false, a
  ///         messageBody containing non-GSM alphabet characters is calculated
  ///         for 16-bit encoding.
  ///@return an int[4] with int[0] being the number of SMS's required, int[1]
  ///         the number of code units used, and int[2] is the number of code
  ///         units remaining until the next message. int[3] is the encoding
  ///         type that should be used for the message.
  ///@deprecated Use android.telephony.SmsMessage.
  static jni.JniObject calculateLength1(
          jni.JniString messageBody, bool use7bitOnly) =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_calculateLength1,
          jni.JniType.objectType,
          [messageBody.reference, use7bitOnly]).object);

  static final _id_getSubmitPdu = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getSubmitPdu",
      "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/gsm/SmsMessage\$SubmitPdu;");

  /// from: static public android.telephony.gsm.SmsMessage.SubmitPdu getSubmitPdu(java.lang.String scAddress, java.lang.String destinationAddress, java.lang.String message, boolean statusReportRequested)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get an SMS-SUBMIT PDU for a destination address and a message
  ///@param scAddress Service Centre address.  Null means use default.
  ///@return a <code>SubmitPdu</code> containing the encoded SC
  ///         address, if applicable, and the encoded message.
  ///         Returns null on encode error.
  ///@deprecated Use android.telephony.SmsMessage.
  static SmsMessage_SubmitPdu getSubmitPdu(
          jni.JniString scAddress,
          jni.JniString destinationAddress,
          jni.JniString message,
          bool statusReportRequested) =>
      SmsMessage_SubmitPdu.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getSubmitPdu, jni.JniType.objectType, [
        scAddress.reference,
        destinationAddress.reference,
        message.reference,
        statusReportRequested
      ]).object);

  static final _id_getSubmitPdu1 = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "getSubmitPdu",
      "(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/gsm/SmsMessage\$SubmitPdu;");

  /// from: static public android.telephony.gsm.SmsMessage.SubmitPdu getSubmitPdu(java.lang.String scAddress, java.lang.String destinationAddress, short destinationPort, byte[] data, boolean statusReportRequested)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get an SMS-SUBMIT PDU for a data message to a destination address &amp; port
  ///@param scAddress Service Centre address. null == use default
  ///@param destinationAddress the address of the destination for the message
  ///@param destinationPort the port to deliver the message to at the
  ///        destination
  ///@param data the dat for the message
  ///@return a <code>SubmitPdu</code> containing the encoded SC
  ///         address, if applicable, and the encoded message.
  ///         Returns null on encode error.
  ///@deprecated Use android.telephony.SmsMessage.
  static SmsMessage_SubmitPdu getSubmitPdu1(
          jni.JniString scAddress,
          jni.JniString destinationAddress,
          int destinationPort,
          jni.JniObject data,
          bool statusReportRequested) =>
      SmsMessage_SubmitPdu.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_getSubmitPdu1, jni.JniType.objectType, [
        scAddress.reference,
        destinationAddress.reference,
        destinationPort,
        data.reference,
        statusReportRequested
      ]).object);

  static final _id_getServiceCenterAddress = jniAccessors.getMethodIDOf(
      _classRef, "getServiceCenterAddress", "()Ljava/lang/String;");

  /// from: public java.lang.String getServiceCenterAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the address of the SMS service center that relayed this message
  /// or null if there is none.
  ///@deprecated Use android.telephony.SmsMessage.
  jni.JniString getServiceCenterAddress() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getServiceCenterAddress, jni.JniType.objectType, []).object);

  static final _id_getOriginatingAddress = jniAccessors.getMethodIDOf(
      _classRef, "getOriginatingAddress", "()Ljava/lang/String;");

  /// from: public java.lang.String getOriginatingAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the originating address (sender) of this SMS message in String
  /// form or null if unavailable
  ///@deprecated Use android.telephony.SmsMessage.
  jni.JniString getOriginatingAddress() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getOriginatingAddress, jni.JniType.objectType, []).object);

  static final _id_getDisplayOriginatingAddress = jniAccessors.getMethodIDOf(
      _classRef, "getDisplayOriginatingAddress", "()Ljava/lang/String;");

  /// from: public java.lang.String getDisplayOriginatingAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the originating address, or email from address if this message
  /// was from an email gateway. Returns null if originating address
  /// unavailable.
  ///@deprecated Use android.telephony.SmsMessage.
  jni.JniString getDisplayOriginatingAddress() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getDisplayOriginatingAddress, jni.JniType.objectType, []).object);

  static final _id_getMessageBody = jniAccessors.getMethodIDOf(
      _classRef, "getMessageBody", "()Ljava/lang/String;");

  /// from: public java.lang.String getMessageBody()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the message body as a String, if it exists and is text based.
  ///@return message body is there is one, otherwise null
  ///@deprecated Use android.telephony.SmsMessage.
  jni.JniString getMessageBody() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMessageBody, jni.JniType.objectType, []).object);

  static final _id_getMessageClass = jniAccessors.getMethodIDOf(_classRef,
      "getMessageClass", "()Landroid/telephony/gsm/SmsMessage\$MessageClass;");

  /// from: public android.telephony.gsm.SmsMessage.MessageClass getMessageClass()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the class of this message.
  ///@deprecated Use android.telephony.SmsMessage.
  SmsMessage_MessageClass getMessageClass() =>
      SmsMessage_MessageClass.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getMessageClass, jni.JniType.objectType, []).object);

  static final _id_getDisplayMessageBody = jniAccessors.getMethodIDOf(
      _classRef, "getDisplayMessageBody", "()Ljava/lang/String;");

  /// from: public java.lang.String getDisplayMessageBody()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the message body, or email message body if this message was from
  /// an email gateway. Returns null if message body unavailable.
  ///@deprecated Use android.telephony.SmsMessage.
  jni.JniString getDisplayMessageBody() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getDisplayMessageBody, jni.JniType.objectType, []).object);

  static final _id_getPseudoSubject = jniAccessors.getMethodIDOf(
      _classRef, "getPseudoSubject", "()Ljava/lang/String;");

  /// from: public java.lang.String getPseudoSubject()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Unofficial convention of a subject line enclosed in parens empty string
  /// if not present
  ///@deprecated Use android.telephony.SmsMessage.
  jni.JniString getPseudoSubject() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPseudoSubject, jni.JniType.objectType, []).object);

  static final _id_getTimestampMillis =
      jniAccessors.getMethodIDOf(_classRef, "getTimestampMillis", "()J");

  /// from: public long getTimestampMillis()
  ///
  /// Returns the service centre timestamp in currentTimeMillis() format
  ///@deprecated Use android.telephony.SmsMessage.
  int getTimestampMillis() => jniAccessors.callMethodWithArgs(
      reference, _id_getTimestampMillis, jni.JniType.longType, []).long;

  static final _id_isEmail =
      jniAccessors.getMethodIDOf(_classRef, "isEmail", "()Z");

  /// from: public boolean isEmail()
  ///
  /// Returns true if message is an email.
  ///@return true if this message came through an email gateway and email
  ///         sender / subject / parsed body are available
  ///@deprecated Use android.telephony.SmsMessage.
  bool isEmail() => jniAccessors.callMethodWithArgs(
      reference, _id_isEmail, jni.JniType.booleanType, []).boolean;

  static final _id_getEmailBody = jniAccessors.getMethodIDOf(
      _classRef, "getEmailBody", "()Ljava/lang/String;");

  /// from: public java.lang.String getEmailBody()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return if isEmail() is true, body of the email sent through the gateway.
  ///         null otherwise
  ///@deprecated Use android.telephony.SmsMessage.
  jni.JniString getEmailBody() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEmailBody, jni.JniType.objectType, []).object);

  static final _id_getEmailFrom = jniAccessors.getMethodIDOf(
      _classRef, "getEmailFrom", "()Ljava/lang/String;");

  /// from: public java.lang.String getEmailFrom()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @return if isEmail() is true, email from address of email sent through
  ///         the gateway. null otherwise
  ///@deprecated Use android.telephony.SmsMessage.
  jni.JniString getEmailFrom() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getEmailFrom, jni.JniType.objectType, []).object);

  static final _id_getProtocolIdentifier =
      jniAccessors.getMethodIDOf(_classRef, "getProtocolIdentifier", "()I");

  /// from: public int getProtocolIdentifier()
  ///
  /// Get protocol identifier.
  ///@deprecated Use android.telephony.SmsMessage.
  int getProtocolIdentifier() => jniAccessors.callMethodWithArgs(
      reference, _id_getProtocolIdentifier, jni.JniType.intType, []).integer;

  static final _id_isReplace =
      jniAccessors.getMethodIDOf(_classRef, "isReplace", "()Z");

  /// from: public boolean isReplace()
  ///
  /// See TS 23.040 9.2.3.9 returns true if this is a "replace short message" SMS
  ///@deprecated Use android.telephony.SmsMessage.
  bool isReplace() => jniAccessors.callMethodWithArgs(
      reference, _id_isReplace, jni.JniType.booleanType, []).boolean;

  static final _id_isCphsMwiMessage =
      jniAccessors.getMethodIDOf(_classRef, "isCphsMwiMessage", "()Z");

  /// from: public boolean isCphsMwiMessage()
  ///
  /// Returns true for CPHS MWI toggle message.
  ///@return true if this is a CPHS MWI toggle message See CPHS 4.2 section B.4.2
  ///@deprecated Use android.telephony.SmsMessage.
  bool isCphsMwiMessage() => jniAccessors.callMethodWithArgs(
      reference, _id_isCphsMwiMessage, jni.JniType.booleanType, []).boolean;

  static final _id_isMWIClearMessage =
      jniAccessors.getMethodIDOf(_classRef, "isMWIClearMessage", "()Z");

  /// from: public boolean isMWIClearMessage()
  ///
  /// returns true if this message is a CPHS voicemail / message waiting
  /// indicator (MWI) clear message
  ///@deprecated Use android.telephony.SmsMessage.
  bool isMWIClearMessage() => jniAccessors.callMethodWithArgs(
      reference, _id_isMWIClearMessage, jni.JniType.booleanType, []).boolean;

  static final _id_isMWISetMessage =
      jniAccessors.getMethodIDOf(_classRef, "isMWISetMessage", "()Z");

  /// from: public boolean isMWISetMessage()
  ///
  /// returns true if this message is a CPHS voicemail / message waiting
  /// indicator (MWI) set message
  ///@deprecated Use android.telephony.SmsMessage.
  bool isMWISetMessage() => jniAccessors.callMethodWithArgs(
      reference, _id_isMWISetMessage, jni.JniType.booleanType, []).boolean;

  static final _id_isMwiDontStore =
      jniAccessors.getMethodIDOf(_classRef, "isMwiDontStore", "()Z");

  /// from: public boolean isMwiDontStore()
  ///
  /// returns true if this message is a "Message Waiting Indication Group:
  /// Discard Message" notification and should not be stored.
  ///@deprecated Use android.telephony.SmsMessage.
  bool isMwiDontStore() => jniAccessors.callMethodWithArgs(
      reference, _id_isMwiDontStore, jni.JniType.booleanType, []).boolean;

  static final _id_getUserData =
      jniAccessors.getMethodIDOf(_classRef, "getUserData", "()[B");

  /// from: public byte[] getUserData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// returns the user data section minus the user data header if one was present.
  ///@deprecated Use android.telephony.SmsMessage.
  jni.JniObject getUserData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getUserData, jni.JniType.objectType, []).object);

  static final _id_getPdu =
      jniAccessors.getMethodIDOf(_classRef, "getPdu", "()[B");

  /// from: public byte[] getPdu()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the raw PDU for the message.
  ///@return the raw PDU for the message.
  ///@deprecated Use android.telephony.SmsMessage.
  jni.JniObject getPdu() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPdu, jni.JniType.objectType, []).object);

  static final _id_getStatusOnSim =
      jniAccessors.getMethodIDOf(_classRef, "getStatusOnSim", "()I");

  /// from: public int getStatusOnSim()
  ///
  /// Returns the status of the message on the SIM (read, unread, sent, unsent).
  ///@return the status of the message on the SIM.  These are:
  ///         SmsManager.STATUS_ON_SIM_FREE
  ///         SmsManager.STATUS_ON_SIM_READ
  ///         SmsManager.STATUS_ON_SIM_UNREAD
  ///         SmsManager.STATUS_ON_SIM_SEND
  ///         SmsManager.STATUS_ON_SIM_UNSENT
  ///@deprecated Use android.telephony.SmsMessage and getStatusOnIcc instead.
  int getStatusOnSim() => jniAccessors.callMethodWithArgs(
      reference, _id_getStatusOnSim, jni.JniType.intType, []).integer;

  static final _id_getIndexOnSim =
      jniAccessors.getMethodIDOf(_classRef, "getIndexOnSim", "()I");

  /// from: public int getIndexOnSim()
  ///
  /// Returns the record index of the message on the SIM (1-based index).
  ///@return the record index of the message on the SIM, or -1 if this
  ///         SmsMessage was not created from a SIM SMS EF record.
  ///@deprecated Use android.telephony.SmsMessage and getIndexOnIcc instead.
  int getIndexOnSim() => jniAccessors.callMethodWithArgs(
      reference, _id_getIndexOnSim, jni.JniType.intType, []).integer;

  static final _id_getStatus =
      jniAccessors.getMethodIDOf(_classRef, "getStatus", "()I");

  /// from: public int getStatus()
  ///
  /// GSM:
  /// For an SMS-STATUS-REPORT message, this returns the status field from
  /// the status report.  This field indicates the status of a previously
  /// submitted SMS, if requested.  See TS 23.040, 9.2.3.15 TP-Status for a
  /// description of values.
  /// CDMA:
  /// For not interfering with status codes from GSM, the value is
  /// shifted to the bits 31-16.
  /// The value is composed of an error class (bits 25-24) and a status code (bits 23-16).
  /// Possible codes are described in C.S0015-B, v2.0, 4.5.21.
  ///@return 0 indicates the previously sent message was received.
  ///         See TS 23.040, 9.9.2.3.15 and C.S0015-B, v2.0, 4.5.21
  ///         for a description of other possible values.
  ///@deprecated Use android.telephony.SmsMessage.
  int getStatus() => jniAccessors.callMethodWithArgs(
      reference, _id_getStatus, jni.JniType.intType, []).integer;

  static final _id_isStatusReportMessage =
      jniAccessors.getMethodIDOf(_classRef, "isStatusReportMessage", "()Z");

  /// from: public boolean isStatusReportMessage()
  ///
  /// Return true iff the message is a SMS-STATUS-REPORT message.
  ///@deprecated Use android.telephony.SmsMessage.
  bool isStatusReportMessage() => jniAccessors.callMethodWithArgs(reference,
      _id_isStatusReportMessage, jni.JniType.booleanType, []).boolean;

  static final _id_isReplyPathPresent =
      jniAccessors.getMethodIDOf(_classRef, "isReplyPathPresent", "()Z");

  /// from: public boolean isReplyPathPresent()
  ///
  /// Returns true iff the <code>TP-Reply-Path</code> bit is set in
  /// this message.
  ///@deprecated Use android.telephony.SmsMessage.
  bool isReplyPathPresent() => jniAccessors.callMethodWithArgs(
      reference, _id_isReplyPathPresent, jni.JniType.booleanType, []).boolean;
}

/// from: android.telephony.gsm.SmsMessage$SubmitPdu
///
/// @deprecated Use android.telephony.SmsMessage.
class SmsMessage_SubmitPdu extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/gsm/SmsMessage\$SubmitPdu");
  SmsMessage_SubmitPdu.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_encodedMessage =
      jniAccessors.getFieldIDOf(_classRef, "encodedMessage", "[B");

  /// from: public byte[] encodedMessage
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use android.telephony.SmsMessage.
  jni.JniObject get encodedMessage => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_encodedMessage, jni.JniType.objectType)
      .object);

  /// from: public byte[] encodedMessage
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use android.telephony.SmsMessage.
  set encodedMessage(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_encodedMessage, value.reference);

  static final _id_encodedScAddress =
      jniAccessors.getFieldIDOf(_classRef, "encodedScAddress", "[B");

  /// from: public byte[] encodedScAddress
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use android.telephony.SmsMessage.
  jni.JniObject get encodedScAddress => jni.JniObject.fromRef(jniAccessors
      .getField(reference, _id_encodedScAddress, jni.JniType.objectType)
      .object);

  /// from: public byte[] encodedScAddress
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use android.telephony.SmsMessage.
  set encodedScAddress(jni.JniObject value) =>
      jniEnv.SetObjectField(reference, _id_encodedScAddress, value.reference);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use android.telephony.SmsMessage.
  SmsMessage_SubmitPdu()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated Use android.telephony.SmsMessage.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);
}

/// from: android.telephony.gsm.SmsMessage$MessageClass
///
/// SMS Class enumeration.
/// See TS 23.038.
///@deprecated Use android.telephony.SmsMessage.
class SmsMessage_MessageClass extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/telephony/gsm/SmsMessage\$MessageClass");
  SmsMessage_MessageClass.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_values = jniAccessors.getStaticMethodIDOf(_classRef,
      "values", "()[Landroid/telephony/gsm/SmsMessage\$MessageClass;");

  /// from: static public android.telephony.gsm.SmsMessage.MessageClass[] values()
  /// The returned object must be deleted after use, by calling the `delete` method.
  static jni.JniObject values() =>
      jni.JniObject.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_values, jni.JniType.objectType, []).object);

  static final _id_valueOf = jniAccessors.getStaticMethodIDOf(
      _classRef,
      "valueOf",
      "(Ljava/lang/String;)Landroid/telephony/gsm/SmsMessage\$MessageClass;");

  /// from: static public android.telephony.gsm.SmsMessage.MessageClass valueOf(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  static SmsMessage_MessageClass valueOf(jni.JniString name) =>
      SmsMessage_MessageClass.fromRef(jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_valueOf,
          jni.JniType.objectType,
          [name.reference]).object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: private void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  SmsMessage_MessageClass()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}