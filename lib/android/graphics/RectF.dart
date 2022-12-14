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

import "../os/Parcelable.dart" as parcelable_;

import "Rect.dart" as rect_;

import "../os/Parcel.dart" as parcel_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.graphics.RectF
///
/// RectF holds four float coordinates for a rectangle. The rectangle is
/// represented by the coordinates of its 4 edges (left, top, right bottom).
/// These fields can be accessed directly. Use width() and height() to retrieve
/// the rectangle's width and height. Note: most methods do not check to see that
/// the coordinates are sorted correctly (i.e. left <= right and top <= bottom).
class RectF extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/graphics/RectF");
  RectF.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_CREATOR = jniAccessors.getStaticFieldIDOf(
      _classRef, "CREATOR", "Landroid/os/Parcelable\$Creator;");

  /// from: static public final android.os.Parcelable.Creator<android.graphics.RectF> CREATOR
  /// The returned object must be deleted after use, by calling the `delete` method.
  static parcelable_.Parcelable_Creator get CREATOR =>
      parcelable_.Parcelable_Creator.fromRef(jniAccessors
          .getStaticField(_classRef, _id_CREATOR, jni.JniType.objectType)
          .object);

  static final _id_bottom = jniAccessors.getFieldIDOf(_classRef, "bottom", "F");

  /// from: public float bottom
  double get bottom =>
      jniAccessors.getField(reference, _id_bottom, jni.JniType.floatType).float;

  /// from: public float bottom
  set bottom(double value) =>
      jniEnv.SetFloatField(reference, _id_bottom, value);

  static final _id_left = jniAccessors.getFieldIDOf(_classRef, "left", "F");

  /// from: public float left
  double get left =>
      jniAccessors.getField(reference, _id_left, jni.JniType.floatType).float;

  /// from: public float left
  set left(double value) => jniEnv.SetFloatField(reference, _id_left, value);

  static final _id_right = jniAccessors.getFieldIDOf(_classRef, "right", "F");

  /// from: public float right
  double get right =>
      jniAccessors.getField(reference, _id_right, jni.JniType.floatType).float;

  /// from: public float right
  set right(double value) => jniEnv.SetFloatField(reference, _id_right, value);

  static final _id_top = jniAccessors.getFieldIDOf(_classRef, "top", "F");

  /// from: public float top
  double get top =>
      jniAccessors.getField(reference, _id_top, jni.JniType.floatType).float;

  /// from: public float top
  set top(double value) => jniEnv.SetFloatField(reference, _id_top, value);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new empty RectF. All coordinates are initialized to 0.
  RectF()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(FFFF)V");

  /// from: public void <init>(float left, float top, float right, float bottom)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new rectangle with the specified coordinates. Note: no range
  /// checking is performed, so the caller must ensure that left <= right and
  /// top <= bottom.
  ///@param left The X coordinate of the left side of the rectangle
  ///@param top The Y coordinate of the top of the rectangle
  ///@param right The X coordinate of the right side of the rectangle
  ///@param bottom The Y coordinate of the bottom of the rectangle
  RectF.ctor1(double left, double top, double right, double bottom)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [left, top, right, bottom]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/RectF;)V");

  /// from: public void <init>(android.graphics.RectF r)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a new rectangle, initialized with the values in the specified
  /// rectangle (which is left unmodified).
  ///@param r The rectangle whose coordinates are copied into the new
  ///          rectangle.
  RectF.ctor2(RectF r)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor2, [r.reference]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/graphics/Rect;)V");

  /// from: public void <init>(android.graphics.Rect r)
  /// The returned object must be deleted after use, by calling the `delete` method.
  RectF.ctor3(rect_.Rect r)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor3, [r.reference]).object);

  static final _id_equals1 =
      jniAccessors.getMethodIDOf(_classRef, "equals", "(Ljava/lang/Object;)Z");

  /// from: public boolean equals(java.lang.Object o)
  bool equals1(jni.JniObject o) => jniAccessors.callMethodWithArgs(
      reference, _id_equals1, jni.JniType.booleanType, [o.reference]).boolean;

  static final _id_hashCode1 =
      jniAccessors.getMethodIDOf(_classRef, "hashCode", "()I");

  /// from: public int hashCode()
  int hashCode1() => jniAccessors.callMethodWithArgs(
      reference, _id_hashCode1, jni.JniType.intType, []).integer;

  static final _id_toString1 =
      jniAccessors.getMethodIDOf(_classRef, "toString", "()Ljava/lang/String;");

  /// from: public java.lang.String toString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniString toString1() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toString1, jni.JniType.objectType, []).object);

  static final _id_toShortString = jniAccessors.getMethodIDOf(
      _classRef, "toShortString", "()Ljava/lang/String;");

  /// from: public java.lang.String toShortString()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Return a string representation of the rectangle in a compact form.
  jni.JniString toShortString() =>
      jni.JniString.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_toShortString, jni.JniType.objectType, []).object);

  static final _id_isEmpty =
      jniAccessors.getMethodIDOf(_classRef, "isEmpty", "()Z");

  /// from: public final boolean isEmpty()
  ///
  /// Returns true if the rectangle is empty (left >= right or top >= bottom)
  bool isEmpty() => jniAccessors.callMethodWithArgs(
      reference, _id_isEmpty, jni.JniType.booleanType, []).boolean;

  static final _id_width =
      jniAccessors.getMethodIDOf(_classRef, "width", "()F");

  /// from: public final float width()
  ///
  /// @return the rectangle's width. This does not check for a valid rectangle
  /// (i.e. left <= right) so the result may be negative.
  double width() => jniAccessors.callMethodWithArgs(
      reference, _id_width, jni.JniType.floatType, []).float;

  static final _id_height =
      jniAccessors.getMethodIDOf(_classRef, "height", "()F");

  /// from: public final float height()
  ///
  /// @return the rectangle's height. This does not check for a valid rectangle
  /// (i.e. top <= bottom) so the result may be negative.
  double height() => jniAccessors.callMethodWithArgs(
      reference, _id_height, jni.JniType.floatType, []).float;

  static final _id_centerX =
      jniAccessors.getMethodIDOf(_classRef, "centerX", "()F");

  /// from: public final float centerX()
  ///
  /// @return the horizontal center of the rectangle. This does not check for
  /// a valid rectangle (i.e. left <= right)
  double centerX() => jniAccessors.callMethodWithArgs(
      reference, _id_centerX, jni.JniType.floatType, []).float;

  static final _id_centerY =
      jniAccessors.getMethodIDOf(_classRef, "centerY", "()F");

  /// from: public final float centerY()
  ///
  /// @return the vertical center of the rectangle. This does not check for
  /// a valid rectangle (i.e. top <= bottom)
  double centerY() => jniAccessors.callMethodWithArgs(
      reference, _id_centerY, jni.JniType.floatType, []).float;

  static final _id_setEmpty =
      jniAccessors.getMethodIDOf(_classRef, "setEmpty", "()V");

  /// from: public void setEmpty()
  ///
  /// Set the rectangle to (0,0,0,0)
  void setEmpty() => jniAccessors.callMethodWithArgs(
      reference, _id_setEmpty, jni.JniType.voidType, []).check();

  static final _id_set0 =
      jniAccessors.getMethodIDOf(_classRef, "set", "(FFFF)V");

  /// from: public void set(float left, float top, float right, float bottom)
  ///
  /// Set the rectangle's coordinates to the specified values. Note: no range
  /// checking is performed, so it is up to the caller to ensure that
  /// left <= right and top <= bottom.
  ///@param left The X coordinate of the left side of the rectangle
  ///@param top The Y coordinate of the top of the rectangle
  ///@param right The X coordinate of the right side of the rectangle
  ///@param bottom The Y coordinate of the bottom of the rectangle
  void set0(double left, double top, double right, double bottom) =>
      jniAccessors.callMethodWithArgs(reference, _id_set0, jni.JniType.voidType,
          [left, top, right, bottom]).check();

  static final _id_set1 = jniAccessors.getMethodIDOf(
      _classRef, "set", "(Landroid/graphics/RectF;)V");

  /// from: public void set(android.graphics.RectF src)
  ///
  /// Copy the coordinates from src into this rectangle.
  ///@param src The rectangle whose coordinates are copied into this
  ///           rectangle.
  void set1(RectF src) => jniAccessors.callMethodWithArgs(
      reference, _id_set1, jni.JniType.voidType, [src.reference]).check();

  static final _id_set2 = jniAccessors.getMethodIDOf(
      _classRef, "set", "(Landroid/graphics/Rect;)V");

  /// from: public void set(android.graphics.Rect src)
  ///
  /// Copy the coordinates from src into this rectangle.
  ///@param src The rectangle whose coordinates are copied into this
  ///           rectangle.
  void set2(rect_.Rect src) => jniAccessors.callMethodWithArgs(
      reference, _id_set2, jni.JniType.voidType, [src.reference]).check();

  static final _id_offset =
      jniAccessors.getMethodIDOf(_classRef, "offset", "(FF)V");

  /// from: public void offset(float dx, float dy)
  ///
  /// Offset the rectangle by adding dx to its left and right coordinates, and
  /// adding dy to its top and bottom coordinates.
  ///@param dx The amount to add to the rectangle's left and right coordinates
  ///@param dy The amount to add to the rectangle's top and bottom coordinates
  void offset(double dx, double dy) => jniAccessors.callMethodWithArgs(
      reference, _id_offset, jni.JniType.voidType, [dx, dy]).check();

  static final _id_offsetTo =
      jniAccessors.getMethodIDOf(_classRef, "offsetTo", "(FF)V");

  /// from: public void offsetTo(float newLeft, float newTop)
  ///
  /// Offset the rectangle to a specific (left, top) position,
  /// keeping its width and height the same.
  ///@param newLeft The new "left" coordinate for the rectangle
  ///@param newTop The new "top" coordinate for the rectangle
  void offsetTo(double newLeft, double newTop) =>
      jniAccessors.callMethodWithArgs(reference, _id_offsetTo,
          jni.JniType.voidType, [newLeft, newTop]).check();

  static final _id_inset =
      jniAccessors.getMethodIDOf(_classRef, "inset", "(FF)V");

  /// from: public void inset(float dx, float dy)
  ///
  /// Inset the rectangle by (dx,dy). If dx is positive, then the sides are
  /// moved inwards, making the rectangle narrower. If dx is negative, then the
  /// sides are moved outwards, making the rectangle wider. The same holds true
  /// for dy and the top and bottom.
  ///@param dx The amount to add(subtract) from the rectangle's left(right)
  ///@param dy The amount to add(subtract) from the rectangle's top(bottom)
  void inset(double dx, double dy) => jniAccessors.callMethodWithArgs(
      reference, _id_inset, jni.JniType.voidType, [dx, dy]).check();

  static final _id_contains =
      jniAccessors.getMethodIDOf(_classRef, "contains", "(FF)Z");

  /// from: public boolean contains(float x, float y)
  ///
  /// Returns true if (x,y) is inside the rectangle. The left and top are
  /// considered to be inside, while the right and bottom are not. This means
  /// that for a x,y to be contained: left <= x < right and top <= y < bottom.
  /// An empty rectangle never contains any point.
  ///@param x The X coordinate of the point being tested for containment
  ///@param y The Y coordinate of the point being tested for containment
  ///@return true iff (x,y) are contained by the rectangle, where containment
  ///              means left <= x < right and top <= y < bottom
  bool contains(double x, double y) => jniAccessors.callMethodWithArgs(
      reference, _id_contains, jni.JniType.booleanType, [x, y]).boolean;

  static final _id_contains1 =
      jniAccessors.getMethodIDOf(_classRef, "contains", "(FFFF)Z");

  /// from: public boolean contains(float left, float top, float right, float bottom)
  ///
  /// Returns true iff the 4 specified sides of a rectangle are inside or equal
  /// to this rectangle. i.e. is this rectangle a superset of the specified
  /// rectangle. An empty rectangle never contains another rectangle.
  ///@param left The left side of the rectangle being tested for containment
  ///@param top The top of the rectangle being tested for containment
  ///@param right The right side of the rectangle being tested for containment
  ///@param bottom The bottom of the rectangle being tested for containment
  ///@return true iff the the 4 specified sides of a rectangle are inside or
  ///              equal to this rectangle
  bool contains1(double left, double top, double right, double bottom) =>
      jniAccessors.callMethodWithArgs(reference, _id_contains1,
          jni.JniType.booleanType, [left, top, right, bottom]).boolean;

  static final _id_contains2 = jniAccessors.getMethodIDOf(
      _classRef, "contains", "(Landroid/graphics/RectF;)Z");

  /// from: public boolean contains(android.graphics.RectF r)
  ///
  /// Returns true iff the specified rectangle r is inside or equal to this
  /// rectangle. An empty rectangle never contains another rectangle.
  ///@param r The rectangle being tested for containment.
  ///@return true iff the specified rectangle r is inside or equal to this
  ///              rectangle
  bool contains2(RectF r) => jniAccessors.callMethodWithArgs(
      reference, _id_contains2, jni.JniType.booleanType, [r.reference]).boolean;

  static final _id_intersect =
      jniAccessors.getMethodIDOf(_classRef, "intersect", "(FFFF)Z");

  /// from: public boolean intersect(float left, float top, float right, float bottom)
  ///
  /// If the rectangle specified by left,top,right,bottom intersects this
  /// rectangle, return true and set this rectangle to that intersection,
  /// otherwise return false and do not change this rectangle. No check is
  /// performed to see if either rectangle is empty. Note: To just test for
  /// intersection, use intersects()
  ///@param left The left side of the rectangle being intersected with this
  ///             rectangle
  ///@param top The top of the rectangle being intersected with this rectangle
  ///@param right The right side of the rectangle being intersected with this
  ///              rectangle.
  ///@param bottom The bottom of the rectangle being intersected with this
  ///             rectangle.
  ///@return true if the specified rectangle and this rectangle intersect
  ///              (and this rectangle is then set to that intersection) else
  ///              return false and do not change this rectangle.
  bool intersect(double left, double top, double right, double bottom) =>
      jniAccessors.callMethodWithArgs(reference, _id_intersect,
          jni.JniType.booleanType, [left, top, right, bottom]).boolean;

  static final _id_intersect1 = jniAccessors.getMethodIDOf(
      _classRef, "intersect", "(Landroid/graphics/RectF;)Z");

  /// from: public boolean intersect(android.graphics.RectF r)
  ///
  /// If the specified rectangle intersects this rectangle, return true and set
  /// this rectangle to that intersection, otherwise return false and do not
  /// change this rectangle. No check is performed to see if either rectangle
  /// is empty. To just test for intersection, use intersects()
  ///@param r The rectangle being intersected with this rectangle.
  ///@return true if the specified rectangle and this rectangle intersect
  ///              (and this rectangle is then set to that intersection) else
  ///              return false and do not change this rectangle.
  bool intersect1(RectF r) => jniAccessors.callMethodWithArgs(reference,
      _id_intersect1, jni.JniType.booleanType, [r.reference]).boolean;

  static final _id_setIntersect = jniAccessors.getMethodIDOf(_classRef,
      "setIntersect", "(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z");

  /// from: public boolean setIntersect(android.graphics.RectF a, android.graphics.RectF b)
  ///
  /// If rectangles a and b intersect, return true and set this rectangle to
  /// that intersection, otherwise return false and do not change this
  /// rectangle. No check is performed to see if either rectangle is empty.
  /// To just test for intersection, use intersects()
  ///@param a The first rectangle being intersected with
  ///@param b The second rectangle being intersected with
  ///@return true iff the two specified rectangles intersect. If they do, set
  ///              this rectangle to that intersection. If they do not, return
  ///              false and do not change this rectangle.
  bool setIntersect(RectF a, RectF b) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setIntersect,
      jni.JniType.booleanType,
      [a.reference, b.reference]).boolean;

  static final _id_intersects =
      jniAccessors.getMethodIDOf(_classRef, "intersects", "(FFFF)Z");

  /// from: public boolean intersects(float left, float top, float right, float bottom)
  ///
  /// Returns true if this rectangle intersects the specified rectangle.
  /// In no event is this rectangle modified. No check is performed to see
  /// if either rectangle is empty. To record the intersection, use intersect()
  /// or setIntersect().
  ///@param left The left side of the rectangle being tested for intersection
  ///@param top The top of the rectangle being tested for intersection
  ///@param right The right side of the rectangle being tested for
  ///              intersection
  ///@param bottom The bottom of the rectangle being tested for intersection
  ///@return true iff the specified rectangle intersects this rectangle. In
  ///              no event is this rectangle modified.
  bool intersects(double left, double top, double right, double bottom) =>
      jniAccessors.callMethodWithArgs(reference, _id_intersects,
          jni.JniType.booleanType, [left, top, right, bottom]).boolean;

  static final _id_intersects1 = jniAccessors.getStaticMethodIDOf(_classRef,
      "intersects", "(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z");

  /// from: static public boolean intersects(android.graphics.RectF a, android.graphics.RectF b)
  ///
  /// Returns true iff the two specified rectangles intersect. In no event are
  /// either of the rectangles modified. To record the intersection,
  /// use intersect() or setIntersect().
  ///@param a The first rectangle being tested for intersection
  ///@param b The second rectangle being tested for intersection
  ///@return true iff the two specified rectangles intersect. In no event are
  ///              either of the rectangles modified.
  static bool intersects1(RectF a, RectF b) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_intersects1,
          jni.JniType.booleanType, [a.reference, b.reference]).boolean;

  static final _id_round = jniAccessors.getMethodIDOf(
      _classRef, "round", "(Landroid/graphics/Rect;)V");

  /// from: public void round(android.graphics.Rect dst)
  ///
  /// Set the dst integer Rect by rounding this rectangle's coordinates
  /// to their nearest integer values.
  void round(rect_.Rect dst) => jniAccessors.callMethodWithArgs(
      reference, _id_round, jni.JniType.voidType, [dst.reference]).check();

  static final _id_roundOut = jniAccessors.getMethodIDOf(
      _classRef, "roundOut", "(Landroid/graphics/Rect;)V");

  /// from: public void roundOut(android.graphics.Rect dst)
  ///
  /// Set the dst integer Rect by rounding "out" this rectangle, choosing the
  /// floor of top and left, and the ceiling of right and bottom.
  void roundOut(rect_.Rect dst) => jniAccessors.callMethodWithArgs(
      reference, _id_roundOut, jni.JniType.voidType, [dst.reference]).check();

  static final _id_union =
      jniAccessors.getMethodIDOf(_classRef, "union", "(FFFF)V");

  /// from: public void union(float left, float top, float right, float bottom)
  ///
  /// Update this Rect to enclose itself and the specified rectangle. If the
  /// specified rectangle is empty, nothing is done. If this rectangle is empty
  /// it is set to the specified rectangle.
  ///@param left The left edge being unioned with this rectangle
  ///@param top The top edge being unioned with this rectangle
  ///@param right The right edge being unioned with this rectangle
  ///@param bottom The bottom edge being unioned with this rectangle
  void union(double left, double top, double right, double bottom) =>
      jniAccessors.callMethodWithArgs(reference, _id_union,
          jni.JniType.voidType, [left, top, right, bottom]).check();

  static final _id_union1 = jniAccessors.getMethodIDOf(
      _classRef, "union", "(Landroid/graphics/RectF;)V");

  /// from: public void union(android.graphics.RectF r)
  ///
  /// Update this Rect to enclose itself and the specified rectangle. If the
  /// specified rectangle is empty, nothing is done. If this rectangle is empty
  /// it is set to the specified rectangle.
  ///@param r The rectangle being unioned with this rectangle
  void union1(RectF r) => jniAccessors.callMethodWithArgs(
      reference, _id_union1, jni.JniType.voidType, [r.reference]).check();

  static final _id_union2 =
      jniAccessors.getMethodIDOf(_classRef, "union", "(FF)V");

  /// from: public void union(float x, float y)
  ///
  /// Update this Rect to enclose itself and the [x,y] coordinate. There is no
  /// check to see that this rectangle is non-empty.
  ///@param x The x coordinate of the point to add to the rectangle
  ///@param y The y coordinate of the point to add to the rectangle
  void union2(double x, double y) => jniAccessors.callMethodWithArgs(
      reference, _id_union2, jni.JniType.voidType, [x, y]).check();

  static final _id_sort = jniAccessors.getMethodIDOf(_classRef, "sort", "()V");

  /// from: public void sort()
  ///
  /// Swap top/bottom or left/right if there are flipped (i.e. left > right
  /// and/or top > bottom). This can be called if
  /// the edges are computed separately, and may have crossed over each other.
  /// If the edges are already correct (i.e. left <= right and top <= bottom)
  /// then nothing is done.
  void sort() => jniAccessors.callMethodWithArgs(
      reference, _id_sort, jni.JniType.voidType, []).check();

  static final _id_describeContents =
      jniAccessors.getMethodIDOf(_classRef, "describeContents", "()I");

  /// from: public int describeContents()
  ///
  /// Parcelable interface methods
  int describeContents() => jniAccessors.callMethodWithArgs(
      reference, _id_describeContents, jni.JniType.intType, []).integer;

  static final _id_writeToParcel = jniAccessors.getMethodIDOf(
      _classRef, "writeToParcel", "(Landroid/os/Parcel;I)V");

  /// from: public void writeToParcel(android.os.Parcel out, int flags)
  ///
  /// Write this rectangle to the specified parcel. To restore a rectangle from
  /// a parcel, use readFromParcel()
  ///@param out The parcel to write the rectangle's coordinates into
  void writeToParcel(parcel_.Parcel out, int flags) =>
      jniAccessors.callMethodWithArgs(reference, _id_writeToParcel,
          jni.JniType.voidType, [out.reference, flags]).check();

  static final _id_readFromParcel = jniAccessors.getMethodIDOf(
      _classRef, "readFromParcel", "(Landroid/os/Parcel;)V");

  /// from: public void readFromParcel(android.os.Parcel in)
  ///
  /// Set the rectangle's coordinates from the data stored in the specified
  /// parcel. To write a rectangle to a parcel, call writeToParcel().
  ///@param in The parcel to read the rectangle's coordinates from
  void readFromParcel(parcel_.Parcel in0) => jniAccessors.callMethodWithArgs(
      reference,
      _id_readFromParcel,
      jni.JniType.voidType,
      [in0.reference]).check();
}
