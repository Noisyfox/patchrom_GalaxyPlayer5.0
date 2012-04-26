.class Lcom/miui/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/miui/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/camera/Camera;Lcom/miui/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/miui/camera/Camera$MainHandler;-><init>(Lcom/miui/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x0

    .line 287
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 289
    :pswitch_1
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->restartPreview()V
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$700(Lcom/miui/camera/Camera;)V

    .line 290
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$800(Lcom/miui/camera/Camera;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 292
    .local v0, now:J
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    iget-object v3, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/miui/camera/Camera;->access$800(Lcom/miui/camera/Camera;)J

    move-result-wide v3

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/miui/camera/Camera;->mJpegCallbackFinishTime:J

    .line 293
    const-string v2, "com.miui.camera.Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    iget-wide v4, v4, Lcom/miui/camera/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #setter for: Lcom/miui/camera/Camera;->mJpegPictureCallbackTime:J
    invoke-static {v2, v6, v7}, Lcom/miui/camera/Camera;->access$802(Lcom/miui/camera/Camera;J)J

    goto :goto_0

    .line 300
    .end local v0           #now:J
    :pswitch_2
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    invoke-virtual {v2}, Lcom/miui/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 305
    :pswitch_3
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->initializeFirstTime()V
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$900(Lcom/miui/camera/Camera;)V

    goto :goto_0

    .line 310
    :pswitch_4
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    const/4 v3, 0x0

    #calls: Lcom/miui/camera/Camera;->setCameraParametersWhenIdle(I)V
    invoke-static {v2, v3}, Lcom/miui/camera/Camera;->access$1000(Lcom/miui/camera/Camera;I)V

    goto :goto_0

    .line 314
    :pswitch_5
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mFocusRectangle:Lcom/miui/camera/ui/FocusRectangle;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1100(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/FocusRectangle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/camera/ui/FocusRectangle;->clear()V

    goto :goto_0

    .line 318
    :pswitch_6
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    sget-object v3, Lcom/miui/camera/Constants$ZOOM_STATE;->STOPPED:Lcom/miui/camera/Constants$ZOOM_STATE;

    #setter for: Lcom/miui/camera/Camera;->mZoomState:Lcom/miui/camera/Constants$ZOOM_STATE;
    invoke-static {v2, v3}, Lcom/miui/camera/Camera;->access$1202(Lcom/miui/camera/Camera;Lcom/miui/camera/Constants$ZOOM_STATE;)Lcom/miui/camera/Constants$ZOOM_STATE;

    goto :goto_0

    .line 322
    :pswitch_7
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->hideExposureZoomView()V
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1300(Lcom/miui/camera/Camera;)V

    goto :goto_0

    .line 326
    :pswitch_8
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->hideConSatShpView()V
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1400(Lcom/miui/camera/Camera;)V

    goto :goto_0

    .line 330
    :pswitch_9
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->updateDelaySnapTimer()V
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1500(Lcom/miui/camera/Camera;)V

    goto/16 :goto_0

    .line 334
    :pswitch_a
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #calls: Lcom/miui/camera/Camera;->ensureDeviceStableAndSnap()V
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1600(Lcom/miui/camera/Camera;)V

    goto/16 :goto_0

    .line 338
    :pswitch_b
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    #getter for: Lcom/miui/camera/Camera;->mShutterButton:Lcom/miui/camera/ui/ShutterButton;
    invoke-static {v2}, Lcom/miui/camera/Camera;->access$1700(Lcom/miui/camera/Camera;)Lcom/miui/camera/ui/ShutterButton;

    move-result-object v2

    const v3, 0x7f02004d

    invoke-virtual {v2, v3}, Lcom/miui/camera/ui/ShutterButton;->setImageResource(I)V

    goto/16 :goto_0

    .line 342
    :pswitch_c
    iget-object v2, p0, Lcom/miui/camera/Camera$MainHandler;->this$0:Lcom/miui/camera/Camera;

    invoke-virtual {v2}, Lcom/miui/camera/Camera;->showStorageHint()V

    goto/16 :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method
