.class Lcom/android/browser/BitmapWebViewSurface3D$Renderer$1;
.super Ljava/lang/Object;
.source "BitmapWebViewSurface3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BitmapWebViewSurface3D$Renderer;


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebViewSurface3D$Renderer;)V
    .locals 0
    .parameter

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer$1;->this$1:Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer$1;->this$1:Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mAnimator:Lcom/android/browser/WebGLAnimator;

    invoke-virtual {v0}, Lcom/android/browser/WebGLAnimator;->registerGLThread()V

    .line 1977
    return-void
.end method
