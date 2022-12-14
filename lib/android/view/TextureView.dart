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

import "View.dart" as view_;

import "../content/Context.dart" as context_;

import "../util/AttributeSet.dart" as attributeset_;

import "../graphics/Paint.dart" as paint_;

import "../graphics/drawable/Drawable.dart" as drawable_;

import "../graphics/Canvas.dart" as canvas_;

import "../graphics/Matrix.dart" as matrix_;

import "../graphics/Bitmap.dart" as bitmap_;

import "../graphics/Rect.dart" as rect_;

import "../graphics/SurfaceTexture.dart" as surfacetexture_;
import "../../_init.dart" show jniEnv, jniAccessors;

/// from: android.view.TextureView
///
/// A TextureView can be used to display a content stream. Such a content
/// stream can for instance be a video or an OpenGL scene. The content stream
/// can come from the application's process as well as a remote process.
///
///
/// TextureView can only be used in a hardware accelerated window. When
/// rendered in software, TextureView will draw nothing.
///
///
/// Unlike SurfaceView, TextureView does not create a separate
/// window but behaves as a regular View. This key difference allows a
/// TextureView to be moved, transformed, animated, etc. For instance, you
/// can make a TextureView semi-translucent by calling
/// <code>myView.setAlpha(0.5f)</code>.
///
///
/// Using a TextureView is simple: all you need to do is get its
/// SurfaceTexture. The SurfaceTexture can then be used to
/// render content. The following example demonstrates how to render the
/// camera preview into a TextureView:
///
///
/// <pre>
///  public class LiveCameraActivity extends Activity implements TextureView.SurfaceTextureListener {
///      private Camera mCamera;
///      private TextureView mTextureView;
///
///      protected void onCreate(Bundle savedInstanceState) {
///          super.onCreate(savedInstanceState);
///
///          mTextureView = new TextureView(this);
///          mTextureView.setSurfaceTextureListener(this);
///
///          setContentView(mTextureView);
///      }
///
///      public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
///          mCamera = Camera.open();
///
///          try {
///              mCamera.setPreviewTexture(surface);
///              mCamera.startPreview();
///          } catch (IOException ioe) {
///              // Something bad happened
///          }
///      }
///
///      public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
///          // Ignored, Camera does all the work for us
///      }
///
///      public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
///          mCamera.stopPreview();
///          mCamera.release();
///          return true;
///      }
///
///      public void onSurfaceTextureUpdated(SurfaceTexture surface) {
///          // Invoked every time there's a new Camera preview frame
///      }
///  }
/// </pre>
///
/// A TextureView's SurfaceTexture can be obtained either by invoking
/// \#getSurfaceTexture() or by using a SurfaceTextureListener.
/// It is important to know that a SurfaceTexture is available only after the
/// TextureView is attached to a window (and \#onAttachedToWindow() has
/// been invoked.) It is therefore highly recommended you use a listener to
/// be notified when the SurfaceTexture becomes available.
///
///
/// It is important to note that only one producer can use the TextureView.
/// For instance, if you use a TextureView to display the camera preview, you
/// cannot use \#lockCanvas() to draw onto the TextureView at the same
/// time.
///
///@see SurfaceView
///@see SurfaceTexture
class TextureView extends view_.View {
  static final _classRef = jniAccessors.getClassOf("android/view/TextureView");
  TextureView.fromRef(jni.JObject ref) : super.fromRef(ref);

  static final _id_ctor = jniAccessors.getMethodIDOf(
      _classRef, "<init>", "(Landroid/content/Context;)V");

  /// from: public void <init>(android.content.Context context)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new TextureView.
  ///@param context The context to associate this view with.
  TextureView(context_.Context context)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor, [context.reference]).object);

  static final _id_ctor1 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new TextureView.
  ///@param context The context to associate this view with.
  ///@param attrs The attributes of the XML tag that is inflating the view.
  TextureView.ctor1(context_.Context context, attributeset_.AttributeSet attrs)
      : super.fromRef(jniAccessors.newObjectWithArgs(
            _classRef, _id_ctor1, [context.reference, attrs.reference]).object);

  static final _id_ctor2 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;I)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new TextureView.
  ///@param context The context to associate this view with.
  ///@param attrs The attributes of the XML tag that is inflating the view.
  ///@param defStyleAttr An attribute in the current theme that contains a
  ///        reference to a style resource that supplies default values for
  ///        the view. Can be 0 to not look for defaults.
  TextureView.ctor2(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor2,
            [context.reference, attrs.reference, defStyleAttr]).object);

  static final _id_ctor3 = jniAccessors.getMethodIDOf(_classRef, "<init>",
      "(Landroid/content/Context;Landroid/util/AttributeSet;II)V");

  /// from: public void <init>(android.content.Context context, android.util.AttributeSet attrs, int defStyleAttr, int defStyleRes)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Creates a new TextureView.
  ///@param context The context to associate this view with.
  ///@param attrs The attributes of the XML tag that is inflating the view.
  ///@param defStyleAttr An attribute in the current theme that contains a
  ///        reference to a style resource that supplies default values for
  ///        the view. Can be 0 to not look for defaults.
  ///@param defStyleRes A resource identifier of a style resource that
  ///        supplies default values for the view, used only if
  ///        defStyleAttr is 0 or can not be found in the theme. Can be 0
  ///        to not look for defaults.
  TextureView.ctor3(context_.Context context, attributeset_.AttributeSet attrs,
      int defStyleAttr, int defStyleRes)
      : super.fromRef(jniAccessors.newObjectWithArgs(_classRef, _id_ctor3, [
          context.reference,
          attrs.reference,
          defStyleAttr,
          defStyleRes
        ]).object);

  static final _id_isOpaque =
      jniAccessors.getMethodIDOf(_classRef, "isOpaque", "()Z");

  /// from: public boolean isOpaque()
  ///
  /// {@inheritDoc}
  bool isOpaque() => jniAccessors.callMethodWithArgs(
      reference, _id_isOpaque, jni.JniType.booleanType, []).boolean;

  static final _id_setOpaque =
      jniAccessors.getMethodIDOf(_classRef, "setOpaque", "(Z)V");

  /// from: public void setOpaque(boolean opaque)
  ///
  /// Indicates whether the content of this TextureView is opaque. The
  /// content is assumed to be opaque by default.
  ///@param opaque True if the content of this TextureView is opaque,
  ///               false otherwise
  void setOpaque(bool opaque) => jniAccessors.callMethodWithArgs(
      reference, _id_setOpaque, jni.JniType.voidType, [opaque]).check();

  static final _id_onAttachedToWindow =
      jniAccessors.getMethodIDOf(_classRef, "onAttachedToWindow", "()V");

  /// from: protected void onAttachedToWindow()
  void onAttachedToWindow() => jniAccessors.callMethodWithArgs(
      reference, _id_onAttachedToWindow, jni.JniType.voidType, []).check();

  static final _id_setLayerType = jniAccessors.getMethodIDOf(
      _classRef, "setLayerType", "(ILandroid/graphics/Paint;)V");

  /// from: public void setLayerType(int layerType, android.graphics.Paint paint)
  ///
  /// The layer type of a TextureView is ignored since a TextureView is always
  /// considered to act as a hardware layer. The optional paint supplied to this
  /// method will however be taken into account when rendering the content of
  /// this TextureView.
  ///@param layerType The type of layer to use with this view, must be one of
  ///        \#LAYER_TYPE_NONE, \#LAYER_TYPE_SOFTWARE or
  ///        \#LAYER_TYPE_HARDWARE
  ///@param paint The paint used to compose the layer. This argument is optional
  ///        and can be null. It is ignored when the layer type is
  ///        \#LAYER_TYPE_NONE
  ///
  /// This value may be {@code null}.
  void setLayerType(int layerType, paint_.Paint paint) =>
      jniAccessors.callMethodWithArgs(reference, _id_setLayerType,
          jni.JniType.voidType, [layerType, paint.reference]).check();

  static final _id_setLayerPaint = jniAccessors.getMethodIDOf(
      _classRef, "setLayerPaint", "(Landroid/graphics/Paint;)V");

  /// from: public void setLayerPaint(android.graphics.Paint paint)
  ///
  /// @param paint This value may be {@code null}.
  void setLayerPaint(paint_.Paint paint) => jniAccessors.callMethodWithArgs(
      reference,
      _id_setLayerPaint,
      jni.JniType.voidType,
      [paint.reference]).check();

  static final _id_getLayerType =
      jniAccessors.getMethodIDOf(_classRef, "getLayerType", "()I");

  /// from: public int getLayerType()
  ///
  /// Always returns \#LAYER_TYPE_HARDWARE.
  int getLayerType() => jniAccessors.callMethodWithArgs(
      reference, _id_getLayerType, jni.JniType.intType, []).integer;

  static final _id_buildLayer =
      jniAccessors.getMethodIDOf(_classRef, "buildLayer", "()V");

  /// from: public void buildLayer()
  ///
  /// Calling this method has no effect.
  void buildLayer() => jniAccessors.callMethodWithArgs(
      reference, _id_buildLayer, jni.JniType.voidType, []).check();

  static final _id_setForeground = jniAccessors.getMethodIDOf(
      _classRef, "setForeground", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setForeground(android.graphics.drawable.Drawable foreground)
  void setForeground(drawable_.Drawable foreground) =>
      jniAccessors.callMethodWithArgs(reference, _id_setForeground,
          jni.JniType.voidType, [foreground.reference]).check();

  static final _id_setBackgroundDrawable = jniAccessors.getMethodIDOf(_classRef,
      "setBackgroundDrawable", "(Landroid/graphics/drawable/Drawable;)V");

  /// from: public void setBackgroundDrawable(android.graphics.drawable.Drawable background)
  void setBackgroundDrawable(drawable_.Drawable background) =>
      jniAccessors.callMethodWithArgs(reference, _id_setBackgroundDrawable,
          jni.JniType.voidType, [background.reference]).check();

  static final _id_draw = jniAccessors.getMethodIDOf(
      _classRef, "draw", "(Landroid/graphics/Canvas;)V");

  /// from: public final void draw(android.graphics.Canvas canvas)
  ///
  /// Subclasses of TextureView cannot do their own rendering
  /// with the Canvas object.
  ///@param canvas The Canvas to which the View is rendered.
  void draw(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference, _id_draw, jni.JniType.voidType, [canvas.reference]).check();

  static final _id_onDraw = jniAccessors.getMethodIDOf(
      _classRef, "onDraw", "(Landroid/graphics/Canvas;)V");

  /// from: protected final void onDraw(android.graphics.Canvas canvas)
  ///
  /// Subclasses of TextureView cannot do their own rendering
  /// with the Canvas object.
  ///@param canvas The Canvas to which the View is rendered.
  void onDraw(canvas_.Canvas canvas) => jniAccessors.callMethodWithArgs(
      reference, _id_onDraw, jni.JniType.voidType, [canvas.reference]).check();

  static final _id_onSizeChanged =
      jniAccessors.getMethodIDOf(_classRef, "onSizeChanged", "(IIII)V");

  /// from: protected void onSizeChanged(int w, int h, int oldw, int oldh)
  void onSizeChanged(int w, int h, int oldw, int oldh) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSizeChanged,
          jni.JniType.voidType, [w, h, oldw, oldh]).check();

  static final _id_onVisibilityChanged = jniAccessors.getMethodIDOf(
      _classRef, "onVisibilityChanged", "(Landroid/view/View;I)V");

  /// from: protected void onVisibilityChanged(android.view.View changedView, int visibility)
  void onVisibilityChanged(view_.View changedView, int visibility) =>
      jniAccessors.callMethodWithArgs(reference, _id_onVisibilityChanged,
          jni.JniType.voidType, [changedView.reference, visibility]).check();

  static final _id_setTransform = jniAccessors.getMethodIDOf(
      _classRef, "setTransform", "(Landroid/graphics/Matrix;)V");

  /// from: public void setTransform(android.graphics.Matrix transform)
  ///
  /// Sets the transform to associate with this texture view.
  /// The specified transform applies to the underlying surface
  /// texture and does not affect the size or position of the view
  /// itself, only of its content.
  ///
  ///
  /// Some transforms might prevent the content from drawing
  /// all the pixels contained within this view's bounds. In such
  /// situations, make sure this texture view is not marked opaque.
  ///
  ///@param transform The transform to apply to the content of
  ///        this view.
  ///@see \#getTransform(android.graphics.Matrix)
  ///@see \#isOpaque()
  ///@see \#setOpaque(boolean)
  void setTransform(matrix_.Matrix transform) =>
      jniAccessors.callMethodWithArgs(reference, _id_setTransform,
          jni.JniType.voidType, [transform.reference]).check();

  static final _id_getTransform = jniAccessors.getMethodIDOf(_classRef,
      "getTransform", "(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;");

  /// from: public android.graphics.Matrix getTransform(android.graphics.Matrix transform)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the transform associated with this texture view.
  ///@param transform The Matrix in which to copy the current
  ///        transform. Can be null.
  ///@return The specified matrix if not null or a new Matrix
  ///         instance otherwise.
  ///@see \#setTransform(android.graphics.Matrix)
  matrix_.Matrix getTransform(matrix_.Matrix transform) =>
      matrix_.Matrix.fromRef(jniAccessors.callMethodWithArgs(
          reference,
          _id_getTransform,
          jni.JniType.objectType,
          [transform.reference]).object);

  static final _id_getBitmap = jniAccessors.getMethodIDOf(
      _classRef, "getBitmap", "()Landroid/graphics/Bitmap;");

  /// from: public android.graphics.Bitmap getBitmap()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a android.graphics.Bitmap representation of the content
  /// of the associated surface texture. If the surface texture is not available,
  /// this method returns null.
  ///
  ///
  /// The bitmap returned by this method uses the Bitmap.Config\#ARGB_8888
  /// pixel format and its dimensions are the same as this view's.
  ///
  ///
  /// <strong>Do not</strong> invoke this method from a drawing method
  /// (\#onDraw(android.graphics.Canvas) for instance).
  ///
  ///
  /// If an error occurs during the copy, an empty bitmap will be returned.
  ///
  ///@return A valid Bitmap.Config\#ARGB_8888 bitmap, or null if the surface
  ///         texture is not available or the width &lt;= 0 or the height &lt;= 0
  ///@see \#isAvailable()
  ///@see \#getBitmap(android.graphics.Bitmap)
  ///@see \#getBitmap(int, int)
  bitmap_.Bitmap getBitmap() =>
      bitmap_.Bitmap.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getBitmap, jni.JniType.objectType, []).object);

  static final _id_getBitmap1 = jniAccessors.getMethodIDOf(
      _classRef, "getBitmap", "(II)Landroid/graphics/Bitmap;");

  /// from: public android.graphics.Bitmap getBitmap(int width, int height)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns a android.graphics.Bitmap representation of the content
  /// of the associated surface texture. If the surface texture is not available,
  /// this method returns null.
  ///
  ///
  /// The bitmap returned by this method uses the Bitmap.Config\#ARGB_8888
  /// pixel format.
  ///
  ///
  /// <strong>Do not</strong> invoke this method from a drawing method
  /// (\#onDraw(android.graphics.Canvas) for instance).
  ///
  ///
  /// If an error occurs during the copy, an empty bitmap will be returned.
  ///
  ///@param width The width of the bitmap to create
  ///@param height The height of the bitmap to create
  ///@return A valid Bitmap.Config\#ARGB_8888 bitmap, or null if the surface
  ///         texture is not available or width is &lt;= 0 or height is &lt;= 0
  ///@see \#isAvailable()
  ///@see \#getBitmap(android.graphics.Bitmap)
  ///@see \#getBitmap()
  bitmap_.Bitmap getBitmap1(int width, int height) =>
      bitmap_.Bitmap.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getBitmap1, jni.JniType.objectType, [width, height]).object);

  static final _id_getBitmap2 = jniAccessors.getMethodIDOf(_classRef,
      "getBitmap", "(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;");

  /// from: public android.graphics.Bitmap getBitmap(android.graphics.Bitmap bitmap)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Copies the content of this view's surface texture into the specified
  /// bitmap. If the surface texture is not available, the copy is not executed.
  /// The content of the surface texture will be scaled to fit exactly inside
  /// the specified bitmap.
  ///
  ///
  /// <strong>Do not</strong> invoke this method from a drawing method
  /// (\#onDraw(android.graphics.Canvas) for instance).
  ///
  ///
  /// If an error occurs, the bitmap is left unchanged.
  ///
  ///@param bitmap The bitmap to copy the content of the surface texture into,
  ///               cannot be null, all configurations are supported
  ///@return The bitmap specified as a parameter
  ///@see \#isAvailable()
  ///@see \#getBitmap(int, int)
  ///@see \#getBitmap()
  ///@throws IllegalStateException if the hardware rendering context cannot be
  ///         acquired to capture the bitmap
  bitmap_.Bitmap getBitmap2(bitmap_.Bitmap bitmap) =>
      bitmap_.Bitmap.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_getBitmap2, jni.JniType.objectType, [bitmap.reference]).object);

  static final _id_isAvailable =
      jniAccessors.getMethodIDOf(_classRef, "isAvailable", "()Z");

  /// from: public boolean isAvailable()
  ///
  /// Returns true if the SurfaceTexture associated with this
  /// TextureView is available for rendering. When this method returns
  /// true, \#getSurfaceTexture() returns a valid surface texture.
  bool isAvailable() => jniAccessors.callMethodWithArgs(
      reference, _id_isAvailable, jni.JniType.booleanType, []).boolean;

  static final _id_lockCanvas = jniAccessors.getMethodIDOf(
      _classRef, "lockCanvas", "()Landroid/graphics/Canvas;");

  /// from: public android.graphics.Canvas lockCanvas()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Start editing the pixels in the surface.  The returned Canvas can be used
  /// to draw into the surface's bitmap.  A null is returned if the surface has
  /// not been created or otherwise cannot be edited. You will usually need
  /// to implement
  /// SurfaceTextureListener\#onSurfaceTextureAvailable(android.graphics.SurfaceTexture, int, int)
  /// to find out when the Surface is available for use.
  ///
  ///
  /// The content of the Surface is never preserved between unlockCanvas()
  /// and lockCanvas(), for this reason, every pixel within the Surface area
  /// must be written. The only exception to this rule is when a dirty
  /// rectangle is specified, in which case, non-dirty pixels will be
  /// preserved.
  ///
  ///
  /// This method can only be used if the underlying surface is not already
  /// owned by another producer. For instance, if the TextureView is being used
  /// to render the camera's preview you cannot invoke this method.
  ///
  ///@return A Canvas used to draw into the surface.
  ///@see \#lockCanvas(android.graphics.Rect)
  ///@see \#unlockCanvasAndPost(android.graphics.Canvas)
  canvas_.Canvas lockCanvas() =>
      canvas_.Canvas.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_lockCanvas, jni.JniType.objectType, []).object);

  static final _id_lockCanvas1 = jniAccessors.getMethodIDOf(_classRef,
      "lockCanvas", "(Landroid/graphics/Rect;)Landroid/graphics/Canvas;");

  /// from: public android.graphics.Canvas lockCanvas(android.graphics.Rect dirty)
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Just like \#lockCanvas() but allows specification of a dirty
  /// rectangle. Every pixel within that rectangle must be written; however
  /// pixels outside the dirty rectangle will be preserved by the next call
  /// to lockCanvas().
  ///
  /// This method can return null if the underlying surface texture is not
  /// available (see \#isAvailable() or if the surface texture is
  /// already connected to an image producer (for instance: the camera,
  /// OpenGL, a media player, etc.)
  ///@param dirty Area of the surface that will be modified.
  ///@return A Canvas used to draw into the surface.
  ///@see \#lockCanvas()
  ///@see \#unlockCanvasAndPost(android.graphics.Canvas)
  ///@see \#isAvailable()
  canvas_.Canvas lockCanvas1(rect_.Rect dirty) =>
      canvas_.Canvas.fromRef(jniAccessors.callMethodWithArgs(reference,
          _id_lockCanvas1, jni.JniType.objectType, [dirty.reference]).object);

  static final _id_unlockCanvasAndPost = jniAccessors.getMethodIDOf(
      _classRef, "unlockCanvasAndPost", "(Landroid/graphics/Canvas;)V");

  /// from: public void unlockCanvasAndPost(android.graphics.Canvas canvas)
  ///
  /// Finish editing pixels in the surface. After this call, the surface's
  /// current pixels will be shown on the screen, but its content is lost,
  /// in particular there is no guarantee that the content of the Surface
  /// will remain unchanged when lockCanvas() is called again.
  ///@param canvas The Canvas previously returned by lockCanvas()
  ///@see \#lockCanvas()
  ///@see \#lockCanvas(android.graphics.Rect)
  void unlockCanvasAndPost(canvas_.Canvas canvas) =>
      jniAccessors.callMethodWithArgs(reference, _id_unlockCanvasAndPost,
          jni.JniType.voidType, [canvas.reference]).check();

  static final _id_getSurfaceTexture = jniAccessors.getMethodIDOf(
      _classRef, "getSurfaceTexture", "()Landroid/graphics/SurfaceTexture;");

  /// from: public android.graphics.SurfaceTexture getSurfaceTexture()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the SurfaceTexture used by this view. This method
  /// may return null if the view is not attached to a window or if the surface
  /// texture has not been initialized yet.
  ///@see \#isAvailable()
  surfacetexture_.SurfaceTexture getSurfaceTexture() =>
      surfacetexture_.SurfaceTexture.fromRef(jniAccessors.callMethodWithArgs(
          reference, _id_getSurfaceTexture, jni.JniType.objectType, []).object);

  static final _id_setSurfaceTexture = jniAccessors.getMethodIDOf(
      _classRef, "setSurfaceTexture", "(Landroid/graphics/SurfaceTexture;)V");

  /// from: public void setSurfaceTexture(android.graphics.SurfaceTexture surfaceTexture)
  ///
  /// Set the SurfaceTexture for this view to use. If a SurfaceTexture is already being used by this view, it is immediately
  /// released and not usable any more.  The SurfaceTextureListener\#onSurfaceTextureDestroyed callback is __not__
  /// called for the previous SurfaceTexture.  Similarly, the SurfaceTextureListener\#onSurfaceTextureAvailable callback is __not__
  /// called for the SurfaceTexture passed to setSurfaceTexture.
  ///
  /// The SurfaceTexture object must be detached from all OpenGL ES
  /// contexts prior to calling this method.
  ///@param surfaceTexture The SurfaceTexture that the view should use.
  ///@see SurfaceTexture\#detachFromGLContext()
  void setSurfaceTexture(surfacetexture_.SurfaceTexture surfaceTexture) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSurfaceTexture,
          jni.JniType.voidType, [surfaceTexture.reference]).check();

  static final _id_getSurfaceTextureListener = jniAccessors.getMethodIDOf(
      _classRef,
      "getSurfaceTextureListener",
      "()Landroid/view/TextureView\$SurfaceTextureListener;");

  /// from: public android.view.TextureView.SurfaceTextureListener getSurfaceTextureListener()
  /// The returned object must be deleted after use, by calling the `delete` method.
  ///
  /// Returns the SurfaceTextureListener currently associated with this
  /// texture view.
  ///@see \#setSurfaceTextureListener(android.view.TextureView.SurfaceTextureListener)
  ///@see SurfaceTextureListener
  TextureView_SurfaceTextureListener getSurfaceTextureListener() =>
      TextureView_SurfaceTextureListener.fromRef(jniAccessors
          .callMethodWithArgs(reference, _id_getSurfaceTextureListener,
              jni.JniType.objectType, []).object);

  static final _id_setSurfaceTextureListener = jniAccessors.getMethodIDOf(
      _classRef,
      "setSurfaceTextureListener",
      "(Landroid/view/TextureView\$SurfaceTextureListener;)V");

  /// from: public void setSurfaceTextureListener(android.view.TextureView.SurfaceTextureListener listener)
  ///
  /// Sets the SurfaceTextureListener used to listen to surface
  /// texture events.
  ///@see \#getSurfaceTextureListener()
  ///@see SurfaceTextureListener
  void setSurfaceTextureListener(TextureView_SurfaceTextureListener listener) =>
      jniAccessors.callMethodWithArgs(reference, _id_setSurfaceTextureListener,
          jni.JniType.voidType, [listener.reference]).check();
}

/// from: android.view.TextureView$SurfaceTextureListener
///
/// This listener can be used to be notified when the surface texture
/// associated with this texture view is available.
class TextureView_SurfaceTextureListener extends jni.JniObject {
  static final _classRef = jniAccessors
      .getClassOf("android/view/TextureView\$SurfaceTextureListener");
  TextureView_SurfaceTextureListener.fromRef(jni.JObject ref)
      : super.fromRef(ref);

  static final _id_onSurfaceTextureAvailable = jniAccessors.getMethodIDOf(
      _classRef,
      "onSurfaceTextureAvailable",
      "(Landroid/graphics/SurfaceTexture;II)V");

  /// from: public abstract void onSurfaceTextureAvailable(android.graphics.SurfaceTexture surface, int width, int height)
  ///
  /// Invoked when a TextureView's SurfaceTexture is ready for use.
  ///@param surface The surface returned by
  ///                android.view.TextureView\#getSurfaceTexture()
  ///@param width The width of the surface
  ///@param height The height of the surface
  void onSurfaceTextureAvailable(
          surfacetexture_.SurfaceTexture surface, int width, int height) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSurfaceTextureAvailable,
          jni.JniType.voidType, [surface.reference, width, height]).check();

  static final _id_onSurfaceTextureSizeChanged = jniAccessors.getMethodIDOf(
      _classRef,
      "onSurfaceTextureSizeChanged",
      "(Landroid/graphics/SurfaceTexture;II)V");

  /// from: public abstract void onSurfaceTextureSizeChanged(android.graphics.SurfaceTexture surface, int width, int height)
  ///
  /// Invoked when the SurfaceTexture's buffers size changed.
  ///@param surface The surface returned by
  ///                android.view.TextureView\#getSurfaceTexture()
  ///@param width The new width of the surface
  ///@param height The new height of the surface
  void onSurfaceTextureSizeChanged(
          surfacetexture_.SurfaceTexture surface, int width, int height) =>
      jniAccessors.callMethodWithArgs(
          reference,
          _id_onSurfaceTextureSizeChanged,
          jni.JniType.voidType,
          [surface.reference, width, height]).check();

  static final _id_onSurfaceTextureDestroyed = jniAccessors.getMethodIDOf(
      _classRef,
      "onSurfaceTextureDestroyed",
      "(Landroid/graphics/SurfaceTexture;)Z");

  /// from: public abstract boolean onSurfaceTextureDestroyed(android.graphics.SurfaceTexture surface)
  ///
  /// Invoked when the specified SurfaceTexture is about to be destroyed.
  /// If returns true, no rendering should happen inside the surface texture after this method
  /// is invoked. If returns false, the client needs to call SurfaceTexture\#release().
  /// Most applications should return true.
  ///@param surface The surface about to be destroyed
  bool onSurfaceTextureDestroyed(surfacetexture_.SurfaceTexture surface) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSurfaceTextureDestroyed,
          jni.JniType.booleanType, [surface.reference]).boolean;

  static final _id_onSurfaceTextureUpdated = jniAccessors.getMethodIDOf(
      _classRef,
      "onSurfaceTextureUpdated",
      "(Landroid/graphics/SurfaceTexture;)V");

  /// from: public abstract void onSurfaceTextureUpdated(android.graphics.SurfaceTexture surface)
  ///
  /// Invoked when the specified SurfaceTexture is updated through
  /// SurfaceTexture\#updateTexImage().
  ///@param surface The surface just updated
  void onSurfaceTextureUpdated(surfacetexture_.SurfaceTexture surface) =>
      jniAccessors.callMethodWithArgs(reference, _id_onSurfaceTextureUpdated,
          jni.JniType.voidType, [surface.reference]).check();
}
