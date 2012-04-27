.class abstract Lcom/android/browser/RotateView2D;
.super Landroid/view/View;
.source "RotateView2D.java"


# instance fields
.field private mOwner:Lcom/android/browser/RotateManager;


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/browser/RotateView2D;->mOwner:Lcom/android/browser/RotateManager;

    invoke-virtual {v0}, Lcom/android/browser/RotateManager;->onRotateView2DRender()V

    .line 25
    return-void
.end method
