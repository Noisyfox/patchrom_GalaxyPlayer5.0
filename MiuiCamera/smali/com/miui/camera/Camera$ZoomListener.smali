.class final Lcom/miui/camera/Camera$ZoomListener;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$OnZoomChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera$ZoomListener;-><init>(Lcom/miui/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onZoomChange(IZLandroid/hardware/Camera;)V
    .locals 3
    .parameter "value"
    .parameter "stopped"
    .parameter "camera"

    .prologue
    .line 721
    const-string v0, "com.miui.camera.Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom changed: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". stopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    #setter for: Lcom/miui/camera/Camera;->mZoomValue:I
    invoke-static {v0, p1}, Lcom/miui/camera/Camera;->access$3002(Lcom/miui/camera/Camera;I)I

    .line 726
    iget-object v0, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 728
    iget-object v0, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mZoomValue:I
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$3000(Lcom/miui/camera/Camera;)I

    move-result v0

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v1

    iget v1, v1, Lcom/miui/camera/CameraGlobal;->mPicturesizeWidth:I

    iget-object v2, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget v2, v2, Lcom/miui/camera/CameraGlobal;->mPicturesizeHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 733
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1200(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$ZOOM_STATE;

    move-result-object v0

    sget-object v1, Lcom/miui/camera/Constants$ZOOM_STATE;->STOPPED:Lcom/miui/camera/Constants$ZOOM_STATE;

    if-eq v0, v1, :cond_1

    .line 734
    iget-object v0, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mTargetZoomValue:I
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$3100(Lcom/miui/camera/Camera;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 735
    iget-object v0, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mTargetZoomValue:I
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$3100(Lcom/miui/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 736
    iget-object v0, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    sget-object v1, Lcom/miui/camera/Constants$ZOOM_STATE;->STARTED:Lcom/miui/camera/Constants$ZOOM_STATE;

    #setter for: Lcom/miui/camera/Camera;->mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$1202(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$ZOOM_STATE;)Lcom/miui/camera/Constants$ZOOM_STATE;

    .line 741
    :cond_1
    :goto_0
    return-void

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera$ZoomListener;->this$0:Lcom/miui/camera/Camera;

    sget-object v1, Lcom/miui/camera/Constants$ZOOM_STATE;->STOPPED:Lcom/miui/camera/Constants$ZOOM_STATE;

    #setter for: Lcom/miui/camera/Camera;->mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$1202(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$ZOOM_STATE;)Lcom/miui/camera/Constants$ZOOM_STATE;

    goto :goto_0
.end method
