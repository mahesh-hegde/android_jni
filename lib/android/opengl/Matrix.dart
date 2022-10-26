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

/// from: android.opengl.Matrix
///
/// Matrix math utilities. These methods operate on OpenGL ES format
/// matrices and vectors stored in float arrays.
///
/// Matrices are 4 x 4 column-vector matrices stored in column-major
/// order:
/// <pre>
///  m[offset +  0] m[offset +  4] m[offset +  8] m[offset + 12]
///  m[offset +  1] m[offset +  5] m[offset +  9] m[offset + 13]
///  m[offset +  2] m[offset +  6] m[offset + 10] m[offset + 14]
///  m[offset +  3] m[offset +  7] m[offset + 11] m[offset + 15]</pre>
///
/// Vectors are 4 x 1 column vectors stored in order:
/// <pre>
/// v[offset + 0]
/// v[offset + 1]
/// v[offset + 2]
/// v[offset + 3]</pre>
class Matrix extends jni.JniObject {
  static final _classRef = jniAccessors.getClassOf("android/opengl/Matrix");
  Matrix.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// @deprecated All methods are static, do not instantiate this class.
  Matrix()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_multiplyMM =
      jniAccessors.getStaticMethodIDOf(_classRef, "multiplyMM", "([FI[FI[FI)V");

  /// from: static public native void multiplyMM(float[] result, int resultOffset, float[] lhs, int lhsOffset, float[] rhs, int rhsOffset)
  ///
  /// Multiplies two 4x4 matrices together and stores the result in a third 4x4
  /// matrix. In matrix notation: result = lhs x rhs. Due to the way
  /// matrix multiplication works, the result matrix will have the same
  /// effect as first multiplying by the rhs matrix, then multiplying by
  /// the lhs matrix. This is the opposite of what you might expect.
  ///
  /// The same float array may be passed for result, lhs, and/or rhs. However,
  /// the result element values are undefined if the result elements overlap
  /// either the lhs or rhs elements.
  ///@param result The float array that holds the result.
  ///@param resultOffset The offset into the result array where the result is
  ///        stored.
  ///@param lhs The float array that holds the left-hand-side matrix.
  ///@param lhsOffset The offset into the lhs array where the lhs is stored
  ///@param rhs The float array that holds the right-hand-side matrix.
  ///@param rhsOffset The offset into the rhs array where the rhs is stored.
  ///@throws IllegalArgumentException if result, lhs, or rhs are null, or if
  /// resultOffset + 16 > result.length or lhsOffset + 16 > lhs.length or
  /// rhsOffset + 16 > rhs.length.
  static void multiplyMM(jni.JniObject result, int resultOffset,
          jni.JniObject lhs, int lhsOffset, jni.JniObject rhs, int rhsOffset) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_multiplyMM, jni.JniType.voidType, [
        result.reference,
        resultOffset,
        lhs.reference,
        lhsOffset,
        rhs.reference,
        rhsOffset
      ]).check();

  static final _id_multiplyMV =
      jniAccessors.getStaticMethodIDOf(_classRef, "multiplyMV", "([FI[FI[FI)V");

  /// from: static public native void multiplyMV(float[] resultVec, int resultVecOffset, float[] lhsMat, int lhsMatOffset, float[] rhsVec, int rhsVecOffset)
  ///
  /// Multiplies a 4 element vector by a 4x4 matrix and stores the result in a
  /// 4-element column vector. In matrix notation: result = lhs x rhs
  ///
  /// The same float array may be passed for resultVec, lhsMat, and/or rhsVec.
  /// However, the resultVec element values are undefined if the resultVec
  /// elements overlap either the lhsMat or rhsVec elements.
  ///@param resultVec The float array that holds the result vector.
  ///@param resultVecOffset The offset into the result array where the result
  ///        vector is stored.
  ///@param lhsMat The float array that holds the left-hand-side matrix.
  ///@param lhsMatOffset The offset into the lhs array where the lhs is stored
  ///@param rhsVec The float array that holds the right-hand-side vector.
  ///@param rhsVecOffset The offset into the rhs vector where the rhs vector
  ///        is stored.
  ///@throws IllegalArgumentException if resultVec, lhsMat,
  /// or rhsVec are null, or if resultVecOffset + 4 > resultVec.length
  /// or lhsMatOffset + 16 > lhsMat.length or
  /// rhsVecOffset + 4 > rhsVec.length.
  static void multiplyMV(
          jni.JniObject resultVec,
          int resultVecOffset,
          jni.JniObject lhsMat,
          int lhsMatOffset,
          jni.JniObject rhsVec,
          int rhsVecOffset) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_multiplyMV, jni.JniType.voidType, [
        resultVec.reference,
        resultVecOffset,
        lhsMat.reference,
        lhsMatOffset,
        rhsVec.reference,
        rhsVecOffset
      ]).check();

  static final _id_transposeM =
      jniAccessors.getStaticMethodIDOf(_classRef, "transposeM", "([FI[FI)V");

  /// from: static public void transposeM(float[] mTrans, int mTransOffset, float[] m, int mOffset)
  ///
  /// Transposes a 4 x 4 matrix.
  ///
  /// mTrans and m must not overlap.
  ///@param mTrans the array that holds the output transposed matrix
  ///@param mTransOffset an offset into mTrans where the transposed matrix is
  ///        stored.
  ///@param m the input array
  ///@param mOffset an offset into m where the input matrix is stored.
  static void transposeM(jni.JniObject mTrans, int mTransOffset,
          jni.JniObject m, int mOffset) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_transposeM,
          jni.JniType.voidType,
          [mTrans.reference, mTransOffset, m.reference, mOffset]).check();

  static final _id_invertM =
      jniAccessors.getStaticMethodIDOf(_classRef, "invertM", "([FI[FI)Z");

  /// from: static public boolean invertM(float[] mInv, int mInvOffset, float[] m, int mOffset)
  ///
  /// Inverts a 4 x 4 matrix.
  ///
  /// mInv and m must not overlap.
  ///@param mInv the array that holds the output inverted matrix
  ///@param mInvOffset an offset into mInv where the inverted matrix is
  ///        stored.
  ///@param m the input array
  ///@param mOffset an offset into m where the input matrix is stored.
  ///@return true if the matrix could be inverted, false if it could not.
  static bool invertM(
          jni.JniObject mInv, int mInvOffset, jni.JniObject m, int mOffset) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_invertM,
          jni.JniType.booleanType,
          [mInv.reference, mInvOffset, m.reference, mOffset]).boolean;

  static final _id_orthoM =
      jniAccessors.getStaticMethodIDOf(_classRef, "orthoM", "([FIFFFFFF)V");

  /// from: static public void orthoM(float[] m, int mOffset, float left, float right, float bottom, float top, float near, float far)
  ///
  /// Computes an orthographic projection matrix.
  ///@param m returns the result
  ///@param mOffset
  ///@param left
  ///@param right
  ///@param bottom
  ///@param top
  ///@param near
  ///@param far
  static void orthoM(jni.JniObject m, int mOffset, double left, double right,
          double bottom, double top, double near, double far) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_orthoM,
          jni.JniType.voidType,
          [m.reference, mOffset, left, right, bottom, top, near, far]).check();

  static final _id_frustumM =
      jniAccessors.getStaticMethodIDOf(_classRef, "frustumM", "([FIFFFFFF)V");

  /// from: static public void frustumM(float[] m, int offset, float left, float right, float bottom, float top, float near, float far)
  ///
  /// Defines a projection matrix in terms of six clip planes.
  ///@param m the float array that holds the output perspective matrix
  ///@param offset the offset into float array m where the perspective
  ///        matrix data is written
  ///@param left
  ///@param right
  ///@param bottom
  ///@param top
  ///@param near
  ///@param far
  static void frustumM(jni.JniObject m, int offset, double left, double right,
          double bottom, double top, double near, double far) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_frustumM,
          jni.JniType.voidType,
          [m.reference, offset, left, right, bottom, top, near, far]).check();

  static final _id_perspectiveM =
      jniAccessors.getStaticMethodIDOf(_classRef, "perspectiveM", "([FIFFFF)V");

  /// from: static public void perspectiveM(float[] m, int offset, float fovy, float aspect, float zNear, float zFar)
  ///
  /// Defines a projection matrix in terms of a field of view angle, an
  /// aspect ratio, and z clip planes.
  ///@param m the float array that holds the perspective matrix
  ///@param offset the offset into float array m where the perspective
  ///        matrix data is written
  ///@param fovy field of view in y direction, in degrees
  ///@param aspect width to height aspect ratio of the viewport
  ///@param zNear
  ///@param zFar
  static void perspectiveM(jni.JniObject m, int offset, double fovy,
          double aspect, double zNear, double zFar) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_perspectiveM,
          jni.JniType.voidType,
          [m.reference, offset, fovy, aspect, zNear, zFar]).check();

  static final _id_length =
      jniAccessors.getStaticMethodIDOf(_classRef, "length", "(FFF)F");

  /// from: static public float length(float x, float y, float z)
  ///
  /// Computes the length of a vector.
  ///@param x x coordinate of a vector
  ///@param y y coordinate of a vector
  ///@param z z coordinate of a vector
  ///@return the length of a vector
  static double length(double x, double y, double z) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_length, jni.JniType.floatType, [x, y, z]).float;

  static final _id_setIdentityM =
      jniAccessors.getStaticMethodIDOf(_classRef, "setIdentityM", "([FI)V");

  /// from: static public void setIdentityM(float[] sm, int smOffset)
  ///
  /// Sets matrix m to the identity matrix.
  ///@param sm returns the result
  ///@param smOffset index into sm where the result matrix starts
  static void setIdentityM(jni.JniObject sm, int smOffset) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_setIdentityM,
          jni.JniType.voidType, [sm.reference, smOffset]).check();

  static final _id_scaleM =
      jniAccessors.getStaticMethodIDOf(_classRef, "scaleM", "([FI[FIFFF)V");

  /// from: static public void scaleM(float[] sm, int smOffset, float[] m, int mOffset, float x, float y, float z)
  ///
  /// Scales matrix m by x, y, and z, putting the result in sm.
  ///
  /// m and sm must not overlap.
  ///@param sm returns the result
  ///@param smOffset index into sm where the result matrix starts
  ///@param m source matrix
  ///@param mOffset index into m where the source matrix starts
  ///@param x scale factor x
  ///@param y scale factor y
  ///@param z scale factor z
  static void scaleM(jni.JniObject sm, int smOffset, jni.JniObject m,
          int mOffset, double x, double y, double z) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_scaleM,
          jni.JniType.voidType,
          [sm.reference, smOffset, m.reference, mOffset, x, y, z]).check();

  static final _id_scaleM1 =
      jniAccessors.getStaticMethodIDOf(_classRef, "scaleM", "([FIFFF)V");

  /// from: static public void scaleM(float[] m, int mOffset, float x, float y, float z)
  ///
  /// Scales matrix m in place by sx, sy, and sz.
  ///@param m matrix to scale
  ///@param mOffset index into m where the matrix starts
  ///@param x scale factor x
  ///@param y scale factor y
  ///@param z scale factor z
  static void scaleM1(
          jni.JniObject m, int mOffset, double x, double y, double z) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_scaleM1,
          jni.JniType.voidType, [m.reference, mOffset, x, y, z]).check();

  static final _id_translateM =
      jniAccessors.getStaticMethodIDOf(_classRef, "translateM", "([FI[FIFFF)V");

  /// from: static public void translateM(float[] tm, int tmOffset, float[] m, int mOffset, float x, float y, float z)
  ///
  /// Translates matrix m by x, y, and z, putting the result in tm.
  ///
  /// m and tm must not overlap.
  ///@param tm returns the result
  ///@param tmOffset index into sm where the result matrix starts
  ///@param m source matrix
  ///@param mOffset index into m where the source matrix starts
  ///@param x translation factor x
  ///@param y translation factor y
  ///@param z translation factor z
  static void translateM(jni.JniObject tm, int tmOffset, jni.JniObject m,
          int mOffset, double x, double y, double z) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_translateM,
          jni.JniType.voidType,
          [tm.reference, tmOffset, m.reference, mOffset, x, y, z]).check();

  static final _id_translateM1 =
      jniAccessors.getStaticMethodIDOf(_classRef, "translateM", "([FIFFF)V");

  /// from: static public void translateM(float[] m, int mOffset, float x, float y, float z)
  ///
  /// Translates matrix m by x, y, and z in place.
  ///@param m matrix
  ///@param mOffset index into m where the matrix starts
  ///@param x translation factor x
  ///@param y translation factor y
  ///@param z translation factor z
  static void translateM1(
          jni.JniObject m, int mOffset, double x, double y, double z) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_translateM1,
          jni.JniType.voidType, [m.reference, mOffset, x, y, z]).check();

  static final _id_rotateM =
      jniAccessors.getStaticMethodIDOf(_classRef, "rotateM", "([FI[FIFFFF)V");

  /// from: static public void rotateM(float[] rm, int rmOffset, float[] m, int mOffset, float a, float x, float y, float z)
  ///
  /// Rotates matrix m by angle a (in degrees) around the axis (x, y, z).
  ///
  /// m and rm must not overlap.
  ///@param rm returns the result
  ///@param rmOffset index into rm where the result matrix starts
  ///@param m source matrix
  ///@param mOffset index into m where the source matrix starts
  ///@param a angle to rotate in degrees
  ///@param x X axis component
  ///@param y Y axis component
  ///@param z Z axis component
  static void rotateM(jni.JniObject rm, int rmOffset, jni.JniObject m,
          int mOffset, double a, double x, double y, double z) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef,
          _id_rotateM,
          jni.JniType.voidType,
          [rm.reference, rmOffset, m.reference, mOffset, a, x, y, z]).check();

  static final _id_rotateM1 =
      jniAccessors.getStaticMethodIDOf(_classRef, "rotateM", "([FIFFFF)V");

  /// from: static public void rotateM(float[] m, int mOffset, float a, float x, float y, float z)
  ///
  /// Rotates matrix m in place by angle a (in degrees)
  /// around the axis (x, y, z).
  ///@param m source matrix
  ///@param mOffset index into m where the matrix starts
  ///@param a angle to rotate in degrees
  ///@param x X axis component
  ///@param y Y axis component
  ///@param z Z axis component
  static void rotateM1(jni.JniObject m, int mOffset, double a, double x,
          double y, double z) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_rotateM1,
          jni.JniType.voidType, [m.reference, mOffset, a, x, y, z]).check();

  static final _id_setRotateM =
      jniAccessors.getStaticMethodIDOf(_classRef, "setRotateM", "([FIFFFF)V");

  /// from: static public void setRotateM(float[] rm, int rmOffset, float a, float x, float y, float z)
  ///
  /// Creates a matrix for rotation by angle a (in degrees)
  /// around the axis (x, y, z).
  ///
  /// An optimized path will be used for rotation about a major axis
  /// (e.g. x=1.0f y=0.0f z=0.0f).
  ///@param rm returns the result
  ///@param rmOffset index into rm where the result matrix starts
  ///@param a angle to rotate in degrees
  ///@param x X axis component
  ///@param y Y axis component
  ///@param z Z axis component
  static void setRotateM(jni.JniObject rm, int rmOffset, double a, double x,
          double y, double z) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_setRotateM,
          jni.JniType.voidType, [rm.reference, rmOffset, a, x, y, z]).check();

  static final _id_setRotateEulerM = jniAccessors.getStaticMethodIDOf(
      _classRef, "setRotateEulerM", "([FIFFF)V");

  /// from: static public void setRotateEulerM(float[] rm, int rmOffset, float x, float y, float z)
  ///
  /// Converts Euler angles to a rotation matrix.
  ///@param rm returns the result
  ///@param rmOffset index into rm where the result matrix starts
  ///@param x angle of rotation, in degrees
  ///@param y angle of rotation, in degrees
  ///@param z angle of rotation, in degrees
  static void setRotateEulerM(
          jni.JniObject rm, int rmOffset, double x, double y, double z) =>
      jniAccessors.callStaticMethodWithArgs(_classRef, _id_setRotateEulerM,
          jni.JniType.voidType, [rm.reference, rmOffset, x, y, z]).check();

  static final _id_setLookAtM = jniAccessors.getStaticMethodIDOf(
      _classRef, "setLookAtM", "([FIFFFFFFFFF)V");

  /// from: static public void setLookAtM(float[] rm, int rmOffset, float eyeX, float eyeY, float eyeZ, float centerX, float centerY, float centerZ, float upX, float upY, float upZ)
  ///
  /// Defines a viewing transformation in terms of an eye point, a center of
  /// view, and an up vector.
  ///@param rm returns the result
  ///@param rmOffset index into rm where the result matrix starts
  ///@param eyeX eye point X
  ///@param eyeY eye point Y
  ///@param eyeZ eye point Z
  ///@param centerX center of view X
  ///@param centerY center of view Y
  ///@param centerZ center of view Z
  ///@param upX up vector X
  ///@param upY up vector Y
  ///@param upZ up vector Z
  static void setLookAtM(
          jni.JniObject rm,
          int rmOffset,
          double eyeX,
          double eyeY,
          double eyeZ,
          double centerX,
          double centerY,
          double centerZ,
          double upX,
          double upY,
          double upZ) =>
      jniAccessors.callStaticMethodWithArgs(
          _classRef, _id_setLookAtM, jni.JniType.voidType, [
        rm.reference,
        rmOffset,
        eyeX,
        eyeY,
        eyeZ,
        centerX,
        centerY,
        centerZ,
        upX,
        upY,
        upZ
      ]).check();
}
