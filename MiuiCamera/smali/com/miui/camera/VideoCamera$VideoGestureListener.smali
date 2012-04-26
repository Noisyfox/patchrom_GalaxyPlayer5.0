.class Lcom/miui/camera/VideoCamera$VideoGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/miui/camera/VideoCamera$VideoGestureListener;->this$0:Lcom/miui/camera/VideoCamera;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/VideoCamera;Lcom/miui/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/miui/camera/VideoCamera$VideoGestureListener;-><init>(Lcom/miui/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 211
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 213
    .local v1, y:I
    iget-object v2, p0, Lcom/miui/camera/VideoCamera$VideoGestureListener;->this$0:Lcom/miui/camera/VideoCamera;

    #getter for: Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;
    invoke-static {v2}, Lcom/miui/camera/VideoCamera;->access$700(Lcom/miui/camera/VideoCamera;)Lcom/miui/camera/VideoGlobal;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/camera/VideoGlobal;->isPointInActiveArea(II)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 219
    :goto_0
    return v2

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/miui/camera/VideoCamera$VideoGestureListener;->this$0:Lcom/miui/camera/VideoCamera;

    #getter for: Lcom/miui/camera/VideoCamera;->mG:Lcom/miui/camera/VideoGlobal;
    invoke-static {v2}, Lcom/miui/camera/VideoCamera;->access$700(Lcom/miui/camera/VideoCamera;)Lcom/miui/camera/VideoGlobal;

    move-result-object v2

    iget-boolean v2, v2, Lcom/miui/camera/VideoGlobal;->mScreenShutter:Z

    if-eqz v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/miui/camera/VideoCamera$VideoGestureListener;->this$0:Lcom/miui/camera/VideoCamera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/camera/VideoCamera;->onShutterButtonClick(Lcom/miui/camera/ui/ShutterButton;)V

    .line 217
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 219
    goto :goto_0
.end method
