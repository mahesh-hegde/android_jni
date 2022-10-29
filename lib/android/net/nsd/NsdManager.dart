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

import "NsdServiceInfo.dart" as nsdserviceinfo_;
import "../../../_init.dart" show jniEnv, jniAccessors;

/// from: android.net.nsd.NsdManager
///
/// The Network Service Discovery Manager class provides the API to discover services
/// on a network. As an example, if device A and device B are connected over a Wi-Fi
/// network, a game registered on device A can be discovered by a game on device
/// B. Another example use case is an application discovering printers on the network.
///
///  The API currently supports DNS based service discovery and discovery is currently
/// limited to a local network over Multicast DNS. DNS service discovery is described at
/// http://files.dns-sd.org/draft-cheshire-dnsext-dns-sd.txt
///
///  The API is asynchronous and responses to requests from an application are on listener
/// callbacks on a seperate internal thread.
///
///  There are three main operations the API supports - registration, discovery and resolution.
/// <pre>
///                          Application start
///                                 |
///                                 |
///                                 |                  onServiceRegistered()
///                     Register any local services  /
///                      to be advertised with       \
///                       registerService()            onRegistrationFailed()
///                                 |
///                                 |
///                          discoverServices()
///                                 |
///                      Maintain a list to track
///                        discovered services
///                                 |
///                                 |--------->
///                                 |          |
///                                 |      onServiceFound()
///                                 |          |
///                                 |     add service to list
///                                 |          |
///                                 |<----------
///                                 |
///                                 |--------->
///                                 |          |
///                                 |      onServiceLost()
///                                 |          |
///                                 |   remove service from list
///                                 |          |
///                                 |<----------
///                                 |
///                                 |
///                                 | Connect to a service
///                                 | from list ?
///                                 |
///                          resolveService()
///                                 |
///                         onServiceResolved()
///                                 |
///                     Establish connection to service
///                     with the host and port information
///
/// </pre>
/// An application that needs to advertise itself over a network for other applications to
/// discover it can do so with a call to \#registerService. If Example is a http based
/// application that can provide HTML data to peer services, it can register a name "Example"
/// with service type "_http._tcp". A successful registration is notified with a callback to
/// RegistrationListener\#onServiceRegistered and a failure to register is notified
/// over RegistrationListener\#onRegistrationFailed
///
///  A peer application looking for http services can initiate a discovery for "_http._tcp"
/// with a call to \#discoverServices. A service found is notified with a callback
/// to DiscoveryListener\#onServiceFound and a service lost is notified on
/// DiscoveryListener\#onServiceLost.
///
///  Once the peer application discovers the "Example" http service, and either needs to read the
/// attributes of the service or wants to receive data from the "Example" application, it can
/// initiate a resolve with \#resolveService to resolve the attributes, host, and port
/// details. A successful resolve is notified on ResolveListener\#onServiceResolved and a
/// failure is notified on ResolveListener\#onResolveFailed.
///
/// Applications can reserve for a service type at
/// http://www.iana.org/form/ports-service. Existing services can be found at
/// http://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xml
///
/// {@see NsdServiceInfo}
class NsdManager extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/nsd/NsdManager");
  NsdManager.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final java.lang.String ACTION_NSD_STATE_CHANGED
  ///
  /// Broadcast intent action to indicate whether network service discovery is
  /// enabled or disabled. An extra \#EXTRA_NSD_STATE provides the state
  /// information as int.
  ///@see \#EXTRA_NSD_STATE
  static const ACTION_NSD_STATE_CHANGED = "android.net.nsd.STATE_CHANGED";

  /// from: static public final java.lang.String EXTRA_NSD_STATE
  ///
  /// The lookup key for an int that indicates whether network service discovery is enabled
  /// or disabled. Retrieve it with android.content.Intent\#getIntExtra(String,int).
  ///@see \#NSD_STATE_DISABLED
  ///@see \#NSD_STATE_ENABLED
  static const EXTRA_NSD_STATE = "nsd_state";

  /// from: static public final int FAILURE_ALREADY_ACTIVE
  ///
  /// Indicates that the operation failed because it is already active.
  static const FAILURE_ALREADY_ACTIVE = 3;

  /// from: static public final int FAILURE_INTERNAL_ERROR
  ///
  /// Failures are passed with RegistrationListener\#onRegistrationFailed,
  /// RegistrationListener\#onUnregistrationFailed,
  /// DiscoveryListener\#onStartDiscoveryFailed,
  /// DiscoveryListener\#onStopDiscoveryFailed or ResolveListener\#onResolveFailed.
  ///
  /// Indicates that the operation failed due to an internal error.
  static const FAILURE_INTERNAL_ERROR = 0;

  /// from: static public final int FAILURE_MAX_LIMIT
  ///
  /// Indicates that the operation failed because the maximum outstanding
  /// requests from the applications have reached.
  static const FAILURE_MAX_LIMIT = 4;

  /// from: static public final int NSD_STATE_DISABLED
  ///
  /// Network service discovery is disabled
  ///@see \#ACTION_NSD_STATE_CHANGED
  static const NSD_STATE_DISABLED = 1;

  /// from: static public final int NSD_STATE_ENABLED
  ///
  /// Network service discovery is enabled
  ///@see \#ACTION_NSD_STATE_CHANGED
  static const NSD_STATE_ENABLED = 2;

  /// from: static public final int PROTOCOL_DNS_SD
  ///
  /// Dns based service discovery protocol
  static const PROTOCOL_DNS_SD = 1;

  static final _id_registerService = jniAccessors.getMethodIDOf(
      _classRef,
      "registerService",
      "(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager\$RegistrationListener;)V");

  /// from: public void registerService(android.net.nsd.NsdServiceInfo serviceInfo, int protocolType, android.net.nsd.NsdManager.RegistrationListener listener)
  ///
  /// Register a service to be discovered by other services.
  ///
  ///  The function call immediately returns after sending a request to register service
  /// to the framework. The application is notified of a successful registration
  /// through the callback RegistrationListener\#onServiceRegistered or a failure
  /// through RegistrationListener\#onRegistrationFailed.
  ///
  ///  The application should call \#unregisterService when the service
  /// registration is no longer required, and/or whenever the application is stopped.
  ///@param serviceInfo The service being registered
  ///@param protocolType The service discovery protocol
  ///@param listener The listener notifies of a successful registration and is used to
  /// unregister this service through a call on \#unregisterService. Cannot be null.
  /// Cannot be in use for an active service registration.
  void registerService(nsdserviceinfo_.NsdServiceInfo serviceInfo,
          int protocolType, NsdManager_RegistrationListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_registerService,
          jni.JniType.voidType,
          [serviceInfo.reference, protocolType, listener.reference]).check();

  static final _id_unregisterService = jniAccessors.getMethodIDOf(
      _classRef,
      "unregisterService",
      "(Landroid/net/nsd/NsdManager\$RegistrationListener;)V");

  /// from: public void unregisterService(android.net.nsd.NsdManager.RegistrationListener listener)
  ///
  /// Unregister a service registered through \#registerService. A successful
  /// unregister is notified to the application with a call to
  /// RegistrationListener\#onServiceUnregistered.
  ///@param listener This should be the listener object that was passed to
  /// \#registerService. It identifies the service that should be unregistered
  /// and notifies of a successful or unsuccessful unregistration via the listener
  /// callbacks.  In API versions 20 and above, the listener object may be used for
  /// another service registration once the callback has been called.  In API versions <= 19,
  /// there is no entirely reliable way to know when a listener may be re-used, and a new
  /// listener should be created for each service registration request.
  void unregisterService(NsdManager_RegistrationListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_unregisterService,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_discoverServices = jniAccessors.getMethodIDOf(
      _classRef,
      "discoverServices",
      "(Ljava/lang/String;ILandroid/net/nsd/NsdManager\$DiscoveryListener;)V");

  /// from: public void discoverServices(java.lang.String serviceType, int protocolType, android.net.nsd.NsdManager.DiscoveryListener listener)
  ///
  /// Initiate service discovery to browse for instances of a service type. Service discovery
  /// consumes network bandwidth and will continue until the application calls
  /// \#stopServiceDiscovery.
  ///
  ///  The function call immediately returns after sending a request to start service
  /// discovery to the framework. The application is notified of a success to initiate
  /// discovery through the callback DiscoveryListener\#onDiscoveryStarted or a failure
  /// through DiscoveryListener\#onStartDiscoveryFailed.
  ///
  ///  Upon successful start, application is notified when a service is found with
  /// DiscoveryListener\#onServiceFound or when a service is lost with
  /// DiscoveryListener\#onServiceLost.
  ///
  ///  Upon failure to start, service discovery is not active and application does
  /// not need to invoke \#stopServiceDiscovery
  ///
  ///  The application should call \#stopServiceDiscovery when discovery of this
  /// service type is no longer required, and/or whenever the application is paused or
  /// stopped.
  ///@param serviceType The service type being discovered. Examples include "_http._tcp" for
  /// http services or "_ipp._tcp" for printers
  ///@param protocolType The service discovery protocol
  ///@param listener The listener notifies of a successful discovery and is used
  /// to stop discovery on this serviceType through a call on \#stopServiceDiscovery.
  /// Cannot be null. Cannot be in use for an active service discovery.
  void discoverServices(jni.JniString serviceType, int protocolType,
          NsdManager_DiscoveryListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_discoverServices,
          jni.JniType.voidType,
          [serviceType.reference, protocolType, listener.reference]).check();

  static final _id_stopServiceDiscovery = jniAccessors.getMethodIDOf(
      _classRef,
      "stopServiceDiscovery",
      "(Landroid/net/nsd/NsdManager\$DiscoveryListener;)V");

  /// from: public void stopServiceDiscovery(android.net.nsd.NsdManager.DiscoveryListener listener)
  ///
  /// Stop service discovery initiated with \#discoverServices.  An active service
  /// discovery is notified to the application with DiscoveryListener\#onDiscoveryStarted
  /// and it stays active until the application invokes a stop service discovery. A successful
  /// stop is notified to with a call to DiscoveryListener\#onDiscoveryStopped.
  ///
  ///  Upon failure to stop service discovery, application is notified through
  /// DiscoveryListener\#onStopDiscoveryFailed.
  ///@param listener This should be the listener object that was passed to \#discoverServices.
  /// It identifies the discovery that should be stopped and notifies of a successful or
  /// unsuccessful stop.  In API versions 20 and above, the listener object may be used for
  /// another service discovery once the callback has been called.  In API versions <= 19,
  /// there is no entirely reliable way to know when a listener may be re-used, and a new
  /// listener should be created for each service discovery request.
  void stopServiceDiscovery(NsdManager_DiscoveryListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_stopServiceDiscovery,
          jni.JniType.voidType, [listener.reference]).check();

  static final _id_resolveService = jniAccessors.getMethodIDOf(
      _classRef,
      "resolveService",
      "(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager\$ResolveListener;)V");

  /// from: public void resolveService(android.net.nsd.NsdServiceInfo serviceInfo, android.net.nsd.NsdManager.ResolveListener listener)
  ///
  /// Resolve a discovered service. An application can resolve a service right before
  /// establishing a connection to fetch the IP and port details on which to setup
  /// the connection.
  ///@param serviceInfo service to be resolved
  ///@param listener to receive callback upon success or failure. Cannot be null.
  /// Cannot be in use for an active service resolution.
  void resolveService(nsdserviceinfo_.NsdServiceInfo serviceInfo,
          NsdManager_ResolveListener listener) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_resolveService,
          jni.JniType.voidType,
          [serviceInfo.reference, listener.reference]).check();
}

/// from: android.net.nsd.NsdManager$ResolveListener
///
/// Interface for callback invocation for service resolution
class NsdManager_ResolveListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/nsd/NsdManager\$ResolveListener");
  NsdManager_ResolveListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onResolveFailed = jniAccessors.getMethodIDOf(
      _classRef, "onResolveFailed", "(Landroid/net/nsd/NsdServiceInfo;I)V");

  /// from: public abstract void onResolveFailed(android.net.nsd.NsdServiceInfo serviceInfo, int errorCode)
  void onResolveFailed(
          nsdserviceinfo_.NsdServiceInfo serviceInfo, int errorCode) =>
      jniAccessors.callMethodWithArgs(reference, _id_onResolveFailed,
          jni.JniType.voidType, [serviceInfo.reference, errorCode]).check();

  static final _id_onServiceResolved = jniAccessors.getMethodIDOf(
      _classRef, "onServiceResolved", "(Landroid/net/nsd/NsdServiceInfo;)V");

  /// from: public abstract void onServiceResolved(android.net.nsd.NsdServiceInfo serviceInfo)
  void onServiceResolved(nsdserviceinfo_.NsdServiceInfo serviceInfo) =>
      jniAccessors.callMethodWithArgs(reference, _id_onServiceResolved,
          jni.JniType.voidType, [serviceInfo.reference]).check();
}

/// from: android.net.nsd.NsdManager$RegistrationListener
///
/// Interface for callback invocation for service registration
class NsdManager_RegistrationListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/net/nsd/NsdManager\$RegistrationListener");
  NsdManager_RegistrationListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onRegistrationFailed = jniAccessors.getMethodIDOf(_classRef,
      "onRegistrationFailed", "(Landroid/net/nsd/NsdServiceInfo;I)V");

  /// from: public abstract void onRegistrationFailed(android.net.nsd.NsdServiceInfo serviceInfo, int errorCode)
  void onRegistrationFailed(
          nsdserviceinfo_.NsdServiceInfo serviceInfo, int errorCode) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRegistrationFailed,
          jni.JniType.voidType, [serviceInfo.reference, errorCode]).check();

  static final _id_onUnregistrationFailed = jniAccessors.getMethodIDOf(
      _classRef,
      "onUnregistrationFailed",
      "(Landroid/net/nsd/NsdServiceInfo;I)V");

  /// from: public abstract void onUnregistrationFailed(android.net.nsd.NsdServiceInfo serviceInfo, int errorCode)
  void onUnregistrationFailed(
          nsdserviceinfo_.NsdServiceInfo serviceInfo, int errorCode) =>
      jniAccessors.callMethodWithArgs(reference, _id_onUnregistrationFailed,
          jni.JniType.voidType, [serviceInfo.reference, errorCode]).check();

  static final _id_onServiceRegistered = jniAccessors.getMethodIDOf(
      _classRef, "onServiceRegistered", "(Landroid/net/nsd/NsdServiceInfo;)V");

  /// from: public abstract void onServiceRegistered(android.net.nsd.NsdServiceInfo serviceInfo)
  void onServiceRegistered(nsdserviceinfo_.NsdServiceInfo serviceInfo) =>
      jniAccessors.callMethodWithArgs(reference, _id_onServiceRegistered,
          jni.JniType.voidType, [serviceInfo.reference]).check();

  static final _id_onServiceUnregistered = jniAccessors.getMethodIDOf(_classRef,
      "onServiceUnregistered", "(Landroid/net/nsd/NsdServiceInfo;)V");

  /// from: public abstract void onServiceUnregistered(android.net.nsd.NsdServiceInfo serviceInfo)
  void onServiceUnregistered(nsdserviceinfo_.NsdServiceInfo serviceInfo) =>
      jniAccessors.callMethodWithArgs(reference, _id_onServiceUnregistered,
          jni.JniType.voidType, [serviceInfo.reference]).check();
}

/// from: android.net.nsd.NsdManager$DiscoveryListener
///
/// Interface for callback invocation for service discovery
class NsdManager_DiscoveryListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/net/nsd/NsdManager\$DiscoveryListener");
  NsdManager_DiscoveryListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onStartDiscoveryFailed = jniAccessors.getMethodIDOf(
      _classRef, "onStartDiscoveryFailed", "(Ljava/lang/String;I)V");

  /// from: public abstract void onStartDiscoveryFailed(java.lang.String serviceType, int errorCode)
  void onStartDiscoveryFailed(jni.JniString serviceType, int errorCode) =>
      jniAccessors.callMethodWithArgs(reference, _id_onStartDiscoveryFailed,
          jni.JniType.voidType, [serviceType.reference, errorCode]).check();

  static final _id_onStopDiscoveryFailed = jniAccessors.getMethodIDOf(
      _classRef, "onStopDiscoveryFailed", "(Ljava/lang/String;I)V");

  /// from: public abstract void onStopDiscoveryFailed(java.lang.String serviceType, int errorCode)
  void onStopDiscoveryFailed(jni.JniString serviceType, int errorCode) =>
      jniAccessors.callMethodWithArgs(reference, _id_onStopDiscoveryFailed,
          jni.JniType.voidType, [serviceType.reference, errorCode]).check();

  static final _id_onDiscoveryStarted = jniAccessors.getMethodIDOf(
      _classRef, "onDiscoveryStarted", "(Ljava/lang/String;)V");

  /// from: public abstract void onDiscoveryStarted(java.lang.String serviceType)
  void onDiscoveryStarted(jni.JniString serviceType) =>
      jniAccessors.callMethodWithArgs(reference, _id_onDiscoveryStarted,
          jni.JniType.voidType, [serviceType.reference]).check();

  static final _id_onDiscoveryStopped = jniAccessors.getMethodIDOf(
      _classRef, "onDiscoveryStopped", "(Ljava/lang/String;)V");

  /// from: public abstract void onDiscoveryStopped(java.lang.String serviceType)
  void onDiscoveryStopped(jni.JniString serviceType) =>
      jniAccessors.callMethodWithArgs(reference, _id_onDiscoveryStopped,
          jni.JniType.voidType, [serviceType.reference]).check();

  static final _id_onServiceFound = jniAccessors.getMethodIDOf(
      _classRef, "onServiceFound", "(Landroid/net/nsd/NsdServiceInfo;)V");

  /// from: public abstract void onServiceFound(android.net.nsd.NsdServiceInfo serviceInfo)
  void onServiceFound(nsdserviceinfo_.NsdServiceInfo serviceInfo) =>
      jniAccessors.callMethodWithArgs(reference, _id_onServiceFound,
          jni.JniType.voidType, [serviceInfo.reference]).check();

  static final _id_onServiceLost = jniAccessors.getMethodIDOf(
      _classRef, "onServiceLost", "(Landroid/net/nsd/NsdServiceInfo;)V");

  /// from: public abstract void onServiceLost(android.net.nsd.NsdServiceInfo serviceInfo)
  void onServiceLost(nsdserviceinfo_.NsdServiceInfo serviceInfo) =>
      jniAccessors.callMethodWithArgs(reference, _id_onServiceLost,
          jni.JniType.voidType, [serviceInfo.reference]).check();
}
