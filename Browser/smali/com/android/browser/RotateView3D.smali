.class final Lcom/android/browser/RotateView3D;
.super Landroid/opengl/GLSurfaceView;
.source "RotateView3D.java"


# instance fields
.field private mRenderer:Lcom/android/browser/RotateRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "scaleToFit"

    .prologue
    const/4 v1, 0x1

    .line 17
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Lcom/android/browser/RotateView3D$1;

    invoke-direct {v0, p0}, Lcom/android/browser/RotateView3D$1;-><init>(Lcom/android/browser/RotateView3D;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/RotateView3D;->setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/RotateView3D;->setEGLConfigChooser(Z)V

    .line 25
    new-instance v0, Lcom/android/browser/RotateRenderer;

    invoke-direct {v0, p2}, Lcom/android/browser/RotateRenderer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/browser/RotateView3D;->mRenderer:Lcom/android/browser/RotateRenderer;

    .line 26
    iget-object v0, p0, Lcom/android/browser/RotateView3D;->mRenderer:Lcom/android/browser/RotateRenderer;

    invoke-virtual {p0, v0}, Lcom/android/browser/RotateView3D;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 28
    invoke-static {v1}, Lcom/android/browser/RotateView3D;->setNoTranspWhenZOrderOnTop(Z)V

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/browser/RotateView3D;->setZOrderOnTop(Z)V

    .line 30
    return-void
.end method


# virtual methods
.method public getRenderer()Lcom/android/browser/RotateRenderer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/browser/RotateView3D;->mRenderer:Lcom/android/browser/RotateRenderer;

    return-object v0
.end method

.method hideSurfaceUntilFlipped()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x20

    .line 39
    .local v0, flag:I
    invoke-virtual {p0, v0, v0}, Lcom/android/browser/RotateView3D;->setSurfaceFlags(II)V

    .line 41
    return-void
.end method
