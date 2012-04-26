.class final Lcom/miui/camera/Camera$AutoFocusCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera$AutoFocusCallback;-><init>(Lcom/miui/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 7
    .parameter "focused"
    .parameter "camera"

    .prologue
    const v5, 0x7f070001

    const-string v6, "com.miui.camera.Camera"

    .line 643
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "auto focus callback called"

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/miui/camera/Camera;->mFocusCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/miui/camera/Camera;->access$5002(Lcom/miui/camera/Camera;J)J

    .line 648
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    iget-object v1, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mFocusCallbackTime:J
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$5000(Lcom/miui/camera/Camera;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mFocusStartTime:J
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$5100(Lcom/miui/camera/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/miui/camera/Camera;->mAutoFocusTime:J

    .line 649
    const-string v0, "com.miui.camera.Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutoFocusTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    iget-wide v1, v1, Lcom/miui/camera/Camera;->mAutoFocusTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$2100(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$FOCUS_STATE;

    move-result-object v0

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING_SNAP_ON_FINISH:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    if-eqz v0, :cond_6

    .line 655
    :cond_2
    if-eqz p1, :cond_5

    .line 656
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->SUCCESS:Lcom/miui/camera/Constants$FOCUS_STATE;

    #setter for: Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$2102(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$FOCUS_STATE;)Lcom/miui/camera/Constants$FOCUS_STATE;

    .line 660
    :goto_1
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$4400(Lcom/miui/camera/Camera;)Lcom/miui/camera/Camera$ImageCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/camera/Camera$ImageCapture;->onSnap()V

    .line 678
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->NONE:Lcom/miui/camera/Constants$FOCUS_TYPE;

    #setter for: Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$2202(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$FOCUS_TYPE;)Lcom/miui/camera/Constants$FOCUS_TYPE;

    .line 679
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mAutoFocusCancelled:Z
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$5200(Lcom/miui/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 680
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->updateFocusIndicator()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$5300(Lcom/miui/camera/Camera;)V

    .line 682
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$4700(Lcom/miui/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 689
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v1

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    invoke-virtual {v0, v5, v1}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    invoke-virtual {v1, v5, v2}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->setCameraParameters()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$5400(Lcom/miui/camera/Camera;)V

    goto/16 :goto_0

    .line 658
    :cond_5
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FAIL:Lcom/miui/camera/Constants$FOCUS_STATE;

    #setter for: Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$2102(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$FOCUS_STATE;)Lcom/miui/camera/Constants$FOCUS_STATE;

    goto :goto_1

    .line 661
    :cond_6
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$2100(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$FOCUS_STATE;

    move-result-object v0

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FOCUSING:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v0, v1, :cond_a

    .line 664
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mSound:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mFocusType:Lcom/miui/camera/Constants$FOCUS_TYPE;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$2200(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$FOCUS_TYPE;

    move-result-object v0

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_TYPE;->NORMAL:Lcom/miui/camera/Constants$FOCUS_TYPE;

    if-ne v0, v1, :cond_7

    .line 665
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v1

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mSoundIdSuccess:I

    :goto_3
    invoke-virtual {v0, v1}, Lcom/miui/camera/CameraGlobal;->playSound(I)V

    .line 668
    :cond_7
    if-eqz p1, :cond_9

    .line 669
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->SUCCESS:Lcom/miui/camera/Constants$FOCUS_STATE;

    #setter for: Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$2102(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$FOCUS_STATE;)Lcom/miui/camera/Constants$FOCUS_STATE;

    goto/16 :goto_2

    .line 665
    :cond_8
    iget-object v1, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v1

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mSoundIdFail:I

    goto :goto_3

    .line 671
    :cond_9
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->FAIL:Lcom/miui/camera/Constants$FOCUS_STATE;

    #setter for: Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$2102(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$FOCUS_STATE;)Lcom/miui/camera/Constants$FOCUS_STATE;

    goto/16 :goto_2

    .line 673
    :cond_a
    iget-object v0, p0, Lcom/miui/camera/Camera$AutoFocusCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mFocusState:Lcom/miui/camera/Constants$FOCUS_STATE;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$2100(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$FOCUS_STATE;

    move-result-object v0

    sget-object v1, Lcom/miui/camera/Constants$FOCUS_STATE;->NOT_STARTED:Lcom/miui/camera/Constants$FOCUS_STATE;

    if-ne v0, v1, :cond_3

    goto/16 :goto_2
.end method
