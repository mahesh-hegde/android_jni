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

import "View.dart" as view_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "LayoutInflater.dart" as layoutinflater_;

import "../graphics/Canvas.dart" as canvas_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.ViewStub
///
/// A ViewStub is an invisible, zero-sized View that can be used to lazily inflate
/// layout resources at runtime.
///
/// When a ViewStub is made visible, or when \#inflate()  is invoked, the layout resource
/// is inflated. The ViewStub then replaces itself in its parent with the inflated View or Views.
/// Therefore, the ViewStub exists in the view hierarchy until \#setVisibility(int) or
/// \#inflate() is invoked.
///
/// The inflated View is added to the ViewStub's parent with the ViewStub's layout
/// parameters. Similarly, you can define/override the inflate View's id by using the
/// ViewStub's inflatedId property. For instance:
///
/// <pre>
///     &lt;ViewStub android:id="@+id/stub"
///               android:inflatedId="@+id/subTree"
///               android:layout="@layout/mySubTree"
///               android:layout_width="120dip"
///               android:layout_height="40dip" /&gt;
/// </pre>
///
/// The ViewStub thus defined can be found using the id "stub." After inflation of
/// the layout resource "mySubTree," the ViewStub is removed from its parent. The
/// View created by inflating the layout resource "mySubTree" can be found using the
/// id "subTree," specified by the inflatedId property. The inflated View is finally
/// assigned a width of 120dip and a height of 40dip.
///
/// The preferred way to perform the inflation of the layout resource is the following:
///
/// <pre>
///     ViewStub stub = findViewById(R.id.stub);
///     View inflated = stub.inflate();
/// </pre>
///
/// When \#inflate() is invoked, the ViewStub is replaced by the inflated View
/// and the inflated View is returned. This lets applications get a reference to the
/// inflated View without executing an extra findViewById().
///@attr ref android.R.styleable\#ViewStub_inflatedId
///@attr ref android.R.styleable\#ViewStub_layout
class ViewStub extends view_.View {
  static final _classRef = jniAccessors.getClassOf("android/view/ViewStub");
  ViewStub.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ViewStub(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor4 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;I)V");

  /// from: public void <init>(android.content.Context context, int layoutResource)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new ViewStub with the specified layout resource.
  ///@param context The application's environment.
  ///@param layoutResource The reference to a layout resource that will be inflated.
  ViewStub.ctor4(context_.Context context, int layoutResource)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor4, [context.reference, layoutResource]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ViewStub.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ViewStub.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ViewStub.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_getInflatedId =
      jniAccessors.getMethodIDOf(_classRef, "getInflatedId", "()I");

  /// from: public int getInflatedId()
  ///
  /// Returns the id taken by the inflated view. If the inflated id is
  /// View\#NO_ID, the inflated view keeps its original id.
  ///@return A positive integer used to identify the inflated view or
  ///         \#NO_ID if the inflated view should keep its id.
  ///@see \#setInflatedId(int)
  ///@attr ref android.R.styleable\#ViewStub_inflatedId
  int getInflatedId() => jniAccessors.callMethodWithArgs(
      reference, _id_getInflatedId, jni.JniType.intType, []).integer;

  static final _id_setInflatedId =
      jniAccessors.getMethodIDOf(_classRef, "setInflatedId", "(I)V");

  /// from: public void setInflatedId(int inflatedId)
  ///
  /// Defines the id taken by the inflated view. If the inflated id is
  /// View\#NO_ID, the inflated view keeps its original id.
  ///@param inflatedId A positive integer used to identify the inflated view or
  ///                   \#NO_ID if the inflated view should keep its id.
  ///@see \#getInflatedId()
  ///@attr ref android.R.styleable\#ViewStub_inflatedId
  void setInflatedId(int inflatedId) => jniAccessors.callMethodWithArgs(
      reference, _id_setInflatedId, jni.JniType.voidType, [inflatedId]).check();

  static final _id_getLayoutResource =
      jniAccessors.getMethodIDOf(_classRef, "getLayoutResource", "()I");

  /// from: public int getLayoutResource()
  ///
  /// Returns the layout resource that will be used by \#setVisibility(int) or
  /// \#inflate() to replace this StubbedView
  /// in its parent by another view.
  ///@return The layout resource identifier used to inflate the new View.
  ///@see \#setLayoutResource(int)
  ///@see \#setVisibility(int)
  ///@see \#inflate()
  ///@attr ref android.R.styleable\#ViewStub_layout
  int getLayoutResource() => jniAccessors.callMethodWithArgs(
      reference, _id_getLayoutResource, jni.JniType.intType, []).integer;

  static final _id_setLayoutResource =
      jniAccessors.getMethodIDOf(_classRef, "setLayoutResource", "(I)V");

  /// from: public void setLayoutResource(int layoutResource)
  ///
  /// Specifies the layout resource to inflate when this StubbedView becomes visible or invisible
  /// or when \#inflate() is invoked. The View created by inflating the layout resource is
  /// used to replace this StubbedView in its parent.
  ///@param layoutResource A valid layout resource identifier (different from 0.)
  ///@see \#getLayoutResource()
  ///@see \#setVisibility(int)
  ///@see \#inflate()
  ///@attr ref android.R.styleable\#ViewStub_layout
  void setLayoutResource(int layoutResource) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setLayoutResource,
      jni.JniType.voidType,
      [layoutResource]).check();

  static final _id_setLayoutInflater = jniAccessors.getMethodIDOf(
      _classRef, "setLayoutInflater", "(Landroid/view/LayoutInflater;)V");

  /// from: public void setLayoutInflater(android.view.LayoutInflater inflater)
  ///
  /// Set LayoutInflater to use in \#inflate(), or {@code null}
  /// to use the default.
  void setLayoutInflater(layoutinflater_.LayoutInflater inflater) =>
      jniAccessors.callMethodWithArgs(reference, _id_setLayoutInflater,
          jni.JniType.voidType, [inflater.reference]).check();

  static final _id_getLayoutInflater = jniAccessors.getMethodIDOf(
      _classRef, "getLayoutInflater", "()Landroid/view/LayoutInflater;");

  /// from: public android.view.LayoutInflater getLayoutInflater()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Get current LayoutInflater used in \#inflate().
  layoutinflater_.LayoutInflater getLayoutInflater() =>
      layoutinflater_.LayoutInflater.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getLayoutInflater, jni.JniType.objectType, []).object);

  static final _id_onMeasure =
      jniAccessors.getMethodIDOf(_classRef, "onMeasure", "(II)V");

  /// from: protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
  void onMeasure(int widthMeasureSpec, int heightMeasureSpec) =>
      jniAccessors.callMethodWithArgs(reference, _id_onMeasure,
          jni.JniType.voidType, [widthMeasureSpec, heightMeasureSpec]).check();

  static final _id_draw = jniAccessors.getMethodIDOf(
      _classRef, "draw", "(Landroid/graphics/Canvas;)V");

  /// from: public void draw(android.graphics.Canvas canvas)
  void draw(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference, _id_draw, jni.JniType.voidType, [canvas.reference]).check();

  static final _id_dispatchDraw = jniAccessors.getMethodIDOf(
      _classRef, "dispatchDraw", "(Landroid/graphics/Canvas;)V");

  /// from: protected void dispatchDraw(android.graphics.Canvas canvas)
  void dispatchDraw(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference,
      _id_dispatchDraw,
      jni.JniType.voidType,
      [canvas.reference]).check();

  static final _id_setVisibility =
      jniAccessors.getMethodIDOf(_classRef, "setVisibility", "(I)V");

  /// from: public void setVisibility(int visibility)
  ///
  /// When visibility is set to \#VISIBLE or \#INVISIBLE,
  /// \#inflate() is invoked and this StubbedView is replaced in its parent
  /// by the inflated layout resource. After that calls to this function are passed
  /// through to the inflated view.
  ///@param visibility One of \#VISIBLE, \#INVISIBLE, or \#GONE.
  ///@see \#inflate()
  void setVisibility(int visibility) => jniAccessors.callMethodWithArgs(
      reference, _id_setVisibility, jni.JniType.voidType, [visibility]).check();

  static final _id_inflate1 =
      jniAccessors.getMethodIDOf(_classRef, "inflate", "()Landroid/view/View;");

  /// from: public android.view.View inflate()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Inflates the layout resource identified by \#getLayoutResource()
  /// and replaces this StubbedView in its parent by the inflated layout resource.
  ///@return The inflated layout resource.
  view_.View inflate1() => view_.View.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_inflate1, jni.JniType.objectType, []).object);

  static final _id_setOnInflateListener = jniAccessors.getMethodIDOf(_classRef,
      "setOnInflateListener", "(Landroid/view/ViewStub\$OnInflateListener;)V");

  /// from: public void setOnInflateListener(android.view.ViewStub.OnInflateListener inflateListener)
  ///
  /// Specifies the inflate listener to be notified after this ViewStub successfully
  /// inflated its layout resource.
  ///@param inflateListener The OnInflateListener to notify of successful inflation.
  ///@see android.view.ViewStub.OnInflateListener
  void setOnInflateListener(ViewStub_OnInflateListener inflateListener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOnInflateListener,
          jni.JniType.voidType, [inflateListener.reference]).check();
}

/// from: android.view.ViewStub$OnInflateListener
///
/// Listener used to receive a notification after a ViewStub has successfully
/// inflated its layout resource.
///@see android.view.ViewStub\#setOnInflateListener(android.view.ViewStub.OnInflateListener)
class ViewStub_OnInflateListener extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/view/ViewStub\$OnInflateListener");
  ViewStub_OnInflateListener.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_onInflate = jniAccessors.getMethodIDOf(
      _classRef, "onInflate", "(Landroid/view/ViewStub;Landroid/view/View;)V");

  /// from: public abstract void onInflate(android.view.ViewStub stub, android.view.View inflated)
  ///
  /// Invoked after a ViewStub successfully inflated its layout resource.
  /// This method is invoked after the inflated view was added to the
  /// hierarchy but before the layout pass.
  ///@param stub The ViewStub that initiated the inflation.
  ///@param inflated The inflated View.
  void onInflate(ViewStub stub, view_.View inflated) =>
      jniAccessors.callMethodWithArgs(reference, _id_onInflate,
          jni.JniType.voidType, [stub.reference, inflated.reference]).check();
}