.class Lcom/miui/camera/Camera$1;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Camera;
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
    .line 451
    iput-object p1, p0, Lcom/miui/camera/Camera$1;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 454
    iget-object v0, p0, Lcom/miui/camera/Camera$1;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->checkStorage()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$3400(Lcom/miui/camera/Camera;)V

    .line 455
    iget-object v0, p0, Lcom/miui/camera/Camera$1;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mIsImageCaptureIntent:Z
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$3500(Lcom/miui/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/miui/camera/Camera$1;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mThumbController:Lcom/miui/camera/ThumbnailController;
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$3600(Lcom/miui/camera/Camera;)Lcom/miui/camera/ThumbnailController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/miui/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 458
    iget-object v0, p0, Lcom/miui/camera/Camera$1;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->updateThumbnailButton()V
    invoke-static {v0}, Lcom/miui/camera/Camera;->access$3700(Lcom/miui/camera/Camera;)V

    .line 460
    :cond_0
    return-void
.end method
