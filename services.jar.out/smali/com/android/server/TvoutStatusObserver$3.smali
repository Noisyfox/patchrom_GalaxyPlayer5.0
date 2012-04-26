.class Lcom/android/server/TvoutStatusObserver$3;
.super Landroid/content/BroadcastReceiver;
.source "TvoutStatusObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutStatusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutStatusObserver;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutStatusObserver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/TvoutStatusObserver$3;->this$0:Lcom/android/server/TvoutStatusObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v3, "TvoutStatusObserver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "TvoutStatusObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.CAMERA_HDMI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TvoutStatusObserver"

    const-string v1, " Camera intent come!!! "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver$3;->this$0:Lcom/android/server/TvoutStatusObserver;

    #getter for: Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/TvoutStatusObserver;->access$200(Lcom/android/server/TvoutStatusObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver$3;->this$0:Lcom/android/server/TvoutStatusObserver;

    #getter for: Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/TvoutStatusObserver;->access$300(Lcom/android/server/TvoutStatusObserver;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver$3;->this$0:Lcom/android/server/TvoutStatusObserver;

    #getter for: Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/TvoutStatusObserver;->access$300(Lcom/android/server/TvoutStatusObserver;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/TvoutStatusObserver$3;->this$0:Lcom/android/server/TvoutStatusObserver;

    #getter for: Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/TvoutStatusObserver;->access$300(Lcom/android/server/TvoutStatusObserver;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "online"

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver$3;->this$0:Lcom/android/server/TvoutStatusObserver;

    #setter for: Lcom/android/server/TvoutStatusObserver;->mCamera_On:Z
    invoke-static {v1, v5}, Lcom/android/server/TvoutStatusObserver;->access$402(Lcom/android/server/TvoutStatusObserver;Z)Z

    :cond_0
    return-void
.end method
