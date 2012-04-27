.class Lcom/android/browser/BitmapWebViewSurface3D$1;
.super Ljava/lang/Object;
.source "BitmapWebViewSurface3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BitmapWebViewSurface3D;->updateTilesInQueue()V
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
    .line 327
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D$1;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$1;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-boolean v1, v1, Lcom/android/browser/BitmapWebView;->mDrawFrameFlag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$1;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-boolean v1, v1, Lcom/android/browser/BitmapWebView;->mScaling:Z

    if-nez v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$1;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->requestUpdateWebViewTexture()V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const/4 v0, 0x0

    .line 340
    .local v0, tile:Lcom/android/browser/BitmapWebView$Tile;
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$1;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    #getter for: Lcom/android/browser/BitmapWebViewSurface3D;->mTileQueue:Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;
    invoke-static {v1}, Lcom/android/browser/BitmapWebViewSurface3D;->access$100(Lcom/android/browser/BitmapWebViewSurface3D;)Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebViewSurface3D$TileQueue;->pop()Lcom/android/browser/BitmapWebView$Tile;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$1;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    invoke-virtual {v1, v0}, Lcom/android/browser/BitmapWebViewSurface3D;->updateWebViewTextureGL(Lcom/android/browser/BitmapWebView$Tile;)V

    goto :goto_0
.end method
