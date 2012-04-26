.class Lcom/android/soundrecorder/SoundRecorder$11;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DELTA:I

.field private mForwardAnimation:Z

.field private mPlayingAnimation:Z

.field private mProgress:I

.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1337
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1338
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->DELTA:I

    .line 1340
    iput v1, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mProgress:I

    .line 1342
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mPlayingAnimation:Z

    .line 1344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mForwardAnimation:Z

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1361
    if-eqz p3, :cond_3

    .line 1362
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mPlayingAnimation:Z

    if-nez v0, :cond_0

    .line 1363
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mForwardAnimation:Z

    .line 1364
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->startForwardAnimation()V
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$1500(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 1365
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mPlayingAnimation:Z

    .line 1366
    iput p2, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mProgress:I

    .line 1369
    :cond_0
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mProgress:I

    add-int/lit16 v0, v0, 0x1f4

    if-lt p2, v0, :cond_4

    .line 1370
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mForwardAnimation:Z

    if-nez v0, :cond_1

    .line 1371
    iput-boolean v1, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mForwardAnimation:Z

    .line 1372
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$1200(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 1373
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->startForwardAnimation()V
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$1500(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 1375
    :cond_1
    iput p2, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mProgress:I

    .line 1385
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    int-to-float v1, p2

    const v2, 0x461c4000

    div-float/2addr v1, v2

    #calls: Lcom/android/soundrecorder/SoundRecorder;->setTimerView(F)V
    invoke-static {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->access$1700(Lcom/android/soundrecorder/SoundRecorder;F)V

    .line 1386
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #setter for: Lcom/android/soundrecorder/SoundRecorder;->mLastButtonId:I
    invoke-static {v0, v3}, Lcom/android/soundrecorder/SoundRecorder;->access$602(Lcom/android/soundrecorder/SoundRecorder;I)I

    .line 1388
    :cond_3
    return-void

    .line 1376
    :cond_4
    iget v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mProgress:I

    const/16 v1, 0x1f4

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_2

    .line 1377
    iget-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mForwardAnimation:Z

    if-eqz v0, :cond_5

    .line 1378
    iput-boolean v3, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mForwardAnimation:Z

    .line 1379
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$1200(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 1380
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->startBackwardAnimation()V
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$1600(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 1382
    :cond_5
    iput p2, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mProgress:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$500(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/Recorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/soundrecorder/Recorder;->pausePlayback()V

    .line 1356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->mPlayingAnimation:Z

    .line 1357
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->stopAnimation()V
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$1200(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 1349
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mRecorder:Lcom/android/soundrecorder/Recorder;
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$500(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/Recorder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x461c4000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/soundrecorder/Recorder;->startPlayback(F)V

    .line 1350
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$11;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->vibratePatternSeekEnd:[B
    invoke-static {v1}, Lcom/android/soundrecorder/SoundRecorder;->access$1300(Lcom/android/soundrecorder/SoundRecorder;)[B

    move-result-object v1

    #calls: Lcom/android/soundrecorder/SoundRecorder;->localVibrate([B)V
    invoke-static {v0, v1}, Lcom/android/soundrecorder/SoundRecorder;->access$1400(Lcom/android/soundrecorder/SoundRecorder;[B)V

    .line 1351
    return-void
.end method
