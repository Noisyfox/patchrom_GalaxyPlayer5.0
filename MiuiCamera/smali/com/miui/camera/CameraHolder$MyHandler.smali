.class Lcom/miui/camera/CameraHolder$MyHandler;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/CameraHolder;


# direct methods
.method constructor <init>(Lcom/miui/camera/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/miui/camera/CameraHolder$MyHandler;->this$0:Lcom/miui/camera/CameraHolder;

    .line 59
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/miui/camera/CameraHolder$MyHandler;->this$0:Lcom/miui/camera/CameraHolder;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/miui/camera/CameraHolder$MyHandler;->this$0:Lcom/miui/camera/CameraHolder;

    #getter for: Lcom/miui/camera/CameraHolder;->mUsers:I
    invoke-static {v1}, Lcom/miui/camera/CameraHolder;->access$000(Lcom/miui/camera/CameraHolder;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/camera/CameraHolder$MyHandler;->this$0:Lcom/miui/camera/CameraHolder;

    #calls: Lcom/miui/camera/CameraHolder;->releaseCamera()V
    invoke-static {v1}, Lcom/miui/camera/CameraHolder;->access$100(Lcom/miui/camera/CameraHolder;)V

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
