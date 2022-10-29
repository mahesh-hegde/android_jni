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

import "Fragment.dart" as fragment_;

import "../view/View.dart" as view_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.app.FragmentTransaction
///
/// API for performing a set of Fragment operations.
///
/// <div class="special reference">
/// <h3>Developer Guides</h3>
/// For more information about using fragments, read the
/// <a href="{@docRoot}guide/components/fragments.html">Fragments</a> developer
/// guide.
///
/// </div>
///@deprecated Use the <a href="{@docRoot}tools/extras/support-library.html">Support Library</a>
///      android.support.v4.app.FragmentTransaction
class FragmentTransaction extends jni.JniObject {
  static final _classRef =
      jniAccessors.getClassOf("android/app/FragmentTransaction");
  FragmentTransaction.fromRef(jni.JObject ref) : super.fromRef(ref);

  /// from: static public final int TRANSIT_ENTER_MASK
  ///
  /// Bit mask that is set for all enter transitions.
  static const TRANSIT_ENTER_MASK = 4096;

  /// from: static public final int TRANSIT_EXIT_MASK
  ///
  /// Bit mask that is set for all exit transitions.
  static const TRANSIT_EXIT_MASK = 8192;

  /// from: static public final int TRANSIT_FRAGMENT_CLOSE
  ///
  /// Fragment is being removed from the stack
  static const TRANSIT_FRAGMENT_CLOSE = 8194;

  /// from: static public final int TRANSIT_FRAGMENT_FADE
  ///
  /// Fragment should simply fade in or out; that is, no strong navigation associated
  /// with it except that it is appearing or disappearing for some reason.
  static const TRANSIT_FRAGMENT_FADE = 4099;

  /// from: static public final int TRANSIT_FRAGMENT_OPEN
  ///
  /// Fragment is being added onto the stack
  static const TRANSIT_FRAGMENT_OPEN = 4097;

  /// from: static public final int TRANSIT_NONE
  ///
  /// No animation for transition.
  static const TRANSIT_NONE = 0;

  /// from: static public final int TRANSIT_UNSET
  ///
  /// Not set up for a transition.
  static const TRANSIT_UNSET = -1;

  static final _id_ctor =
      jniAccessors.getMethodIDOf(_classRef, "<init>", "()V");

  /// from: public void <init>()
  /// The returned object must be deleted after use, by calling the `delete` method.
  FragmentTransaction()
      : super.fromRef(
            jniAccessors.newObjectWithArgs(_classRef, _id_ctor, []).object);

  static final _id_add = jniAccessors.getMethodIDOf(_classRef, "add",
      "(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction add(android.app.Fragment fragment, java.lang.String tag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Calls \#add(int, Fragment, String) with a 0 containerViewId.
  FragmentTransaction add(fragment_.Fragment fragment, jni.JniString tag) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_add,
          jni.JniType.objectType,
          [fragment.reference, tag.reference]).object);

  static final _id_add1 = jniAccessors.getMethodIDOf(_classRef, "add",
      "(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction add(int containerViewId, android.app.Fragment fragment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Calls \#add(int, Fragment, String) with a null tag.
  FragmentTransaction add1(int containerViewId, fragment_.Fragment fragment) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_add1,
          jni.JniType.objectType,
          [containerViewId, fragment.reference]).object);

  static final _id_add2 = jniAccessors.getMethodIDOf(_classRef, "add",
      "(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction add(int containerViewId, android.app.Fragment fragment, java.lang.String tag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a fragment to the activity state.  This fragment may optionally
  /// also have its view (if Fragment\#onCreateView Fragment.onCreateView
  /// returns non-null) inserted into a container view of the activity.
  ///@param containerViewId Optional identifier of the container this fragment is
  /// to be placed in.  If 0, it will not be placed in a container.
  ///@param fragment The fragment to be added.  This fragment must not already
  /// be added to the activity.
  ///@param tag Optional tag name for the fragment, to later retrieve the
  /// fragment with FragmentManager\#findFragmentByTag(String) FragmentManager.findFragmentByTag(String).
  ///@return Returns the same FragmentTransaction instance.
  FragmentTransaction add2(int containerViewId, fragment_.Fragment fragment,
          jni.JniString tag) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_add2,
          jni.JniType.objectType,
          [containerViewId, fragment.reference, tag.reference]).object);

  static final _id_replace = jniAccessors.getMethodIDOf(_classRef, "replace",
      "(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction replace(int containerViewId, android.app.Fragment fragment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Calls \#replace(int, Fragment, String) with a null tag.
  FragmentTransaction replace(
          int containerViewId, fragment_.Fragment fragment) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_replace,
          jni.JniType.objectType,
          [containerViewId, fragment.reference]).object);

  static final _id_replace1 = jniAccessors.getMethodIDOf(_classRef, "replace",
      "(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction replace(int containerViewId, android.app.Fragment fragment, java.lang.String tag)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Replace an existing fragment that was added to a container.  This is
  /// essentially the same as calling \#remove(Fragment) for all
  /// currently added fragments that were added with the same containerViewId
  /// and then \#add(int, Fragment, String) with the same arguments
  /// given here.
  ///@param containerViewId Identifier of the container whose fragment(s) are
  /// to be replaced.
  ///@param fragment The new fragment to place in the container.
  ///@param tag Optional tag name for the fragment, to later retrieve the
  /// fragment with FragmentManager\#findFragmentByTag(String) FragmentManager.findFragmentByTag(String).
  ///@return Returns the same FragmentTransaction instance.
  FragmentTransaction replace1(int containerViewId, fragment_.Fragment fragment,
          jni.JniString tag) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_replace1,
          jni.JniType.objectType,
          [containerViewId, fragment.reference, tag.reference]).object);

  static final _id_remove = jniAccessors.getMethodIDOf(_classRef, "remove",
      "(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction remove(android.app.Fragment fragment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Remove an existing fragment.  If it was added to a container, its view
  /// is also removed from that container.
  ///@param fragment The fragment to be removed.
  ///@return Returns the same FragmentTransaction instance.
  FragmentTransaction remove(fragment_.Fragment fragment) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_remove, jni.JniType.objectType, [fragment.reference]).object);

  static final _id_hide0 = jniAccessors.getMethodIDOf(_classRef, "hide",
      "(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction hide(android.app.Fragment fragment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Hides an existing fragment.  This is only relevant for fragments whose
  /// views have been added to a container, as this will cause the view to
  /// be hidden.
  ///@param fragment The fragment to be hidden.
  ///@return Returns the same FragmentTransaction instance.
  FragmentTransaction hide0(fragment_.Fragment fragment) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_hide0, jni.JniType.objectType, [fragment.reference]).object);

  static final _id_show0 = jniAccessors.getMethodIDOf(_classRef, "show",
      "(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction show(android.app.Fragment fragment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Shows a previously hidden fragment.  This is only relevant for fragments whose
  /// views have been added to a container, as this will cause the view to
  /// be shown.
  ///@param fragment The fragment to be shown.
  ///@return Returns the same FragmentTransaction instance.
  FragmentTransaction show0(fragment_.Fragment fragment) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_show0, jni.JniType.objectType, [fragment.reference]).object);

  static final _id_detach = jniAccessors.getMethodIDOf(_classRef, "detach",
      "(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction detach(android.app.Fragment fragment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Detach the given fragment from the UI.  This is the same state as
  /// when it is put on the back stack: the fragment is removed from
  /// the UI, however its state is still being actively managed by the
  /// fragment manager.  When going into this state its view hierarchy
  /// is destroyed.
  ///@param fragment The fragment to be detached.
  ///@return Returns the same FragmentTransaction instance.
  FragmentTransaction detach(fragment_.Fragment fragment) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_detach, jni.JniType.objectType, [fragment.reference]).object);

  static final _id_attach = jniAccessors.getMethodIDOf(_classRef, "attach",
      "(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction attach(android.app.Fragment fragment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Re-attach a fragment after it had previously been detached from
  /// the UI with \#detach(Fragment).  This
  /// causes its view hierarchy to be re-created, attached to the UI,
  /// and displayed.
  ///@param fragment The fragment to be attached.
  ///@return Returns the same FragmentTransaction instance.
  FragmentTransaction attach(fragment_.Fragment fragment) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_attach, jni.JniType.objectType, [fragment.reference]).object);

  static final _id_setPrimaryNavigationFragment = jniAccessors.getMethodIDOf(
      _classRef,
      "setPrimaryNavigationFragment",
      "(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction setPrimaryNavigationFragment(android.app.Fragment fragment)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set a currently active fragment in this FragmentManager as the primary navigation fragment.
  ///
  /// The primary navigation fragment's
  /// Fragment\#getChildFragmentManager() child FragmentManager will be called first
  /// to process delegated navigation actions such as FragmentManager\#popBackStack()
  /// if no ID or transaction name is provided to pop to. Navigation operations outside of the
  /// fragment system may choose to delegate those actions to the primary navigation fragment
  /// as returned by FragmentManager\#getPrimaryNavigationFragment().
  ///
  ///
  /// The fragment provided must currently be added to the FragmentManager to be set as
  /// a primary navigation fragment, or previously added as part of this transaction.
  ///
  ///@param fragment the fragment to set as the primary navigation fragment
  ///@return the same FragmentTransaction instance
  FragmentTransaction setPrimaryNavigationFragment(
          fragment_.Fragment fragment) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setPrimaryNavigationFragment,
          jni.JniType.objectType,
          [fragment.reference]).object);

  static final _id_isEmpty =
      jniAccessors.getMethodIDOf(_classRef, "isEmpty", "()Z");

  /// from: public abstract boolean isEmpty()
  ///
  /// @return <code>true</code> if this transaction contains no operations,
  /// <code>false</code> otherwise.
  bool isEmpty() => jniAccessors.callMethodWithArgs(
      reference, _id_isEmpty, jni.JniType.booleanType, []).boolean;

  static final _id_setCustomAnimations = jniAccessors.getMethodIDOf(_classRef,
      "setCustomAnimations", "(II)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction setCustomAnimations(int enter, int exit)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set specific animation resources to run for the fragments that are
  /// entering and exiting in this transaction. These animations will not be
  /// played when popping the back stack.
  FragmentTransaction setCustomAnimations(int enter, int exit) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setCustomAnimations,
          jni.JniType.objectType,
          [enter, exit]).object);

  static final _id_setCustomAnimations1 = jniAccessors.getMethodIDOf(_classRef,
      "setCustomAnimations", "(IIII)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction setCustomAnimations(int enter, int exit, int popEnter, int popExit)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set specific animation resources to run for the fragments that are
  /// entering and exiting in this transaction. The <code>popEnter</code>
  /// and <code>popExit</code> animations will be played for enter/exit
  /// operations specifically when popping the back stack.
  FragmentTransaction setCustomAnimations1(
          int enter, int exit, int popEnter, int popExit) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setCustomAnimations1,
          jni.JniType.objectType,
          [enter, exit, popEnter, popExit]).object);

  static final _id_setTransition = jniAccessors.getMethodIDOf(
      _classRef, "setTransition", "(I)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction setTransition(int transit)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Select a standard transition animation for this transaction.  May be
  /// one of \#TRANSIT_NONE, \#TRANSIT_FRAGMENT_OPEN,
  /// \#TRANSIT_FRAGMENT_CLOSE, or \#TRANSIT_FRAGMENT_FADE.
  ///@param transit Value is android.app.FragmentTransaction\#TRANSIT_NONE, android.app.FragmentTransaction\#TRANSIT_FRAGMENT_OPEN, android.app.FragmentTransaction\#TRANSIT_FRAGMENT_CLOSE, or android.app.FragmentTransaction\#TRANSIT_FRAGMENT_FADE
  FragmentTransaction setTransition(int transit) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setTransition, jni.JniType.objectType, [transit]).object);

  static final _id_addSharedElement = jniAccessors.getMethodIDOf(
      _classRef,
      "addSharedElement",
      "(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction addSharedElement(android.view.View sharedElement, java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Used with to map a View from a removed or hidden Fragment to a View from a shown
  /// or added Fragment.
  ///@param sharedElement A View in a disappearing Fragment to match with a View in an
  ///                      appearing Fragment.
  ///@param name The transitionName for a View in an appearing Fragment to match to the shared
  ///             element.
  FragmentTransaction addSharedElement(
          view_.View sharedElement, jni.JniString name) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_addSharedElement,
          jni.JniType.objectType,
          [sharedElement.reference, name.reference]).object);

  static final _id_setTransitionStyle = jniAccessors.getMethodIDOf(
      _classRef, "setTransitionStyle", "(I)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction setTransitionStyle(int styleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set a custom style resource that will be used for resolving transit
  /// animations.
  FragmentTransaction setTransitionStyle(int styleRes) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setTransitionStyle, jni.JniType.objectType, [styleRes]).object);

  static final _id_addToBackStack = jniAccessors.getMethodIDOf(
      _classRef,
      "addToBackStack",
      "(Ljava/lang/String;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction addToBackStack(java.lang.String name)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add this transaction to the back stack.  This means that the transaction
  /// will be remembered after it is committed, and will reverse its operation
  /// when later popped off the stack.
  ///@param name An optional name for this back stack state, or null.
  ///
  /// This value may be {@code null}.
  FragmentTransaction addToBackStack(jni.JniString name) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_addToBackStack, jni.JniType.objectType, [name.reference]).object);

  static final _id_isAddToBackStackAllowed =
      jniAccessors.getMethodIDOf(_classRef, "isAddToBackStackAllowed", "()Z");

  /// from: public abstract boolean isAddToBackStackAllowed()
  ///
  /// Returns true if this FragmentTransaction is allowed to be added to the back
  /// stack. If this method would return false, \#addToBackStack(String)
  /// will throw IllegalStateException.
  ///@return True if \#addToBackStack(String) is permitted on this transaction.
  bool isAddToBackStackAllowed() => jniAccessors.callMethodWithArgs(reference,
      _id_isAddToBackStackAllowed, jni.JniType.booleanType, []).boolean;

  static final _id_disallowAddToBackStack = jniAccessors.getMethodIDOf(
      _classRef,
      "disallowAddToBackStack",
      "()Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction disallowAddToBackStack()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Disallow calls to \#addToBackStack(String). Any future calls to
  /// addToBackStack will throw IllegalStateException. If addToBackStack
  /// has already been called, this method will throw IllegalStateException.
  FragmentTransaction disallowAddToBackStack() =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_disallowAddToBackStack, jni.JniType.objectType, []).object);

  static final _id_setBreadCrumbTitle = jniAccessors.getMethodIDOf(
      _classRef, "setBreadCrumbTitle", "(I)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction setBreadCrumbTitle(int res)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the full title to show as a bread crumb when this transaction
  /// is on the back stack, as used by FragmentBreadCrumbs.
  ///@param res A string resource containing the title.
  FragmentTransaction setBreadCrumbTitle(int res) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setBreadCrumbTitle, jni.JniType.objectType, [res]).object);

  static final _id_setBreadCrumbTitle1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setBreadCrumbTitle",
      "(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction setBreadCrumbTitle(java.lang.CharSequence text)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Like \#setBreadCrumbTitle(int) but taking a raw string; this
  /// method is _not_ recommended, as the string can not be changed
  /// later if the locale changes.
  FragmentTransaction setBreadCrumbTitle1(jni.JniObject text) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setBreadCrumbTitle1,
          jni.JniType.objectType,
          [text.reference]).object);

  static final _id_setBreadCrumbShortTitle = jniAccessors.getMethodIDOf(
      _classRef,
      "setBreadCrumbShortTitle",
      "(I)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction setBreadCrumbShortTitle(int res)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Set the short title to show as a bread crumb when this transaction
  /// is on the back stack, as used by FragmentBreadCrumbs.
  ///@param res A string resource containing the title.
  FragmentTransaction setBreadCrumbShortTitle(int res) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_setBreadCrumbShortTitle, jni.JniType.objectType, [res]).object);

  static final _id_setBreadCrumbShortTitle1 = jniAccessors.getMethodIDOf(
      _classRef,
      "setBreadCrumbShortTitle",
      "(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction setBreadCrumbShortTitle(java.lang.CharSequence text)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Like \#setBreadCrumbShortTitle(int) but taking a raw string; this
  /// method is _not_ recommended, as the string can not be changed
  /// later if the locale changes.
  FragmentTransaction setBreadCrumbShortTitle1(jni.JniObject text) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setBreadCrumbShortTitle1,
          jni.JniType.objectType,
          [text.reference]).object);

  static final _id_setReorderingAllowed = jniAccessors.getMethodIDOf(_classRef,
      "setReorderingAllowed", "(Z)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction setReorderingAllowed(boolean reorderingAllowed)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Sets whether or not to allow optimizing operations within and across
  /// transactions. This will remove redundant operations, eliminating
  /// operations that cancel. For example, if two transactions are executed
  /// together, one that adds a fragment A and the next replaces it with fragment B,
  /// the operations will cancel and only fragment B will be added. That means that
  /// fragment A may not go through the creation/destruction lifecycle.
  ///
  /// The side effect of removing redundant operations is that fragments may have state changes
  /// out of the expected order. For example, one transaction adds fragment A,
  /// a second adds fragment B, then a third removes fragment A. Without removing the redundant
  /// operations, fragment B could expect that while it is being created, fragment A will also
  /// exist because fragment A will be removed after fragment B was added.
  /// With removing redundant operations, fragment B cannot expect fragment A to exist when
  /// it has been created because fragment A's add/remove will be optimized out.
  ///
  /// It can also reorder the state changes of Fragments to allow for better Transitions.
  /// Added Fragments may have Fragment\#onCreate(Bundle) called before replaced
  /// Fragments have Fragment\#onDestroy() called.
  ///
  /// The default is {@code false} for applications targeting version
  /// versions prior to O and {@code true} for applications targeting O and
  /// later.
  ///@param reorderingAllowed {@code true} to enable optimizing out redundant operations
  ///                          or {@code false} to disable optimizing out redundant
  ///                          operations on this transaction.
  FragmentTransaction setReorderingAllowed(bool reorderingAllowed) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_setReorderingAllowed,
          jni.JniType.objectType,
          [reorderingAllowed]).object);

  static final _id_runOnCommit = jniAccessors.getMethodIDOf(_classRef,
      "runOnCommit", "(Ljava/lang/Runnable;)Landroid/app/FragmentTransaction;");

  /// from: public abstract android.app.FragmentTransaction runOnCommit(java.lang.Runnable runnable)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Add a Runnable to this transaction that will be run after this transaction has
  /// been committed. If fragment transactions are \#setReorderingAllowed(boolean) optimized
  /// this may be after other subsequent fragment operations have also taken place, or operations
  /// in this transaction may have been optimized out due to the presence of a subsequent
  /// fragment transaction in the batch.
  ///
  ///
  /// If a transaction is committed using \#commitAllowingStateLoss() this runnable
  /// may be executed when the FragmentManager is in a state where new transactions may not
  /// be committed without allowing state loss.
  ///
  ///
  /// <code>runOnCommit</code> may not be used with transactions
  /// \#addToBackStack(String) added to the back stack as Runnables cannot be persisted
  /// with back stack state. IllegalStateException will be thrown if
  /// \#addToBackStack(String) has been previously called for this transaction
  /// or if it is called after a call to <code>runOnCommit</code>.
  ///
  ///@param runnable Runnable to add
  ///@return this FragmentTransaction
  ///@throws IllegalStateException if \#addToBackStack(String) has been called
  FragmentTransaction runOnCommit(jni.JniObject runnable) =>
      FragmentTransaction.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_runOnCommit,
          jni.JniType.objectType,
          [runnable.reference]).object);

  static final _id_commit =
      jniAccessors.getMethodIDOf(_classRef, "commit", "()I");

  /// from: public abstract int commit()
  ///
  /// Schedules a commit of this transaction.  The commit does
  /// not happen immediately; it will be scheduled as work on the main thread
  /// to be done the next time that thread is ready.
  ///
  /// <p class="note">A transaction can only be committed with this method
  /// prior to its containing activity saving its state.  If the commit is
  /// attempted after that point, an exception will be thrown.  This is
  /// because the state after the commit can be lost if the activity needs to
  /// be restored from its state.  See \#commitAllowingStateLoss() for
  /// situations where it may be okay to lose the commit.
  ///
  ///@return Returns the identifier of this transaction's back stack entry,
  /// if \#addToBackStack(String) had been called.  Otherwise, returns
  /// a negative number.
  int commit() => jniAccessors.callMethodWithArgs(
      reference, _id_commit, jni.JniType.intType, []).integer;

  static final _id_commitAllowingStateLoss =
      jniAccessors.getMethodIDOf(_classRef, "commitAllowingStateLoss", "()I");

  /// from: public abstract int commitAllowingStateLoss()
  ///
  /// Like \#commit but allows the commit to be executed after an
  /// activity's state is saved.  This is dangerous because the commit can
  /// be lost if the activity needs to later be restored from its state, so
  /// this should only be used for cases where it is okay for the UI state
  /// to change unexpectedly on the user.
  int commitAllowingStateLoss() => jniAccessors.callMethodWithArgs(
      reference, _id_commitAllowingStateLoss, jni.JniType.intType, []).integer;

  static final _id_commitNow =
      jniAccessors.getMethodIDOf(_classRef, "commitNow", "()V");

  /// from: public abstract void commitNow()
  ///
  /// Commits this transaction synchronously. Any added fragments will be
  /// initialized and brought completely to the lifecycle state of their host
  /// and any removed fragments will be torn down accordingly before this
  /// call returns. Committing a transaction in this way allows fragments
  /// to be added as dedicated, encapsulated components that monitor the
  /// lifecycle state of their host while providing firmer ordering guarantees
  /// around when those fragments are fully initialized and ready. Fragments
  /// that manage views will have those views created and attached.
  ///
  /// Calling <code>commitNow</code> is preferable to calling
  /// \#commit() followed by FragmentManager\#executePendingTransactions()
  /// as the latter will have the side effect of attempting to commit _all_
  /// currently pending transactions whether that is the desired behavior
  /// or not.
  ///
  ///
  /// Transactions committed in this way may not be added to the
  /// FragmentManager's back stack, as doing so would break other expected
  /// ordering guarantees for other asynchronously committed transactions.
  /// This method will throw IllegalStateException if the transaction
  /// previously requested to be added to the back stack with
  /// \#addToBackStack(String).
  ///
  ///
  /// <p class="note">A transaction can only be committed with this method
  /// prior to its containing activity saving its state.  If the commit is
  /// attempted after that point, an exception will be thrown.  This is
  /// because the state after the commit can be lost if the activity needs to
  /// be restored from its state.  See \#commitAllowingStateLoss() for
  /// situations where it may be okay to lose the commit.
  ///
  void commitNow() => jniAccessors.callMethodWithArgs(
      reference, _id_commitNow, jni.JniType.voidType, []).check();

  static final _id_commitNowAllowingStateLoss = jniAccessors.getMethodIDOf(
      _classRef, "commitNowAllowingStateLoss", "()V");

  /// from: public abstract void commitNowAllowingStateLoss()
  ///
  /// Like \#commitNow but allows the commit to be executed after an
  /// activity's state is saved.  This is dangerous because the commit can
  /// be lost if the activity needs to later be restored from its state, so
  /// this should only be used for cases where it is okay for the UI state
  /// to change unexpectedly on the user.
  void commitNowAllowingStateLoss() => jniAccessors.callMethodWithArgs(
      reference,
      _id_commitNowAllowingStateLoss,
      jni.JniType.voidType, []).check();
}
