.class final Lcom/miui/camera/Camera$ShutterCallback;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/miui/camera/Camera$ShutterCallback;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera$ShutterCallback;-><init>(Lcom/miui/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 5

    .prologue
    .line 519
    iget-object v0, p0, Lcom/miui/camera/Camera$ShutterCallback;->this$0:Lcom/miui/camera/Camera;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/miui/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/miui/camera/Camera;->access$3802(Lcom/miui/camera/Camera;J)J

    .line 520
    iget-object v0, p0, Lcom/miui/camera/Camera$ShutterCallback;->this$0:Lcom/miui/camera/Camera;

    iget-object v1, p0, Lcom/miui/camera/Camera$ShutterCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mShutterCallbackTime:J
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$3800(Lcom/miui/camera/Camera;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/camera/Camera$ShutterCallback;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mCaptureStartTime:J
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$3900(Lcom/miui/camera/Camera;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/miui/camera/Camera;->mShutterLag:J

    .line 521
    const-string v0, "com.miui.camera.Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/camera/Camera$ShutterCallback;->this$0:Lcom/miui/camera/Camera;

    iget-wide v2, v2, Lcom/miui/camera/Camera;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/miui/camera/Camera$ShutterCallback;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->clearFocusState()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$4000(Lcom/miui/camera/Camera;)V

    .line 523
    iget-object v0, p0, Lcom/miui/camera/Camera$ShutterCallback;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->showSnapAnimation()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$4100(Lcom/miui/camera/Camera;)V

    .line 524
    return-void
.end method
