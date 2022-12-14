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

import "BaseObj.dart" as baseobj_;

import "Float2.dart" as float2_;

import "Float3.dart" as float3_;

import "Float4.dart" as float4_;

import "Double2.dart" as double2_;

import "Double3.dart" as double3_;

import "Double4.dart" as double4_;

import "Byte2.dart" as byte2_;

import "Byte3.dart" as byte3_;

import "Byte4.dart" as byte4_;

import "Short2.dart" as short2_;

import "Short3.dart" as short3_;

import "Short4.dart" as short4_;

import "Int2.dart" as int2_;

import "Int3.dart" as int3_;

import "Int4.dart" as int4_;

import "Long2.dart" as long2_;

import "Long3.dart" as long3_;

import "Long4.dart" as long4_;

import "Matrix4f.dart" as matrix4f_;

import "Matrix3f.dart" as matrix3f_;

import "Matrix2f.dart" as matrix2f_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.renderscript.FieldPacker
///
/// Utility class for packing arguments and structures from Android system objects to
/// RenderScript objects.
///
/// This class is only intended to be used to support the
/// reflected code generated by the RS tool chain.  It should not
/// be called directly.
class FieldPacker extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/FieldPacker");
  FieldPacker.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "(I)V");

  /// from: public void <init>(int len)
  /// The returned object must be deleted after use, by calling the `delete` method.
  FieldPacker(int len)
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, [len]).object);

  static final _id_ctor1 =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "([B)V");

  /// from: public void <init>(byte[] data)
  /// The returned object must be deleted after use, by calling the `delete` method.
  FieldPacker.ctor1(jni.JniObject data)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor1, [data.reference]).object);

  static final _id_align =
      jniAccessors.getMethodIDOf(_classRef, "align", "(I)V");

  /// from: public void align(int v)
  void align(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_align, jni.JniType.voidType, [v]).check();

  static final _id_subalign =
      jniAccessors.getMethodIDOf(_classRef, "subalign", "(I)V");

  /// from: public void subalign(int v)
  void subalign(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_subalign, jni.JniType.voidType, [v]).check();

  static final _id_reset =
      jniAccessors.getMethodIDOf(_classRef, "reset", "()V");

  /// from: public void reset()
  void reset() => jniAccessors.callMethodWithArgs(
      reference, _id_reset, jni.JniType.voidType, []).check();

  static final _id_reset1 =
      jniAccessors.getMethodIDOf(_classRef, "reset", "(I)V");

  /// from: public void reset(int i)
  void reset1(int i) => jniAccessors.callMethodWithArgs(
      reference, _id_reset1, jni.JniType.voidType, [i]).check();

  static final _id_skip = jniAccessors.getMethodIDOf(_classRef, "skip", "(I)V");

  /// from: public void skip(int i)
  void skip(int i) => jniAccessors.callMethodWithArgs(
      reference, _id_skip, jni.JniType.voidType, [i]).check();

  static final _id_addI8 =
      jniAccessors.getMethodIDOf(_classRef, "addI8", "(B)V");

  /// from: public void addI8(byte v)
  void addI8(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI8, jni.JniType.voidType, [v]).check();

  static final _id_subI8 =
      jniAccessors.getMethodIDOf(_classRef, "subI8", "()B");

  /// from: public byte subI8()
  int subI8() => jniAccessors
      .callMethodWithArgs(reference, _id_subI8, jni.JniType.byteType, []).byte;

  static final _id_addI16 =
      jniAccessors.getMethodIDOf(_classRef, "addI16", "(S)V");

  /// from: public void addI16(short v)
  void addI16(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI16, jni.JniType.voidType, [v]).check();

  static final _id_subI16 =
      jniAccessors.getMethodIDOf(_classRef, "subI16", "()S");

  /// from: public short subI16()
  int subI16() => jniAccessors.callMethodWithArgs(
      reference, _id_subI16, jni.JniType.shortType, []).short;

  static final _id_addI32 =
      jniAccessors.getMethodIDOf(_classRef, "addI32", "(I)V");

  /// from: public void addI32(int v)
  void addI32(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI32, jni.JniType.voidType, [v]).check();

  static final _id_subI32 =
      jniAccessors.getMethodIDOf(_classRef, "subI32", "()I");

  /// from: public int subI32()
  int subI32() => jniAccessors.callMethodWithArgs(
      reference, _id_subI32, jni.JniType.intType, []).integer;

  static final _id_addI64 =
      jniAccessors.getMethodIDOf(_classRef, "addI64", "(J)V");

  /// from: public void addI64(long v)
  void addI64(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI64, jni.JniType.voidType, [v]).check();

  static final _id_subI64 =
      jniAccessors.getMethodIDOf(_classRef, "subI64", "()J");

  /// from: public long subI64()
  int subI64() => jniAccessors
      .callMethodWithArgs(reference, _id_subI64, jni.JniType.longType, []).long;

  static final _id_addU8 =
      jniAccessors.getMethodIDOf(_classRef, "addU8", "(S)V");

  /// from: public void addU8(short v)
  void addU8(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU8, jni.JniType.voidType, [v]).check();

  static final _id_addU16 =
      jniAccessors.getMethodIDOf(_classRef, "addU16", "(I)V");

  /// from: public void addU16(int v)
  void addU16(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU16, jni.JniType.voidType, [v]).check();

  static final _id_addU32 =
      jniAccessors.getMethodIDOf(_classRef, "addU32", "(J)V");

  /// from: public void addU32(long v)
  void addU32(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU32, jni.JniType.voidType, [v]).check();

  static final _id_addU64 =
      jniAccessors.getMethodIDOf(_classRef, "addU64", "(J)V");

  /// from: public void addU64(long v)
  void addU64(int v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU64, jni.JniType.voidType, [v]).check();

  static final _id_addF32 =
      jniAccessors.getMethodIDOf(_classRef, "addF32", "(F)V");

  /// from: public void addF32(float v)
  void addF32(double v) => jniAccessors.callMethodWithArgs(
      reference, _id_addF32, jni.JniType.voidType, [v]).check();

  static final _id_subF32 =
      jniAccessors.getMethodIDOf(_classRef, "subF32", "()F");

  /// from: public float subF32()
  double subF32() => jniAccessors.callMethodWithArgs(
      reference, _id_subF32, jni.JniType.floatType, []).float;

  static final _id_addF64 =
      jniAccessors.getMethodIDOf(_classRef, "addF64", "(D)V");

  /// from: public void addF64(double v)
  void addF64(double v) => jniAccessors.callMethodWithArgs(
      reference, _id_addF64, jni.JniType.voidType, [v]).check();

  static final _id_subF64 =
      jniAccessors.getMethodIDOf(_classRef, "subF64", "()D");

  /// from: public double subF64()
  double subF64() => jniAccessors.callMethodWithArgs(
      reference, _id_subF64, jni.JniType.doubleType, []).doubleFloat;

  static final _id_addObj = jniAccessors.getMethodIDOf(
      _classRef, "addObj", "(Landroid/renderscript/BaseObj;)V");

  /// from: public void addObj(android.renderscript.BaseObj obj)
  void addObj(baseobj_.BaseObj obj) => jniAccessors.callMethodWithArgs(
      reference, _id_addObj, jni.JniType.voidType, [obj.reference]).check();

  static final _id_addF321 = jniAccessors.getMethodIDOf(
      _classRef, "addF32", "(Landroid/renderscript/Float2;)V");

  /// from: public void addF32(android.renderscript.Float2 v)
  void addF321(float2_.Float2 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addF321, jni.JniType.voidType, [v.reference]).check();

  static final _id_addF322 = jniAccessors.getMethodIDOf(
      _classRef, "addF32", "(Landroid/renderscript/Float3;)V");

  /// from: public void addF32(android.renderscript.Float3 v)
  void addF322(float3_.Float3 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addF322, jni.JniType.voidType, [v.reference]).check();

  static final _id_addF323 = jniAccessors.getMethodIDOf(
      _classRef, "addF32", "(Landroid/renderscript/Float4;)V");

  /// from: public void addF32(android.renderscript.Float4 v)
  void addF323(float4_.Float4 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addF323, jni.JniType.voidType, [v.reference]).check();

  static final _id_addF641 = jniAccessors.getMethodIDOf(
      _classRef, "addF64", "(Landroid/renderscript/Double2;)V");

  /// from: public void addF64(android.renderscript.Double2 v)
  void addF641(double2_.Double2 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addF641, jni.JniType.voidType, [v.reference]).check();

  static final _id_addF642 = jniAccessors.getMethodIDOf(
      _classRef, "addF64", "(Landroid/renderscript/Double3;)V");

  /// from: public void addF64(android.renderscript.Double3 v)
  void addF642(double3_.Double3 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addF642, jni.JniType.voidType, [v.reference]).check();

  static final _id_addF643 = jniAccessors.getMethodIDOf(
      _classRef, "addF64", "(Landroid/renderscript/Double4;)V");

  /// from: public void addF64(android.renderscript.Double4 v)
  void addF643(double4_.Double4 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addF643, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI81 = jniAccessors.getMethodIDOf(
      _classRef, "addI8", "(Landroid/renderscript/Byte2;)V");

  /// from: public void addI8(android.renderscript.Byte2 v)
  void addI81(byte2_.Byte2 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI81, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI82 = jniAccessors.getMethodIDOf(
      _classRef, "addI8", "(Landroid/renderscript/Byte3;)V");

  /// from: public void addI8(android.renderscript.Byte3 v)
  void addI82(byte3_.Byte3 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI82, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI83 = jniAccessors.getMethodIDOf(
      _classRef, "addI8", "(Landroid/renderscript/Byte4;)V");

  /// from: public void addI8(android.renderscript.Byte4 v)
  void addI83(byte4_.Byte4 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI83, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU81 = jniAccessors.getMethodIDOf(
      _classRef, "addU8", "(Landroid/renderscript/Short2;)V");

  /// from: public void addU8(android.renderscript.Short2 v)
  void addU81(short2_.Short2 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU81, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU82 = jniAccessors.getMethodIDOf(
      _classRef, "addU8", "(Landroid/renderscript/Short3;)V");

  /// from: public void addU8(android.renderscript.Short3 v)
  void addU82(short3_.Short3 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU82, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU83 = jniAccessors.getMethodIDOf(
      _classRef, "addU8", "(Landroid/renderscript/Short4;)V");

  /// from: public void addU8(android.renderscript.Short4 v)
  void addU83(short4_.Short4 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU83, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI161 = jniAccessors.getMethodIDOf(
      _classRef, "addI16", "(Landroid/renderscript/Short2;)V");

  /// from: public void addI16(android.renderscript.Short2 v)
  void addI161(short2_.Short2 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI161, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI162 = jniAccessors.getMethodIDOf(
      _classRef, "addI16", "(Landroid/renderscript/Short3;)V");

  /// from: public void addI16(android.renderscript.Short3 v)
  void addI162(short3_.Short3 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI162, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI163 = jniAccessors.getMethodIDOf(
      _classRef, "addI16", "(Landroid/renderscript/Short4;)V");

  /// from: public void addI16(android.renderscript.Short4 v)
  void addI163(short4_.Short4 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI163, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU161 = jniAccessors.getMethodIDOf(
      _classRef, "addU16", "(Landroid/renderscript/Int2;)V");

  /// from: public void addU16(android.renderscript.Int2 v)
  void addU161(int2_.Int2 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU161, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU162 = jniAccessors.getMethodIDOf(
      _classRef, "addU16", "(Landroid/renderscript/Int3;)V");

  /// from: public void addU16(android.renderscript.Int3 v)
  void addU162(int3_.Int3 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU162, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU163 = jniAccessors.getMethodIDOf(
      _classRef, "addU16", "(Landroid/renderscript/Int4;)V");

  /// from: public void addU16(android.renderscript.Int4 v)
  void addU163(int4_.Int4 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU163, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI321 = jniAccessors.getMethodIDOf(
      _classRef, "addI32", "(Landroid/renderscript/Int2;)V");

  /// from: public void addI32(android.renderscript.Int2 v)
  void addI321(int2_.Int2 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI321, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI322 = jniAccessors.getMethodIDOf(
      _classRef, "addI32", "(Landroid/renderscript/Int3;)V");

  /// from: public void addI32(android.renderscript.Int3 v)
  void addI322(int3_.Int3 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI322, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI323 = jniAccessors.getMethodIDOf(
      _classRef, "addI32", "(Landroid/renderscript/Int4;)V");

  /// from: public void addI32(android.renderscript.Int4 v)
  void addI323(int4_.Int4 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI323, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU321 = jniAccessors.getMethodIDOf(
      _classRef, "addU32", "(Landroid/renderscript/Long2;)V");

  /// from: public void addU32(android.renderscript.Long2 v)
  void addU321(long2_.Long2 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU321, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU322 = jniAccessors.getMethodIDOf(
      _classRef, "addU32", "(Landroid/renderscript/Long3;)V");

  /// from: public void addU32(android.renderscript.Long3 v)
  void addU322(long3_.Long3 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU322, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU323 = jniAccessors.getMethodIDOf(
      _classRef, "addU32", "(Landroid/renderscript/Long4;)V");

  /// from: public void addU32(android.renderscript.Long4 v)
  void addU323(long4_.Long4 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU323, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI641 = jniAccessors.getMethodIDOf(
      _classRef, "addI64", "(Landroid/renderscript/Long2;)V");

  /// from: public void addI64(android.renderscript.Long2 v)
  void addI641(long2_.Long2 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI641, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI642 = jniAccessors.getMethodIDOf(
      _classRef, "addI64", "(Landroid/renderscript/Long3;)V");

  /// from: public void addI64(android.renderscript.Long3 v)
  void addI642(long3_.Long3 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI642, jni.JniType.voidType, [v.reference]).check();

  static final _id_addI643 = jniAccessors.getMethodIDOf(
      _classRef, "addI64", "(Landroid/renderscript/Long4;)V");

  /// from: public void addI64(android.renderscript.Long4 v)
  void addI643(long4_.Long4 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addI643, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU641 = jniAccessors.getMethodIDOf(
      _classRef, "addU64", "(Landroid/renderscript/Long2;)V");

  /// from: public void addU64(android.renderscript.Long2 v)
  void addU641(long2_.Long2 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU641, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU642 = jniAccessors.getMethodIDOf(
      _classRef, "addU64", "(Landroid/renderscript/Long3;)V");

  /// from: public void addU64(android.renderscript.Long3 v)
  void addU642(long3_.Long3 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU642, jni.JniType.voidType, [v.reference]).check();

  static final _id_addU643 = jniAccessors.getMethodIDOf(
      _classRef, "addU64", "(Landroid/renderscript/Long4;)V");

  /// from: public void addU64(android.renderscript.Long4 v)
  void addU643(long4_.Long4 v) => jniAccessors.callMethodWithArgs(
      reference, _id_addU643, jni.JniType.voidType, [v.reference]).check();

  static final _id_subFloat2 = jniAccessors.getMethodIDOf(
      _classRef, "subFloat2", "()Landroid/renderscript/Float2;");

  /// from: public android.renderscript.Float2 subFloat2()
  /// The returned object must be deleted after use, by calling the `delete` method.
  float2_.Float2 subFloat2() =>
      float2_.Float2.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subFloat2, jni.JniType.objectType, []).object);

  static final _id_subFloat3 = jniAccessors.getMethodIDOf(
      _classRef, "subFloat3", "()Landroid/renderscript/Float3;");

  /// from: public android.renderscript.Float3 subFloat3()
  /// The returned object must be deleted after use, by calling the `delete` method.
  float3_.Float3 subFloat3() =>
      float3_.Float3.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subFloat3, jni.JniType.objectType, []).object);

  static final _id_subFloat4 = jniAccessors.getMethodIDOf(
      _classRef, "subFloat4", "()Landroid/renderscript/Float4;");

  /// from: public android.renderscript.Float4 subFloat4()
  /// The returned object must be deleted after use, by calling the `delete` method.
  float4_.Float4 subFloat4() =>
      float4_.Float4.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subFloat4, jni.JniType.objectType, []).object);

  static final _id_subDouble2 = jniAccessors.getMethodIDOf(
      _classRef, "subDouble2", "()Landroid/renderscript/Double2;");

  /// from: public android.renderscript.Double2 subDouble2()
  /// The returned object must be deleted after use, by calling the `delete` method.
  double2_.Double2 subDouble2() =>
      double2_.Double2.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subDouble2, jni.JniType.objectType, []).object);

  static final _id_subDouble3 = jniAccessors.getMethodIDOf(
      _classRef, "subDouble3", "()Landroid/renderscript/Double3;");

  /// from: public android.renderscript.Double3 subDouble3()
  /// The returned object must be deleted after use, by calling the `delete` method.
  double3_.Double3 subDouble3() =>
      double3_.Double3.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subDouble3, jni.JniType.objectType, []).object);

  static final _id_subDouble4 = jniAccessors.getMethodIDOf(
      _classRef, "subDouble4", "()Landroid/renderscript/Double4;");

  /// from: public android.renderscript.Double4 subDouble4()
  /// The returned object must be deleted after use, by calling the `delete` method.
  double4_.Double4 subDouble4() =>
      double4_.Double4.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subDouble4, jni.JniType.objectType, []).object);

  static final _id_subByte2 = jniAccessors.getMethodIDOf(
      _classRef, "subByte2", "()Landroid/renderscript/Byte2;");

  /// from: public android.renderscript.Byte2 subByte2()
  /// The returned object must be deleted after use, by calling the `delete` method.
  byte2_.Byte2 subByte2() =>
      byte2_.Byte2.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subByte2, jni.JniType.objectType, []).object);

  static final _id_subByte3 = jniAccessors.getMethodIDOf(
      _classRef, "subByte3", "()Landroid/renderscript/Byte3;");

  /// from: public android.renderscript.Byte3 subByte3()
  /// The returned object must be deleted after use, by calling the `delete` method.
  byte3_.Byte3 subByte3() =>
      byte3_.Byte3.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subByte3, jni.JniType.objectType, []).object);

  static final _id_subByte4 = jniAccessors.getMethodIDOf(
      _classRef, "subByte4", "()Landroid/renderscript/Byte4;");

  /// from: public android.renderscript.Byte4 subByte4()
  /// The returned object must be deleted after use, by calling the `delete` method.
  byte4_.Byte4 subByte4() =>
      byte4_.Byte4.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subByte4, jni.JniType.objectType, []).object);

  static final _id_subShort2 = jniAccessors.getMethodIDOf(
      _classRef, "subShort2", "()Landroid/renderscript/Short2;");

  /// from: public android.renderscript.Short2 subShort2()
  /// The returned object must be deleted after use, by calling the `delete` method.
  short2_.Short2 subShort2() =>
      short2_.Short2.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subShort2, jni.JniType.objectType, []).object);

  static final _id_subShort3 = jniAccessors.getMethodIDOf(
      _classRef, "subShort3", "()Landroid/renderscript/Short3;");

  /// from: public android.renderscript.Short3 subShort3()
  /// The returned object must be deleted after use, by calling the `delete` method.
  short3_.Short3 subShort3() =>
      short3_.Short3.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subShort3, jni.JniType.objectType, []).object);

  static final _id_subShort4 = jniAccessors.getMethodIDOf(
      _classRef, "subShort4", "()Landroid/renderscript/Short4;");

  /// from: public android.renderscript.Short4 subShort4()
  /// The returned object must be deleted after use, by calling the `delete` method.
  short4_.Short4 subShort4() =>
      short4_.Short4.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subShort4, jni.JniType.objectType, []).object);

  static final _id_subInt2 = jniAccessors.getMethodIDOf(
      _classRef, "subInt2", "()Landroid/renderscript/Int2;");

  /// from: public android.renderscript.Int2 subInt2()
  /// The returned object must be deleted after use, by calling the `delete` method.
  int2_.Int2 subInt2() => int2_.Int2.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_subInt2, jni.JniType.objectType, []).object);

  static final _id_subInt3 = jniAccessors.getMethodIDOf(
      _classRef, "subInt3", "()Landroid/renderscript/Int3;");

  /// from: public android.renderscript.Int3 subInt3()
  /// The returned object must be deleted after use, by calling the `delete` method.
  int3_.Int3 subInt3() => int3_.Int3.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_subInt3, jni.JniType.objectType, []).object);

  static final _id_subInt4 = jniAccessors.getMethodIDOf(
      _classRef, "subInt4", "()Landroid/renderscript/Int4;");

  /// from: public android.renderscript.Int4 subInt4()
  /// The returned object must be deleted after use, by calling the `delete` method.
  int4_.Int4 subInt4() => int4_.Int4.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_subInt4, jni.JniType.objectType, []).object);

  static final _id_subLong2 = jniAccessors.getMethodIDOf(
      _classRef, "subLong2", "()Landroid/renderscript/Long2;");

  /// from: public android.renderscript.Long2 subLong2()
  /// The returned object must be deleted after use, by calling the `delete` method.
  long2_.Long2 subLong2() =>
      long2_.Long2.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subLong2, jni.JniType.objectType, []).object);

  static final _id_subLong3 = jniAccessors.getMethodIDOf(
      _classRef, "subLong3", "()Landroid/renderscript/Long3;");

  /// from: public android.renderscript.Long3 subLong3()
  /// The returned object must be deleted after use, by calling the `delete` method.
  long3_.Long3 subLong3() =>
      long3_.Long3.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subLong3, jni.JniType.objectType, []).object);

  static final _id_subLong4 = jniAccessors.getMethodIDOf(
      _classRef, "subLong4", "()Landroid/renderscript/Long4;");

  /// from: public android.renderscript.Long4 subLong4()
  /// The returned object must be deleted after use, by calling the `delete` method.
  long4_.Long4 subLong4() =>
      long4_.Long4.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subLong4, jni.JniType.objectType, []).object);

  static final _id_addMatrix = jniAccessors.getMethodIDOf(
      _classRef, "addMatrix", "(Landroid/renderscript/Matrix4f;)V");

  /// from: public void addMatrix(android.renderscript.Matrix4f v)
  void addMatrix(matrix4f_.Matrix4f v) => jniAccessors.callMethodWithArgs(
      reference, _id_addMatrix, jni.JniType.voidType, [v.reference]).check();

  static final _id_subMatrix4f = jniAccessors.getMethodIDOf(
      _classRef, "subMatrix4f", "()Landroid/renderscript/Matrix4f;");

  /// from: public android.renderscript.Matrix4f subMatrix4f()
  /// The returned object must be deleted after use, by calling the `delete` method.
  matrix4f_.Matrix4f subMatrix4f() =>
      matrix4f_.Matrix4f.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subMatrix4f, jni.JniType.objectType, []).object);

  static final _id_addMatrix1 = jniAccessors.getMethodIDOf(
      _classRef, "addMatrix", "(Landroid/renderscript/Matrix3f;)V");

  /// from: public void addMatrix(android.renderscript.Matrix3f v)
  void addMatrix1(matrix3f_.Matrix3f v) => jniAccessors.callMethodWithArgs(
      reference, _id_addMatrix1, jni.JniType.voidType, [v.reference]).check();

  static final _id_subMatrix3f = jniAccessors.getMethodIDOf(
      _classRef, "subMatrix3f", "()Landroid/renderscript/Matrix3f;");

  /// from: public android.renderscript.Matrix3f subMatrix3f()
  /// The returned object must be deleted after use, by calling the `delete` method.
  matrix3f_.Matrix3f subMatrix3f() =>
      matrix3f_.Matrix3f.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subMatrix3f, jni.JniType.objectType, []).object);

  static final _id_addMatrix2 = jniAccessors.getMethodIDOf(
      _classRef, "addMatrix", "(Landroid/renderscript/Matrix2f;)V");

  /// from: public void addMatrix(android.renderscript.Matrix2f v)
  void addMatrix2(matrix2f_.Matrix2f v) => jniAccessors.callMethodWithArgs(
      reference, _id_addMatrix2, jni.JniType.voidType, [v.reference]).check();

  static final _id_subMatrix2f = jniAccessors.getMethodIDOf(
      _classRef, "subMatrix2f", "()Landroid/renderscript/Matrix2f;");

  /// from: public android.renderscript.Matrix2f subMatrix2f()
  /// The returned object must be deleted after use, by calling the `delete` method.
  matrix2f_.Matrix2f subMatrix2f() =>
      matrix2f_.Matrix2f.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_subMatrix2f, jni.JniType.objectType, []).object);

  static final _id_addBoolean =
      jniAccessors.getMethodIDOf(_classRef, "addBoolean", "(Z)V");

  /// from: public void addBoolean(boolean v)
  void addBoolean(bool v) => jniAccessors.callMethodWithArgs(
      reference, _id_addBoolean, jni.JniType.voidType, [v]).check();

  static final _id_subBoolean =
      jniAccessors.getMethodIDOf(_classRef, "subBoolean", "()Z");

  /// from: public boolean subBoolean()
  bool subBoolean() => jniAccessors.callMethodWithArgs(
      reference, _id_subBoolean, jni.JniType.booleanType, []).boolean;

  static final _id_getData =
      jniAccessors.getMethodIDOf(_classRef, "getData", "()[B");

  /// from: public final byte[] getData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JniObject getData() =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getData, jni.JniType.objectType, []).object);
}
