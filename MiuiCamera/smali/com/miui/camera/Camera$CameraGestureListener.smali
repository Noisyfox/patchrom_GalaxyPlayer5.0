.class Lcom/miui/camera/Camera$CameraGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera$CameraGestureListener;-><init>(Lcom/miui/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 447
    :goto_0
    return v0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mZoomValue:I
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$3000(Lcom/miui/camera/Camera;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    const/4 v1, 0x0

    #setter for: Lcom/miui/camera/Camera;->mTargetZoomValue:I
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$3102(Lcom/miui/camera/Camera;I)I

    .line 447
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->changeZoom()Z
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$3300(Lcom/miui/camera/Camera;)Z

    move-result v0

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    iget-object v1, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mDoubleZoomValue:I
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$3200(Lcom/miui/camera/Camera;)I

    move-result v1

    #setter for: Lcom/miui/camera/Camera;->mTargetZoomValue:I
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$3102(Lcom/miui/camera/Camera;I)I

    goto :goto_1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 356
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1900(Lcom/miui/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    .line 367
    :goto_0
    return v0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/camera/CameraGlobal;->isPointInActiveArea(II)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$2000(Lcom/miui/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$2100(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$FOCUS_STATE;

    move-result-object v0

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->SUCCESS:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_3

    .line 363
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->NORMAL:Lcom/miui/camera/Constants$FOCUS_TYPE;

    #setter for: Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$2202(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$FOCUS_TYPE;)Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 364
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->doFocus(Z)V
    invoke-static {v0, v4}, Lcom/miui/camera/Camera;->access$2300(Lcom/miui/camera/Camera;Z)V

    :cond_3
    move v0, v4

    .line 367
    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 387
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 391
    .local v1, y:I
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget-boolean v2, v2, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->switchToPlaybackMode(Z)V
    invoke-static {v2, v4}, Lcom/miui/camera/Camera;->access$2500(Lcom/miui/camera/Camera;Z)V

    .line 393
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->restartPreview()V
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$700(Lcom/miui/camera/Camera;)V

    move v2, v4

    .line 432
    :goto_0
    return v2

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget-boolean v2, v2, Lcom/miui/camera/Global;->mPausing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget-boolean v2, v2, Lcom/miui/camera/Global;->mPreviewing:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    const-string v3, "macro"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/camera/CameraGlobal;->mFocusmode:Ljava/lang/String;

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 402
    :cond_1
    const-string v2, "com.miui.camera.Camera"

    const-string v3, "Touch focus not ready, ignore single tap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 403
    goto :goto_0

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1900(Lcom/miui/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 408
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->hideSettingPanel(I)V
    invoke-static {v2, v5}, Lcom/miui/camera/Camera;->access$2600(Lcom/miui/camera/Camera;I)V

    move v2, v4

    .line 409
    goto :goto_0

    .line 413
    :cond_3
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mConSatShpView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$2700(Lcom/miui/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->hideConSatShpView()V
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1400(Lcom/miui/camera/Camera;)V

    move v2, v4

    .line 415
    goto :goto_0

    .line 418
    :cond_4
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget-boolean v2, v2, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_0

    .line 420
    :cond_5
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget-boolean v2, v2, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    if-eqz v2, :cond_6

    move v2, v5

    goto/16 :goto_0

    .line 422
    :cond_6
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/camera/CameraGlobal;->isPointInActiveArea(II)Z

    move-result v2

    if-nez v2, :cond_7

    move v2, v5

    goto/16 :goto_0

    .line 424
    :cond_7
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->showExposureZoomView()V
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$2800(Lcom/miui/camera/Camera;)V

    .line 432
    iget-object v2, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->performTouchFocus(II)Z
    invoke-static {v2, v0, v1}, Lcom/miui/camera/Camera;->access$2900(Lcom/miui/camera/Camera;II)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 372
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mPlaybacking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mSettingPanel:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1900(Lcom/miui/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/camera/Global;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    .line 380
    :goto_0
    return v0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/camera/CameraGlobal;->isPointInActiveArea(II)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mScreenShutter:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mFirstTimeInitialized:Z
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$2000(Lcom/miui/camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/miui/camera/Camera$CameraGestureListener;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->doSnap()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$2400(Lcom/miui/camera/Camera;)V

    .line 380
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
