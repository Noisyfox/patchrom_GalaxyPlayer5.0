.class Lcom/miui/camera/VideoCamera$MainHandler;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/VideoCamera;


# direct methods
.method private constructor <init>(Lcom/miui/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/miui/camera/VideoCamera$MainHandler;->this$0:Lcom/miui/camera/VideoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/VideoCamera;Lcom/miui/camera/VideoCamera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/miui/camera/VideoCamera$MainHandler;-><init>(Lcom/miui/camera/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 178
    const-string v0, "com.miui.camera.VideoCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 159
    :sswitch_0
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$MainHandler;->this$0:Lcom/miui/camera/VideoCamera;

    #getter for: Lcom/miui/camera/VideoCamera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;
    invoke-static {v0}, Lcom/miui/camera/VideoCamera;->access$100(Lcom/miui/camera/VideoCamera;)Lcom/miui/camera/ui/ShutterButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/camera/ui/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 163
    :sswitch_1
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$MainHandler;->this$0:Lcom/miui/camera/VideoCamera;

    invoke-virtual {v0}, Lcom/miui/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 168
    :sswitch_2
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$MainHandler;->this$0:Lcom/miui/camera/VideoCamera;

    #calls: Lcom/miui/camera/VideoCamera;->updateRecordingTime()V
    invoke-static {v0}, Lcom/miui/camera/VideoCamera;->access$200(Lcom/miui/camera/VideoCamera;)V

    goto :goto_0

    .line 173
    :sswitch_3
    iget-object v0, p0, Lcom/miui/camera/VideoCamera$MainHandler;->this$0:Lcom/miui/camera/VideoCamera;

    invoke-virtual {v0}, Lcom/miui/camera/VideoCamera;->showStorageHint()V

    goto :goto_0

    .line 156
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0x10 -> :sswitch_3
    .end sparse-switch
.end method
