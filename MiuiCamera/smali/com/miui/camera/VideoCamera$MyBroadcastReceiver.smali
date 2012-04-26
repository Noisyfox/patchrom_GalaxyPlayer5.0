.class Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/miui/camera/VideoCamera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/VideoCamera;Lcom/miui/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/miui/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/miui/camera/VideoCamera;

    #calls: Lcom/miui/camera/VideoCamera;->stopVideoRecording()V
    invoke-static {v1}, Lcom/miui/camera/VideoCamera;->access$300(Lcom/miui/camera/VideoCamera;)V

    .line 194
    iget-object v1, p0, Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/miui/camera/VideoCamera;

    #calls: Lcom/miui/camera/VideoCamera;->checkStorage()V
    invoke-static {v1}, Lcom/miui/camera/VideoCamera;->access$400(Lcom/miui/camera/VideoCamera;)V

    .line 196
    iget-object v1, p0, Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/miui/camera/VideoCamera;

    #getter for: Lcom/miui/camera/VideoCamera;->mThumbController:Lcom/miui/camera/ThumbnailController;
    invoke-static {v1}, Lcom/miui/camera/VideoCamera;->access$500(Lcom/miui/camera/VideoCamera;)Lcom/miui/camera/ThumbnailController;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/miui/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 197
    iget-object v1, p0, Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/miui/camera/VideoCamera;

    #calls: Lcom/miui/camera/VideoCamera;->updateThumbnailButton()V
    invoke-static {v1}, Lcom/miui/camera/VideoCamera;->access$600(Lcom/miui/camera/VideoCamera;)V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    iget-object v1, p0, Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/miui/camera/VideoCamera;

    iget-object v2, p0, Lcom/miui/camera/VideoCamera$MyBroadcastReceiver;->this$0:Lcom/miui/camera/VideoCamera;

    invoke-virtual {v2}, Lcom/miui/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 200
    :cond_3
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method
