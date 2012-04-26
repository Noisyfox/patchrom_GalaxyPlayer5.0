.class Lcom/android/soundrecorder/SoundRecorder$4;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Lcom/android/soundrecorder/RecordNameEditText$OnNameChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->initResourceRefs()V
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
    .line 339
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNameChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$4;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$500(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/Recorder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/soundrecorder/Recorder;->renameSampleFile(Ljava/lang/String;)V

    .line 345
    :cond_0
    return-void
.end method
