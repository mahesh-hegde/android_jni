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

import "WebView.dart" as webview_;

import "WebResourceRequest.dart" as webresourcerequest_;

import "../graphics/Bitmap.dart" as bitmap_;

import "WebResourceResponse.dart" as webresourceresponse_;

import "../os/Message.dart" as message_;

import "WebResourceError.dart" as webresourceerror_;

import "SslErrorHandler.dart" as sslerrorhandler_;

import "../net/http/SslError.dart" as sslerror_;

import "ClientCertRequest.dart" as clientcertrequest_;

import "HttpAuthHandler.dart" as httpauthhandler_;

import "../view/KeyEvent.dart" as keyevent_;

import "RenderProcessGoneDetail.dart" as renderprocessgonedetail_;

import "SafeBrowsingResponse.dart" as safebrowsingresponse_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.webkit.WebViewClient
class WebViewClient extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/webkit/WebViewClient");
  WebViewClient.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int ERROR_AUTHENTICATION
  ///
  /// User authentication failed on server
  static const ERROR_AUTHENTICATION = -4;

  /// from: static public final int ERROR_BAD_URL
  ///
  /// Malformed URL
  static const ERROR_BAD_URL = -12;

  /// from: static public final int ERROR_CONNECT
  ///
  /// Failed to connect to the server
  static const ERROR_CONNECT = -6;

  /// from: static public final int ERROR_FAILED_SSL_HANDSHAKE
  ///
  /// Failed to perform SSL handshake
  static const ERROR_FAILED_SSL_HANDSHAKE = -11;

  /// from: static public final int ERROR_FILE
  ///
  /// Generic file error
  static const ERROR_FILE = -13;

  /// from: static public final int ERROR_FILE_NOT_FOUND
  ///
  /// File not found
  static const ERROR_FILE_NOT_FOUND = -14;

  /// from: static public final int ERROR_HOST_LOOKUP
  ///
  /// Server or proxy hostname lookup failed
  static const ERROR_HOST_LOOKUP = -2;

  /// from: static public final int ERROR_IO
  ///
  /// Failed to read or write to the server
  static const ERROR_IO = -7;

  /// from: static public final int ERROR_PROXY_AUTHENTICATION
  ///
  /// User authentication failed on proxy
  static const ERROR_PROXY_AUTHENTICATION = -5;

  /// from: static public final int ERROR_REDIRECT_LOOP
  ///
  /// Too many redirects
  static const ERROR_REDIRECT_LOOP = -9;

  /// from: static public final int ERROR_TIMEOUT
  ///
  /// Connection timed out
  static const ERROR_TIMEOUT = -8;

  /// from: static public final int ERROR_TOO_MANY_REQUESTS
  ///
  /// Too many requests during this load
  static const ERROR_TOO_MANY_REQUESTS = -15;

  /// from: static public final int ERROR_UNKNOWN
  ///
  /// Generic error
  static const ERROR_UNKNOWN = -1;

  /// from: static public final int ERROR_UNSAFE_RESOURCE
  ///
  /// Resource load was canceled by Safe Browsing
  static const ERROR_UNSAFE_RESOURCE = -16;

  /// from: static public final int ERROR_UNSUPPORTED_AUTH_SCHEME
  ///
  /// Unsupported authentication scheme (not basic or digest)
  static const ERROR_UNSUPPORTED_AUTH_SCHEME = -3;

  /// from: static public final int ERROR_UNSUPPORTED_SCHEME
  ///
  /// Unsupported URI scheme
  static const ERROR_UNSUPPORTED_SCHEME = -10;

  /// from: static public final int SAFE_BROWSING_THREAT_MALWARE
  ///
  /// The resource was blocked because it contains malware
  static const SAFE_BROWSING_THREAT_MALWARE = 1;

  /// from: static public final int SAFE_BROWSING_THREAT_PHISHING
  ///
  /// The resource was blocked because it contains deceptive content
  static const SAFE_BROWSING_THREAT_PHISHING = 2;

  /// from: static public final int SAFE_BROWSING_THREAT_UNKNOWN
  ///
  /// The resource was blocked for an unknown reason
  static const SAFE_BROWSING_THREAT_UNKNOWN = 0;

  /// from: static public final int SAFE_BROWSING_THREAT_UNWANTED_SOFTWARE
  ///
  /// The resource was blocked because it contains unwanted software
  static const SAFE_BROWSING_THREAT_UNWANTED_SOFTWARE = 3;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  WebViewClient()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_shouldOverrideUrlLoading = jniAccessors.getMethodIDOf(
      _classRef,
      "shouldOverrideUrlLoading",
      "(Landroid/webkit/WebView;Ljava/lang/String;)Z");

  /// from: public boolean shouldOverrideUrlLoading(android.webkit.WebView view, java.lang.String url)
  ///
  /// Give the host application a chance to take over the control when a new
  /// url is about to be loaded in the current WebView. If WebViewClient is not
  /// provided, by default WebView will ask Activity Manager to choose the
  /// proper handler for the url. If WebViewClient is provided, return {@code true}
  /// means the host application handles the url, while return {@code false} means the
  /// current WebView handles the url.
  /// This method is not called for requests using the POST "method".
  ///@param view The WebView that is initiating the callback.
  ///@param url The url to be loaded.
  ///@return {@code true} if the host application wants to leave the current WebView
  ///         and handle the url itself, otherwise return {@code false}.
  ///@deprecated Use \#shouldOverrideUrlLoading(WebView, WebResourceRequest) shouldOverrideUrlLoading(WebView, WebResourceRequest) instead.
  bool shouldOverrideUrlLoading(webview_.WebView view, jni.JniString url) =>
      jniAccessors.callMethodWithArgs(reference, _id_shouldOverrideUrlLoading,
          jni.JniType.booleanType, [view.reference, url.reference]).boolean;

  static final _id_shouldOverrideUrlLoading1 = jniAccessors.getMethodIDOf(
      _classRef,
      "shouldOverrideUrlLoading",
      "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z");

  /// from: public boolean shouldOverrideUrlLoading(android.webkit.WebView view, android.webkit.WebResourceRequest request)
  ///
  /// Give the host application a chance to take over the control when a new
  /// url is about to be loaded in the current WebView. If WebViewClient is not
  /// provided, by default WebView will ask Activity Manager to choose the
  /// proper handler for the url. If WebViewClient is provided, return {@code true}
  /// means the host application handles the url, while return {@code false} means the
  /// current WebView handles the url.
  ///
  /// Notes:
  /// <ul>
  /// <li>This method is not called for requests using the POST &quot;method&quot;.</li>
  /// <li>This method is also called for subframes with non-http schemes, thus it is
  /// strongly disadvised to unconditionally call WebView\#loadUrl(String)
  /// with the request's url from inside the method and then return {@code true},
  /// as this will make WebView to attempt loading a non-http url, and thus fail.</li>
  /// </ul>
  ///@param view The WebView that is initiating the callback.
  ///@param request Object containing the details of the request.
  ///@return {@code true} if the host application wants to leave the current WebView
  ///         and handle the url itself, otherwise return {@code false}.
  bool shouldOverrideUrlLoading1(webview_.WebView view,
          webresourcerequest_.WebResourceRequest request) =>
      jniAccessors.callMethodWithArgs(reference, _id_shouldOverrideUrlLoading1,
          jni.JniType.booleanType, [view.reference, request.reference]).boolean;

  static final _id_onPageStarted = jniAccessors.getMethodIDOf(
      _classRef,
      "onPageStarted",
      "(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V");

  /// from: public void onPageStarted(android.webkit.WebView view, java.lang.String url, android.graphics.Bitmap favicon)
  ///
  /// Notify the host application that a page has started loading. This method
  /// is called once for each main frame load so a page with iframes or
  /// framesets will call onPageStarted one time for the main frame. This also
  /// means that onPageStarted will not be called when the contents of an
  /// embedded frame changes, i.e. clicking a link whose target is an iframe,
  /// it will also not be called for fragment navigations (navigations to
  /// \#fragment_id).
  ///@param view The WebView that is initiating the callback.
  ///@param url The url to be loaded.
  ///@param favicon The favicon for this page if it already exists in the
  ///            database.
  void onPageStarted(
          webview_.WebView view, jni.JniString url, bitmap_.Bitmap favicon) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onPageStarted,
          jni.JniType.voidType,
          [view.reference, url.reference, favicon.reference]).check();

  static final _id_onPageFinished = jniAccessors.getMethodIDOf(_classRef,
      "onPageFinished", "(Landroid/webkit/WebView;Ljava/lang/String;)V");

  /// from: public void onPageFinished(android.webkit.WebView view, java.lang.String url)
  ///
  /// Notify the host application that a page has finished loading. This method
  /// is called only for main frame. When onPageFinished() is called, the
  /// rendering picture may not be updated yet. To get the notification for the
  /// new Picture, use WebView.PictureListener\#onNewPicture.
  ///@param view The WebView that is initiating the callback.
  ///@param url The url of the page.
  void onPageFinished(webview_.WebView view, jni.JniString url) =>
      jniAccessors.callMethodWithArgs(reference, _id_onPageFinished,
          jni.JniType.voidType, [view.reference, url.reference]).check();

  static final _id_onLoadResource = jniAccessors.getMethodIDOf(_classRef,
      "onLoadResource", "(Landroid/webkit/WebView;Ljava/lang/String;)V");

  /// from: public void onLoadResource(android.webkit.WebView view, java.lang.String url)
  ///
  /// Notify the host application that the WebView will load the resource
  /// specified by the given url.
  ///@param view The WebView that is initiating the callback.
  ///@param url The url of the resource the WebView will load.
  void onLoadResource(webview_.WebView view, jni.JniString url) =>
      jniAccessors.callMethodWithArgs(reference, _id_onLoadResource,
          jni.JniType.voidType, [view.reference, url.reference]).check();

  static final _id_onPageCommitVisible = jniAccessors.getMethodIDOf(_classRef,
      "onPageCommitVisible", "(Landroid/webkit/WebView;Ljava/lang/String;)V");

  /// from: public void onPageCommitVisible(android.webkit.WebView view, java.lang.String url)
  ///
  /// Notify the host application that android.webkit.WebView content left over from
  /// previous page navigations will no longer be drawn.
  ///
  /// This callback can be used to determine the point at which it is safe to make a recycled
  /// android.webkit.WebView visible, ensuring that no stale content is shown. It is called
  /// at the earliest point at which it can be guaranteed that WebView\#onDraw will no
  /// longer draw any content from previous navigations. The next draw will display either the
  /// WebView\#setBackgroundColor background color of the WebView, or some of the
  /// contents of the newly loaded page.
  ///
  /// This method is called when the body of the HTTP response has started loading, is reflected
  /// in the DOM, and will be visible in subsequent draws. This callback occurs early in the
  /// document loading process, and as such you should expect that linked resources (for example,
  /// CSS and images) may not be available.
  ///
  /// For more fine-grained notification of visual state updates, see WebView\#postVisualStateCallback.
  ///
  /// Please note that all the conditions and recommendations applicable to
  /// WebView\#postVisualStateCallback also apply to this API.
  ///
  /// This callback is only called for main frame navigations.
  ///@param view The android.webkit.WebView for which the navigation occurred.
  ///@param url The URL corresponding to the page navigation that triggered this callback.
  void onPageCommitVisible(webview_.WebView view, jni.JniString url) =>
      jniAccessors.callMethodWithArgs(reference, _id_onPageCommitVisible,
          jni.JniType.voidType, [view.reference, url.reference]).check();

  static final _id_shouldInterceptRequest = jniAccessors.getMethodIDOf(
      _classRef,
      "shouldInterceptRequest",
      "(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;");

  /// from: public android.webkit.WebResourceResponse shouldInterceptRequest(android.webkit.WebView view, java.lang.String url)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Notify the host application of a resource request and allow the
  /// application to return the data.  If the return value is {@code null}, the WebView
  /// will continue to load the resource as usual.  Otherwise, the return
  /// response and data will be used.
  ///
  /// This callback is invoked for a variety of URL schemes (e.g., {@code http(s):}, {@code
  /// data:}, {@code file:}, etc.), not only those schemes which send requests over the network.
  /// This is not called for {@code javascript:} URLs, {@code blob:} URLs, or for assets accessed
  /// via {@code file:///android_asset/} or {@code file:///android_res/} URLs.
  ///
  /// In the case of redirects, this is only called for the initial resource URL, not any
  /// subsequent redirect URLs.
  ///
  /// <p class="note">__Note:__ This method is called on a thread
  /// other than the UI thread so clients should exercise caution
  /// when accessing private data or the view system.
  ///
  /// <p class="note">__Note:__ When Safe Browsing is enabled, these URLs still undergo Safe
  /// Browsing checks. If this is undesired, whitelist the URL with WebView\#setSafeBrowsingWhitelist or ignore the warning with \#onSafeBrowsingHit.
  ///@param view The android.webkit.WebView that is requesting the
  ///             resource.
  ///@param url The raw url of the resource.
  ///@return A android.webkit.WebResourceResponse containing the
  ///         response information or {@code null} if the WebView should load the
  ///         resource itself.
  ///@deprecated Use \#shouldInterceptRequest(WebView, WebResourceRequest) shouldInterceptRequest(WebView, WebResourceRequest) instead.
  webresourceresponse_.WebResourceResponse shouldInterceptRequest(
          webview_.WebView view, jni.JniString url) =>
      webresourceresponse_.WebResourceResponse.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_shouldInterceptRequest,
              jni.JniType.objectType, [view.reference, url.reference]).object);

  static final _id_shouldInterceptRequest1 = jniAccessors.getMethodIDOf(
      _classRef,
      "shouldInterceptRequest",
      "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;");

  /// from: public android.webkit.WebResourceResponse shouldInterceptRequest(android.webkit.WebView view, android.webkit.WebResourceRequest request)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Notify the host application of a resource request and allow the
  /// application to return the data.  If the return value is {@code null}, the WebView
  /// will continue to load the resource as usual.  Otherwise, the return
  /// response and data will be used.
  ///
  /// This callback is invoked for a variety of URL schemes (e.g., {@code http(s):}, {@code
  /// data:}, {@code file:}, etc.), not only those schemes which send requests over the network.
  /// This is not called for {@code javascript:} URLs, {@code blob:} URLs, or for assets accessed
  /// via {@code file:///android_asset/} or {@code file:///android_res/} URLs.
  ///
  /// In the case of redirects, this is only called for the initial resource URL, not any
  /// subsequent redirect URLs.
  ///
  /// <p class="note">__Note:__ This method is called on a thread
  /// other than the UI thread so clients should exercise caution
  /// when accessing private data or the view system.
  ///
  /// <p class="note">__Note:__ When Safe Browsing is enabled, these URLs still undergo Safe
  /// Browsing checks. If this is undesired, whitelist the URL with WebView\#setSafeBrowsingWhitelist or ignore the warning with \#onSafeBrowsingHit.
  ///@param view The android.webkit.WebView that is requesting the
  ///             resource.
  ///@param request Object containing the details of the request.
  ///@return A android.webkit.WebResourceResponse containing the
  ///         response information or {@code null} if the WebView should load the
  ///         resource itself.
  webresourceresponse_.WebResourceResponse shouldInterceptRequest1(
          webview_.WebView view,
          webresourcerequest_.WebResourceRequest request) =>
      webresourceresponse_.WebResourceResponse.fromRef(jniAccessors
          .callMethodWithArgs(
              reference,
              _id_shouldInterceptRequest1,
              jni.JniType.objectType,
              [view.reference, request.reference]).object);

  static final _id_onTooManyRedirects = jniAccessors.getMethodIDOf(
      _classRef,
      "onTooManyRedirects",
      "(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V");

  /// from: public void onTooManyRedirects(android.webkit.WebView view, android.os.Message cancelMsg, android.os.Message continueMsg)
  ///
  /// Notify the host application that there have been an excessive number of
  /// HTTP redirects. As the host application if it would like to continue
  /// trying to load the resource. The default behavior is to send the cancel
  /// message.
  ///@param view The WebView that is initiating the callback.
  ///@param cancelMsg The message to send if the host wants to cancel
  ///@param continueMsg The message to send if the host wants to continue
  ///@deprecated This method is no longer called. When the WebView encounters
  ///             a redirect loop, it will cancel the load.
  void onTooManyRedirects(webview_.WebView view, message_.Message cancelMsg,
          message_.Message continueMsg) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onTooManyRedirects,
          jni.JniType.voidType,
          [view.reference, cancelMsg.reference, continueMsg.reference]).check();

  static final _id_onReceivedError = jniAccessors.getMethodIDOf(
      _classRef,
      "onReceivedError",
      "(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V");

  /// from: public void onReceivedError(android.webkit.WebView view, int errorCode, java.lang.String description, java.lang.String failingUrl)
  ///
  /// Report an error to the host application. These errors are unrecoverable
  /// (i.e. the main resource is unavailable). The {@code errorCode} parameter
  /// corresponds to one of the {@code ERROR_*} constants.
  ///@param view The WebView that is initiating the callback.
  ///@param errorCode The error code corresponding to an ERROR_* value.
  ///@param description A String describing the error.
  ///@param failingUrl The url that failed to load.
  ///@deprecated Use \#onReceivedError(WebView, WebResourceRequest, WebResourceError) onReceivedError(WebView, WebResourceRequest, WebResourceError) instead.
  void onReceivedError(webview_.WebView view, int errorCode,
          jni.JniString description, jni.JniString failingUrl) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onReceivedError, jni.JniType.voidType, [
        view.reference,
        errorCode,
        description.reference,
        failingUrl.reference
      ]).check();

  static final _id_onReceivedError1 = jniAccessors.getMethodIDOf(
      _classRef,
      "onReceivedError",
      "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V");

  /// from: public void onReceivedError(android.webkit.WebView view, android.webkit.WebResourceRequest request, android.webkit.WebResourceError error)
  ///
  /// Report web resource loading error to the host application. These errors usually indicate
  /// inability to connect to the server. Note that unlike the deprecated version of the callback,
  /// the new version will be called for any resource (iframe, image, etc.), not just for the main
  /// page. Thus, it is recommended to perform minimum required work in this callback.
  ///@param view The WebView that is initiating the callback.
  ///@param request The originating request.
  ///@param error Information about the error occurred.
  void onReceivedError1(
          webview_.WebView view,
          webresourcerequest_.WebResourceRequest request,
          webresourceerror_.WebResourceError error) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onReceivedError1,
          jni.JniType.voidType,
          [view.reference, request.reference, error.reference]).check();

  static final _id_onReceivedHttpError = jniAccessors.getMethodIDOf(
      _classRef,
      "onReceivedHttpError",
      "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V");

  /// from: public void onReceivedHttpError(android.webkit.WebView view, android.webkit.WebResourceRequest request, android.webkit.WebResourceResponse errorResponse)
  ///
  /// Notify the host application that an HTTP error has been received from the server while
  /// loading a resource.  HTTP errors have status codes &gt;= 400.  This callback will be called
  /// for any resource (iframe, image, etc.), not just for the main page. Thus, it is recommended
  /// to perform minimum required work in this callback. Note that the content of the server
  /// response may not be provided within the {@code errorResponse} parameter.
  ///@param view The WebView that is initiating the callback.
  ///@param request The originating request.
  ///@param errorResponse Information about the error occurred.
  void onReceivedHttpError(
          webview_.WebView view,
          webresourcerequest_.WebResourceRequest request,
          webresourceresponse_.WebResourceResponse errorResponse) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onReceivedHttpError,
          jni.JniType.voidType,
          [view.reference, request.reference, errorResponse.reference]).check();

  static final _id_onFormResubmission = jniAccessors.getMethodIDOf(
      _classRef,
      "onFormResubmission",
      "(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V");

  /// from: public void onFormResubmission(android.webkit.WebView view, android.os.Message dontResend, android.os.Message resend)
  ///
  /// As the host application if the browser should resend data as the
  /// requested page was a result of a POST. The default is to not resend the
  /// data.
  ///@param view The WebView that is initiating the callback.
  ///@param dontResend The message to send if the browser should not resend
  ///@param resend The message to send if the browser should resend data
  void onFormResubmission(webview_.WebView view, message_.Message dontResend,
          message_.Message resend) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onFormResubmission,
          jni.JniType.voidType,
          [view.reference, dontResend.reference, resend.reference]).check();

  static final _id_doUpdateVisitedHistory = jniAccessors.getMethodIDOf(
      _classRef,
      "doUpdateVisitedHistory",
      "(Landroid/webkit/WebView;Ljava/lang/String;Z)V");

  /// from: public void doUpdateVisitedHistory(android.webkit.WebView view, java.lang.String url, boolean isReload)
  ///
  /// Notify the host application to update its visited links database.
  ///@param view The WebView that is initiating the callback.
  ///@param url The url being visited.
  ///@param isReload {@code true} if this url is being reloaded.
  void doUpdateVisitedHistory(
          webview_.WebView view, jni.JniString url, bool isReload) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_doUpdateVisitedHistory,
          jni.JniType.voidType,
          [view.reference, url.reference, isReload]).check();

  static final _id_onReceivedSslError = jniAccessors.getMethodIDOf(
      _classRef,
      "onReceivedSslError",
      "(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V");

  /// from: public void onReceivedSslError(android.webkit.WebView view, android.webkit.SslErrorHandler handler, android.net.http.SslError error)
  ///
  /// Notify the host application that an SSL error occurred while loading a
  /// resource. The host application must call either handler.cancel() or
  /// handler.proceed(). Note that the decision may be retained for use in
  /// response to future SSL errors. The default behavior is to cancel the
  /// load.
  ///
  /// Applications are advised not to prompt the user about SSL errors, as
  /// the user is unlikely to be able to make an informed security decision
  /// and WebView does not provide any UI for showing the details of the
  /// error in a meaningful way.
  ///
  /// Application overrides of this method may display custom error pages or
  /// silently log issues, but it is strongly recommended to always call
  /// handler.cancel() and never allow proceeding past errors.
  ///@param view The WebView that is initiating the callback.
  ///@param handler An SslErrorHandler object that will handle the user's
  ///            response.
  ///@param error The SSL error object.
  void onReceivedSslError(webview_.WebView view,
          sslerrorhandler_.SslErrorHandler handler, sslerror_.SslError error) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onReceivedSslError,
          jni.JniType.voidType,
          [view.reference, handler.reference, error.reference]).check();

  static final _id_onReceivedClientCertRequest = jniAccessors.getMethodIDOf(
      _classRef,
      "onReceivedClientCertRequest",
      "(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V");

  /// from: public void onReceivedClientCertRequest(android.webkit.WebView view, android.webkit.ClientCertRequest request)
  ///
  /// Notify the host application to handle a SSL client certificate request. The host application
  /// is responsible for showing the UI if desired and providing the keys. There are three ways to
  /// respond: ClientCertRequest\#proceed, ClientCertRequest\#cancel, or ClientCertRequest\#ignore. Webview stores the response in memory (for the life of the
  /// application) if ClientCertRequest\#proceed or ClientCertRequest\#cancel is
  /// called and does not call {@code onReceivedClientCertRequest()} again for the same host and
  /// port pair. Webview does not store the response if ClientCertRequest\#ignore
  /// is called. Note that, multiple layers in chromium network stack might be
  /// caching the responses, so the behavior for ignore is only a best case
  /// effort.
  ///
  /// This method is called on the UI thread. During the callback, the
  /// connection is suspended.
  ///
  /// For most use cases, the application program should implement the
  /// android.security.KeyChainAliasCallback interface and pass it to
  /// android.security.KeyChain\#choosePrivateKeyAlias to start an
  /// activity for the user to choose the proper alias. The keychain activity will
  /// provide the alias through the callback method in the implemented interface. Next
  /// the application should create an async task to call
  /// android.security.KeyChain\#getPrivateKey to receive the key.
  ///
  /// An example implementation of client certificates can be seen at
  /// <A href="https://android.googlesource.com/platform/packages/apps/Browser/+/android-5.1.1_r1/src/com/android/browser/Tab.java">
  /// AOSP Browser</a>
  ///
  /// The default behavior is to cancel, returning no client certificate.
  ///@param view The WebView that is initiating the callback
  ///@param request An instance of a ClientCertRequest
  void onReceivedClientCertRequest(webview_.WebView view,
          clientcertrequest_.ClientCertRequest request) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onReceivedClientCertRequest,
          jni.JniType.voidType,
          [view.reference, request.reference]).check();

  static final _id_onReceivedHttpAuthRequest = jniAccessors.getMethodIDOf(
      _classRef,
      "onReceivedHttpAuthRequest",
      "(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void onReceivedHttpAuthRequest(android.webkit.WebView view, android.webkit.HttpAuthHandler handler, java.lang.String host, java.lang.String realm)
  ///
  /// Notifies the host application that the WebView received an HTTP
  /// authentication request. The host application can use the supplied
  /// HttpAuthHandler to set the WebView's response to the request.
  /// The default behavior is to cancel the request.
  ///@param view the WebView that is initiating the callback
  ///@param handler the HttpAuthHandler used to set the WebView's response
  ///@param host the host requiring authentication
  ///@param realm the realm for which authentication is required
  ///@see WebView\#getHttpAuthUsernamePassword
  void onReceivedHttpAuthRequest(
          webview_.WebView view,
          httpauthhandler_.HttpAuthHandler handler,
          jni.JniString host,
          jni.JniString realm) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onReceivedHttpAuthRequest, jni.JniType.voidType, [
        view.reference,
        handler.reference,
        host.reference,
        realm.reference
      ]).check();

  static final _id_shouldOverrideKeyEvent = jniAccessors.getMethodIDOf(
      _classRef,
      "shouldOverrideKeyEvent",
      "(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z");

  /// from: public boolean shouldOverrideKeyEvent(android.webkit.WebView view, android.view.KeyEvent event)
  ///
  /// Give the host application a chance to handle the key event synchronously.
  /// e.g. menu shortcut key events need to be filtered this way. If return
  /// true, WebView will not handle the key event. If return {@code false}, WebView
  /// will always handle the key event, so none of the super in the view chain
  /// will see the key event. The default behavior returns {@code false}.
  ///@param view The WebView that is initiating the callback.
  ///@param event The key event.
  ///@return {@code true} if the host application wants to handle the key event
  ///         itself, otherwise return {@code false}
  bool shouldOverrideKeyEvent(
          webview_.WebView view, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_shouldOverrideKeyEvent,
          jni.JniType.booleanType, [view.reference, event.reference]).boolean;

  static final _id_onUnhandledKeyEvent = jniAccessors.getMethodIDOf(
      _classRef,
      "onUnhandledKeyEvent",
      "(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V");

  /// from: public void onUnhandledKeyEvent(android.webkit.WebView view, android.view.KeyEvent event)
  ///
  /// Notify the host application that a key was not handled by the WebView.
  /// Except system keys, WebView always consumes the keys in the normal flow
  /// or if \#shouldOverrideKeyEvent returns {@code true}. This is called asynchronously
  /// from where the key is dispatched. It gives the host application a chance
  /// to handle the unhandled key events.
  ///@param view The WebView that is initiating the callback.
  ///@param event The key event.
  void onUnhandledKeyEvent(webview_.WebView view, keyevent_.KeyEvent event) =>
      jniAccessors.callMethodWithArgs(reference, _id_onUnhandledKeyEvent,
          jni.JniType.voidType, [view.reference, event.reference]).check();

  static final _id_onScaleChanged = jniAccessors.getMethodIDOf(
      _classRef, "onScaleChanged", "(Landroid/webkit/WebView;FF)V");

  /// from: public void onScaleChanged(android.webkit.WebView view, float oldScale, float newScale)
  ///
  /// Notify the host application that the scale applied to the WebView has
  /// changed.
  ///@param view The WebView that is initiating the callback.
  ///@param oldScale The old scale factor
  ///@param newScale The new scale factor
  void onScaleChanged(
          webview_.WebView view, double oldScale, double newScale) =>
      jniAccessors.callMethodWithArgs(reference, _id_onScaleChanged,
          jni.JniType.voidType, [view.reference, oldScale, newScale]).check();

  static final _id_onReceivedLoginRequest = jniAccessors.getMethodIDOf(
      _classRef,
      "onReceivedLoginRequest",
      "(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V");

  /// from: public void onReceivedLoginRequest(android.webkit.WebView view, java.lang.String realm, java.lang.String account, java.lang.String args)
  ///
  /// Notify the host application that a request to automatically log in the
  /// user has been processed.
  ///@param view The WebView requesting the login.
  ///@param realm The account realm used to look up accounts.
  ///@param account An optional account. If not {@code null}, the account should be
  ///                checked against accounts on the device. If it is a valid
  ///                account, it should be used to log in the user.
  /// This value may be {@code null}.
  ///@param args Authenticator specific arguments used to log in the user.
  void onReceivedLoginRequest(webview_.WebView view, jni.JniString realm,
          jni.JniString account, jni.JniString args) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onReceivedLoginRequest, jni.JniType.voidType, [
        view.reference,
        realm.reference,
        account.reference,
        args.reference
      ]).check();

  static final _id_onRenderProcessGone = jniAccessors.getMethodIDOf(
      _classRef,
      "onRenderProcessGone",
      "(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z");

  /// from: public boolean onRenderProcessGone(android.webkit.WebView view, android.webkit.RenderProcessGoneDetail detail)
  ///
  /// Notify host application that the given WebView's render process has exited.
  ///
  /// Multiple WebView instances may be associated with a single render process;
  /// onRenderProcessGone will be called for each WebView that was affected.
  /// The application's implementation of this callback should only attempt to
  /// clean up the specific WebView given as a parameter, and should not assume
  /// that other WebView instances are affected.
  ///
  /// The given WebView can't be used, and should be removed from the view hierarchy,
  /// all references to it should be cleaned up, e.g any references in the Activity
  /// or other classes saved using android.view.View\#findViewById and similar calls, etc.
  ///
  /// To cause an render process crash for test purpose, the application can
  /// call {@code loadUrl("chrome://crash")} on the WebView. Note that multiple WebView
  /// instances may be affected if they share a render process, not just the
  /// specific WebView which loaded chrome://crash.
  ///@param view The WebView which needs to be cleaned up.
  ///@param detail the reason why it exited.
  ///@return {@code true} if the host application handled the situation that process has
  ///         exited, otherwise, application will crash if render process crashed,
  ///         or be killed if render process was killed by the system.
  bool onRenderProcessGone(webview_.WebView view,
          renderprocessgonedetail_.RenderProcessGoneDetail detail) =>
      jniAccessors.callMethodWithArgs(reference, _id_onRenderProcessGone,
          jni.JniType.booleanType, [view.reference, detail.reference]).boolean;

  static final _id_onSafeBrowsingHit = jniAccessors.getMethodIDOf(
      _classRef,
      "onSafeBrowsingHit",
      "(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V");

  /// from: public void onSafeBrowsingHit(android.webkit.WebView view, android.webkit.WebResourceRequest request, int threatType, android.webkit.SafeBrowsingResponse callback)
  ///
  /// Notify the host application that a loading URL has been flagged by Safe Browsing.
  ///
  /// The application must invoke the callback to indicate the preferred response. The default
  /// behavior is to show an interstitial to the user, with the reporting checkbox visible.
  ///
  /// If the application needs to show its own custom interstitial UI, the callback can be invoked
  /// asynchronously with SafeBrowsingResponse\#backToSafety or SafeBrowsingResponse\#proceed, depending on user response.
  ///@param view The WebView that hit the malicious resource.
  ///@param request Object containing the details of the request.
  ///@param threatType The reason the resource was caught by Safe Browsing, corresponding to a
  ///                   {@code SAFE_BROWSING_THREAT_*} value.
  /// Value is android.webkit.WebViewClient\#SAFE_BROWSING_THREAT_UNKNOWN, android.webkit.WebViewClient\#SAFE_BROWSING_THREAT_MALWARE, android.webkit.WebViewClient\#SAFE_BROWSING_THREAT_PHISHING, or android.webkit.WebViewClient\#SAFE_BROWSING_THREAT_UNWANTED_SOFTWARE
  ///@param callback Applications must invoke one of the callback methods.
  void onSafeBrowsingHit(
          webview_.WebView view,
          webresourcerequest_.WebResourceRequest request,
          int threatType,
          safebrowsingresponse_.SafeBrowsingResponse callback) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_onSafeBrowsingHit, jni.JniType.voidType, [
        view.reference,
        request.reference,
        threatType,
        callback.reference
      ]).check();
}
