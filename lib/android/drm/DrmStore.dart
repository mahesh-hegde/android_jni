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

/// from: android.drm.DrmStore
///
/// Defines constants that are used by the DRM framework.
class DrmStore extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/drm/DrmStore");
  DrmStore.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated This class should have been an interface instead.
  /// The default constuctor should have not been exposed.
  DrmStore()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.drm.DrmStore$RightsStatus
///
/// Defines status notifications for digital rights.
class DrmStore_RightsStatus extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/drm/DrmStore\$RightsStatus");
  DrmStore_RightsStatus.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int RIGHTS_EXPIRED
  ///
  /// The digital rights have expired.
  static const RIGHTS_EXPIRED = 2;

  /// from: static public final int RIGHTS_INVALID
  ///
  /// The digital rights are invalid.
  static const RIGHTS_INVALID = 1;

  /// from: static public final int RIGHTS_NOT_ACQUIRED
  ///
  /// The digital rights have not been acquired for the rights-protected content.
  static const RIGHTS_NOT_ACQUIRED = 3;

  /// from: static public final int RIGHTS_VALID
  ///
  /// The digital rights are valid.
  static const RIGHTS_VALID = 0;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated This class should have been an interface instead.
  /// The default constuctor should have not been exposed.
  DrmStore_RightsStatus()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.drm.DrmStore$Playback
///
/// Defines playback states for content.
class DrmStore_Playback extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/drm/DrmStore\$Playback");
  DrmStore_Playback.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int PAUSE
  ///
  /// Playback paused.
  static const PAUSE = 2;

  /// from: static public final int RESUME
  ///
  /// Playback resumed.
  static const RESUME = 3;

  /// from: static public final int START
  ///
  /// Playback started.
  static const START = 0;

  /// from: static public final int STOP
  ///
  /// Playback stopped.
  static const STOP = 1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated This class should have been an interface instead.
  /// The default constuctor should have not been exposed.
  DrmStore_Playback()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.drm.DrmStore$DrmObjectType
///
/// Defines DRM object types.
class DrmStore_DrmObjectType extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/drm/DrmStore\$DrmObjectType");
  DrmStore_DrmObjectType.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int CONTENT
  ///
  /// A rights-protected file object type.
  static const CONTENT = 1;

  /// from: static public final int RIGHTS_OBJECT
  ///
  /// A rights information object type.
  static const RIGHTS_OBJECT = 2;

  /// from: static public final int TRIGGER_OBJECT
  ///
  /// A trigger information object type.
  static const TRIGGER_OBJECT = 3;

  /// from: static public final int UNKNOWN
  ///
  /// An unknown object type.
  static const UNKNOWN = 0;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated This class should have been an interface instead.
  /// The default constuctor should have not been exposed.
  DrmStore_DrmObjectType()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}

/// from: android.drm.DrmStore$ConstraintsColumns
///
/// Interface definition for the columns that represent DRM constraints.
/// android.drm.DrmManagerClient\#getConstraints DrmManagerClient.getConstraints()
/// can be called by an application to find out the contraints on the
/// android.drm.DrmStore.Action actions that can be performed
/// on right-protected content. The constants defined in this interface
/// represent three most common types of constraints: count-based,
/// date-based, and duration-based. Two or more constraints can be used
/// at the same time to represent more sophisticated constraints.
/// In addition, user-defined constraint,
/// \#EXTENDED_METADATA extended metadata, can be
/// used if these three types of constraints are not sufficient.
class DrmStore_ConstraintsColumns extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/drm/DrmStore\$ConstraintsColumns");
  DrmStore_ConstraintsColumns.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String EXTENDED_METADATA
  ///
  /// This is a user-defined constraint. It represents the additional constraint
  /// using extended metadata.
  ///
  /// Type: TEXT
  static const EXTENDED_METADATA = "extended_metadata";

  /// from: static public final java.lang.String LICENSE_AVAILABLE_TIME
  ///
  /// This is a duration-based constaint. It represents the available time left
  /// before the license expires.
  ///
  /// Type: TEXT
  static const LICENSE_AVAILABLE_TIME = "license_available_time";

  /// from: static public final java.lang.String LICENSE_EXPIRY_TIME
  ///
  /// This is a date-based constaint. It represents the time after which
  /// an android.drm.DrmStore.Action action can not be performed on
  /// the rights-protected content.
  ///
  /// Type: TEXT
  static const LICENSE_EXPIRY_TIME = "license_expiry_time";

  /// from: static public final java.lang.String LICENSE_START_TIME
  ///
  /// This is a date-based constraint. It represents the time before which
  /// an android.drm.DrmStore.Action action can be performed on
  /// the rights-protected content.
  ///
  /// Type: TEXT
  static const LICENSE_START_TIME = "license_start_time";

  /// from: static public final java.lang.String MAX_REPEAT_COUNT
  ///
  /// This is a count-based constraint. It represents the maximum
  /// repeat count that can be performed on an
  /// android.drm.DrmStore.Action action.
  ///
  /// Type: INTEGER
  static const MAX_REPEAT_COUNT = "max_repeat_count";

  /// from: static public final java.lang.String REMAINING_REPEAT_COUNT
  ///
  /// This is a count-based constraint. It represents the remaining
  /// repeat count that can be performed on an
  /// android.drm.DrmStore.Action action.
  ///
  /// Type: INTEGER
  static const REMAINING_REPEAT_COUNT = "remaining_repeat_count";
}

/// from: android.drm.DrmStore$Action
///
/// Defines actions that can be performed on rights-protected content.
class DrmStore_Action extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/drm/DrmStore\$Action");
  DrmStore_Action.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int DEFAULT
  ///
  /// The default action.
  static const DEFAULT = 0;

  /// from: static public final int DISPLAY
  ///
  /// The rights-protected content can be displayed.
  static const DISPLAY = 7;

  /// from: static public final int EXECUTE
  ///
  /// The rights-protected content can be executed.
  static const EXECUTE = 6;

  /// from: static public final int OUTPUT
  ///
  /// The rights-protected content can be set as output.
  static const OUTPUT = 4;

  /// from: static public final int PLAY
  ///
  /// The rights-protected content can be played.
  static const PLAY = 1;

  /// from: static public final int PREVIEW
  ///
  /// The rights-protected content can be previewed.
  static const PREVIEW = 5;

  /// from: static public final int RINGTONE
  ///
  /// The rights-protected content can be set as a ringtone.
  static const RINGTONE = 2;

  /// from: static public final int TRANSFER
  ///
  /// The rights-protected content can be transferred.
  static const TRANSFER = 3;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated This class should have been an interface instead.
  /// The default constuctor should have not been exposed.
  DrmStore_Action()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}
