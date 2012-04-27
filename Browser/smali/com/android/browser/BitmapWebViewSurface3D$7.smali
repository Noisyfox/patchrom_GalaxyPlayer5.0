.class Lcom/android/browser/BitmapWebViewSurface3D$7;
.super Ljava/lang/Object;
.source "BitmapWebViewSurface3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BitmapWebViewSurface3D;->fixSurfaceSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BitmapWebViewSurface3D;

.field final synthetic val$viewHeight:I

.field final synthetic val$viewWidth:I


# direct methods
.method constructor <init>(Lcom/android/browser/BitmapWebViewSurface3D;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2389
    iput-object p1, p0, Lcom/android/browser/BitmapWebViewSurface3D$7;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iput p2, p0, Lcom/android/browser/BitmapWebViewSurface3D$7;->val$viewHeight:I

    iput p3, p0, Lcom/android/browser/BitmapWebViewSurface3D$7;->val$viewWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2391
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$7;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mHeight:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/browser/BitmapWebViewSurface3D$7;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v2, v2, Lcom/android/browser/BitmapWebViewSurface3D;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget v2, v2, Lcom/android/browser/BitmapWebView;->mSystemStatusBarHeight:I

    add-int v0, v1, v2

    .line 2392
    .local v0, knownHeight:I
    invoke-static {}, Lcom/android/browser/BitmapWebViewSurface3D;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fixSurfaceSize height is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$7;->val$viewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    iget v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$7;->val$viewHeight:I

    if-eq v0, v1, :cond_0

    .line 2394
    iget-object v1, p0, Lcom/android/browser/BitmapWebViewSurface3D$7;->this$0:Lcom/android/browser/BitmapWebViewSurface3D;

    iget-object v1, v1, Lcom/android/browser/BitmapWebViewSurface3D;->mRenderer:Lcom/android/browser/BitmapWebViewSurface3D$Renderer;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/browser/BitmapWebViewSurface3D$7;->val$viewWidth:I

    iget v4, p0, Lcom/android/browser/BitmapWebViewSurface3D$7;->val$viewHeight:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/browser/BitmapWebViewSurface3D$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 2396
    :cond_0
    return-void
.end method
