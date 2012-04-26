.class final Lcom/miui/camera/Camera$ErrorCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/miui/camera/Camera$ErrorCallback;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera$ErrorCallback;-><init>(Lcom/miui/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3
    .parameter "error"
    .parameter "camera"

    .prologue
    const/4 v2, 0x1

    const-string v1, "com.miui.camera.Camera"

    .line 704
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 705
    sput-boolean v2, Lcom/miui/camera/Camera;->mMediaServerDied:Z

    .line 706
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "media server died"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_0
    iget-object v0, p0, Lcom/miui/camera/Camera$ErrorCallback;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->showCameraErrorAndFinish()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$5500(Lcom/miui/camera/Camera;)V

    .line 716
    return-void

    .line 708
    :cond_0
    if-ne p1, v2, :cond_1

    .line 709
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "unspecified camera error"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    :cond_1
    const-string v0, "com.miui.camera.Camera"

    const-string v0, "unknown error"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
