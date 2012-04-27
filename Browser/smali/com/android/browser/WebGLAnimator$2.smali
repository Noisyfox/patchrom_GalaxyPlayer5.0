.class Lcom/android/browser/WebGLAnimator$2;
.super Ljava/lang/Object;
.source "WebGLAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/WebGLAnimator;->resumeUpdateTextureBitmap(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/WebGLAnimator;


# direct methods
.method constructor <init>(Lcom/android/browser/WebGLAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/android/browser/WebGLAnimator$2;->this$0:Lcom/android/browser/WebGLAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/browser/WebGLAnimator$2;->this$0:Lcom/android/browser/WebGLAnimator;

    monitor-enter v0

    .line 1271
    :try_start_0
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator$2;->this$0:Lcom/android/browser/WebGLAnimator;

    const/4 v2, 0x1

    #calls: Lcom/android/browser/WebGLAnimator;->isState(I)Z
    invoke-static {v1, v2}, Lcom/android/browser/WebGLAnimator;->access$500(Lcom/android/browser/WebGLAnimator;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/android/browser/WebGLAnimator$2;->this$0:Lcom/android/browser/WebGLAnimator;

    #getter for: Lcom/android/browser/WebGLAnimator;->mZoomView:Lcom/android/browser/BitmapWebView;
    invoke-static {v1}, Lcom/android/browser/WebGLAnimator;->access$600(Lcom/android/browser/WebGLAnimator;)Lcom/android/browser/BitmapWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->resumeUpdateContents()V

    .line 1280
    :cond_0
    monitor-exit v0

    .line 1281
    return-void

    .line 1280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
