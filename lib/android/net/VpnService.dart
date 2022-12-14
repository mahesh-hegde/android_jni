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

import "../app/Service.dart" as service_;

import "../content/Intent.dart" as intent_;

import "../content/Context.dart" as context_;

import "../os/IBinder.dart" as ibinder_;

import "../app/PendingIntent.dart" as pendingintent_;

import "../os/ParcelFileDescriptor.dart" as parcelfiledescriptor_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.VpnService
///
/// VpnService is a base class for applications to extend and build their
/// own VPN solutions. In general, it creates a virtual network interface,
/// configures addresses and routing rules, and returns a file descriptor
/// to the application. Each read from the descriptor retrieves an outgoing
/// packet which was routed to the interface. Each write to the descriptor
/// injects an incoming packet just like it was received from the interface.
/// The interface is running on Internet Protocol (IP), so packets are
/// always started with IP headers. The application then completes a VPN
/// connection by processing and exchanging packets with the remote server
/// over a tunnel.
///
/// Letting applications intercept packets raises huge security concerns.
/// A VPN application can easily break the network. Besides, two of them may
/// conflict with each other. The system takes several actions to address
/// these issues. Here are some key points:
/// <ul>
///   <li>User action is required the first time an application creates a VPN
///       connection.</li>
///   <li>There can be only one VPN connection running at the same time. The
///       existing interface is deactivated when a new one is created.</li>
///   <li>A system-managed notification is shown during the lifetime of a
///       VPN connection.</li>
///   <li>A system-managed dialog gives the information of the current VPN
///       connection. It also provides a button to disconnect.</li>
///   <li>The network is restored automatically when the file descriptor is
///       closed. It also covers the cases when a VPN application is crashed
///       or killed by the system.</li>
/// </ul>
///
/// There are two primary methods in this class: \#prepare and
/// Builder\#establish. The former deals with user action and stops
/// the VPN connection created by another application. The latter creates
/// a VPN interface using the parameters supplied to the Builder.
/// An application must call \#prepare to grant the right to use
/// other methods in this class, and the right can be revoked at any time.
/// Here are the general steps to create a VPN connection:
/// <ol>
///   <li>When the user presses the button to connect, call \#prepare
///       and launch the returned intent, if non-null.</li>
///   <li>When the application becomes prepared, start the service.</li>
///   <li>Create a tunnel to the remote server and negotiate the network
///       parameters for the VPN connection.</li>
///   <li>Supply those parameters to a Builder and create a VPN
///       interface by calling Builder\#establish.</li>
///   <li>Process and exchange packets between the tunnel and the returned
///       file descriptor.</li>
///   <li>When \#onRevoke is invoked, close the file descriptor and
///       shut down the tunnel gracefully.</li>
/// </ol>
///
/// Services extending this class need to be declared with an appropriate
/// permission and intent filter. Their access must be secured by
/// android.Manifest.permission\#BIND_VPN_SERVICE permission, and
/// their intent filter must match \#SERVICE_INTERFACE action. Here
/// is an example of declaring a VPN service in {@code AndroidManifest.xml}:
/// <pre>
/// &lt;service android:name=".ExampleVpnService"
///         android:permission="android.permission.BIND_VPN_SERVICE"&gt;
///     &lt;intent-filter&gt;
///         &lt;action android:name="android.net.VpnService"/&gt;
///     &lt;/intent-filter&gt;
/// &lt;/service&gt;</pre>
///
///  The Android system starts a VPN in the background by calling
/// android.content.Context\#startService startService(). In Android 8.0
/// (API level 26) and higher, the system places VPN apps on the temporary
/// whitelist for a short period so the app can start in the background. The VPN
/// app must promote itself to the foreground after it's launched or the system
/// will shut down the app.
///@see Builder
class VpnService extends service_.Service {
  static final _classRef = jniAccessors.getClassOf("android/net/VpnService");
  VpnService.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String SERVICE_INTERFACE
  ///
  /// The action must be matched by the intent filter of this service. It also
  /// needs to require android.Manifest.permission\#BIND_VPN_SERVICE
  /// permission so that other applications cannot abuse it.
  static const SERVICE_INTERFACE = "android.net.VpnService";

  /// from: static public final java.lang.String SERVICE_META_DATA_SUPPORTS_ALWAYS_ON
  ///
  /// Key for boolean meta-data field indicating whether this VpnService supports always-on mode.
  ///
  /// For a VPN app targeting android.os.Build.VERSION_CODES\#N API 24 or above, Android
  /// provides users with the ability to set it as always-on, so that VPN connection is
  /// persisted after device reboot and app upgrade. Always-on VPN can also be enabled by device
  /// owner and profile owner apps through
  /// android.app.admin.DevicePolicyManager\#setAlwaysOnVpnPackage.
  ///
  /// VPN apps not supporting this feature should opt out by adding this meta-data field to the
  /// {@code VpnService} component of {@code AndroidManifest.xml}. In case there is more than one
  /// {@code VpnService} component defined in {@code AndroidManifest.xml}, opting out any one of
  /// them will opt out the entire app. For example,
  /// <pre> {@code
  /// <service android:name=".ExampleVpnService"
  ///         android:permission="android.permission.BIND_VPN_SERVICE">
  ///     <intent-filter>
  ///         <action android:name="android.net.VpnService"/>
  ///     </intent-filter>
  ///     <meta-data android:name="android.net.VpnService.SUPPORTS_ALWAYS_ON"
  ///             android:value=false/>
  /// </service>
  /// } </pre>
  ///
  /// This meta-data field defaults to {@code true} if absent. It will only have effect on
  /// android.os.Build.VERSION_CODES\#O_MR1 or higher.
  static const SERVICE_META_DATA_SUPPORTS_ALWAYS_ON =
      "android.net.VpnService.SUPPORTS_ALWAYS_ON";

  static final _id_ctor2 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  VpnService.ctor2()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor2, []).object);

  static final _id_prepare = jniAccessors.getStaticMethodIDOf(_classRef,
      "prepare", "(Landroid/content/Context;)Landroid/content/Intent;");

  /// from: static public android.content.Intent prepare(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Prepare to establish a VPN connection. This method returns {@code null}
  /// if the VPN application is already prepared or if the user has previously
  /// consented to the VPN application. Otherwise, it returns an
  /// Intent to a system activity. The application should launch the
  /// activity using Activity\#startActivityForResult to get itself
  /// prepared. The activity may pop up a dialog to require user action, and
  /// the result will come back via its Activity\#onActivityResult.
  /// If the result is Activity\#RESULT_OK, the application becomes
  /// prepared and is granted to use other methods in this class.
  ///
  /// Only one application can be granted at the same time. The right
  /// is revoked when another application is granted. The application
  /// losing the right will be notified via its \#onRevoke. Unless
  /// it becomes prepared again, subsequent calls to other methods in this
  /// class will fail.
  ///
  /// The user may disable the VPN at any time while it is activated, in
  /// which case this method will return an intent the next time it is
  /// executed to obtain the user's consent again.
  ///@see \#onRevoke
  static intent_.Intent prepare(context_.Context context) =>
      intent_.Intent.fromRef(jniAccessors.callStaticMethodWithArgs(_classRef,
          _id_prepare, jni.JniType.objectType, [context.reference]).object);

  static final _id_protect =
      jniAccessors.getMethodIDOf(_classRef, "protect", "(I)Z");

  /// from: public boolean protect(int socket)
  ///
  /// Protect a socket from VPN connections. After protecting, data sent
  /// through this socket will go directly to the underlying network,
  /// so its traffic will not be forwarded through the VPN.
  /// This method is useful if some connections need to be kept
  /// outside of VPN. For example, a VPN tunnel should protect itself if its
  /// destination is covered by VPN routes. Otherwise its outgoing packets
  /// will be sent back to the VPN interface and cause an infinite loop. This
  /// method will fail if the application is not prepared or is revoked.
  ///
  /// <p class="note">The socket is NOT closed by this method.
  ///@return {@code true} on success.
  bool protect(int socket) => jniAccessors.callMethodWithArgs(
      reference, _id_protect, jni.JniType.booleanType, [socket]).boolean;

  static final _id_protect1 =
      jniAccessors.getMethodIDOf(_classRef, "protect", "(Ljava/net/Socket;)Z");

  /// from: public boolean protect(java.net.Socket socket)
  ///
  /// Convenience method to protect a Socket from VPN connections.
  ///@return {@code true} on success.
  ///@see \#protect(int)
  bool protect1(jni.JniObject socket) => jniAccessors.callMethodWithArgs(
      reference,
      _id_protect1,
      jni.JniType.booleanType,
      [socket.reference]).boolean;

  static final _id_protect2 = jniAccessors.getMethodIDOf(
      _classRef, "protect", "(Ljava/net/DatagramSocket;)Z");

  /// from: public boolean protect(java.net.DatagramSocket socket)
  ///
  /// Convenience method to protect a DatagramSocket from VPN
  /// connections.
  ///@return {@code true} on success.
  ///@see \#protect(int)
  bool protect2(jni.JniObject socket) => jniAccessors.callMethodWithArgs(
      reference,
      _id_protect2,
      jni.JniType.booleanType,
      [socket.reference]).boolean;

  static final _id_setUnderlyingNetworks = jniAccessors.getMethodIDOf(
      _classRef, "setUnderlyingNetworks", "([Landroid/net/Network;)Z");

  /// from: public boolean setUnderlyingNetworks(android.net.Network[] networks)
  ///
  /// Sets the underlying networks used by the VPN for its upstream connections.
  ///
  /// Used by the system to know the actual networks that carry traffic for apps affected by
  /// this VPN in order to present this information to the user (e.g., via status bar icons).
  ///
  /// This method only needs to be called if the VPN has explicitly bound its underlying
  /// communications channels &mdash; such as the socket(s) passed to \#protect(int) &mdash;
  /// to a {@code Network} using APIs such as Network\#bindSocket(Socket) or
  /// Network\#bindSocket(DatagramSocket). The VPN should call this method every time
  /// the set of {@code Network}s it is using changes.
  ///
  /// {@code networks} is one of the following:
  /// <ul>
  /// <li><strong>a non-empty array</strong>: an array of one or more Networks, in
  /// decreasing preference order. For example, if this VPN uses both wifi and mobile (cellular)
  /// networks to carry app traffic, but prefers or uses wifi more than mobile, wifi should appear
  /// first in the array.</li>
  /// <li><strong>an empty array</strong>: a zero-element array, meaning that the VPN has no
  /// underlying network connection, and thus, app traffic will not be sent or received.</li>
  /// <li><strong>null</strong>: (default) signifies that the VPN uses whatever is the system's
  /// default network. I.e., it doesn't use the {@code bindSocket} or {@code bindDatagramSocket}
  /// APIs mentioned above to send traffic over specific channels.</li>
  /// </ul>
  ///
  /// This call will succeed only if the VPN is currently established. For setting this value
  /// when the VPN has not yet been established, see Builder\#setUnderlyingNetworks.
  ///@param networks An array of networks the VPN uses to tunnel traffic to/from its servers.
  ///@return {@code true} on success.
  bool setUnderlyingNetworks(jni.JniObject networks) =>
      jniAccessors.callMethodWithArgs(reference, _id_setUnderlyingNetworks,
          jni.JniType.booleanType, [networks.reference]).boolean;

  static final _id_onBind = jniAccessors.getMethodIDOf(
      _classRef, "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;");

  /// from: public android.os.IBinder onBind(android.content.Intent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return the communication interface to the service. This method returns
  /// {@code null} on Intents other than \#SERVICE_INTERFACE
  /// action. Applications overriding this method must identify the intent
  /// and return the corresponding interface accordingly.
  ///@see Service\#onBind
  ibinder_.IBinder onBind(intent_.Intent intent) =>
      ibinder_.IBinder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_onBind, jni.JniType.objectType, [intent.reference]).object);

  static final _id_onRevoke =
      jniAccessors.getMethodIDOf(_classRef, "onRevoke", "()V");

  /// from: public void onRevoke()
  ///
  /// Invoked when the application is revoked. At this moment, the VPN
  /// interface is already deactivated by the system. The application should
  /// close the file descriptor and shut down gracefully. The default
  /// implementation of this method is calling Service\#stopSelf().
  ///
  /// <p class="note">Calls to this method may not happen on the main thread
  /// of the process.
  ///@see \#prepare
  void onRevoke() => jniAccessors.callMethodWithArgs(
      reference, _id_onRevoke, jni.JniType.voidType, []).check();
}

/// from: android.net.VpnService$Builder
///
/// Helper class to create a VPN interface. This class should be always
/// used within the scope of the outer VpnService.
///@see VpnService
class VpnService_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/VpnService\$Builder");
  VpnService_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  VpnService_Builder()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_setSession = jniAccessors.getMethodIDOf(_classRef,
      "setSession", "(Ljava/lang/String;)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder setSession(java.lang.String session)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the name of this session. It will be displayed in
  /// system-managed dialogs and notifications. This is recommended
  /// not required.
  VpnService_Builder setSession(jni.JniString session) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setSession, jni.JniType.objectType, [session.reference]).object);

  static final _id_setConfigureIntent = jniAccessors.getMethodIDOf(
      _classRef,
      "setConfigureIntent",
      "(Landroid/app/PendingIntent;)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder setConfigureIntent(android.app.PendingIntent intent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the PendingIntent to an activity for users to
  /// configure the VPN connection. If it is not set, the button
  /// to configure will not be shown in system-managed dialogs.
  VpnService_Builder setConfigureIntent(pendingintent_.PendingIntent intent) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setConfigureIntent,
          jni.JniType.objectType,
          [intent.reference]).object);

  static final _id_setMtu = jniAccessors.getMethodIDOf(
      _classRef, "setMtu", "(I)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder setMtu(int mtu)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the maximum transmission unit (MTU) of the VPN interface. If
  /// it is not set, the default value in the operating system will be
  /// used.
  ///@throws IllegalArgumentException if the value is not positive.
  VpnService_Builder setMtu(int mtu) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_setMtu, jni.JniType.objectType, [mtu]).object);

  static final _id_addAddress = jniAccessors.getMethodIDOf(
      _classRef,
      "addAddress",
      "(Ljava/net/InetAddress;I)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder addAddress(java.net.InetAddress address, int prefixLength)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a network address to the VPN interface. Both IPv4 and IPv6
  /// addresses are supported. At least one address must be set before
  /// calling \#establish.
  ///
  /// Adding an address implicitly allows traffic from that address family
  /// (i.e., IPv4 or IPv6) to be routed over the VPN. @see \#allowFamily
  ///@throws IllegalArgumentException if the address is invalid.
  VpnService_Builder addAddress(jni.JniObject address, int prefixLength) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addAddress,
          jni.JniType.objectType,
          [address.reference, prefixLength]).object);

  static final _id_addAddress1 = jniAccessors.getMethodIDOf(_classRef,
      "addAddress", "(Ljava/lang/String;I)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder addAddress(java.lang.String address, int prefixLength)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Convenience method to add a network address to the VPN interface
  /// using a numeric address string. See InetAddress for the
  /// definitions of numeric address formats.
  ///
  /// Adding an address implicitly allows traffic from that address family
  /// (i.e., IPv4 or IPv6) to be routed over the VPN. @see \#allowFamily
  ///@throws IllegalArgumentException if the address is invalid.
  ///@see \#addAddress(InetAddress, int)
  VpnService_Builder addAddress1(jni.JniString address, int prefixLength) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addAddress1,
          jni.JniType.objectType,
          [address.reference, prefixLength]).object);

  static final _id_addRoute = jniAccessors.getMethodIDOf(_classRef, "addRoute",
      "(Ljava/net/InetAddress;I)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder addRoute(java.net.InetAddress address, int prefixLength)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a network route to the VPN interface. Both IPv4 and IPv6
  /// routes are supported.
  ///
  /// Adding a route implicitly allows traffic from that address family
  /// (i.e., IPv4 or IPv6) to be routed over the VPN. @see \#allowFamily
  ///@throws IllegalArgumentException if the route is invalid.
  VpnService_Builder addRoute(jni.JniObject address, int prefixLength) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addRoute,
          jni.JniType.objectType,
          [address.reference, prefixLength]).object);

  static final _id_addRoute1 = jniAccessors.getMethodIDOf(_classRef, "addRoute",
      "(Ljava/lang/String;I)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder addRoute(java.lang.String address, int prefixLength)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Convenience method to add a network route to the VPN interface
  /// using a numeric address string. See InetAddress for the
  /// definitions of numeric address formats.
  ///
  /// Adding a route implicitly allows traffic from that address family
  /// (i.e., IPv4 or IPv6) to be routed over the VPN. @see \#allowFamily
  ///@throws IllegalArgumentException if the route is invalid.
  ///@see \#addRoute(InetAddress, int)
  VpnService_Builder addRoute1(jni.JniString address, int prefixLength) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addRoute1,
          jni.JniType.objectType,
          [address.reference, prefixLength]).object);

  static final _id_addDnsServer = jniAccessors.getMethodIDOf(
      _classRef,
      "addDnsServer",
      "(Ljava/net/InetAddress;)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder addDnsServer(java.net.InetAddress address)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a DNS server to the VPN connection. Both IPv4 and IPv6
  /// addresses are supported. If none is set, the DNS servers of
  /// the default network will be used.
  ///
  /// Adding a server implicitly allows traffic from that address family
  /// (i.e., IPv4 or IPv6) to be routed over the VPN. @see \#allowFamily
  ///@throws IllegalArgumentException if the address is invalid.
  VpnService_Builder addDnsServer(jni.JniObject address) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addDnsServer,
          jni.JniType.objectType,
          [address.reference]).object);

  static final _id_addDnsServer1 = jniAccessors.getMethodIDOf(_classRef,
      "addDnsServer", "(Ljava/lang/String;)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder addDnsServer(java.lang.String address)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Convenience method to add a DNS server to the VPN connection
  /// using a numeric address string. See InetAddress for the
  /// definitions of numeric address formats.
  ///
  /// Adding a server implicitly allows traffic from that address family
  /// (i.e., IPv4 or IPv6) to be routed over the VPN. @see \#allowFamily
  ///@throws IllegalArgumentException if the address is invalid.
  ///@see \#addDnsServer(InetAddress)
  VpnService_Builder addDnsServer1(jni.JniString address) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addDnsServer1,
          jni.JniType.objectType,
          [address.reference]).object);

  static final _id_addSearchDomain = jniAccessors.getMethodIDOf(
      _classRef,
      "addSearchDomain",
      "(Ljava/lang/String;)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder addSearchDomain(java.lang.String domain)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a search domain to the DNS resolver.
  VpnService_Builder addSearchDomain(jni.JniString domain) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addSearchDomain,
          jni.JniType.objectType,
          [domain.reference]).object);

  static final _id_allowFamily = jniAccessors.getMethodIDOf(
      _classRef, "allowFamily", "(I)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder allowFamily(int family)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Allows traffic from the specified address family.
  ///
  /// By default, if no address, route or DNS server of a specific family (IPv4 or IPv6) is
  /// added to this VPN, then all outgoing traffic of that family is blocked. If any address,
  /// route or DNS server is added, that family is allowed.
  ///
  /// This method allows an address family to be unblocked even without adding an address,
  /// route or DNS server of that family. Traffic of that family will then typically
  /// fall-through to the underlying network if it's supported.
  ///
  /// {@code family} must be either {@code AF_INET} (for IPv4) or {@code AF_INET6} (for IPv6).
  /// IllegalArgumentException is thrown if it's neither.
  ///@param family The address family ({@code AF_INET} or {@code AF_INET6}) to allow.
  ///@return this Builder object to facilitate chaining of method calls.
  VpnService_Builder allowFamily(int family) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_allowFamily, jni.JniType.objectType, [family]).object);

  static final _id_addAllowedApplication = jniAccessors.getMethodIDOf(
      _classRef,
      "addAllowedApplication",
      "(Ljava/lang/String;)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder addAllowedApplication(java.lang.String packageName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds an application that's allowed to access the VPN connection.
  ///
  /// If this method is called at least once, only applications added through this method (and
  /// no others) are allowed access. Else (if this method is never called), all applications
  /// are allowed by default.  If some applications are added, other, un-added applications
  /// will use networking as if the VPN wasn't running.
  ///
  /// A Builder may have only a set of allowed applications OR a set of disallowed
  /// ones, but not both. Calling this method after \#addDisallowedApplication has
  /// already been called, or vice versa, will throw an UnsupportedOperationException.
  ///
  /// {@code packageName} must be the canonical name of a currently installed application.
  /// PackageManager.NameNotFoundException is thrown if there's no such application.
  ///@throws PackageManager.NameNotFoundException If the application isn't installed.
  ///@param packageName The full name (e.g.: "com.google.apps.contacts") of an application.
  ///@return this Builder object to facilitate chaining method calls.
  VpnService_Builder addAllowedApplication(jni.JniString packageName) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addAllowedApplication,
          jni.JniType.objectType,
          [packageName.reference]).object);

  static final _id_addDisallowedApplication = jniAccessors.getMethodIDOf(
      _classRef,
      "addDisallowedApplication",
      "(Ljava/lang/String;)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder addDisallowedApplication(java.lang.String packageName)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds an application that's denied access to the VPN connection.
  ///
  /// By default, all applications are allowed access, except for those denied through this
  /// method.  Denied applications will use networking as if the VPN wasn't running.
  ///
  /// A Builder may have only a set of allowed applications OR a set of disallowed
  /// ones, but not both. Calling this method after \#addAllowedApplication has already
  /// been called, or vice versa, will throw an UnsupportedOperationException.
  ///
  /// {@code packageName} must be the canonical name of a currently installed application.
  /// PackageManager.NameNotFoundException is thrown if there's no such application.
  ///@throws PackageManager.NameNotFoundException If the application isn't installed.
  ///@param packageName The full name (e.g.: "com.google.apps.contacts") of an application.
  ///@return this Builder object to facilitate chaining method calls.
  VpnService_Builder addDisallowedApplication(jni.JniString packageName) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addDisallowedApplication,
          jni.JniType.objectType,
          [packageName.reference]).object);

  static final _id_allowBypass = jniAccessors.getMethodIDOf(
      _classRef, "allowBypass", "()Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder allowBypass()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Allows all apps to bypass this VPN connection.
  ///
  /// By default, all traffic from apps is forwarded through the VPN interface and it is not
  /// possible for apps to side-step the VPN. If this method is called, apps may use methods
  /// such as ConnectivityManager\#bindProcessToNetwork to instead send/receive
  /// directly over the underlying network or any other network they have permissions for.
  ///@return this Builder object to facilitate chaining of method calls.
  VpnService_Builder allowBypass() =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_allowBypass, jni.JniType.objectType, []).object);

  static final _id_setBlocking = jniAccessors.getMethodIDOf(
      _classRef, "setBlocking", "(Z)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder setBlocking(boolean blocking)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the VPN interface's file descriptor to be in blocking/non-blocking mode.
  ///
  /// By default, the file descriptor returned by \#establish is non-blocking.
  ///@param blocking True to put the descriptor into blocking mode; false for non-blocking.
  ///@return this Builder object to facilitate chaining method calls.
  VpnService_Builder setBlocking(bool blocking) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setBlocking, jni.JniType.objectType, [blocking]).object);

  static final _id_setUnderlyingNetworks = jniAccessors.getMethodIDOf(
      _classRef,
      "setUnderlyingNetworks",
      "([Landroid/net/Network;)Landroid/net/VpnService\$Builder;");

  /// from: public android.net.VpnService.Builder setUnderlyingNetworks(android.net.Network[] networks)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets the underlying networks used by the VPN for its upstream connections.
  ///@see VpnService\#setUnderlyingNetworks
  ///@param networks An array of networks the VPN uses to tunnel traffic to/from its servers.
  ///@return this Builder object to facilitate chaining method calls.
  VpnService_Builder setUnderlyingNetworks(jni.JniObject networks) =>
      VpnService_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setUnderlyingNetworks,
          jni.JniType.objectType,
          [networks.reference]).object);

  static final _id_establish = jniAccessors.getMethodIDOf(
      _classRef, "establish", "()Landroid/os/ParcelFileDescriptor;");

  /// from: public android.os.ParcelFileDescriptor establish()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a VPN interface using the parameters supplied to this
  /// builder. The interface works on IP packets, and a file descriptor
  /// is returned for the application to access them. Each read
  /// retrieves an outgoing packet which was routed to the interface.
  /// Each write injects an incoming packet just like it was received
  /// from the interface. The file descriptor is put into non-blocking
  /// mode by default to avoid blocking Java threads. To use the file
  /// descriptor completely in native space, see
  /// ParcelFileDescriptor\#detachFd(). The application MUST
  /// close the file descriptor when the VPN connection is terminated.
  /// The VPN interface will be removed and the network will be
  /// restored by the system automatically.
  ///
  /// To avoid conflicts, there can be only one active VPN interface
  /// at the same time. Usually network parameters are never changed
  /// during the lifetime of a VPN connection. It is also common for an
  /// application to create a new file descriptor after closing the
  /// previous one. However, it is rare but not impossible to have two
  /// interfaces while performing a seamless handover. In this case, the
  /// old interface will be deactivated when the new one is created
  /// successfully. Both file descriptors are valid but now outgoing
  /// packets will be routed to the new interface. Therefore, after
  /// draining the old file descriptor, the application MUST close it
  /// and start using the new file descriptor. If the new interface
  /// cannot be created, the existing interface and its file descriptor
  /// remain untouched.
  ///
  /// An exception will be thrown if the interface cannot be created
  /// for any reason. However, this method returns {@code null} if the
  /// application is not prepared or is revoked. This helps solve
  /// possible race conditions between other VPN applications.
  ///@return ParcelFileDescriptor of the VPN interface, or
  ///         {@code null} if the application is not prepared.
  ///@throws IllegalArgumentException if a parameter is not accepted
  ///         by the operating system.
  ///@throws IllegalStateException if a parameter cannot be applied
  ///         by the operating system.
  ///@throws SecurityException if the service is not properly declared
  ///         in {@code AndroidManifest.xml}.
  ///@see VpnService
  parcelfiledescriptor_.ParcelFileDescriptor establish() =>
      parcelfiledescriptor_.ParcelFileDescriptor.fromRef(jniAccessors
          .callMethodWithArgs(
              reference, _id_establish, jni.JniType.objectType, []).object);
}
