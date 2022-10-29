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

/// from: android.app.usage.NetworkStats
///
/// Class providing enumeration over buckets of network usage statistics. NetworkStats objects
/// are returned as results to various queries in NetworkStatsManager.
class NetworkStats extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/usage/NetworkStats");
  NetworkStats.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();

  static final _id_getNextBucket = jniAccessors.getMethodIDOf(_classRef,
      "getNextBucket", "(Landroid/app/usage/NetworkStats\$Bucket;)Z");

  /// from: public boolean getNextBucket(android.app.usage.NetworkStats.Bucket bucketOut)
  ///
  /// Fills the recycled bucket with data of the next bin in the enumeration.
  ///@param bucketOut Bucket to be filled with data.
  ///@return true if successfully filled the bucket, false otherwise.
  bool getNextBucket(NetworkStats_Bucket bucketOut) =>
      jniAccessors.callMethodWithArgs(reference, _id_getNextBucket,
          jni.JniType.booleanType, [bucketOut.reference]).boolean;

  static final _id_hasNextBucket =
      jniAccessors.getMethodIDOf(_classRef, "hasNextBucket", "()Z");

  /// from: public boolean hasNextBucket()
  ///
  /// Check if it is possible to ask for a next bucket in the enumeration.
  ///@return true if there is at least one more bucket.
  bool hasNextBucket() => jniAccessors.callMethodWithArgs(
      reference, _id_hasNextBucket, jni.JniType.booleanType, []).boolean;

  static final _id_close =
      jniAccessors.getMethodIDOf(_classRef, "close", "()V");

  /// from: public void close()
  ///
  /// Closes the enumeration. Call this method before this object gets out of scope.
  void close() => jniAccessors.callMethodWithArgs(
      reference, _id_close, jni.JniType.voidType, []).check();
}

/// from: android.app.usage.NetworkStats$Bucket
///
/// Buckets are the smallest elements of a query result. As some dimensions of a result may be
/// aggregated (e.g. time or state) some values may be equal across all buckets.
class NetworkStats_Bucket extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/usage/NetworkStats\$Bucket");
  NetworkStats_Bucket.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int DEFAULT_NETWORK_ALL
  ///
  /// Combined usage for this network regardless of default network status.
  static const DEFAULT_NETWORK_ALL = -1;

  /// from: static public final int DEFAULT_NETWORK_NO
  ///
  /// Usage that occurs while this network is not a default network.
  ///
  /// This implies that the app responsible for this usage requested that it occur on a
  /// specific network different from the one(s) the system would have selected for it.
  static const DEFAULT_NETWORK_NO = 1;

  /// from: static public final int DEFAULT_NETWORK_YES
  ///
  /// Usage that occurs while this network is a default network.
  ///
  /// This implies that the app either did not select a specific network for this usage,
  /// or it selected a network that the system could have selected for app traffic.
  static const DEFAULT_NETWORK_YES = 2;

  /// from: static public final int METERED_ALL
  ///
  /// Combined usage across all metered states. Covers metered and unmetered usage.
  static const METERED_ALL = -1;

  /// from: static public final int METERED_NO
  ///
  /// Usage that occurs on an unmetered network.
  static const METERED_NO = 1;

  /// from: static public final int METERED_YES
  ///
  /// Usage that occurs on a metered network.
  ///
  /// A network is classified as metered when the user is sensitive to heavy data usage on
  /// that connection.
  static const METERED_YES = 2;

  /// from: static public final int ROAMING_ALL
  ///
  /// Combined usage across all roaming states. Covers both roaming and non-roaming usage.
  static const ROAMING_ALL = -1;

  /// from: static public final int ROAMING_NO
  ///
  /// Usage that occurs on a home, non-roaming network.
  ///
  /// Any cellular usage in this bucket was incurred while the device was connected to a
  /// tower owned or operated by the user's wireless carrier, or a tower that the user's
  /// wireless carrier has indicated should be treated as a home network regardless.
  ///
  /// This is also the default value for network types that do not support roaming.
  static const ROAMING_NO = 1;

  /// from: static public final int ROAMING_YES
  ///
  /// Usage that occurs on a roaming network.
  ///
  /// Any cellular usage in this bucket as incurred while the device was roaming on another
  /// carrier's network, for which additional charges may apply.
  static const ROAMING_YES = 2;

  /// from: static public final int STATE_ALL
  ///
  /// Combined usage across all states.
  static const STATE_ALL = -1;

  /// from: static public final int STATE_DEFAULT
  ///
  /// Usage not accounted for in any other state.
  static const STATE_DEFAULT = 1;

  /// from: static public final int STATE_FOREGROUND
  ///
  /// Foreground usage.
  static const STATE_FOREGROUND = 2;

  /// from: static public final int TAG_NONE
  ///
  /// Special TAG value for total data across all tags
  static const TAG_NONE = 0;

  /// from: static public final int UID_ALL
  ///
  /// Special UID value for aggregate/unspecified.
  static const UID_ALL = -1;

  /// from: static public final int UID_REMOVED
  ///
  /// Special UID value for removed apps.
  static const UID_REMOVED = -4;

  /// from: static public final int UID_TETHERING
  ///
  /// Special UID value for data usage by tethering.
  static const UID_TETHERING = -5;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  NetworkStats_Bucket()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getUid =
      jniAccessors.getMethodIDOf(_classRef, "getUid", "()I");

  /// from: public int getUid()
  ///
  /// Key of the bucket. Usually an app uid or one of the following special values:<p/>
  /// <ul>
  /// <li>\#UID_REMOVED</li>
  /// <li>\#UID_TETHERING</li>
  /// <li>android.os.Process\#SYSTEM_UID</li>
  /// </ul>
  ///@return Bucket key.
  int getUid() => jniAccessors.callMethodWithArgs(
      reference, _id_getUid, jni.JniType.intType, []).integer;

  static final _id_getTag =
      jniAccessors.getMethodIDOf(_classRef, "getTag", "()I");

  /// from: public int getTag()
  ///
  /// Tag of the bucket.<p/>
  ///@return Bucket tag.
  int getTag() => jniAccessors.callMethodWithArgs(
      reference, _id_getTag, jni.JniType.intType, []).integer;

  static final _id_getState =
      jniAccessors.getMethodIDOf(_classRef, "getState", "()I");

  /// from: public int getState()
  ///
  /// Usage state. One of the following values:<p/>
  /// <ul>
  /// <li>\#STATE_ALL</li>
  /// <li>\#STATE_DEFAULT</li>
  /// <li>\#STATE_FOREGROUND</li>
  /// </ul>
  ///@return Usage state.
  ///
  /// Value is android.app.usage.NetworkStats.Bucket\#STATE_ALL, android.app.usage.NetworkStats.Bucket\#STATE_DEFAULT, or android.app.usage.NetworkStats.Bucket\#STATE_FOREGROUND
  int getState() => jniAccessors.callMethodWithArgs(
      reference, _id_getState, jni.JniType.intType, []).integer;

  static final _id_getMetered =
      jniAccessors.getMethodIDOf(_classRef, "getMetered", "()I");

  /// from: public int getMetered()
  ///
  /// Metered state. One of the following values:<p/>
  /// <ul>
  /// <li>\#METERED_ALL</li>
  /// <li>\#METERED_NO</li>
  /// <li>\#METERED_YES</li>
  /// </ul>
  /// A network is classified as metered when the user is sensitive to heavy data usage on
  /// that connection. Apps may warn before using these networks for large downloads. The
  /// metered state can be set by the user within data usage network restrictions.
  ///@return Value is android.app.usage.NetworkStats.Bucket\#METERED_ALL, android.app.usage.NetworkStats.Bucket\#METERED_NO, or android.app.usage.NetworkStats.Bucket\#METERED_YES
  int getMetered() => jniAccessors.callMethodWithArgs(
      reference, _id_getMetered, jni.JniType.intType, []).integer;

  static final _id_getRoaming =
      jniAccessors.getMethodIDOf(_classRef, "getRoaming", "()I");

  /// from: public int getRoaming()
  ///
  /// Roaming state. One of the following values:<p/>
  /// <ul>
  /// <li>\#ROAMING_ALL</li>
  /// <li>\#ROAMING_NO</li>
  /// <li>\#ROAMING_YES</li>
  /// </ul>
  ///@return Value is android.app.usage.NetworkStats.Bucket\#ROAMING_ALL, android.app.usage.NetworkStats.Bucket\#ROAMING_NO, or android.app.usage.NetworkStats.Bucket\#ROAMING_YES
  int getRoaming() => jniAccessors.callMethodWithArgs(
      reference, _id_getRoaming, jni.JniType.intType, []).integer;

  static final _id_getDefaultNetworkStatus =
      jniAccessors.getMethodIDOf(_classRef, "getDefaultNetworkStatus", "()I");

  /// from: public int getDefaultNetworkStatus()
  ///
  /// Default network status. One of the following values:<p/>
  /// <ul>
  /// <li>\#DEFAULT_NETWORK_ALL</li>
  /// <li>\#DEFAULT_NETWORK_NO</li>
  /// <li>\#DEFAULT_NETWORK_YES</li>
  /// </ul>
  ///@return Value is android.app.usage.NetworkStats.Bucket\#DEFAULT_NETWORK_ALL, android.app.usage.NetworkStats.Bucket\#DEFAULT_NETWORK_NO, or android.app.usage.NetworkStats.Bucket\#DEFAULT_NETWORK_YES
  int getDefaultNetworkStatus() => jniAccessors.callMethodWithArgs(
      reference, _id_getDefaultNetworkStatus, jni.JniType.intType, []).integer;

  static final _id_getStartTimeStamp =
      jniAccessors.getMethodIDOf(_classRef, "getStartTimeStamp", "()J");

  /// from: public long getStartTimeStamp()
  ///
  /// Start timestamp of the bucket's time interval. Defined in terms of "Unix time", see
  /// java.lang.System\#currentTimeMillis.
  ///@return Start of interval.
  int getStartTimeStamp() => jniAccessors.callMethodWithArgs(
      reference, _id_getStartTimeStamp, jni.JniType.longType, []).long;

  static final _id_getEndTimeStamp =
      jniAccessors.getMethodIDOf(_classRef, "getEndTimeStamp", "()J");

  /// from: public long getEndTimeStamp()
  ///
  /// End timestamp of the bucket's time interval. Defined in terms of "Unix time", see
  /// java.lang.System\#currentTimeMillis.
  ///@return End of interval.
  int getEndTimeStamp() => jniAccessors.callMethodWithArgs(
      reference, _id_getEndTimeStamp, jni.JniType.longType, []).long;

  static final _id_getRxBytes =
      jniAccessors.getMethodIDOf(_classRef, "getRxBytes", "()J");

  /// from: public long getRxBytes()
  ///
  /// Number of bytes received during the bucket's time interval. Statistics are measured at
  /// the network layer, so they include both TCP and UDP usage.
  ///@return Number of bytes.
  int getRxBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getRxBytes, jni.JniType.longType, []).long;

  static final _id_getTxBytes =
      jniAccessors.getMethodIDOf(_classRef, "getTxBytes", "()J");

  /// from: public long getTxBytes()
  ///
  /// Number of bytes transmitted during the bucket's time interval. Statistics are measured at
  /// the network layer, so they include both TCP and UDP usage.
  ///@return Number of bytes.
  int getTxBytes() => jniAccessors.callMethodWithArgs(
      reference, _id_getTxBytes, jni.JniType.longType, []).long;

  static final _id_getRxPackets =
      jniAccessors.getMethodIDOf(_classRef, "getRxPackets", "()J");

  /// from: public long getRxPackets()
  ///
  /// Number of packets received during the bucket's time interval. Statistics are measured at
  /// the network layer, so they include both TCP and UDP usage.
  ///@return Number of packets.
  int getRxPackets() => jniAccessors.callMethodWithArgs(
      reference, _id_getRxPackets, jni.JniType.longType, []).long;

  static final _id_getTxPackets =
      jniAccessors.getMethodIDOf(_classRef, "getTxPackets", "()J");

  /// from: public long getTxPackets()
  ///
  /// Number of packets transmitted during the bucket's time interval. Statistics are measured
  /// at the network layer, so they include both TCP and UDP usage.
  ///@return Number of packets.
  int getTxPackets() => jniAccessors.callMethodWithArgs(
      reference, _id_getTxPackets, jni.JniType.longType, []).long;
}
