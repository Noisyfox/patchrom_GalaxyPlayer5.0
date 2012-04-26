.class public Lcom/miui/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sHolder:Lcom/miui/camera/CameraHolder;


# instance fields
.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/miui/camera/CameraHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/camera/CameraHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/camera/CameraHolder;->mKeepBeforeTime:J

    .line 36
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    .line 38
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/camera/CameraHolder;->mCameraId:I

    .line 80
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v2, Lcom/miui/camera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/miui/camera/CameraHolder$MyHandler;-><init>(Lcom/miui/camera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/miui/camera/CameraHolder;->mNumberOfCameras:I

    .line 84
    iget v2, p0, Lcom/miui/camera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/miui/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 85
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/miui/camera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/miui/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 87
    iget-object v2, p0, Lcom/miui/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/camera/CameraHolder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/camera/CameraHolder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/camera/CameraHolder;->releaseCamera()V

    return-void
.end method

.method public static declared-synchronized instance()Lcom/miui/camera/CameraHolder;
    .locals 2

    .prologue
    .line 50
    const-class v0, Lcom/miui/camera/CameraHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/camera/CameraHolder;->sHolder:Lcom/miui/camera/CameraHolder;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/miui/camera/CameraHolder;

    invoke-direct {v1}, Lcom/miui/camera/CameraHolder;-><init>()V

    sput-object v1, Lcom/miui/camera/CameraHolder;->sHolder:Lcom/miui/camera/CameraHolder;

    .line 53
    :cond_0
    sget-object v1, Lcom/miui/camera/CameraHolder;->sHolder:Lcom/miui/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized releaseCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 160
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/miui/camera/CameraHolder;->TAG:Ljava/lang/String;

    const-string v3, "relaseCamera"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget v2, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/miui/camera/Util;->Assert(Z)V

    .line 162
    iget-object v2, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-static {v2}, Lcom/miui/camera/Util;->Assert(Z)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 164
    .local v0, now:J
    iget-wide v2, p0, Lcom/miui/camera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/miui/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/miui/camera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :goto_2
    monitor-exit p0

    return-void

    .end local v0           #now:J
    :cond_0
    move v2, v5

    .line 161
    goto :goto_0

    :cond_1
    move v2, v5

    .line 162
    goto :goto_1

    .line 168
    .restart local v0       #now:J
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 169
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 170
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/camera/CameraHolder;->mCameraId:I

    .line 171
    sget-object v2, Lcom/miui/camera/CameraHolder;->TAG:Ljava/lang/String;

    const-string v3, "camera released"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 160
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 6
    .parameter "activity"
    .parameter "cameraId"
    .parameter "camera"

    .prologue
    .line 185
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 186
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 188
    .local v3, rotation:I
    const/4 v0, 0x0

    .line 189
    .local v0, degrees:I
    packed-switch v3, :pswitch_data_0

    .line 205
    :goto_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_0

    .line 206
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v2, v4, 0x168

    .line 207
    .local v2, result:I
    const/16 v4, 0x168

    sub-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x168

    .line 211
    :goto_1
    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 212
    return-void

    .line 191
    .end local v2           #result:I
    :pswitch_0
    const/4 v0, 0x0

    .line 192
    goto :goto_0

    .line 194
    :pswitch_1
    const/16 v0, 0x5a

    .line 195
    goto :goto_0

    .line 197
    :pswitch_2
    const/16 v0, 0xb4

    .line 198
    goto :goto_0

    .line 200
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 209
    :cond_0
    iget v4, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v2, v4, 0x168

    .restart local v2       #result:I
    goto :goto_1

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/camera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getNumberOfCamera()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/miui/camera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 178
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/miui/camera/Util;->Assert(Z)V

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/camera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Landroid/hardware/Camera;
    .locals 5
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 100
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/miui/camera/CameraHolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget v1, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_1

    move v1, v4

    :goto_0
    invoke-static {v1}, Lcom/miui/camera/Util;->Assert(Z)V

    .line 102
    iget-object v1, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/camera/CameraHolder;->mCameraId:I

    if-eq v1, p1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 105
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/camera/CameraHolder;->mCameraId:I

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 109
    :try_start_1
    sget-object v1, Lcom/miui/camera/CameraHolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 111
    iput p1, p0, Lcom/miui/camera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :try_start_2
    iget-object v1, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 126
    :goto_1
    iget v1, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    .line 127
    sget-object v1, Lcom/miui/camera/CameraHolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "users:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/miui/camera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/camera/CameraHolder;->mKeepBeforeTime:J

    .line 130
    iget-object v1, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 101
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v1, Lcom/miui/camera/CameraHolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to connect Camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v1, Lcom/miui/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/miui/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 119
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 124
    :try_start_5
    iget-object v1, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/miui/camera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_1

    .line 120
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 121
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/miui/camera/CameraHolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to reconnect Camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    new-instance v1, Lcom/miui/camera/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/miui/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 151
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/miui/camera/CameraHolder;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v0, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/miui/camera/Util;->Assert(Z)V

    .line 153
    iget v0, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    .line 154
    sget-object v0, Lcom/miui/camera/CameraHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "users:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/miui/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 156
    invoke-direct {p0}, Lcom/miui/camera/CameraHolder;->releaseCamera()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tryOpen(I)Landroid/hardware/Camera;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v3, 0x0

    .line 139
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/miui/camera/CameraHolder;->mUsers:I

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/camera/CameraHolder;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    move-object v1, v3

    .line 139
    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 143
    .local v0, e:Lcom/miui/camera/CameraHardwareException;
    :try_start_1
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v0           #e:Lcom/miui/camera/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .restart local v0       #e:Lcom/miui/camera/CameraHardwareException;
    :cond_1
    move-object v1, v3

    .line 146
    goto :goto_0
.end method
