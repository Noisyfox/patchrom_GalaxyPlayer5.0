.class Lcom/miui/camera/Camera$ImageCapture;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCapture"
.end annotation


# instance fields
.field mCaptureOnlyData:[B

.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1761
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera$ImageCapture;-><init>(Lcom/miui/camera/Camera;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/miui/camera/Camera$ImageCapture;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1761
    invoke-direct {p0}, Lcom/miui/camera/Camera$ImageCapture;->clearLastData()V

    return-void
.end method

.method private capture()V
    .locals 25

    .prologue
    .line 1808
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/camera/Camera$ImageCapture;->mCaptureOnlyData:[B

    .line 1816
    const/4 v15, 0x0

    .line 1817
    .local v15, rotation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mLastOrientation:I
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$6000(Lcom/miui/camera/Camera;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 1818
    invoke-static {}, Lcom/miui/camera/CameraHolder;->instance()Lcom/miui/camera/CameraHolder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/miui/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v20, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v20 .. v20}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/miui/camera/Global;->mCameraId:I

    move/from16 v20, v0

    aget-object v9, v19, v20

    .line 1819
    .local v9, info:Landroid/hardware/Camera$CameraInfo;
    move-object v0, v9

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object v0, v9

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v19, v0

    const/16 v20, 0x5a

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 1820
    move-object v0, v9

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v20, v0

    #getter for: Lcom/miui/camera/Camera;->mLastOrientation:I
    invoke-static/range {v20 .. v20}, Lcom/miui/camera/Camera;->access$6000(Lcom/miui/camera/Camera;)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0x168

    move/from16 v19, v0

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0x168

    move v15, v0

    .line 1825
    .end local v9           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mRecordlocation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #calls: Lcom/miui/camera/Camera;->getCurrentLocation()Landroid/location/Location;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$7000(Lcom/miui/camera/Camera;)Landroid/location/Location;

    move-result-object v19

    move-object/from16 v12, v19

    .line 1835
    .local v12, loc:Landroid/location/Location;
    :goto_1
    if-eqz v12, :cond_2

    .line 1836
    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 1837
    .local v10, lat:D
    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v13

    .line 1838
    .local v13, lon:D
    const-wide/16 v19, 0x0

    cmpl-double v19, v10, v19

    if-nez v19, :cond_1

    const-wide/16 v19, 0x0

    cmpl-double v19, v13, v19

    if-eqz v19, :cond_7

    :cond_1
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 1840
    .local v8, hasLatLon:Z
    :goto_2
    if-eqz v8, :cond_9

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1844
    invoke-virtual {v12}, Landroid/location/Location;->hasAltitude()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Landroid/location/Location;->getAltitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 1852
    :goto_3
    invoke-virtual {v12}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2

    .line 1855
    invoke-virtual {v12}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v16, v19, v21

    .line 1856
    .local v16, utcTimeSeconds:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1864
    .end local v8           #hasLatLon:Z
    .end local v10           #lat:D
    .end local v13           #lon:D
    .end local v16           #utcTimeSeconds:J
    :cond_2
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1865
    .local v5, dateTaken:J
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-eqz v19, :cond_3

    .line 1866
    invoke-static {}, Lcom/miui/camera/Camera;->access$7100()Ljava/text/SimpleDateFormat;

    move-result-object v19

    new-instance v20, Ljava/util/Date;

    move-object/from16 v0, v20

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v20}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1867
    .local v7, datetime:Ljava/lang/String;
    const-string v19, "com.miui.camera.Camera"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "datetime: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExifDateTime(Ljava/lang/String;)V

    .line 1874
    .end local v7           #datetime:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v20, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v20 .. v20}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v20

    const v21, 0x7f070001

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v22, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v22 .. v22}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/miui/camera/CameraGlobal;->mFlashmode:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/miui/camera/CameraGlobal;->getString(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v20, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v20 .. v20}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Lcom/miui/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 1880
    .local v4, am:Landroid/media/AudioManager;
    const/16 v19, 0x1

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v18

    .line 1881
    .local v18, vol:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mSound:Z

    move/from16 v19, v0

    if-nez v19, :cond_4

    if-lez v18, :cond_4

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 1882
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v4

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/miui/camera/CameraGlobal;->mSystemVolumeIndex:I

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/miui/camera/CameraGlobal;->mRingerModeChanged:Z

    .line 1887
    :cond_4
    const-string v19, "com.miui.camera.Camera"

    const-string v20, "take picture"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v20, v0

    #getter for: Lcom/miui/camera/Camera;->mShutterCallback:Lcom/miui/camera/Camera$ShutterCallback;
    invoke-static/range {v20 .. v20}, Lcom/miui/camera/Camera;->access$7200(Lcom/miui/camera/Camera;)Lcom/miui/camera/Camera$ShutterCallback;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v21, v0

    #getter for: Lcom/miui/camera/Camera;->mRawPictureCallback:Lcom/miui/camera/Camera$RawPictureCallback;
    invoke-static/range {v21 .. v21}, Lcom/miui/camera/Camera;->access$7300(Lcom/miui/camera/Camera;)Lcom/miui/camera/Camera$RawPictureCallback;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v22, v0

    #getter for: Lcom/miui/camera/Camera;->mPostViewPictureCallback:Lcom/miui/camera/Camera$PostViewPictureCallback;
    invoke-static/range {v22 .. v22}, Lcom/miui/camera/Camera;->access$7400(Lcom/miui/camera/Camera;)Lcom/miui/camera/Camera$PostViewPictureCallback;

    move-result-object v22

    new-instance v23, Lcom/miui/camera/Camera$JpegPictureCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/miui/camera/Camera$JpegPictureCallback;-><init>(Lcom/miui/camera/Camera;Landroid/location/Location;)V

    invoke-virtual/range {v19 .. v23}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/miui/camera/Global;->mPreviewing:Z

    .line 1891
    return-void

    .line 1822
    .end local v4           #am:Landroid/media/AudioManager;
    .end local v5           #dateTaken:J
    .end local v12           #loc:Landroid/location/Location;
    .end local v18           #vol:I
    .restart local v9       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_5
    move-object v0, v9

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v20, v0

    #getter for: Lcom/miui/camera/Camera;->mLastOrientation:I
    invoke-static/range {v20 .. v20}, Lcom/miui/camera/Camera;->access$6000(Lcom/miui/camera/Camera;)I

    move-result v20

    add-int v19, v19, v20

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0x168

    move v15, v0

    goto/16 :goto_0

    .line 1834
    .end local v9           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_6
    const/16 v19, 0x0

    move-object/from16 v12, v19

    goto/16 :goto_1

    .line 1838
    .restart local v10       #lat:D
    .restart local v12       #loc:Landroid/location/Location;
    .restart local v13       #lon:D
    :cond_7
    const/16 v19, 0x0

    move/from16 v8, v19

    goto/16 :goto_2

    .line 1850
    .restart local v8       #hasLatLon:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    move-object/from16 v19, v0

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static/range {v19 .. v19}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/camera/Global;->mParameters:Landroid/hardware/Camera$Parameters;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto/16 :goto_3

    .line 1859
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_4
.end method

.method private clearLastData()V
    .locals 1

    .prologue
    .line 1940
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->mCaptureOnlyData:[B

    .line 1941
    return-void
.end method

.method private storeImage([BLandroid/location/Location;)I
    .locals 13
    .parameter "data"
    .parameter "loc"

    .prologue
    const/4 v12, 0x0

    .line 1768
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1769
    .local v2, dateTaken:J
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->createName(J)Ljava/lang/String;
    invoke-static {v0, v2, v3}, Lcom/miui/camera/Camera;->access$6400(Lcom/miui/camera/Camera;J)Ljava/lang/String;

    move-result-object v1

    .line 1770
    .local v1, title:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1771
    .local v6, filename:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 1772
    .local v9, degree:[I
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/miui/camera/Camera;->mLastImageFileName:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/miui/camera/Camera;->access$6502(Lcom/miui/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 1774
    iget-object v11, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$6700(Lcom/miui/camera/Camera;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/miui/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v4, p2

    move-object v8, p1

    invoke-static/range {v0 .. v9}, Lcom/miui/camera/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v0

    #setter for: Lcom/miui/camera/Camera;->mLastContentUri:Landroid/net/Uri;
    invoke-static {v11, v0}, Lcom/miui/camera/Camera;->access$6602(Lcom/miui/camera/Camera;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1776
    const/4 v0, 0x0

    aget v0, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #dateTaken:J
    .end local v6           #filename:Ljava/lang/String;
    .end local v9           #degree:[I
    :goto_0
    return v0

    .line 1777
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 1778
    .local v10, ex:Ljava/lang/Exception;
    const-string v0, "com.miui.camera.Camera"

    const-string v4, "Exception while compressing image."

    invoke-static {v0, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v12

    .line 1779
    goto :goto_0
.end method


# virtual methods
.method public getLastCaptureData()[B
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->mCaptureOnlyData:[B

    return-object v0
.end method

.method public initiate()V
    .locals 1

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/camera/Global;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1801
    :goto_0
    return-void

    .line 1800
    :cond_0
    invoke-direct {p0}, Lcom/miui/camera/Camera$ImageCapture;->capture()V

    goto :goto_0
.end method

.method public onSnap()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1900
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/Global;->mPausing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$7500(Lcom/miui/camera/Camera;)Lcom/miui/camera/Constants$CAMERA_STATE;

    move-result-object v0

    sget-object v1, Lcom/miui/camera/Constants$CAMERA_STATE;->SNAPSHOT_IN_PROGRESS:Lcom/miui/camera/Constants$CAMERA_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mPicturesRemaining:I
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$4800(Lcom/miui/camera/Camera;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 1937
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/miui/camera/Camera;->mCaptureStartTime:J
    invoke-static {v0, v1, v2}, Lcom/miui/camera/Camera;->access$3902(Lcom/miui/camera/Camera;J)J

    .line 1907
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    const-wide/16 v1, 0x0

    #setter for: Lcom/miui/camera/Camera;->mPostViewPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/miui/camera/Camera;->access$4302(Lcom/miui/camera/Camera;J)J

    .line 1910
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->hideExposureZoomView()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1300(Lcom/miui/camera/Camera;)V

    .line 1912
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    sget-object v1, Lcom/miui/camera/Constants$CAMERA_STATE;->SNAPSHOT_IN_PROGRESS:Lcom/miui/camera/Constants$CAMERA_STATE;

    #setter for: Lcom/miui/camera/Camera;->mStatus:Lcom/miui/camera/Constants$CAMERA_STATE;
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$7502(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$CAMERA_STATE;)Lcom/miui/camera/Constants$CAMERA_STATE;

    .line 1914
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mDelaysnap:Z

    if-eqz v0, :cond_2

    .line 1915
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/miui/camera/Camera;->mDelaySnapStartTime:J
    invoke-static {v0, v1, v2}, Lcom/miui/camera/Camera;->access$7602(Lcom/miui/camera/Camera;J)J

    .line 1916
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$7700(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/RotateTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mLastOrientation:I
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$6000(Lcom/miui/camera/Camera;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/RotateTextView;->setOrientation(I)V

    .line 1917
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$7700(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/RotateTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/camera/ui/RotateTextView;->setClickable(Z)V

    .line 1918
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mDelaySnapTimer:Lcom/miui/camera/ui/RotateTextView;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$7700(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/RotateTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/camera/ui/RotateTextView;->setFocusable(Z)V

    .line 1919
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iput-boolean v4, v0, Lcom/miui/camera/CameraGlobal;->mDelaySnapTiming:Z

    .line 1920
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->updateDelaySnapTimer()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1500(Lcom/miui/camera/Camera;)V

    goto :goto_0

    .line 1921
    :cond_2
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/camera/CameraGlobal;->mAntiShake:Z

    if-eqz v0, :cond_4

    .line 1922
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iput-boolean v3, v0, Lcom/miui/camera/CameraGlobal;->mDeviceStable:Z

    .line 1923
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1700(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/ShutterButton;

    move-result-object v0

    const v1, 0x7f02004f

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    .line 1924
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mAntiShakeShutterAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$7800(Lcom/miui/camera/Camera;)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1925
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const v3, 0x3e4ccccd

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #setter for: Lcom/miui/camera/Camera;->mAntiShakeShutterAnimation:Landroid/view/animation/Animation;
    invoke-static {v0, v1}, Lcom/miui/camera/Camera;->access$7802(Lcom/miui/camera/Camera;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 1926
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mAntiShakeShutterAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$7800(Lcom/miui/camera/Camera;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1927
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mAntiShakeShutterAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$7800(Lcom/miui/camera/Camera;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 1928
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mAntiShakeShutterAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$7800(Lcom/miui/camera/Camera;)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1930
    :cond_3
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    iput-boolean v4, v0, Lcom/miui/camera/CameraGlobal;->mAntiShakeTiming:Z

    .line 1931
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1800(Lcom/miui/camera/Camera;)Lcom/miui/camera/CameraGlobal;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/miui/camera/CameraGlobal;->mAntiShakeTimingStartTime:J

    .line 1932
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1700(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/ShutterButton;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mAntiShakeShutterAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$7800(Lcom/miui/camera/Camera;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1933
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->ensureDeviceStableAndSnap()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$1600(Lcom/miui/camera/Camera;)V

    goto/16 :goto_0

    .line 1935
    :cond_4
    iget-object v0, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mImageCapture:Lcom/miui/camera/Camera$ImageCapture;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$4400(Lcom/miui/camera/Camera;)Lcom/miui/camera/Camera$ImageCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/camera/Camera$ImageCapture;->initiate()V

    goto/16 :goto_0
.end method

.method public storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V
    .locals 5
    .parameter "data"
    .parameter "camera"
    .parameter "loc"

    .prologue
    .line 1784
    iget-object v1, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$3500(Lcom/miui/camera/Camera;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1785
    invoke-direct {p0, p1, p3}, Lcom/miui/camera/Camera$ImageCapture;->storeImage([BLandroid/location/Location;)I

    move-result v0

    .line 1786
    .local v0, degree:I
    iget-object v1, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.miui.camera.NEW_PICTURE"

    iget-object v4, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mLastContentUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/miui/camera/Camera;->access$6600(Lcom/miui/camera/Camera;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/miui/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1787
    iget-object v1, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    iget-object v2, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mLastContentUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$6600(Lcom/miui/camera/Camera;)Landroid/net/Uri;

    move-result-object v2

    #calls: Lcom/miui/camera/Camera;->setLastPictureThumb([BILandroid/net/Uri;)V
    invoke-static {v1, p1, v0, v2}, Lcom/miui/camera/Camera;->access$6800(Lcom/miui/camera/Camera;[BILandroid/net/Uri;)V

    .line 1792
    .end local v0           #degree:I
    :goto_0
    return-void

    .line 1789
    :cond_0
    iput-object p1, p0, Lcom/miui/camera/Camera$ImageCapture;->mCaptureOnlyData:[B

    .line 1790
    iget-object v1, p0, Lcom/miui/camera/Camera$ImageCapture;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->showPostCaptureAlert()V
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$6900(Lcom/miui/camera/Camera;)V

    goto :goto_0
.end method
