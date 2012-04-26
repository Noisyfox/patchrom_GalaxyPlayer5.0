.class Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method private constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/soundrecorder/SoundRecorder;Lcom/android/soundrecorder/SoundRecorder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1391
    invoke-direct {p0, p1}, Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;-><init>(Lcom/android/soundrecorder/SoundRecorder;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v5, "is_recording"

    const-string v4, "error_code"

    .line 1395
    const-string v2, "is_recording"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1396
    const-string v2, "is_recording"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1398
    .local v1, isRecording:Z
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorder;->access$500(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/Recorder;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v2, v3}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 1403
    .end local v1           #isRecording:Z
    :cond_1
    :goto_0
    return-void

    .line 1399
    :cond_2
    const-string v2, "error_code"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1400
    const-string v2, "error_code"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1401
    .local v0, error:I
    iget-object v2, p0, Lcom/android/soundrecorder/SoundRecorder$RecorderReceiver;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;
    invoke-static {v2}, Lcom/android/soundrecorder/SoundRecorder;->access$500(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/Recorder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/soundrecorder/Recorder;->setError(I)V

    goto :goto_0
.end method
