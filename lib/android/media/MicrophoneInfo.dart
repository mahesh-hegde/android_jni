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

import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.media.MicrophoneInfo
///
/// Class providing information on a microphone. It indicates the location and orientation of the
/// microphone on the device as well as useful information like frequency response and sensitivity.
/// It can be used by applications implementing special pre processing effects like noise suppression
/// of beam forming that need to know about precise microphone characteristics in order to adapt
/// their algorithms.
class MicrophoneInfo extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/MicrophoneInfo");
  MicrophoneInfo.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int CHANNEL_MAPPING_DIRECT
  ///
  /// The channel contains raw audio from this microphone.
  static const CHANNEL_MAPPING_DIRECT = 1;

  /// from: static public final int CHANNEL_MAPPING_PROCESSED
  ///
  /// The channel contains processed audio from this microphone and possibly another microphone.
  static const CHANNEL_MAPPING_PROCESSED = 2;

  /// from: static public final int DIRECTIONALITY_BI_DIRECTIONAL
  ///
  /// Microphone directionality type: bi-directional.
  static const DIRECTIONALITY_BI_DIRECTIONAL = 2;

  /// from: static public final int DIRECTIONALITY_CARDIOID
  ///
  /// Microphone directionality type: cardioid.
  static const DIRECTIONALITY_CARDIOID = 3;

  /// from: static public final int DIRECTIONALITY_HYPER_CARDIOID
  ///
  /// Microphone directionality type: hyper cardioid.
  static const DIRECTIONALITY_HYPER_CARDIOID = 4;

  /// from: static public final int DIRECTIONALITY_OMNI
  ///
  /// Microphone directionality type: omni.
  static const DIRECTIONALITY_OMNI = 1;

  /// from: static public final int DIRECTIONALITY_SUPER_CARDIOID
  ///
  /// Microphone directionality type: super cardioid.
  static const DIRECTIONALITY_SUPER_CARDIOID = 5;

  /// from: static public final int DIRECTIONALITY_UNKNOWN
  ///
  /// Unknown microphone directionality.
  static const DIRECTIONALITY_UNKNOWN = 0;

  /// from: static public final int GROUP_UNKNOWN
  ///
  /// Value used for when the group of the microphone is unknown.
  static const GROUP_UNKNOWN = -1;

  /// from: static public final int INDEX_IN_THE_GROUP_UNKNOWN
  ///
  /// Value used for when the index in the group of the microphone is unknown.
  static const INDEX_IN_THE_GROUP_UNKNOWN = -1;

  /// from: static public final int LOCATION_MAINBODY
  ///
  /// A microphone that locate on main body of the device.
  static const LOCATION_MAINBODY = 1;

  /// from: static public final int LOCATION_MAINBODY_MOVABLE
  ///
  /// A microphone that locate on a movable main body of the device.
  static const LOCATION_MAINBODY_MOVABLE = 2;

  /// from: static public final int LOCATION_PERIPHERAL
  ///
  /// A microphone that locate on a peripheral.
  static const LOCATION_PERIPHERAL = 3;

  /// from: static public final int LOCATION_UNKNOWN
  ///
  /// A microphone that the location is unknown.
  static const LOCATION_UNKNOWN = 0;

  static final _id_ORIENTATION_UNKNOWN = jniAccessors.getStaticFieldIDOf(
      _classRef,
      "ORIENTATION_UNKNOWN",
      "Landroid/media/MicrophoneInfo\$Coordinate3F;");

  /// from: static public final android.media.MicrophoneInfo.Coordinate3F ORIENTATION_UNKNOWN
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Value used for when the orientation of the microphone is unknown.
  static MicrophoneInfo_Coordinate3F get ORIENTATION_UNKNOWN =>
      MicrophoneInfo_Coordinate3F.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_ORIENTATION_UNKNOWN, jni.JniType.objectType)
          .object);

  static final _id_POSITION_UNKNOWN = jniAccessors.getStaticFieldIDOf(_classRef,
      "POSITION_UNKNOWN", "Landroid/media/MicrophoneInfo\$Coordinate3F;");

  /// from: static public final android.media.MicrophoneInfo.Coordinate3F POSITION_UNKNOWN
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Value used for when the position of the microphone is unknown.
  static MicrophoneInfo_Coordinate3F get POSITION_UNKNOWN =>
      MicrophoneInfo_Coordinate3F.fromRef(jniAccessors
          .getStaticField(
              _classRef, _id_POSITION_UNKNOWN, jni.JniType.objectType)
          .object);

  /// from: static public final float SENSITIVITY_UNKNOWN
  ///
  /// Value used for when the sensitivity of the microphone is unknown.
  static const SENSITIVITY_UNKNOWN = -3.4028235e+38;

  /// from: static public final float SPL_UNKNOWN
  ///
  /// Value used for when the SPL of the microphone is unknown. This value could be used when
  /// maximum SPL or minimum SPL is unknown.
  static const SPL_UNKNOWN = -3.4028235e+38;

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Ljava/lang/String;ILjava/lang/String;IIILandroid/media/MicrophoneInfo\$Coordinate3F;Landroid/media/MicrophoneInfo\$Coordinate3F;Ljava/util/List;Ljava/util/List;FFFI)V");

  /// from: void <init>(java.lang.String deviceId, int type, java.lang.String address, int location, int group, int indexInTheGroup, android.media.MicrophoneInfo.Coordinate3F position, android.media.MicrophoneInfo.Coordinate3F orientation, java.util.List<android.util.Pair<java.lang.Float,java.lang.Float>> frequencyResponse, java.util.List<android.util.Pair<java.lang.Integer,java.lang.Integer>> channelMapping, float sensitivity, float maxSpl, float minSpl, int directionality)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MicrophoneInfo(
      jni.JniString deviceId,
      int type,
      jni.JniString address,
      int location,
      int group,
      int indexInTheGroup,
      MicrophoneInfo_Coordinate3F position,
      MicrophoneInfo_Coordinate3F orientation,
      jni.JniObject frequencyResponse,
      jni.JniObject channelMapping,
      double sensitivity,
      double maxSpl,
      double minSpl,
      int directionality)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [
          deviceId.reference,
          type,
          address.reference,
          location,
          group,
          indexInTheGroup,
          position.reference,
          orientation.reference,
          frequencyResponse.reference,
          channelMapping.reference,
          sensitivity,
          maxSpl,
          minSpl,
          directionality
        ]).object);

  static final _id_getDescription = jniAccessors.getMethodIDOf(
      _classRef, "getDescription", "()Ljava/lang/String;");

  /// from: public java.lang.String getDescription()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns alphanumeric code that uniquely identifies the device.
  ///@return the description of the microphone
  jni.JniString getDescription() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDescription, jni.JniType.objectType, []).object);

  static final _id_getId =
      jniAccessors.getMethodIDOf(_classRef, "getId", "()I");

  /// from: public int getId()
  ///
  /// Returns The system unique device ID that corresponds to the id
  /// returned by AudioDeviceInfo\#getId().
  ///@return the microphone's id
  int getId() => jniAccessors.callMethodWithArgs(
      reference, _id_getId, jni.JniType.intType, []).integer;

  static final _id_getType =
      jniAccessors.getMethodIDOf(_classRef, "getType", "()I");

  /// from: public int getType()
  ///
  /// Returns the device type identifier of the microphone (e.g AudioDeviceInfo.TYPE_BUILTIN_MIC).
  ///@return the device type of the microphone
  int getType() => jniAccessors.callMethodWithArgs(
      reference, _id_getType, jni.JniType.intType, []).integer;

  static final _id_getAddress = jniAccessors.getMethodIDOf(
      _classRef, "getAddress", "()Ljava/lang/String;");

  /// from: public java.lang.String getAddress()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns The "address" string of the microphone that corresponds to the
  /// address returned by AudioDeviceInfo\#getAddress()
  ///@return the address of the microphone
  ///
  /// This value will never be {@code null}.
  jni.JniString getAddress() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getAddress, jni.JniType.objectType, []).object);

  static final _id_getLocation =
      jniAccessors.getMethodIDOf(_classRef, "getLocation", "()I");

  /// from: public int getLocation()
  ///
  /// Returns the location of the microphone. The return value is
  /// one of \#LOCATION_UNKNOWN, \#LOCATION_MAINBODY,
  /// \#LOCATION_MAINBODY_MOVABLE, or \#LOCATION_PERIPHERAL.
  ///@return the location of the microphone
  ///
  /// Value is either <code>0</code> or a combination of android.media.MicrophoneInfo\#LOCATION_UNKNOWN, android.media.MicrophoneInfo\#LOCATION_MAINBODY, android.media.MicrophoneInfo\#LOCATION_MAINBODY_MOVABLE, and android.media.MicrophoneInfo\#LOCATION_PERIPHERAL
  int getLocation() => jniAccessors.callMethodWithArgs(
      reference, _id_getLocation, jni.JniType.intType, []).integer;

  static final _id_getGroup =
      jniAccessors.getMethodIDOf(_classRef, "getGroup", "()I");

  /// from: public int getGroup()
  ///
  /// Returns A device group id that can be used to group together microphones on the same
  /// peripheral, attachments or logical groups. Main body is usually group 0.
  ///@return the group of the microphone or \#GROUP_UNKNOWN if the group is unknown
  int getGroup() => jniAccessors.callMethodWithArgs(
      reference, _id_getGroup, jni.JniType.intType, []).integer;

  static final _id_getIndexInTheGroup =
      jniAccessors.getMethodIDOf(_classRef, "getIndexInTheGroup", "()I");

  /// from: public int getIndexInTheGroup()
  ///
  /// Returns unique index for device within its group.
  ///@return the microphone's index in its group or \#INDEX_IN_THE_GROUP_UNKNOWN if the
  /// index in the group is unknown
  int getIndexInTheGroup() => jniAccessors.callMethodWithArgs(
      reference, _id_getIndexInTheGroup, jni.JniType.intType, []).integer;

  static final _id_getPosition = jniAccessors.getMethodIDOf(_classRef,
      "getPosition", "()Landroid/media/MicrophoneInfo\$Coordinate3F;");

  /// from: public android.media.MicrophoneInfo.Coordinate3F getPosition()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns A Coordinate3F object that represents the geometric location of microphone
  /// in meters, from bottom-left-back corner of appliance. X-axis, Y-axis and Z-axis show
  /// as the x, y, z values.
  ///@return the geometric location of the microphone or \#POSITION_UNKNOWN if the
  /// geometric location is unknown
  MicrophoneInfo_Coordinate3F getPosition() =>
      MicrophoneInfo_Coordinate3F.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getPosition, jni.JniType.objectType, []).object);

  static final _id_getOrientation = jniAccessors.getMethodIDOf(_classRef,
      "getOrientation", "()Landroid/media/MicrophoneInfo\$Coordinate3F;");

  /// from: public android.media.MicrophoneInfo.Coordinate3F getOrientation()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns A Coordinate3F object that represents the orientation of microphone.
  /// X-axis, Y-axis and Z-axis show as the x, y, z value. The orientation will be normalized
  /// such as sqrt(x^2 + y^2 + z^2) equals 1.
  ///@return the orientation of the microphone or \#ORIENTATION_UNKNOWN if orientation
  /// is unknown
  MicrophoneInfo_Coordinate3F getOrientation() =>
      MicrophoneInfo_Coordinate3F.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getOrientation, jni.JniType.objectType, []).object);

  static final _id_getFrequencyResponse = jniAccessors.getMethodIDOf(
      _classRef, "getFrequencyResponse", "()Ljava/util/List;");

  /// from: public java.util.List<android.util.Pair<java.lang.Float,java.lang.Float>> getFrequencyResponse()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a android.util.Pair list of frequency responses.
  /// For every android.util.Pair in the list, the first value represents frequency in Hz,
  /// and the second value represents response in dB.
  ///@return the frequency response of the microphone
  jni.JniObject getFrequencyResponse() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getFrequencyResponse, jni.JniType.objectType, []).object);

  static final _id_getChannelMapping = jniAccessors.getMethodIDOf(
      _classRef, "getChannelMapping", "()Ljava/util/List;");

  /// from: public java.util.List<android.util.Pair<java.lang.Integer,java.lang.Integer>> getChannelMapping()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a android.util.Pair list for channel mapping, which indicating how this
  /// microphone is used by each channels or a capture stream. For each android.util.Pair,
  /// the first value is channel index, the second value is channel mapping type, which could be
  /// either \#CHANNEL_MAPPING_DIRECT or \#CHANNEL_MAPPING_PROCESSED.
  /// If a channel has contributions from more than one microphone, it is likely the HAL
  /// did some extra processing to combine the sources, but this is to be inferred by the user.
  /// Empty list when the MicrophoneInfo is returned by AudioManager.getMicrophones().
  /// At least one entry when the MicrophoneInfo is returned by AudioRecord.getActiveMicrophones().
  ///@return a android.util.Pair list for channel mapping
  jni.JniObject getChannelMapping() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getChannelMapping, jni.JniType.objectType, []).object);

  static final _id_getSensitivity =
      jniAccessors.getMethodIDOf(_classRef, "getSensitivity", "()F");

  /// from: public float getSensitivity()
  ///
  /// Returns the level in dBFS produced by a 1000Hz tone at 94 dB SPL.
  ///@return the sensitivity of the microphone or \#SENSITIVITY_UNKNOWN if the sensitivity
  /// is unknown
  double getSensitivity() => jniAccessors.callMethodWithArgs(
      reference, _id_getSensitivity, jni.JniType.floatType, []).float;

  static final _id_getMaxSpl =
      jniAccessors.getMethodIDOf(_classRef, "getMaxSpl", "()F");

  /// from: public float getMaxSpl()
  ///
  /// Returns the level in dB of the maximum SPL supported by the device at 1000Hz.
  ///@return the maximum level in dB or \#SPL_UNKNOWN if maximum SPL is unknown
  double getMaxSpl() => jniAccessors.callMethodWithArgs(
      reference, _id_getMaxSpl, jni.JniType.floatType, []).float;

  static final _id_getMinSpl =
      jniAccessors.getMethodIDOf(_classRef, "getMinSpl", "()F");

  /// from: public float getMinSpl()
  ///
  /// Returns the level in dB of the minimum SPL that can be registered by the device at 1000Hz.
  ///@return the minimum level in dB or \#SPL_UNKNOWN if minimum SPL is unknown
  double getMinSpl() => jniAccessors.callMethodWithArgs(
      reference, _id_getMinSpl, jni.JniType.floatType, []).float;

  static final _id_getDirectionality =
      jniAccessors.getMethodIDOf(_classRef, "getDirectionality", "()I");

  /// from: public int getDirectionality()
  ///
  /// Returns the directionality of microphone. The return value is one of
  /// \#DIRECTIONALITY_UNKNOWN, \#DIRECTIONALITY_OMNI,
  /// \#DIRECTIONALITY_BI_DIRECTIONAL, \#DIRECTIONALITY_CARDIOID,
  /// \#DIRECTIONALITY_HYPER_CARDIOID, or \#DIRECTIONALITY_SUPER_CARDIOID.
  ///@return the directionality of microphone
  ///
  /// Value is either <code>0</code> or a combination of android.media.MicrophoneInfo\#DIRECTIONALITY_UNKNOWN, android.media.MicrophoneInfo\#DIRECTIONALITY_OMNI, android.media.MicrophoneInfo\#DIRECTIONALITY_BI_DIRECTIONAL, android.media.MicrophoneInfo\#DIRECTIONALITY_CARDIOID, android.media.MicrophoneInfo\#DIRECTIONALITY_HYPER_CARDIOID, and android.media.MicrophoneInfo\#DIRECTIONALITY_SUPER_CARDIOID
  int getDirectionality() => jniAccessors.callMethodWithArgs(
      reference, _id_getDirectionality, jni.JniType.intType, []).integer;
}

/// from: android.media.MicrophoneInfo$Coordinate3F
class MicrophoneInfo_Coordinate3F extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/media/MicrophoneInfo\$Coordinate3F");
  MicrophoneInfo_Coordinate3F.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_x = jniAccessors.getFieldIDOf(_classRef, "x", "F");

  /// from: public final float x
  double get x =>
      jniAccessors.getField(reference, _id_x, jni.JniType.floatType).float;

  static final _id_y = jniAccessors.getFieldIDOf(_classRef, "y", "F");

  /// from: public final float y
  double get y =>
      jniAccessors.getField(reference, _id_y, jni.JniType.floatType).float;

  static final _id_z = jniAccessors.getFieldIDOf(_classRef, "z", "F");

  /// from: public final float z
  double get z =>
      jniAccessors.getField(reference, _id_z, jni.JniType.floatType).float;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(FFF)V");

  /// from: void <init>(float x, float y, float z)
  /// The returned object must be deleted after use, by calling the `delete` method.
  MicrophoneInfo_Coordinate3F(double x, double y, double z)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [x, y, z]).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object obj)
  bool equals1(jni.JniObject obj) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [obj.reference]).boolean;
}
