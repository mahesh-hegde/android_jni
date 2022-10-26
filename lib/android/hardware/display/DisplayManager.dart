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

import "../../content/Context.dart" as context_;

import "../../view/Display.dart" as display_;

import "../../os/Handler.dart" as handler_;

import "VirtualDisplay.dart" as virtualdisplay_;

import "../../view/Surface.dart" as surface_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.hardware.display.DisplayManager
///
/// Manages the properties of attached displays.
class DisplayManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/hardware/display/DisplayManager");
  DisplayManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String DISPLAY_CATEGORY_PRESENTATION
  ///
  /// Display category: Presentation displays.
  ///
  /// This category can be used to identify secondary displays that are suitable for
  /// use as presentation displays such as HDMI or Wireless displays.  Applications
  /// may automatically project their content to presentation displays to provide
  /// richer second screen experiences.
  ///
  ///
  ///@see android.app.Presentation
  ///@see Display\#FLAG_PRESENTATION
  ///@see \#getDisplays(String)
  static const DISPLAY_CATEGORY_PRESENTATION =
      "android.hardware.display.category.PRESENTATION";

  /// from: static public final int VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR
  ///
  /// Virtual display flag: Allows content to be mirrored on private displays when no content is
  /// being shown.
  ///
  ///
  /// This flag is mutually exclusive with \#VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY.
  /// If both flags are specified then the own-content only behavior will be applied.
  ///
  ///
  ///
  ///
  /// The behavior of this flag is implied whenever \#VIRTUAL_DISPLAY_FLAG_PUBLIC is set
  /// and \#VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY has not been set.   This flag is only
  /// required to override the default behavior when creating a private display.
  ///
  ///
  ///
  ///
  /// Creating an auto-mirroing virtual display requires the
  /// android.Manifest.permission\#CAPTURE_VIDEO_OUTPUT
  /// or android.Manifest.permission\#CAPTURE_SECURE_VIDEO_OUTPUT permission.
  /// These permissions are reserved for use by system components and are not available to
  /// third-party applications.
  ///
  /// Alternatively, an appropriate MediaProjection may be used to create an
  /// auto-mirroring virtual display.
  ///
  ///
  ///@see \#createVirtualDisplay
  static const VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR = 16;

  /// from: static public final int VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY
  ///
  /// Virtual display flag: Only show this display's own content; do not mirror
  /// the content of another display.
  ///
  ///
  /// This flag is used in conjunction with \#VIRTUAL_DISPLAY_FLAG_PUBLIC.
  /// Ordinarily public virtual displays will automatically mirror the content of the
  /// default display if they have no windows of their own.  When this flag is
  /// specified, the virtual display will only ever show its own content and
  /// will be blanked instead if it has no windows.
  ///
  ///
  ///
  ///
  /// This flag is mutually exclusive with \#VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR.  If both
  /// flags are specified then the own-content only behavior will be applied.
  ///
  ///
  ///
  ///
  /// This behavior of this flag is implied whenever neither \#VIRTUAL_DISPLAY_FLAG_PUBLIC
  /// nor \#VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR have been set.  This flag is only required to
  /// override the default behavior when creating a public display.
  ///
  ///
  ///@see \#createVirtualDisplay
  static const VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY = 8;

  /// from: static public final int VIRTUAL_DISPLAY_FLAG_PRESENTATION
  ///
  /// Virtual display flag: Create a presentation display.
  ///
  /// <h3>Presentation virtual displays</h3>
  ///
  /// When this flag is set, the virtual display is registered as a presentation
  /// display in the \#DISPLAY_CATEGORY_PRESENTATION presentation display category.
  /// Applications may automatically project their content to presentation displays
  /// to provide richer second screen experiences.
  ///
  ///
  ///
  /// <h3>Non-presentation virtual displays</h3>
  ///
  /// When this flag is not set, the virtual display is not registered as a presentation
  /// display.  Applications can still project their content on the display but they
  /// will typically not do so automatically.  This option is appropriate for
  /// more special-purpose displays.
  ///
  ///
  ///@see android.app.Presentation
  ///@see \#createVirtualDisplay
  ///@see \#DISPLAY_CATEGORY_PRESENTATION
  ///@see Display\#FLAG_PRESENTATION
  static const VIRTUAL_DISPLAY_FLAG_PRESENTATION = 2;

  /// from: static public final int VIRTUAL_DISPLAY_FLAG_PUBLIC
  ///
  /// Virtual display flag: Create a public display.
  ///
  /// <h3>Public virtual displays</h3>
  ///
  /// When this flag is set, the virtual display is public.
  ///
  ///
  /// A public virtual display behaves just like most any other display that is connected
  /// to the system such as an HDMI or Wireless display.  Applications can open
  /// windows on the display and the system may mirror the contents of other displays
  /// onto it.
  ///
  ///
  /// Creating a public virtual display that isn't restricted to own-content only implicitly
  /// creates an auto-mirroring display. See \#VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR for
  /// restrictions on who is allowed to create an auto-mirroring display.
  ///
  ///
  ///
  /// <h3>Private virtual displays</h3>
  ///
  /// When this flag is not set, the virtual display is private as defined by the
  /// Display\#FLAG_PRIVATE display flag.
  ///
  ///
  ///
  ///
  /// A private virtual display belongs to the application that created it.  Only the a owner of a
  /// private virtual display and the apps that are already on that display are allowed to place
  /// windows upon it.  The private virtual display also does not participate in display mirroring:
  /// it will neither receive mirrored content from another display nor allow its own content to be
  /// mirrored elsewhere.  More precisely, the only processes that are allowed to enumerate or
  /// interact with the private display are those that have the same UID as the application that
  /// originally created the private virtual display or as the activities that are already on that
  /// display.
  ///
  ///
  ///@see \#createVirtualDisplay
  ///@see \#VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY
  ///@see \#VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR
  static const VIRTUAL_DISPLAY_FLAG_PUBLIC = 1;

  /// from: static public final int VIRTUAL_DISPLAY_FLAG_SECURE
  ///
  /// Virtual display flag: Create a secure display.
  ///
  /// <h3>Secure virtual displays</h3>
  ///
  /// When this flag is set, the virtual display is considered secure as defined
  /// by the Display\#FLAG_SECURE display flag.  The caller promises to take
  /// reasonable measures, such as over-the-air encryption, to prevent the contents
  /// of the display from being intercepted or recorded on a persistent medium.
  ///
  ///
  /// Creating a secure virtual display requires the
  /// android.Manifest.permission\#CAPTURE_SECURE_VIDEO_OUTPUT permission.
  /// This permission is reserved for use by system components and is not available to
  /// third-party applications.
  ///
  ///
  ///
  /// <h3>Non-secure virtual displays</h3>
  ///
  /// When this flag is not set, the virtual display is considered unsecure.
  /// The content of secure windows will be blanked if shown on this display.
  ///
  ///
  ///@see Display\#FLAG_SECURE
  ///@see \#createVirtualDisplay
  static const VIRTUAL_DISPLAY_FLAG_SECURE = 4;

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @hide
  DisplayManager(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_getDisplay = jniAccessors.getMethodIDOf(
      _classRef, "getDisplay", "(I)Landroid/view/Display;");

  /// from: public android.view.Display getDisplay(int displayId)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets information about a logical display.
  ///
  /// The display metrics may be adjusted to provide compatibility
  /// for legacy applications.
  ///@param displayId The logical display id.
  ///@return The display object, or null if there is no valid display with the given id.
  display_.Display getDisplay(int displayId) =>
      display_.Display.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getDisplay, jni.JniType.objectType, [displayId]).object);

  static final _id_getDisplays = jniAccessors.getMethodIDOf(
      _classRef, "getDisplays", "()[Landroid/view/Display;");

  /// from: public android.view.Display[] getDisplays()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets all currently valid logical displays.
  ///@return An array containing all displays.
  jni.JniObject getDisplays() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getDisplays, jni.JniType.objectType, []).object);

  static final _id_getDisplays1 = jniAccessors.getMethodIDOf(
      _classRef, "getDisplays", "(Ljava/lang/String;)[Landroid/view/Display;");

  /// from: public android.view.Display[] getDisplays(java.lang.String category)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Gets all currently valid logical displays of the specified category.
  ///
  /// When there are multiple displays in a category the returned displays are sorted
  /// of preference.  For example, if the requested category is
  /// \#DISPLAY_CATEGORY_PRESENTATION and there are multiple presentation displays
  /// then the displays are sorted so that the first display in the returned array
  /// is the most preferred presentation display.  The application may simply
  /// use the first display or allow the user to choose.
  ///
  ///
  ///@param category The requested display category or null to return all displays.
  ///@return An array containing all displays sorted by order of preference.
  ///@see \#DISPLAY_CATEGORY_PRESENTATION
  jni.JniObject getDisplays1(jni.JniString category) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDisplays1,
          jni.JniType.objectType,
          [category.reference]).object);

  static final _id_registerDisplayListener = jniAccessors.getMethodIDOf(
      _classRef,
      "registerDisplayListener",
      "(Landroid/hardware/display/DisplayManager\$DisplayListener;Landroid/os/Handler;)V");

  /// from: public void registerDisplayListener(android.hardware.display.DisplayManager.DisplayListener listener, android.os.Handler handler)
  ///
  /// Registers an display listener to receive notifications about when
  /// displays are added, removed or changed.
  ///@param listener The listener to register.
  ///@param handler The handler on which the listener should be invoked, or null
  /// if the listener should be invoked on the calling thread's looper.
  ///@see \#unregisterDisplayListener
  void registerDisplayListener(
          DisplayManager_DisplayListener listener, handler_.Handler handler) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_registerDisplayListener,
          jni.JniType.voidType,
          [listener.reference, handler.reference]).check();

  static final _id_unregisterDisplayListener = jniAccessors.getMethodIDOf(
      _classRef,
      "unregisterDisplayListener",
      "(Landroid/hardware/display/DisplayManager\$DisplayListener;)V");

  /// from: public void unregisterDisplayListener(android.hardware.display.DisplayManager.DisplayListener listener)
  ///
  /// Unregisters a display listener.
  ///@param listener The listener to unregister.
  ///@see \#registerDisplayListener
  void unregisterDisplayListener(DisplayManager_DisplayListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_unregisterDisplayListener,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_createVirtualDisplay = jniAccessors.getMethodIDOf(
      _classRef,
      "createVirtualDisplay",
      "(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;");

  /// from: public android.hardware.display.VirtualDisplay createVirtualDisplay(java.lang.String name, int width, int height, int densityDpi, android.view.Surface surface, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a virtual display.
  ///@see \#createVirtualDisplay(String, int, int, int, Surface, int,
  /// VirtualDisplay.Callback, Handler)
  ///@param name This value must never be {@code null}.
  ///@param surface This value may be {@code null}.
  virtualdisplay_.VirtualDisplay createVirtualDisplay(
          jni.JniString name,
          int width,
          int height,
          int densityDpi,
          surface_.Surface surface,
          int flags) =>
      virtualdisplay_.VirtualDisplay.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_createVirtualDisplay, jni.JniType.objectType, [
        name.reference,
        width,
        height,
        densityDpi,
        surface.reference,
        flags
      ]).object);

  static final _id_createVirtualDisplay1 = jniAccessors.getMethodIDOf(
      _classRef,
      "createVirtualDisplay",
      "(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay\$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;");

  /// from: public android.hardware.display.VirtualDisplay createVirtualDisplay(java.lang.String name, int width, int height, int densityDpi, android.view.Surface surface, int flags, android.hardware.display.VirtualDisplay.Callback callback, android.os.Handler handler)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a virtual display.
  ///
  /// The content of a virtual display is rendered to a Surface provided
  /// by the application.
  ///
  ///
  /// The virtual display should be VirtualDisplay\#release released
  /// when no longer needed.  Because a virtual display renders to a surface
  /// provided by the application, it will be released automatically when the
  /// process terminates and all remaining windows on it will be forcibly removed.
  ///
  ///
  /// The behavior of the virtual display depends on the flags that are provided
  /// to this method.  By default, virtual displays are created to be private,
  /// non-presentation and unsecure.  Permissions may be required to use certain flags.
  ///
  ///
  /// As of android.os.Build.VERSION_CODES\#KITKAT_WATCH, the surface may
  /// be attached or detached dynamically using VirtualDisplay\#setSurface.
  /// Previously, the surface had to be non-null when \#createVirtualDisplay
  /// was called and could not be changed for the lifetime of the display.
  ///
  ///
  /// Detaching the surface that backs a virtual display has a similar effect to
  /// turning off the screen.
  ///
  ///
  ///@param name The name of the virtual display, must be non-empty.
  /// This value must never be {@code null}.
  ///@param width The width of the virtual display in pixels, must be greater than 0.
  ///@param height The height of the virtual display in pixels, must be greater than 0.
  ///@param densityDpi The density of the virtual display in dpi, must be greater than 0.
  ///@param surface The surface to which the content of the virtual display should
  /// be rendered, or null if there is none initially.
  /// This value may be {@code null}.
  ///@param flags A combination of virtual display flags:
  /// \#VIRTUAL_DISPLAY_FLAG_PUBLIC, \#VIRTUAL_DISPLAY_FLAG_PRESENTATION,
  /// \#VIRTUAL_DISPLAY_FLAG_SECURE, \#VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY,
  /// or \#VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR.
  ///@param callback Callback to call when the state of the VirtualDisplay changes
  /// This value may be {@code null}.
  ///@param handler The handler on which the listener should be invoked, or null
  /// if the listener should be invoked on the calling thread's looper.
  /// This value may be {@code null}.
  ///@return The newly created virtual display, or null if the application could
  /// not create the virtual display.
  ///@throws SecurityException if the caller does not have permission to create
  /// a virtual display with the specified flags.
  virtualdisplay_.VirtualDisplay createVirtualDisplay1(
          jni.JniString name,
          int width,
          int height,
          int densityDpi,
          surface_.Surface surface,
          int flags,
          virtualdisplay_.VirtualDisplay_Callback callback,
          handler_.Handler handler) =>
      virtualdisplay_.VirtualDisplay.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_createVirtualDisplay1, jni.JniType.objectType, [
        name.reference,
        width,
        height,
        densityDpi,
        surface.reference,
        flags,
        callback.reference,
        handler.reference
      ]).object);
}

/// from: android.hardware.display.DisplayManager$DisplayListener
///
/// Listens for changes in available display devices.
class DisplayManager_DisplayListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/hardware/display/DisplayManager\$DisplayListener");
  DisplayManager_DisplayListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onDisplayAdded =
      jniAccessors.getMethodIDOf(_classRef, "onDisplayAdded", "(I)V");

  /// from: public abstract void onDisplayAdded(int displayId)
  ///
  /// Called whenever a logical display has been added to the system.
  /// Use DisplayManager\#getDisplay to get more information about
  /// the display.
  ///@param displayId The id of the logical display that was added.
  void onDisplayAdded(int displayId) => jniAccessors.callMethodWithArgs(
      reference, _id_onDisplayAdded, jni.JniType.voidType, [displayId]).check();

  static final _id_onDisplayRemoved =
      jniAccessors.getMethodIDOf(_classRef, "onDisplayRemoved", "(I)V");

  /// from: public abstract void onDisplayRemoved(int displayId)
  ///
  /// Called whenever a logical display has been removed from the system.
  ///@param displayId The id of the logical display that was removed.
  void onDisplayRemoved(int displayId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onDisplayRemoved,
      jni.JniType.voidType,
      [displayId]).check();

  static final _id_onDisplayChanged =
      jniAccessors.getMethodIDOf(_classRef, "onDisplayChanged", "(I)V");

  /// from: public abstract void onDisplayChanged(int displayId)
  ///
  /// Called whenever the properties of a logical display have changed.
  ///@param displayId The id of the logical display that changed.
  void onDisplayChanged(int displayId) => jniAccessors.callMethodWithArgs(
      reference,
      _id_onDisplayChanged,
      jni.JniType.voidType,
      [displayId]).check();
}
