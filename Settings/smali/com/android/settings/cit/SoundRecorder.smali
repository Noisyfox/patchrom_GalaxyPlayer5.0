.class public Lcom/android/settings/cit/SoundRecorder;
.super Ljava/lang/Thread;
.source "SoundRecorder.java"


# instance fields
.field private final mBuffer:[S

.field private mPlayer:Landroid/media/AudioTrack;

.field private mRecBufSize:I

.field private mRecord:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(II)V
    .locals 8
    .parameter "audioSource"
    .parameter "audioDestination"

    .prologue
    const/16 v3, 0x10

    const/4 v7, 0x4

    const/16 v2, 0x1f40

    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecBufSize:I

    iget v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecBufSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mBuffer:[S

    new-instance v0, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/android/settings/cit/SoundRecorder;->mRecBufSize:I

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    new-instance v0, Landroid/media/AudioTrack;

    invoke-static {v2, v7, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    const/4 v6, 0x1

    move v1, p2

    move v3, v7

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mPlayer:Landroid/media/AudioTrack;

    return-void
.end method


# virtual methods
.method public declared-synchronized isRecording()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mPlayer:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    iput-object v1, p0, Lcom/android/settings/cit/SoundRecorder;->mPlayer:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .local v0, readSize:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cit/SoundRecorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/android/settings/cit/SoundRecorder;->mBuffer:[S

    iget v3, p0, Lcom/android/settings/cit/SoundRecorder;->mRecBufSize:I

    invoke-virtual {v1, v2, v4, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/cit/SoundRecorder;->mPlayer:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/android/settings/cit/SoundRecorder;->mBuffer:[S

    invoke-virtual {v1, v2, v4, v0}, Landroid/media/AudioTrack;->write([SII)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startRecording()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call on uninitialized audiorecorder or audiotrack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    invoke-virtual {p0}, Lcom/android/settings/cit/SoundRecorder;->start()V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call on uninitialized audiorecorder or audiotrack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/android/settings/cit/SoundRecorder;->mPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method
