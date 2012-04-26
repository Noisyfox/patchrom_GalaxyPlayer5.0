.class public Lcom/android/server/TvoutStatusObserver;
.super Landroid/os/Binder;
.source "TvoutStatusObserver.java"


# static fields
.field private static final HDMI_BIT_MASK:I = 0x20

.field private static final HDMI_STATE_PATH:Ljava/lang/String; = "/sys/devices/platform/acc_con/acc_file"

.field private static final MSG_HDMI_PLUG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TvoutStatusObserver"

.field private static final TVOUT_LOG:Z = true

.field private static mState_Value:I


# instance fields
.field private mCamera_On:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/server/TvoutStatusObserver;->mState_Value:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/TvoutStatusObserver;->mCamera_On:Z

    new-instance v1, Lcom/android/server/TvoutStatusObserver$1;

    invoke-direct {v1, p0}, Lcom/android/server/TvoutStatusObserver$1;-><init>(Lcom/android/server/TvoutStatusObserver;)V

    iput-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v1, Lcom/android/server/TvoutStatusObserver$2;

    invoke-direct {v1, p0}, Lcom/android/server/TvoutStatusObserver$2;-><init>(Lcom/android/server/TvoutStatusObserver;)V

    iput-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/TvoutStatusObserver$3;

    invoke-direct {v1, p0}, Lcom/android/server/TvoutStatusObserver$3;-><init>(Lcom/android/server/TvoutStatusObserver;)V

    iput-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/TvoutStatusObserver;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "TvoutStatusObserver"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-direct {p0}, Lcom/android/server/TvoutStatusObserver;->init()V

    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v2, "SUBSYSTEM=video4linux"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method private EnableOrDisableHDMITV(I)V
    .locals 2
    .parameter "hdmi_status"

    .prologue
    const-string v0, "TvoutStatusObserver"

    const-string v1, "EnableHDMISubtitleOnTV() - Tv OUT subtitle mSubTitleOn  !!! E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TvoutStatusObserver;Landroid/os/UEventObserver$UEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TvoutStatusObserver;->update(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TvoutStatusObserver;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TvoutStatusObserver;->sendIntents(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TvoutStatusObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TvoutStatusObserver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/TvoutStatusObserver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/TvoutStatusObserver;->mCamera_On:Z

    return p1
.end method

.method private final declared-synchronized init()V
    .locals 13

    .prologue
    const-string v7, " HDMI init is failed by file close"

    const-string v7, "TvoutStatusObserver"

    monitor-enter p0

    :try_start_0
    const-string v7, "TvoutStatusObserver"

    const-string v8, "HDMI status observer init "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, files:Ljava/io/FileReader;
    const/16 v7, 0x400

    new-array v0, v7, [C

    .local v0, buffer:[C
    const/4 v5, 0x0

    .local v5, hdmi_state:I
    const/4 v4, 0x0

    .local v4, hdmi_check_value:I
    invoke-direct {p0}, Lcom/android/server/TvoutStatusObserver;->initIntentFilter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/FileReader;

    const-string v7, "/sys/devices/platform/acc_con/acc_file"

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .end local v2           #files:Ljava/io/FileReader;
    .local v3, files:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    :try_start_2
    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .local v6, len:I
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v5

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v3           #files:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v2       #files:Ljava/io/FileReader;
    :cond_1
    :goto_1
    and-int/lit8 v4, v5, 0x20

    const/16 v7, 0x20

    if-ne v4, v7, :cond_2

    :try_start_4
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI initial setting "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v7, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "online"

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI driver is not support the init state value"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :try_start_7
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI init is failed by file close"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .end local v0           #buffer:[C
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #files:Ljava/io/FileReader;
    .end local v4           #hdmi_check_value:I
    .end local v5           #hdmi_state:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v0       #buffer:[C
    .restart local v2       #files:Ljava/io/FileReader;
    .restart local v4       #hdmi_check_value:I
    .restart local v5       #hdmi_state:I
    :catch_2
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_8
    const-string v7, "TvoutStatusObserver"

    const-string v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :try_start_a
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI init is failed by file close"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    :goto_4
    if-eqz v2, :cond_3

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_3
    :goto_5
    :try_start_c
    throw v7

    :catch_4
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "TvoutStatusObserver"

    const-string v9, " HDMI init is failed by file close"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #files:Ljava/io/FileReader;
    .restart local v3       #files:Ljava/io/FileReader;
    .restart local v6       #len:I
    :catch_5
    move-exception v1

    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "TvoutStatusObserver"

    const-string v8, " HDMI init is failed by file close"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #len:I
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3           #files:Ljava/io/FileReader;
    .restart local v2       #files:Ljava/io/FileReader;
    goto :goto_4

    .end local v2           #files:Ljava/io/FileReader;
    .restart local v3       #files:Ljava/io/FileReader;
    :catch_6
    move-exception v7

    move-object v1, v7

    move-object v2, v3

    .end local v3           #files:Ljava/io/FileReader;
    .restart local v2       #files:Ljava/io/FileReader;
    goto :goto_3

    .end local v2           #files:Ljava/io/FileReader;
    .restart local v3       #files:Ljava/io/FileReader;
    :catch_7
    move-exception v7

    move-object v1, v7

    move-object v2, v3

    .end local v3           #files:Ljava/io/FileReader;
    .restart local v2       #files:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private initIntentFilter()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CAMERA_HDMI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TvoutStatusObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final sendIntentHdmi(ILjava/lang/String;)V
    .locals 4
    .parameter "hdmi_status"
    .parameter "hdmiName"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/android/server/TvoutStatusObserver;->EnableOrDisableHDMITV(I)V

    const-string v1, "TvoutStatusObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent.ACTION_HDMI_PLUG: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private final sendIntentTvout(ILjava/lang/String;)V
    .locals 4
    .parameter "tvout_status"
    .parameter "tvoutName"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TvoutStatusObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent.ACTION_TVOUT_PLUG: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private final sendIntentforCamera(ILjava/lang/String;)V
    .locals 4
    .parameter "hdmi_status"
    .parameter "hdmiName"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "TvoutStatusObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent.ACTION_HDMI_PLUG: state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/TvoutStatusObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final sendIntents(IILjava/lang/String;)V
    .locals 2
    .parameter "status"
    .parameter "mode_check"
    .parameter "statusName"

    .prologue
    const-string v1, "TvoutStatusObserver"

    if-nez p2, :cond_0

    const-string v0, "TvoutStatusObserver"

    const-string v0, " send intent of HDMI "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/android/server/TvoutStatusObserver;->sendIntentHdmi(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string v0, "TvoutStatusObserver"

    const-string v0, " send intent of Camera "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/android/server/TvoutStatusObserver;->sendIntentforCamera(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "TvoutStatusObserver"

    const-string v0, " send intent of TVOUT "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized update(Landroid/os/UEventObserver$UEvent;)V
    .locals 13
    .parameter "event"

    .prologue
    const-string v9, "TvoutStatusObserver"

    monitor-enter p0

    const/4 v8, 0x0

    .local v8, state_value:I
    const/4 v2, 0x0

    .local v2, delay:I
    :try_start_0
    const-string v7, "Default"

    .local v7, state_name:Ljava/lang/String;
    const-string v0, "off"

    .local v0, action:Ljava/lang/String;
    const-string v9, "TvoutStatusObserver"

    const-string v10, " HDMI UEVENT COME!!! "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, mode_check:I
    if-nez v6, :cond_1

    const-string v9, "MAJOR"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, maj:I
    const-string v9, "MINOR"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, min:I
    const-string v9, "ACTION"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x51

    if-ne v4, v9, :cond_1

    const/16 v9, 0xe

    if-ne v5, v9, :cond_1

    const-string v9, "HDMI_STATE"

    invoke-virtual {p1, v9}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "change"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "online"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "TvoutStatusObserver"

    const-string v10, " HDMI : it is online "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x1

    :try_start_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    .local v1, cm:Landroid/hardware/Camera;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    :cond_0
    const-string v9, "TvoutStatusObserver"

    const-string v10, " Camera off "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #cm:Landroid/hardware/Camera;
    :goto_0
    :try_start_2
    sput v8, Lcom/android/server/TvoutStatusObserver;->mState_Value:I

    iget-boolean v9, p0, Lcom/android/server/TvoutStatusObserver;->mCamera_On:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v9, "TvoutStatusObserver"

    const-string v10, " HDMI : LCD Wake Lock 1 "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4           #maj:I
    .end local v5           #min:I
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .restart local v4       #maj:I
    .restart local v5       #min:I
    :catch_0
    move-exception v9

    move-object v3, v9

    .local v3, e:Ljava/lang/RuntimeException;
    :try_start_3
    const-string v9, "TvoutStatusObserver"

    const-string v10, " Camera on "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/TvoutStatusObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v9, "TvoutStatusObserver"

    const-string v10, " HDMI : LCD Wake Lock  "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/TvoutStatusObserver;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v8, v12, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/TvoutStatusObserver;->mCamera_On:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0           #action:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/RuntimeException;
    .end local v4           #maj:I
    .end local v5           #min:I
    .end local v6           #mode_check:I
    .end local v7           #state_name:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v0       #action:Ljava/lang/String;
    .restart local v4       #maj:I
    .restart local v5       #min:I
    .restart local v6       #mode_check:I
    .restart local v7       #state_name:Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string v9, "TvoutStatusObserver"

    const-string v10, " HDMI : it is offline "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    const-string v9, "TvoutStatusObserver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " HDMI: No handler implemented for action "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
