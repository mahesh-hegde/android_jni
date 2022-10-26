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

import "../content/ClipData.dart" as clipdata_;

import "../content/ClipDescription.dart" as clipdescription_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.DragEvent
///
/// Represents an event that is sent out by the system at various times during a drag and drop
/// operation. It is a data structure that contains several important pieces of data about
/// the operation and the underlying data.
///
///  View objects that receive a DragEvent call \#getAction(), which returns
///  an action type that indicates the state of the drag and drop operation. This allows a View
///  object to react to a change in state by changing its appearance or performing other actions.
///  For example, a View can react to the \#ACTION_DRAG_ENTERED action type by
///  by changing one or more colors in its displayed image.
///
///
///
///  During a drag and drop operation, the system displays an image that the user drags. This image
///  is called a drag shadow. Several action types reflect the position of the drag shadow relative
///  to the View receiving the event.
///
///
///
///  Most methods return valid data only for certain event actions. This is summarized in the
///  following table. Each possible \#getAction() value is listed in the first column. The
///  other columns indicate which method or methods return valid data for that getAction() value:
///
///
/// <table>
///  <tr>
///      <th scope="col">getAction() Value</th>
///      <th scope="col">getClipDescription()</th>
///      <th scope="col">getLocalState()</th>
///      <th scope="col">getX()</th>
///      <th scope="col">getY()</th>
///      <th scope="col">getClipData()</th>
///      <th scope="col">getResult()</th>
///  </tr>
///  <tr>
///      <td>ACTION_DRAG_STARTED</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">&nbsp;</td>
///  </tr>
///  <tr>
///      <td>ACTION_DRAG_ENTERED</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">&nbsp;</td>
///  </tr>
///  <tr>
///      <td>ACTION_DRAG_LOCATION</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">&nbsp;</td>
///  </tr>
///  <tr>
///      <td>ACTION_DRAG_EXITED</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">&nbsp;</td>
///  </tr>
///  <tr>
///      <td>ACTION_DROP</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">&nbsp;</td>
///  </tr>
///  <tr>
///      <td>ACTION_DRAG_ENDED</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">X</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">&nbsp;</td>
///      <td style="text-align: center;">X</td>
///  </tr>
/// </table>
///
///  The android.view.DragEvent\#getAction(),
///  android.view.DragEvent\#getLocalState()
///  android.view.DragEvent\#describeContents(),
///  android.view.DragEvent\#writeToParcel(Parcel,int), and
///  android.view.DragEvent\#toString() methods always return valid data.
///
///
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For a guide to implementing drag and drop features, read the
/// <a href="{@docRoot}guide/topics/ui/drag-drop.html">Drag and Drop</a> developer guide.
///
/// </div>
class DragEvent extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/view/DragEvent");
  DragEvent.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ACTION_DRAG_ENDED
  ///
  /// Action constant returned by \#getAction():  Signals to a View that the drag and drop
  /// operation has concluded.  A View that changed its appearance during the operation should
  /// return to its usual drawing state in response to this event.
  ///
  ///  All views with listeners that returned boolean <code>true</code> for the ACTION_DRAG_STARTED
  ///  event will receive the ACTION_DRAG_ENDED event even if they are not currently visible when
  ///  the drag ends. Views removed during the drag operation won't receive the ACTION_DRAG_ENDED
  ///  event.
  ///
  ///
  ///
  ///  The View object can call \#getResult() to see the result of the operation.
  ///  If a View returned {@code true} in response to \#ACTION_DROP, then
  ///  getResult() returns {@code true}, otherwise it returns {@code false}.
  ///
  ///
  ///@see \#ACTION_DRAG_STARTED
  ///@see \#getResult()
  static const ACTION_DRAG_ENDED = 4;

  /// from: static public final int ACTION_DRAG_ENTERED
  ///
  /// Action constant returned by \#getAction(): Signals to a View that the drag point has
  /// entered the bounding box of the View.
  ///
  ///  If the View can accept a drop, it can react to ACTION_DRAG_ENTERED
  ///  by changing its appearance in a way that tells the user that the View is the current
  ///  drop target.
  ///
  ///
  /// The system stops sending ACTION_DRAG_LOCATION events to a View once the user moves the
  /// drag shadow out of the View object's bounding box or into a descendant view that can accept
  /// the data. If the user moves the drag shadow back into the View object's bounding box or out
  /// of a descendant view that can accept the data, the View receives an ACTION_DRAG_ENTERED again
  /// before receiving any more ACTION_DRAG_LOCATION events.
  ///
  ///
  ///@see \#ACTION_DRAG_ENTERED
  ///@see \#ACTION_DRAG_LOCATION
  static const ACTION_DRAG_ENTERED = 5;

  /// from: static public final int ACTION_DRAG_EXITED
  ///
  /// Action constant returned by \#getAction(): Signals that the user has moved the
  /// drag shadow out of the bounding box of the View or into a descendant view that can accept
  /// the data.
  /// The View can react by changing its appearance in a way that tells the user that
  /// View is no longer the immediate drop target.
  ///
  ///  After the system sends an ACTION_DRAG_EXITED event to the View, the View receives no more
  ///  ACTION_DRAG_LOCATION events until the user drags the drag shadow back over the View.
  ///
  ///
  static const ACTION_DRAG_EXITED = 6;

  /// from: static public final int ACTION_DRAG_LOCATION
  ///
  /// Action constant returned by \#getAction(): Sent to a View after
  /// \#ACTION_DRAG_ENTERED while the drag shadow is still within the View object's bounding
  /// box, but not within a descendant view that can accept the data. The \#getX() and
  /// \#getY() methods supply
  /// the X and Y position of of the drag point within the View object's bounding box.
  ///
  /// A View receives an \#ACTION_DRAG_ENTERED event before receiving any
  /// ACTION_DRAG_LOCATION events.
  ///
  ///
  ///
  /// The system stops sending ACTION_DRAG_LOCATION events to a View once the user moves the
  /// drag shadow out of the View object's bounding box or into a descendant view that can accept
  /// the data. If the user moves the drag shadow back into the View object's bounding box or out
  /// of a descendant view that can accept the data, the View receives an ACTION_DRAG_ENTERED again
  /// before receiving any more ACTION_DRAG_LOCATION events.
  ///
  ///
  ///@see \#ACTION_DRAG_ENTERED
  ///@see \#getX()
  ///@see \#getY()
  static const ACTION_DRAG_LOCATION = 2;

  /// from: static public final int ACTION_DRAG_STARTED
  ///
  /// Action constant returned by \#getAction(): Signals the start of a
  /// drag and drop operation. The View should return {@code true} from its
  /// View\#onDragEvent(DragEvent) onDragEvent() handler method or
  /// View.OnDragListener\#onDrag(View,DragEvent) OnDragListener.onDrag() listener
  /// if it can accept a drop. The onDragEvent() or onDrag() methods usually inspect the metadata
  /// from \#getClipDescription() to determine if they can accept the data contained in
  /// this drag. For an operation that doesn't represent data transfer, these methods may
  /// perform other actions to determine whether or not the View should accept the data.
  /// If the View wants to indicate that it is a valid drop target, it can also react by
  /// changing its appearance.
  ///
  ///  Views added or becoming visible for the first time during a drag operation receive this
  ///  event when they are added or becoming visible.
  ///
  ///
  ///
  ///  A View only receives further drag events for the drag operation if it returns {@code true}
  ///  in response to ACTION_DRAG_STARTED.
  ///
  ///
  ///@see \#ACTION_DRAG_ENDED
  ///@see \#getX()
  ///@see \#getY()
  static const ACTION_DRAG_STARTED = 1;

  /// from: static public final int ACTION_DROP
  ///
  /// Action constant returned by \#getAction(): Signals to a View that the user
  /// has released the drag shadow, and the drag point is within the bounding box of the View and
  /// not within a descendant view that can accept the data.
  /// The View should retrieve the data from the DragEvent by calling \#getClipData().
  /// The methods \#getX() and \#getY() return the X and Y position of the drop point
  /// within the View object's bounding box.
  ///
  /// The View should return {@code true} from its View\#onDragEvent(DragEvent)
  /// handler or View.OnDragListener\#onDrag(View,DragEvent) OnDragListener.onDrag()
  /// listener if it accepted the drop, and {@code false} if it ignored the drop.
  ///
  ///
  ///
  /// The View can also react to this action by changing its appearance.
  ///
  ///
  ///@see \#getClipData()
  ///@see \#getX()
  ///@see \#getY()
  static const ACTION_DROP = 3;

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.view.DragEvent> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// A container for creating a DragEvent from a Parcel.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  DragEvent()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_getAction =
      jniAccessors.getMethodIDOf(_classRef, "getAction", "()I");

  /// from: public int getAction()
  ///
  /// Inspect the action value of this event.
  ///@return One of the following action constants, in the order in which they usually occur
  /// during a drag and drop operation:
  /// <ul>
  ///  <li>\#ACTION_DRAG_STARTED</li>
  ///  <li>\#ACTION_DRAG_ENTERED</li>
  ///  <li>\#ACTION_DRAG_LOCATION</li>
  ///  <li>\#ACTION_DROP</li>
  ///  <li>\#ACTION_DRAG_EXITED</li>
  ///  <li>\#ACTION_DRAG_ENDED</li>
  /// </ul>
  int getAction() => jniAccessors.callMethodWithArgs(
      reference, _id_getAction, jni.JniType.intType, []).integer;

  static final _id_getX = jniAccessors.getMethodIDOf(_classRef, "getX", "()F");

  /// from: public float getX()
  ///
  /// Gets the X coordinate of the drag point. The value is only valid if the event action is
  /// \#ACTION_DRAG_STARTED, \#ACTION_DRAG_LOCATION or \#ACTION_DROP.
  ///@return The current drag point's X coordinate
  double getX() => jniAccessors
      .callMethodWithArgs(reference, _id_getX, jni.JniType.floatType, []).float;

  static final _id_getY = jniAccessors.getMethodIDOf(_classRef, "getY", "()F");

  /// from: public float getY()
  ///
  /// Gets the Y coordinate of the drag point. The value is only valid if the event action is
  /// \#ACTION_DRAG_STARTED, \#ACTION_DRAG_LOCATION or \#ACTION_DROP.
  ///@return The current drag point's Y coordinate
  double getY() => jniAccessors
      .callMethodWithArgs(reference, _id_getY, jni.JniType.floatType, []).float;

  static final _id_getClipData = jniAccessors.getMethodIDOf(
      _classRef, "getClipData", "()Landroid/content/ClipData;");

  /// from: public android.content.ClipData getClipData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the android.content.ClipData object sent to the system as part of the call
  /// to
  /// android.view.View\#startDragAndDrop(ClipData,View.DragShadowBuilder,Object,int) startDragAndDrop().
  /// This method only returns valid data if the event action is \#ACTION_DROP.
  ///@return The ClipData sent to the system by startDragAndDrop().
  clipdata_.ClipData getClipData() =>
      clipdata_.ClipData.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getClipData, jni.JniType.objectType, []).object);

  static final _id_getClipDescription = jniAccessors.getMethodIDOf(
      _classRef, "getClipDescription", "()Landroid/content/ClipDescription;");

  /// from: public android.content.ClipDescription getClipDescription()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the android.content.ClipDescription object contained in the
  /// android.content.ClipData object sent to the system as part of the call to
  /// android.view.View\#startDragAndDrop(ClipData,View.DragShadowBuilder,Object,int) startDragAndDrop().
  /// The drag handler or listener for a View can use the metadata in this object to decide if the
  /// View can accept the dragged View object's data.
  ///
  /// This method returns valid data for all event actions except for \#ACTION_DRAG_ENDED.
  ///@return The ClipDescription that was part of the ClipData sent to the system by
  ///     startDragAndDrop().
  clipdescription_.ClipDescription getClipDescription() =>
      clipdescription_.ClipDescription.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getClipDescription,
          jni.JniType.objectType, []).object);

  static final _id_getLocalState = jniAccessors.getMethodIDOf(
      _classRef, "getLocalState", "()Ljava/lang/Object;");

  /// from: public java.lang.Object getLocalState()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the local state object sent to the system as part of the call to
  /// android.view.View\#startDragAndDrop(ClipData,View.DragShadowBuilder,Object,int) startDragAndDrop().
  /// The object is intended to provide local information about the drag and drop operation. For
  /// example, it can indicate whether the drag and drop operation is a copy or a move.
  ///
  /// The local state is available only to views in the activity which has started the drag
  /// operation. In all other activities this method will return null
  ///
  ///
  ///
  ///  This method returns valid data for all event actions.
  ///
  ///
  ///@return The local state object sent to the system by startDragAndDrop().
  jni.JniObject getLocalState() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLocalState, jni.JniType.objectType, []).object);

  static final _id_getResult =
      jniAccessors.getMethodIDOf(_classRef, "getResult", "()Z");

  /// from: public boolean getResult()
  ///
  ///
  /// Returns an indication of the result of the drag and drop operation.
  /// This method only returns valid data if the action type is \#ACTION_DRAG_ENDED.
  /// The return value depends on what happens after the user releases the drag shadow.
  ///
  ///
  ///
  /// If the user releases the drag shadow on a View that can accept a drop, the system sends an
  /// \#ACTION_DROP event to the View object's drag event listener. If the listener
  /// returns {@code true}, then getResult() will return {@code true}.
  /// If the listener returns {@code false}, then getResult() returns {@code false}.
  ///
  ///
  ///
  /// Notice that getResult() also returns {@code false} if no \#ACTION_DROP is sent. This
  /// happens, for example, when the user releases the drag shadow over an area outside of the
  /// application. In this case, the system sends out \#ACTION_DRAG_ENDED for the current
  /// operation, but never sends out \#ACTION_DROP.
  ///
  ///
  ///@return {@code true} if a drag event listener returned {@code true} in response to
  /// \#ACTION_DROP. If the system did not send \#ACTION_DROP before
  /// \#ACTION_DRAG_ENDED, or if the listener returned {@code false} in response to
  /// \#ACTION_DROP, then {@code false} is returned.
  bool getResult() => jniAccessors.callMethodWithArgs(
      reference, _id_getResult, jni.JniType.booleanType, []).boolean;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a string containing a concise, human-readable representation of this DragEvent
  /// object.
  ///@return A string representation of the DragEvent object.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  ///
  /// Returns information about the android.os.Parcel representation of this DragEvent
  /// object.
  ///@return Information about the android.os.Parcel representation.
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel dest, int flags)
  ///
  /// Creates a android.os.Parcel object from this DragEvent object.
  ///@param dest A android.os.Parcel object in which to put the DragEvent object.
  ///@param flags Flags to store in the Parcel.
  void writeToParcel(parcel_.Parcel dest, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [dest.reference, flags]).check();
}
