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

import "Script.dart" as script_;

import "Allocation.dart" as allocation_;

import "RenderScript.dart" as renderscript_;

import "Type.dart" as type_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.renderscript.ScriptGroup
///
/// A group of kernels that are executed
/// together with one execution call as if they were a single kernel
///
/// In addition to kernels, a script group may contain invocable functions as well.
/// A script group may take inputs and generate outputs, which are consumed and
/// produced by its member kernels.
/// Inside a script group, outputs from one kernel can be passed to another kernel as inputs.
/// The API disallows cyclic dependencies among kernels in a script group,
/// effectively making it a directed acyclic graph (DAG) of kernels.
///
/// Grouping kernels together allows for more efficient execution. For example,
/// runtime and compiler optimization can be applied to reduce computation and
/// communication overhead, and to make better use of the CPU and the GPU.
class ScriptGroup extends baseobj_.BaseObj {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/ScriptGroup");
  ScriptGroup.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_execute = jniAccessors.getMethodIDOf(
      _classRef, "execute", "([Ljava/lang/Object;)[Ljava/lang/Object;");

  /// from: public java.lang.Object[] execute(java.lang.Object[] inputs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Executes a script group
  ///@param inputs Values for inputs to the script group, in the order as the
  ///        inputs are added via Builder2\#addInput.
  ///@return Outputs of the script group as an array of objects, in the order
  ///         as futures are passed to Builder2\#create.
  jni.JniObject execute(jni.JniObject inputs) =>
      jni.JniObject.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_execute, jni.JniType.objectType, [inputs.reference]).object);

  static final _id_setInput = jniAccessors.getMethodIDOf(_classRef, "setInput",
      "(Landroid/renderscript/Script\$KernelID;Landroid/renderscript/Allocation;)V");

  /// from: public void setInput(android.renderscript.Script.KernelID s, android.renderscript.Allocation a)
  ///
  /// Sets an input of the ScriptGroup. This specifies an
  /// Allocation to be used for kernels that require an input
  /// Allocation provided from outside of the ScriptGroup.
  ///@deprecated Set arguments to \#execute(Object...) instead.
  ///@param s The ID of the kernel where the allocation should be
  ///          connected.
  ///@param a The allocation to connect.
  void setInput(script_.Script_KernelID s, allocation_.Allocation a) =>
      jniAccessors.callMethodWithArgs(reference, _id_setInput,
          jni.JniType.voidType, [s.reference, a.reference]).check();

  static final _id_setOutput = jniAccessors.getMethodIDOf(
      _classRef,
      "setOutput",
      "(Landroid/renderscript/Script\$KernelID;Landroid/renderscript/Allocation;)V");

  /// from: public void setOutput(android.renderscript.Script.KernelID s, android.renderscript.Allocation a)
  ///
  /// Sets an output of the ScriptGroup. This specifies an
  /// Allocation to be used for the kernels that require an output
  /// Allocation visible after the ScriptGroup is executed.
  ///@deprecated Use return value of \#execute(Object...) instead.
  ///@param s The ID of the kernel where the allocation should be
  ///          connected.
  ///@param a The allocation to connect.
  void setOutput(script_.Script_KernelID s, allocation_.Allocation a) =>
      jniAccessors.callMethodWithArgs(reference, _id_setOutput,
          jni.JniType.voidType, [s.reference, a.reference]).check();

  static final _id_execute1 =
      jniAccessors.getMethodIDOf(_classRef, "execute", "()V");

  /// from: public void execute()
  ///
  /// Execute the ScriptGroup.  This will run all the kernels in
  /// the ScriptGroup.  No internal connection results will be visible
  /// after execution of the ScriptGroup.
  ///@deprecated Use \#execute instead.
  void execute1() => jniAccessors.callMethodWithArgs(
      reference, _id_execute1, jni.JniType.voidType, []).check();

  static final _id_destroy =
      jniAccessors.getMethodIDOf(_classRef, "destroy", "()V");

  /// from: public void destroy()
  ///
  /// Destroy this ScriptGroup and all Closures in it
  void destroy() => jniAccessors.callMethodWithArgs(
      reference, _id_destroy, jni.JniType.voidType, []).check();
}

/// from: android.renderscript.ScriptGroup$Input
///
/// An opaque class for script group inputs
///
/// Created by calling the Builder2\#addInput method. The value
/// is assigned in ScriptGroup\#execute(Object...) method as
/// one of its arguments. Arguments to the execute method should be in
/// the same order as intputs are added using the addInput method.
class ScriptGroup_Input extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/ScriptGroup\$Input");
  ScriptGroup_Input.fromRef(jni.JObject ref) : super.fromRef(ref);
}

/// from: android.renderscript.ScriptGroup$Future
///
/// An opaque class for futures
///
/// A future represents an output of a closure, either the return value of
/// the function, or the value of a global variable written by the function.
/// A future is created by calling the Closure\#getReturn  or
/// Closure\#getGlobal method.
class ScriptGroup_Future extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/ScriptGroup\$Future");
  ScriptGroup_Future.fromRef(jni.JObject ref) : super.fromRef(ref);
}

/// from: android.renderscript.ScriptGroup$Closure
///
/// An opaque class for closures
///
/// A closure represents a function call to a kernel or invocable function,
/// combined with arguments and values for global variables. A closure is
/// created using the android.renderscript.ScriptGroup.Builder2\#addKernel or
/// android.renderscript.ScriptGroup.Builder2\#addInvoke
/// method.
class ScriptGroup_Closure extends baseobj_.BaseObj {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/ScriptGroup\$Closure");
  ScriptGroup_Closure.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_destroy =
      jniAccessors.getMethodIDOf(_classRef, "destroy", "()V");

  /// from: public void destroy()
  ///
  /// Destroys this Closure and the Allocation for its return value
  void destroy() => jniAccessors.callMethodWithArgs(
      reference, _id_destroy, jni.JniType.voidType, []).check();

  static final _id_finalize =
      jniAccessors.getMethodIDOf(_classRef, "finalize", "()V");

  /// from: protected void finalize()
  void finalize() => jniAccessors.callMethodWithArgs(
      reference, _id_finalize, jni.JniType.voidType, []).check();

  static final _id_getReturn = jniAccessors.getMethodIDOf(
      _classRef, "getReturn", "()Landroid/renderscript/ScriptGroup\$Future;");

  /// from: public android.renderscript.ScriptGroup.Future getReturn()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the future for the return value
  ///@return a future
  ScriptGroup_Future getReturn() =>
      ScriptGroup_Future.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getReturn, jni.JniType.objectType, []).object);

  static final _id_getGlobal = jniAccessors.getMethodIDOf(
      _classRef,
      "getGlobal",
      "(Landroid/renderscript/Script\$FieldID;)Landroid/renderscript/ScriptGroup\$Future;");

  /// from: public android.renderscript.ScriptGroup.Future getGlobal(android.renderscript.Script.FieldID field)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the future for a global variable
  ///@param field the field ID for the global variable
  ///@return a future
  ScriptGroup_Future getGlobal(script_.Script_FieldID field) =>
      ScriptGroup_Future.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getGlobal, jni.JniType.objectType, [field.reference]).object);
}

/// from: android.renderscript.ScriptGroup$Builder2
///
/// The builder class for creating script groups
///
/// A script group is created using closures (see class Closure).
/// A closure is a function call to a kernel or
/// invocable function. Each function argument or global variable accessed inside
/// the function is bound to 1) a known value, 2) a script group input
/// (see class Input), or 3) a
/// future (see class Future).
/// A future is the output of a closure, either the return value of the
/// function or a global variable written by that function.
///
/// Closures are created using the \#addKernel or \#addInvoke
/// methods.
/// When a closure is created, futures from previously created closures
/// can be used as its inputs.
/// External script group inputs can be used as inputs to individual closures as well.
/// An external script group input is created using the \#addInput method.
/// A script group is created by a call to the \#create method, which
/// accepts an array of futures as the outputs for the script group.
///
/// Closures in a script group can be evaluated in any order as long as the
/// following conditions are met:
/// 1) a closure must be evaluated before any other closures that take its
/// futures as inputs;
/// 2) all closures added before an invoke closure must be evaluated
/// before it;
/// and 3) all closures added after an invoke closure must be evaluated after
/// it.
/// As a special case, the order that the closures are added is a legal
/// evaluation order. However, other evaluation orders are possible, including
/// concurrently evaluating independent closures.
class ScriptGroup_Builder2 extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/ScriptGroup\$Builder2");
  ScriptGroup_Builder2.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/renderscript/RenderScript;)V");

  /// from: public void <init>(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a Builder object
  ///@param rs the RenderScript context
  ScriptGroup_Builder2(renderscript_.RenderScript rs)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [rs.reference]).object);

  static final _id_addInput = jniAccessors.getMethodIDOf(
      _classRef, "addInput", "()Landroid/renderscript/ScriptGroup\$Input;");

  /// from: public android.renderscript.ScriptGroup.Input addInput()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds a script group input
  ///@return a script group input, which can be used as an argument or a value to
  ///     a global variable for creating closures
  ScriptGroup_Input addInput() =>
      ScriptGroup_Input.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_addInput, jni.JniType.objectType, []).object);

  static final _id_addKernel = jniAccessors.getMethodIDOf(
      _classRef,
      "addKernel",
      "(Landroid/renderscript/Script\$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;)Landroid/renderscript/ScriptGroup\$Closure;");

  /// from: public android.renderscript.ScriptGroup.Closure addKernel(android.renderscript.Script.KernelID k, android.renderscript.Type returnType, java.lang.Object[] argsAndBindings)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds a closure for a kernel
  ///@param k Kernel ID for the kernel function
  ///@param argsAndBindings arguments followed by bindings for global variables
  ///@return a closure
  ScriptGroup_Closure addKernel(script_.Script_KernelID k,
          type_.Type returnType, jni.JniObject argsAndBindings) =>
      ScriptGroup_Closure.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_addKernel, jni.JniType.objectType, [
        k.reference,
        returnType.reference,
        argsAndBindings.reference
      ]).object);

  static final _id_addInvoke = jniAccessors.getMethodIDOf(
      _classRef,
      "addInvoke",
      "(Landroid/renderscript/Script\$InvokeID;[Ljava/lang/Object;)Landroid/renderscript/ScriptGroup\$Closure;");

  /// from: public android.renderscript.ScriptGroup.Closure addInvoke(android.renderscript.Script.InvokeID invoke, java.lang.Object[] argsAndBindings)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds a closure for an invocable function
  ///@param invoke Invoke ID for the invocable function
  ///@param argsAndBindings arguments followed by bindings for global variables
  ///@return a closure
  ScriptGroup_Closure addInvoke(
          script_.Script_InvokeID invoke, jni.JniObject argsAndBindings) =>
      ScriptGroup_Closure.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addInvoke,
          jni.JniType.objectType,
          [invoke.reference, argsAndBindings.reference]).object);

  static final _id_create = jniAccessors.getMethodIDOf(_classRef, "create",
      "(Ljava/lang/String;[Landroid/renderscript/ScriptGroup\$Future;)Landroid/renderscript/ScriptGroup;");

  /// from: public android.renderscript.ScriptGroup create(java.lang.String name, android.renderscript.ScriptGroup.Future[] outputs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a script group
  ///@param name name for the script group. Legal names can only contain letters, digits,
  ///        '-', or '_'. The name can be no longer than 100 characters.
  ///        Try to use unique names, to avoid name conflicts and reduce
  ///        the cost of group creation.
  ///@param outputs futures intended as outputs of the script group
  ///@return a script group
  ScriptGroup create(jni.JniString name, jni.JniObject outputs) =>
      ScriptGroup.fromRef(jniAccessors.callMethodWithArgs(reference, _id_create,
          jni.JniType.objectType, [name.reference, outputs.reference]).object);
}

/// from: android.renderscript.ScriptGroup$Builder
///
/// Helper class to build a ScriptGroup. A ScriptGroup is
/// created in two steps.
///
/// First, all kernels to be used by the ScriptGroup should be added.
///
/// Second, add connections between kernels. There are two types
/// of connections: kernel to kernel and kernel to field.
/// Kernel to kernel allows a kernel's output to be passed to
/// another kernel as input. Kernel to field allows the output of
/// one kernel to be bound as a script global. Kernel to kernel is
/// higher performance and should be used where possible.
///
/// A ScriptGroup must contain a single directed acyclic graph (DAG); it
/// cannot contain cycles. Currently, all kernels used in a ScriptGroup
/// must come from different Script objects. Additionally, all kernels
/// in a ScriptGroup must have at least one input, output, or internal
/// connection.
///
/// Once all connections are made, a call to \#create will
/// return the ScriptGroup object.
///@deprecated Use Builder2 instead.
class ScriptGroup_Builder extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/ScriptGroup\$Builder");
  ScriptGroup_Builder.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/renderscript/RenderScript;)V");

  /// from: public void <init>(android.renderscript.RenderScript rs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Create a Builder for generating a ScriptGroup.
  ///@param rs The RenderScript context.
  ScriptGroup_Builder(renderscript_.RenderScript rs)
      : super.fromRef(jniAccessors
            .newObjectWithArgs(_classRef, _id_ctor, [rs.reference]).object);

  static final _id_addKernel = jniAccessors.getMethodIDOf(
      _classRef,
      "addKernel",
      "(Landroid/renderscript/Script\$KernelID;)Landroid/renderscript/ScriptGroup\$Builder;");

  /// from: public android.renderscript.ScriptGroup.Builder addKernel(android.renderscript.Script.KernelID k)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds a Kernel to the group.
  ///@param k The kernel to add.
  ///@return Builder Returns this.
  ScriptGroup_Builder addKernel(script_.Script_KernelID k) =>
      ScriptGroup_Builder.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_addKernel, jni.JniType.objectType, [k.reference]).object);

  static final _id_addConnection = jniAccessors.getMethodIDOf(
      _classRef,
      "addConnection",
      "(Landroid/renderscript/Type;Landroid/renderscript/Script\$KernelID;Landroid/renderscript/Script\$FieldID;)Landroid/renderscript/ScriptGroup\$Builder;");

  /// from: public android.renderscript.ScriptGroup.Builder addConnection(android.renderscript.Type t, android.renderscript.Script.KernelID from, android.renderscript.Script.FieldID to)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds a connection to the group.
  ///@param t The type of the connection. This is used to
  ///          determine the kernel launch sizes on the source side
  ///          of this connection.
  ///@param from The source for the connection.
  ///@param to The destination of the connection.
  ///@return Builder Returns this
  ScriptGroup_Builder addConnection(type_.Type t, script_.Script_KernelID from,
          script_.Script_FieldID to) =>
      ScriptGroup_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addConnection,
          jni.JniType.objectType,
          [t.reference, from.reference, to.reference]).object);

  static final _id_addConnection1 = jniAccessors.getMethodIDOf(
      _classRef,
      "addConnection",
      "(Landroid/renderscript/Type;Landroid/renderscript/Script\$KernelID;Landroid/renderscript/Script\$KernelID;)Landroid/renderscript/ScriptGroup\$Builder;");

  /// from: public android.renderscript.ScriptGroup.Builder addConnection(android.renderscript.Type t, android.renderscript.Script.KernelID from, android.renderscript.Script.KernelID to)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Adds a connection to the group.
  ///@param t The type of the connection. This is used to
  ///          determine the kernel launch sizes for both sides of
  ///          this connection.
  ///@param from The source for the connection.
  ///@param to The destination of the connection.
  ///@return Builder Returns this
  ScriptGroup_Builder addConnection1(type_.Type t, script_.Script_KernelID from,
          script_.Script_KernelID to) =>
      ScriptGroup_Builder.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addConnection1,
          jni.JniType.objectType,
          [t.reference, from.reference, to.reference]).object);

  static final _id_create = jniAccessors.getMethodIDOf(
      _classRef, "create", "()Landroid/renderscript/ScriptGroup;");

  /// from: public android.renderscript.ScriptGroup create()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates the Script group.
  ///@return ScriptGroup The new ScriptGroup
  ScriptGroup create() => ScriptGroup.fromRef(jniAccessors.callMethodWithArgs(
      reference, _id_create, jni.JniType.objectType, []).object);
}

/// from: android.renderscript.ScriptGroup$Binding
///
/// Represents a binding of a value to a global variable in a
/// kernel or invocable function. Used in closure creation.
class ScriptGroup_Binding extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/renderscript/ScriptGroup\$Binding");
  ScriptGroup_Binding.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/renderscript/Script\$FieldID;Ljava/lang/Object;)V");

  /// from: public void <init>(android.renderscript.Script.FieldID field, java.lang.Object value)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a Binding object that binds value to field
  ///@param field the Script.FieldID of the global variable
  ///@param value the value
  ScriptGroup_Binding(script_.Script_FieldID field, jni.JniObject value)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [field.reference, value.reference]).object);
}
