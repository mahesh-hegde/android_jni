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

import "ResourceCursorAdapter.dart" as resourcecursoradapter_;

import "../content/Context.dart" as context_;

import "../database/Cursor.dart" as cursor_;

import "../view/View.dart" as view_;

import "ImageView.dart" as imageview_;

import "TextView.dart" as textview_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.widget.SimpleCursorAdapter
///
/// An easy adapter to map columns from a cursor to TextViews or ImageViews
/// defined in an XML file. You can specify which columns you want, which
/// views you want to display the columns, and the XML file that defines
/// the appearance of these views.
///
/// Binding occurs in two phases. First, if a
/// android.widget.SimpleCursorAdapter.ViewBinder is available,
/// ViewBinder\#setViewValue(android.view.View, android.database.Cursor, int)
/// is invoked. If the returned value is true, binding has occured. If the
/// returned value is false and the view to bind is a TextView,
/// \#setViewText(TextView, String) is invoked. If the returned value
/// is false and the view to bind is an ImageView,
/// \#setViewImage(ImageView, String) is invoked. If no appropriate
/// binding can be found, an IllegalStateException is thrown.
///
/// If this adapter is used with filtering, for instance in an
/// android.widget.AutoCompleteTextView, you can use the
/// android.widget.SimpleCursorAdapter.CursorToStringConverter and the
/// android.widget.FilterQueryProvider interfaces
/// to get control over the filtering process. You can refer to
/// \#convertToString(android.database.Cursor) and
/// \#runQueryOnBackgroundThread(CharSequence) for more information.
class SimpleCursorAdapter extends resourcecursoradapter_.ResourceCursorAdapter {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/SimpleCursorAdapter");
  SimpleCursorAdapter.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor7 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V");

  /// from: public void <init>(android.content.Context context, int layout, android.database.Cursor c, java.lang.String[] from, int[] to)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Constructor the enables auto-requery.
  ///@deprecated This option is discouraged, as it results in Cursor queries
  /// being performed on the application's UI thread and thus can cause poor
  /// responsiveness or even Application Not Responding errors.  As an alternative,
  /// use android.app.LoaderManager with a android.content.CursorLoader.
  SimpleCursorAdapter.ctor7(context_.Context context, int layout,
      cursor_.Cursor c, jni.JniObject from, jni.JniObject to)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor7, [
          context.reference,
          layout,
          c.reference,
          from.reference,
          to.reference
        ]).object);

  static final _id_ctor8 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V");

  /// from: public void <init>(android.content.Context context, int layout, android.database.Cursor c, java.lang.String[] from, int[] to, int flags)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Standard constructor.
  ///@param context The context where the ListView associated with this
  ///            SimpleListItemFactory is running
  ///@param layout resource identifier of a layout file that defines the views
  ///            for this list item. The layout file should include at least
  ///            those named views defined in "to"
  ///@param c The database cursor.  Can be null if the cursor is not available yet.
  ///@param from A list of column names representing the data to bind to the UI.  Can be null
  ///            if the cursor is not available yet.
  ///@param to The views that should display column in the "from" parameter.
  ///            These should all be TextViews. The first N views in this list
  ///            are given the values of the first N columns in the from
  ///            parameter.  Can be null if the cursor is not available yet.
  ///@param flags Flags used to determine the behavior of the adapter,
  /// as per CursorAdapter\#CursorAdapter(Context, Cursor, int).
  SimpleCursorAdapter.ctor8(context_.Context context, int layout,
      cursor_.Cursor c, jni.JniObject from, jni.JniObject to, int flags)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor8, [
          context.reference,
          layout,
          c.reference,
          from.reference,
          to.reference,
          flags
        ]).object);

  static final _id_bindView1 = jniAccessors.getMethodIDOf(_classRef, "bindView",
      "(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V");

  /// from: public void bindView(android.view.View view, android.content.Context context, android.database.Cursor cursor)
  ///
  /// Binds all of the field names passed into the "to" parameter of the
  /// constructor with their corresponding cursor columns as specified in the
  /// "from" parameter.
  ///
  /// Binding occurs in two phases. First, if a
  /// android.widget.SimpleCursorAdapter.ViewBinder is available,
  /// ViewBinder\#setViewValue(android.view.View, android.database.Cursor, int)
  /// is invoked. If the returned value is true, binding has occured. If the
  /// returned value is false and the view to bind is a TextView,
  /// \#setViewText(TextView, String) is invoked. If the returned value is
  /// false and the view to bind is an ImageView,
  /// \#setViewImage(ImageView, String) is invoked. If no appropriate
  /// binding can be found, an IllegalStateException is thrown.
  ///@throws IllegalStateException if binding cannot occur
  ///@see android.widget.CursorAdapter\#bindView(android.view.View,
  ///      android.content.Context, android.database.Cursor)
  ///@see \#getViewBinder()
  ///@see \#setViewBinder(android.widget.SimpleCursorAdapter.ViewBinder)
  ///@see \#setViewImage(ImageView, String)
  ///@see \#setViewText(TextView, String)
  void bindView1(
          view_.View view, context_.Context context, cursor_.Cursor cursor) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_bindView1,
          jni.JniType.voidType,
          [view.reference, context.reference, cursor.reference]).check();

  static final _id_getViewBinder = jniAccessors.getMethodIDOf(_classRef,
      "getViewBinder", "()Landroid/widget/SimpleCursorAdapter\$ViewBinder;");

  /// from: public android.widget.SimpleCursorAdapter.ViewBinder getViewBinder()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the ViewBinder used to bind data to views.
  ///@return a ViewBinder or null if the binder does not exist
  ///@see \#bindView(android.view.View, android.content.Context, android.database.Cursor)
  ///@see \#setViewBinder(android.widget.SimpleCursorAdapter.ViewBinder)
  SimpleCursorAdapter_ViewBinder getViewBinder() =>
      SimpleCursorAdapter_ViewBinder.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getViewBinder, jni.JniType.objectType, []).object);

  static final _id_setViewBinder = jniAccessors.getMethodIDOf(_classRef,
      "setViewBinder", "(Landroid/widget/SimpleCursorAdapter\$ViewBinder;)V");

  /// from: public void setViewBinder(android.widget.SimpleCursorAdapter.ViewBinder viewBinder)
  ///
  /// Sets the binder used to bind data to views.
  ///@param viewBinder the binder used to bind data to views, can be null to
  ///        remove the existing binder
  ///@see \#bindView(android.view.View, android.content.Context, android.database.Cursor)
  ///@see \#getViewBinder()
  void setViewBinder(SimpleCursorAdapter_ViewBinder viewBinder) =>
      jniAccessors.callMethodWithArgs(reference, _id_setViewBinder,
          jni.JniType.voidType, [viewBinder.reference]).check();

  static final _id_setViewImage = jniAccessors.getMethodIDOf(_classRef,
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
  /// Intended to be overridden by Adapters that need to filter strings
  /// retrieved from the database.
  ///@param v ImageView to receive an image
  ///@param value the value retrieved from the cursor
  void setViewImage(imageview_.ImageView v, jni.JniString value) =>
      jniAccessors.callMethodWithArgs(reference, _id_setViewImage,
          jni.JniType.voidType, [v.reference, value.reference]).check();

  static final _id_setViewText = jniAccessors.getMethodIDOf(_classRef,
      "setViewText", "(Landroid/widget/TextView;Ljava/lang/String;)V");

  /// from: public void setViewText(android.widget.TextView v, java.lang.String text)
  ///
  /// Called by bindView() to set the text for a TextView but only if
  /// there is no existing ViewBinder or if the existing ViewBinder cannot
  /// handle binding to a TextView.
  ///
  /// Intended to be overridden by Adapters that need to filter strings
  /// retrieved from the database.
  ///@param v TextView to receive text
  ///@param text the text to be set for the TextView
  void setViewText(textview_.TextView v, jni.JniString text) =>
      jniAccessors.callMethodWithArgs(reference, _id_setViewText,
          jni.JniType.voidType, [v.reference, text.reference]).check();

  static final _id_getStringConversionColumn =
      jniAccessors.getMethodIDOf(_classRef, "getStringConversionColumn", "()I");

  /// from: public int getStringConversionColumn()
  ///
  /// Return the index of the column used to get a String representation
  /// of the Cursor.
  ///@return a valid index in the current Cursor or -1
  ///@see android.widget.CursorAdapter\#convertToString(android.database.Cursor)
  ///@see \#setStringConversionColumn(int)
  ///@see \#setCursorToStringConverter(android.widget.SimpleCursorAdapter.CursorToStringConverter)
  ///@see \#getCursorToStringConverter()
  int getStringConversionColumn() => jniAccessors.callMethodWithArgs(reference,
      _id_getStringConversionColumn, jni.JniType.intType, []).integer;

  static final _id_setStringConversionColumn = jniAccessors.getMethodIDOf(
      _classRef, "setStringConversionColumn", "(I)V");

  /// from: public void setStringConversionColumn(int stringConversionColumn)
  ///
  /// Defines the index of the column in the Cursor used to get a String
  /// representation of that Cursor. The column is used to convert the
  /// Cursor to a String only when the current CursorToStringConverter
  /// is null.
  ///@param stringConversionColumn a valid index in the current Cursor or -1 to use the default
  ///        conversion mechanism
  ///@see android.widget.CursorAdapter\#convertToString(android.database.Cursor)
  ///@see \#getStringConversionColumn()
  ///@see \#setCursorToStringConverter(android.widget.SimpleCursorAdapter.CursorToStringConverter)
  ///@see \#getCursorToStringConverter()
  void setStringConversionColumn(int stringConversionColumn) =>
      jniAccessors.callMethodWithArgs(reference, _id_setStringConversionColumn,
          jni.JniType.voidType, [stringConversionColumn]).check();

  static final _id_getCursorToStringConverter = jniAccessors.getMethodIDOf(
      _classRef,
      "getCursorToStringConverter",
      "()Landroid/widget/SimpleCursorAdapter\$CursorToStringConverter;");

  /// from: public android.widget.SimpleCursorAdapter.CursorToStringConverter getCursorToStringConverter()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the converter used to convert the filtering Cursor
  /// into a String.
  ///@return null if the converter does not exist or an instance of
  ///         android.widget.SimpleCursorAdapter.CursorToStringConverter
  ///@see \#setCursorToStringConverter(android.widget.SimpleCursorAdapter.CursorToStringConverter)
  ///@see \#getStringConversionColumn()
  ///@see \#setStringConversionColumn(int)
  ///@see android.widget.CursorAdapter\#convertToString(android.database.Cursor)
  SimpleCursorAdapter_CursorToStringConverter getCursorToStringConverter() =>
      SimpleCursorAdapter_CursorToStringConverter.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getCursorToStringConverter,
              jni.JniType.objectType, []).object);

  static final _id_setCursorToStringConverter = jniAccessors.getMethodIDOf(
      _classRef,
      "setCursorToStringConverter",
      "(Landroid/widget/SimpleCursorAdapter\$CursorToStringConverter;)V");

  /// from: public void setCursorToStringConverter(android.widget.SimpleCursorAdapter.CursorToStringConverter cursorToStringConverter)
  ///
  /// Sets the converter  used to convert the filtering Cursor
  /// into a String.
  ///@param cursorToStringConverter the Cursor to String converter, or
  ///        null to remove the converter
  ///@see \#setCursorToStringConverter(android.widget.SimpleCursorAdapter.CursorToStringConverter)
  ///@see \#getStringConversionColumn()
  ///@see \#setStringConversionColumn(int)
  ///@see android.widget.CursorAdapter\#convertToString(android.database.Cursor)
  void setCursorToStringConverter(
          SimpleCursorAdapter_CursorToStringConverter
              cursorToStringConverter) =>
      jniAccessors.callMethodWithArgs(reference, _id_setCursorToStringConverter,
          jni.JniType.voidType, [cursorToStringConverter.reference]).check();

  static final _id_convertToString1 = jniAccessors.getMethodIDOf(_classRef,
      "convertToString", "(Landroid/database/Cursor;)Ljava/lang/CharSequence;");

  /// from: public java.lang.CharSequence convertToString(android.database.Cursor cursor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a CharSequence representation of the specified Cursor as defined
  /// by the current CursorToStringConverter. If no CursorToStringConverter
  /// has been set, the String conversion column is used instead. If the
  /// conversion column is -1, the returned String is empty if the cursor
  /// is null or Cursor.toString().
  ///@param cursor the Cursor to convert to a CharSequence
  ///@return a non-null CharSequence representing the cursor
  jni.JniObject convertToString1(cursor_.Cursor cursor) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_convertToString1,
          jni.JniType.objectType,
          [cursor.reference]).object);

  static final _id_swapCursor1 = jniAccessors.getMethodIDOf(_classRef,
      "swapCursor", "(Landroid/database/Cursor;)Landroid/database/Cursor;");

  /// from: public android.database.Cursor swapCursor(android.database.Cursor c)
  /// The returned object must be deleted after use, by calling the `delete` method.
  cursor_.Cursor swapCursor1(cursor_.Cursor c) =>
      cursor_.Cursor.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_swapCursor1, jni.JniType.objectType, [c.reference]).object);

  static final _id_changeCursorAndColumns = jniAccessors.getMethodIDOf(
      _classRef,
      "changeCursorAndColumns",
      "(Landroid/database/Cursor;[Ljava/lang/String;[I)V");

  /// from: public void changeCursorAndColumns(android.database.Cursor c, java.lang.String[] from, int[] to)
  ///
  /// Change the cursor and change the column-to-view mappings at the same time.
  ///@param c The database cursor.  Can be null if the cursor is not available yet.
  ///@param from A list of column names representing the data to bind to the UI.  Can be null
  ///            if the cursor is not available yet.
  ///@param to The views that should display column in the "from" parameter.
  ///            These should all be TextViews. The first N views in this list
  ///            are given the values of the first N columns in the from
  ///            parameter.  Can be null if the cursor is not available yet.
  void changeCursorAndColumns(
          cursor_.Cursor c, jni.JniObject from, jni.JniObject to) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_changeCursorAndColumns,
          jni.JniType.voidType,
          [c.reference, from.reference, to.reference]).check();
}

/// from: android.widget.SimpleCursorAdapter$ViewBinder
///
/// This class can be used by external clients of SimpleCursorAdapter
/// to bind values fom the Cursor to views.
///
/// You should use this class to bind values from the Cursor to views
/// that are not directly supported by SimpleCursorAdapter or to
/// change the way binding occurs for views supported by
/// SimpleCursorAdapter.
///@see SimpleCursorAdapter\#bindView(android.view.View, android.content.Context, android.database.Cursor)
///@see SimpleCursorAdapter\#setViewImage(ImageView, String)
///@see SimpleCursorAdapter\#setViewText(TextView, String)
class SimpleCursorAdapter_ViewBinder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/widget/SimpleCursorAdapter\$ViewBinder");
  SimpleCursorAdapter_ViewBinder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_setViewValue = jniAccessors.getMethodIDOf(_classRef,
      "setViewValue", "(Landroid/view/View;Landroid/database/Cursor;I)Z");

  /// from: public abstract boolean setViewValue(android.view.View view, android.database.Cursor cursor, int columnIndex)
  ///
  /// Binds the Cursor column defined by the specified index to the specified view.
  ///
  /// When binding is handled by this ViewBinder, this method must return true.
  /// If this method returns false, SimpleCursorAdapter will attempts to handle
  /// the binding on its own.
  ///@param view the view to bind the data to
  ///@param cursor the cursor to get the data from
  ///@param columnIndex the column at which the data can be found in the cursor
  ///@return true if the data was bound to the view, false otherwise
  bool setViewValue(view_.View view, cursor_.Cursor cursor, int columnIndex) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_setViewValue,
          jni.JniType.booleanType,
          [view.reference, cursor.reference, columnIndex]).boolean;
}

/// from: android.widget.SimpleCursorAdapter$CursorToStringConverter
///
/// This class can be used by external clients of SimpleCursorAdapter
/// to define how the Cursor should be converted to a String.
///@see android.widget.CursorAdapter\#convertToString(android.database.Cursor)
class SimpleCursorAdapter_CursorToStringConverter extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf(
      "android/widget/SimpleCursorAdapter\$CursorToStringConverter");
  SimpleCursorAdapter_CursorToStringConverter.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_convertToString = jniAccessors.getMethodIDOf(_classRef,
      "convertToString", "(Landroid/database/Cursor;)Ljava/lang/CharSequence;");

  /// from: public abstract java.lang.CharSequence convertToString(android.database.Cursor cursor)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a CharSequence representing the specified Cursor.
  ///@param cursor the cursor for which a CharSequence representation
  ///        is requested
  ///@return a non-null CharSequence representing the cursor
  jni.JniObject convertToString(cursor_.Cursor cursor) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_convertToString,
          jni.JniType.objectType,
          [cursor.reference]).object);
}
