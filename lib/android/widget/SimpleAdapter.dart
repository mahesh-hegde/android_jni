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

import "BaseAdapter.dart" as baseadapter_;

import "../content/Context.dart" as context_;

import "../view/View.dart" as view_;

import "../view/ViewGroup.dart" as viewgroup_;

import "../content/res/Resources.dart" as resources_;

import "ImageView.dart" as imageview_;

import "TextView.dart" as textview_;

import "Filter.dart" as filter_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.SimpleAdapter
///
/// An easy adapter to map static data to views defined in an XML file. You can specify the data
/// backing the list as an ArrayList of Maps. Each entry in the ArrayList corresponds to one row
/// in the list. The Maps contain the data for each row. You also specify an XML file that
/// defines the views used to display the row, and a mapping from keys in the Map to specific
/// views.
///
/// Binding data to views occurs in two phases. First, if a
/// android.widget.SimpleAdapter.ViewBinder is available,
/// ViewBinder\#setViewValue(android.view.View, Object, String)
/// is invoked. If the returned value is true, binding has occurred.
/// If the returned value is false, the following views are then tried in order:
/// <ul>
/// <li> A view that implements Checkable (e.g. CheckBox).  The expected bind value is a boolean.
/// <li> TextView.  The expected bind value is a string and \#setViewText(TextView, String)
/// is invoked.
/// <li> ImageView. The expected bind value is a resource id or a string and
/// \#setViewImage(ImageView, int) or \#setViewImage(ImageView, String) is invoked.
/// </ul>
/// If no appropriate binding can be found, an IllegalStateException is thrown.
class SimpleAdapter extends baseadapter_.BaseAdapter {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/SimpleAdapter");
  SimpleAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V");

  /// from: public void <init>(android.content.Context context, java.util.List<? extends java.util.Map<java.lang.String,?>> data, int resource, java.lang.String[] from, int[] to)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor
  ///@param context The context where the View associated with this SimpleAdapter is running
  ///@param data A List of Maps. Each entry in the List corresponds to one row in the list. The
  ///        Maps contain the data for each row, and should include all the entries specified in
  ///        "from"
  ///@param resource Resource identifier of a view layout that defines the views for this list
  ///        item. The layout file should include at least those named views defined in "to"
  ///@param from A list of column names that will be added to the Map associated with each
  ///        item.
  ///@param to The views that should display column in the "from" parameter. These should all be
  ///        TextViews. The first N views in this list are given the values of the first N columns
  ///        in the from parameter.
  SimpleAdapter.ctor1(context_.Context context, jni.JniObject data,
      int resource, jni.JniObject from, jni.JniObject to)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor1, [
          context.reference,
          data.reference,
          resource,
          from.reference,
          to.reference
        ]).object);

  static final _id_getCount =
      jniAccessors.getMethodIDOf(_classRef, "getCount", "()I");

  /// from: public int getCount()
  ///
  /// @see android.widget.Adapter\#getCount()
  int getCount() => jniAccessors.callMethodWithArgs(
      reference, _id_getCount, jni.JniType.intType, []).integer;

  static final _id_getItem =
      jniAccessors.getMethodIDOf(_classRef, "getItem", "(I)Ljava/lang/Object;");

  /// from: public java.lang.Object getItem(int position)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @see android.widget.Adapter\#getItem(int)
  jni.JniObject getItem(int position) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getItem, jni.JniType.objectType, [position]).object);

  static final _id_getItemId =
      jniAccessors.getMethodIDOf(_classRef, "getItemId", "(I)J");

  /// from: public long getItemId(int position)
  ///
  /// @see android.widget.Adapter\#getItemId(int)
  int getItemId(int position) => jniAccessors.callMethodWithArgs(
      reference, _id_getItemId, jni.JniType.longType, [position]).long;

  static final _id_getView = jniAccessors.getMethodIDOf(_classRef, "getView",
      "(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public android.view.View getView(int position, android.view.View convertView, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @see android.widget.Adapter\#getView(int, View, ViewGroup)
  view_.View getView(
          int position, view_.View convertView, viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getView,
          jni.JniType.objectType,
          [position, convertView.reference, parent.reference]).object);

  static final _id_setDropDownViewResource =
      jniAccessors.getMethodIDOf(_classRef, "setDropDownViewResource", "(I)V");

  /// from: public void setDropDownViewResource(int resource)
  ///
  /// Sets the layout resource to create the drop down views.
  ///
  ///@param resource the layout resource defining the drop down views
  ///@see \#getDropDownView(int, android.view.View, android.view.ViewGroup)
  void setDropDownViewResource(int resource) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setDropDownViewResource,
      jni.JniType.voidType,
      [resource]).check();

  static final _id_setDropDownViewTheme = jniAccessors.getMethodIDOf(_classRef,
      "setDropDownViewTheme", "(Landroid/content/res/Resources\$Theme;)V");

  /// from: public void setDropDownViewTheme(android.content.res.Resources.Theme theme)
  ///
  /// Sets the android.content.res.Resources.Theme against which drop-down views are
  /// inflated.
  ///
  /// By default, drop-down views are inflated against the theme of the
  /// Context passed to the adapter's constructor.
  ///@param theme the theme against which to inflate drop-down views or
  ///              {@code null} to use the theme from the adapter's context
  ///@see \#getDropDownView(int, View, ViewGroup)
  void setDropDownViewTheme(resources_.Resources_Theme theme) =>
      jniAccessors.callMethodWithArgs(reference, _id_setDropDownViewTheme,
          jni.JniType.voidType, [theme.reference]).check();

  static final _id_getDropDownViewTheme = jniAccessors.getMethodIDOf(_classRef,
      "getDropDownViewTheme", "()Landroid/content/res/Resources\$Theme;");

  /// from: public android.content.res.Resources.Theme getDropDownViewTheme()
  /// The returned object must be deleted after use, by calling the `delete` method.
  resources_.Resources_Theme getDropDownViewTheme() =>
      resources_.Resources_Theme.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDropDownViewTheme,
          jni.JniType.objectType, []).object);

  static final _id_getDropDownView = jniAccessors.getMethodIDOf(
      _classRef,
      "getDropDownView",
      "(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;");

  /// from: public android.view.View getDropDownView(int position, android.view.View convertView, android.view.ViewGroup parent)
  /// The returned object must be deleted after use, by calling the `delete` method.
  view_.View getDropDownView(
          int position, view_.View convertView, viewgroup_.ViewGroup parent) =>
      view_.View.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getDropDownView,
          jni.JniType.objectType,
          [position, convertView.reference, parent.reference]).object);

  static final _id_getViewBinder = jniAccessors.getMethodIDOf(_classRef,
      "getViewBinder", "()Landroid/widget/SimpleAdapter\$ViewBinder;");

  /// from: public android.widget.SimpleAdapter.ViewBinder getViewBinder()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the ViewBinder used to bind data to views.
  ///@return a ViewBinder or null if the binder does not exist
  ///@see \#setViewBinder(android.widget.SimpleAdapter.ViewBinder)
  SimpleAdapter_ViewBinder getViewBinder() =>
      SimpleAdapter_ViewBinder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getViewBinder, jni.JniType.objectType, []).object);

  static final _id_setViewBinder = jniAccessors.getMethodIDOf(_classRef,
      "setViewBinder", "(Landroid/widget/SimpleAdapter\$ViewBinder;)V");

  /// from: public void setViewBinder(android.widget.SimpleAdapter.ViewBinder viewBinder)
  ///
  /// Sets the binder used to bind data to views.
  ///@param viewBinder the binder used to bind data to views, can be null to
  ///        remove the existing binder
  ///@see \#getViewBinder()
  void setViewBinder(SimpleAdapter_ViewBinder viewBinder) =>
      jniAccessors.callMethodWithArgs(reference, _id_setViewBinder,
          jni.JniType.voidType, [viewBinder.reference]).check();

  static final _id_setViewImage = jniAccessors.getMethodIDOf(
      _classRef, "setViewImage", "(Landroid/widget/ImageView;I)V");

  /// from: public void setViewImage(android.widget.ImageView v, int value)
  ///
  /// Called by bindView() to set the image for an ImageView but only if
  /// there is no existing ViewBinder or if the existing ViewBinder cannot
  /// handle binding to an ImageView.
  ///
  /// This method is called instead of \#setViewImage(ImageView, String)
  /// if the supplied data is an int or Integer.
  ///@param v ImageView to receive an image
  ///@param value the value retrieved from the data set
  ///@see \#setViewImage(ImageView, String)
  void setViewImage(imageview_.ImageView v, int value) =>
      jniAccessors.callMethodWithArgs(reference, _id_setViewImage,
          jni.JniType.voidType, [v.reference, value]).check();

  static final _id_setViewImage1 = jniAccessors.getMethodIDOf(_classRef,
      "setViewImage", "(Landroid/widget/ImageView;Ljava/lang/String;)V");

  /// from: public void setViewImage(android.widget.ImageView v, java.lang.String value)
  ///
  /// Called by bindView() to set the image for an ImageView but only if
  /// there is no existing ViewBinder or if the existing ViewBinder cannot
  /// handle binding to an ImageView.
  ///
  /// By default, the value will be treated as an image resource. If the
  /// value cannot be used as an image resource, the value is used as an
  /// image Uri.
  ///
  /// This method is called instead of \#setViewImage(ImageView, int)
  /// if the supplied data is not an int or Integer.
  ///@param v ImageView to receive an image
  ///@param value the value retrieved from the data set
  ///@see \#setViewImage(ImageView, int)
  void setViewImage1(imageview_.ImageView v, jni.JniString value) =>
      jniAccessors.callMethodWithArgs(reference, _id_setViewImage1,
          jni.JniType.voidType, [v.reference, value.reference]).check();

  static final _id_setViewText = jniAccessors.getMethodIDOf(_classRef,
      "setViewText", "(Landroid/widget/TextView;Ljava/lang/String;)V");

  /// from: public void setViewText(android.widget.TextView v, java.lang.String text)
  ///
  /// Called by bindView() to set the text for a TextView but only if
  /// there is no existing ViewBinder or if the existing ViewBinder cannot
  /// handle binding to a TextView.
  ///@param v TextView to receive text
  ///@param text the text to be set for the TextView
  void setViewText(textview_.TextView v, jni.JniString text) =>
      jniAccessors.callMethodWithArgs(reference, _id_setViewText,
          jni.JniType.voidType, [v.reference, text.reference]).check();

  static final _id_getFilter = jniAccessors.getMethodIDOf(
      _classRef, "getFilter", "()Landroid/widget/Filter;");

  /// from: public android.widget.Filter getFilter()
  /// The returned object must be deleted after use, by calling the `delete` method.
  filter_.Filter getFilter() =>
      filter_.Filter.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getFilter, jni.JniType.objectType, []).object);
}

/// from: android.widget.SimpleAdapter$ViewBinder
///
/// This class can be used by external clients of SimpleAdapter to bind
/// values to views.
///
/// You should use this class to bind values to views that are not
/// directly supported by SimpleAdapter or to change the way binding
/// occurs for views supported by SimpleAdapter.
///@see SimpleAdapter\#setViewImage(ImageView, int)
///@see SimpleAdapter\#setViewImage(ImageView, String)
///@see SimpleAdapter\#setViewText(TextView, String)
class SimpleAdapter_ViewBinder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/SimpleAdapter\$ViewBinder");
  SimpleAdapter_ViewBinder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_setViewValue = jniAccessors.getMethodIDOf(
      _classRef,
      "setViewValue",
      "(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z");

  /// from: public abstract boolean setViewValue(android.view.View view, java.lang.Object data, java.lang.String textRepresentation)
  ///
  /// Binds the specified data to the specified view.
  ///
  /// When binding is handled by this ViewBinder, this method must return true.
  /// If this method returns false, SimpleAdapter will attempts to handle
  /// the binding on its own.
  ///@param view the view to bind the data to
  ///@param data the data to bind to the view
  ///@param textRepresentation a safe String representation of the supplied data:
  ///        it is either the result of data.toString() or an empty String but it
  ///        is never null
  ///@return true if the data was bound to the view, false otherwise
  bool setViewValue(view_.View view, jni.JniObject data,
          jni.JniString textRepresentation) =>
      jniAccessors.callMethodWithArgs(
          reference, _id_setViewValue, jni.JniType.booleanType, [
        view.reference,
        data.reference,
        textRepresentation.reference
      ]).boolean;
}