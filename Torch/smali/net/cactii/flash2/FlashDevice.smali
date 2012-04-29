.class public Lnet/cactii/flash2/FlashDevice;
.super Ljava/lang/Object;
.source "FlashDevice.java"


# static fields
.field private static instance:Lnet/cactii/flash2/FlashDevice;

.field private static useCameraInterface:Z

.field private static useDeathRay:Z

.field private static useZeppDeathRay:Z

.field private static useZeppOn:Z


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mFlashMode:I

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private mWriter:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "zepp"

    .line 32
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "supersonic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "glacier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    :goto_0
    sput-boolean v0, Lnet/cactii/flash2/FlashDevice;->useDeathRay:Z

    .line 35
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "zepp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "sholes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lnet/cactii/flash2/FlashDevice;->useZeppDeathRay:Z

    .line 38
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "zepp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "mione"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "ace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v3

    :goto_2
    sput-boolean v0, Lnet/cactii/flash2/FlashDevice;->useZeppOn:Z

    .line 42
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "crespo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "p990"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "p999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "galaxys2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "YP-G70"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v3

    :goto_3
    sput-boolean v0, Lnet/cactii/flash2/FlashDevice;->useCameraInterface:Z

    return-void

    :cond_3
    move v0, v2

    .line 32
    goto :goto_0

    :cond_4
    move v0, v2

    .line 35
    goto :goto_1

    :cond_5
    move v0, v2

    .line 38
    goto :goto_2

    :cond_6
    move v0, v2

    .line 42
    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I

    .line 50
    iput-object v1, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    .line 55
    return-void
.end method

.method public static declared-synchronized instance()Lnet/cactii/flash2/FlashDevice;
    .locals 2

    .prologue
    .line 58
    const-class v0, Lnet/cactii/flash2/FlashDevice;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnet/cactii/flash2/FlashDevice;->instance:Lnet/cactii/flash2/FlashDevice;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lnet/cactii/flash2/FlashDevice;

    invoke-direct {v1}, Lnet/cactii/flash2/FlashDevice;-><init>()V

    sput-object v1, Lnet/cactii/flash2/FlashDevice;->instance:Lnet/cactii/flash2/FlashDevice;

    .line 61
    :cond_0
    sget-object v1, Lnet/cactii/flash2/FlashDevice;->instance:Lnet/cactii/flash2/FlashDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getFlashMode()I
    .locals 1

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFlashMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, -0x1

    .line 66
    monitor-enter p0

    move v1, p1

    .line 67
    .local v1, value:I
    packed-switch p1, :pswitch_data_0

    .line 79
    :goto_0
    :pswitch_0
    :try_start_0
    sget-boolean v2, Lnet/cactii/flash2/FlashDevice;->useCameraInterface:Z

    if-eqz v2, :cond_6

    .line 80
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 81
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    .line 83
    :cond_0
    if-nez v1, :cond_5

    .line 84
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    .line 85
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 87
    if-eq p1, v4, :cond_1

    .line 88
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 89
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    .line 115
    :cond_1
    :goto_1
    iput p1, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    monitor-exit p0

    return-void

    .line 69
    :pswitch_1
    const/4 v1, 0x0

    .line 70
    goto :goto_0

    .line 72
    :pswitch_2
    :try_start_1
    sget-boolean v2, Lnet/cactii/flash2/FlashDevice;->useDeathRay:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    move v1, v2

    .line 73
    :goto_2
    sget-boolean v2, Lnet/cactii/flash2/FlashDevice;->useZeppDeathRay:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lnet/cactii/flash2/FlashDevice;->useDeathRay:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    move v1, v2

    .line 74
    :cond_2
    goto :goto_0

    .line 72
    :cond_3
    const/16 v2, 0x80

    move v1, v2

    goto :goto_2

    .line 76
    :pswitch_3
    sget-boolean v2, Lnet/cactii/flash2/FlashDevice;->useZeppOn:Z

    if-eqz v2, :cond_4

    const/16 v2, 0x64

    move v1, v2

    :cond_4
    goto :goto_0

    .line 93
    :cond_5
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    .line 94
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v3, "torch"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lnet/cactii/flash2/FlashDevice;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 96
    iget v2, p0, Lnet/cactii/flash2/FlashDevice;->mFlashMode:I

    if-eq v2, v4, :cond_1

    .line 97
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 117
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t open flash device: /sys/class/leds/flashlight/brightness"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 101
    :cond_6
    :try_start_3
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    if-nez v2, :cond_8

    .line 102
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v3, "sholes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v3, "jordan"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 103
    :cond_7
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    .line 108
    :cond_8
    :goto_3
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 110
    if-nez p1, :cond_1

    .line 111
    iget-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 112
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;

    goto/16 :goto_1

    .line 105
    :cond_9
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/class/leds/flashlight/brightness"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lnet/cactii/flash2/FlashDevice;->mWriter:Ljava/io/FileWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 67
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
