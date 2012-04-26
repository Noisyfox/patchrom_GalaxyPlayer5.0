.class Lcom/miui/camera/Camera$2;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/Camera;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/miui/camera/Camera$2;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 806
    :try_start_0
    iget-object v1, p0, Lcom/miui/camera/Camera$2;->this$0:Lcom/miui/camera/Camera;

    const/4 v2, 0x0

    #setter for: Lcom/miui/camera/Camera;->mStartPreviewFail:Z
    invoke-static {v1, v2}, Lcom/miui/camera/Camera;->access$5602(Lcom/miui/camera/Camera;Z)Z

    .line 807
    iget-object v1, p0, Lcom/miui/camera/Camera$2;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->startPreview()V
    invoke-static {v1}, Lcom/miui/camera/Camera;->access$5700(Lcom/miui/camera/Camera;)V
    :try_end_0
    .catch Lcom/miui/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 811
    .local v0, e:Lcom/miui/camera/CameraHardwareException;
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/miui/camera/Camera$2;->this$0:Lcom/miui/camera/Camera;

    const/4 v2, 0x1

    #setter for: Lcom/miui/camera/Camera;->mStartPreviewFail:Z
    invoke-static {v1, v2}, Lcom/miui/camera/Camera;->access$5602(Lcom/miui/camera/Camera;Z)Z

    goto :goto_0
.end method
