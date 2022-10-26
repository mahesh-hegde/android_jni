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

/// from: android.provider.AlarmClock
///
/// The AlarmClock provider contains an Intent action and extras that can be used
/// to start an Activity to set a new alarm or timer in an alarm clock application.
///
/// Applications that wish to receive the ACTION_SET_ALARM  and ACTION_SET_TIMER Intents
/// should create an activity to handle the Intent that requires the permission
/// com.android.alarm.permission.SET_ALARM.  Applications that wish to create a
/// new alarm or timer should use
/// android.content.Context\#startActivity Context.startActivity() so that
/// the user has the option of choosing which alarm clock application to use.
///
/// Android TV devices may not support the alarm intents.
class AlarmClock extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/provider/AlarmClock");
  AlarmClock.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_DISMISS_ALARM
  ///
  /// Activity Action: Dismiss an alarm.
  ///
  /// The alarm to dismiss can be specified or searched for in one of the following ways:
  /// <ol>
  /// <li>The Intent's data URI, which represents a deeplink to the alarm.
  /// <li>The extra \#EXTRA_ALARM_SEARCH_MODE to determine how to search for the alarm.
  /// </ol>
  ///
  ///
  /// If neither of the above are given then:
  /// <ul>
  /// <li>If exactly one active alarm exists, it is dismissed.
  /// <li>If more than one active alarm exists, the user is prompted to choose the alarm to
  /// dismiss.
  /// </ul>
  ///
  ///
  /// If the extra \#EXTRA_ALARM_SEARCH_MODE is used, and the search results contain two or
  /// more matching alarms, then the implementation should show an UI with the results and allow
  /// the user to select the alarm to dismiss. If the implementation supports
  /// android.content.Intent\#CATEGORY_VOICE and the activity is started in Voice
  /// Interaction mode (i.e. check android.app.Activity\#isVoiceInteraction), then the
  /// implementation should additionally use android.app.VoiceInteractor.PickOptionRequest
  /// to start a voice interaction follow-on flow to help the user disambiguate the alarm by voice.
  ///
  ///
  /// If the specified alarm is a single occurrence alarm, then dismissing it effectively disables
  /// the alarm; it will never ring again unless explicitly re-enabled.
  ///
  ///
  /// If the specified alarm is a repeating alarm, then dismissing it only prevents the upcoming
  /// instance from ringing. The alarm remains enabled so that it will still ring on the date and
  /// time of the next instance (i.e. the instance after the upcoming one).
  ///
  ///
  ///@see \#EXTRA_ALARM_SEARCH_MODE
  static const ACTION_DISMISS_ALARM = "android.intent.action.DISMISS_ALARM";

  /// from: static public final java.lang.String ACTION_DISMISS_TIMER
  ///
  /// Activity Action: Dismiss a timer.
  ///
  /// The timer to dismiss should be specified using the Intent's data URI, which represents a
  /// deeplink to the timer.
  ///
  ///
  /// If no data URI is provided, dismiss all expired timers.
  ///
  ///
  static const ACTION_DISMISS_TIMER = "android.intent.action.DISMISS_TIMER";

  /// from: static public final java.lang.String ACTION_SET_ALARM
  ///
  /// Activity Action: Set an alarm.
  ///
  /// Activates an existing alarm or creates a new one.
  ///
  ///
  /// This action requests an alarm to be set for a given time of day. If no time of day is
  /// specified, an implementation should start an activity that is capable of setting an alarm
  /// (\#EXTRA_SKIP_UI is ignored in this case). If a time of day is specified, and
  /// \#EXTRA_SKIP_UI is {@code true}, and the alarm is not repeating, the implementation
  /// should remove this alarm after it has been dismissed. If an identical alarm exists matching
  /// all parameters, the implementation may re-use it instead of creating a new one (in this case,
  /// the alarm should not be removed after dismissal).
  ///
  ///
  /// This action always enables the alarm.
  ///
  ///
  /// This activity could also be started in Voice Interaction mode. The activity should check
  /// android.app.Activity\#isVoiceInteraction, and if true, the implementation should
  /// report a deeplink of the created/enabled alarm using
  /// android.app.VoiceInteractor.CompleteVoiceRequest. This allows follow-on voice actions
  /// such as \#ACTION_DISMISS_ALARM to dismiss the alarm that was just enabled.
  ///
  ///
  /// <h3>Request parameters</h3>
  /// <ul>
  /// <li>\#EXTRA_HOUR _(optional)_: The hour of the alarm being set.
  /// <li>\#EXTRA_MINUTES _(optional)_: The minutes of the alarm being set.
  /// <li>\#EXTRA_DAYS _(optional)_: Weekdays for repeating alarm.
  /// <li>\#EXTRA_MESSAGE _(optional)_: A custom message for the alarm.
  /// <li>\#EXTRA_RINGTONE _(optional)_: A ringtone to play with this alarm.
  /// <li>\#EXTRA_VIBRATE _(optional)_: Whether or not to activate the device
  /// vibrator for this alarm.
  /// <li>\#EXTRA_SKIP_UI _(optional)_: Whether or not to display an activity for
  /// setting this alarm.
  /// </ul>
  static const ACTION_SET_ALARM = "android.intent.action.SET_ALARM";

  /// from: static public final java.lang.String ACTION_SET_TIMER
  ///
  /// Activity Action: Set a timer.
  ///
  /// Activates an existing timer or creates a new one.
  ///
  ///
  /// This action requests a timer to be started for a specific \#EXTRA_LENGTH length of
  /// time. If no \#EXTRA_LENGTH length is specified, the implementation should start an
  /// activity that is capable of setting a timer (\#EXTRA_SKIP_UI is ignored in this case).
  /// If a \#EXTRA_LENGTH length is specified, and \#EXTRA_SKIP_UI is {@code true},
  /// the implementation should remove this timer after it has been dismissed. If an identical,
  /// unused timer exists matching both parameters, an implementation may re-use it instead of
  /// creating a new one (in this case, the timer should not be removed after dismissal).
  ///
  /// This action always starts the timer.
  ///
  ///
  ///
  /// <h3>Request parameters</h3>
  /// <ul>
  /// <li>\#EXTRA_LENGTH _(optional)_: The length of the timer being set.
  /// <li>\#EXTRA_MESSAGE _(optional)_: A custom message for the timer.
  /// <li>\#EXTRA_SKIP_UI _(optional)_: Whether or not to display an activity for
  /// setting this timer.
  /// </ul>
  static const ACTION_SET_TIMER = "android.intent.action.SET_TIMER";

  /// from: static public final java.lang.String ACTION_SHOW_ALARMS
  ///
  /// Activity Action: Show the alarms.
  ///
  /// This action opens the alarms page.
  ///
  ///
  static const ACTION_SHOW_ALARMS = "android.intent.action.SHOW_ALARMS";

  /// from: static public final java.lang.String ACTION_SHOW_TIMERS
  ///
  /// Activity Action: Show the timers.
  ///
  /// This action opens the timers page.
  ///
  ///
  static const ACTION_SHOW_TIMERS = "android.intent.action.SHOW_TIMERS";

  /// from: static public final java.lang.String ACTION_SNOOZE_ALARM
  ///
  /// Activity Action: Snooze a currently ringing alarm.
  ///
  /// Snoozes the currently ringing alarm. The extra \#EXTRA_ALARM_SNOOZE_DURATION can be
  /// optionally set to specify the snooze duration; if unset, the implementation should use a
  /// reasonable default, for example 10 minutes. The alarm should ring again after the snooze
  /// duration.
  ///
  ///
  /// Note: setting the extra \#EXTRA_ALARM_SNOOZE_DURATION does not change the default
  /// snooze duration; it's only applied to the currently ringing alarm.
  ///
  ///
  /// If there is no currently ringing alarm, then this is a no-op.
  ///
  ///
  ///@see \#EXTRA_ALARM_SNOOZE_DURATION
  static const ACTION_SNOOZE_ALARM = "android.intent.action.SNOOZE_ALARM";

  /// from: static public final java.lang.String ALARM_SEARCH_MODE_ALL
  ///
  /// Selects all alarms.
  ///@see \#EXTRA_ALARM_SEARCH_MODE
  static const ALARM_SEARCH_MODE_ALL = "android.all";

  /// from: static public final java.lang.String ALARM_SEARCH_MODE_LABEL
  ///
  /// Search by alarm label. Should return alarms that contain the word or phrase in given label.
  ///@see \#EXTRA_ALARM_SEARCH_MODE
  static const ALARM_SEARCH_MODE_LABEL = "android.label";

  /// from: static public final java.lang.String ALARM_SEARCH_MODE_NEXT
  ///
  /// Selects the alarm that will ring next, or the alarm that is currently ringing, if any.
  ///@see \#EXTRA_ALARM_SEARCH_MODE
  static const ALARM_SEARCH_MODE_NEXT = "android.next";

  /// from: static public final java.lang.String ALARM_SEARCH_MODE_TIME
  ///
  /// Search for the alarm that is most closely matched by the search parameters
  /// \#EXTRA_HOUR, \#EXTRA_MINUTES, \#EXTRA_IS_PM.
  /// In this search mode, at least one of these additional extras are required.
  /// <ul>
  /// <li>\#EXTRA_HOUR - The hour to search for the alarm.
  /// <li>\#EXTRA_MINUTES - The minute to search for the alarm.
  /// <li>\#EXTRA_IS_PM - Whether the hour is AM or PM.
  /// </ul>
  ///@see \#EXTRA_ALARM_SEARCH_MODE
  static const ALARM_SEARCH_MODE_TIME = "android.time";

  /// from: static public final java.lang.String EXTRA_ALARM_SEARCH_MODE
  ///
  /// Bundle extra: Specify the type of search mode to look up an alarm.
  ///
  /// For example, used by \#ACTION_DISMISS_ALARM to identify the alarm to dismiss.
  ///
  ///
  /// This extra is only used when the alarm is not already identified by a deeplink as
  /// specified in the Intent's data URI.
  ///
  ///
  /// The value of this extra is a String, restricted to the following set of supported
  /// search modes:
  /// <ul>
  /// <li><i>Time</i> - \#ALARM_SEARCH_MODE_TIME: Selects the alarm that is most
  /// closely matched by the search parameters \#EXTRA_HOUR, \#EXTRA_MINUTES,
  /// \#EXTRA_IS_PM.
  /// <li><i>Next alarm</i> - \#ALARM_SEARCH_MODE_NEXT: Selects the alarm that will
  /// ring next, or the alarm that is currently ringing, if any.
  /// <li><i>All alarms</i> - \#ALARM_SEARCH_MODE_ALL: Selects all alarms.
  /// <li><i>Label</i> - \#ALARM_SEARCH_MODE_LABEL: Search by alarm label. Should return
  /// alarms that contain the word or phrase in given label.
  /// </ul>
  ///
  ///
  ///@see \#ALARM_SEARCH_MODE_TIME
  ///@see \#ALARM_SEARCH_MODE_NEXT
  ///@see \#ALARM_SEARCH_MODE_ALL
  ///@see \#ALARM_SEARCH_MODE_LABEL
  ///@see \#ACTION_DISMISS_ALARM
  static const EXTRA_ALARM_SEARCH_MODE =
      "android.intent.extra.alarm.SEARCH_MODE";

  /// from: static public final java.lang.String EXTRA_ALARM_SNOOZE_DURATION
  ///
  /// Bundle extra: The snooze duration of the alarm in minutes.
  ///
  /// Used by \#ACTION_SNOOZE_ALARM. This extra is optional and the value is an
  /// Integer that specifies the duration in minutes for which to snooze the alarm.
  ///
  ///
  ///@see \#ACTION_SNOOZE_ALARM
  static const EXTRA_ALARM_SNOOZE_DURATION =
      "android.intent.extra.alarm.SNOOZE_DURATION";

  /// from: static public final java.lang.String EXTRA_DAYS
  ///
  /// Bundle extra: Weekdays for repeating alarm.
  ///
  /// Used by \#ACTION_SET_ALARM.
  ///
  ///
  /// The value is an {@code ArrayList<Integer>}. Each item can be:
  ///
  ///
  /// <ul>
  /// <li> java.util.Calendar\#SUNDAY,
  /// <li> java.util.Calendar\#MONDAY,
  /// <li> java.util.Calendar\#TUESDAY,
  /// <li> java.util.Calendar\#WEDNESDAY,
  /// <li> java.util.Calendar\#THURSDAY,
  /// <li> java.util.Calendar\#FRIDAY,
  /// <li> java.util.Calendar\#SATURDAY
  /// </ul>
  static const EXTRA_DAYS = "android.intent.extra.alarm.DAYS";

  /// from: static public final java.lang.String EXTRA_HOUR
  ///
  /// Bundle extra: The hour of the alarm.
  ///
  /// Used by \#ACTION_SET_ALARM.
  ///
  ///
  /// This extra is optional. If not provided, an implementation should open an activity
  /// that allows a user to set an alarm with user provided time.
  ///
  ///
  /// The value is an Integer and ranges from 0 to 23.
  ///
  ///
  ///@see \#ACTION_SET_ALARM
  ///@see \#EXTRA_MINUTES
  ///@see \#EXTRA_DAYS
  static const EXTRA_HOUR = "android.intent.extra.alarm.HOUR";

  /// from: static public final java.lang.String EXTRA_IS_PM
  ///
  /// Bundle extra: The AM/PM of the alarm.
  ///
  /// Used by \#ACTION_DISMISS_ALARM.
  ///
  ///
  /// This extra is optional and only used when \#EXTRA_ALARM_SEARCH_MODE is set to
  /// \#ALARM_SEARCH_MODE_TIME. In this search mode, the \#EXTRA_IS_PM is
  /// used together with \#EXTRA_HOUR and \#EXTRA_MINUTES. The implementation should
  /// look up the alarm that is most closely matched by these search parameters.
  /// If \#EXTRA_IS_PM is missing, then the AM/PM of the specified \#EXTRA_HOUR is
  /// ambiguous and the implementation should ask for clarification from the user.
  ///
  ///
  /// The value is a Boolean, where false=AM and true=PM.
  ///
  ///
  ///@see \#ACTION_DISMISS_ALARM
  ///@see \#EXTRA_HOUR
  ///@see \#EXTRA_MINUTES
  static const EXTRA_IS_PM = "android.intent.extra.alarm.IS_PM";

  /// from: static public final java.lang.String EXTRA_LENGTH
  ///
  /// Bundle extra: The length of the timer in seconds.
  ///
  /// Used by \#ACTION_SET_TIMER.
  ///
  ///
  /// This extra is optional. If not provided, an implementation should open an activity
  /// that allows a user to set a timer with user provided length.
  ///
  ///
  /// The value is an Integer and ranges from 1 to 86400 (24 hours).
  ///
  ///
  ///@see \#ACTION_SET_TIMER
  static const EXTRA_LENGTH = "android.intent.extra.alarm.LENGTH";

  /// from: static public final java.lang.String EXTRA_MESSAGE
  ///
  /// Bundle extra: A custom message for the alarm or timer.
  ///
  /// Used by \#ACTION_SET_ALARM and \#ACTION_SET_TIMER.
  ///
  ///
  /// The value is a String.
  ///
  ///
  ///@see \#ACTION_SET_ALARM
  ///@see \#ACTION_SET_TIMER
  static const EXTRA_MESSAGE = "android.intent.extra.alarm.MESSAGE";

  /// from: static public final java.lang.String EXTRA_MINUTES
  ///
  /// Bundle extra: The minutes of the alarm.
  ///
  /// Used by \#ACTION_SET_ALARM.
  ///
  ///
  /// The value is an Integer and ranges from 0 to 59. If not provided, it defaults to 0.
  ///
  ///
  ///@see \#ACTION_SET_ALARM
  ///@see \#EXTRA_HOUR
  ///@see \#EXTRA_DAYS
  static const EXTRA_MINUTES = "android.intent.extra.alarm.MINUTES";

  /// from: static public final java.lang.String EXTRA_RINGTONE
  ///
  /// Bundle extra: A ringtone to be played with this alarm.
  ///
  /// Used by \#ACTION_SET_ALARM.
  ///
  ///
  /// This value is a String and can either be set to \#VALUE_RINGTONE_SILENT or
  /// to a content URI of the media to be played. If not specified or the URI doesn't exist,
  /// {@code "content://settings/system/alarm_alert} will be used.
  ///
  ///
  ///@see \#ACTION_SET_ALARM
  ///@see \#VALUE_RINGTONE_SILENT
  ///@see \#EXTRA_VIBRATE
  static const EXTRA_RINGTONE = "android.intent.extra.alarm.RINGTONE";

  /// from: static public final java.lang.String EXTRA_SKIP_UI
  ///
  /// Bundle extra: Whether or not to display an activity after performing the action.
  ///
  /// Used by \#ACTION_SET_ALARM and \#ACTION_SET_TIMER.
  ///
  ///
  /// If true, the application is asked to bypass any intermediate UI. If false, the application
  /// may display intermediate UI like a confirmation dialog or settings.
  ///
  ///
  /// The value is a Boolean. The default is {@code false}.
  ///
  ///
  ///@see \#ACTION_SET_ALARM
  ///@see \#ACTION_SET_TIMER
  static const EXTRA_SKIP_UI = "android.intent.extra.alarm.SKIP_UI";

  /// from: static public final java.lang.String EXTRA_VIBRATE
  ///
  /// Bundle extra: Whether or not to activate the device vibrator.
  ///
  /// Used by \#ACTION_SET_ALARM.
  ///
  ///
  /// The value is a Boolean. The default is {@code true}.
  ///
  ///
  ///@see \#ACTION_SET_ALARM
  ///@see \#EXTRA_RINGTONE
  ///@see \#VALUE_RINGTONE_SILENT
  static const EXTRA_VIBRATE = "android.intent.extra.alarm.VIBRATE";

  /// from: static public final java.lang.String VALUE_RINGTONE_SILENT
  ///
  /// Bundle extra value: Indicates no ringtone should be played.
  ///
  /// Used by \#ACTION_SET_ALARM, passed in through \#EXTRA_RINGTONE.
  ///
  ///
  ///@see \#ACTION_SET_ALARM
  ///@see \#EXTRA_RINGTONE
  ///@see \#EXTRA_VIBRATE
  static const VALUE_RINGTONE_SILENT = "silent";

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  AlarmClock()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);
}