.class final Lcom/miui/camera/Camera$JpegPictureCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/miui/camera/Camera;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object p2, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 548
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 552
    const-string v3, "com.miui.camera.Camera"

    const-string v4, "onPictureTaken(): start"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v3

    iget-boolean v3, v3, Lcom/miui/camera/Global;->mPausing:Z

    if-eqz v3, :cond_0

    .line 620
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v3

    iget-boolean v3, v3, Lcom/miui/camera/CameraGlobal;->mRingerModeChanged:Z

    if-eqz v3, :cond_1

    .line 559
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/miui/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v4}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v4

    iget v4, v4, Lcom/miui/camera/CameraGlobal;->mSystemVolumeIndex:I

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 561
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/miui/camera/CameraGlobal;->mRingerModeChanged:Z

    .line 564
    :cond_1
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    #setter for: Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3, v4, v5}, Lcom/miui/camera/Camera;->access$802(Lcom/miui/camera/Camera;J)J

    .line 568
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$4300(Lcom/miui/camera/Camera;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 569
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    iget-object v4, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v4}, Lcom/miui/camera/Camera;->access$4300(Lcom/miui/camera/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v6}, Lcom/miui/camera/Camera;->access$3800(Lcom/miui/camera/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 571
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    iget-object v4, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/miui/camera/Camera;->access$800(Lcom/miui/camera/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v6}, Lcom/miui/camera/Camera;->access$4300(Lcom/miui/camera/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    .line 578
    :goto_1
    const-string v3, "com.miui.camera.Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    iget-wide v5, v5, Lcom/miui/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v3, "com.miui.camera.Camera"

    const-string v4, "begin to store image"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 583
    .local v1, storeImageTime:J
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$4400(Lcom/miui/camera/Camera;)Lcom/miui/camera/Camera$ImageCapture;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v3, p1, p2, v4}, Lcom/miui/camera/Camera$ImageCapture;->storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V

    .line 584
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v3

    iget-boolean v3, v3, Lcom/miui/camera/CameraGlobal;->mBurst:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v3

    iget-boolean v3, v3, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    if-eqz v3, :cond_2

    .line 585
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    invoke-static {v3}, Lcom/miui/camera/Camera;->access$4508(Lcom/miui/camera/Camera;)I

    .line 586
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mBurstCount:I
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$4500(Lcom/miui/camera/Camera;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 587
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/miui/camera/CameraGlobal;->mKeepBursting:Z

    .line 589
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    const v4, 0x7f0b000e

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 593
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    .line 594
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "log_max_picture_saving_time_millis"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_3

    .line 595
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v3

    iget-object v3, v3, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 596
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "log_max_picture_saving_time_millis"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 597
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 600
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-static {}, Lcom/miui/camera/StorageHelper;->useInternalStorage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 601
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    const/4 v4, -0x4

    invoke-virtual {v3, v4}, Lcom/miui/camera/Camera;->showStorageHint(I)V

    .line 603
    :cond_4
    invoke-static {}, Lcom/miui/camera/StorageHelper;->storageChanged()V

    .line 611
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->calculatePicturesRemaining()I
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$4600(Lcom/miui/camera/Camera;)I

    .line 613
    invoke-static {}, Lcom/miui/camera/StorageHelper;->useInternalStorage()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 614
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$4700(Lcom/miui/camera/Camera;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x10

    const-wide/16 v5, 0xbb8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 619
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->hideSnapAnimation()V
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$4900(Lcom/miui/camera/Camera;)V

    goto/16 :goto_0

    .line 574
    .end local v1           #storeImageTime:J
    :cond_6
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    iget-object v4, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v4}, Lcom/miui/camera/Camera;->access$4200(Lcom/miui/camera/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v6}, Lcom/miui/camera/Camera;->access$3800(Lcom/miui/camera/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/camera/Camera;->mShutterToPictureDisplayedTime:J

    .line 575
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    iget-object v4, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v4}, Lcom/miui/camera/Camera;->access$800(Lcom/miui/camera/Camera;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mRawPictureCallbackTime:J
    invoke-static {v6}, Lcom/miui/camera/Camera;->access$4200(Lcom/miui/camera/Camera;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/camera/Camera;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 615
    .restart local v1       #storeImageTime:J
    :cond_7
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mPicturesRemaining:I
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$4800(Lcom/miui/camera/Camera;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_5

    .line 616
    iget-object v3, p0, Lcom/miui/camera/Camera$JpegPictureCallback;->this$0:Lcom/miui/camera/Camera;

    invoke-virtual {v3}, Lcom/miui/camera/Camera;->showStorageHint()V

    goto :goto_2
.end method
