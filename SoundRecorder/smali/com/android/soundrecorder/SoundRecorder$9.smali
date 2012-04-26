.class Lcom/android/soundrecorder/SoundRecorder$9;
.super Landroid/content/BroadcastReceiver;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$9;->this$0:Lcom/android/soundrecorder/SoundRecorder;

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

    .line 806
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$9;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #setter for: Lcom/android/soundrecorder/SoundRecorder;->mSampleInterrupted:Z
    invoke-static {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->access$802(Lcom/android/soundrecorder/SoundRecorder;Z)Z

    .line 807
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$9;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$500(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/Recorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->reset()V

    .line 808
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$9;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->resetFileNameEditText()V
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$900(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 809
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$9;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->updateUi(Z)V
    invoke-static {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->access$1000(Lcom/android/soundrecorder/SoundRecorder;Z)V

    .line 810
    return-void
.end method
