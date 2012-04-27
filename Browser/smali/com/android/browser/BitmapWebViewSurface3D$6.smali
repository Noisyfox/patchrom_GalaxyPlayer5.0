.class Lcom/android/browser/BitmapWebViewSurface3D$6;
.super Ljava/lang/Object;
.source "BitmapWebViewSurface3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BitmapWebViewSurface3D;->fixBlackScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BitmapWebViewSurface3D;


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebViewSurface3D;)V
    .locals 0
    .parameter

    .prologue
    .line 2357
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D$6;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2359
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fixBlackScreen: visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$6;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2}, Lcom/android/browser/BitmapWebView;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$6;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v0, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2361
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$6;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/browser/BitmapWebViewSurface3D;->mIsFixingBlackScreen:I

    .line 2362
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$6;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->requestRender()V

    .line 2373
    :goto_0
    return-void

    .line 2370
    :cond_0
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fixBlackScreen post a new requestRender"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v0, p0, Lcom/android/browser/BitmapWebViewSurface3D$6;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebViewSurface3D;->requestRender()V

    goto :goto_0
.end method
